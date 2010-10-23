/* Copyright (c) 2010, Remco Vermeulen 
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
void argos_tracksc_start(CPUX86State * env);
void argos_tracksc_before_instr_exec(CPUX86State * env);
void argos_tracksc_after_instr_exec(CPUX86State * env);
void argos_tracksc_after_instr_raised_exception(CPUX86State * env);
unsigned char argos_tracksc_is_idle( CPUX86State * env);
unsigned char argos_tracksc_is_tracking( CPUX86State * env);

void argos_tracksc_on_call(CPUX86State * env);
void argos_tracksc_on_jmp(CPUX86State * env);
void argos_tracksc_on_ret(CPUX86State * env);
void argos_tracksc_on_translate_ld_addr(CPUX86State * env, target_ulong vaddr,
        target_phys_addr_t paddr, target_ulong value, target_ulong size);
void argos_tracksc_on_translate_st_addr(CPUX86State * env, target_ulong vaddr,
        target_phys_addr_t paddr, target_ulong value, target_ulong size);
void argos_tracksc_on_system_call(CPUX86State * env);
void argos_tracksc_on_int2e(CPUX86State * env);

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
