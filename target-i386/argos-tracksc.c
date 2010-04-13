#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include <signal.h>

#include "cpu.h"
#include "argos-config.h"
#include "argos-common.h"
#include "argos-check.h"
#include "../exec-all.h"
#include "libdasm/libdasm.h"
#include "win2k/winternl.h"
#include "argos-tracksc.h"

// The pc must be a host virtual address.
static void get_instruction_at_address(CPUX86State * env, unsigned long pc);
static void get_instruction_and_netidxs(CPUX86State * env);
static void write_instruction_to_log(argos_shellcode_context_t * context);
static void get_imported_modules(CPUX86State * env);
static target_ulong get_current_thread_id(CPUX86State * env);
static unsigned char in_shellcode_context(CPUX86State * env);
static void save_shellcode_context(CPUX86State * env);
static void start_analysis_phase(CPUX86State * env);
static void start_tracking_phase(CPUX86State * env);
static argos_tracksc_imported_module * find_module(CPUX86State * env, target_ulong address);
static argos_tracksc_exported_function * find_exported_function(argos_tracksc_imported_module * module, target_ulong address);
static argos_tracksc_exported_function * find_exported_function_by_name(CPUX86State * env, const char * name);
static slist_entry * get_exports_from_module(CPUX86State * env, argos_tracksc_imported_module * module);
static unsigned get_load_library_functions(CPUX86State * env);
static unsigned is_loading_library_call(CPUX86State * env, target_ulong callee_address);
extern void vm_stop(int reason);

target_phys_addr_t phys_addr(CPUX86State *env, target_ulong addr)
{
    target_phys_addr_t paddr =
        cpu_get_phys_page_debug(env, addr + env->segs[R_CS].base);
    if (paddr != -1)
    {
        PhysPageDesc *pdesc = phys_page_find(paddr >> TARGET_PAGE_BITS);
        unsigned long pd;
        if (!pdesc) {
            pd = IO_MEM_UNASSIGNED;
        } else {
            pd = pdesc->phys_offset;
        }
        unsigned long phys_addr = (unsigned long)phys_ram_base
            + (pd & TARGET_PAGE_MASK) + (addr & ~TARGET_PAGE_MASK);

        return phys_addr;
    }
    else
    {
        return 0;
    }
}
// TODO: This macro can be removed
#define VALID_PTR(X) \
     ( (X) != 0 )

#define PHYS_ADDR(X) \
    phys_addr(env, (X))

void argos_tracksc_init(CPUX86State * env)
{
    const unsigned filename_size = 128;
    char filename[filename_size];
    // Initialize the structure that holds the context of the shell-code
    // being tracked.
    memset(&env->shellcode_context, 0, sizeof(argos_shellcode_context_t));

    env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_IDLE;
    // Set the default condition when to stop executing and tracking
    // shell-code.
    env->shellcode_context.stop_condition = SSC_FIRST_SYSTEM_CALL;

    snprintf(filename, filename_size,  LOG_SC_FL_TEMPLATE,
            argos_instance_id);
    env->shellcode_context.logfile = fopen(filename, "wb");
    if (!env->shellcode_context.logfile) 
    {
        argos_logf("Failed to open the shellcode log file %s.\n",
                filename);
        exit(1);
    }
    else
    {
        argos_logf("Opened shellcode log file %s.\n", filename);
    }
}

void argos_tracksc_stop(CPUX86State * env)
{
    if (env->shellcode_context.logfile)
    {
        fclose(env->shellcode_context.logfile);
        argos_logf("Closed shellcode log file\n");
        env->shellcode_context.logfile = 0;
        env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_IDLE;
    }

    // Clean-up existing imported modules information.
    /*argos_tracksc_imported_module_list_entry * delete_cursor, * next;
    next = env->shellcode_context.imported_modules;
    while ( next )
    {
        delete_cursor = next;
        next = delete_cursor->next;

        if ( delete_cursor->module )
            free(delete_cursor->module);

        free(delete_cursor);
    }*/
    slist_destroy(env->shellcode_context.imported_modules, free);
}

unsigned char argos_tracksc_is_idle( CPUX86State * env)
{
    return env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_IDLE;
}

unsigned char argos_tracksc_is_tracking( CPUX86State * env)
{
    return env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_TRACKING;
}

void argos_tracksc_enable(CPUX86State * env)
{
    argos_logf("Starting shell-code tracking...\n");

    // Save context of the shellcode.
    save_shellcode_context(env);

    // We are now entering the analysis phase.
    start_analysis_phase(env);

    // Now shift to tracking phase.
    start_tracking_phase(env);
}

