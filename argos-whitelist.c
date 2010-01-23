/* Copyright (c) 2007, Georgios Portokalidis
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
#include <ctype.h>
#include "cpu.h"
#include "argos-assert.h"

#include "argos-whitelist.h"


struct hashtable_node 
	*whitelist_table[HASHTABLES_NUM][HASHTABLE_BUCKETS_NUM];

static const char *table_names[5] = { "call", "jmp", "ret" };

// Initialise whitelist
void init_argos_whitelist()
{
	int i, bucket;

	for (i = 0; i < HASHTABLES_NUM; i++) {
		for (bucket = 0; bucket < HASHTABLE_BUCKETS_NUM; bucket++)
			whitelist_table[i][bucket] = NULL;
	}
}

// Add the instruction at pc to the whitelist named tname
int add_argos_whitelist(const char *tname, target_ulong pc)
{
	int i;
	struct hashtable_node **bucket_p;

	for (i = 0; i < HASHTABLES_NUM; i++) {
		if (strcmp(tname, table_names[i]) == 0)
			break;
	}
	if (i >= HASHTABLES_NUM)
		return -1;

	bucket_p = whitelist_table[i] + (pc & HASHTABLE_HASH_MASK);
	while (*bucket_p != NULL) {
		if ((*bucket_p)->key == pc)
			return 0; // Key exists already
		bucket_p = &(*bucket_p)->next;
	}
	*bucket_p = qemu_malloc(sizeof(struct hashtable_node));
	ASSERT_P(*bucket_p, "Cannot allocate memory for whitelist\n");
	(*bucket_p)->key = pc;
	(*bucket_p)->next = NULL;
	//printf("Added whitelist item %s->0x%08x\n", tname, pc);

	return 0;
}

int read_argos_whitelist(const char *osname, const char *filename)
{
	FILE *fp;
	char buf[80], os[80], tname[80];
	unsigned long long llpc;
	int i;

	if (!(fp = fopen(filename, "r"))) {
		fprintf(stderr, "[ARGOS] whitelist file \"%s\" cannot be found"
				" or opened, no whitelist applied\n", filename);
		return -1;
	}

	while (fgets(buf, 80, fp) != NULL) {
		if (sscanf(buf, "%s %s 0x%llx", os, tname, &llpc) == 3) {
			os[strlen(os) - 1] = '\0';
			if (strcmp(os, osname) != 0)
				continue;
			goto add_pc;
		} else if (sscanf(buf, "%s 0x%llx\n", tname, &llpc) == 2) {
add_pc:
			add_argos_whitelist(tname, (target_ulong)llpc);
		} else {
			for (i = 0; buf[i] != '\0'; i++) {
				if (!isspace(buf[i])) {
					fprintf(stderr, "[ARGOS] don't know "
							"what to do with "
							"whitelist line:\n%s",
						       	buf);
					break;
				}
			}
		}
	}

	fclose(fp);
	return 0;
}
