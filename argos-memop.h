/* Copyright (c) 2006-2007, Georgios Portokalidis
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
#ifndef ARGOS_MEMOP_H
#define ARGOS_MEMOP_H

/*
   The load and store raw macros are augmented with logging of the
   current eip, the bytes loaded or stored, the number of loaded or
   stored and the address from which the bytes are loaded or written
   to.

   This information is logged regardless if Argos is actually tracking
   running shell-code since we still if the investigate whether the
   check yields a better performance. ( if statement vs 4 memory reads & writes ).
   */

#ifdef ARGOS_NET_TRACKER

// Load raw macros
#define ARGOS_LDub_raw(addr, var, tag) \
    do { \
        (var) = ldub_raw((addr)); \
        ARGOS_MEMMAP_LDb((addr), (tag)); \
        ARGOS_SAVE_LDb_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsb_raw(addr, var, tag) \
    do { \
        (var) = ldsb_raw((addr)); \
        ARGOS_MEMMAP_LDb((addr), (tag)); \
        ARGOS_SAVE_LDb_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDuw_raw(addr, var, tag) \
    do { \
        (var) = lduw_raw((addr)); \
        ARGOS_MEMMAP_LDw((addr), (tag)); \
        ARGOS_SAVE_LDw_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsw_raw(addr, var, tag) \
    do { \
        (var) = ldsw_raw((addr)); \
        ARGOS_MEMMAP_LDw((addr), (tag)); \
        ARGOS_SAVE_LDw_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDl_raw(addr, var, tag) \
    do { \
        (var) = (uint32_t)ldl_raw((addr)); \
        ARGOS_MEMMAP_LDl((addr), (tag)); \
        ARGOS_SAVE_LDl_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsl_raw(addr, var, tag) \
    do { \
        (var) = (int32_t)ldl_raw((addr)); \
        ARGOS_MEMMAP_LDl((addr), (tag)); \
        ARGOS_SAVE_LDl_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDq_raw(addr, var, tag) \
    do {\
        (var) = ldq_raw((addr)); \
        ARGOS_MEMMAP_LDq((addr), (tag)); \
        ARGOS_SAVE_LDq_CONTEXT(addr, var, ARGOS_HOST_VIRTUAL_ADDR); \
    } while (0)

// Store raw macros
#define ARGOS_STb_raw(addr, val, tag) \
    do { \
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(addr); \
        stb_raw((addr), val); \
        ARGOS_MEMMAP_STb((addr), (tag));\
        ARGOS_SAVE_STb_CONTEXT(addr, val, ARGOS_HOST_VIRTUAL_ADDR); \
        if ( netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *netidx ); \
        } \
    } while (0)

#define ARGOS_STw_raw(addr, val, tag) \
    do { \
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(addr); \
        stw_raw((addr), val); \
        ARGOS_MEMMAP_STw((addr), (tag)); \
        ARGOS_SAVE_STw_CONTEXT(addr, val, ARGOS_HOST_VIRTUAL_ADDR); \
        if ( netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *netidx ); \
        } \
    } while (0)

#define ARGOS_STl_raw(addr, val, tag) \
    do { \
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(addr); \
        stl_raw((addr), val); \
        ARGOS_MEMMAP_STl((addr), (tag)); \
        ARGOS_SAVE_STl_CONTEXT(addr, val, ARGOS_HOST_VIRTUAL_ADDR); \
        if ( netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *netidx ); \
        } \
    } while (0)

#define ARGOS_STq_raw(addr, val, tag) \
    do { \
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(addr); \
        stq_raw((addr), val); \
        ARGOS_MEMMAP_STq((addr), (tag));\
        ARGOS_SAVE_STq_CONTEXT(addr, val, ARGOS_HOST_VIRTUAL_ADDR); \
        if ( netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *netidx ); \
        } \
    } while (0)

// Load kernel macros
#define ARGOS_LDub_kernel(addr, var, tag) ((var) = argos_ldub_kernel((addr), (tag)))
#define ARGOS_LDsb_kernel(addr, var, tag) ((var) = argos_ldsb_kernel((addr), (tag)))
#define ARGOS_LDuw_kernel(addr, var, tag) ((var) = argos_lduw_kernel((addr), (tag)))
#define ARGOS_LDsw_kernel(addr, var, tag) ((var) = argos_ldsw_kernel((addr), (tag)))
#define ARGOS_LDl_kernel(addr, var, tag)  ((var) = (uint32_t)argos_ldl_kernel((addr), (tag)))
#define ARGOS_LDsl_kernel(addr, var, tag) ((var) = (int32_t)argos_ldl_kernel((addr), (tag)))
#define ARGOS_LDq_kernel(addr, var, tag)  ((var) = argos_ldq_kernel((addr), (tag)))

// Store kernel macros
#define ARGOS_STb_kernel(addr, val, tag) argos_stb_kernel((addr), (val), (tag))
#define ARGOS_STw_kernel(addr, val, tag) argos_stw_kernel((addr), (val), (tag))
#define ARGOS_STl_kernel(addr, val, tag) argos_stl_kernel((addr), (val), (tag))
#define ARGOS_STq_kernel(addr, val, tag) argos_stq_kernel((addr), (val), (tag))

// Load user macros
#define ARGOS_LDub_user(addr, var, tag) \
    do { \
        (var) = argos_ldub_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDb_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsb_user(addr, var, tag) \
    do { \
        (var) = argos_ldsb_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDb_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDuw_user(addr, var, tag) \
    do { \
        (var) = argos_lduw_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDw_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsw_user(addr, var, tag) \
    do { \
        (var) = argos_ldsw_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDw_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDl_user(addr, var, tag) \
    do { \
        (var) = (uint32_t)argos_ldl_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDl_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDsl_user(addr, var, tag) \
    do { \
        (var) = (int32_t)argos_ldl_user((addr), (tag)); \
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDl_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

#define ARGOS_LDq_user(addr, var, tag)	\
    do {					\
        (var) = argos_ldq_user((addr), (tag));	\
        env->shellcode_context.load_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.load_addr); \
        ARGOS_SAVE_LDq_CONTEXT(addr, var, ARGOS_GUEST_VIRTUAL_ADDR); \
    } while (0)

// Store user macros
#define ARGOS_STb_user(addr, val, tag)	\
    do {					\
        argos_stb_user((addr), (val), (tag)); \
        env->shellcode_context.store_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.store_addr); \
        ARGOS_SAVE_STb_CONTEXT(addr, val, ARGOS_GUEST_VIRTUAL_ADDR); \
        if ( env->shellcode_context.store_value_netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *env->shellcode_context.store_value_netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *env->shellcode_context.store_value_netidx ); \
        } \
    } while (0)

#define ARGOS_STw_user(addr, val, tag)	\
    do {					\
        argos_stw_user((addr), (val), (tag)); \
        env->shellcode_context.store_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.store_addr); \
        ARGOS_SAVE_STw_CONTEXT(addr, val, ARGOS_GUEST_VIRTUAL_ADDR); \
        if ( env->shellcode_context.store_value_netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *env->shellcode_context.store_value_netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *env->shellcode_context.store_value_netidx ); \
        } \
    } while (0)

#define ARGOS_STl_user(addr, val, tag)	\
    do { \
        argos_stl_user((addr), (val), (tag)); \
        env->shellcode_context.store_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.store_addr); \
        ARGOS_SAVE_STl_CONTEXT(addr, val, ARGOS_GUEST_VIRTUAL_ADDR); \
        if ( env->shellcode_context.store_value_netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *env->shellcode_context.store_value_netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *env->shellcode_context.store_value_netidx ); \
        } \
    } while (0)

#define ARGOS_STq_user(addr, val, tag)	\
    do {					\
        argos_stq_user((addr), (val), (tag)); \
        env->shellcode_context.store_value_netidx = ARGOS_NETIDXPTR(env->shellcode_context.store_addr); \
        ARGOS_SAVE_STq_CONTEXT(addr, val, ARGOS_GUEST_VIRTUAL_ADDR); \
        if ( env->shellcode_context.store_value_netidx && env->shellcode_context.running ) \
        { \
            ARGOS_SET_STAGE( *env->shellcode_context.store_value_netidx, env->shellcode_context.instruction_stage  ); \
            ARGOS_INCREMENT_STAGE( *env->shellcode_context.store_value_netidx ); \
        } \
    } while (0)

#else

// Load raw macros
#define ARGOS_LDub_raw(addr, var, tag)	\
    do {					\
        (var) = ldub_raw((addr));	\
        ARGOS_MEMMAP_LDb((addr), (tag));\
    } while (0)

#define ARGOS_LDsb_raw(addr, var, tag)	\
    do {					\
        (var) = ldsb_raw((addr));	\
        ARGOS_MEMMAP_LDb((addr), (tag));\
    } while (0)

#define ARGOS_LDuw_raw(addr, var, tag)	\
    do {					\
        (var) = lduw_raw((addr));	\
        ARGOS_MEMMAP_LDw((addr), (tag));\
    } while (0)

#define ARGOS_LDsw_raw(addr, var, tag)	\
    do {					\
        (var) = ldsw_raw((addr));	\
        ARGOS_MEMMAP_LDw((addr), (tag));\
    } while (0)

#define ARGOS_LDl_raw(addr, var, tag)		\
    do {						\
        (var) = (uint32_t)ldl_raw((addr));	\
        ARGOS_MEMMAP_LDl((addr), (tag));	\
    } while (0)

#define ARGOS_LDsl_raw(addr, var, tag)		\
    do {						\
        (var) = (int32_t)ldl_raw((addr));	\
        ARGOS_MEMMAP_LDl((addr), (tag));	\
    } while (0)

#define ARGOS_LDq_raw(addr, var, tag)	\
    do {					\
        (var) = ldq_raw((addr));	\
        ARGOS_MEMMAP_LDq((addr), (tag));\
    } while (0)

// Store raw macros
#define ARGOS_STb_raw(addr, val, tag)	\
    do {					\
        stb_raw((addr), val);		\
        ARGOS_MEMMAP_STb((addr), (tag));\
    } while (0)

#define ARGOS_STw_raw(addr, val, tag)	\
    do {					\
        stw_raw((addr), val);		\
        ARGOS_MEMMAP_STw((addr), (tag));\
    } while (0)

#define ARGOS_STl_raw(addr, val, tag)	\
    do {					\
        stl_raw((addr), val);		\
        ARGOS_MEMMAP_STl((addr), (tag));\
    } while (0)

#define ARGOS_STq_raw(addr, val, tag)	\
    do {					\
        stq_raw((addr), val);		\
        ARGOS_MEMMAP_STq((addr), (tag));\
    } while (0)


// Load kernel macros
#define ARGOS_LDub_kernel(addr, var, tag) ((var) = argos_ldub_kernel((addr), (tag)))
#define ARGOS_LDsb_kernel(addr, var, tag) ((var) = argos_ldsb_kernel((addr), (tag)))
#define ARGOS_LDuw_kernel(addr, var, tag) ((var) = argos_lduw_kernel((addr), (tag)))
#define ARGOS_LDsw_kernel(addr, var, tag) ((var) = argos_ldsw_kernel((addr), (tag)))
#define ARGOS_LDl_kernel(addr, var, tag)  ((var) = (uint32_t)argos_ldl_kernel((addr), (tag)))
#define ARGOS_LDsl_kernel(addr, var, tag) ((var) = (int32_t)argos_ldl_kernel((addr), (tag)))
#define ARGOS_LDq_kernel(addr, var, tag)  ((var) = argos_ldq_kernel((addr), (tag)))

// Store kernel macros
#define ARGOS_STb_kernel(addr, val, tag) argos_stb_kernel((addr), (val), (tag))
#define ARGOS_STw_kernel(addr, val, tag) argos_stw_kernel((addr), (val), (tag))
#define ARGOS_STl_kernel(addr, val, tag) argos_stl_kernel((addr), (val), (tag))
#define ARGOS_STq_kernel(addr, val, tag) argos_stq_kernel((addr), (val), (tag))

// Load user macros
#define ARGOS_LDub_user(addr, var, tag) ((var) = argos_ldub_user((addr), (tag)))
#define ARGOS_LDsb_user(addr, var, tag) ((var) = argos_ldsb_user((addr), (tag)))
#define ARGOS_LDuw_user(addr, var, tag) ((var) = argos_lduw_user((addr), (tag)))
#define ARGOS_LDsw_user(addr, var, tag) ((var) = argos_ldsw_user((addr), (tag)))
#define ARGOS_LDl_user(addr, var, tag)  ((var) = (uint32_t)argos_ldl_user((addr), (tag)))
#define ARGOS_LDsl_user(addr, var, tag) ((var) = (int32_t)argos_ldl_user((addr), (tag)))
#define ARGOS_LDq_user(addr, var, tag)  ((var) = argos_ldq_user((addr), (tag)))

// Store user macros
#define ARGOS_STb_user(addr, val, tag) argos_stb_user((addr), (val), (tag))
#define ARGOS_STw_user(addr, val, tag) argos_stw_user((addr), (val), (tag))
#define ARGOS_STl_user(addr, val, tag) argos_stl_user((addr), (val), (tag))
#define ARGOS_STq_user(addr, val, tag) argos_stq_user((addr), (val), (tag))

#endif
#endif
