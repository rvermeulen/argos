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

#define ARGOS_MAX_INSTRUCTION_COUNT 100
#define ARGOS_MAX_INSTRUCTION_SIZE 17

// Instance status types
typedef enum {IDLE, ANALYZING, TRACKING} argos_tracksc_instance_state;

typedef enum {BEFORE_SHELL_CODE, SHELL_CODE, NON_SHELL_CODE, LOAD_LIBRARY_CODE } argos_tracksc_code_type;

typedef enum {NONE_CALL, WHITELISTED_CALL, BLACKLISTED_CALL, UNKNOWN_CALL} argos_tracksc_call_type;

// Documentated at http://msdn.microsoft.com/en-us/library/aa365247%28VS.85%29.aspx
#define ARGOS_MAX_PATH 260

#define ARGOS_NUM_OF_LOADLIBRARY_FUNCTIONS 4

#define KB 1024
#define MB (KB*KB)
#define ARGOS_SIZE_OF_LOG_BUFFER (100*MB)

#include "libdasm/libdasm.h"
#include "argos-utility.h"

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
    target_ulong function_address_table;
    target_ulong function_name_table;
    target_ulong function_ordinal_table;
    target_ulong base_ordinal;
    slist_entry * exports;
} argos_tracksc_imported_module;

typedef struct _argos_tracksc_imported_function
{
    argos_tracksc_imported_module * module;
    const char * name;
    target_ulong ordinal;
    target_ulong address;
} argos_tracksc_imported_function;

typedef struct _argos_tracksc_memref_info
{
    target_ulong eip;
    target_ulong vaddr;
    target_ulong paddr;
    target_ulong value;
    target_ulong size;
#ifdef ARGOS_NET_TRACKER
    argos_netidx_t * netidx;
#endif
} argos_tracksc_memref_info;

typedef struct _argos_tracksc_instr_ctx
{
    // Did we logged something.
    unsigned char logged;
    target_ulong eip;
    INSTRUCTION decoding;
    unsigned char bytes[ARGOS_MAX_INSTRUCTION_SIZE];
    // We use this in the log file.
    argos_tracksc_imported_function * called_function;
    // This flag tells us if we called a black listed function.
    argos_tracksc_call_type call_type;
    // New memory reference trackers
    argos_tracksc_memref_info load;
    argos_tracksc_memref_info store;
#ifdef ARGOS_NET_TRACKER
    // The stage of the instruction being executed.
    unsigned char stage;
    // corresponding raw net id.
    argos_netidx_t * netidx;
#endif
} argos_tracksc_instr_ctx;
// The argos shellcode context contains the context that is needed to
// to track the execution of shellcode and the bytes referenced by
// the shellcode instructions.
typedef struct _argos_tracksc_context
{
    // Is there an instance of shellcode running.
    argos_tracksc_instance_state instance_state;
    // The value of the cr3 register at the moment code injection is
    // detected.
    // We use this to determine if the execution of tainted bytes belong
    // to the process of which we are tracking the execution of shellcode.
    target_ulong cr3;
    target_ulong thread_id;
    // Per logged instruction context.
    argos_tracksc_instr_ctx instr_ctx;
    target_ulong prev_logged_eip;
    //argos_tracksc_log * log;
#ifdef ARGOS_NET_TRACKER
    // The highest stage in the current execution of shell-code.
    unsigned char trace_stage;
#endif
    slist_entry * imported_modules;
    // Since mutiple returns can be nested in a function call we use the return address to
    // check if a function call returns.
    target_ulong saved_return_address;
    argos_tracksc_code_type running_code;
    unsigned char single_step;
} argos_tracksc_ctx;
#endif
