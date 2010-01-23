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
#ifndef ARGOS_BYTEMAP_H
#define ARGOS_BYTEMAP_H

#include "argos-config.h"
#include "argos-tag.h"
#include <string.h>

//#define BYTEMAP_DEBUG

#ifdef BYTEMAP_DEBUG
# include "argos-debug.h"
# define dprintf(...) argos_printf(__VA_ARGS__)
#else
# define dprintf(...)
#endif



#ifndef ARGOS_NET_TRACKER

#define ARGOS_BYTEMAP_LD_OP(opsfx, type)				\
static inline void							\
glue(argos_bytemap_ld, opsfx)						\
(argos_bytemap_t *map, unsigned long maddr, unsigned long paddr, 	\
 						argos_rtag_t *tag)	\
{									\
	if (*(type *)(map + maddr) == 0)				\
		argos_tag_clear(tag);					\
	else								\
		argos_tag_set(tag, paddr);				\
}
ARGOS_BYTEMAP_LD_OP(b, uint8_t)
ARGOS_BYTEMAP_LD_OP(w, uint16_t)
ARGOS_BYTEMAP_LD_OP(l, uint32_t)
ARGOS_BYTEMAP_LD_OP(q, uint64_t)


#define ARGOS_BYTEMAP_ST_OP(opsfx, type)				    \
static inline void							    \
glue(argos_bytemap_st, opsfx)						    \
(argos_bytemap_t *map, unsigned long maddr, const argos_rtag_t *tag)	    \
{									    \
	*(type *)(map + maddr) = (argos_tag_isdirty(tag))? ~(type)0 : (type)0;\
}
ARGOS_BYTEMAP_ST_OP(b, uint8_t)
ARGOS_BYTEMAP_ST_OP(w, uint16_t)
ARGOS_BYTEMAP_ST_OP(l, uint32_t)
#if HOST_LONG_BITS > 32
ARGOS_BYTEMAP_ST_OP(q, uint64_t)
#else
static inline void
argos_bytemap_stq(argos_bytemap_t *map, unsigned long maddr, 
		const argos_rtag_t *tag)
{
	if (argos_tag_isdirty(tag)) {
		*(uint32_t *)(map + maddr) = 0xff;
		*(uint32_t *)(map + maddr + 4) = 0xff;
	} else {
		*(uint32_t *)(map + maddr) = 0;
		*(uint32_t *)(map + maddr + 4) = 0;
	}
#if 0
	argos_bytemap_stl(map, maddr, t);
	argos_bytemap_stl(map, maddr + 4, t);
#endif
}
#endif


#define ARGOS_BYTEMAP_CLR_OP(opsfx, type)				 \
static inline void							 \
glue(argos_bytemap_clr, opsfx)(argos_bytemap_t *map, unsigned long maddr)\
{									 \
	*(type *)(map + maddr) = (type)0;				 \
}
ARGOS_BYTEMAP_CLR_OP(b, uint8_t)
ARGOS_BYTEMAP_CLR_OP(w, uint16_t)
ARGOS_BYTEMAP_CLR_OP(l, uint32_t)
ARGOS_BYTEMAP_CLR_OP(q, uint64_t)


static inline void
argos_bytemap_clrdq(argos_bytemap_t *map, unsigned long maddr)
{
	argos_bytemap_clrq(map, maddr);
	argos_bytemap_clrq(map, maddr + 8);
}

#define ARGOS_BYTEMAP_MOV_OP(opsfx, type)				  \
static inline void							  \
glue(argos_bytemap_mov, opsfx)(argos_bytemap_t *map, unsigned long daddr,  \
		unsigned long saddr)					  \
{									  \
	*(type *)(map + daddr) = *(type *)(map + saddr);		  \
}
ARGOS_BYTEMAP_MOV_OP(b, uint8_t)
ARGOS_BYTEMAP_MOV_OP(w, uint16_t)
ARGOS_BYTEMAP_MOV_OP(l, uint32_t)
ARGOS_BYTEMAP_MOV_OP(q, uint64_t)

