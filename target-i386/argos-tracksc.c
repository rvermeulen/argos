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
#include "winxp/internals.h"
#include "argos-tracksc-whitelist.h"
#include "argos-tracksc.h"

static void get_instruction_at_program_counter(CPUX86State * env);
static void get_instruction_at_address(CPUX86State * env, target_phys_addr_t address);
static void address_translation_failure(target_ulong address);
static void log_instruction(CPUX86State * env);
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
static argos_tracksc_exported_function * is_loading_library_call(CPUX86State * env, target_ulong callee_address);
static void save_return_address(CPUX86State * env);
extern void vm_stop(int reason);

target_phys_addr_t translate_address(CPUX86State *env, target_ulong address)
{
    target_phys_addr_t physical_page =
        cpu_get_phys_page_debug(env, address + env->segs[R_CS].base);
    if (physical_page != -1)
    {
       uint32_t offset = cpu_get_physical_page_desc(physical_page);
       if ( offset != IO_MEM_UNASSIGNED )
       {
           target_phys_addr_t phys_addr = (target_phys_addr_t)phys_ram_base
               + ( offset & TARGET_PAGE_MASK) + (address & ~TARGET_PAGE_MASK);

           return phys_addr;
       }
       else
       {
           return 0;
       }
    }
    else
    {
        return 0;
    }
}
#define PHYS_ADDR(X) translate_address(env, (X))

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
        log_instruction(env);

        /*INSTRUCTION * current_instruction = &env->shellcode_context.instruction;

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
        }*/
    }
}

void argos_tracksc_after_instruction_execution(CPUX86State * env)
{
    argos_tracksc_log_instruction(env);
    //argos_tracksc_check_for_invalid_system_call(env);
}

void argos_tracksc_after_instruction_raised_an_exception(CPUX86State * env)
{
    // The INT instruction causes raises an exception.
    //argos_tracksc_check_for_invalid_system_call(env);
}

void log_instruction(CPUX86State * env)
{
    // Here we are saving context of the instructions that are 
    // executed during the tracking of shell-code.
    // Everything that is logged is before the execution of the 
    // actual instruction.
    // Check if we are executing a tainted instruction.
    // This assumes that the shell-code is marked tainted by Argos.
    if (argos_dest_pc_isdirty(env, env->eip))
    {

        get_instruction_at_program_counter(env);

        env->shellcode_context.executed_eip = env->eip;
        env->shellcode_context.logged = 1;
    }
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
            // We are only interested in user-mode functions calls.
            if ( env->eip < 0x80000000 )
            {
                if (argos_tracksc_whitelist)
                {
                    if ( env->shellcode_context.call_level == 0 )
                    {
                        // Raise call-level to 1 for calls made by the shell-code
                        // to external functions
                        env->shellcode_context.call_level++;
                        save_return_address(env);
                        if (!is_loading_library_call(env, env->eip))
                        {
                            argos_tracksc_imported_module * module = find_module(env, env->eip);
                            if ( module )
                            {
                                argos_tracksc_whitelist_entry * whitelist_entry = argos_tracksc_find_module_in_whitelist(module->name, argos_tracksc_whitelist);

                                if ( whitelist_entry )
                                {
                                    argos_tracksc_exported_function * function = find_exported_function(module, env->eip);
                                    if ( function )
                                    {
                                        if ( function->name )
                                        {
                                            if ( argos_tracksc_whitelist_function_in_whitelist_entry(function->name, whitelist_entry) )
                                            {
                                                argos_logf("Called whitelisted %s!%s\n", module->name, function->name);
                                            }
                                            else
                                            {
                                                argos_logf("Called %s!%s\n", module->name, function->name);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        // TODO: search for the function in the module.
                                        argos_logf("Unknown function, system calls we be blocked!!!");
                                    }
                                }
                                else
                                {
                                    argos_logf("The module %s is not in the whitelist\n", module->name);
                                }
                            }
                            else
                            {
                                argos_logf("Shellcode called unknown function. Stopping Argos!!!");
                                exit(1);
                            }
                        }
                        else
                        {
                            // Raise call-level to 2 for LoadLibrary calls.
                            env->shellcode_context.call_level++;
                        }
                    }
                }
                else
                {
                    argos_logf("No whitelist specified!!!\n");
                }
            }
        }
        else
        {
            argos_logf("Called injected function at 0x%08x.\n", env->eip);
        }
    }

    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}

