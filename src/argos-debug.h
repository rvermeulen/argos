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
#ifndef ARGOS_DEBUG_H
#define ARGOS_DEBUG_H
#include "argos-config.h"

void argos_printhex(unsigned long hex);

int argos_printf(const char *format, ...);


#define printlabel(label, str) \
	fprintf(stderr, label " (%s:%d): %s\n", __FILE__, __LINE__, str)

#define printflabel(label, ...) \
	do {\
		fprintf(stderr, label " (%s:%d): ", __FILE__, __LINE__);\
		fprintf(stderr,  __VA_ARGS__);\
	} while (0)



#ifdef DEBUG
# define debugcf(cond, ...) \
	do {\
		if (cond) printflabel("DEBUG", __VA_ARGS__);\
	} while (0)

# define debugcs(cond, str) \
	do {\
		if (cond) printlabel("DEBUG", str);\
	} while (0)
#else
# define debugcf(cond, ...) do { } while (0)
# define debugcs(cond, str) do { } while (0)
#endif

#endif
