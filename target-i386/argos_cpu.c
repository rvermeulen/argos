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
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <stddef.h>
#include "cpu.h"
#include "argos.h"

#include "argos-bytemap.h"
#include "argos-tag.h"
#include "../argos-common.h"

extern void argos_tracksc_init(CPUX86State * env);
extern void argos_tracksc_stop(CPUX86State * env);

void argos_init(CPUX86State *env)
{
    env->envmap = argos_bytemap_create(ENVMAP_SIZE);
    if (!env->envmap)
        exit(1);
}

void argos_reset(CPUX86State *env)
{
    argos_bytemap_reset(env->envmap, ENVMAP_SIZE);
    memset(&env->t0tag, 0, sizeof(env->t0tag));
    memset(&env->t1tag, 0, sizeof(env->t1tag));
    memset(&env->t2tag, 0, sizeof(env->t2tag));
    memset(env->regtags, 0 , sizeof(argos_rtag_t) * CPU_NB_REGS);

#ifdef ARGOS_TRACKSC
    if ( argos_tracksc )
    {
        argos_tracksc_init(env);
    }
#endif

}

void argos_close(CPUX86State *env)
{
    argos_bytemap_destroy(env->envmap,  ENVMAP_SIZE);
#ifdef ARGOS_TRACKSC
    argos_tracksc_stop(env);
#endif
}
