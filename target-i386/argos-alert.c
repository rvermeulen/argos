/* Copyright (c) 2006-2008, Georgios Portokalidis
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions
   are met:

 * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following
 disclaimer in the documentation and/or other materials provided
 with the distribution.
 * Neither the name of the Vrije Universiteit nor the names of its
 contributors may be used to endorse or promote products derived
 from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <signal.h>

#include "argos-common.h"
#include "argos-tag.h"
#include "osdep.h"
#include "argos-csi.h"
#include "argos-check.h"
#include "../exec-all.h"

#define ALERT_TEMPLATE "[ARGOS] Attack detected, code <%s> PC <%x> TARGET <%x>\n"

static const char *adesc[] = { "JMP", "P_JMP", "TSS", "CALL", "RET", 
    "CI", "R_IRET", "SYSEXIT", "SYSRET", "R_JMP", "P_CALL", "R_CALL",
    "P_RET" };

void argos_alert(CPUX86State *env, target_ulong new_pc, argos_rtag_t *tag,
        target_ulong old_pc, int code)
{
    sigset_t alrmset;
    int rid = -1;

    if (sigprocmask(SIG_BLOCK, &alrmset, NULL) != 0)
        perror("could not temporarily block signals");

    if (!argos_tag_isdirty(tag))
        code = ARGOS_ALERT_CI;

    if ( !env->shellcode_context.running )
    {
        argos_logf(ALERT_TEMPLATE, adesc[code], old_pc, new_pc);
    }

    if (argos_csilog)
    {
        rid = argos_csi(env, new_pc, tag, old_pc, code);
    }

    if (argos_fsc)
    {
        argos_forensics(env, rid);
    }
    else
    {
        // When shell-code tracking is enabled, Argos is going to generate multiple
        // alerts. We however want only one log csi log file so we disable the generation
        // of csi log files.
        argos_csilog = 0;

//#ifdef ARGOS_NET_TRACKER
        // If we are not tracking shell-code, initialize the shell-code context if tracking
        // is enabled and if we detect code injection (e.g. we are executing tainted instructions).
        if (argos_tracksc && !env->shellcode_context.running && code == ARGOS_ALERT_CI)
        {
            argos_logf("Starting shell-code tracking...\n");
            env->shellcode_context.running = 1;
            env->shellcode_context.cr3 = env->cr[3];
            if (!env->shellcode_context.logfile)
            {
                const unsigned filename_size = 128;
                char filename[filename_size];

                unsigned id = argos_instance_id;

                snprintf(filename, filename_size,  LOG_SC_FL_TEMPLATE, id);
                argos_logf("Generated log filename %s.\n", filename);
                if ((env->shellcode_context.logfile = fopen(filename, "wb")) == NULL) 
                {
                    qemu_fprintf(stdout, "Cannot open shellcode log, unable to track shellcode.");
                    env->shellcode_context.running = 0;
                }
                else
                {
                    argos_logf("Opened tracking file %s.\n", filename);
                }
            }

            // We have successfully initialized the shellcode context,
            // now put the cpu in single step mode to log the shellcode
            // instructions.
            argos_logf("Successfully instanciated shellcode tracking, switching to single step mode.\n");
            // Enabling single stepping mode allows us to log
            // the shellcode instructions in the cpu loop.
            // With single step mode enabled the TB's contain
            // only one instruction and an exception is thrown
            // after the execution of this instruction.
            // During the handling of this exception (EXCP_DEBUG)
            // we can log the instruction in the current TB.
            cpu_single_step(env, 1);
        }
//#endif
    }
#if 0
    else if (argos_sctrack && last_alert_cr3 == -1) {
        argos_sctrack_init(env, old_pc, new_pc, code);
        last_alert_cr3 = env->cr[3];
    }
#endif

    //ret:
    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}
