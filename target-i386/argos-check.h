/* Copyright (c) 2006, Georgios Portokalidis
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
#ifndef ARGOS_CHECK_H
#define ARGOS_CHECK_H
#include "config.h"

enum { ARGOS_ALERT_JMP = 0, ARGOS_ALERT_P_JMP,
	ARGOS_ALERT_TSS, ARGOS_ALERT_CALL, ARGOS_ALERT_RET, 
	ARGOS_ALERT_CI, ARGOS_ALERT_R_IRET, 
	ARGOS_ALERT_SYSEXIT, ARGOS_ALERT_SYSRET,
	ARGOS_ALERT_R_JMP, ARGOS_ALERT_P_CALL, ARGOS_ALERT_R_CALL,
	ARGOS_ALERT_P_IRET };

/* The following macros might modify the new eip for forensics */

//#define DISABLE_ARGOS_CHECK
#ifdef DISABLE_ARGOS_CHECK
# define ARGOS_CS_CHECK(tag, old_pc, code) do { } while (0)
# define ARGOS_CHECK(tag, old_pc, code) do { } while (0)
# define ARGOS_CI_CHECK(tag, old_pc, code) do { } while (0)
#else

// env contains the new eip
# define ARGOS_CS_CHECK(tag, old_pc, code)				\
	do {								\
		if (argos_tag_isdirty(tag) ||				\
				argos_dest_pc_isdirty(env, env->eip)) {	\
			regs_to_env();					\
			argos_alert(env,env->eip + env->segs[R_CS].base,\
					tag, old_pc, code);		\
		}							\
	} while (0)

// env contains the new eip
# define ARGOS_CHECK(tag, old_pc, code)					\
	do {								\
		if (argos_tag_isdirty(tag) ||				\
				argos_dest_pc_isdirty(env, env->eip)) {	\
			regs_to_env();					\
			argos_alert(env, env->eip + env->segs[R_CS].base,\
				tag, old_pc, code);			\
		} 							\
	} while (0)

// env contains the new eip
# define ARGOS_CI_CHECK(tag, old_pc, code)					\
	do {								\
		if (argos_dest_pc_isdirty(env, env->eip)) {		\
			regs_to_env();					\
			argos_alert(env, env->eip + env->segs[R_CS].base,\
				tag, old_pc, code);			\
		} 							\
	} while (0)


# ifdef CONFIG_USER_ONLY
#  define argos_dest_pc_isdirty(env, new_eip) (argos_memmap_istainted(new_eip))
# else
/* We need this to check for chained blocks */
int argos_dest_pc_isdirty(CPUX86State *env, target_ulong new_eip);
# endif

#endif


#endif