void argos_tracksc_before_instruction_execution(CPUX86State * env)
{
    if ( env->shellcode_context.executed_eip != env->eip && in_shellcode_context(env) )
    {
        get_instruction_and_netidxs(env);

        INSTRUCTION * current_instruction = &env->shellcode_context.instruction;

        if ( current_instruction->type == INSTRUCTION_TYPE_SYSENTER )
        {
            argos_logf("Shellcode called system call with number 0x%x\n", env->regs[R_EAX]);
        }

        if ( current_instruction->type == INSTRUCTION_TYPE_INT)
        {
            argos_logf("INT 0x%x\n", current_instruction->immbytes);
            if ( current_instruction->immbytes == 0x2E) 
            {
                argos_logf("Shellcode called system call with number 0x%x\n", env->regs[R_EAX]);
            }
        }
    }
}

void argos_tracksc_after_instruction_execution(CPUX86State * env)
{
    argos_tracksc_log_instruction(env);
    argos_tracksc_check_for_invalid_system_call(env);
}

void argos_tracksc_after_instruction_raised_an_exception(CPUX86State * env)
{
    // The INT instruction causes raises an exception.
    argos_tracksc_check_for_invalid_system_call(env);
}

void get_instruction_and_netidxs(CPUX86State * env)
{
    // Here we are saving context of the instructions that are 
    // executed during the tracking of shell-code.
    // Everything that is logged is before the execution of the 
    // actual instruction.
    // Check if we are executing a tainted instruction.
    // This assumes that the shell-code is marked tainted by Argos.
    //if (argos_dest_pc_isdirty(env, env->eip))
    //{
#ifdef ARGOS_NET_TRACKER
        unsigned i;
        unsigned max_stage = 0;
#endif // ARGOS_NET_TRACKER

        // hp = host physical, gv = guest virtual, 
        // and correspond to a memory address.
        unsigned long hp_pc = 0, gv_pc = 0;

        gv_pc = env->segs[R_CS].base + env->eip;
        // Casting the phys_ram_base to target_ulong will
        // trim the address from 64 bits to 32 bits and yields
        // a wrong address when executing Argos on an amd64 host.
        //hp_pc = get_phys_addr_code(env, gv_pc) +
        //    (unsigned long)phys_ram_base;
        hp_pc = PHYS_ADDR(gv_pc);

        if ( VALID_PTR(hp_pc) )
        {
            get_instruction_at_address(env, hp_pc);

            //memcpy(env->shellcode_context.instruction, (void *)hp_pc,
            //        env->shellcode_context.instruction.length);

            env->shellcode_context.executed_eip = env->eip;
            env->shellcode_context.logged = 1;

#ifdef ARGOS_NET_TRACKER
            memset(env->shellcode_context.instruction_netidx, 0,
                    MAX_INSTRUCTION_SIZE);

            for ( i = 0; i < env->shellcode_context.instruction.length; ++i )
            {
                argos_netidx_t* netidx = ARGOS_NETIDXPTR(hp_pc + i);
                if (netidx != 0)
                {
                    // Currently the stage of the instruction equals 
                    // to the highest stage of an individual 
                    // instruction byte.
                    if ( ARGOS_GET_STAGE(*netidx) > max_stage )
                    {
                        max_stage = ARGOS_GET_STAGE(*netidx);
                    }
                    env->shellcode_context.instruction_netidx[i] =
                        *netidx;
                }
                else
                {
                    env->shellcode_context.instruction_netidx[i] = 0;
                }
            }
            env->shellcode_context.instruction_stage = max_stage;
#endif // ARGOS_NET_TRACKER
        }
        else
        {
            argos_logf("Failed to get instruction, because of an invalid address!!!\n");
            exit(1);
        }
    //}
}

