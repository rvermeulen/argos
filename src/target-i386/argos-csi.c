/* Copyright (c) 2006-2008, Georgios Portokalidis
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
#include <time.h>
#include <stdlib.h>
#include "argos-config.h"
#include "argos-common.h"
#include "cpu.h"
#include "argos-csi.h"
#include "argos-check.h"
#include "argos-memmap.h"
#include "exec-all.h"

#ifndef CONFIG_USER_ONLY

#define LOG_FL_TEMPLATE "argos.csi.%d"
#define LOG_MSG_TEMPLATE "[ARGOS] Log generated <%s>\n"

#define ARGOS_LOG_VERSION    2
#define ARGOS_MBLOCK_VERSION 1
#define ARGOS_NT_MASK        128 //!< Net tracker version mask
#define ARGOS_BE_MASK        64	 //!< Non-arch data are in big-endian

#define ARGOS_ARCH_I386   0
#define ARGOS_ARCH_X86_64 1 

#define PHYS_ADDR_MASK 0xfffff000

static uint64_t as_start_kernel[][2] = { 
	{ 0xc0000000U, 0xffff810000000000ULL }, // Linux kernel
	{ 0x80000000U, 0x0000000080000000ULL },  // Windows 2k kernel
	{ 0x80000000U, 0x0000000080000000ULL },  // Windows XP kernel
};

static uint64_t as_stop_kernel[][2] = { 
	{ 0xffffffffU, 0xffffffffffffffffULL }, // Linux kernel
	{ 0xffffffffU, 0x00000000ffffffffULL },  // Windows 2k kernel
	{ 0xffffffffU, 0x00000000ffffffffULL },  // Windows XP kernel
};

#ifdef TARGET_X86_64
#define FIRST_KERNEL_ADDR(os) (as_start_kernel[(os)][1])
#define LAST_KERNEL_ADDR(os) (as_stop_kernel[(os)][1] - TARGET_PAGE_SIZE + 1)
#define FIRST_USER_ADDR(os) (0x00000000)
#define LAST_USER_ADDR(os) (as_start_kernel[(os)][1] - TARGET_PAGE_SIZE + 1)
#else
#define FIRST_KERNEL_ADDR(os) (as_start_kernel[(os)][0])
#define LAST_KERNEL_ADDR(os) (as_stop_kernel[(os)][0] - TARGET_PAGE_SIZE + 1)
#define FIRST_USER_ADDR(os) (0x00000000)
#define LAST_USER_ADDR(os) (as_start_kernel[(os)][0] - TARGET_PAGE_SIZE + 1)
#endif

// Forensics shellcode

// RID: 62
#define LINUXSC_RID_OFF 62
// Length: 97
#define LINUXSC_LENGTH 97

static char linux_shellcode[] =
"\x81\xec\x00\x01\x00\x00\x89\xe5\x31\xc0\x50\x40\x50\x89\xc3\x40"
"\x50\x89\xe1\xb0\x66\xcd\x80\x89\xc6\x68\x7f\x00\x00\x01\x66\x68"
"\x22\x11\x66\x6a\x02\x89\xe2\x6a\x10\x52\x56\x89\xe1\xb3\x03\x31"
"\xc0\xb0\x66\xcd\x80\x31\xc0\xb0\x14\xcd\x80\x89\xc7\x68\x40\x40"
"\x40\x40\x57\x89\xe2\x31\xc0\x50\x04\x08\x50\x52\x56\x89\xe1\xb3"
"\x09\xb0\x66\xcd\x80\xb0\x25\x89\xfb\x31\xc9\xb1\x13\xcd\x80\xeb"
"\xf4";

// RID: 257
#define WIN32SC_RID_OFF 257
// Length: 293
#define WIN32SC_LENGTH 293

static char win32_shellcode[] =
"\xe8\x56\x00\x00\x00\x53\x55\x56\x57\x8b\x6c\x24\x18\x8b\x45\x3c"
"\x8b\x54\x05\x78\x01\xea\x8b\x4a\x18\x8b\x5a\x20\x01\xeb\xe3\x32"
"\x49\x8b\x34\x8b\x01\xee\x31\xff\xfc\x31\xc0\xac\x38\xe0\x74\x07"
"\xc1\xcf\x0d\x01\xc7\xeb\xf2\x3b\x7c\x24\x14\x75\xe1\x8b\x5a\x24"
"\x01\xeb\x66\x8b\x0c\x4b\x8b\x5a\x1c\x01\xeb\x8b\x04\x8b\x01\xe8"
"\xeb\x02\x31\xc0\x5f\x5e\x5d\x5b\xc2\x08\x00\x5e\x6a\x30\x59\x64"
"\x8b\x19\x8b\x5b\x0c\x8b\x5b\x1c\x8b\x1b\x8b\x5b\x08\x53\x68\x8e"
"\x4e\x0e\xec\xff\xd6\x89\xc7\x81\xec\x00\x01\x00\x00\x57\x56\x53"
"\x89\xe5\xe8\x1f\x00\x00\x00\x90\x01\x00\x00\xb6\x19\x18\xe7\xa4"
"\x19\x70\xe9\xec\xf9\xaa\x60\xd9\x09\xf5\xad\xcb\xed\xfc\x3b\x57"
"\x53\x32\x5f\x33\x32\x00\x5b\x8d\x4b\x18\x51\xff\xd7\x89\xdf\x89"
"\xc3\x8d\x75\x14\x6a\x05\x59\x51\x53\xff\x34\x8f\xff\x55\x04\x59"
"\x89\x04\x8e\xe2\xf2\x2b\x27\x54\xff\x37\xff\x55\x28\x31\xc0\x50"
"\x50\x50\x50\x40\x50\x40\x50\xff\x55\x24\x89\xc7\x68\x7f\x00\x00"
"\x01\x68\x02\x00\x22\x11\x89\xe1\x6a\x10\x51\x57\xff\x55\x20\x59"
"\x59\xff\x75\x00\x68\x02\xfa\x0d\xe6\xff\x55\x04\xff\xd0\x89\xc3"
"\x68\x40\x40\x40\x40\x50\x89\xe1\x6a\x00\x6a\x08\x51\x57\xff\x55"
"\x1c\xff\x75\x00\x68\xb0\x49\x2d\xdb\xff\x55\x04\x68\x30\x75\x00"
"\x00\xff\xd0\xeb\xec";


#define PAGE_OFF_MASK (TARGET_PAGE_SIZE - 1)

// Log headers

struct argos_mblock_hdr_struct {
	uint8_t format;
	uint8_t tainted;
	uint16_t size;
	target_ulong paddr;
	target_ulong vaddr;
} __attribute__((packed));

typedef struct argos_mblock_hdr_struct argos_mblock_hdr_t;


struct argos_log_hdr_struct {
	uint8_t format;
	uint8_t arch;
	uint16_t type;
	uint32_t ts;
	target_ulong reg[CPU_NB_REGS];
	target_ulong rorigin[CPU_NB_REGS];
#ifdef ARGOS_NET_TRACKER
	uint32_t netidx[CPU_NB_REGS];
#endif
	target_ulong eip,
		     eiporigin;
#ifdef ARGOS_NET_TRACKER
uint32_t eipnetidx;
#endif
	target_ulong old_eip;
	target_ulong eflags;
} __attribute__((packed));

typedef struct argos_log_hdr_struct argos_log_hdr_t;


static inline int argos_header_write(FILE *fp, CPUX86State *env, 
		target_ulong new_pc, target_ulong old_pc, int code, 
		argos_rtag_t *eiptag)
{
	int i;
	argos_log_hdr_t hdr;

	hdr.format = ARGOS_LOG_VERSION;
#ifdef ARGOS_NET_TRACKER
	hdr.format |= ARGOS_NT_MASK;
#endif
#ifdef WORDS_BIGENDIAN
	hdr.format |= ARGOS_BE_MASK;
#endif
#ifdef TARGET_X86_64
	hdr.arch = ARGOS_ARCH_X86_64;
#else
	hdr.arch = ARGOS_ARCH_I386;
#endif
	hdr.type = code;
	hdr.ts = time(NULL);
	for (i = 0; i < CPU_NB_REGS; i++) {
		hdr.reg[i] = env->regs[i];
		hdr.rorigin[i] = argos_tag_origin(env->regtags + i);
#ifdef ARGOS_NET_TRACKER
		hdr.netidx[i] = argos_tag_netidx(env->regtags + i);
#endif
	}
	hdr.eip = new_pc;
	hdr.eiporigin = (eiptag)? argos_tag_origin(eiptag) : 0;
	hdr.old_eip = old_pc;
#ifdef ARGOS_NET_TRACKER
	hdr.eipnetidx = (eiptag)? argos_tag_netidx(eiptag) : 0;
#endif
	// TODO: Do i need to incorporate hflags?
	hdr.eflags = env->eflags;

	if (fwrite(&hdr, sizeof(hdr), 1, fp) != 1) {
		perror("Could not write log header - fwrite()");
		return -1;
	}
	return 0;
}

static inline int argos_log_finalize(FILE *fp)
{
	argos_mblock_hdr_t hdr;
	memset(&hdr, 0, sizeof(hdr));
	if (fwrite(&hdr, sizeof(hdr), 1, fp) != 1) {
		perror("Could not finalize log - fwrite()");
		return -1;
	}
	return 0;
}

static inline int
argos_mblock_header_init(argos_mblock_hdr_t *hdr, target_ulong vaddr,
		target_ulong paddr, int tainted)
{
	int j, t;
	unsigned int remainder;

	memset(hdr, 0, sizeof(argos_mblock_hdr_t));
	hdr->format = ARGOS_MBLOCK_VERSION;
#ifdef ARGOS_NET_TRACKER
	if (tainted) hdr->format |= ARGOS_NT_MASK;
#endif
/*
#ifdef WORDS_BIGENDIAN
	hdr->format |= ARGOS_BE_MASK;
#endif
*/
	hdr->vaddr = vaddr;
	hdr->paddr = paddr;
	hdr->tainted = (tainted)? 0x01 : 0x00;

	remainder = TARGET_PAGE_SIZE - (paddr & PAGE_OFF_MASK);
	for (j = 0; j < remainder; j++, paddr++)
	{
		t = argos_memmap_istainted(paddr);
		if ((tainted != 0 && t == 0) || (tainted == 0 && t != 0))
			break;
	}
	hdr->size = j;
	return j;
}

