#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "cpu.h"
#include "../argos-tag.h"
#include "argos-tracksc-context.h"
#include "argos-tracksc.h"
#include "argos-tracksc-log.h"

int write_header(argos_tracksc_log * log);

argos_tracksc_log * argos_tracksc_create_log(const char * path,
        CPUX86State * state)
{
    FILE * log_file = fopen(path, "wb");
    if (!log_file)
        return NULL;

    argos_tracksc_log * log = (argos_tracksc_log*)malloc(
            sizeof(argos_tracksc_log));
    if (!log)
        return NULL;

    memset(log, 0, sizeof(argos_tracksc_log));

    log->log_file = log_file;
    log->state = state;
    log->current_entry = &log->buffered_entries[0];

    if (!write_header(log))
    {
        free(log);
        return NULL;
    }

    return log;
}

void argos_tracksc_close_log(argos_tracksc_log * log)
{
    argos_tracksc_flush_log(log);
    fclose(log->log_file);
    free(log);
}

void argos_tracksc_flush_log(argos_tracksc_log * log)
{
    if (!log)
        return;

    if ( log->current_entry > log->buffered_entries )
    {
        size_t cnt = log->current_entry -
            log->buffered_entries - 1;

        size_t nb_written =
            fwrite(log->buffered_entries, sizeof(argos_tracksc_log_entry), cnt,
                log->log_file);

        if (nb_written != cnt)
            argos_logf("Failed to write all shell-code tracked entries to the "
                    "log file");

        log->current_entry = log->buffered_entries;

        memset(log->buffered_entries, 0, sizeof(log->buffered_entries));
    }
}

void argos_tracksc_log_before_execution(argos_tracksc_log * log)
{
    if (!log)
        return;

    CPUX86State * state = log->state;
    argos_tracksc_log_entry * entry = NULL;
log_entry:
    entry = log->current_entry;
    if (entry < &log->buffered_entries[10])
    {
        // Copy cpu state.
        memcpy(entry->cpu_state.regs, state->regs, sizeof(state->regs));
        entry->cpu_state.eip = state->eip;
        entry->cpu_state.eflags = state->eflags;
    }
    else
    {
        argos_tracksc_flush_log(log);
        goto log_entry;
    }
}

void argos_tracksc_log_after_execution(argos_tracksc_log * log)
{
    if (!log)
        return;

    CPUX86State * state = log->state;
    argos_shellcode_context_t * ctx = &state->shellcode_context;
    argos_tracksc_log_entry * entry = NULL;
log_entry:
    entry = log->current_entry;
    if (entry < &log->buffered_entries[10])
    {
        // Copy instruction.
        memcpy(entry->instruction.bytes, ctx->instruction_bytes,
                ctx->instruction.length);
        entry->instruction.size = ctx->instruction.length;
#ifdef ARGOS_NET_TRACKER
        memcpy(entry->instruction.netidx, ctx->instruction_netidx,
                ctx->instruction.length);
        entry->instruction.stage = ctx->instruction_stage;
#endif
        if (ctx->called_function)
        {
            //argos_logf("Logging symbol: %s\n", ctx->called_function->name);
            strncpy(entry->instruction.operand1_symbol,
                    ctx->called_function->name,
                    sizeof(entry->instruction.operand1_symbol) - 1);
        }

        // Copy memory references.
        if (ctx->load_info.eip ==
                ctx->executed_eip)
        {
            entry->memory_read.access_type = MEMORY_READ;
            entry->memory_read.vaddr = ctx->load_info.vaddr;
            entry->memory_read.paddr = ctx->load_info.paddr;
            entry->memory_read.value = ctx->load_info.value;
            entry->memory_read.size = ctx->load_info.size;

#ifdef ARGOS_NET_TRACKER
            size_t i;
            // Print the netidx's belonging to the value loaded.
            for (i = 0; i < ctx->load_size; i++)
            {
                argos_netidx_t* netidx;
                if (ctx->load_addr_type ==
                        HOST_VIRTUAL)
                {
                    netidx = ARGOS_NETIDXPTR(
                            ctx->load_addr + i);
                }
                else
                {
                    if (ctx->load_value_netidx != 0)
                    {
                        netidx =
                            ctx->load_value_netidx + i;
                    }
                    else
                    {
                        netidx = 0;
                    }
                }

                if (netidx != 0)
                {
                    entry->memory_read.netidxs[i] = ARGOS_GET_NETIDX(*netidx);
                }
            }
#endif // ARGOS_NET_TRACKER
        }
        else if (ctx->load_info.eip != 0)
        {
            argos_logf("Unexpected load, expected eip: 0x%x, got eip:0x%x, current eip: 0x%x.\n",
                    ctx->executed_eip, ctx->load_info.eip, state->eip);
        }


        if (ctx->store_info.eip ==
                ctx->executed_eip)
        {
            entry->memory_written.access_type = MEMORY_WRITE;
            entry->memory_written.vaddr = ctx->store_info.vaddr;
            entry->memory_written.paddr = ctx->store_info.paddr;
            entry->memory_written.value = ctx->store_info.value;
            entry->memory_written.size = ctx->store_info.size;

#ifdef ARGOS_NET_TRACKER
            size_t i;
            // Print the netidx's belonging to the value stored.
            for (i = 0; i < ctx->store_size; i++)
            {
                argos_netidx_t* netidx;
                if (ctx->store_addr_type ==
                        HOST_VIRTUAL)
                {
                    netidx = ARGOS_NETIDXPTR(
                            ctx->store_addr + i);
                }
                else
                {
                    if (ctx->store_value_netidx != 0)
                    {
                        netidx =
                            ctx->store_value_netidx + i;
                    }
                    else
                    {
                        netidx = 0;
                    }
                }

                if (netidx != 0)
                {
                    entry->memory_written.netidxs[i] =
                        ARGOS_GET_NETIDX(*netidx);
                }
            }
#endif // ARGOS_NET_TRACKER
        }
        else if (ctx->store_info.eip != 0)
        {
            argos_logf("Unexpected store, expected eip: 0x%x, got eip:0x%x, current eip: 0x%x.\n",
                    ctx->executed_eip, ctx->store_info.eip, state->eip);
        }
        log->current_entry++;
    }
    else
    {
        argos_tracksc_flush_log(log);
        goto log_entry;
    }
}

int write_header(argos_tracksc_log * log)
{
    argos_tracksc_log_hdr hdr;
    hdr.signature = ARGOS_TRACKSC_LOG_SIGNATURE;
    hdr.version = ARGOS_TRACKSC_LOG_VERSION;

    ARGOS_TRACKSC_LOG_SET_ARCH_FLAG(hdr.flags, ARGOS_TRACKSC_LOG_ARCH_FLAG_X86);
#ifdef ARGOS_NET_TRACKER
    ARGOS_TRACKSC_LOG_SET_NET_TRACKER_FLAG(hdr.flags, ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_ENABLED);
#else
    ARGOS_TRACKSC_LOG_SET_NET_TRACKER_FLAG(hdr.flags, ARGOS_TRACKSC_LOG_NET_TRACKER_FLAG_DISABLED);
#endif

    if (fwrite(&hdr, sizeof(hdr), 1, log->log_file) == 1)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