void argos_tracksc_log_instruction(CPUX86State * env)
{
    // Here we are going to log the instructions that belong to the 
    // shellcode.
    // This is after the execution of the instruction so the eip register 
    // points to the next instruction.
    if (env->shellcode_context.logged)
    {
        unsigned i;

#ifdef ARGOS_NET_TRACKER
        // Check if we are executing an instruction at a new stage.
        if ( env->shellcode_context.trace_stage <
                env->shellcode_context.instruction_stage )
        {
            fprintf(env->shellcode_context.logfile, "Stage %u -> %u\n", 
                    env->shellcode_context.trace_stage,
                    env->shellcode_context.instruction_stage);

            env->shellcode_context.trace_stage =
                env->shellcode_context.instruction_stage;
        }
#endif // ARGOS_NET_TRACKER

        // Print the eip address of the current executing instruction.
        fprintf(env->shellcode_context.logfile, "0x%x ", 
                env->shellcode_context.executed_eip);

        fprintf(env->shellcode_context.logfile, "\t");

        write_instruction_to_log(&env->shellcode_context);

        fprintf(env->shellcode_context.logfile, "\t");
        //fprintf(env->shellcode_context.logfile, " ");

        // Print the bytes of the instruction
        /*for (i = 0; i < env->shellcode_context.instruction.length; i++)
        {
            fprintf(env->shellcode_context.logfile, "%x ",
                    env->shellcode_context.instruction[i] & 0xFF);
        }
        fprintf(env->shellcode_context.logfile, "\t");*/

#ifdef ARGOS_NET_TRACKER
        // Print the netidx's of the instruction bytes.
        for (i = 0; i < env->shellcode_context.instruction.length; i++)
        {
            fprintf(env->shellcode_context.logfile, "[%u] ",
                    ARGOS_GET_NETIDX(
                        env->shellcode_context.instruction_netidx[i])
                   );
        }

        fprintf(env->shellcode_context.logfile, "\t");
#endif // ARGOS_NET_TRACKER

        // If the instruction performed a load,
        // print the address of the load and the value loaded.
        if (env->shellcode_context.loadedby_eip ==
                env->shellcode_context.executed_eip)
        {

            fprintf(env->shellcode_context.logfile, " <- @0x%lx (0x%x) ",
                    env->shellcode_context.load_addr,
                    env->shellcode_context.load_value);

            fprintf(env->shellcode_context.logfile, "\t");

#ifdef ARGOS_NET_TRACKER
            // Print the netidx's belonging to the value loaded.
            for (i = 0; i < env->shellcode_context.load_size; i++)
            {
                argos_netidx_t* netidx;
                // TODO: check if address is guest virtual or 
                // guest physical address!
                // Not all cases are checked, which can result in an
                // invalid netidx.
                if (env->shellcode_context.load_addr_type ==
                        ARGOS_HOST_VIRTUAL_ADDR)
                {
                    netidx = ARGOS_NETIDXPTR(
                            env->shellcode_context.load_addr + i);
                }
                else
                {
                    if (env->shellcode_context.load_value_netidx != 0)
                    {
                        netidx =
                            env->shellcode_context.load_value_netidx + i;
                    }
                    else
                    {
                        netidx = 0;
                    }
                }

                if (netidx != 0)
                {
                    // We cannot always retrieve the address fo the guest,
                    // so we annotate the address to show that it a
                    // host virtual address.
                    if (env->shellcode_context.load_addr_type ==
                            ARGOS_HOST_VIRTUAL_ADDR)
                    {
                        fprintf(env->shellcode_context.logfile, "@[%u] ",
                                ARGOS_GET_NETIDX(*netidx));
                    }
                    else
                    {
                        fprintf(env->shellcode_context.logfile, "[%u] ",
                                ARGOS_GET_NETIDX(*netidx));
                    }
                }
                else
                {
                    fprintf(env->shellcode_context.logfile, "[%u] ", 0);
                }
            }
#endif // ARGOS_NET_TRACKER
            // Reset the load context.
            env->shellcode_context.load_addr = 0;
            env->shellcode_context.load_value = 0;
            env->shellcode_context.load_size = 0;
            env->shellcode_context.loadedby_eip = 0;
        }

        // If the instruction performed a store, print the store address
        // and value.
        if (env->shellcode_context.storedby_eip ==
                env->shellcode_context.executed_eip)
        {
            fprintf(env->shellcode_context.logfile, " -> @0x%lx (0x%x) ",
                    env->shellcode_context.store_addr,
                    env->shellcode_context.store_value);

            fprintf(env->shellcode_context.logfile, "\t");

#ifdef ARGOS_NET_TRACKER
            for (i = 0; i < env->shellcode_context.store_size; i++)
            {
                argos_netidx_t* netidx;

                if (env->shellcode_context.store_addr_type == 
                        ARGOS_HOST_VIRTUAL_ADDR)
                {
                    netidx = ARGOS_NETIDXPTR(
                            env->shellcode_context.store_addr + i);
                }
                else
                {
                    if (env->shellcode_context.store_value_netidx != 0)
                    {
                        netidx =
                            env->shellcode_context.store_value_netidx + i;
                    }
                    else
                    {
                        netidx = 0;
                    }
                }

                if (netidx != 0)
                {
                    if (env->shellcode_context.store_addr_type ==
                            ARGOS_HOST_VIRTUAL_ADDR)
                    {
                        fprintf(env->shellcode_context.logfile, "@[%u] ",
                                ARGOS_GET_NETIDX(*netidx));
                    }
                    else
                    {
                        fprintf(env->shellcode_context.logfile, "[%u] ",
                                ARGOS_GET_NETIDX(*netidx));
                    }
                }
                else
                {
                    fprintf(env->shellcode_context.logfile, "[%u] ", 0);
                }
            }
#endif // ARGOS_NET_TRACKER
            // Reset the store context.
            env->shellcode_context.store_addr = 0;
            env->shellcode_context.store_value = 0;
            env->shellcode_context.store_size = 0;
            env->shellcode_context.storedby_eip = 0;
        }
        fprintf(env->shellcode_context.logfile, "\n");
        fflush(env->shellcode_context.logfile);

        // We have logged the code.
        env->shellcode_context.logged = 0;

        // Increase the number of executed instruction and check the
        // stop condition.
        env->shellcode_context.instruction_cnt++;
        if (env->shellcode_context.stop_condition == SSC_MAX_INSTR_CNT
                && env->shellcode_context.instruction_cnt ==
                MAX_INSTRUCTION_CNT )
        {
            env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_IDLE;
            // For now we just pause the vm.
            vm_stop(0);
        }
    }
}

