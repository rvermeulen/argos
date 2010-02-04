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


static INSTRUCTION current_instr;
// The pc must be a host virtual address.
static int argos_tracksc_instr_len(unsigned long pc);
static void argos_tracksc_dump_current_instr(argos_shellcode_context_t * context);
static void argos_tracksc_dump_loaded_modules(CPUX86State * env);

#define PHYS_ADDR(X) (get_phys_addr_code(env, (target_ulong)(X)) + (unsigned long) phys_ram_base)

int argos_tracksc_instr_len(unsigned long pc)
{
    return get_instruction(&current_instr, (BYTE *)pc, MODE_32);
}

void argos_tracksc_dump_current_instr(argos_shellcode_context_t * context)
{
    char instr_str[1024];
    if (get_instruction_string(&current_instr, FORMAT_INTEL, 0, instr_str, 
                sizeof(instr_str)))
    {
        fprintf(context->logfile, "%s", instr_str);
    }
}

void argos_tracksc_init(CPUX86State * env)
{
    const unsigned filename_size = 128;
    char filename[filename_size];
    // Initialize the structure that holds the context of the shell-code
    // being tracked.
    memset(&env->shellcode_context, 0, sizeof(argos_shellcode_context_t));

    // Set the default condition when to stop executing and tracking
    // shell-code.
    env->shellcode_context.stop_condition = SSC_FIRST_SYSTEM_CALL;

    snprintf(filename, filename_size,  LOG_SC_FL_TEMPLATE, argos_instance_id);
    argos_logf("Generated shellcode log filename %s.\n", filename);
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
        env->shellcode_context.running = 0;
    }
}

int argos_tracksc_is_running(CPUX86State * env)
{
    return env->shellcode_context.running;
}