static inline int
argos_mblock_write(FILE *fp, argos_mblock_hdr_t *hdr)
{
	if (fwrite(hdr, sizeof(argos_mblock_hdr_t), 1, fp) != 1)
		goto error;
	if (fwrite(phys_ram_base + hdr->paddr, 1, hdr->size, fp) != hdr->size)
		goto error;
#ifdef ARGOS_NET_TRACKER
	if (hdr->tainted)
	{
		argos_netidx_t *nt = argos_memmap_ntdata(hdr->paddr);
		if (fwrite(nt, 4, hdr->size, fp) != hdr->size)
			goto error;
	}
#endif
	return 0;
error:
	perror("Could not write memory block - fwrite()");
	return -1;
}

static int argos_page_write(FILE *fp, CPUX86State *env, target_ulong pc,
		target_ulong vaddr, target_ulong paddr)
{
	int i = 0, force = 0, tainted;
	argos_mblock_hdr_t hdr;

	if ((pc & TARGET_PAGE_MASK) == vaddr)
		force = 1;
	while (i < TARGET_PAGE_SIZE) {
		tainted = argos_memmap_istainted(paddr + i);
		if (tainted || force) {
			i += argos_mblock_header_init(&hdr, vaddr + i, 
					paddr + i, tainted);
			if (argos_mblock_write(fp, &hdr) != 0)
				return -1;
		}
		else 
			++i;
	}
	return 0;
}

