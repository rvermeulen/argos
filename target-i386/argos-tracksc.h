/* Copyright (c) 2009, Remco Vermeulen 
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

#ifndef ARGOS_TRACKSC_H
#define ARGOS_TRACKSC_H
void argos_tracksc_init(CPUX86State * env);
void argos_tracksc_stop(CPUX86State * env);
void argos_tracksc_enable(CPUX86State * env);
void argos_tracksc_before_instruction_execution(CPUX86State * env);
void argos_tracksc_after_instruction_execution(CPUX86State * env);
void argos_tracksc_after_instruction_raised_an_exception(CPUX86State * env);
void argos_tracksc_log_instruction(CPUX86State * env);
void argos_tracksc_check_for_invalid_system_call(CPUX86State * env);
int argos_tracksc_logged_invalid_system_call(CPUX86State * env);
int argos_tracksc_is_valid_system_call(CPUX86State * env);
void argos_tracksc_check_function_call( CPUX86State * env);
unsigned char argos_tracksc_is_idle( CPUX86State * env);
unsigned char argos_tracksc_is_tracking( CPUX86State * env);

#define ARGOS_TRACKSC_IS_TRACKING env->shellcode_context.phase \
    == ARGOS_TRACKSC_PHASE_TRACKING

// The following macro's are used to store the load and store context.
#define ARGOS_SAVE_LD_CONTEXT(addr, var, type, size) \
    do { \
        if ( ARGOS_TRACKSC_IS_TRACKING ) \
        { \
            env->shellcode_context.loadedby_eip = env->eip; \
            env->shellcode_context.load_value = (var); \
            env->shellcode_context.load_size = (size); \
            env->shellcode_context.load_addr = (unsigned long)(addr); \
            env->shellcode_context.load_addr_type = (type); \
        } \
    } while(0)

#define ARGOS_SAVE_LDb_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 1)
#define ARGOS_SAVE_LDw_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 2)
#define ARGOS_SAVE_LDl_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 4)
#define ARGOS_SAVE_LDq_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 8)

#define ARGOS_SAVE_ST_CONTEXT(addr, val, type, size) \
    do { \
        if ( ARGOS_TRACKSC_IS_TRACKING ) \
        { \
            env->shellcode_context.storedby_eip = env->eip; \
            env->shellcode_context.store_value = (val); \
            env->shellcode_context.store_size = (size); \
            env->shellcode_context.store_addr = (unsigned long)(addr); \
            env->shellcode_context.store_addr_type = (type); \
        } \
    } while(0)

#define ARGOS_SAVE_STb_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 1)
#define ARGOS_SAVE_STw_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 2)
#define ARGOS_SAVE_STl_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 4)
#define ARGOS_SAVE_STq_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 8)

// X should be retrieved by the expression get_phys_addr_code(env, addr) +
// (unsigned long)phys_ram_base
// The phys_ram_base is stripped by the ARGOS_OFFSET(X) macro,
// so it must be added to the returned offset.
#ifdef ARGOS_NET_TRACKER
    #define ARGOS_NETIDXPTR(X) ( argos_memmap_ntdata(ARGOS_OFFSET((X))) )
#else
    #define ARGOS_NETIDXPTR(X) (0)
#endif

#endif
