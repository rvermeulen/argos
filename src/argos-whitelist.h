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
#ifndef ARGOS_WHITELIST_H
#define ARGOS_WHITELIST_H

// Configure these to your convenience
#define HASHTABLES_NUM 3
#define HASHTABLE_BUCKETS_NUM 0x10
#define HASHTABLE_HASH_MASK   0x0f


typedef enum ARGOS_WHITELIST_TABLE_NAMES { ARGOS_WHITELIST_CALL = 0, 
	ARGOS_WHITELIST_JMP, ARGOS_WHITELIST_RET } argos_whitelist_tname;

struct hashtable_node {
	target_ulong key;
	struct hashtable_node *next;
};

extern struct hashtable_node 
	*whitelist_table[HASHTABLES_NUM][HASHTABLE_BUCKETS_NUM];


void init_argos_whitelist();

int add_argos_whitelist(const char *tname, target_ulong pc);

int read_argos_whitelist(const char *osname, const char *filename);


// Check if instruction at pc is in whitelist tname 1 = true, 0 = false
static inline int in_argos_whitelist(argos_whitelist_tname tname, 
		target_ulong pc)
{
	struct hashtable_node *bucket = 
		whitelist_table[tname][pc & HASHTABLE_HASH_MASK];
	while (bucket) {
		if (bucket->key == pc)
			return 1;
		bucket = bucket->next;
	}
	return 0;
}



#endif
