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
#ifndef ARGOS_TAG_H
#define ARGOS_TAG_H

#include <stdint.h>
#include "argos-config.h"
#include "argos.h"

//! Argos register tag
#ifdef ARGOS_NET_TRACKER
// We are going to divide the netidx in a level and a netidx.
// The level is used to determine the unpacking stage of shell-code.
// Each time shell-code writes bytes we increase the stage of the written
// bytes to the stage of the executing instruction + 1. 
#define ARGOS_NETIDX_MASK ( (ARGOS_MAX_NETIDX) >> (ARGOS_STAGE_SIZE) )
#define ARGOS_STAGE_MASK ( (ARGOS_MAX_NETIDX) ^ (ARGOS_NETIDX_MASK) )

#define ARGOS_GET_STAGE(N) ( ((N) & (ARGOS_STAGE_MASK)) >> ((ARGOS_MAX_STAGE_SHIFTS) - (ARGOS_STAGE_SIZE) ) )
#define ARGOS_SET_STAGE(N, X) ( (N) = ((((X) << ((ARGOS_MAX_STAGE_SHIFTS) - (ARGOS_STAGE_SIZE))) & (ARGOS_STAGE_MASK)) | ((N) & (ARGOS_NETIDX_MASK))) )
#define ARGOS_INCREMENT_STAGE(N) ( ARGOS_SET_STAGE( (N), ( (ARGOS_GET_STAGE(N)) + 1) )  )
#define ARGOS_CLEAR_STAGE(N) ( (N) = ( (ARGOS_NETIDX_MASK) & (N) ) )

#define ARGOS_GET_NETIDX(N) ( (N) & (ARGOS_NETIDX_MASK) )
#define ARGOS_SET_NETIDX(N, X) ( (N) = ( ((N) & (ARGOS_STAGE_MASK) ) | ( (X) & (ARGOS_NETIDX_MASK) ) ) )

struct argos_rtag {
	argos_paddr_t origin;	//!< Memory origin of register
	argos_netidx_t netidx;	//!< Network index of data
};

//! Argos register tag data type
typedef struct argos_rtag argos_rtag_t;
#else
//! Argos register tag data type
typedef argos_paddr_t argos_rtag_t;
#endif

#ifdef ARGOS_NET_TRACKER

#define argos_tag_netidx(tag)	( ARGOS_GET_NETIDX( (tag)->netidx ) )
// With setting and copying of tags we leave the code unchanged because
// we want to set/copy the stage aswell.
#define argos_tag_set(tag, addr, nidx) 	\
do {					\
	(tag)->origin = (addr);		\
	(tag)->netidx = (nidx);		\
} while (0)
# if HOST_LONG_BITS > 32 && !defined(TARGET_X86_64)
#  define argos_tag_copy(dst, src)	\
	(*(uint64_t *)(dst) = *(uint64_t *)(src))

# else
#  define argos_tag_copy(dst, src)	\
	do {					\
		(dst)->origin = (src)->origin;	\
		(dst)->netidx = (src)->netidx;	\
	} while (0)
#endif

#define argos_tag_clear(tag)     ((tag)->netidx = 0)
//#define argos_tag_clear(tag)     ( ARGOS_SET_NETIDX((tag)->netidx, 0) )
//#define argos_tag_isdirty(tag)	((tag)->netidx != 0)
#define argos_tag_isdirty(tag)	(ARGOS_GET_NETIDX((tag)->netidx) != 0)
#define argos_tag_origin(tag)	((tag)->origin)

#else /* !defined(ARGOS_NET_TRACKER)*/

#define argos_tag_set(tag, addr) (*(tag) = (addr))
#define argos_tag_copy(dst, src)  (*(dst) = *(src))
#define argos_tag_clear(tag)     (*(tag) = 0)
#define argos_tag_isdirty(tag)	(*(tag) != 0)
#define argos_tag_origin(tag)	(*(tag))

#endif


#define argos_tag_comb(dst, src)				\
do {								\
	if (argos_tag_isdirty(src)) argos_tag_copy(dst, src);	\
} while (0)

#define argos_tag_comb2(dst1, dst2, src)\
do {					\
	argos_tag_comb(dst1, src);	\
	argos_tag_comb(dst2, dst1);	\
} while (0)

#define argos_tag_comb3(dst1, dst2, src)\
do {					\
	argos_tag_comb(dst1, src);	\
	argos_tag_copy(dst2, dst1);	\
} while (0)

#define argos_tag_comb4(dst1, dst2, src)	\
do {						\
	argos_tag_comb(dst1, src);		\
	if (argos_tag_isdirty(dst1))		\
		argos_tag_copy(dst2, dst1);	\
	else					\
		argos_tag_copy(dst1, dst2);	\
} while (0)

#define argos_tag_cc(dst, src1, src2)		\
do {						\
	if (argos_tag_isdirty(src1))		\
		argos_tag_copy(dst, src1);	\
	else					\
		argos_tag_copy(dst, src2);	\
} while (0)

#endif
