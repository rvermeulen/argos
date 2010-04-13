/* Copyright (c) 2010, Remco Vermeulen 
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

#ifndef ARGOS_TRACKSC_CONTEXT_H
#define ARGOS_TRACKSC_CONTEXT_H

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

// Instance status types
#define ARGOS_TRACKSC_PHASE_IDLE       0x1
#define ARGOS_TRACKSC_PHASE_ANALYZING  0x2
#define ARGOS_TRACKSC_PHASE_TRACKING   0x3

// Documentated at http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx
#define ARGOS_MAX_PATH 260

#include "libdasm/libdasm.h"
#include "argos-utility.h"

typedef struct _argos_tracksc_exported_function
{
    const char * name;
    target_ulong ordinal;
    target_ulong address;
} argos_tracksc_exported_function;

typedef struct _argos_tracksc_imported_module
{
    char name[ARGOS_MAX_PATH];
    // Base address of the image, at this address the image is loaded.
    target_ulong begin_address;
    // The end address is the sum of the begin address and the size of
    // the image.
    target_ulong end_address;
    // The number of exported functions.
    target_ulong number_of_functions;
    // The number of exported functions with a name.
    target_ulong number_of_functions_with_names;
    // RVA from base of the image.
    target_ulong function_address_table_rva;
    // RVA from base of the image.
    target_ulong function_name_table_rva;
    // RVA from base of the image.
    // The ordinals are relative to the base ordinal.
    target_ulong function_ordinal_table_rva;
    target_ulong base_ordinal;
    slist_entry * exports;
} argos_tracksc_imported_module;

// The argos shellcode context contains the context that is needed to
// to track the execution of shellcode and the bytes referenced by
// the shellcode instructions.
typedef struct _argos_tracksc_context
{
    // Is there an instance of shellcode running.
    unsigned phase;
    unsigned stop_condition;
    // The value of the cr3 register at the moment code injection is
    // detected.
    // We use this to determine if the execution of tainted bytes belong
    // to the process of which we are tracking the execution of shellcode.
    target_ulong cr3;
    target_ulong thread_id;
    // The following file pointer is used for internal debugging reasons.
    FILE* logfile;
    // The number of shell-code instructions executed.
    unsigned instruction_cnt;
    // Is the instruction pointed to by the eip a system call.
    char is_system_call;
    // We use the current eip to check if memory references are
    // related/performed to the instruction we are now logging,
    // since we want to log those references.
    target_ulong loadedby_eip;
    target_ulong storedby_eip;
    target_ulong executed_eip;
    INSTRUCTION instruction;
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
    slist_entry * imported_modules;
    // Array of the different LoadLibrary functions that can be used to load libraries
    // at run-time. Often used by shell-code to get access to functionality.
    // 0: LoadLibraryA
    // 1: LoadLibraryW
    // 2: LoadLibraryExA
    // 3: LoadLibraryExW
    argos_tracksc_exported_function * load_library_functions[4];
} argos_shellcode_context_t;
#endif