void argos_tracksc_check_for_invalid_system_call(CPUX86State * env)
{
    if ( env->shellcode_context.is_system_call)
    {
        // Check the shell-code tracking stop condition.
        if ( env->shellcode_context.stop_condition ==
                SSC_FIRST_SYSTEM_CALL )
        {
            env->shellcode_context.is_system_call = 0;
            env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_IDLE;
            // The system call number resides in the register eax for the
            // int 0x2e as well for the sysenter system call mechanism.
            fprintf(env->shellcode_context.logfile,
                    "Prevented shellcode from calling system call 0x%x.\n",
                    env->regs[R_EAX]);

            // For now we just pause the vm.
            vm_stop(0);
        }
    }
}

int argos_tracksc_is_valid_system_call(CPUX86State * env)
{
    // If we are in the correct context.
    if (argos_tracksc_is_tracking(env) && in_shellcode_context(env))
    {
        //argos_logf("The shellcode is trying to make a system call.\n");
        // Flag that a system call is pending.
        env->shellcode_context.is_system_call = 1;
        return 0;
    }
    else
    {
        return 1;
    }
}

int argos_tracksc_logged_invalid_system_call(CPUX86State * env)
{
    if ( argos_tracksc_is_tracking(env) )
    {
        return env->shellcode_context.is_system_call;
    }
    else
    {
        return 0;
    }
}

void argos_tracksc_check_function_call( CPUX86State * env)
{
    sigset_t alrmset;

    if (sigprocmask(SIG_BLOCK, &alrmset, NULL) != 0)
        perror("could not temporarily block signals");

    if ( argos_tracksc_is_tracking(env) && in_shellcode_context(env) )
    {
        if ( !argos_dest_pc_isdirty(env, env->eip))
        {
            if ( env->eip < 0x80000000 )
            {
                if (!is_loading_library_call(env, env->eip))
                {
                    argos_tracksc_imported_module * module = find_module(env, env->eip);
                    if ( module )
                    {
                        argos_tracksc_exported_function * function = find_exported_function(module, env->eip);
                        if ( function )
                        {
                            if ( function->name )
                            {
                                argos_logf("Called %s!%s\n", module->name, function->name);
                            }
                            else
                            {
                                argos_logf("Called %s@%u\n", module->name, function->ordinal);
                            }
                        }
                    }
                    else
                    {
                        argos_logf("Could not find called module!\n");
                    }
                }
            }
        }
        else
        {
            argos_logf("Called injected function at 0x%08x.\n",
                    env->eip);
        }
    }
 
    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}

static target_ulong get_current_thread_id(CPUX86State * env)
{
    // fs:[0x18] contains a flat pointer to the Thread Execution Block.
    target_phys_addr_t ptr_teb =
        PHYS_ADDR(env->segs[R_FS].base);
    if ( !VALID_PTR(ptr_teb))
    {
        argos_logf("Failed to obtain physical address of teb.\n");
        return 0;
    }

    return *((target_ulong*)(ptr_teb + 0x24));
}

static unsigned char in_shellcode_context(CPUX86State * env)
{
    if ( env->cr[3] == env->shellcode_context.cr3 )
    {
        target_ulong thread_id = get_current_thread_id(env);
        if ( thread_id == env->shellcode_context.thread_id )
        {
            return 1;
        }
    }
    return 0;
}

static void get_instruction_at_address(CPUX86State * env, unsigned long pc)
{
    get_instruction(&env->shellcode_context.instruction, (BYTE *)pc, MODE_32);
}

static void write_instruction_to_log(argos_shellcode_context_t * context)
{
    char instruction_string[1024];
    if (get_instruction_string(&context->instruction, FORMAT_INTEL, 0, instruction_string,
                sizeof(instruction_string)))
    {
        fprintf(context->logfile, "%s", instruction_string);
    }
}

