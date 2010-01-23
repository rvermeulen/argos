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
#ifndef ARGOS_PAGEMAP_H
#define ARGOS_PAGEMAP_H

//#define PAGEMAP_DEBUG
//#define PAGEMAP_DISABLE

#ifdef PAGEMAP_DEBUG
# include "argos-debug.h"
# define dprintf(...) argos_printf(__VA_ARGS__)
#else
# define dprintf(...)
#endif



#define ARGOS_PAGEMAP_PAGE_BITS 12
#define ARGOS_PAGEMAP_PAGE_MASK 0xfff
#define ARGOS_PAGEMAP_PAGE_SIZE 4096UL

# define ARGOS_PAGEMAP_PGOFF(a)        ((a) >> ARGOS_PAGEMAP_PAGE_BITS)
# define ARGOS_PAGEMAP_BOFF(a)         ((a) & ARGOS_PAGEMAP_PAGE_MASK)

#if ARGOS_INNER_PAGEMAP == ARGOS_BYTEMAP
# define ARGOS_PAGEMAP_INNER_LD        argos_bytemap_ld
# define ARGOS_PAGEMAP_INNER_ST        argos_bytemap_st
# define ARGOS_PAGEMAP_INNER_CLR       argos_bytemap_clr
# define ARGOS_PAGEMAP_INNER_CLEAR     argos_bytemap_clear
# define ARGOS_PAGEMAP_INNER_ISTAINTED argos_bytemap_istainted
# define ARGOS_PAGEMAP_INNER_NTDATA    argos_bytemap_ntdata
# define ARGOS_PAGEMAP_INNER_CREATEZ   argos_bytemap_createz
# define ARGOS_PAGEMAP_INNER_DESTROY   argos_bytemap_destroy
#elif ARGOS_INNER_PAGEMAP == ARGOS_BITMAP
# define ARGOS_PAGEMAP_INNER_LD        argos_bitmap_ld
# define ARGOS_PAGEMAP_INNER_ST        argos_bitmap_st
# define ARGOS_PAGEMAP_INNER_CLR       argos_bitmap_clr
# define ARGOS_PAGEMAP_INNER_CLEAR     argos_bitmap_clear
# define ARGOS_PAGEMAP_INNER_ISTAINTED argos_bitmap_istainted
# define ARGOS_PAGEMAP_INNER_NTDATA    argos_bitmap_ntdata
# define ARGOS_PAGEMAP_INNER_CREATEZ   argos_bitmap_createz
# define ARGOS_PAGEMAP_INNER_DESTROY   argos_bitmap_destroy
#endif


#ifndef PAGEMAP_DISABLE
#define ARGOS_PAGEMAP_LD_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_ld, opsfx)(argos_pagemap_t *map, unsigned long maddr,\
	unsigned long paddr, argos_rtag_t *tag)				\
{									\
	argos_pagemap_inner_t *page = map[ARGOS_PAGEMAP_PGOFF(maddr)];	\
	argos_tag_clear(tag);						\
	if (page != NULL) {						\
		glue(ARGOS_PAGEMAP_INNER_LD, opsfx)(page, 		\
			ARGOS_PAGEMAP_BOFF(maddr), paddr, tag);		\
	}								\
}
#else
#define ARGOS_PAGEMAP_LD_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_ld, opsfx)(argos_pagemap_t *map, unsigned long maddr,\
	unsigned long paddr, argos_rtag_t *tag)				\
{									\
	argos_tag_clear(tag);						\
}
#endif
ARGOS_PAGEMAP_LD_OP(b)
ARGOS_PAGEMAP_LD_OP(w)
ARGOS_PAGEMAP_LD_OP(l)
ARGOS_PAGEMAP_LD_OP(q)

#ifndef PAGEMAP_DISABLE
#define ARGOS_PAGEMAP_ST_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_st, opsfx)(argos_pagemap_t *map, unsigned long maddr,\
	const argos_rtag_t *tag)					\
{									\
	argos_pagemap_t *page = map + ARGOS_PAGEMAP_PGOFF(maddr);	\
	if (argos_tag_isdirty(tag)) {					\
		if (!*page)						\
			*page = ARGOS_PAGEMAP_INNER_CREATEZ(ARGOS_PAGEMAP_PAGE_SIZE);\
	}								\
	if (*page)							\
		glue(ARGOS_PAGEMAP_INNER_ST, opsfx)(*page, 		\
				ARGOS_PAGEMAP_BOFF(maddr), tag);	\
}
#else
#define ARGOS_PAGEMAP_ST_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_st, opsfx)(argos_pagemap_t *map, unsigned long maddr,\
	const argos_rtag_t *tag)					\
{ }
#endif
ARGOS_PAGEMAP_ST_OP(b)
ARGOS_PAGEMAP_ST_OP(w)
ARGOS_PAGEMAP_ST_OP(l)
ARGOS_PAGEMAP_ST_OP(q)