static int 
argos_process_proc(FILE *fp, CPUX86State *env, target_ulong pc, 
		int log, int clean)
{
	target_ulong page_i, page_max, paddr;
	PhysPageDesc *pdesc;

	// Code privilege level 0 (kernel)
	if ((env->hflags & HF_CPL_MASK) == 0) {
		page_i = FIRST_KERNEL_ADDR(argos_os_hint);
		page_max = LAST_KERNEL_ADDR(argos_os_hint);
	} else { // User
		page_i = FIRST_USER_ADDR(argos_os_hint);
		page_max = LAST_USER_ADDR(argos_os_hint);
	}

	do {
		paddr = cpu_get_phys_page_debug(env, page_i);
		if (paddr == -1)
			goto next;
		if (!(pdesc = phys_page_find(paddr >> TARGET_PAGE_BITS)))
			goto next;
		if (log && argos_page_write(fp, env, pc, page_i, 
				pdesc->phys_offset & TARGET_PAGE_MASK) != 0)
			return -1;
		if (clean)
			argos_memmap_clear(pdesc->phys_offset & 
					TARGET_PAGE_MASK, TARGET_PAGE_SIZE);
next:
		page_i += (target_ulong)TARGET_PAGE_SIZE;
	} while (page_i <= page_max && page_i > 0);

	if (clean) {
		int i;

		argos_tag_clear(&env->t0tag);
		argos_tag_clear(&env->t1tag);
		argos_tag_clear(&env->t2tag);

		for (i = 0; i < CPU_NB_REGS; i++)
			argos_tag_clear(env->regtags + i);

		argos_bytemap_reset(env->envmap, ENVMAP_SIZE);
	}
	
	return 0;
}


