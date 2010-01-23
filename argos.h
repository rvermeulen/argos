/* Copyright (c) 2006-2009, Georgios Portokalidis
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
#ifndef ARGOS_H
#define ARGOS_H

#include "argos-config.h"

#ifndef glue
#define xglue(x, y) x ## y
#define glue(x, y) xglue(x, y)
#define stringify(s)	tostring(s)
#define tostring(s)	#s
#endif


#ifdef TARGET_X86_64
typedef uint64_t argos_paddr_t;
#else
typedef uint32_t argos_paddr_t;
#endif

//! Argos bytemap data type
#ifdef ARGOS_NET_TRACKER
typedef uint32_t argos_netidx_t;
typedef argos_netidx_t argos_bytemap_t;

#define ARGOS_MAX_NETIDX 0xFFFFFFFF
#define ARGOS_NETIDX_WIDTH 32 // sizeof(argos_netidx_t) * 8 
#if ARGOS_STAGE_SIZE > 0
#define ARGOS_MAX_STAGE_SHIFTS ARGOS_NETIDX_WIDTH
#else
#define ARGOS_MAX_STAGE_SHIFTS 0
#endif

#if ARGOS_MAX_STAGE_SHIFTS <= ARGOS_STAGE_SIZE && ARGOS_STAGE_SIZE != 0
#error "Argos netidx width is to small for the current stage size!"
#endif
#else
typedef unsigned char argos_bytemap_t;
#endif

//! Argos pagemap data types
typedef argos_bytemap_t argos_pagemap_inner_t;
typedef argos_pagemap_inner_t *argos_pagemap_t;

//! Argos bitmap data types
typedef unsigned char argos_bitmap_t;


#if ARGOS_MEMMAP == ARGOS_BYTEMAP
typedef argos_bytemap_t argos_memmap_t;
#elif ARGOS_MEMMAP == ARGOS_PAGEMAP
typedef argos_pagemap_t argos_memmap_t;
#elif ARGOS_MEMMAP == ARGOS_BITMAP
typedef argos_bitmap_t argos_memmap_t;
#endif

#endif