#ifndef PAGEMAP_DISABLE
#define ARGOS_PAGEMAP_CLR_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_clr, opsfx)(argos_pagemap_t *map, unsigned long maddr)\
{									\
	argos_pagemap_inner_t *page;					\
	if ((page = map[ARGOS_PAGEMAP_PGOFF(maddr)]) != NULL)		\
		glue(ARGOS_PAGEMAP_INNER_CLR, opsfx)(page,		\
			ARGOS_PAGEMAP_BOFF(maddr));			\
}
#else
#define ARGOS_PAGEMAP_CLR_OP(opsfx)					\
static inline void							\
glue(argos_pagemap_clr, opsfx)(argos_pagemap_t *map, unsigned long maddr)\
{ }
#endif
ARGOS_PAGEMAP_CLR_OP(b)
ARGOS_PAGEMAP_CLR_OP(w)
ARGOS_PAGEMAP_CLR_OP(l)
ARGOS_PAGEMAP_CLR_OP(q)

static inline void
argos_pagemap_clear(argos_pagemap_t *map, unsigned long maddr, int len)
{
	int off, size;
	argos_pagemap_inner_t *page;

	do {
		page = map[ARGOS_PAGEMAP_PGOFF(maddr)];
		off = ARGOS_PAGEMAP_BOFF(maddr);
		if (page == NULL) {
			size = ARGOS_PAGEMAP_PAGE_SIZE - off;
			len -= size;
			maddr += size;
			continue;
		}
		if ((ARGOS_PAGEMAP_PAGE_SIZE - off) > len) {
			size = len;
			len = 0;
		} else {
			size = ARGOS_PAGEMAP_PAGE_SIZE - off;
			len -=  size;
			maddr += size;
		}
		ARGOS_PAGEMAP_INNER_CLEAR(page, off, size);
	} while (len > 0);
}

static inline int
argos_pagemap_istainted(argos_pagemap_t *map, unsigned long maddr)
{
	argos_pagemap_inner_t *page;
	if ((page = map[ARGOS_PAGEMAP_PGOFF(maddr)]) == NULL)
		return 0;
	return ARGOS_PAGEMAP_INNER_ISTAINTED(page, ARGOS_PAGEMAP_BOFF(maddr));
}

static inline void
argos_pagemap_reset(argos_pagemap_t *map, size_t len)
{
	int i;
	dprintf("[PAGEMAP] Reset %u\n", len);
	for (i = 0; i < ARGOS_PAGEMAP_PGOFF(len); i++)
		if (map[i] != NULL) {
			ARGOS_PAGEMAP_INNER_DESTROY(map[i], 
							ARGOS_PAGEMAP_PAGE_SIZE);
			map[i] = NULL;
		}
}

static inline void
argos_pagemap_destroy(argos_pagemap_t *map, size_t len)
{
	int i;
	dprintf("[PAGEMAP] Reset %u\n", len);
	for (i = 0; i < ARGOS_PAGEMAP_PGOFF(len); i++)
		if (map[i] != NULL)
			ARGOS_PAGEMAP_INNER_DESTROY(map[i], 
					ARGOS_PAGEMAP_PAGE_SIZE);
	qemu_vfree(map);
}

static inline argos_pagemap_t *
argos_pagemap_create(size_t len)
{
	argos_pagemap_t *map;
	dprintf("[PAGEMAP] Create %u\n", len);
	map = (argos_pagemap_t *)qemu_vmalloc(ARGOS_PAGEMAP_PGOFF(len) * 
			sizeof(argos_pagemap_inner_t *));
	memset(map, 0, ARGOS_PAGEMAP_PGOFF(len) * 
			sizeof(argos_pagemap_inner_t *));
	return map;
}

#define argos_pagemap_createz(l) argos_pagemap_create(l)

#ifdef ARGOS_NET_TRACKER
static inline argos_netidx_t *
argos_pagemap_ntdata(argos_pagemap_t *map, unsigned long paddr)
{
	argos_pagemap_inner_t *page;
	if ((page = map[ARGOS_PAGEMAP_PGOFF(paddr)])) {
		return ARGOS_PAGEMAP_INNER_NTDATA(page,
				ARGOS_PAGEMAP_BOFF(paddr));
	}
	return NULL;
}
#endif

#undef dprintf

#endif
