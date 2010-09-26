/*
 *  Software MMU support
 *
 *  Copyright (c) 2003 Fabrice Bellard
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
#include "argos-tag.h"

#define DATA_SIZE (1 << SHIFT)

#if DATA_SIZE == 8
#define SUFFIX q
#define USUFFIX q
#define DATA_TYPE uint64_t
#elif DATA_SIZE == 4
#define SUFFIX l
#define USUFFIX l
#define DATA_TYPE uint32_t
#elif DATA_SIZE == 2
#define SUFFIX w
#define USUFFIX uw
#define DATA_TYPE uint16_t
#elif DATA_SIZE == 1
#define SUFFIX b
#define USUFFIX ub
#define DATA_TYPE uint8_t
#else
#error unsupported data size
#endif

#ifdef SOFTMMU_CODE_ACCESS
#define READ_ACCESS_TYPE 2
#define ADDR_READ addr_code
#else
#define READ_ACCESS_TYPE 0
#define ADDR_READ addr_read
#endif

#ifdef ARGOS_SOFTMMU
static DATA_TYPE glue(glue(argos_slow_ld, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                        int mmu_idx,
                                                        void *retaddr,
							unsigned int s,
							unsigned int e,
							argos_rtag_t *tag);
static inline DATA_TYPE glue(argos_io_read, SUFFIX)(target_phys_addr_t physaddr, 
                                              target_ulong tlb_addr,
					      argos_rtag_t *tag)
#else
static DATA_TYPE glue(glue(slow_ld, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                        int mmu_idx,
                                                        void *retaddr);
static inline DATA_TYPE glue(io_read, SUFFIX)(target_phys_addr_t physaddr, 
                                              target_ulong tlb_addr)
#endif
{
    DATA_TYPE res;
    int index;
#ifndef ARGOS_SOFTMMU
    /* For non-tracking reads we define a dummy tag */
    argos_rtag_t tmptag, *tag = &tmptag;
#endif

    index = (tlb_addr >> IO_MEM_SHIFT) & (IO_MEM_NB_ENTRIES - 1);

#ifdef ARGOS_SOFTMMU
    /* io_mem_read() functions do *not* have to update the tag,
     * so clear it beforehand */
    argos_tag_clear(tag);
#endif

#if SHIFT <= 2
    res = io_mem_read[index][SHIFT](io_mem_opaque[index], physaddr, tag);
#else
#ifdef TARGET_WORDS_BIGENDIAN
    res = (uint64_t)io_mem_read[index][2](io_mem_opaque[index], physaddr, tag) << 32;
    res |= io_mem_read[index][2](io_mem_opaque[index], physaddr + 4, tag);
#else
    res = io_mem_read[index][2](io_mem_opaque[index], physaddr, tag);
    res |= (uint64_t)io_mem_read[index][2](io_mem_opaque[index], physaddr + 4, tag) << 32;
#endif
#endif /* SHIFT > 2 */
#ifdef USE_KQEMU
    env->last_io_time = cpu_get_time_fast();
#endif

    return res;
}

/* handle all cases except unaligned access which span two pages */
#ifdef ARGOS_SOFTMMU
DATA_TYPE REGPARM(1) glue(glue(__argos_ld, SUFFIX), MMUSUFFIX)(target_ulong addr,
                                                         int mmu_idx,
							 argos_rtag_t *tag)
#else
DATA_TYPE REGPARM(1) glue(glue(__ld, SUFFIX), MMUSUFFIX)(target_ulong addr,
                                                         int mmu_idx)
