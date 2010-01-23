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
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "argos-config.h"
#include "cpu.h"
#include "argos.h"
#include "argos-bitmap.h"
#include "argos-assert.h"

argos_bitmap_t *argos_bitmap_create(size_t len)
{
	argos_bitmap_t *map;

	len = len / 8 + 1;
	map = qemu_vmalloc(len);
	ASSERT_P(map, "[ARGOS] Not enough memory\n");
	return map;
}

argos_bitmap_t *argos_bitmap_createz(size_t len)
{
	argos_bitmap_t *map;

	len = len / 8 + 1;
	map = qemu_vmalloc(len);
	ASSERT_P(map, "[ARGOS] Not enough memory\n");
	memset(map, 0, len);
	return map;
}

void argos_bitmap_reset(argos_bitmap_t *map, size_t len)
{
	len = len / 8 + 1;
	memset(map, 0, len);
}

void argos_bitmap_destroy(argos_bitmap_t *map, size_t len)
{
	free(map);
}