static inline void
argos_bytemap_movdq(argos_bytemap_t *map, unsigned long daddr, 
		unsigned long saddr)
{
	argos_bytemap_movq(map, saddr, daddr);
	argos_bytemap_movq(map, saddr + 8, daddr + 8);
}


#else // ifndef ARGOS_NET_TRACKER


static inline void
argos_bytemap_ldb(argos_bytemap_t *map, unsigned long maddr, 
		unsigned long paddr, argos_rtag_t *tag)
{
	if (map[maddr])
		argos_tag_set(tag, paddr, map[maddr]);
	else
		argos_tag_clear(tag);
}

static inline void
argos_bytemap_ldw(argos_bytemap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
	if (map[maddr] || map[maddr + 1])
		argos_tag_set(tag, paddr, (map[maddr])? map[maddr] : 
				map[maddr + 1]);
	else
		argos_tag_clear(tag);
}

static inline void
argos_bytemap_ldl(argos_bytemap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
#if 0
	if (map[maddr] || map[maddr + 1] || map[maddr + 2] || map[maddr + 3])
	{
#endif
	int i;
	for (i = 0; i < 4; i++)
		if (map[maddr + i]) {
			argos_tag_set(tag, paddr, map[maddr + i]);
			return;
		}
#if 0
	}
	else
#endif
	argos_tag_clear(tag);
}

static inline void
argos_bytemap_ldq(argos_bytemap_t *map, unsigned long maddr, 
		unsigned long paddr, argos_rtag_t *tag)
{
#if 0
	if (map[maddr] || map[maddr + 1] || map[maddr + 2] || map[maddr + 3] || 
			map[maddr + 4] || map[maddr + 5] || map[maddr + 6] ||
			map[maddr + 7])
	{
#endif
	int i;
	for (i = 0; i < 8; i++)
		if (map[maddr + i]) {
			argos_tag_set(tag, paddr, map[maddr + i]);
			return;
		}
#if 0
	}
	else
#endif
	argos_tag_clear(tag);
}

static inline void
argos_bytemap_stb(argos_bytemap_t *map, unsigned long maddr, 
		const argos_rtag_t *tag)
{
	//map[maddr] = (argos_tag_isdirty(tag))? argos_tag_netidx(tag) : 0;
	map[maddr] = argos_tag_netidx(tag);
}

static inline void
argos_bytemap_stw(argos_bytemap_t *map, unsigned long maddr, 
		const argos_rtag_t *tag)
{
#if 0
	map[maddr + 1] = map[maddr] = (argos_tag_isdirty(tag))? 
		argos_tag_netidx(tag) : 0;
#endif
	map[maddr + 1] = map[maddr] = argos_tag_netidx(tag);
}

static inline void
argos_bytemap_stl(argos_bytemap_t *map, unsigned long maddr, 
		const argos_rtag_t *tag)
{
	int i;

	for (i = 0; i < 4; i++)
		map[maddr + i] = argos_tag_netidx(tag);
#if 0
	map[maddr + 3] = map[maddr + 2] = map[maddr + 1] = map[maddr] = 
			(argos_tag_isdirty(tag))? argos_tag_netidx(tag) : 0;
#endif
}

static inline void
argos_bytemap_stq(argos_bytemap_t *map, unsigned long maddr, 
		const argos_rtag_t *tag)
{
	int i;
	//argos_netidx_t idx = (argos_tag_isdirty(tag))? argos_tag_netidx(tag):0;

	for (i = 0; i < 8; i++)
		//map[maddr + i] = idx;
		map[maddr + i] = argos_tag_netidx(tag);
#if 0
	map[maddr + 7] = map[maddr + 6] = map[maddr + 5] = map[maddr + 4] = 
			map[maddr + 3] = map[maddr + 2] = map[maddr + 1] = 
			map[maddr] = (argos_tag_isdirty(tag))?
			argos_tag_netidx(tag) : 0;
#endif
}

static inline void
argos_bytemap_clrb(argos_bytemap_t *map, unsigned long maddr)
{
	map[maddr] = 0;
}