// Ripped and modified from helper2.c
static target_ulong 
cpu_get_user_ro_page(CPUState *env, target_ulong addr)
{
	uint32_t pte, paddr, page_offset, page_size;
	uint32_t pdpe_addr, pde_addr, pte_addr;
	uint64_t ptep;

	if (!(env->cr[0] & CR0_PG_MASK)) {
		pte = addr;
		page_size = 4096;
		goto return_addr;
	}

	if (env->cr[4] & CR4_PAE_MASK) {
		uint64_t pde, pdpe;

		/* XXX: we only use 32 bit physical addresses */
#ifdef TARGET_X86_64
		if (env->hflags & HF_LMA_MASK) {
			uint32_t pml4e_addr;
			uint64_t pml4e;
			int32_t sext;
			/* test virtual address sign extension */
			sext = (int64_t)addr >> 47;
			if (sext != 0 && sext != -1)
				return -1;
            
			pml4e_addr = ((env->cr[3] & ~0xfff) + 
					(((addr >> 39) & 0x1ff) << 3)) & 
				env->a20_mask;
			pml4e = ldl_phys(pml4e_addr);
			if (!(pml4e & PG_PRESENT_MASK))
				return -1;
			if (!(env->efer & MSR_EFER_NXE) && 
					(pml4e & PG_NX_MASK))
				return -1;
            
			ptep = pml4e ^ PG_NX_MASK;
			pdpe_addr = ((pml4e & PHYS_ADDR_MASK) + 
					(((addr >> 30) & 0x1ff) << 3)) & 
				env->a20_mask;
			pdpe = ldl_phys(pdpe_addr);
			if (!(pdpe & PG_PRESENT_MASK))
				return -1;
		} else /* !(env->hflags & HF_LMA_MASK) */
#endif
		{
			pdpe_addr = ((env->cr[3] & ~0x1f) + 
					((addr >> 30) << 3)) & env->a20_mask;
			pdpe = ldl_phys(pdpe_addr);
			if (!(pdpe & PG_PRESENT_MASK))
				return -1;
		}

		pde_addr = ((pdpe & PHYS_ADDR_MASK) + 
				(((addr >> 21) & 0x1ff) << 3)) & env->a20_mask;
		pde = ldl_phys(pde_addr);
		if (!(pde & PG_PRESENT_MASK))
			return -1;

		if (pde & PG_PSE_MASK) {
			/* 2 MB page */
			page_size = 2048 * 1024;
			pte = pde & ((PHYS_ADDR_MASK & ~(page_size - 1)) | 
					0xfff);
		} else { /* !(pde & PG_PSE_MASK) */
			/* 4 KB page */
			pte_addr = ((pde & PHYS_ADDR_MASK) + 
					(((addr >> 12) & 0x1ff) << 3)) & 
				env->a20_mask;
			pte = ldq_phys(pte_addr);
			if (!(pte & PG_PRESENT_MASK))
				return -1;
			page_size = 4096;
			pte = pte & (PHYS_ADDR_MASK | 0xfff);
		}

	} else { /* !(env->cr[4] & CR4_PAE_MASK) */
		uint32_t pde;

		/* page directory entry */
		pde_addr = ((env->cr[3] & ~0xfff) + ((addr >> 20) & 0xffc)) & 
			env->a20_mask;
		pde = ldl_phys(pde_addr);
		if (!(pde & PG_PRESENT_MASK)) 
			return -1;
		/* if PSE bit is set, then we use a 4MB page */
		if ((pde & PG_PSE_MASK) && (env->cr[4] & CR4_PSE_MASK)) {
			page_size = 4096 * 1024;
			/* align to page_size */ 
			pte = pde & ~( (page_size - 1) & ~0xfff); 	
			ptep = pte;
		} else {
			/* page directory entry */
			pte_addr = ((pde & ~0xfff) + ((addr >> 10) & 0xffc)) & 
				env->a20_mask;
			pte = ldl_phys(pte_addr);
			if (!(pte & PG_PRESENT_MASK))
			    return -1;
			if (!(pte & PG_USER_MASK) || (pte & PG_RW_MASK))
				return -1;
			page_size = 4096;
            }
        }

return_addr:
	pte = pte & env->a20_mask;
	page_offset = (addr & TARGET_PAGE_MASK) & (page_size - 1);
	paddr = (pte & TARGET_PAGE_MASK) + page_offset;
	return paddr;
}

