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
#ifndef ARGOS_CONFIG_H
#define ARGOS_CONFIG_H

#include "config-host.h"

//! Memory bytemap
#define ARGOS_BYTEMAP 0
//! Memory pagemap
#define ARGOS_PAGEMAP 1
//! Memory bitmap
#define ARGOS_BITMAP  2

//! Memory tracking model
#ifdef CONFIG_USER_ONLY

# define ARGOS_MEMMAP ARGOS_PAGEMAP
# if defined(ARGOS_LOWMEM_MODE)
#  define ARGOS_INNER_PAGEMAP ARGOS_BITMAP
# else
#  define ARGOS_INNER_PAGEMAP ARGOS_BYTEMAP
# endif

# ifdef ARGOS_NET_TRACKER
#  undef ARGOS_NET_TRACKER
# endif

#else

# ifdef ARGOS_PAGE_MODE
#  define ARGOS_MEMMAP ARGOS_PAGEMAP
#  if defined(ARGOS_LOWMEM_MODE) && !defined(ARGOS_NET_TRACKER)
#   define ARGOS_INNER_PAGEMAP ARGOS_BITMAP
#  else 
#   define ARGOS_INNER_PAGEMAP ARGOS_BYTEMAP
#  endif
# else
#  if defined(ARGOS_LOWMEM_MODE) && !defined(ARGOS_NET_TRACKER)
#   define ARGOS_MEMMAP ARGOS_BITMAP
#  else
#   define ARGOS_MEMMAP ARGOS_BYTEMAP
#  endif
# endif

#endif

//! Enable MMX tracking
#define ARGOS_MMX_ENABLE
//! Enable debugging code
//#define ARGOS_DEBUG
//#define ARGOS_DISABLE_MEMTRACK

// Enable assertions for debugging purposes
#define ASSERTIONS_ENABLE

// Enable stages by setting the mask size.
#ifdef ARGOS_NET_TRACKER
#define ARGOS_STAGE_SIZE 2 // in bytes, this gives us 2^(ARGOS_STAGE_SIZE) stages we can track.
#endif

#endif