static target_ulong get_current_thread_id(CPUX86State * env)
{
    target_ulong teb_address = env->segs[R_FS].base;
    target_phys_addr_t translated_teb_address = PHYS_ADDR(teb_address);
    if ( !translated_teb_address )
    {
        argos_logf("Invalid teb address!!!\n");
        address_translation_failure(teb_address);
    }

    return *((target_ulong*)(translated_teb_address + TEB_CLIENT_ID + CLIENT_ID_UNIQUE_THREAD));
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

static void address_translation_failure(target_ulong address)
{
    argos_logf("Argos failed to translate the address 0x%08x!!!\n", address);
    exit(1);
}


static void get_instruction_at_program_counter(CPUX86State * env)
{
    target_ulong program_counter = 0;
    target_phys_addr_t translated_program_counter = 0;

    program_counter = env->segs[R_CS].base + env->eip;
    translated_program_counter = PHYS_ADDR(program_counter);

    if ( translated_program_counter )
    {
        get_instruction_at_address(env, translated_program_counter);
    }
    else
    {
        argos_logf("Invalid program counter!!!\n");
        address_translation_failure(program_counter);
    }

}

static void get_instruction_at_address(CPUX86State * env, target_phys_addr_t address)
{
    int instruction_length = get_instruction(&env->shellcode_context.instruction, (BYTE *)address, MODE_32);
    memset(env->shellcode_context.instruction_bytes, 0, MAX_INSTRUCTION_SIZE);
    memcpy(env->shellcode_context.instruction_bytes, (unsigned char*)address, instruction_length);

#ifdef ARGOS_NET_TRACKER
    unsigned i = 0;
    unsigned max_stage = 0;

    memset(env->shellcode_context.instruction_netidx, 0,
            MAX_INSTRUCTION_SIZE);

    for ( i = 0; i < env->shellcode_context.instruction.length; ++i )
    {
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(address + i);
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
    target_ulong function_address_table = module->function_address_table;
    target_ulong function_ordinal_table = module->function_ordinal_table;
    target_ulong function_name_table = module->function_name_table;

    slist_entry * head = NULL, * tail = NULL;

    unsigned i = 0;
    for(; i < module->number_of_functions_with_names; ++i)
    {
            argos_tracksc_exported_function * export =
                (argos_tracksc_exported_function *)
                malloc(sizeof(argos_tracksc_exported_function));

            if ( export != NULL )
            {
                target_ulong function_ordinal_table_entry_offset = i * sizeof(uint16_t);
                target_ulong address_of_function_ordinal = function_ordinal_table + function_ordinal_table_entry_offset;
                uint16_t * function_ordinal = (uint16_t *) PHYS_ADDR(address_of_function_ordinal);

                if ( function_ordinal )
                {
                    export->ordinal = *function_ordinal;

                    target_ulong function_address_table_entry_offset = export->ordinal * sizeof(uint32_t);
                    target_ulong address_of_function_address = function_address_table + function_address_table_entry_offset;
                    target_ulong * function_address = (target_ulong*) PHYS_ADDR(address_of_function_address);

                    if ( function_address )
                    {
                        export->address = *function_address + module->begin_address;

                        target_ulong function_name_table_entry_offset = i * sizeof(uint32_t);
                        target_ulong address_of_function_name_rva = function_name_table + function_name_table_entry_offset;
                        target_ulong * function_name_rva = (target_ulong*) PHYS_ADDR(address_of_function_name_rva);

                        if ( function_name_rva )
                        {
                            target_ulong address_of_function_name = module->begin_address + *function_name_rva;
                            const char * function_name = (const char *)PHYS_ADDR(address_of_function_name);
                            if ( function_name )
                            {
                                export->name = strdup(function_name);
                                if ( export->name == NULL )
                                {
                                    argos_logf("Insufficient memory to save imported module information, quiting Argos.\n");
                                    exit(1);
                                }

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
                                //argos_logf("Invalid address of function name!!!\n");
                                //address_translation_failure(address_of_function_name);
                            }
                        }
                        else
                        {
                            free(export);
                            //argos_logf("Invalid address of function name rva!!!\n");
                            //address_translation_failure(address_of_function_name_rva);
                        }
                    }
                    else
                    {
                        free(export);
                        //argos_logf("Invalid address of function address!!!\n");
                        //address_translation_failure(address_of_function_address);
                    }
                }
                else
                {
                    free(export);
                    //argos_logf("Invalid address of function ordinal!!!\n");
                    //address_translation_failure(address_of_function_ordinal);
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
    target_ulong dos_header = base_address;

    target_ulong address_of_dos_header_signature = dos_header + IMAGE_DOS_HEADER_E_MAGIC;
    uint16_t * dos_header_signature = (uint16_t*)PHYS_ADDR(address_of_dos_header_signature);

    if ( !dos_header_signature )
    {
        argos_logf("Invalid address of DOS signature!!!\n");
        address_translation_failure(address_of_dos_header_signature);
    }

    if ( *dos_header_signature != IMAGE_DOS_SIGNATURE  )
    {
        argos_logf("Module has an invalid DOS signature.\n");
        return NULL;
    }

    target_ulong address_of_nt_headers_offset = dos_header + IMAGE_DOS_HEADER_E_LFANEW;
    target_ulong * nt_headers_offset = (target_ulong*) PHYS_ADDR(address_of_nt_headers_offset);

    if ( !nt_headers_offset )
    {
        argos_logf("Invalid address of NT headers offset!!!\n");
        address_translation_failure(address_of_nt_headers_offset);
    }

    target_ulong nt_headers = dos_header + *nt_headers_offset;

    target_ulong address_of_nt_headers_signature = nt_headers + IMAGE_NT_HEADERS_SIGNATURE;
    target_ulong * nt_headers_signature = (target_ulong*) PHYS_ADDR(address_of_nt_headers_signature);

    if ( !nt_headers_signature )
    {
        argos_logf("Invalid address of PE signature!!!\n");
        address_translation_failure(address_of_nt_headers_signature);
    }

    if ( *nt_headers_signature != IMAGE_PE_SIGNATURE )
    {
        argos_logf("Module has an invalid PE signature.\n");
        return NULL;
    }

    target_ulong optional_header = nt_headers + IMAGE_NT_HEADERS_OPTIONAL_HEADER;

    target_ulong address_of_size_of_image = optional_header + IMAGE_OPTIONAL_HEADER_SIZE_OF_IMAGE;
    target_ulong * size_of_image = (target_ulong*) PHYS_ADDR(address_of_size_of_image);

    if ( !size_of_image )
    {
        argos_logf("Invalid address of size of image!!!\n");
        address_translation_failure(address_of_size_of_image);
    }

    target_ulong end_address = dos_header + *size_of_image;

    target_ulong address_of_number_of_rva_and_sizes = optional_header + IMAGE_OPTIONAL_HEADER_NUMBER_OF_RVA_AND_SIZES;
    target_ulong * number_of_rva_and_sizes = (target_ulong*) PHYS_ADDR(address_of_number_of_rva_and_sizes);

    if ( !number_of_rva_and_sizes )
    {
        argos_logf("Invalid address of number of rva and sizes!!!\n");
        address_translation_failure(address_of_number_of_rva_and_sizes);
    }

    if ( *number_of_rva_and_sizes == 0 )
    {
        argos_logf("Module has no sections!\n");
        return NULL;
    }

    target_ulong export_data_directory = optional_header + IMAGE_OPTIONAL_HEADER_DATA_DIRECTORY;
    target_ulong address_of_export_directory_virtual_address = export_data_directory + IMAGE_DATA_DIRECTORY_VIRTUAL_ADDRESS;

    target_ulong * export_directory_virtual_address = (target_ulong*) PHYS_ADDR(address_of_export_directory_virtual_address);
    if ( !export_directory_virtual_address )
    {
        argos_logf("Invalid address of export director virtual address!!!\n");
        address_translation_failure(address_of_export_directory_virtual_address);
    }

    if ( *export_directory_virtual_address != 0 )
    {
        argos_tracksc_imported_module * imported_module =
            (argos_tracksc_imported_module *)
            malloc(sizeof(argos_tracksc_imported_module));

        if ( imported_module == NULL)
        {
            argos_logf("Unable to allocate memory for analysis.\n");
            return NULL;
        }

        imported_module->begin_address = dos_header;
        imported_module->end_address = end_address;

        target_ulong export_directory = dos_header + *export_directory_virtual_address;
        target_ulong address_of_module_name_rva = export_directory + IMAGE_EXPORT_DIRECTORY_NAME;
        target_ulong * module_name_rva = (target_ulong*)PHYS_ADDR(address_of_module_name_rva);

        if ( module_name_rva )
        {
            target_ulong address_of_module_name = dos_header + *module_name_rva;
            const char * module_name = (const char *)PHYS_ADDR( address_of_module_name );
            if ( module_name )
            {
                argos_logf("Analysis module: %s\n", module_name);
                strncpy(imported_module->name, module_name, ARGOS_MAX_PATH);
                imported_module->name[ARGOS_MAX_PATH-1] = '\0';
            }
            else
            {
                free(imported_module);
                argos_logf("Invalid address of module name!!!\n");
                address_translation_failure(address_of_module_name);
            }
        }
        else
        {
            free(imported_module);
            argos_logf("Invalid address of module name rva!!!\n");
            address_translation_failure(address_of_module_name_rva);
        }

        target_ulong address_of_module_base_ordinal = export_directory + IMAGE_EXPORT_DIRECTORY_BASE;
        target_ulong * module_base_ordinal = (target_ulong*) PHYS_ADDR(address_of_module_base_ordinal);
        if ( !module_base_ordinal )
        {
            free(imported_module);
            argos_logf("Invalid address of module base ordinal!!!\n");
            address_translation_failure(address_of_module_base_ordinal);
        }

        target_ulong address_of_number_of_functions = export_directory + IMAGE_EXPORT_DIRECTORY_NUMBER_OF_FUNCTIONS;
        target_ulong * number_of_functions = (target_ulong*) PHYS_ADDR(address_of_number_of_functions);
        if ( !number_of_functions )
        {
            free(imported_module);
            argos_logf("Invalid address of number of functions!!!\n");
            address_translation_failure(address_of_number_of_functions);
        }

        target_ulong address_of_number_of_functions_with_names = export_directory + IMAGE_EXPORT_DIRECTORY_NUMBER_OF_NAMES;
        target_ulong * number_of_functions_with_names = (target_ulong*) PHYS_ADDR(address_of_number_of_functions_with_names);
        if ( !number_of_functions_with_names )
        {
            free(imported_module);
            argos_logf("Invalid address of number of functions with names!!!\n");
            address_translation_failure(address_of_number_of_functions_with_names);
        }

        target_ulong address_of_function_address_table_rva = export_directory + IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_FUNCTIONS;
        target_ulong * function_address_table_rva = (target_ulong*) PHYS_ADDR(address_of_function_address_table_rva);
        if ( !function_address_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of functions!!!\n");
            address_translation_failure(address_of_function_address_table_rva);
        }

        target_ulong address_of_function_name_table_rva = export_directory + IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_NAMES;
        target_ulong * function_name_table_rva = (target_ulong*) PHYS_ADDR(address_of_function_name_table_rva);
        if ( !function_name_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of names!!!\n");
            address_translation_failure(address_of_function_name_table_rva);
        }

        target_ulong address_of_function_ordinal_table_rva = export_directory + IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_NAME_ORDINALS;
        target_ulong * function_ordinal_table_rva = (target_ulong*) PHYS_ADDR(address_of_function_ordinal_table_rva);
        if ( !function_ordinal_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of name ordinals!!!\n");
            address_translation_failure(address_of_function_ordinal_table_rva);
        }

        imported_module->number_of_functions = *number_of_functions;
        imported_module->number_of_functions_with_names = *number_of_functions_with_names;
        imported_module->function_address_table = *function_address_table_rva + imported_module->begin_address;
        imported_module->function_name_table = *function_name_table_rva + imported_module->begin_address;
        imported_module->function_ordinal_table = *function_ordinal_table_rva + imported_module->begin_address;
        imported_module->base_ordinal = *module_base_ordinal;
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
    target_ulong teb = env->segs[R_FS].base;

    target_ulong address_of_pointer_to_peb = (teb + TEB_PROCESS_ENVIRONMENT_BLOCK);
    target_ulong * pointer_to_peb = (target_ulong*) PHYS_ADDR(address_of_pointer_to_peb);

    if (!pointer_to_peb)
    {
        argos_logf("Invalid pointer to peb!!!\n");
        address_translation_failure(address_of_pointer_to_peb);
    }

    target_ulong peb = *pointer_to_peb;

    target_ulong address_of_pointer_to_loader_data = peb + PEB_LOADER_DATA;
    target_ulong * pointer_to_loader_data = (target_ulong*) PHYS_ADDR(address_of_pointer_to_loader_data);

    if (!pointer_to_loader_data)
    {
        argos_logf("Invalid address of pointer to peb loader data!!!\n");
        address_translation_failure(address_of_pointer_to_loader_data);
    }

    target_ulong loader_data = *pointer_to_loader_data;

    target_ulong address_of_is_initialized = loader_data + PEB_LDR_DATA_INITIALIZED;
    uint8_t * initialized = (uint8_t*) PHYS_ADDR(address_of_is_initialized);

    if ( !initialized )
    {
        argos_logf("Invalid address of is initialized loader data!!!\n");
        address_translation_failure(address_of_is_initialized);
    }

    if ( *initialized )
    {
        target_ulong module_list = loader_data + PEB_LDR_DATA_IN_LOAD_ORDER_MODULE_LIST;

        target_ulong * pointer_to_loader_data_entry = (target_ulong*) PHYS_ADDR(module_list + LIST_ENTRY_FLINK);

        if ( !pointer_to_loader_data_entry )
        {
            argos_logf("Invalid address to pointer of loader data entry!!!\n");
            address_translation_failure(module_list);
        }

        target_ulong loader_data_entry = *pointer_to_loader_data_entry;

        slist_entry * tail = NULL;

        while(1)
        {
            char module_basename[ARGOS_MAX_PATH];

            target_ulong address_of_module_base = loader_data_entry + LDR_MODULE_BASE_ADDRESS;
            target_ulong * module_base = (target_ulong*) PHYS_ADDR(address_of_module_base);

            if ( !module_base )
            {
                argos_logf("Invalid address of module base!!!\n");
                address_translation_failure(address_of_module_base);
            }

            target_ulong address_of_module_base_dll_name_length = loader_data_entry + LDR_MODULE_BASE_DLL_NAME + UNICODE_STRING_LENGTH;
            uint16_t * module_base_dll_name_length = (uint16_t*) PHYS_ADDR(address_of_module_base_dll_name_length);

            if ( !module_base_dll_name_length )
            {
                argos_logf("Invalid address of module base dll name length!!!\n");
                address_translation_failure(address_of_module_base_dll_name_length);
            }

            uint16_t module_base_dll_name_length_in_characters = *module_base_dll_name_length / sizeof(uint16_t);

            if ( module_base_dll_name_length_in_characters > 0 && module_base_dll_name_length_in_characters < ARGOS_MAX_PATH )
            {
                target_ulong address_of_pointer_to_module_base_dll_name = (loader_data_entry + LDR_MODULE_BASE_DLL_NAME + UNICODE_STRING_BUFFER);
                target_ulong * address_of_module_base_dll_name = (target_ulong*) PHYS_ADDR(address_of_pointer_to_module_base_dll_name);

                if ( !address_of_module_base_dll_name )
                {
                    argos_logf("Invalid address of pointer to module base dll name!!!\n");
                    address_translation_failure(address_of_pointer_to_module_base_dll_name);
                }

                uint16_t * module_base_dll_name = (uint16_t *) PHYS_ADDR( *address_of_module_base_dll_name  );

                if ( module_base_dll_name )
                {
                    utf16_to_utf8(module_base_dll_name, module_base_dll_name_length_in_characters, module_basename, sizeof(module_basename));
                }
                else
                {
                    argos_logf("Invalid address of loader module base dll name!!!\n");
                    address_translation_failure(*address_of_module_base_dll_name);
                }
            }

            argos_tracksc_imported_module * imported_module = get_module(env, *module_base);

            if ( imported_module == NULL )
            {
                goto next_module;
            }

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
            pointer_to_loader_data_entry = (target_ulong*) PHYS_ADDR(loader_data_entry + LIST_ENTRY_FLINK);

            if ( !pointer_to_loader_data_entry )
            {
                argos_logf("Invalid address to pointer of loader data entry!!!\n");
                address_translation_failure(module_list);
            }

            loader_data_entry = *pointer_to_loader_data_entry;

            // If we are back at the beginning of the list, we are done.
            if ( loader_data_entry == module_list )
            {
                break;
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

// Returns a pointer to the argos_tracksc_exported_function
// struct of the LoadLibrary function called.
// NULL if no function from the LoadLibrary family is called.
static argos_tracksc_exported_function * is_loading_library_call(CPUX86State * env, target_ulong callee_address)
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
                        return function;
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
                        return function;
                    }
                default:
                    argos_logf("Internal inconsistancy detected, exiting Argos!!!");
                    exit(1);
                    break;
            }
        }
    }
    return NULL;
}

// This function assumes that the top of the stack points to the return address.
static void save_return_address(CPUX86State * env)
{
    target_ulong * return_address = (target_ulong *)PHYS_ADDR(env->regs[R_ESP]);
    if ( return_address )
    {
        env->shellcode_context.saved_return_address = *return_address;
    }
    else
    {
        argos_logf("Failed to read memory!!!");
        exit(1);
    }
}

// Here we save the content of the eax register when the eip equals the
// value of the saved return address.
void argos_tracksc_check_for_return(CPUX86State * env)
{
    sigset_t alrmset;

    if (sigprocmask(SIG_BLOCK, &alrmset, NULL) != 0)
        perror("could not temporarily block signals");

    if ( argos_tracksc_is_tracking(env) && in_shellcode_context(env) && env->shellcode_context.call_level > 0) 
    {
        if ( env->shellcode_context.saved_return_address != 0
                && env->shellcode_context.saved_return_address == env->eip )
        {
            if ( env->shellcode_context.call_level == 2 )
            {
                env->shellcode_context.saved_return_value = env->regs[R_EAX];
                argos_tracksc_imported_module * loaded_module = get_module(env, env->regs[R_EAX]);
                if ( loaded_module )
                {
                    argos_logf("Loaded %s\n", loaded_module->name);
                    if (env->shellcode_context.imported_modules)
                    {
                        slist_entry * tail = slist_add_after(env->shellcode_context.imported_modules, loaded_module);
                        if (!tail)
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
                            slist_set_data(head, loaded_module);
                            env->shellcode_context.imported_modules = head;
                        }
                        else
                        {
                            argos_logf("Unable to allocate memory for analysis!!");
                            exit(1);
                        }
                    }
                }
                else
                {
                    argos_logf("Loaded module is not a valid library!\n");
                }
            }

            env->shellcode_context.call_level = 0;
            env->shellcode_context.saved_return_address = 0;
        }
    }

    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}