static void 
argos_sc_inject(CPUX86State *env, target_ulong vaddr,
		target_ulong paddr, int rid)
{
	uint8_t *sc_p;
	unsigned int scrid_off, sc_len;

	switch (argos_os_hint) {
		// Win32 systems
		case 1:
		case 2:
			sc_p = win32_shellcode;
			scrid_off = WIN32SC_RID_OFF;
			sc_len = WIN32SC_LENGTH;
			break;
		// Linux and default case
		case 0:
		default:
			sc_p = linux_shellcode;
			scrid_off = LINUXSC_RID_OFF;
			sc_len = LINUXSC_LENGTH;
			break;
	}

	// Place shellcode at the bottom of the page
	cpu_physical_memory_write(paddr + (TARGET_PAGE_SIZE - sc_len), 
			sc_p, sc_len);
	cpu_physical_memory_write(paddr + (TARGET_PAGE_SIZE - sc_len) +
			scrid_off, (uint8_t *)&rid, 4);
	env->eip = vaddr + (TARGET_PAGE_SIZE - sc_len);
	// Clear memory map
	argos_memmap_clear(paddr, TARGET_PAGE_SIZE);
}
#endif

void 
argos_sanitize_process(CPUX86State *env)
{
#ifdef CONFIG_USER_ONLY
	qemu_fprintf(stderr, "forensics currently not supported\n");
#else
	argos_process_proc(NULL, env, 0, 0, 1);
#if 0
	target_ulong page_i, page_max, paddr;

	// Code privilege level 0 (kernel)
	if ((env->hflags & HF_CPL_MASK) == 0) {
		page_i = FIRST_KERNEL_ADDR(argos_os_hint);
		page_max = LAST_KERNEL_ADDR(argos_os_hint);
	} else {
		// User 
		page_i = FIRST_USER_ADDR(argos_os_hint);
		page_max = LAST_USER_ADDR(argos_os_hint);
	}

	do {
		paddr = cpu_get_phys_page_debug(env, page_i);
		if (paddr != -1) 
			argos_memmap_clear(paddr, TARGET_PAGE_SIZE);
		page_i += (target_ulong)TARGET_PAGE_SIZE;
	} while (page_i <= page_max && page_i > 0);
#endif
#endif
}

