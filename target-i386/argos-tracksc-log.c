#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "cpu.h"
#include "../argos-tag.h"
#include "argos-tracksc-context.h"
#include "argos-tracksc.h"
#include "argos-tracksc-log.h"
#include "../argos-common.h"

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
    {
        argos_logf("Failed to flush log, invalid log.\n");
        return;
    }

    if ( log->current_entry > log->buffered_entries )
    {
        size_t cnt = log->current_entry - &log->buffered_entries[0];

        size_t nb_written =
            fwrite(log->buffered_entries, sizeof(argos_tracksc_log_entry), cnt,
                log->log_file);

        if (nb_written == cnt)
        {
            if (fflush(log->log_file) == EOF)
            {
                argos_logf("Failed to flush log file.\n");
            }
        }
        else
        {
            argos_logf("Failed to write all shell-code tracked entries to the "
                    "log file.\n");
        }

        log->current_entry = &log->buffered_entries[0];

        memset(log->buffered_entries, 0, sizeof(log->buffered_entries));
    }
}

void argos_tracksc_log_before_execution(argos_tracksc_log * log)
{
    if (!log)
    {
        argos_logf("Failed to log before instruction, invalid log.\n");
        return;
    }

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
    {
        argos_logf("Failed to log after instruction, invalid log.\n");
        return;
    }

    CPUX86State * state = log->state;
    argos_tracksc_ctx * ctx = &state->tracksc_ctx;
    argos_tracksc_log_entry * entry = NULL;
log_entry:
    entry = log->current_entry;
    if (entry < &log->buffered_entries[10])
    {
        // Copy instruction.
        memcpy(entry->instruction.bytes, ctx->instr_ctx.bytes,
                ctx->instr_ctx.decoding.length);
        entry->instruction.size = ctx->instr_ctx.decoding.length;
#ifdef ARGOS_NET_TRACKER
        memcpy(entry->instruction.netidx, ctx->instr_ctx.netidx,
                ctx->instr_ctx.decoding.length);
        entry->instruction.stage = ctx->instr_ctx.stage;
#endif
        if (ctx->instr_ctx.called_function)
        {
            //argos_logf("Logging symbol: %s\n", ctx->called_function->name);
            strncpy(entry->instruction.operand1_symbol,
                    ctx->instr_ctx.called_function->name,
                    sizeof(entry->instruction.operand1_symbol) - 1);
        }

        // Copy memory references.
        if (ctx->instr_ctx.load.eip == ctx->instr_ctx.eip)
        {
            entry->memory_read.access_type = MEMORY_READ;
            entry->memory_read.vaddr = ctx->instr_ctx.load.vaddr;
            entry->memory_read.paddr = ctx->instr_ctx.load.paddr;
            entry->memory_read.value = ctx->instr_ctx.load.value;
            entry->memory_read.size = ctx->instr_ctx.load.size;

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
        else if (ctx->instr_ctx.load.eip != 0)
        {
            argos_logf("Unexpected load, expected eip: 0x%x, got eip:0x%x, current eip: 0x%x.\n",
                    ctx->instr_ctx.eip, ctx->instr_ctx.load.eip, state->eip);
        }


        if (ctx->instr_ctx.store.eip ==
                ctx->instr_ctx.eip)
        {
            entry->memory_written.access_type = MEMORY_WRITE;
            entry->memory_written.vaddr = ctx->instr_ctx.store.vaddr;
            entry->memory_written.paddr = ctx->instr_ctx.store.paddr;
            entry->memory_written.value = ctx->instr_ctx.store.value;
            entry->memory_written.size = ctx->instr_ctx.store.size;

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
        else if (ctx->instr_ctx.store.eip != 0)
        {
            argos_logf("Unexpected store, expected eip: 0x%x, got eip:0x%x, current eip: 0x%x.\n",
                    ctx->instr_ctx.eip, ctx->instr_ctx.store.eip, state->eip);
        }
    }
    else
    {
        argos_tracksc_flush_log(log);
        goto log_entry;
    }
    log->current_entry++;
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
