/* Copyright (c) 2006-2007, Georgios Portokalidis
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
#ifndef ARGOS_MMXOP_H
#define ARGOS_MMXOP_H

#include "argos-config.h"

/* We use a memory map for the env structure to track MMX registers. 
   We only write to areas of this map that represents MMX registers, not FPU
   registers or any other values.
   Writes to the env map have to be checked in case they are also used with
   targets other that MMX registers.
*/
   

#define PTR2MMXADDR(ptr) (target_ulong)((char *)(ptr) - (char *)env->xmm_regs)
//#define ENVISMMX(addr) (addr > 0 && addr < ENVMAP_SIZE)

#define ADDRISMMX(addr) \
	((long)(addr) >= offsetof(CPUX86State, xmm_regs) && \
		  (long)(addr) < offsetof(CPUX86State, sysenter_cs))
#define PTRISMMX(ptr) ((char *)(ptr) >= (char *)env->xmm_regs && \
		(char *)(ptr) < (char *)&env->sysenter_cs)


/* System emulation only */
#ifndef CONFIG_USER_ONLY

/* MMX_STq_ */
#ifdef ARGOS_MMX_ENABLE
#  define ARGOS_MMX_STQ_OP(sfx)\
static inline void \
glue(ARGOS_MMX_STq_, sfx)(target_ulong addr, uint64_t *eptr)\
{\
	argos_rtag_t tag = { 0, }; \
	unsigned long eaddr = PTR2MMXADDR(eptr); \
	if (ADDRISMMX(eaddr)) { \
		argos_bytemap_ldq(env->envmap, eaddr, -1, &tag);\
	}\
	glue(argos_stq_, sfx)(addr, *(eptr), &tag);\
}
ARGOS_MMX_STQ_OP(kernel)
ARGOS_MMX_STQ_OP(user)
# else
#  define ARGOS_MMX_STq_kernel(addr, eptr) stq_kernel(addr, *(eptr))
#  define ARGOS_MMX_STq_user(addr, eptr) stq_user(addr, *(eptr))
# endif


/* MMX_LDq_ */
# ifdef ARGOS_MMX_ENABLE
#  define ARGOS_MMX_LDQ_OP(sfx)\
static inline void \
glue(ARGOS_MMX_LDq_, sfx)(target_ulong addr, uint64_t *eptr)\
{\
	argos_rtag_t tag;\
	unsigned long eaddr = PTR2MMXADDR(eptr); \
	*(eptr) = glue(argos_ldq_, sfx)(addr, &tag);\
	if (ADDRISMMX(eaddr)) {\
		argos_bytemap_stq(env->envmap, eaddr, &tag);\
	}\
}
ARGOS_MMX_LDQ_OP(kernel)
ARGOS_MMX_LDQ_OP(user)
# else
#  define ARGOS_MMX_LDq_kernel(addr, eptr) 	(*(eptr) = ldq_kernel((addr)))
#  define ARGOS_MMX_LDq_user(addr, eptr)   	(*(eptr) = ldq_user((addr)))
# endif

#endif /* ifndef CONFIG_USER_ONLY */


/* MMX_LDq & raw */
#ifdef ARGOS_MMX_ENABLE
// Always MMX - no need to check eptr
# define ARGOS_MMX_LDq(addr, eptr)\
do {\
	argos_rtag_t tag;\
	*(eptr) = argos_ldq(addr, &tag);\
	argos_bytemap_stq(env->envmap, PTR2MMXADDR(eptr), &tag);\
} while (0)
# define ARGOS_MMX_LDq_raw(addr, eptr) \
do {\
	argos_rtag_t tag;\
	unsigned long eaddr = PTR2MMXADDR(eptr); \
	ARGOS_LDq_raw(addr, *(eptr), &tag);\
	if (ADDRISMMX(eaddr)) { \
		argos_bytemap_stq(env->envmap, eaddr, &tag);\
	}\
} while (0)
#else
# define ARGOS_MMX_LDq(addr, eptr)		(*(eptr) = ldq((addr)))
# define ARGOS_MMX_LDq_raw(paddr, eptr)    	(*(eptr) = ldq_raw((paddr)))
#endif