static slist_entry * get_exports_from_module(CPUX86State * env, argos_tracksc_imported_module * module)
{
    target_ulong function_address_table = module->function_address_table_rva
        + module->begin_address;

    target_ulong function_ordinal_table = module->function_ordinal_table_rva
        + module->begin_address;

    target_ulong function_name_table = module->function_name_table_rva
        + module->begin_address;

    slist_entry * head = NULL, * tail = NULL;

    unsigned i = 0;
    for(; i < module->number_of_functions; ++i)
    {
            argos_tracksc_exported_function * export =
                (argos_tracksc_exported_function *)
                malloc(sizeof(argos_tracksc_exported_function));

            if ( export != NULL )
            {
                target_ulong * function_address =
                    (target_ulong*)PHYS_ADDR(function_address_table + i * sizeof(target_ulong));

                if ( VALID_PTR(function_address) )
                {
                    export->address = *function_address + module->begin_address;

                    uint16_t * function_ordinal =
                        (uint16_t *) PHYS_ADDR(function_ordinal_table + i * sizeof(uint16_t));

                    if ( VALID_PTR(function_ordinal) )
                    {
                        export->ordinal = *function_ordinal;

                        if ( i < module->number_of_functions_with_names )
                        {
                            target_ulong * function_name_rva = (target_ulong*)
                                PHYS_ADDR(function_name_table + i * sizeof(target_ulong));

                            if ( VALID_PTR(function_name_rva) )
                            {
                                const char * function_name = (const char *)PHYS_ADDR(*function_name_rva
                                        + module->begin_address);
                                if ( VALID_PTR(function_name) )
                                {
                                    export->name = strdup(function_name);
                                    if ( export->name == NULL )
                                    {
                                        argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                        exit(1);
                                    }

                                    //argos_logf("Found %s!%s\n", module->name, export->name);

                                    if ( tail )
                                    {
                                        tail = slist_add_after(head, export);
                                        if ( tail == NULL )
                                        {
                                            argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                            exit(1);
                                        }
                                    }
                                    else
                                    {
                                        head = tail = slist_create();
                                        if ( head != NULL )
                                        {
                                            slist_set_data(head, export);
                                        }
                                        else
                                        {
                                            argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                            exit(1);
                                        }
                                    }

                                }
                                else
                                {
                                    free(export);
                                }
                            }
                            else
                            {
                                free(export);
                            }
                        }
                        else
                        {
                            export->name = NULL;

                            argos_logf("Found %s@%u\n", module->name, export->ordinal);

                            if ( tail )
                            {
                                tail = slist_add_after(head, export);
                                if ( tail == NULL )
                                {
                                    argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                    exit(1);
                                }
                            }
                            else
                            {
                                head = tail = slist_create();
                                if ( head != NULL )
                                {
                                    slist_set_data(head, export);
                                }
                                else
                                {
                                    argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                    exit(1);
                                }
                            }
                        }
                    }
                    else
                    {
                        free(export);
                    }
                }
                else
                {
                    free(export);
                }
            }
            else
            {
                argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                exit(1);
            }
    }

    return head;
}

