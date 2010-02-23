#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>

#include "cpu.h"
#include "argos-config.h"
#include "argos-common.h"
#include "argos-check.h"
#include "../exec-all.h"
#include "libdasm/libdasm.h"
#include "win2k/winternl.h"
#include "argos-tracksc.h"

#define PHYS_ADDR(X) \
    (get_phys_addr_code(env, (target_ulong)(X)) + \
     (target_phys_addr_t) phys_ram_base)

#define VALID_PHYS_ADDR(X)\
    ( (target_phys_addr_t)(X) > (target_phys_addr_t)phys_ram_base)

static INSTRUCTION current_instr;
// The pc must be a host virtual address.
static int _get_instr_len(unsigned long pc);
static void _log_instr(argos_shellcode_context_t * context);
static void _get_imported_modules(CPUX86State * env);
static target_ulong _get_current_thread_id(CPUX86State * env);
static unsigned char _in_shellcode_context(CPUX86State * env);
static unsigned char _is_tracking(CPUX86State * env);
static void _save_shellcode_context(CPUX86State * env);
static void _start_analysis_phase(CPUX86State * env);
static void _start_tracking_phase(CPUX86State * env);

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
        argos_logf("Failed to open the shellcode log file %s.\n", filename);
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

    argos_tracksc_imported_function * delete_cursor, * next;
    next = env->shellcode_context.imported_functions;
    while ( next )
    {
        delete_cursor = next;
        next = delete_cursor->next;

        if ( delete_cursor->module )
            free(delete_cursor->module);

        if ( delete_cursor->function )
            free(delete_cursor->function);

        free(delete_cursor);
    }
}

unsigned char argos_tracksc_is_active( CPUX86State * env)
{
    return env->shellcode_context.phase != ARGOS_TRACKSC_PHASE_IDLE;
}

void argos_tracksc_enable(CPUX86State * env)
{
    argos_logf("Starting eip: 0x%x\n", env->eip);
    if ( env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_IDLE )
    {
        argos_logf("Starting shell-code tracking...\n");

        // Save context of the shellcode.
        _save_shellcode_context(env);

        // We are now entering the analysis phase.
        _start_analysis_phase(env);

        // Now shift to tracking phase.
        _start_tracking_phase(env);
    }
    else if ( env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_ANALYZING)
    {
        argos_logf("Re-entering analysis phase.\n");
        // We are now entering the analysis phase.
        _start_analysis_phase(env);
        // Now shift to tracking phase.
        _start_tracking_phase(env);
    }
    else if ( env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_TRACKING)
    {
        argos_logf("Re-entering tracking phase.\n");
    }
    else
    {
        argos_logf("Argos tracking found in an invalid phase.\n");
    }
}

void argos_tracksc_store_context(CPUX86State * env)
{
    // Here we are saving context of the instructions that are 
    // executed during the tracking of shell-code.
    // Everything that is logged is before the execution of the 
    // actual instruction.
    // Check if we are executing a tainted instruction.
    // This assumes that the shell-code is marked tainted by Argos.
    if ( _is_tracking(env)
            && _in_shellcode_context(env)
            && argos_dest_pc_isdirty(env, env->eip)
            && env->shellcode_context.executed_eip != env->eip)
    {
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
        hp_pc = get_phys_addr_code(env, gv_pc) +
            (unsigned long)phys_ram_base;

        //env->shellcode_context.instruction_size = env->current_tb->size;
        env->shellcode_context.instruction_size =
            _get_instr_len(hp_pc);

        /*if ( env->current_tb->size !=
          env->shellcode_context.instruction_size )
          {
          argos_logf("!!! Eip offset detected !!!\n");
          }*/

        memcpy(env->shellcode_context.instruction, (void *)hp_pc,
                env->shellcode_context.instruction_size);

        env->shellcode_context.executed_eip = env->eip;
        env->shellcode_context.logged = 1;

#ifdef ARGOS_NET_TRACKER
        memset(env->shellcode_context.instruction_netidx, 0,
                MAX_INSTRUCTION_SIZE);

        for ( i = 0; i < env->shellcode_context.instruction_size;
                i++ )
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
}

int argos_tracksc_log_instruction(CPUX86State * env)
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

        // Print the instruction.
        // NOTE: this must be replaced with the libdasm version since it 
        // supports more options for formatting.
        //disas_instr(env->shellcode_context.logfile,
        //        env->shellcode_context.instruction,
        //        env->shellcode_context.instruction_size);

        _log_instr(&env->shellcode_context);

        fprintf(env->shellcode_context.logfile, "\t");
        fprintf(env->shellcode_context.logfile, " ");

        // Print the bytes of the instruction
        for (i = 0; i < env->shellcode_context.instruction_size; i++)
        {
            fprintf(env->shellcode_context.logfile, "%x ",
                    env->shellcode_context.instruction[i] & 0xFF);
        }
        fprintf(env->shellcode_context.logfile, "\t");

#ifdef ARGOS_NET_TRACKER
        // Print the netidx's of the instruction bytes.
        for (i = 0; i < env->shellcode_context.instruction_size; i++)
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
        return 1;
    }
    else
    {
        return 0;
    }
}