/* MMX_STq,b, & raw */
#ifdef ARGOS_MMX_ENABLE
// Always MMX - no need to check eptr
# define ARGOS_MMX_STb(addr, eptr)	\
do {\
	argos_rtag_t tag;\
	argos_bytemap_ldb(env->envmap, PTR2MMXADDR(eptr), -1, &tag);\
	argos_stb(addr, *(eptr), &tag);\
} while (0)
# define ARGOS_MMX_STq_raw(addr, eptr) \
do {\
	argos_rtag_t tag = { 0, };\
	unsigned long eaddr = PTR2MMXADDR(eptr); \
	if (ADDRISMMX(eaddr)) { \
		argos_bytemap_ldq(env->envmap, eaddr, -1, &tag);\
	}\
	ARGOS_STq_raw(addr, *(eptr), &tag); \
} while (0)
// Always MMX - no need to check eptr
# define ARGOS_MMX_STq(addr, eptr)	\
do {\
	argos_rtag_t tag;\
	argos_bytemap_ldq(env->envmap, PTR2MMXADDR(eptr), -1, &tag);\
	argos_stq(addr, *(eptr), &tag);\
} while (0)
#else /* MMX disabled */
# define ARGOS_MMX_STq(addr, eptr) stq(addr, *(eptr))
# define ARGOS_MMX_STq_raw(paddr, eptr) \
do {\
	stq_raw(paddr, *(eptr));\
	ARGOS_MEMMAP_CLRq(paddr);\
} while (0)
# define ARGOS_MMX_STb(addr, eptr) stb(addr, *(eptr))
#endif


/* MOVREGn_ */
#ifdef ARGOS_MMX_ENABLE
# define ARGOS_MMX_MOVREGn_OP(sfx, bfx) \
static inline void \
glue(ARGOS_MMX_MOVREG, sfx)(argos_rtag_t *tag, target_ulong addr)\
{\
	argos_tag_clear(tag);\
	if (ADDRISMMX(addr))\
		glue(argos_bytemap_ld, bfx)(env->envmap, addr, -1, tag);\
}
#else /* MMX disable */
# define ARGOS_MMX_MOVREGn_OP(sfx, isfx) \
static inline void \
glue(ARGOS_MMX_MOVREG, sfx)(argos_rtag_t *tag, target_ulong eaddr)\
do {\
	argos_tag_clear(tag);\
} while(0)
#endif

ARGOS_MMX_MOVREGn_OP(l, l)
ARGOS_MMX_MOVREGn_OP(q, q)
#ifdef TARGET_X86_64
ARGOS_MMX_MOVREGn_OP(tl, q)
#else
ARGOS_MMX_MOVREGn_OP(tl, l)
#endif // TARGET_X86_64


/* MOVREGe */
#ifdef ARGOS_MMX_ENABLE
# define ARGOS_MMX_MOVREGe_OP(sfx)\
static inline void \
glue(ARGOS_MMX_MOVREGe, sfx)(argos_rtag_t *tag, void *eptr)\
{\
	unsigned long eaddr = PTR2MMXADDR(eptr); \
	argos_tag_clear(tag);\
	if (ADDRISMMX(eaddr))\
		argos_bytemap_ldl(env->envmap, eaddr, -1, tag);\
}
#else /* MMX disable */
# define ARGOS_MMX_MOVREGe_OP(sfx)\
static inline void \
glue(ARGOS_MMX_MOVREGe, sfx)(argos_rtag_t *tag, void *eptr)\
do {\
	argos_tag_clear(tag);\
} while (0)

#endif
ARGOS_MMX_MOVREGe_OP(l)
ARGOS_MMX_MOVREGe_OP(w)


/* MMX_MOVn */
#ifdef ARGOS_MMX_ENABLE
// Always MMX - no need to check eptr
# define ARGOS_MMX_MOVdq(daddr, saddr) \
	argos_bytemap_movdq(env->envmap, daddr, saddr)
