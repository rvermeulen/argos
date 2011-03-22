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
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "argos-config.h"
#include "cpu.h"
#include "argos.h"
#include "argos-bytemap.h"


argos_bytemap_t *
argos_bytemap_create(size_t len)
{
	argos_bytemap_t *map;
#ifdef ARGOS_NET_TRACKER
	len = len * 4;
#endif
	map = (argos_bytemap_t *)qemu_vmalloc(len);
	if (!map) {
		qemu_fprintf(stderr, "[ARGOS] Not enough memory\n");
		exit(1);
	}
	return map;
}


argos_bytemap_t *
argos_bytemap_createz(size_t len)
{
	argos_bytemap_t *map;
#ifdef ARGOS_NET_TRACKER
	len = len * 4;
#endif
	map = (argos_bytemap_t *)qemu_vmalloc(len);
	if (!map) {
		qemu_fprintf(stderr, "[ARGOS] Not enough memory\n");
		exit(1);
	}
	memset(map, 0, len);
	return map;
}

void
argos_bytemap_reset(argos_bytemap_t *map, size_t len)
{
#ifdef ARGOS_NET_TRACKER
	len = len * 4;
#endif
	memset(map, 0, len);
}

void
argos_bytemap_destroy(argos_bytemap_t *map, size_t len)
{
	qemu_vfree(map);
}