void argos_tracksc_check_for_invalid_system_call(CPUX86State * env)
{
    if ( _is_tracking(env) && env->shellcode_context.is_system_call)
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
    if (_is_tracking(env) && _in_shellcode_context(env))
    {
        argos_logf("The shellcode is trying to make a system call.\n");
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
    if ( _is_tracking(env) )
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
    if ( _is_tracking(env) && _in_shellcode_context(env) )
    {
        argos_logf("Checking function call.\n");
        if ( !argos_dest_pc_isdirty(env, env->eip))
        {
            if (  env->shellcode_context.imported_functions )
            {
                // Filter calls done in kernel-mode.
                // TODO: Have to check for runtime flags /3GB and
                // /USERVA, because they allow for a greater private
                // addressing space at the expense of a smaller kernel 
                // addressing space.
                if ( env->eip < 0x80000000 )
                {
                    argos_tracksc_imported_function * cursor =
                        env->shellcode_context.imported_functions;
                    while ( cursor != NULL )
                    {
                        if ( cursor->address == env->eip )
                        {
                            if (cursor->function)
                            {
                                argos_logf("Called imported function %s\n",
                                        cursor->function);
                            }
                            break;
                        }
                        else
                        {
                            cursor = cursor->next;
                        }
                    }

                    if ( cursor == NULL )
                    {
                        argos_logf("Called unknown function at 0x%x\n", env->eip);
                    }
                }
            }
        }
        else
        {
            argos_logf("Called injected function.\n");
        }
    }
}

static target_ulong _get_current_thread_id(CPUX86State * env)
{
    target_ulong gv_fs = 0;
    target_phys_addr_t hp_fs = 0;
    PTEB teb = 0;

    // fs:[0x0] contains the Thread Execution Block.
    gv_fs = env->segs[R_FS].base;
    hp_fs = PHYS_ADDR(gv_fs);
    if ( !VALID_PHYS_ADDR(hp_fs))
    {
        argos_logf("Failed to obtain physical address of teb.\n");
        return 0;
    }

    teb = (PTEB)hp_fs;
    return teb->Cid.UniqueThread;

}

static unsigned char _in_shellcode_context(CPUX86State * env)
{
    target_ulong thread_id = _get_current_thread_id(env);
    if ( thread_id != 0 )
    {
        if ( env->cr[3] == env->shellcode_context.cr3 
                && thread_id == env->shellcode_context.thread_id )
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else // We use a weaker form of context detection.
    {
        argos_logf("Failed to get the current thread id.\n");
        if ( env->cr[3] == env->shellcode_context.cr3 )
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
}

static int _get_instr_len(unsigned long pc)
{
    return get_instruction(&current_instr, (BYTE *)pc, MODE_32);
}

static void _log_instr(argos_shellcode_context_t * context)
{
    char instr_str[1024];
    if (get_instruction_string(&current_instr, FORMAT_INTEL, 0, instr_str,
                sizeof(instr_str)))
    {
        fprintf(context->logfile, "%s", instr_str);
    }
}

static void _get_imported_modules(CPUX86State * env)
{
    target_ulong gv_fs = 0;
    target_phys_addr_t hp_fs = 0;
    PTEB teb = 0;
    PPEB peb = 0;
    PPEB_LDR_DATA ldr_data = 0;
    LIST_ENTRY module_list;
    PLIST_ENTRY fwd_iter = 0;
    PLDR_DATA_TABLE_ENTRY module_table = 0;
    argos_tracksc_imported_function * last_import =
        env->shellcode_context.analysis_context.last_inserted_import;
    unsigned current_module_idx = 0;

    // fs:[0x0] contains the Thread Execution Block.
    gv_fs = env->segs[R_FS].base;
    hp_fs = PHYS_ADDR(gv_fs);
    if ( !VALID_PHYS_ADDR(hp_fs))
    {
        argos_logf("Failed to obtain physical address of teb.\n");
        return;
    }

    teb = (PTEB)hp_fs;
    peb = (PPEB)PHYS_ADDR(teb->Peb);
    if ( !VALID_PHYS_ADDR(peb) )
    {
        argos_logf("Failed to obtain physical address of peb.\n");
        return;
    }

    ldr_data = (PPEB_LDR_DATA) PHYS_ADDR(peb->LoaderData);
    if ( !VALID_PHYS_ADDR(ldr_data) )
    {
        argos_logf("Failed to obtain physical address of loader data.\n");
        return;
    }

    module_list = ldr_data->InLoadOrderModuleList;
    fwd_iter = (PLIST_ENTRY) PHYS_ADDR(module_list.Flink);
    if ( !VALID_PHYS_ADDR(fwd_iter) )
    {
        argos_logf("Failed to obtain physical address of Flink.\n");
        return;
    }

    module_table = (PLDR_DATA_TABLE_ENTRY)fwd_iter;
    while ( module_table->BaseAddress != 0 )
    {
        if ( current_module_idx <
                env->shellcode_context.analysis_context.current_module_idx )
        {
            argos_logf("Skipping already analyzed module.\n");
            goto next;
        }
        argos_logf("Module base: 0x%x\n", module_table->BaseAddress);

        PIMAGE_DOS_HEADER dos_hdr = (PIMAGE_DOS_HEADER) 
            PHYS_ADDR(module_table->BaseAddress);
        if ( !VALID_PHYS_ADDR(dos_hdr) )
        {
            argos_logf("Failed to obtain physical address \
                    of dos header.\n");
            goto next;
        }

        if ( dos_hdr->e_magic != IMAGE_DOS_SIGNATURE  )
        {
            argos_logf("Imported module has an invalid dos signature.\n");
            goto next;
        }

        PIMAGE_NT_HEADERS pe_hdr = (PIMAGE_NT_HEADERS)
            PHYS_ADDR(module_table->BaseAddress
                    + dos_hdr->e_lfanew);
        if ( !VALID_PHYS_ADDR(pe_hdr) )
        {
            argos_logf("Failed to obtain physical address of pe header.\n");
            goto next;
        }

        if ( pe_hdr->Signature != IMAGE_PE_SIGNATURE )
        {
            argos_logf("Imported module has an invalid pe signature.\n");
            goto next;
        }


        if ( pe_hdr->OptionalHeader.NumberOfRvaAndSizes == 0 )
        {
            goto next;
        }

        PIMAGE_DATA_DIRECTORY export_data_dir
            = &pe_hdr->OptionalHeader.DataDirectory[0];
        if ( export_data_dir->VirtualAddress == 0 )
        {
            argos_logf("Module has no export table!\n");
            goto next;
        }

        PIMAGE_EXPORT_DIRECTORY export_dir =
            (PIMAGE_EXPORT_DIRECTORY)
            PHYS_ADDR(module_table->BaseAddress +
                    export_data_dir->VirtualAddress);
        if ( !VALID_PHYS_ADDR(export_dir) )
        {
            argos_logf("Failed to obtain physical address of export \
                    directory.\n");
            goto next;
        }

        target_ulong addresses =
            module_table->BaseAddress
            + export_dir->AddressOfFunctions;

        target_ulong names =
            module_table->BaseAddress
            + export_dir->AddressOfNames;

        target_ulong nameOrdinals =
            module_table->BaseAddress
            + export_dir->AddressOfNameOrdinals;

        unsigned i, skipped_imports = 0;;

        char * module_name =
            (char*)PHYS_ADDR(module_table->BaseAddress
                    + export_dir->Name);

        if ( !VALID_PHYS_ADDR(module_name) )
        {
            argos_logf("Failed to obtain physical address \
                    of module name.\n");
            goto next;
        }

        printf("Found module %s\n", module_name);
        for (i = 0; i < export_dir->NumberOfFunctions; i++)
        {
            if ( i <
                    env->shellcode_context.analysis_context.current_import_idx)
            {
                skipped_imports++;
                continue;
            }

            target_phys_addr_t function_ordinal_addr = 0;
            argos_tracksc_imported_function
                * import =
                malloc( sizeof
                        (
                         argos_tracksc_imported_function
                        ));

            if ( import == NULL )
            {
                argos_logf("Failed to allocate memory to \
                        store imported functions!!!\n");
                return;
            }
            memset(import, 0, sizeof(argos_tracksc_imported_function));

            import->module = strdup(module_name);

            if ( i < export_dir->NumberOfNames)
            {
                target_phys_addr_t function_name_rva =
                    PHYS_ADDR(names + i * sizeof(DWORD) );
                if ( VALID_PHYS_ADDR(function_name_rva) )
                {
                    target_phys_addr_t function_name_addr =
                        PHYS_ADDR( module_table->BaseAddress
                                + *((DWORD*)function_name_rva));

                    if (VALID_PHYS_ADDR(function_name_addr))
                    {
                        char * function_name =
                            (char*)function_name_addr;
                        import->function =
                            strdup(function_name);
                    }
                    else
                    {
                        argos_logf("Invalid physical address of function \
                                name.\n");
                    }
                }
                else
                {
                    argos_logf("Invalid physical address of function name \
                            rva.\n");
                }
            }

            function_ordinal_addr = PHYS_ADDR(nameOrdinals
                    + i * sizeof(WORD) );
            if ( VALID_PHYS_ADDR(function_ordinal_addr) )
            {
                target_phys_addr_t function_paddr = 0;
                WORD ordinal = *((WORD*)function_ordinal_addr);
                import->ordinal = ordinal + export_dir->Base;

                function_paddr = PHYS_ADDR(addresses +
                        (ordinal - export_dir->Base) * sizeof(DWORD));
                if ( VALID_PHYS_ADDR(function_paddr) )
                {
                    target_ulong function_addr = module_table->BaseAddress
                        + *((DWORD*)function_paddr);
                    import->address = function_addr;
                }
                else
                {
                    argos_logf("Invalid physical address of function \
                            address.\n");
                }
            }
            else
            {
                argos_logf("Invalid physical address of function \
                        ordinal.\n");
            }

            if ( last_import )
            {
                env->shellcode_context.analysis_context.last_inserted_import
                    = last_import = last_import->next
                    = import;
            }
            else
            {
                // If last_import is not set we assume that the no 
                // imported functions are added to the list.
                env->shellcode_context.imported_functions =
                    last_import = import;
            }
            env->shellcode_context.analysis_context.current_import_idx++;
        }
        // Reset the imported function index for the next module.
        env->shellcode_context.analysis_context.current_import_idx = 0;
        argos_logf("Loaded %u - Skipped %u imports.\n", 
                export_dir->NumberOfFunctions - skipped_imports,
                skipped_imports);

next:
    fwd_iter = (PLIST_ENTRY) PHYS_ADDR(fwd_iter->Flink);
    if ( !VALID_PHYS_ADDR(fwd_iter) )
    {
        argos_logf("Failed to obtain physical address of next module.\n");
        return;
    }
    module_table = (PLDR_DATA_TABLE_ENTRY)fwd_iter;
    env->shellcode_context.analysis_context.current_module_idx
        = ++current_module_idx;
    }
}

static void _save_shellcode_context(CPUX86State * env)
{
    argos_logf("The context uses the cr3 register and the thread id.\n");
    env->shellcode_context.cr3 = env->cr[3];
    env->shellcode_context.thread_id = _get_current_thread_id(env);
}

static void _start_analysis_phase(CPUX86State * env)
{
    env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_ANALYZING;

    argos_logf("Dumping loaded modules for targeted process.\n");
    _get_imported_modules(env);
    argos_logf("Done dumping loaded modules for targeted process.\n");
}

static void _start_tracking_phase(CPUX86State * env)
{
    env->shellcode_context.phase = ARGOS_TRACKSC_PHASE_TRACKING;
    // We have successfully initialized the shellcode context,
    // now put the cpu in single step mode to log the shellcode
    // instructions.
    argos_logf("Successfully instanciated shellcode tracking, "
            "switching to single step mode.\n");
    // Enabling single stepping mode allows us to log
    // the shellcode instructions in the cpu loop.
    // With single step mode enabled the TB's contain
    // only one instruction and an exception is thrown
    // after the execution of this instruction.
    // During the handling of this exception (EXCP_DEBUG)
    // we can log the instruction in the current TB.
    cpu_single_step(env, 1);
}

static unsigned char _is_tracking(CPUX86State * env)
{
    return env->shellcode_context.phase == ARGOS_TRACKSC_PHASE_TRACKING;
}