/* Sometimes is used with floating point regs */
# define ARGOS_MMX_MOVq(daddr, saddr) \
do { \
	if (ADDRISMMX(daddr)) { \
		if (ADDRISMMX(saddr)) \
			argos_bytemap_movq(env->envmap, daddr, saddr);\
		else \
			argos_bytemap_clrq(env->envmap, daddr);\
	} \
} while (0)
# define ARGOS_MMX_MOVl(daddr, saddr) \
	argos_bytemap_movl(env->envmap, daddr, saddr)
# define ARGOS_MMX_MOVeb(dptr, sptr) \
	argos_bytemap_movb(env->envmap, PTR2MMXADDR(dptr), PTR2MMXADDR(sptr))
#else /* MMX disable */
# define ARGOS_MMX_MOVdq(daddr, saddr)
# define ARGOS_MMX_MOVq(daddr, saddr)
# define ARGOS_MMX_MOVl(daddr, saddr)
# define ARGOS_MMX_MOVeb(daddr, saddr)
#endif


/* MMX_MOVnREG */
#ifdef ARGOS_MMX_ENABLE
# define ARGOS_MMX_MOVlREG(addr, tag)	\
do { \
	if (ADDRISMMX(addr))\
		argos_bytemap_stl(env->envmap, addr, tag);\
} while (0)
# ifdef TARGET_X86_64
#  define ARGOS_MMX_MOVtlREG(addr, tag)	\
do { \
	if (ADDRISMMX(addr))\
		argos_bytemap_stq(env->envmap, addr, tag);\
} while (0)
# else
#  define ARGOS_MMX_MOVtlREG(addr, tag) ARGOS_MMX_MOVlREG(addr, tag)
# endif
#else /* MMX disable */
# define ARGOS_MMX_MOVlREG(addr, tag) do { } while (0)
# define ARGOS_MMX_MOVtlREG(addr, tag) do { } while (0)
#endif


/* MMX_MOVelREG */
#ifdef ARGOS_MMX_ENABLE
# define ARGOS_MMX_MOVelREG(eptr, tag)	\
do { \
	if (PTRISMMX(eptr))\
		argos_bytemap_stl(env->envmap, PTR2MMXADDR(eptr), tag);\
} while (0)
# define ARGOS_MMX_MOVewREG(eptr, tag)	\
do { \
	if (PTRISMMX(eptr))\
		argos_bytemap_stw(env->envmap, PTR2MMXADDR(eptr), tag);\
} while (0)
#else /* MMX disable */
# define ARGOS_MMX_MOVelREG(eaddr, tag)
# define ARGOS_MMX_MOVewREG(eaddr, tag)
#endif

/* MMX_CLRq */
#ifdef ARGOS_MMX_ENABLE
// Always MMX - no need to check eptr
# define ARGOS_MMX_CLRq(eaddr)  \
do {\
	if (ADDRISMMX(eaddr))\
		argos_bytemap_clrq(env->envmap, eaddr);\
} while (0)
# define ARGOS_MMX_CLRdq(eaddr)  \
do {\
	if (ADDRISMMX(eaddr))\
		argos_bytemap_clrdq(env->envmap, eaddr);\
} while (0)
# define ARGOS_MMX_CLReq(eptr)  \
do {\
	if (PTRISMMX(eptr))\
		argos_bytemap_clrq(env->envmap, PTR2MMXADDR(eptr));\
} while (0)
# define ARGOS_MMX_CLRel(eptr)  \
do {\
	if (PTRISMMX(eptr))\
		argos_bytemap_clrl(env->envmap, PTR2MMXADDR(eptr));\
} while (0)
# define ARGOS_MMX_CLReb(eptr)  \
do {\
	if (PTRISMMX(eptr))\
		argos_bytemap_clrb(env->envmap, PTR2MMXADDR(eptr));\
} while (0)
#else /* MMX disable */
# define ARGOS_MMX_CLRq(eaddr) 
# define ARGOS_MMX_CLRdq(eaddr) 
# define ARGOS_MMX_CLReq(eptr) 
# define ARGOS_MMX_CLRel(eptr)
# define ARGOS_MMX_CLReb(eptr)
#endif


#endif