#endif
{
    DATA_TYPE res;
    int index;
    target_ulong tlb_addr;
    target_phys_addr_t physaddr;
    void *retaddr;
 
    /* test if there is match for unaligned or IO access */
    /* XXX: could done more in memory macro in a non portable way */
    index = (addr >> TARGET_PAGE_BITS) & (CPU_TLB_SIZE - 1);
 redo:
    tlb_addr = env->tlb_table[mmu_idx][index].ADDR_READ;
    if ((addr & TARGET_PAGE_MASK) == (tlb_addr & (TARGET_PAGE_MASK | TLB_INVALID_MASK))) {
        physaddr = addr + env->tlb_table[mmu_idx][index].addend;
#ifdef ARGOS_SOFTMMU
        env->shellcode_context.load_addr = physaddr;
        env->shellcode_context.load_addr_type = HOST_VIRTUAL;
#endif
        if (tlb_addr & ~TARGET_PAGE_MASK) {
            /* IO access */
            if ((addr & (DATA_SIZE - 1)) != 0)
                goto do_unaligned_access;
#ifdef ARGOS_SOFTMMU
            res = glue(argos_io_read, SUFFIX)(physaddr, tlb_addr, tag);
#else
            res = glue(io_read, SUFFIX)(physaddr, tlb_addr);
#endif
        } else if (((addr & ~TARGET_PAGE_MASK) + DATA_SIZE - 1) >= TARGET_PAGE_SIZE) {
            /* slow unaligned access (it spans two pages or IO) */
        do_unaligned_access:
            retaddr = GETPC();
#ifdef ALIGNED_ONLY
            do_unaligned_access(addr, READ_ACCESS_TYPE, mmu_idx, retaddr);
#endif
#ifdef ARGOS_SOFTMMU
            res = glue(glue(argos_slow_ld, SUFFIX), MMUSUFFIX)(addr, 
                                                         mmu_idx, retaddr,
							 0, DATA_SIZE,
							 tag);
#else
            res = glue(glue(slow_ld, SUFFIX), MMUSUFFIX)(addr, 
                                                         mmu_idx, retaddr);
#endif
        } else {
            /* unaligned/aligned access in the same page */
#ifdef ALIGNED_ONLY
            if ((addr & (DATA_SIZE - 1)) != 0) {
                retaddr = GETPC();
                do_unaligned_access(addr, READ_ACCESS_TYPE, mmu_idx, retaddr);
            }
#endif
#ifdef ARGOS_SOFTMMU
            //glue(glue(ARGOS_LD, USUFFIX), _raw)((uint8_t *)(long)physaddr, res, tag);
            glue(glue(ARGOS_LD, USUFFIX), _raw)(physaddr, res, tag);
#else
            res = glue(glue(ld, USUFFIX), _raw)((uint8_t *)(long)physaddr);
#endif
        }
#if defined(ARGOS_SOFTMMU) && (MEMSUFFIX == _data)
        argos_tracksc_on_translate_ld_addr(env, addr, physaddr, res,
                DATA_SIZE);
#endif
    } else {
        /* the page is not in the TLB : fill it */
        retaddr = GETPC();
#ifdef ALIGNED_ONLY
        if ((addr & (DATA_SIZE - 1)) != 0)
            do_unaligned_access(addr, READ_ACCESS_TYPE, mmu_idx, retaddr);
#endif
        tlb_fill(addr, READ_ACCESS_TYPE, mmu_idx, retaddr);
        goto redo;
    }
    return res;
}