static argos_tracksc_imported_module * get_module(CPUX86State * env, target_ulong base_address)
{
    // IMAGE_DOS_HEADER
    target_phys_addr_t dos_hdr = PHYS_ADDR(base_address);

    if ( !VALID_PTR(dos_hdr) )
    {
        argos_logf("Invalid DOS header pointer\n");
        return NULL;
    }

    // IMAGE_DOS_HEADER.e_magic
    if ( *(uint16_t*)dos_hdr != IMAGE_DOS_SIGNATURE  )
    {
        argos_logf("Module has an invalid DOS signature.\n");
        return NULL;
    }

    // IMAGE_NT_HEADERS
    target_phys_addr_t pe_hdr =
        PHYS_ADDR(base_address
                + *(target_ulong*)(dos_hdr+0x3c));

    if ( !VALID_PTR(pe_hdr) )
    {
        argos_logf("Invalid PE header pointer\n");
        return NULL;
    }

    // IMAGE_NT_HEADERS.Signature
    if ( *(target_ulong*)pe_hdr != IMAGE_PE_SIGNATURE )
    {
        argos_logf("Module has an invalid PE signature.\n");
        return NULL;
    }

    // IMAGE_OPTIONAL_HEADER.SizeOfImage;
    target_ulong size_of_image =
        *(target_ulong*)(pe_hdr + 0x50);

    target_ulong end_address = base_address + size_of_image;

    // IMAGE_OPTIONAL_HEADER.NumberOfRvaAndSizes
    if ( *(target_ulong*)(pe_hdr + 0x74) == 0 )
    {
        argos_logf("Module has no sections!\n");
        return NULL;
    }

    // IMAGE_OPTIONAL_HEADER.DataDirectory[0].VirtualAddress
    target_ulong export_directory_virtual_address =
        *(target_ulong*)(pe_hdr + 0x78);

    if ( export_directory_virtual_address != 0 )
    {
        argos_tracksc_imported_module * imported_module =
            (argos_tracksc_imported_module *)
            malloc(sizeof(argos_tracksc_imported_module));

        if ( imported_module == NULL)
        {
            argos_logf("Unable to allocate memory for analysis.\n");
            return NULL;
        }

        imported_module->begin_address = base_address;
        imported_module->end_address = end_address;

        // IMAGE_EXPORT_DIR.Name
        target_ulong * name_address = (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0xC);

        if ( VALID_PTR(name_address) )
        {
            const char * name = (const char *)PHYS_ADDR(base_address + *name_address);
            if ( VALID_PTR(name) )
            {
                strncpy(imported_module->name, name, ARGOS_MAX_PATH);
                imported_module->name[ARGOS_MAX_PATH-1] = '\0';
            }
            else
            {
                argos_logf("Failed to get export name\n");
                free(imported_module);
                return NULL;
            }
        }
        else
        {
            argos_logf("Failed to get export name\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.Base
        target_ulong * base =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x10);
        if ( !VALID_PTR(base) )
        {
            argos_logf("Failed to get export base.\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.NumberOfFunctions
        target_ulong * number_of_functions =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x14);
        if ( !VALID_PTR(number_of_functions) )
        {
            argos_logf("Failed to get number of exported functions.\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.NumberOfNames
        target_ulong * number_of_functions_with_names =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x18);
        if ( !VALID_PTR(number_of_functions_with_names) )
        {
            argos_logf("Failed to get number of exported functions with names.\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.AddressOfFunctions
        target_ulong * function_address_table_rva =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x1C);
        if ( !VALID_PTR(function_address_table_rva) )
        {
            argos_logf("Failed to get array with export addresses.\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.AddressOfNames
        target_ulong * function_name_table_rva =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x20);
        if ( !VALID_PTR(function_name_table_rva) )
        {
            argos_logf("Failed to get array with export names.\n");
            free(imported_module);
            return NULL;
        }

        // IMAGE_EXPORT_DIR.AddressOfNameOrdinals
        target_ulong * function_ordinal_table_rva =
            (target_ulong*)PHYS_ADDR(base_address
                    + export_directory_virtual_address + 0x24);
        if ( !VALID_PTR(function_ordinal_table_rva) )
        {
            argos_logf("Failed to get array with export ordinals.\n");
            free(imported_module);
            return NULL;
        }

        imported_module->number_of_functions = *number_of_functions;
        imported_module->number_of_functions_with_names = *number_of_functions_with_names;
        imported_module->function_address_table_rva = *function_address_table_rva;
        imported_module->function_name_table_rva = *function_name_table_rva;
        imported_module->function_ordinal_table_rva = *function_ordinal_table_rva;
        imported_module->base_ordinal = *base;
        imported_module->exports = get_exports_from_module(env, imported_module);

        return imported_module;
    }
    else
    {
        argos_logf("Module has no export directory.\n");
        return NULL;
    }
}

// Description: Converts UTF-16 to UTF-8, the quick and dirty way.
// Returns the number of converted characters.
// Note: The source_length is the length EXCLUDING the zero terminating
// characters, but the destination size is the size of the buffer INCLUDING
// the zero terminating character. The source and destination pointers MUST
// BE valid pointers.
static uint32_t utf16_to_utf8(uint16_t * source, uint32_t source_length,
        char * destination, uint32_t destination_size)
{
   uint32_t i = 0, number_converted_characters = 0;
   for (; i < source_length && i < destination_size; ++i)
   {
       uint16_t uc = source[i];
       if ( (uc & 0xFF00) == 0 )
       {
           destination[i] = (uc & 0xFF);
           number_converted_characters++;
       }
       else
       {
           destination[i] = '?';
       }
   }
   destination[destination_size-1] = '\0';
   return number_converted_characters;
}

static void get_imported_modules(CPUX86State * env)
{
    target_ulong vaddr_of_teb = env->segs[R_FS].base;

    // _TEB;
    target_phys_addr_t paddr_of_teb = PHYS_ADDR(vaddr_of_teb);
    if (!VALID_PTR(paddr_of_teb))
    {
        argos_logf("Invalid pointer to teb: 0x%016lx\n", paddr_of_teb);
    }

    // _TEB.ProcessEnvironmentBlock
    target_ulong  vaddr_of_peb = *((target_ulong*) (paddr_of_teb + 0x30));

    // _PEB
    target_phys_addr_t paddr_of_peb = PHYS_ADDR(vaddr_of_peb);
    if (!VALID_PTR(paddr_of_peb))
    {
        argos_logf("Invalid pointer to peb: 0x%016lx\n", paddr_of_teb);
    }

    // _PEB.Ldr
    target_ulong vaddr_ldr_data = *((target_ulong*)(paddr_of_peb + 0xc));

    // _PEB_LDR_DATA
    target_phys_addr_t paddr_ldr_data =
        PHYS_ADDR(vaddr_ldr_data);
    if (!VALID_PTR(paddr_ldr_data))
    {
        argos_logf("Invalid pointer to LdrData: 0x%016lx\n",
                paddr_ldr_data);
    }

    uint8_t initialized = *((uint8_t*)paddr_ldr_data + 0x4);

    if ( initialized )
    {
        target_phys_addr_t module_list = paddr_ldr_data + 0xc;

        target_phys_addr_t ldr_data_entry =
            PHYS_ADDR(*(target_ulong*)module_list);

        //argos_tracksc_imported_module_list_entry * last_imported_entry = NULL;
        slist_entry * tail = NULL;

        while(1)
        {
            char module_basename[ARGOS_MAX_PATH];

            if ( VALID_PTR(ldr_data_entry) )
            {
                target_ulong module_base =
                    *(target_ulong*)(ldr_data_entry + 0x18);

                // _LDR_DATA_TABLE_ENTRY.BaseDllName.Length
                uint16_t basename_length =
                    (*(uint16_t*)(ldr_data_entry + 0x2c))
                    / sizeof(uint16_t);
                if ( basename_length > 0 && basename_length < sizeof(module_basename) )
                {
                    uint16_t * basename_buffer =
                        (uint16_t *)PHYS_ADDR(
                                (*(target_ulong*)(ldr_data_entry + 0x30)));

                    if ( VALID_PTR(basename_buffer) )
                    {
                        utf16_to_utf8(basename_buffer, basename_length,
                                module_basename, sizeof(module_basename));
                    }
                }

                /*argos_tracksc_imported_module_list_entry * imported_module_entry =
                    (argos_tracksc_imported_module_list_entry *)
                    malloc(sizeof(argos_tracksc_imported_module_list_entry));*/

                //if ( imported_module_entry == NULL)

                //imported_module_entry->next = NULL;

                argos_tracksc_imported_module * imported_module =
                    get_module(env, module_base);

                if ( imported_module == NULL )
                {
                    goto next_module;
                }

                /*imported_module_entry->module = imported_module;
                if ( last_imported_entry )
                {
                    last_imported_entry =
                        last_imported_entry->next = imported_module_entry;
                }
                else
                {
                    env->shellcode_context.imported_modules =
                        last_imported_entry = imported_module_entry;
                }*/

                if ( tail )
                {
                    tail = slist_add_after(tail, imported_module);
                    if ( !tail )
                    {
                        argos_logf("Unable to allocate memory for analysis!!");
                        exit(1);
                    }
                }
                else
                {
                    slist_entry * head = slist_create();
                    if ( head )
                    {
                        slist_set_data(head, imported_module);
                        env->shellcode_context.imported_modules = tail = head;
                    }
                    else
                    {
                        argos_logf("Unable to allocate memory for analysis!!");
                        exit(1);
                    }
                }
next_module:
                ldr_data_entry =
                    PHYS_ADDR(*(target_ulong*)ldr_data_entry);

                if ( ldr_data_entry == module_list )
                {
                    break;
                }
            }
        }
    }

    return;
}

static void save_shellcode_context(CPUX86State * env)
{
    env->shellcode_context.cr3 = env->cr[3];
    env->shellcode_context.thread_id = get_current_thread_id(env);
    argos_logf("Context: CR3 = 0x%x Thead Id = %u.\n",
            env->shellcode_context.cr3,
            env->shellcode_context.thread_id);
}

static void start_analysis_phase(CPUX86State * env)
{
    env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_ANALYZING;

    argos_logf("Getting imported modules\n");
    get_imported_modules(env);

    argos_logf("Searching for LoadLibrary\n");
    if ( get_load_library_functions(env) == 0 )
    {
        argos_logf("No LoadLibrary functions found, shell-code will not be able to load libaries.\n");
    }
}

static void start_tracking_phase(CPUX86State * env)
{
    env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_TRACKING;

    argos_logf("Successfully instanciated shellcode tracking\n");
    // We have successfully initialized the shellcode context,
    // now put the cpu in single step mode to log the shellcode
    // instructions.
    //argos_logf("Successfully instanciated shellcode tracking, "
    //        "switching to single step mode.\n");
    // Enabling single stepping mode allows us to log
    // the shellcode instructions in the cpu loop.
    // With single step mode enabled the TB's contain
    // only one instruction and an exception is thrown
    // after the execution of this instruction.
    // During the handling of this exception (EXCP_DEBUG)
    // we can log the instruction in the current TB.
    //cpu_single_step(env, 1);
}

// Find the module for which the given address is in its range.
// Returns NULL when no module could be found.
static argos_tracksc_imported_module * find_module(CPUX86State * env, target_ulong address)
{
    slist_entry * cursor = env->shellcode_context.imported_modules;

    while ( cursor )
    {
        argos_tracksc_imported_module * module = (argos_tracksc_imported_module*) slist_get_data(cursor);
        if (module)
        {
            if ( module->begin_address <= address && module->end_address >= address )
            {
                return module;
            }
        }

        cursor = slist_next(cursor);
    }
    return NULL;
}

static argos_tracksc_exported_function * find_exported_function(argos_tracksc_imported_module * module,
        target_ulong address)
{
    slist_entry * cursor = module->exports;
    while ( cursor )
    {
        argos_tracksc_exported_function * function = (argos_tracksc_exported_function*) slist_get_data(cursor);
        if ( function )
        {
            if ( function->address == address )
            {
                return function;
            }
        }

        cursor = slist_next(cursor);
    }
    return NULL;
}

static argos_tracksc_exported_function * find_exported_function_by_name(CPUX86State * env, const char * name)
{
    slist_entry * module_cursor = env->shellcode_context.imported_modules;
    while (module_cursor)
    {
        argos_tracksc_imported_module * module = (argos_tracksc_imported_module *)slist_get_data(module_cursor);
        if ( module )
        {
            argos_logf("Searching %s for %s.\n", module->name, name);
            slist_entry * export_cursor = module->exports;
            while ( export_cursor )
            {
                argos_tracksc_exported_function * export = (argos_tracksc_exported_function *) slist_get_data(export_cursor);
                if ( export )
                {
                    if( export->name )
                    {
                        if ( !strcasecmp(export->name, name) )
                        {
                            return export;
                        }
                    }
                    else
                    {
                        argos_logf("No export name specified.\n");
                    }
                }

                export_cursor = slist_next(export_cursor);
            }
        }
        module_cursor = slist_next(module_cursor);
    }
    return NULL;
}

static unsigned get_load_library_functions(CPUX86State * env)
{
    unsigned found_functions = 0;
    argos_tracksc_exported_function * export = find_exported_function_by_name(env, "LoadLibraryA");
    if ( export )
    {
        argos_logf("Found LoadLibraryA at 0x%08x.\n", export->address);
        env->shellcode_context.load_library_functions[0] = export;
        found_functions++;
    }

    export = find_exported_function_by_name(env, "LoadLibraryW");
    if ( export )
    {
        argos_logf("Found LoadLibraryW at 0x%08x.\n", export->address);
        env->shellcode_context.load_library_functions[1] = export;
        found_functions++;
    }

    export = find_exported_function_by_name(env, "LoadLibraryExA");
    if ( export )
    {
        argos_logf("Found LoadLibraryA at 0x%08x.\n", export->address);
        env->shellcode_context.load_library_functions[2] = export;
        found_functions++;
    }

    export = find_exported_function_by_name(env, "LoadLibraryExW");
    if ( export )
    {
        argos_logf("Found LoadLibraryW at 0x%08x.\n", export->address);
        env->shellcode_context.load_library_functions[3] = export;
        found_functions++;
    }

    return found_functions;
}

static unsigned is_loading_library_call(CPUX86State * env, target_ulong callee_address)
{
    unsigned i = 0;
    for(; i < 4; ++i)
    {
        argos_tracksc_exported_function * function = env->shellcode_context.load_library_functions[i];
        if (  function && function->address  == callee_address )
        {
            switch(i)
            {
                case 0:
                case 2:
                    {
                        target_ulong * top = (target_ulong*)PHYS_ADDR(env->regs[R_ESP] + sizeof(target_ulong));
                        if ( top )
                        {
                            const char * library = (const char *)PHYS_ADDR(*top);
                            if ( library )
                            {
                                argos_logf("Shell-code is loading the library %s\n", library);
                            }
                        }
                        break;
                    }
                case 1:
                case 3:
                    {
                        target_ulong * top = (target_ulong*)PHYS_ADDR(env->regs[R_ESP] + sizeof(target_ulong));
                        if ( top )
                        {
                            uint16_t * library = (uint16_t *)PHYS_ADDR(*top);
                            if ( library )
                            {
                                char ascii_library[ARGOS_MAX_PATH];
                                if ( utf16_to_utf8(library, wcslen((wchar_t *) library), ascii_library, ARGOS_MAX_PATH ) )
                                {
                                    argos_logf("Shell-code is loading the library %s\n", ascii_library);
                                }
                            }
                        }
                        break;
                    }
                    break;
                default:
                    argos_logf("Internal inconsistancy detected, exiting Argos!!!");
                    exit(1);
                    break;
            }

            return 1;
        }
    }
    return 0;
}
