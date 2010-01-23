/* Copyright (c) 2008, Georgios Portokalidis
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
#include "qemu-common.h"
#include "argos-config.h"
#include "argos-check.h"
#include "argos-memmap.h"
	
#ifndef CONFIG_USER_ONLY
int
argos_dest_pc_isdirty(CPUX86State *env, target_ulong new_eip)
{
	target_phys_addr_t paddr;

	paddr = cpu_get_phys_page_debug(env, new_eip + env->segs[R_CS].base);
	if (paddr == -1)
		return 0;
	else if (argos_memmap_istainted((paddr & TARGET_PAGE_MASK) |
				(new_eip & ~TARGET_PAGE_MASK)))
		return 1;
	return 0;
}

/*argos_netidx_t* argos_pc_netidx(CPUX86State *env)
{
	target_phys_addr_t paddr;

	paddr = cpu_get_phys_page_debug(env, env->eip + env->segs[R_CS].base);
	if (paddr == -1)
        {
		return 0;
        }
	else 
        {
                return argos_memmap_ntdata((paddr & TARGET_PAGE_MASK) |
				(env->eip & ~TARGET_PAGE_MASK));
        }
}*/
#endif
