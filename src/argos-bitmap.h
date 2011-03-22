/* Copyright (c) 2007-2008, Georgios Portokalidis
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
#ifndef ARGOS_BITMAP_H
#define ARGOS_BITMAP_H

#include "argos-config.h"
#include "argos-tag.h"


#define ARGOS_BITMAP_OFF(addr)	((addr) >> 3) 
#define ARGOS_BITMAP_BIT(addr)	(1U << ((addr) & 0x7))
#define ARGOS_BITMAP_ISON(map, addr)	\
	(((map)[ARGOS_BITMAP_OFF(addr)] & ARGOS_BITMAP_BIT(addr)) != 0)
#define ARGOS_BITMAP_SET(map, addr)	\
	((map)[ARGOS_BITMAP_OFF(addr)] |= ARGOS_BITMAP_BIT(addr))
#define ARGOS_BITMAP_UNSET(map, addr)	\
	((map)[ARGOS_BITMAP_OFF(addr)] &= ~ARGOS_BITMAP_BIT(addr))


#ifndef ARGOS_NET_TRACKER

static inline void 
argos_bitmap_setn(argos_bitmap_t *map, unsigned long maddr,
		const argos_rtag_t *tag, int n)
{
	int i;
	for (i = 0; i < n; i++) {
		ARGOS_BITMAP_SET(map, maddr + i);
	}
}

static inline void 
argos_bitmap_clrn(argos_bitmap_t *map, unsigned long maddr, int n)
{
	int i;
	for (i = 0; i < n; i++) {
		ARGOS_BITMAP_UNSET(map, maddr + i);
	}
}

static inline void 
argos_bitmap_ldn(argos_bitmap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag, int n)
{
	int i;
	for (i = 0; i < n; i++)
		if (ARGOS_BITMAP_ISON(map, maddr + i)) {
			argos_tag_set(tag, paddr);
			return;
		}
	argos_tag_clear(tag);
}



static inline void 
argos_bitmap_ldb(argos_bitmap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
	if (ARGOS_BITMAP_ISON(map, maddr))
		argos_tag_set(tag, paddr);
	else
		argos_tag_clear(tag);
}

static inline void 
argos_bitmap_ldw(argos_bitmap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
	if ((maddr ^ 0x7) != 0) {
		if ((map[ARGOS_BITMAP_OFF(maddr)] & 
					(0x3U << (maddr & 0x7))) != 0)
			argos_tag_set(tag, paddr);
		else
			argos_tag_clear(tag);
	} else
		argos_bitmap_ldn(map, maddr, paddr, tag, 2);
}

static inline void 
argos_bitmap_ldl(argos_bitmap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
	if ((maddr & 0x3) <= 4) {
		if ((map[ARGOS_BITMAP_OFF(maddr)] & 
					(0xfU << (maddr & 0x7))) != 0)
			argos_tag_set(tag, paddr);
		else
			argos_tag_clear(tag);
	} else
		argos_bitmap_ldn(map, maddr, paddr, tag, 4);
}

static inline void 
argos_bitmap_ldq(argos_bitmap_t *map, unsigned long maddr,
		unsigned long paddr, argos_rtag_t *tag)
{
	if ((maddr & 0x7) == 0) {
		if (map[ARGOS_BITMAP_OFF(maddr)] != 0)
			argos_tag_set(tag, paddr);
		else
			argos_tag_clear(tag);
	} else
		argos_bitmap_ldn(map, maddr, paddr, tag, 8);
}




static inline void 
argos_bitmap_stb(argos_bitmap_t *map, unsigned long maddr,
		const argos_rtag_t *tag)
{
	if (argos_tag_isdirty(tag))
		ARGOS_BITMAP_SET(map, maddr);
	else
		ARGOS_BITMAP_UNSET(map, maddr);
}

static inline void 
argos_bitmap_stw(argos_bitmap_t *map, unsigned long maddr,
		const argos_rtag_t *tag)
{
	if (argos_tag_isdirty(tag)) {
		if ((maddr ^ 0x7) != 0)
			map[ARGOS_BITMAP_OFF(maddr)] |= (0x3U << (maddr & 0x7));
		else 
			argos_bitmap_setn(map, maddr, tag, 2);
	} else {
		if ((maddr ^ 0x7) != 0)
			map[ARGOS_BITMAP_OFF(maddr)] &= ~(0x3U << (maddr & 0x7));
		else 
			argos_bitmap_clrn(map, maddr, 2);
	}
}

static inline void 
argos_bitmap_stl(argos_bitmap_t *map, unsigned long maddr,
		const argos_rtag_t *tag)
{
	if (argos_tag_isdirty(tag)) {
		if ((maddr & 0x3) <= 4)
			map[ARGOS_BITMAP_OFF(maddr)] |= (0xfU << (maddr & 0x7));
		else 
			argos_bitmap_setn(map, maddr, tag, 4);
	} else {
		if ((maddr & 0x3) <= 4)
			map[ARGOS_BITMAP_OFF(maddr)] &= ~(0xfU << (maddr & 0x7));
		else 
			argos_bitmap_clrn(map, maddr, 4);
	}
}

static inline void 
argos_bitmap_stq(argos_bitmap_t *map, unsigned long maddr,
		const argos_rtag_t *tag)
{
	if (argos_tag_isdirty(tag)) {
		if ((maddr & 0x7) == 0)
			map[ARGOS_BITMAP_OFF(maddr)] = 0xffU;
		else 
			argos_bitmap_setn(map, maddr, tag, 8);
	} else {
		if ((maddr & 0x7) == 0)
			map[ARGOS_BITMAP_OFF(maddr)] = 0;
		else 
			argos_bitmap_clrn(map, maddr, 8);
	}
}



static inline void 
argos_bitmap_clrb(argos_bitmap_t *map, unsigned long maddr)
{
	ARGOS_BITMAP_UNSET(map, maddr);
}

static inline void 
argos_bitmap_clrw(argos_bitmap_t *map, unsigned long maddr)
{
	if ((maddr ^ 0x7) != 0)
		map[ARGOS_BITMAP_OFF(maddr)] &= ~(0x3U << (maddr & 0x7));
	else 
		argos_bitmap_clrn(map, maddr, 2);
}

static inline void 
argos_bitmap_clrl(argos_bitmap_t *map, unsigned long maddr)
{
	if ((maddr & 0x3) <= 4)
		map[ARGOS_BITMAP_OFF(maddr)] &= ~(0xfU << (maddr & 0x7));
	else 
		argos_bitmap_clrn(map, maddr, 4);
}

static inline void 
argos_bitmap_clrq(argos_bitmap_t *map, unsigned long maddr)
{
	if ((maddr & 0x7) == 0)
		map[ARGOS_BITMAP_OFF(maddr)] = 0;
	else 
		argos_bitmap_clrn(map, maddr, 8);
}

#endif // !ARGOS_NET_TRACKER

// Common

static inline int
argos_bitmap_istainted(argos_bitmap_t *map, unsigned long maddr)
{
	return (ARGOS_BITMAP_ISON(map, maddr))? 1 : 0;
}

static inline void
argos_bitmap_clear(argos_bitmap_t *map, unsigned long paddr, size_t len)
{
	while (len > 0) {
		// Address aligned in 8 byte boundary
		if ((paddr & 0x7) == 0) {
			// Clear 8 bytes a time
			for (; len >= 8; paddr += 8, len -= 8)
				map[ARGOS_BITMAP_OFF(paddr)] = 0;
			if (len == 0)
				break;
		}

		ARGOS_BITMAP_UNSET(map, paddr);
		len--;
		paddr++;
	}
}


argos_bitmap_t *argos_bitmap_create(size_t len);
argos_bitmap_t *argos_bitmap_createz(size_t len);
void argos_bitmap_reset(argos_bitmap_t *map, size_t len);
void argos_bitmap_destroy(argos_bitmap_t *map, size_t len);

#endif