/* handle all unaligned cases */
#ifdef ARGOS_SOFTMMU
static DATA_TYPE glue(glue(argos_slow_ld, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                        int mmu_idx,
                                                        void *retaddr,
							unsigned int s,
							unsigned int e,
							argos_rtag_t *tag)
#else
static DATA_TYPE glue(glue(slow_ld, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                        int mmu_idx,
                                                        void *retaddr)
#endif
{
    DATA_TYPE res, res1, res2;
    int index, shift;
    target_phys_addr_t physaddr;
    target_ulong tlb_addr, addr1, addr2;

    index = (addr >> TARGET_PAGE_BITS) & (CPU_TLB_SIZE - 1);
 redo:
    tlb_addr = env->tlb_table[mmu_idx][index].ADDR_READ;
    if ((addr & TARGET_PAGE_MASK) == (tlb_addr & (TARGET_PAGE_MASK | TLB_INVALID_MASK))) {
        physaddr = addr + env->tlb_table[mmu_idx][index].addend;
        if (tlb_addr & ~TARGET_PAGE_MASK) {
            /* IO access */
            if ((addr & (DATA_SIZE - 1)) != 0)
                goto do_unaligned_access;
#ifdef ARGOS_SOFTMMU
            res = glue(argos_io_read, SUFFIX)(physaddr, tlb_addr, tag);
#else
            res = glue(io_read, SUFFIX)(physaddr, tlb_addr);
#endif
        } else if (((addr & ~TARGET_PAGE_MASK) + DATA_SIZE - 1) >= TARGET_PAGE_SIZE) {
#ifdef ARGOS_SOFTMMU
	    argos_rtag_t tmp1, tmp2;
#endif
        do_unaligned_access:
            /* slow unaligned access (it spans two pages) */
            addr1 = addr & ~(DATA_SIZE - 1);
            addr2 = addr1 + DATA_SIZE;
#ifdef ARGOS_SOFTMMU
            res1 = glue(glue(argos_slow_ld, SUFFIX), MMUSUFFIX)(addr1, 
                                                          mmu_idx, retaddr, 
							  addr - addr1,
							  DATA_SIZE,
							  &tmp1);
            res2 = glue(glue(argos_slow_ld, SUFFIX), MMUSUFFIX)(addr2, 
                                                          mmu_idx, retaddr,
							  0, addr - addr1,
							  &tmp2);
	    argos_tag_cc(tag, &tmp1, &tmp2);
#else
            res1 = glue(glue(slow_ld, SUFFIX), MMUSUFFIX)(addr1, 
                                                          mmu_idx, retaddr);
            res2 = glue(glue(slow_ld, SUFFIX), MMUSUFFIX)(addr2, 
                                                          mmu_idx, retaddr);
#endif
            shift = (addr & (DATA_SIZE - 1)) * 8;
#ifdef TARGET_WORDS_BIGENDIAN
            res = (res1 << shift) | (res2 >> ((DATA_SIZE * 8) - shift));
#else
            res = (res1 >> shift) | (res2 << ((DATA_SIZE * 8) - shift));
#endif
            res = (DATA_TYPE)res;
        } else {
            /* unaligned/aligned access in the same page */
#ifdef ARGOS_SOFTMMU
	    unsigned long off = ARGOS_OFFSET((uint8_t *)(long)physaddr);
	    for (; s < e; s++) {
		    argos_memmap_ldb(off + s, tag);
		    if (argos_tag_isdirty(tag))
			    break;
	    }
#endif
            res = glue(glue(ld, USUFFIX), _raw)((uint8_t *)(long)physaddr);
        }
    } else {
        /* the page is not in the TLB : fill it */
        tlb_fill(addr, READ_ACCESS_TYPE, mmu_idx, retaddr);
        goto redo;
    }
    return res;
}

#ifndef SOFTMMU_CODE_ACCESS

#ifdef ARGOS_SOFTMMU
static void glue(glue(argos_slow_st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                   DATA_TYPE val, 
                                                   int mmu_idx,
                                                   void *retaddr,
						   const argos_rtag_t *tag);

static inline void glue(argos_io_write, SUFFIX)(target_phys_addr_t physaddr, 
                                          DATA_TYPE val,
                                          target_ulong tlb_addr,
                                          void *retaddr,
					  const argos_rtag_t *tag)
#else
static void glue(glue(slow_st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                   DATA_TYPE val, 
                                                   int mmu_idx,
                                                   void *retaddr);

static inline void glue(io_write, SUFFIX)(target_phys_addr_t physaddr, 
                                          DATA_TYPE val,
                                          target_ulong tlb_addr,
                                          void *retaddr)
#endif
{
    int index;
#ifndef ARGOS_SOFTMMU
    /* For non-tracking writes, we create a tag that points
     * to the clean tag */
    const argos_rtag_t tmptag = { 0, }, *tag = &tmptag;
#endif

    index = (tlb_addr >> IO_MEM_SHIFT) & (IO_MEM_NB_ENTRIES - 1);
    env->mem_write_vaddr = tlb_addr;
    env->mem_write_pc = (unsigned long)retaddr;
#if SHIFT <= 2
    io_mem_write[index][SHIFT](io_mem_opaque[index], physaddr, val, tag);
#else
#ifdef TARGET_WORDS_BIGENDIAN
    io_mem_write[index][2](io_mem_opaque[index], physaddr, val >> 32, tag);
    io_mem_write[index][2](io_mem_opaque[index], physaddr + 4, val, tag);
#else
    io_mem_write[index][2](io_mem_opaque[index], physaddr, val, tag);
    io_mem_write[index][2](io_mem_opaque[index], physaddr + 4, val >> 32, tag);
#endif
#endif /* SHIFT > 2 */
#ifdef USE_KQEMU
    env->last_io_time = cpu_get_time_fast();
#endif
}

#ifdef ARGOS_SOFTMMU
void REGPARM(2) glue(glue(__argos_st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                    DATA_TYPE val,
                                                    int mmu_idx,
						    const argos_rtag_t *tag)
#else
void REGPARM(2) glue(glue(__st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                    DATA_TYPE val,
                                                    int mmu_idx)
#endif
{
    target_phys_addr_t physaddr;
    target_ulong tlb_addr;
    void *retaddr;
    int index;
    
    index = (addr >> TARGET_PAGE_BITS) & (CPU_TLB_SIZE - 1);
 redo:
    tlb_addr = env->tlb_table[mmu_idx][index].addr_write;
    if ((addr & TARGET_PAGE_MASK) == (tlb_addr & (TARGET_PAGE_MASK | TLB_INVALID_MASK))) {
        physaddr = addr + env->tlb_table[mmu_idx][index].addend;
#ifdef ARGOS_SOFTMMU
        env->shellcode_context.store_addr = physaddr;
        env->shellcode_context.store_addr_type = HOST_VIRTUAL;
#endif
        if (tlb_addr & ~TARGET_PAGE_MASK) {
            /* IO access */
            if ((addr & (DATA_SIZE - 1)) != 0)
                goto do_unaligned_access;
            retaddr = GETPC();
#ifdef ARGOS_SOFTMMU
            glue(argos_io_write, SUFFIX)(physaddr, val, tlb_addr, retaddr, 
			    tag);
#else
            glue(io_write, SUFFIX)(physaddr, val, tlb_addr, retaddr);
#endif
        } else if (((addr & ~TARGET_PAGE_MASK) + DATA_SIZE - 1) >= TARGET_PAGE_SIZE) {
        do_unaligned_access:
            retaddr = GETPC();
#ifdef ALIGNED_ONLY
            do_unaligned_access(addr, 1, mmu_idx, retaddr);
#endif
#ifdef ARGOS_SOFTMMU
            glue(glue(argos_slow_st, SUFFIX), MMUSUFFIX)(addr, val, 
                                                   mmu_idx, retaddr, tag);
#else
            glue(glue(slow_st, SUFFIX), MMUSUFFIX)(addr, val, 
                                                   mmu_idx, retaddr);
#endif
        } else {
            /* aligned/unaligned access in the same page */
#ifdef ALIGNED_ONLY
            if ((addr & (DATA_SIZE - 1)) != 0) {
                retaddr = GETPC();
                do_unaligned_access(addr, 1, mmu_idx, retaddr);
            }
#endif
#ifdef ARGOS_SOFTMMU
            //glue(glue(ARGOS_ST, SUFFIX), _raw)((uint8_t *)(long)physaddr, val, tag);
            glue(glue(ARGOS_ST, SUFFIX), _raw)(physaddr, val, tag);
#else
            glue(glue(st, SUFFIX), _raw)((uint8_t *)(long)physaddr, val);
	    glue(ARGOS_MEMMAP_CLR, SUFFIX)((uint8_t *)(long)physaddr);
#endif
        }
#if defined(ARGOS_SOFTMMU) && (MEMSUFFIX == _data)
        argos_tracksc_on_translate_st_addr(env, addr, physaddr, val,
                DATA_SIZE);
#endif
    } else {
        /* the page is not in the TLB : fill it */
        retaddr = GETPC();
#ifdef ALIGNED_ONLY
        if ((addr & (DATA_SIZE - 1)) != 0)
            do_unaligned_access(addr, 1, mmu_idx, retaddr);
#endif
        tlb_fill(addr, 1, mmu_idx, retaddr);
        goto redo;
    }
}

/* handles all unaligned cases */
#ifdef ARGOS_SOFTMMU
static void glue(glue(argos_slow_st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                   DATA_TYPE val,
                                                   int mmu_idx,
                                                   void *retaddr,
						   const argos_rtag_t *tag)
#else
static void glue(glue(slow_st, SUFFIX), MMUSUFFIX)(target_ulong addr, 
                                                   DATA_TYPE val,
                                                   int mmu_idx,
                                                   void *retaddr)
#endif
{
    target_phys_addr_t physaddr;
    target_ulong tlb_addr;
    int index, i;

    index = (addr >> TARGET_PAGE_BITS) & (CPU_TLB_SIZE - 1);
 redo:
    tlb_addr = env->tlb_table[mmu_idx][index].addr_write;
    if ((addr & TARGET_PAGE_MASK) == (tlb_addr & (TARGET_PAGE_MASK | TLB_INVALID_MASK))) {
        physaddr = addr + env->tlb_table[mmu_idx][index].addend;
        if (tlb_addr & ~TARGET_PAGE_MASK) {
            /* IO access */
            if ((addr & (DATA_SIZE - 1)) != 0)
                goto do_unaligned_access;
#ifdef ARGOS_SOFTMMU
            glue(argos_io_write, SUFFIX)(physaddr, val, tlb_addr, retaddr,
			    tag);
#else
            glue(io_write, SUFFIX)(physaddr, val, tlb_addr, retaddr); 
#endif
        } else if (((addr & ~TARGET_PAGE_MASK) + DATA_SIZE - 1) >= TARGET_PAGE_SIZE) {
        do_unaligned_access:
            /* XXX: not efficient, but simple */
            /* Note: relies on the fact that tlb_fill() does not remove the
             * previous page from the TLB cache.  */
            for(i = DATA_SIZE - 1; i >= 0; i--) {
#ifdef TARGET_WORDS_BIGENDIAN
#ifdef ARGOS_SOFTMMU
                glue(argos_slow_stb, MMUSUFFIX)(addr + i, val >> (((DATA_SIZE - 1) * 8) - (i * 8)), 
                                          mmu_idx, retaddr, tag);
#else
                glue(slow_stb, MMUSUFFIX)(addr + i, val >> (((DATA_SIZE - 1) * 8) - (i * 8)), 
                                          mmu_idx, retaddr);
#endif // ARGOS_SOFTMMU
#else
#ifdef ARGOS_SOFTMMU
                glue(argos_slow_stb, MMUSUFFIX)(addr + i, val >> (i * 8), 
                                          mmu_idx, retaddr, tag);
#else
                glue(slow_stb, MMUSUFFIX)(addr + i, val >> (i * 8), 
                                          mmu_idx, retaddr);
#endif // ARGOS_SOFTMMU
#endif // TARGET_WORDS_BIGENDIAN
            }
        } else {
            /* aligned/unaligned access in the same page */
#ifdef ARGOS_SOFTMMU
            //glue(glue(ARGOS_ST, SUFFIX), _raw)((uint8_t *)(long)physaddr, val, tag);
            glue(glue(ARGOS_ST, SUFFIX), _raw)(physaddr, val, tag);
#else
            glue(glue(st, SUFFIX), _raw)((uint8_t *)(long)physaddr, val);
	    glue(ARGOS_MEMMAP_CLR, SUFFIX)((uint8_t *)(long)physaddr);
#endif
        }
    } else {
        /* the page is not in the TLB : fill it */
        tlb_fill(addr, 1, mmu_idx, retaddr);
        goto redo;
    }
}

#endif /* !defined(SOFTMMU_CODE_ACCESS) */

#undef READ_ACCESS_TYPE
#undef DATA_TYPE
#undef SUFFIX
#undef USUFFIX
#undef DATA_SIZE
#undef ADDR_READ

#ifndef ARGOS_SOFTMMU
#define ARGOS_SOFTMMU
#include "softmmu_template.h"
#undef ARGOS_SOFTMMU
#endif

#undef SHIFT