static inline void
argos_bytemap_clrw(argos_bytemap_t *map, unsigned long maddr)
{
	map[maddr + 1] = map[maddr] = 0;
}

static inline void
argos_bytemap_clrl(argos_bytemap_t *map, unsigned long maddr)
{
	int i;

	for (i = 0; i < 4; i++)
		map[maddr + i] = 0;
	//map[maddr + 3] = map[maddr + 2] = map[maddr + 1] = map[maddr] = 0;
}

static inline void
argos_bytemap_clrq(argos_bytemap_t *map, unsigned long maddr)
{
	int i;

	for (i = 0; i < 8; i++)
		map[maddr + i] = 0;
#if 0
	map[maddr + 7] = map[maddr + 6] = map[maddr + 5] = map[maddr + 4] =
			map[maddr + 3] = map[maddr + 2] = map[maddr + 1] = 
			map[maddr] = 0;
#endif
}

static inline void
argos_bytemap_clrdq(argos_bytemap_t *map, unsigned long maddr)
{
	int i;

	for (i = 0; i < 16; i++)
		map[maddr + i] = 0;
}

static inline void
argos_bytemap_movb(argos_bytemap_t *map, unsigned long daddr,
		unsigned long saddr)
{
	map[daddr] = map[saddr];
}

static inline void
argos_bytemap_movw(argos_bytemap_t *map, unsigned long daddr,
		unsigned long saddr)
{
	map[daddr] = map[saddr];
	map[daddr + 1] = map[saddr + 1];
}

static inline void
argos_bytemap_movl(argos_bytemap_t *map, unsigned long daddr,
		unsigned long saddr)
{
#if 0
	argos_bytemap_movw(map, daddr, saddr);
	argos_bytemap_movw(map, daddr + 2, saddr + 2);
#endif
	int i;

	for (i = 0; i< 4; i++)
		map[daddr + i] = map[saddr + i];
}

static inline void
argos_bytemap_movq(argos_bytemap_t *map, unsigned long daddr,
		unsigned long saddr)
{
	int i;

	for (i = 0; i < 8; i++)
		map[daddr + i] = map[saddr + i];
#if 0
	argos_bytemap_movl(map, daddr, saddr);
	argos_bytemap_movl(map, daddr + 4, saddr + 4);
#endif
}

static inline void
argos_bytemap_movdq(argos_bytemap_t *map, unsigned long daddr, 
		unsigned long saddr)
{
	int i;

	for (i = 0; i < 16; i++)
		map[daddr + i] = map[saddr + i];
	//memmove(map + daddr, map + saddr, 16 * sizeof(argos_netidx_t));
#if 0
	argos_bytemap_movq(map, saddr, daddr);
	argos_bytemap_movq(map, saddr + 8, daddr + 8);
#endif
}

static inline argos_netidx_t *
argos_bytemap_ntdata(argos_bytemap_t *map, target_ulong paddr)
{
	return (map + paddr);
}

#endif // ARGOS_NET_TRACKER

// Common

static inline int
argos_bytemap_istainted(argos_bytemap_t *map, unsigned long maddr)
{
#ifdef ARGOS_NET_TRACKER
	return (ARGOS_GET_NETIDX(map[maddr]) == 0)?0:1;
#else
	return (map[maddr] == 0)? 0 : 1;
#endif
}

static inline void
argos_bytemap_clear(argos_bytemap_t *map, unsigned long maddr, size_t len)
{
	//int i;
#ifdef ARGOS_NET_TRACKER
	len *= 4;
#endif
	dprintf("[BYTEMAP] Clear base 0x%08x, len %u\n", maddr, len);
	/*
	for (i = 0; i < len; i++)
		map[maddr + i] = 0;
	*/
	memset(map + maddr, 0, len);
}


argos_bytemap_t *argos_bytemap_create(size_t len);
argos_bytemap_t *argos_bytemap_createz(size_t len);
void argos_bytemap_reset(argos_bytemap_t *map, size_t len);
void argos_bytemap_destroy(argos_bytemap_t *map, size_t len);

#undef dprintf
#endif
