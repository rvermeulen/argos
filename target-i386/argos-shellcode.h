/* Copyright (c) 2009, Remco Vermeulen 
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

#ifndef ARGOS_SHELLCODE_H
#define ARGOS_SHELLCODE_H

#define LOG_SC_FL_TEMPLATE "argos.sc.%d"

#define MAX_INSTRUCTION_CNT 100
#define MAX_INSTRUCTION_SIZE 17
#define MAX_ADDRESSABLE_BYTES 8

// Shellcode stop conditions
#define SSC_MAX_INSTR_CNT       0
#define SSC_FIRST_SYSTEM_CALL   1
// Memory address types
#define ARGOS_GUEST_VIRTUAL_ADDR    0
#define ARGOS_GUEST_PHYSICAL_ADDR   1
#define ARGOS_HOST_VIRTUAL_ADDR     2
// The argos shellcode context contains the context that is needed to
// to track the execution of shellcode and the bytes referenced by
// the shellcode instructions.

typedef struct argos_shellcode_context_s
{
    // Is there an instance of shellcode running.
    unsigned running;
    unsigned stop_condition;
    // The value of the cr3 register at the moment code injection is detected.
    // We use this to determine if the execution of tainted bytes belong to the
    // process of which we are tracking the execution of shellcode.
    target_ulong cr3;
    // The following file pointer is used for internal debugging reasons.
    FILE* logfile;
    // The number of shell-code instructions executed.
    unsigned instruction_cnt;
    // Is the instruction pointed to by the eip a system call.
    unsigned is_system_call;
    // We use the current eip to check if memory references are related/performed
    // to the instruction we are now logging, since we want to log those references.
    target_ulong loadedby_eip;
    target_ulong storedby_eip;
    target_ulong executed_eip;
    // Buffer containing the executed bytes
    char instruction[MAX_INSTRUCTION_SIZE];
    // Size of the instruction
    unsigned short instruction_size;
    // Did we logged something.
    unsigned logged;
#ifdef ARGOS_NET_TRACKER
    // The stage of the instruction being executed.
    unsigned instruction_stage;
    // The highest stage in the current execution of shell-code.
    unsigned trace_stage;
    // corresponding raw net id.
    argos_netidx_t instruction_netidx[MAX_INSTRUCTION_SIZE];
    // Sometimes we retrieve the netidx before logging, so we cache it here
    argos_netidx_t * load_value_netidx;
    // Sometimes we retrieve the netidx before logging, so we cache it here
    argos_netidx_t * store_value_netidx;
#endif
    // Bytes loaded by the instruction
    target_ulong load_value;
    // Address of the bytes loaded by the instruction
    unsigned long load_addr;
    unsigned char load_addr_type;
    // Number of loaded bytes
    unsigned load_size;
    // Bytes stored by the instruction
    target_ulong store_value;
    // Address of the bytes loaded by the instruction
    unsigned long store_addr;
    unsigned char store_addr_type;
    // Number of stored bytes
    unsigned store_size;
} argos_shellcode_context_t;

// The following macro's are used to store the load and store context.
#define ARGOS_SAVE_LD_CONTEXT(addr, var, type, size) \
    do { \
        if ( env->shellcode_context.running ) \
        { \
            env->shellcode_context.loadedby_eip = env->eip; \
            env->shellcode_context.load_value = (var); \
            env->shellcode_context.load_size = (size); \
            env->shellcode_context.load_addr = (unsigned long)(addr); \
            env->shellcode_context.load_addr_type = (type); \
        } \
    } while(0)

#define ARGOS_SAVE_LDb_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 1)
#define ARGOS_SAVE_LDw_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 2)
#define ARGOS_SAVE_LDl_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 4)
#define ARGOS_SAVE_LDq_CONTEXT(addr, var, type) ARGOS_SAVE_LD_CONTEXT(addr, var, type, 8)

#define ARGOS_SAVE_ST_CONTEXT(addr, val, type, size) \
    do { \
        if ( env->shellcode_context.running ) \
        { \
            env->shellcode_context.storedby_eip = env->eip; \
            env->shellcode_context.store_value = (val); \
            env->shellcode_context.store_size = (size); \
            env->shellcode_context.store_addr = (unsigned long)(addr); \
            env->shellcode_context.store_addr_type = (type); \
        } \
    } while(0)

#define ARGOS_SAVE_STb_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 1)
#define ARGOS_SAVE_STw_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 2)
#define ARGOS_SAVE_STl_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 4)
#define ARGOS_SAVE_STq_CONTEXT(addr, val, type) ARGOS_SAVE_ST_CONTEXT(addr, val, type, 8)

// X should be retrieved by the expression get_phys_addr_code(env, addr) + (unsigned long)phys_ram_base
// The phys_ram_base is stripped by the ARGOS_OFFSET(X) macro, so it must be added to the returned offset.
#ifdef ARGOS_NET_TRACKER
    #define ARGOS_NETIDXPTR(X) ( argos_memmap_ntdata(ARGOS_OFFSET((X))) )
#endif

int get_current_instr_len(target_ulong eip, unsigned long phys_pc);

#endif