#define ARGOS_FSC_FAILED "[ARGOS] Injecting forensics code failed."\
	" No appropriate location found\n"
#define ARGOS_FSC_SUCCESS "[ARGOS] Injecting forensics shellcode at "\
				"0x%08x[0x%08x]\n"

void 
argos_forensics(CPUX86State *env, int rid)
{
#ifdef CONFIG_USER_ONLY
	qemu_fprintf(stderr, "forensics currently not supported\n");
#else
	target_ulong page_i, page_max, paddr, last_paddr, last_vaddr;
	PhysPageDesc *pdesc;

	if ((env->hflags & HF_CPL_MASK) == 0) {
		argos_logf("[ARGOS] Forensics shellcode will not be injected - "
				"Attack located in kernel\n");
		return;
	}
	page_i = FIRST_USER_ADDR(argos_os_hint);
	page_max = LAST_USER_ADDR(argos_os_hint);

	last_paddr = last_vaddr = -1;
	do {
		paddr = cpu_get_user_ro_page(env, page_i);
		if (paddr != -1)
			pdesc = phys_page_find(paddr >> TARGET_PAGE_BITS);
		else
			pdesc = NULL;

		if (pdesc) {
			last_paddr = pdesc->phys_offset & TARGET_PAGE_MASK;
			last_vaddr = page_i;
		} else if (last_paddr != -1)
			break;
		page_i += (target_ulong)TARGET_PAGE_SIZE;
	} while (page_i <= page_max && page_i > 0);

	if (last_vaddr == -1) {
		argos_logf(ARGOS_FSC_FAILED);
		return;
	}

	argos_logf(ARGOS_FSC_SUCCESS, last_vaddr, last_paddr);

	argos_sc_inject(env, last_vaddr, last_paddr, rid);
#endif
}

// Log header format
// Version | Arch | Attack type | Timestamp | Registers
// Version =  8 bits, [Net tracker bit][Big endianess bit][Version]
// Arch = ARGOS_ARCH_I386 or ARGOS_ARCH_X86_64
// Attack type = (look in argos_check.h)
// Timestamp = 32 bit timestamp
// Registers = Register contents in the architecture's endianess
int 
argos_csi(CPUX86State *env, target_ulong new_pc, argos_rtag_t *eiptag, 
		target_ulong old_pc, int code)
{
#ifdef CONFIG_USER_ONLY
	qemu_fprintf(stderr, "forensics currently not supported\n");
	return 0;
#else
	FILE *fp;
	int rid;
	char fn[128];

	//rid = rand();
	rid = argos_instance_id;
	snprintf(fn, 128, LOG_FL_TEMPLATE, rid);

	if ((fp = fopen(fn, "wb")) == NULL) {
		perror("Could not create argos log - fopen()");
		return -1;
	}

	if (argos_header_write(fp, env, new_pc, old_pc, code, eiptag) != 0)
		goto cleanup;

	if (argos_process_proc(fp, env, new_pc, 1, 0) != 0)
		goto cleanup;

	if (argos_log_finalize(fp) != 0)
		goto cleanup;
	
	fclose(fp);

	argos_logf(LOG_MSG_TEMPLATE, fn);

	return rid;

cleanup:
	fclose(fp);
	return -1;
#endif
}