void argos_tracksc_enable(CPUX86State * env)
{
    argos_logf("Dumping loaded modules for targeted process.\n");
    argos_tracksc_dump_loaded_modules(env);

    argos_logf("Starting shell-code tracking...\n");
    env->shellcode_context.running = 1;
    env->shellcode_context.cr3 = env->cr[3];

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

void argos_tracksc_store_context(CPUX86State * env)
{
    // Here we are saving context of the instructions that are 
    // executed during the tracking of shell-code.
    // Everything that is logged is before the execution of the 
    // actual instruction.
    // Check if we are executing a tainted instruction.
    // This assumes that the shell-code is marked tainted by Argos.
    if (env->shellcode_context.executed_eip != env->eip &&
            env->cr[3] == env->shellcode_context.cr3 &&
            argos_dest_pc_isdirty(env, env->eip))
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
        env->shellcode_context.instruction_size = argos_tracksc_instr_len(hp_pc);

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

void argos_tracksc_log_instruction(CPUX86State * env)
{
    // Here we are going to log the instructions that belong to the shellcode.
    // This is after the execution of the instruction so the eip register points
    // to the next instruction.
    // If something logged.
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

        argos_tracksc_dump_current_instr(&env->shellcode_context);

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

        // If the instruction performed a load, print the address of the load
        // and the value loaded.
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
                // TODO: check if address is guest virtual or guest physical 
                // address!
                // Not all cases are checked, which can result in an invalid 
                // netidx.
                if (env->shellcode_context.load_addr_type ==
                        ARGOS_HOST_VIRTUAL_ADDR)
                {
                    netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr +
                            i);
                }
                else
                {
                    if (env->shellcode_context.load_value_netidx != 0)
                    {
                        netidx = env->shellcode_context.load_value_netidx+i;
                    }
                    else
                    {
                        netidx = 0;
                    }
                }

                if (netidx != 0)
                {
                    // We cannot always retrieve the address fo the guest,
                    // so we annotate the address to show that it a host virtual
                    // address.
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

        // If the instruction performed a store, print the store address and value.
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
                    netidx = ARGOS_NETIDXPTR(env->shellcode_context.store_addr + i);
                }
                else
                {
                    if (env->shellcode_context.store_value_netidx != 0)
                    {
                        netidx = env->shellcode_context.store_value_netidx+i;
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

        // Increase the number of executed instruction and check the stop condition.
        env->shellcode_context.instruction_cnt++;
        if (env->shellcode_context.stop_condition == SSC_MAX_INSTR_CNT 
                && env->shellcode_context.instruction_cnt == MAX_INSTRUCTION_CNT )
        {
            env->shellcode_context.running = 0;
            // For now we just pause the vm.
            vm_stop(0);
        }
    }
}

void argos_tracksc_check_for_system_call(CPUX86State * env)
{
    if ( env->shellcode_context.is_system_call)
    {
        // Check the shell-code tracking stop condition.
        if ( env->shellcode_context.stop_condition == SSC_FIRST_SYSTEM_CALL )
        {
            env->shellcode_context.is_system_call = 0;
            env->shellcode_context.running = 0;
            // The system call number resides in the register eax for the int 0x2e
            // as well for the sysenter system call mechanism.
            fprintf(env->shellcode_context.logfile,
                    "Prevented shellcode from calling system call 0x%x.\n",
                    env->regs[R_EAX]);

            // For now we just pause the vm.
            vm_stop(0);
        }
    }

}

int argos_tracksc_log_system_call(CPUX86State * env)
{
    // If we are in the correct context.
    if (env->cr[3] == env->shellcode_context.cr3)
    {
        argos_logf("The shellcode is trying to make a system call.\n");
        // Flag that a system call is pending.
        env->shellcode_context.is_system_call = 1;
        return 1;
    }
    else
    {
        return 0;
    }
}

int argos_tracksc_logged_system_call(CPUX86State * env)
{
    return env->shellcode_context.is_system_call;
}

static void argos_tracksc_dump_loaded_modules(CPUX86State * env)
{
    target_ulong gv_fs = 0;
    unsigned long hp_fs = 0;
    PTEB teb = 0;
    PPEB peb = 0;
    PPEB_LDR_DATA ldr_data = 0;
    LIST_ENTRY module_list;
    PLIST_ENTRY forward_iterator = 0;
    PLDR_DATA_TABLE_ENTRY module_table = 0;
    unsigned char first_module = 1;

    // fs:[0x0] contains the Thread Execution Block.
    gv_fs = env->segs[R_FS].base;
    hp_fs = PHYS_ADDR(gv_fs);

    argos_logf("fs:[0x0] = 0x%x  @ 0x%lx\n", gv_fs, hp_fs);

    teb = (PTEB)hp_fs;
    argos_logf("peb = 0x%x\n", teb->Peb);
    peb = (PPEB)PHYS_ADDR(teb->Peb);
    argos_logf("peb @ 0x%lx\n", peb);

    argos_logf("peb->LoaderData = 0x%x", peb->LoaderData);
    ldr_data = (PPEB_LDR_DATA) PHYS_ADDR(peb->LoaderData);
    argos_logf("peb->LoaderData @ 0x%lx", ldr_data);

    module_list = ldr_data->InLoadOrderModuleList;
    argos_logf("peb->LoaderData->InLoadOrderModuleList.Flink = 0x%x\n",
            module_list.Flink);
    forward_iterator = (PLIST_ENTRY) PHYS_ADDR(module_list.Flink);
    argos_logf("Forward entry = 0x%x @ 0x%lx\n", module_list.Flink,
            forward_iterator);

    module_table = (PLDR_DATA_TABLE_ENTRY)forward_iterator;
    while ( module_table != 0 )
    {
        printf("Module base: 0x%x\n", module_table->BaseAddress);
        if ( !first_module )
        {
            PIMAGE_DOS_HEADER dos_hdr = (PIMAGE_DOS_HEADER) PHYS_ADDR(module_table->BaseAddress);

            if ( dos_hdr->e_magic == IMAGE_DOS_SIGNATURE  )
            {
                PIMAGE_NT_HEADERS pe_hdr =
                    (PIMAGE_NT_HEADERS)PHYS_ADDR(module_table->BaseAddress + dos_hdr->e_lfanew);

                if ( pe_hdr->Signature == IMAGE_PE_SIGNATURE )
                {
                    PIMAGE_DATA_DIRECTORY export_data_dir = 0;
                    argos_logf("Found valid pe signature!\n");

                    if ( pe_hdr->OptionalHeader.NumberOfRvaAndSizes > 0 )
                    {
                        export_data_dir = &pe_hdr->OptionalHeader.DataDirectory[0];
                        if ( export_data_dir->VirtualAddress != 0 )
                        {
                            PIMAGE_EXPORT_DIRECTORY export_dir =
                                (PIMAGE_EXPORT_DIRECTORY)
                                PHYS_ADDR(module_table->BaseAddress +
                                        export_data_dir->VirtualAddress);

                            char * name = (char*)PHYS_ADDR(module_table->BaseAddress + 
                                    export_dir->Name);
                            printf("Found module %s\n", name);
                        }
                        else
                        {
                            printf("Module has no export table!\n");
                        }
                    }
                }
                else
                {
                    argos_logf("Found invalid pe signature!\n");
                }
            }
            else
            {
                argos_logf("Found invalid dos signature!\n");
            }
        }
        else
        {
            first_module = 0;
        }

        if ( forward_iterator->Flink == module_list.Blink )
        {
            break;
        }


        forward_iterator = (PLIST_ENTRY) PHYS_ADDR(forward_iterator->Flink);
        module_table = (PLDR_DATA_TABLE_ENTRY)forward_iterator;
    }
}
