	.file	"disas.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl syminfos
	.bss
	.align 8
	.type	syminfos, @object
	.size	syminfos, 8
syminfos:
	.zero	8
	.text
	.p2align 4,,15
.globl buffer_read_memory
	.type	buffer_read_memory, @function
buffer_read_memory:
.LFB217:
	.file 1 "/home/remco/Projects/Argos/src/disas.c"
	.loc 1 22 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 22 0
	movq	%rsi, %r9
	.loc 1 23 0
	movq	120(%rcx), %rsi
	cmpq	%rdi, %rsi
	ja	.L3
	movslq	128(%rcx),%rax
	movslq	%edx,%r8
	leaq	(%r8,%rdi), %rdx
	leaq	(%rsi,%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L2
.L3:
	.loc 1 26 0
	movl	$5, %eax
	.loc 1 29 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L2:
	.loc 1 27 0
	subq	%rsi, %rdi
	addq	112(%rcx), %rdi
	movq	%r8, %rdx
	movq	%rdi, %rsi
	movq	%r9, %rdi
	call	memcpy
	.loc 1 28 0
	xorl	%eax, %eax
	.loc 1 29 0
	addq	$8, %rsp
	ret
.LFE217:
	.size	buffer_read_memory, .-buffer_read_memory
	.p2align 4,,15
	.type	target_read_memory, @function
target_read_memory:
.LFB218:
	.loc 1 38 0
	pushq	%r13
.LCFI1:
	movl	%edx, %r13d
	pushq	%r12
.LCFI2:
	.loc 1 40 0
	xorl	%r12d, %r12d
	.loc 1 38 0
	pushq	%rbp
.LCFI3:
	pushq	%rbx
.LCFI4:
	subq	$8, %rsp
.LCFI5:
	.loc 1 40 0
	cmpl	%edx, %r12d
	jge	.L16
	movq	%rsi, %rbp
	movl	%edi, %ebx
	.p2align 4,,7
.L14:
.LBB2:
.LBB3:
.LBB4:
	.file 2 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.loc 2 745 0
	movq	cpu_single_env(%rip), %rsi
.LBE4:
	.file 3 "/home/remco/Projects/Argos/src/softmmu_header.h"
	.loc 3 265 0
	movl	%ebx, %edx
.LBB5:
.LBB6:
	.loc 2 746 0
	xorl	%edi, %edi
.LBE6:
.LBE5:
	.loc 3 265 0
	shrl	$12, %edx
	.loc 3 267 0
	movzbl	%dl, %edx 
.LBB7:
.LBB8:
	.loc 2 746 0
	movl	352(%rsi), %eax
.LBE8:
.LBE7:
	.loc 3 267 0
	leaq	(%rdx,%rdx,2), %rdx
.LBB9:
.LBB10:
	.loc 2 746 0
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%dil
.LBE10:
.LBE9:
	.loc 3 267 0
	movslq	%edi,%rcx
	leaq	(%rcx,%rcx), %rax
	addq	%rcx, %rax
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	movl	%ebx, %eax
	andl	$-4096, %eax
	addq	%rsi, %rdx
	cmpl	%eax, 1280(%rdx)
	jne	.L17
	.loc 3 275 0
	mov	%ebx, %eax
	addq	1288(%rdx), %rax
	.file 4 "../cpu-all.h"
	.loc 4 204 0
	movzbl	(%rax), %eax
.L11:
.LBE3:
.LBE2:
	.loc 1 40 0
	incl	%r12d
	.loc 3 257 0
	movb	%al, (%rbp)
	incl	%ebx
	incq	%rbp
	.loc 1 40 0
	cmpl	%r13d, %r12d
	jl	.L14
.L16:
	.loc 1 44 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L17:
.LBB11:
.LBB12:
	.loc 3 272 0
	movl	%edi, %esi
	movl	%ebx, %edi
	call	__ldb_cmmu
	movzbl	%al, %eax
	jmp	.L11
.LBE12:
.LBE11:
.LFE218:
	.size	target_read_memory, .-target_read_memory
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Unknown error %d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Address 0x%lx is out of bounds.\n"
	.text
	.p2align 4,,15
.globl perror_memory
	.type	perror_memory, @function
perror_memory:
.LFB219:
	.loc 1 53 0
	.loc 1 54 0
	cmpl	$5, %edi
	.loc 1 53 0
	movl	%edi, %eax
	movq	%rdx, %rcx
	.loc 1 54 0
	je	.L19
	.loc 1 56 0
	movq	8(%rdx), %rdi
	movl	$.LC0, %esi
	movl	%eax, %edx
	movq	(%rcx), %r11
	xorl	%eax, %eax
	jmp	*%r11
	.p2align 4,,7
.L19:
	.loc 1 60 0
	movq	8(%rdx), %rdi
	xorl	%eax, %eax
	movq	%rsi, %rdx
	movq	(%rcx), %r11
	movl	$.LC1, %esi
	jmp	*%r11
.LFE219:
	.size	perror_memory, .-perror_memory
	.section	.rodata.str1.1
.LC2:
	.string	"0x%lx"
	.text
	.p2align 4,,15
.globl generic_print_address
	.type	generic_print_address, @function
generic_print_address:
.LFB220:
	.loc 1 75 0
	.loc 1 75 0
	movq	%rdi, %rax
	movq	%rsi, %rcx
	.loc 1 76 0
	movq	8(%rsi), %rdi
	movq	%rax, %rdx
	movl	$.LC2, %esi
	xorl	%eax, %eax
	movq	(%rcx), %r11
	jmp	*%r11
.LFE220:
	.size	generic_print_address, .-generic_print_address
	.p2align 4,,15
.globl generic_symbol_at_address
	.type	generic_symbol_at_address, @function
generic_symbol_at_address:
.LFB221:
	.loc 1 85 0
	.loc 1 87 0
	movl	$1, %eax
	ret
.LFE221:
	.size	generic_symbol_at_address, .-generic_symbol_at_address
	.p2align 4,,15
.globl bfd_getl32
	.type	bfd_getl32, @function
bfd_getl32:
.LFB222:
	.loc 1 90 0
	.loc 1 94 0
	movzbq	1(%rdi), %rdx
	.loc 1 93 0
	movzbq	(%rdi), %rax
	.loc 1 94 0
	salq	$8, %rdx
	orq	%rdx, %rax
	.loc 1 95 0
	movzbq	2(%rdi), %rdx
	salq	$16, %rdx
	orq	%rdx, %rax
	.loc 1 96 0
	movzbq	3(%rdi), %rdx
	salq	$24, %rdx
	orq	%rdx, %rax
	.loc 1 98 0
	ret
.LFE222:
	.size	bfd_getl32, .-bfd_getl32
	.p2align 4,,15
.globl bfd_getb32
	.type	bfd_getb32, @function
bfd_getb32:
.LFB223:
	.loc 1 101 0
	.loc 1 104 0
	movzbq	(%rdi), %rax
	.loc 1 105 0
	movzbq	1(%rdi), %rdx
	.loc 1 104 0
	salq	$24, %rax
	.loc 1 105 0
	salq	$16, %rdx
	orq	%rdx, %rax
	.loc 1 106 0
	movzbq	2(%rdi), %rdx
	salq	$8, %rdx
	orq	%rdx, %rax
	.loc 1 107 0
	movzbq	3(%rdi), %rdx
	orq	%rdx, %rax
	.loc 1 109 0
	ret
.LFE223:
	.size	bfd_getb32, .-bfd_getb32
	.p2align 4,,15
.globl bfd_getl16
	.type	bfd_getl16, @function
bfd_getl16:
.LFB224:
	.loc 1 112 0
	.loc 1 116 0
	movzbq	1(%rdi), %rdx
	.loc 1 115 0
	movzbq	(%rdi), %rax
	.loc 1 116 0
	salq	$8, %rdx
	orq	%rdx, %rax
	.loc 1 118 0
	ret
.LFE224:
	.size	bfd_getl16, .-bfd_getl16
	.p2align 4,,15
.globl bfd_getb16
	.type	bfd_getb16, @function
bfd_getb16:
.LFB225:
	.loc 1 121 0
	.loc 1 124 0
	movzbq	(%rdi), %rax
	.loc 1 125 0
	movzbq	1(%rdi), %rdx
	.loc 1 124 0
	salq	$24, %rax
	.loc 1 125 0
	salq	$16, %rdx
	orq	%rdx, %rax
	.loc 1 127 0
	ret
.LFE225:
	.size	bfd_getb16, .-bfd_getb16
	.section	.rodata.str1.1
.LC3:
	.string	"0x%08x:  "
	.text
	.p2align 4,,15
.globl target_disas
	.type	target_disas, @function
target_disas:
.LFB226:
	.loc 1 145 0
	pushq	%r15
.LCFI6:
	.loc 1 154 0
	mov	%esi, %eax
	.loc 1 145 0
	pushq	%r14
.LCFI7:
	pushq	%r13
.LCFI8:
	pushq	%r12
.LCFI9:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI10:
	pushq	%rbx
.LCFI11:
	subq	$184, %rsp
.LCFI12:
	.loc 1 163 0
	cmpl	$2, %ecx
	.loc 1 151 0
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	$fprintf, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$0, 112(%rsp)
	movq	$perror_memory, 88(%rsp)
	movq	$generic_print_address, 96(%rsp)
	movq	$generic_symbol_at_address, 104(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 136(%rsp)
	movl	$2, 140(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 144(%rsp)
	.loc 1 153 0
	movq	$target_read_memory, 80(%rsp)
	.loc 1 154 0
	movq	%rax, 120(%rsp)
	.loc 1 155 0
	movl	%edx, 128(%rsp)
	.loc 1 160 0
	movl	$1, 40(%rsp)
	.loc 1 163 0
	je	.L38
	.loc 1 166 0
	xorl	%eax, %eax
	cmpl	$1, %ecx
	sete	%al
	movq	%rax, 32(%rsp)
.L29:
	.loc 1 217 0
	movl	%esi, %ebx
	.loc 1 169 0
	movl	$print_insn_i386, %r15d
	.loc 1 217 0
	leal	(%rbx,%rdx), %eax
	cmpl	%esi, %eax
	jbe	.L33
	movq	%rsp, %r14
	movl	%eax, %r13d
	.p2align 4,,7
.L36:
	.loc 1 218 0
	movl	%ebx, %edx
	movl	$.LC3, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 219 0
	mov	%ebx, %edi
	movq	%r14, %rsi
	call	*%r15
	.loc 1 232 0
	movq	%r12, %rsi
	.loc 1 219 0
	movl	%eax, %ebp
	.loc 1 232 0
	movl	$10, %edi
	call	fputc
	.loc 1 233 0
	testl	%ebp, %ebp
	js	.L33
	.loc 1 217 0
	addl	%ebp, %ebx
	cmpl	%ebx, %r13d
	ja	.L36
.L33:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L38:
	.loc 1 164 0
	movq	$3, 32(%rsp)
	jmp	.L29
.LFE226:
	.size	target_disas, .-target_disas
	.p2align 4,,15
.globl disas_instr
	.type	disas_instr, @function
disas_instr:
.LFB227:
	.loc 1 240 0
	pushq	%r13
.LCFI13:
	.loc 1 262 0
	movl	$print_insn_i386, %r13d
	.loc 1 240 0
	pushq	%r12
.LCFI14:
	pushq	%rbp
.LCFI15:
	.loc 1 287 0
	leaq	(%rsi,%rdx), %rbp
	.loc 1 240 0
	pushq	%rbx
.LCFI16:
	.loc 1 287 0
	movq	%rsi, %rbx
	.loc 1 240 0
	subq	$184, %rsp
.LCFI17:
	.loc 1 287 0
	cmpq	%rsi, %rbp
	.loc 1 246 0
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	$fprintf, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$buffer_read_memory, 80(%rsp)
	movq	$perror_memory, 88(%rsp)
	movq	$generic_print_address, 96(%rsp)
	movq	$generic_symbol_at_address, 104(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 136(%rsp)
	movl	$2, 140(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 144(%rsp)
	.loc 1 248 0
	movq	%rsi, 112(%rsp)
	.loc 1 249 0
	movq	%rsi, 120(%rsp)
	.loc 1 250 0
	movl	%edx, 128(%rsp)
	.loc 1 255 0
	movl	$1, 40(%rsp)
	.loc 1 261 0
	movq	$3, 32(%rsp)
	.loc 1 287 0
	jbe	.L41
	movq	%rsp, %r12
	.p2align 4,,7
.L44:
	.loc 1 293 0
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	*%r13
	.loc 1 294 0
	testl	%eax, %eax
	js	.L41
	.loc 1 287 0
	cltq
	addq	%rax, %rbx
	cmpq	%rbx, %rbp
	ja	.L44
.L41:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE227:
	.size	disas_instr, .-disas_instr
	.section	.rodata.str1.1
.LC4:
	.string	"0x%08lx:  "
	.text
	.p2align 4,,15
.globl disas
	.type	disas, @function
disas:
.LFB228:
	.loc 1 301 0
	pushq	%r15
.LCFI18:
	.loc 1 323 0
	movl	$print_insn_i386, %r15d
	.loc 1 301 0
	pushq	%r14
.LCFI19:
	pushq	%r13
.LCFI20:
	.loc 1 348 0
	leaq	(%rsi,%rdx), %r13
	.loc 1 301 0
	pushq	%r12
.LCFI21:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI22:
	pushq	%rbx
.LCFI23:
	.loc 1 348 0
	movq	%rsi, %rbx
	.loc 1 301 0
	subq	$184, %rsp
.LCFI24:
	.loc 1 348 0
	cmpq	%rsi, %r13
	.loc 1 307 0
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	$fprintf, (%rsp)
	movq	%rdi, 8(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$buffer_read_memory, 80(%rsp)
	movq	$perror_memory, 88(%rsp)
	movq	$generic_print_address, 96(%rsp)
	movq	$generic_symbol_at_address, 104(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 136(%rsp)
	movl	$2, 140(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 144(%rsp)
	.loc 1 309 0
	movq	%rsi, 112(%rsp)
	.loc 1 310 0
	movq	%rsi, 120(%rsp)
	.loc 1 311 0
	movl	%edx, 128(%rsp)
	.loc 1 316 0
	movl	$1, 40(%rsp)
	.loc 1 322 0
	movq	$3, 32(%rsp)
	.loc 1 348 0
	jbe	.L48
	movq	%rsp, %r14
	.p2align 4,,7
.L51:
	.loc 1 349 0
	movq	%rbx, %rdx
	movl	$.LC4, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 355 0
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	*%r15
	.loc 1 356 0
	movq	%r12, %rsi
	.loc 1 355 0
	movl	%eax, %ebp
	.loc 1 356 0
	movl	$10, %edi
	call	fputc
	.loc 1 357 0
	testl	%ebp, %ebp
	js	.L48
	.loc 1 348 0
	movslq	%ebp,%rax
	addq	%rax, %rbx
	cmpq	%rbx, %r13
	ja	.L51
.L48:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE228:
	.size	disas, .-disas
	.section	.rodata.str1.1
.LC5:
	.string	""
	.text
	.p2align 4,,15
.globl lookup_symbol
	.type	lookup_symbol, @function
lookup_symbol:
.LFB229:
	.loc 1 364 0
	.loc 1 371 0
	movq	syminfos(%rip), %rsi
	testq	%rsi, %rsi
	je	.L66
	.p2align 4,,7
.L70:
	.loc 1 373 0
	movl	(%rsi), %r8d
	xorl	%ecx, %ecx
	.loc 1 372 0
	movq	8(%rsi), %rax
	.loc 1 373 0
	cmpl	$0, %r8d
	jbe	.L68
	movq	%rax, %rdx
	jmp	.L63
	.p2align 4,,7
.L59:
	incl	%ecx
	addq	$16, %rdx
	cmpl	%ecx, %r8d
	jbe	.L68
.L63:
	.loc 1 374 0
	movzwl	14(%rdx), %eax
	decl	%eax
	cmpw	$-258, %ax
	ja	.L59
	.loc 1 378 0
	movzbl	12(%rdx), %eax
	andl	$15, %eax
	cmpl	$2, %eax
	jne	.L59
	.loc 1 381 0
	movl	4(%rdx), %eax
	.loc 1 386 0
	cmpl	%eax, %edi
	jb	.L59
	addl	8(%rdx), %eax
	cmpl	%edi, %eax
	jbe	.L59
	.loc 1 388 0
	mov	(%rdx), %eax
	addq	16(%rsi), %rax
	ret
	.p2align 4,,7
.L68:
	.loc 1 371 0
	movq	24(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.L70
.L66:
	.loc 1 391 0
	movl	$.LC5, %eax
	.loc 1 392 0
	ret
.LFE229:
	.size	lookup_symbol, .-lookup_symbol
	.p2align 4,,15
	.type	monitor_read_memory, @function
monitor_read_memory:
.LFB230:
	.loc 1 408 0
	subq	$8, %rsp
.LCFI25:
	.loc 1 409 0
	movl	monitor_disas_is_physical(%rip), %eax
	testl	%eax, %eax
	je	.L72
	.loc 1 410 0
	xorl	%ecx, %ecx
	call	cpu_physical_memory_rw
	.loc 1 415 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L72:
	.loc 1 412 0
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	%edi, %esi
	movq	monitor_disas_env(%rip), %rdi
	xorl	%r8d, %r8d
	call	cpu_memory_rw_debug
	.loc 1 415 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.LFE230:
	.size	monitor_read_memory, .-monitor_read_memory
	.p2align 4,,15
	.type	monitor_fprintf, @function
monitor_fprintf:
.LFB231:
	.loc 1 418 0
	subq	$216, %rsp
.LCFI26:
	.loc 1 418 0
	movq	%rsi, %rdi
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 56(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L75, %edx
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 421 0
	movq	%rsp, %rsi
	.loc 1 418 0
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L75:
	.loc 1 420 0
	leaq	224(%rsp), %rax
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 421 0
	call	term_vprintf
	.loc 1 424 0
	xorl	%eax, %eax
	addq	$216, %rsp
	ret
.LFE231:
	.size	monitor_fprintf, .-monitor_fprintf
	.section	.rodata.str1.1
.LC6:
	.string	"\n"
	.text
	.p2align 4,,15
.globl monitor_disas
	.type	monitor_disas, @function
monitor_disas:
.LFB232:
	.loc 1 428 0
	pushq	%r15
.LCFI27:
	movl	%r8d, %eax
	movl	%edx, %r15d
	pushq	%r14
.LCFI28:
	pushq	%r13
.LCFI29:
	pushq	%r12
.LCFI30:
	pushq	%rbp
.LCFI31:
	movl	%esi, %ebp
	pushq	%rbx
.LCFI32:
	.loc 1 439 0
	mov	%esi, %ebx
	.loc 1 428 0
	subq	$184, %rsp
.LCFI33:
	.loc 1 447 0
	cmpl	$2, %r8d
	.loc 1 435 0
	movq	%rdi, monitor_disas_env(%rip)
	.loc 1 433 0
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	$monitor_fprintf, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$0, 112(%rsp)
	movl	$0, 128(%rsp)
	movq	$perror_memory, 88(%rsp)
	movq	$generic_print_address, 96(%rsp)
	movq	$generic_symbol_at_address, 104(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 136(%rsp)
	movl	$2, 140(%rsp)
	movq	$0, 168(%rsp)
	movb	$0, 144(%rsp)
	.loc 1 436 0
	movl	%ecx, monitor_disas_is_physical(%rip)
	.loc 1 437 0
	movq	$monitor_read_memory, 80(%rsp)
	.loc 1 439 0
	movq	%rbx, 120(%rsp)
	.loc 1 444 0
	movl	$1, 40(%rsp)
	.loc 1 447 0
	je	.L88
	.loc 1 450 0
	decl	%eax
	sete	%al
	movzbl	%al, %eax 
	movq	%rax, 32(%rsp)
.L78:
	.loc 1 484 0
	xorl	%r12d, %r12d
	.loc 1 453 0
	movl	$print_insn_i386, %r14d
	movq	%rsp, %r13
	.loc 1 484 0
	cmpl	%r15d, %r12d
	jl	.L85
	jmp	.L82
	.p2align 4,,7
.L89:
	incl	%r12d
	.loc 1 490 0
	addl	%ebx, %ebp
	.loc 1 484 0
	cmpl	%r15d, %r12d
	jge	.L82
	mov	%ebp, %ebx
.L85:
	.loc 1 485 0
	xorl	%eax, %eax
	movl	%ebp, %esi
	movl	$.LC3, %edi
	call	term_printf
	.loc 1 486 0
	movq	%rbx, %rdi
	movq	%r13, %rsi
	call	*%r14
	.loc 1 487 0
	movl	$.LC6, %edi
	.loc 1 486 0
	movl	%eax, %ebx
	.loc 1 487 0
	xorl	%eax, %eax
	call	term_printf
	.loc 1 488 0
	testl	%ebx, %ebx
	jns	.L89
	.p2align 4,,7
.L82:
	.loc 1 484 0
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L88:
	.loc 1 448 0
	movq	$3, 32(%rsp)
	jmp	.L78
.LFE232:
	.size	monitor_disas, .-monitor_disas
	.local	monitor_disas_is_physical
	.comm	monitor_disas_is_physical,4,4
	.local	monitor_disas_env
	.comm	monitor_disas_env,8,8
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI0-.LFB217
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI1-.LFB218
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI6-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0xf0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI13-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI18-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.byte	0x4
	.long	.LCFI25-.LFB230
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI26-.LFB231
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.byte	0x4
	.long	.LCFI27-.LFB232
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE30:
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI0-.LFB217
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI1-.LFB218
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI6-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0xf0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI13-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI18-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.byte	0x4
	.long	.LCFI25-.LFB230
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.byte	0x4
	.long	.LCFI26-.LFB231
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.byte	0x4
	.long	.LCFI27-.LFB232
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0xf0
	.align 8
.LEFDE31:
	.file 5 "/home/remco/Projects/Argos/src/dis-asm.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 11 "../cpu-defs.h"
	.file 12 "../argos-tag.h"
	.file 13 "../argos.h"
	.file 14 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 15 "/usr/include/sys/types.h"
	.file 16 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 17 "/usr/include/setjmp.h"
	.file 18 "/usr/include/bits/setjmp.h"
	.file 19 "/usr/include/bits/sigset.h"
	.file 20 "/home/remco/Projects/Argos/src/exec-all.h"
	.file 21 "/home/remco/Projects/Argos/src/elf.h"
	.file 22 "/home/remco/Projects/Argos/src/disas.h"
	.file 23 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 24 "<internal>"
	.file 25 "/home/remco/Projects/Argos/src/argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1d37
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF380
	.byte	0x1
	.long	.LASF381
	.long	.LASF382
	.uleb128 0x2
	.long	.LASF9
	.byte	0xa
	.byte	0xd5
	.long	0x38
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF2
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF3
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x6
	.long	0x74
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.long	.LASF10
	.byte	0x9
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x9
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0xf
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xf
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x13
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x13
	.byte	0x1f
	.long	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xeb
	.long	0x38
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x13
	.byte	0x20
	.long	0xc4
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0x7
	.byte	0x31
	.long	0x108
	.uleb128 0xc
	.long	0x2d4
	.long	.LASF48
	.byte	0xd8
	.byte	0x7
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.value	0x122
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.value	0x124
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0x8
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0x8
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0x8
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0x8
	.value	0x132
	.long	0x37e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0x8
	.value	0x136
	.long	0x38e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x8
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0x8
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x8
	.value	0x150
	.long	0x394
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x17
	.byte	0x2b
	.long	0x2df
	.uleb128 0xa
	.long	0x2ef
	.long	0x2ef
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x334
	.long	.LASF49
	.byte	0x18
	.byte	0x18
	.byte	0x0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x18
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x18
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF52
	.byte	0x18
	.byte	0x0
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x18
	.byte	0x0
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x8
	.byte	0xb4
	.uleb128 0xc
	.long	0x372
	.long	.LASF55
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.byte	0xbb
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x8
	.byte	0xbc
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF58
	.byte	0x8
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x33b
	.uleb128 0x5
	.byte	0x8
	.long	0x108
	.uleb128 0xa
	.long	0x38e
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x334
	.uleb128 0xa
	.long	0x3a4
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0x50
	.long	0x2d4
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.string	"PTR"
	.byte	0x5
	.byte	0x12
	.long	0xa6
	.uleb128 0x2
	.long	.LASF64
	.byte	0x5
	.byte	0x13
	.long	0x3d0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x5
	.byte	0x15
	.long	0x3af
	.uleb128 0x10
	.long	0x469
	.long	.LASF82
	.byte	0x4
	.byte	0x5
	.byte	0x1a
	.uleb128 0x11
	.long	.LASF66
	.sleb128 0
	.uleb128 0x11
	.long	.LASF67
	.sleb128 1
	.uleb128 0x11
	.long	.LASF68
	.sleb128 2
	.uleb128 0x11
	.long	.LASF69
	.sleb128 3
	.uleb128 0x11
	.long	.LASF70
	.sleb128 4
	.uleb128 0x11
	.long	.LASF71
	.sleb128 5
	.uleb128 0x11
	.long	.LASF72
	.sleb128 6
	.uleb128 0x11
	.long	.LASF73
	.sleb128 7
	.uleb128 0x11
	.long	.LASF74
	.sleb128 8
	.uleb128 0x11
	.long	.LASF75
	.sleb128 9
	.uleb128 0x11
	.long	.LASF76
	.sleb128 10
	.uleb128 0x11
	.long	.LASF77
	.sleb128 11
	.uleb128 0x11
	.long	.LASF78
	.sleb128 12
	.uleb128 0x11
	.long	.LASF79
	.sleb128 13
	.uleb128 0x11
	.long	.LASF80
	.sleb128 14
	.uleb128 0x11
	.long	.LASF81
	.sleb128 15
	.byte	0x0
	.uleb128 0x10
	.long	0x488
	.long	.LASF83
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.uleb128 0x11
	.long	.LASF84
	.sleb128 0
	.uleb128 0x11
	.long	.LASF85
	.sleb128 1
	.uleb128 0x11
	.long	.LASF86
	.sleb128 2
	.byte	0x0
	.uleb128 0x10
	.long	0x573
	.long	.LASF87
	.byte	0x4
	.byte	0x5
	.byte	0x30
	.uleb128 0x11
	.long	.LASF88
	.sleb128 0
	.uleb128 0x11
	.long	.LASF89
	.sleb128 1
	.uleb128 0x11
	.long	.LASF90
	.sleb128 2
	.uleb128 0x11
	.long	.LASF91
	.sleb128 3
	.uleb128 0x11
	.long	.LASF92
	.sleb128 4
	.uleb128 0x11
	.long	.LASF93
	.sleb128 5
	.uleb128 0x11
	.long	.LASF94
	.sleb128 6
	.uleb128 0x11
	.long	.LASF95
	.sleb128 7
	.uleb128 0x11
	.long	.LASF96
	.sleb128 8
	.uleb128 0x11
	.long	.LASF97
	.sleb128 9
	.uleb128 0x11
	.long	.LASF98
	.sleb128 10
	.uleb128 0x11
	.long	.LASF99
	.sleb128 11
	.uleb128 0x11
	.long	.LASF100
	.sleb128 12
	.uleb128 0x11
	.long	.LASF101
	.sleb128 13
	.uleb128 0x11
	.long	.LASF102
	.sleb128 14
	.uleb128 0x11
	.long	.LASF103
	.sleb128 15
	.uleb128 0x11
	.long	.LASF104
	.sleb128 16
	.uleb128 0x11
	.long	.LASF105
	.sleb128 17
	.uleb128 0x11
	.long	.LASF106
	.sleb128 18
	.uleb128 0x11
	.long	.LASF107
	.sleb128 19
	.uleb128 0x11
	.long	.LASF108
	.sleb128 20
	.uleb128 0x11
	.long	.LASF109
	.sleb128 21
	.uleb128 0x11
	.long	.LASF110
	.sleb128 22
	.uleb128 0x11
	.long	.LASF111
	.sleb128 23
	.uleb128 0x11
	.long	.LASF112
	.sleb128 24
	.uleb128 0x11
	.long	.LASF113
	.sleb128 25
	.uleb128 0x11
	.long	.LASF114
	.sleb128 26
	.uleb128 0x11
	.long	.LASF115
	.sleb128 27
	.uleb128 0x11
	.long	.LASF116
	.sleb128 28
	.uleb128 0x11
	.long	.LASF117
	.sleb128 29
	.uleb128 0x11
	.long	.LASF118
	.sleb128 30
	.uleb128 0x11
	.long	.LASF119
	.sleb128 31
	.uleb128 0x11
	.long	.LASF120
	.sleb128 32
	.uleb128 0x11
	.long	.LASF121
	.sleb128 33
	.uleb128 0x11
	.long	.LASF122
	.sleb128 34
	.uleb128 0x11
	.long	.LASF123
	.sleb128 35
	.uleb128 0x11
	.long	.LASF124
	.sleb128 36
	.byte	0x0
	.uleb128 0x12
	.long	0x58e
	.byte	0x8
	.byte	0x5
	.byte	0xe3
	.uleb128 0x13
	.string	"p"
	.byte	0x5
	.byte	0xe1
	.long	0x3db
	.uleb128 0x13
	.string	"i"
	.byte	0x5
	.byte	0xe2
	.long	0x3e6
	.byte	0x0
	.uleb128 0xc
	.long	0x5b7
	.long	.LASF125
	.byte	0x10
	.byte	0x5
	.byte	0xdd
	.uleb128 0x9
	.long	.LASF126
	.byte	0x5
	.byte	0xde
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF127
	.byte	0x5
	.byte	0xe3
	.long	0x573
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF128
	.byte	0x5
	.byte	0xe4
	.long	0x58e
	.uleb128 0x2
	.long	.LASF129
	.byte	0x5
	.byte	0xe6
	.long	0x5cd
	.uleb128 0x5
	.byte	0x8
	.long	0x5d3
	.uleb128 0x14
	.long	0x5e9
	.byte	0x1
	.long	0x3f
	.uleb128 0x15
	.long	0x5e9
	.uleb128 0x15
	.long	0x69
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0x10
	.long	0x62c
	.long	.LASF130
	.byte	0x4
	.byte	0x5
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF131
	.sleb128 0
	.uleb128 0x11
	.long	.LASF132
	.sleb128 1
	.uleb128 0x11
	.long	.LASF133
	.sleb128 2
	.uleb128 0x11
	.long	.LASF134
	.sleb128 3
	.uleb128 0x11
	.long	.LASF135
	.sleb128 4
	.uleb128 0x11
	.long	.LASF136
	.sleb128 5
	.uleb128 0x11
	.long	.LASF137
	.sleb128 6
	.uleb128 0x11
	.long	.LASF138
	.sleb128 7
	.byte	0x0
	.uleb128 0xc
	.long	0x7e6
	.long	.LASF139
	.byte	0xb0
	.byte	0x5
	.byte	0xfd
	.uleb128 0x9
	.long	.LASF140
	.byte	0x5
	.byte	0xfe
	.long	0x5c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x5
	.byte	0xff
	.long	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF142
	.byte	0x5
	.value	0x100
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF143
	.byte	0x5
	.value	0x106
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF144
	.byte	0x5
	.value	0x108
	.long	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF145
	.byte	0x5
	.value	0x10a
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF146
	.byte	0x5
	.value	0x10c
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF147
	.byte	0x5
	.value	0x113
	.long	0x7e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF148
	.byte	0x5
	.value	0x115
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF149
	.byte	0x5
	.value	0x11a
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF150
	.byte	0x5
	.value	0x11c
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF151
	.byte	0x5
	.value	0x124
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF152
	.byte	0x5
	.value	0x12c
	.long	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF153
	.byte	0x5
	.value	0x130
	.long	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF154
	.byte	0x5
	.value	0x13a
	.long	0x86b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF155
	.byte	0x5
	.value	0x13d
	.long	0x811
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF156
	.byte	0x5
	.value	0x13e
	.long	0x3e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF157
	.byte	0x5
	.value	0x13f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF158
	.byte	0x5
	.value	0x145
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.long	.LASF159
	.byte	0x5
	.value	0x14c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF160
	.byte	0x5
	.value	0x14d
	.long	0x469
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.long	.LASF161
	.byte	0x5
	.value	0x156
	.long	0x74
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF162
	.byte	0x5
	.value	0x157
	.long	0x74
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0xd
	.long	.LASF163
	.byte	0x5
	.value	0x159
	.long	0x74
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xd
	.long	.LASF164
	.byte	0x5
	.value	0x15a
	.long	0x5ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.long	.LASF165
	.byte	0x5
	.value	0x15b
	.long	0x3e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF166
	.byte	0x5
	.value	0x15d
	.long	0x3e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x5
	.value	0x160
	.long	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7ec
	.uleb128 0x5
	.byte	0x8
	.long	0x5b7
	.uleb128 0x14
	.long	0x811
	.byte	0x1
	.long	0x3f
	.uleb128 0x15
	.long	0x3e6
	.uleb128 0x15
	.long	0x811
	.uleb128 0x15
	.long	0x3f
	.uleb128 0x15
	.long	0x817
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3f1
	.uleb128 0x5
	.byte	0x8
	.long	0x62c
	.uleb128 0x5
	.byte	0x8
	.long	0x7f2
	.uleb128 0x17
	.long	0x839
	.byte	0x1
	.uleb128 0x15
	.long	0x3f
	.uleb128 0x15
	.long	0x3e6
	.uleb128 0x15
	.long	0x817
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x823
	.uleb128 0x17
	.long	0x850
	.byte	0x1
	.uleb128 0x15
	.long	0x3e6
	.uleb128 0x15
	.long	0x817
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x83f
	.uleb128 0x14
	.long	0x86b
	.byte	0x1
	.long	0x3f
	.uleb128 0x15
	.long	0x3e6
	.uleb128 0x15
	.long	0x817
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x856
	.uleb128 0x18
	.long	.LASF139
	.byte	0x5
	.value	0x162
	.long	0x62c
	.uleb128 0x5
	.byte	0x8
	.long	0x883
	.uleb128 0x14
	.long	0x898
	.byte	0x1
	.long	0x3f
	.uleb128 0x15
	.long	0x3e6
	.uleb128 0x15
	.long	0x898
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x871
	.uleb128 0x2
	.long	.LASF168
	.byte	0x15
	.byte	0x7
	.long	0x3c5
	.uleb128 0x2
	.long	.LASF169
	.byte	0x15
	.byte	0x8
	.long	0x3ba
	.uleb128 0x2
	.long	.LASF170
	.byte	0x15
	.byte	0xb
	.long	0x3c5
	.uleb128 0x19
	.long	0x927
	.long	.LASF171
	.byte	0x10
	.byte	0x15
	.value	0x39e
	.uleb128 0xd
	.long	.LASF172
	.byte	0x15
	.value	0x39f
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x15
	.value	0x3a0
	.long	0x89e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF174
	.byte	0x15
	.value	0x3a1
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x15
	.value	0x3a2
	.long	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF176
	.byte	0x15
	.value	0x3a3
	.long	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.long	.LASF177
	.byte	0x15
	.value	0x3a4
	.long	0x8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0x18
	.long	.LASF178
	.byte	0x15
	.value	0x3a5
	.long	0x8bf
	.uleb128 0x2
	.long	.LASF179
	.byte	0x12
	.byte	0x20
	.long	0x93e
	.uleb128 0xa
	.long	0x94e
	.long	0x4d
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x985
	.long	.LASF180
	.byte	0xc8
	.byte	0x11
	.byte	0x24
	.uleb128 0x9
	.long	.LASF181
	.byte	0x11
	.byte	0x29
	.long	0x933
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF182
	.byte	0x11
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF183
	.byte	0x11
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF184
	.byte	0x11
	.byte	0x31
	.long	0x990
	.uleb128 0xa
	.long	0x9a0
	.long	0x94e
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF185
	.byte	0xb
	.byte	0x31
	.long	0x3c5
	.uleb128 0x2
	.long	.LASF186
	.byte	0xb
	.byte	0x49
	.long	0x3d0
	.uleb128 0xc
	.long	0x9fb
	.long	.LASF187
	.byte	0x18
	.byte	0xb
	.byte	0x69
	.uleb128 0x9
	.long	.LASF188
	.byte	0xb
	.byte	0x70
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF189
	.byte	0xb
	.byte	0x71
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF190
	.byte	0xb
	.byte	0x72
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF191
	.byte	0xb
	.byte	0x74
	.long	0x9ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF187
	.byte	0xb
	.byte	0x75
	.long	0x9b6
	.uleb128 0x3
	.long	.LASF192
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF193
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF194
	.byte	0x10
	.byte	0x3b
	.long	0xa06
	.uleb128 0x2
	.long	.LASF195
	.byte	0x10
	.byte	0x3c
	.long	0xa0d
	.uleb128 0x2
	.long	.LASF196
	.byte	0x10
	.byte	0x3e
	.long	0xa35
	.uleb128 0x3
	.long	.LASF197
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0xa65
	.long	.LASF198
	.byte	0x2
	.byte	0x10
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF199
	.byte	0x10
	.byte	0x6e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF200
	.byte	0x10
	.byte	0x70
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF198
	.byte	0x10
	.byte	0x72
	.long	0xa3c
	.uleb128 0x18
	.long	.LASF201
	.byte	0x2
	.value	0x198
	.long	0xa2a
	.uleb128 0x19
	.long	0xac6
	.long	.LASF202
	.byte	0x10
	.byte	0x2
	.value	0x19d
	.uleb128 0xd
	.long	.LASF203
	.byte	0x2
	.value	0x19e
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF204
	.byte	0x2
	.value	0x19f
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF205
	.byte	0x2
	.value	0x1a0
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF149
	.byte	0x2
	.value	0x1a1
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x18
	.long	.LASF202
	.byte	0x2
	.value	0x1a2
	.long	0xa7c
	.uleb128 0x1a
	.long	0xb1e
	.byte	0x10
	.byte	0x2
	.value	0x1ab
	.uleb128 0x1b
	.string	"_b"
	.byte	0x2
	.value	0x1a5
	.long	0xb1e
	.uleb128 0x1b
	.string	"_w"
	.byte	0x2
	.value	0x1a6
	.long	0xb2e
	.uleb128 0x1b
	.string	"_l"
	.byte	0x2
	.value	0x1a7
	.long	0xb3e
	.uleb128 0x1b
	.string	"_q"
	.byte	0x2
	.value	0x1a8
	.long	0xb4e
	.uleb128 0x1b
	.string	"_s"
	.byte	0x2
	.value	0x1a9
	.long	0xb5e
	.uleb128 0x1b
	.string	"_d"
	.byte	0x2
	.value	0x1aa
	.long	0xb6e
	.byte	0x0
	.uleb128 0xa
	.long	0xb2e
	.long	0x3af
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0xb3e
	.long	0x3ba
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xb4e
	.long	0x3c5
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0xb5e
	.long	0x3d0
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0xb6e
	.long	0xa14
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0xb7e
	.long	0xa1f
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x18
	.long	.LASF206
	.byte	0x2
	.value	0x1ab
	.long	0xad2
	.uleb128 0x1a
	.long	0xbbf
	.byte	0x8
	.byte	0x2
	.value	0x1b2
	.uleb128 0x1b
	.string	"_b"
	.byte	0x2
	.value	0x1ae
	.long	0xbbf
	.uleb128 0x1b
	.string	"_w"
	.byte	0x2
	.value	0x1af
	.long	0xbcf
	.uleb128 0x1b
	.string	"_l"
	.byte	0x2
	.value	0x1b0
	.long	0xbdf
	.uleb128 0x1b
	.string	"q"
	.byte	0x2
	.value	0x1b1
	.long	0x3d0
	.byte	0x0
	.uleb128 0xa
	.long	0xbcf
	.long	0x3af
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xbdf
	.long	0x3ba
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0xbef
	.long	0x3c5
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	.LASF207
	.byte	0x2
	.value	0x1b2
	.long	0xb8a
	.uleb128 0x2
	.long	.LASF208
	.byte	0xd
	.byte	0x2f
	.long	0x3c5
	.uleb128 0x2
	.long	.LASF209
	.byte	0xd
	.byte	0x34
	.long	0x3c5
	.uleb128 0x2
	.long	.LASF210
	.byte	0xd
	.byte	0x35
	.long	0xc06
	.uleb128 0xc
	.long	0xc45
	.long	.LASF211
	.byte	0x8
	.byte	0xc
	.byte	0x37
	.uleb128 0x9
	.long	.LASF212
	.byte	0xc
	.byte	0x38
	.long	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF213
	.byte	0xc
	.byte	0x39
	.long	0xc06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF214
	.byte	0xc
	.byte	0x3d
	.long	0xc1c
	.uleb128 0xc
	.long	0xdc5
	.long	.LASF215
	.byte	0xd0
	.byte	0xe
	.byte	0x36
	.uleb128 0x9
	.long	.LASF216
	.byte	0xe
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF217
	.byte	0xe
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.string	"cr3"
	.byte	0xe
	.byte	0x3d
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF218
	.byte	0xe
	.byte	0x3f
	.long	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF219
	.byte	0xe
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF220
	.byte	0xe
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF221
	.byte	0xe
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF222
	.byte	0xe
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF223
	.byte	0xe
	.byte	0x4a
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF224
	.byte	0xe
	.byte	0x4b
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF225
	.byte	0xe
	.byte	0x4c
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF226
	.byte	0xe
	.byte	0x4e
	.long	0xdc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF227
	.byte	0xe
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF228
	.byte	0xe
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF229
	.byte	0xe
	.byte	0x54
	.long	0xdd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF230
	.byte	0xe
	.byte	0x56
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF231
	.byte	0xe
	.byte	0x58
	.long	0xde5
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF232
	.byte	0xe
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF233
	.byte	0xe
	.byte	0x5c
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF234
	.byte	0xe
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF235
	.byte	0xe
	.byte	0x60
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF236
	.byte	0xe
	.byte	0x62
	.long	0xde5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF237
	.byte	0xe
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF238
	.byte	0xe
	.byte	0x66
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF239
	.byte	0xe
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0xa
	.long	0xdd5
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0xde5
	.long	0xc06
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc06
	.uleb128 0x2
	.long	.LASF240
	.byte	0xe
	.byte	0x69
	.long	0xc50
	.uleb128 0x1a
	.long	0xe16
	.byte	0x10
	.byte	0x2
	.value	0x20f
	.uleb128 0x1b
	.string	"d"
	.byte	0x2
	.value	0x20a
	.long	0xa70
	.uleb128 0x1b
	.string	"mmx"
	.byte	0x2
	.value	0x20e
	.long	0xbef
	.byte	0x0
	.uleb128 0x1a
	.long	0xe4c
	.byte	0x8
	.byte	0x2
	.value	0x219
	.uleb128 0x1b
	.string	"f"
	.byte	0x2
	.value	0x215
	.long	0xa06
	.uleb128 0x1b
	.string	"d"
	.byte	0x2
	.value	0x216
	.long	0xa0d
	.uleb128 0x1b
	.string	"i32"
	.byte	0x2
	.value	0x217
	.long	0x3f
	.uleb128 0x1b
	.string	"i64"
	.byte	0x2
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x1d
	.long	0xe74
	.byte	0x10
	.byte	0x2
	.value	0x246
	.uleb128 0xd
	.long	.LASF241
	.byte	0x2
	.value	0x246
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF191
	.byte	0x2
	.value	0x246
	.long	0x9ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1e
	.long	0x1410
	.long	.LASF242
	.value	0xb820
	.byte	0x2
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF243
	.byte	0x2
	.value	0x1df
	.long	0x1410
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"eip"
	.byte	0x2
	.value	0x1e0
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF244
	.byte	0x2
	.value	0x1e1
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF245
	.byte	0x2
	.value	0x1e6
	.long	0xc45
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF246
	.byte	0x2
	.value	0x1e6
	.long	0xc45
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF247
	.byte	0x2
	.value	0x1e6
	.long	0xc45
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF248
	.byte	0x2
	.value	0x1e7
	.long	0x1420
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF249
	.byte	0x2
	.value	0x1e9
	.long	0xdeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF250
	.byte	0x2
	.value	0x1ec
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF251
	.byte	0x2
	.value	0x1ed
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF252
	.byte	0x2
	.value	0x1ee
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x1f
	.string	"df"
	.byte	0x2
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF253
	.byte	0x2
	.value	0x1f0
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF254
	.byte	0x2
	.value	0x1f3
	.long	0x1430
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x1f
	.string	"ldt"
	.byte	0x2
	.value	0x1f4
	.long	0xac6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x1f
	.string	"tr"
	.byte	0x2
	.value	0x1f5
	.long	0xac6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x1f
	.string	"gdt"
	.byte	0x2
	.value	0x1f6
	.long	0xac6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x1f
	.string	"idt"
	.byte	0x2
	.value	0x1f7
	.long	0xac6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x1f
	.string	"cr"
	.byte	0x2
	.value	0x1f9
	.long	0x1440
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF255
	.byte	0x2
	.value	0x1fa
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF256
	.byte	0x2
	.value	0x201
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF257
	.byte	0x2
	.value	0x202
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF258
	.byte	0x2
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF259
	.byte	0x2
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF260
	.byte	0x2
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF261
	.byte	0x2
	.value	0x207
	.long	0xbbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF262
	.byte	0x2
	.value	0x20f
	.long	0x1450
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF263
	.byte	0x2
	.value	0x212
	.long	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x1f
	.string	"ft0"
	.byte	0x2
	.value	0x213
	.long	0xa70
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF264
	.byte	0x2
	.value	0x219
	.long	0xe16
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF265
	.byte	0x2
	.value	0x21b
	.long	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF266
	.byte	0x2
	.value	0x21c
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF267
	.byte	0x2
	.value	0x21d
	.long	0x1460
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF268
	.byte	0x2
	.value	0x21e
	.long	0xb7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF269
	.byte	0x2
	.value	0x21f
	.long	0xbef
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF270
	.byte	0x2
	.value	0x222
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF271
	.byte	0x2
	.value	0x223
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF272
	.byte	0x2
	.value	0x224
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF273
	.byte	0x2
	.value	0x225
	.long	0x3d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF274
	.byte	0x2
	.value	0x226
	.long	0x3d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF275
	.byte	0x2
	.value	0x228
	.long	0x9ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF276
	.byte	0x2
	.value	0x229
	.long	0x9ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF277
	.byte	0x2
	.value	0x22a
	.long	0x3d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF278
	.byte	0x2
	.value	0x22b
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF279
	.byte	0x2
	.value	0x22c
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF280
	.byte	0x2
	.value	0x22d
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF281
	.byte	0x2
	.value	0x22e
	.long	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF282
	.byte	0x2
	.value	0x22f
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x1f
	.string	"pat"
	.byte	0x2
	.value	0x238
	.long	0x3d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x2
	.value	0x23b
	.long	0x985
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF284
	.byte	0x2
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF285
	.byte	0x2
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF286
	.byte	0x2
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF287
	.byte	0x2
	.value	0x23f
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x1f
	.string	"dr"
	.byte	0x2
	.value	0x240
	.long	0x1410
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF288
	.byte	0x2
	.value	0x241
	.long	0x3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF289
	.byte	0x2
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF290
	.byte	0x2
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF291
	.byte	0x2
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF292
	.byte	0x2
	.value	0x246
	.long	0x1533
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF293
	.byte	0x2
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF294
	.byte	0x2
	.value	0x246
	.long	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF295
	.byte	0x2
	.value	0x246
	.long	0x1539
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF296
	.byte	0x2
	.value	0x246
	.long	0x154f
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF297
	.byte	0x2
	.value	0x246
	.long	0x1560
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF298
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF299
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF300
	.byte	0x2
	.value	0x246
	.long	0x1570
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF301
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF302
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF303
	.byte	0x2
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF304
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF305
	.byte	0x2
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF306
	.byte	0x2
	.value	0x246
	.long	0x69
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF307
	.byte	0x2
	.value	0x249
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF308
	.byte	0x2
	.value	0x24a
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF309
	.byte	0x2
	.value	0x24b
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF310
	.byte	0x2
	.value	0x24c
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF311
	.byte	0x2
	.value	0x24d
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF312
	.byte	0x2
	.value	0x24e
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF313
	.byte	0x2
	.value	0x24f
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF314
	.byte	0x2
	.value	0x250
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF315
	.byte	0x2
	.value	0x251
	.long	0x1580
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF316
	.byte	0x2
	.value	0x252
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF317
	.byte	0x2
	.value	0x253
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF318
	.byte	0x2
	.value	0x254
	.long	0x3c5
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF319
	.byte	0x2
	.value	0x25b
	.long	0x1590
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF320
	.byte	0x2
	.value	0x25f
	.long	0x159c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0x1420
	.long	0x9a0
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1430
	.long	0xc45
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1440
	.long	0xac6
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x1450
	.long	0x9a0
	.uleb128 0xb
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x1460
	.long	0xdf6
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1470
	.long	0xb7e
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.long	0x1533
	.long	.LASF321
	.byte	0x68
	.byte	0x2
	.value	0x246
	.uleb128 0x1c
	.string	"pc"
	.byte	0x14
	.byte	0x93
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF322
	.byte	0x14
	.byte	0x94
	.long	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF149
	.byte	0x14
	.byte	0x95
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF323
	.byte	0x14
	.byte	0x96
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF324
	.byte	0x14
	.byte	0x98
	.long	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF325
	.byte	0x14
	.byte	0x9e
	.long	0x15ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF326
	.byte	0x14
	.byte	0xa0
	.long	0x1533
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF327
	.byte	0x14
	.byte	0xa3
	.long	0x15b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF328
	.byte	0x14
	.byte	0xa4
	.long	0x15c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF329
	.byte	0x14
	.byte	0xa8
	.long	0xbcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF330
	.byte	0x14
	.byte	0xac
	.long	0x15d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF331
	.byte	0x14
	.byte	0xb2
	.long	0x15b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF332
	.byte	0x14
	.byte	0xb3
	.long	0x1533
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1470
	.uleb128 0xa
	.long	0x154f
	.long	0x9fb
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0x1560
	.long	0x1533
	.uleb128 0x20
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0x1570
	.long	0x9a0
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1580
	.long	0xe4c
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1590
	.long	0x3c5
	.uleb128 0xb
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc11
	.uleb128 0x21
	.long	.LASF383
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x1596
	.uleb128 0x18
	.long	.LASF242
	.byte	0x2
	.value	0x260
	.long	0xe74
	.uleb128 0x5
	.byte	0x8
	.long	0x3af
	.uleb128 0xa
	.long	0x15c4
	.long	0x1533
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x15d4
	.long	0x9a0
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x15e4
	.long	0x3c5
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	0x1629
	.long	.LASF333
	.byte	0x20
	.byte	0x16
	.byte	0xf
	.uleb128 0x9
	.long	.LASF334
	.byte	0x16
	.byte	0x10
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF335
	.byte	0x16
	.byte	0x11
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF336
	.byte	0x16
	.byte	0x12
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF337
	.byte	0x16
	.byte	0x13
	.long	0x1629
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x15e4
	.uleb128 0x22
	.long	0x1687
	.byte	0x1
	.long	.LASF349
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x3f
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF338
	.byte	0x1
	.byte	0x12
	.long	0x3e6
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF339
	.byte	0x1
	.byte	0x13
	.long	0x811
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.long	.LASF340
	.byte	0x1
	.byte	0x14
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.byte	0x15
	.long	0x817
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x24
	.long	0x1742
	.long	.LASF342
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x3f
	.quad	.LFB218
	.quad	.LFE218
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF338
	.byte	0x1
	.byte	0x22
	.long	0x3e6
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF339
	.byte	0x1
	.byte	0x23
	.long	0x811
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF340
	.byte	0x1
	.byte	0x24
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.byte	0x25
	.long	0x817
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	0x1742
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x27
	.long	0x1754
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x29
	.long	0x175f
	.uleb128 0x2a
	.long	0x176b
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	0x1777
	.uleb128 0x29
	.long	0x1783
	.uleb128 0x29
	.long	0x178f
	.uleb128 0x26
	.long	0x179c
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x2b
	.long	0x17ae
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x179c
	.long	.LASF343
	.byte	0x3
	.value	0x101
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x3
	.byte	0xff
	.long	0x9a0
	.uleb128 0x2e
	.long	.LASF344
	.byte	0x3
	.value	0x102
	.long	0x3f
	.uleb128 0x2f
	.string	"res"
	.byte	0x3
	.value	0x103
	.long	0x3f
	.uleb128 0x2e
	.long	.LASF345
	.byte	0x3
	.value	0x104
	.long	0x9a0
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x3
	.value	0x105
	.long	0x38
	.uleb128 0x2e
	.long	.LASF347
	.byte	0x3
	.value	0x106
	.long	0x3f
	.byte	0x0
	.uleb128 0x2c
	.long	0x17bb
	.long	.LASF348
	.byte	0x2
	.value	0x2e9
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x30
	.string	"env"
	.byte	0x2
	.value	0x2e8
	.long	0x17bb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x15a2
	.uleb128 0x31
	.long	0x1808
	.byte	0x1
	.long	.LASF350
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF351
	.byte	0x1
	.byte	0x32
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF338
	.byte	0x1
	.byte	0x33
	.long	0x3e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.byte	0x34
	.long	0x817
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x31
	.long	0x1842
	.byte	0x1
	.long	.LASF352
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x49
	.long	0x3e6
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.byte	0x4a
	.long	0x817
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x1880
	.byte	0x1
	.long	.LASF353
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x3f
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x53
	.long	0x3e6
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.byte	0x54
	.long	0x817
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x22
	.long	0x18bc
	.byte	0x1
	.long	.LASF354
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x3e6
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x59
	.long	0x18bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x5b
	.long	0x38
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x18c2
	.uleb128 0x6
	.long	0x3f1
	.uleb128 0x22
	.long	0x1903
	.byte	0x1
	.long	.LASF355
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.long	0x3e6
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x64
	.long	0x18bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x66
	.long	0x38
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x193f
	.byte	0x1
	.long	.LASF356
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.long	0x3e6
	.quad	.LFB224
	.quad	.LFE224
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x6f
	.long	0x18bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x71
	.long	0x38
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x197b
	.byte	0x1
	.long	.LASF357
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0x3e6
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.byte	0x78
	.long	0x18bc
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.byte	0x7a
	.long	0x38
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.long	0x1a03
	.byte	0x1
	.long	.LASF358
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.quad	.LFB226
	.quad	.LFE226
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.byte	0x90
	.long	0x5e9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF359
	.byte	0x1
	.byte	0x90
	.long	0x9a0
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF323
	.byte	0x1
	.byte	0x90
	.long	0x9a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"pc"
	.byte	0x1
	.byte	0x92
	.long	0x9a0
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF360
	.byte	0x1
	.byte	0x93
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.byte	0x94
	.long	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF362
	.byte	0x1
	.byte	0x95
	.long	0x87d
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.uleb128 0x31
	.long	0x1a7e
	.byte	0x1
	.long	.LASF363
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.quad	.LFB227
	.quad	.LFE227
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.byte	0xef
	.long	0x5e9
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF359
	.byte	0x1
	.byte	0xef
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF323
	.byte	0x1
	.byte	0xef
	.long	0x38
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"pc"
	.byte	0x1
	.byte	0xf1
	.long	0x38
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	.LASF360
	.byte	0x1
	.byte	0xf2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	.LASF361
	.byte	0x1
	.byte	0xf3
	.long	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF362
	.byte	0x1
	.byte	0xf4
	.long	0x87d
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x34
	.long	0x1b01
	.byte	0x1
	.long	.LASF364
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228
	.byte	0x1
	.byte	0x57
	.uleb128 0x35
	.string	"out"
	.byte	0x1
	.value	0x12c
	.long	0x5e9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x36
	.long	.LASF359
	.byte	0x1
	.value	0x12c
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.long	.LASF323
	.byte	0x1
	.value	0x12c
	.long	0x38
	.byte	0x1
	.byte	0x51
	.uleb128 0x37
	.string	"pc"
	.byte	0x1
	.value	0x12e
	.long	0x38
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF360
	.byte	0x1
	.value	0x12f
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF361
	.byte	0x1
	.value	0x130
	.long	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF362
	.byte	0x1
	.value	0x131
	.long	0x87d
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.uleb128 0x39
	.long	0x1b68
	.byte	0x1
	.long	.LASF365
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.long	0x69
	.quad	.LFB229
	.quad	.LFE229
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	.LASF366
	.byte	0x1
	.value	0x16b
	.long	0x9a0
	.byte	0x1
	.byte	0x55
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x16d
	.long	0x46
	.byte	0x1
	.byte	0x52
	.uleb128 0x37
	.string	"sym"
	.byte	0x1
	.value	0x16f
	.long	0x1b68
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x170
	.long	0x1629
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.long	.LASF345
	.byte	0x1
	.value	0x171
	.long	0x9a0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x927
	.uleb128 0x3a
	.long	0x1bc9
	.long	.LASF367
	.byte	0x1
	.value	0x198
	.long	0x3f
	.quad	.LFB230
	.quad	.LFE230
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	.LASF338
	.byte	0x1
	.value	0x194
	.long	0x3e6
	.byte	0x1
	.byte	0x55
	.uleb128 0x36
	.long	.LASF339
	.byte	0x1
	.value	0x195
	.long	0x811
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.long	.LASF340
	.byte	0x1
	.value	0x196
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x36
	.long	.LASF341
	.byte	0x1
	.value	0x197
	.long	0x817
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x3b
	.long	0x1c18
	.long	.LASF368
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0x3f
	.quad	.LFB231
	.quad	.LFE231
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	.LASF141
	.byte	0x1
	.value	0x1a1
	.long	0x5e9
	.byte	0x1
	.byte	0x55
	.uleb128 0x35
	.string	"fmt"
	.byte	0x1
	.value	0x1a1
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.uleb128 0x37
	.string	"ap"
	.byte	0x1
	.value	0x1a3
	.long	0x3a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x1cb5
	.byte	0x1
	.long	.LASF369
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232
	.byte	0x1
	.byte	0x57
	.uleb128 0x35
	.string	"env"
	.byte	0x1
	.value	0x1aa
	.long	0x17bb
	.byte	0x1
	.byte	0x55
	.uleb128 0x35
	.string	"pc"
	.byte	0x1
	.value	0x1ab
	.long	0x9a0
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.long	.LASF370
	.byte	0x1
	.value	0x1ab
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x36
	.long	.LASF371
	.byte	0x1
	.value	0x1ab
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.long	.LASF149
	.byte	0x1
	.value	0x1ab
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LASF360
	.byte	0x1
	.value	0x1ad
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x1ad
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF361
	.byte	0x1
	.value	0x1ae
	.long	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF362
	.byte	0x1
	.value	0x1af
	.long	0x87d
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF372
	.byte	0x7
	.byte	0x91
	.long	0x378
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF373
	.byte	0x7
	.byte	0x92
	.long	0x378
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF374
	.byte	0x4
	.value	0x32c
	.long	0x17bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF375
	.byte	0x19
	.byte	0x26
	.long	0x15ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF376
	.byte	0x4
	.value	0x376
	.long	0x15ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF377
	.byte	0x1
	.byte	0xc
	.long	0x1629
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	syminfos
	.uleb128 0x38
	.long	.LASF378
	.byte	0x1
	.value	0x18f
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	monitor_disas_is_physical
	.uleb128 0x38
	.long	.LASF379
	.byte	0x1
	.value	0x190
	.long	0x17bb
	.byte	0x9
	.byte	0x3
	.quad	monitor_disas_env
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x107
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1d3b
	.long	0x162f
	.string	"buffer_read_memory"
	.long	0x17c1
	.string	"perror_memory"
	.long	0x1808
	.string	"generic_print_address"
	.long	0x1842
	.string	"generic_symbol_at_address"
	.long	0x1880
	.string	"bfd_getl32"
	.long	0x18c7
	.string	"bfd_getb32"
	.long	0x1903
	.string	"bfd_getl16"
	.long	0x193f
	.string	"bfd_getb16"
	.long	0x197b
	.string	"target_disas"
	.long	0x1a03
	.string	"disas_instr"
	.long	0x1a7e
	.string	"disas"
	.long	0x1b01
	.string	"lookup_symbol"
	.long	0x1c18
	.string	"monitor_disas"
	.long	0x1cf8
	.string	"syminfos"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0x0
	.value	0x0
	.value	0x0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF265:
	.string	"sse_status"
.LASF370:
	.string	"nb_insn"
.LASF366:
	.string	"orig_addr"
.LASF273:
	.string	"efer"
.LASF47:
	.string	"__gnuc_va_list"
.LASF276:
	.string	"vm_vmcb"
.LASF9:
	.string	"size_t"
.LASF150:
	.string	"private_data"
.LASF71:
	.string	"bfd_target_ieee_flavour"
.LASF176:
	.string	"st_other"
.LASF267:
	.string	"xmm_regs"
.LASF111:
	.string	"bfd_arch_h8500"
.LASF122:
	.string	"bfd_arch_mn10300"
.LASF180:
	.string	"__jmp_buf_tag"
.LASF382:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF12:
	.string	"int32_t"
.LASF140:
	.string	"fprintf_func"
.LASF29:
	.string	"_IO_save_end"
.LASF10:
	.string	"__off_t"
.LASF260:
	.string	"fpuc"
.LASF125:
	.string	"symbol_cache_entry"
.LASF313:
	.string	"cpuid_ext_features"
.LASF261:
	.string	"fptags"
.LASF196:
	.string	"floatx80"
.LASF259:
	.string	"fpus"
.LASF22:
	.string	"_IO_write_base"
.LASF216:
	.string	"running"
.LASF146:
	.string	"endian"
.LASF38:
	.string	"_lock"
.LASF266:
	.string	"mxcsr"
.LASF375:
	.string	"phys_ram_base"
.LASF84:
	.string	"BFD_ENDIAN_BIG"
.LASF249:
	.string	"shellcode_context"
.LASF201:
	.string	"CPU86_LDouble"
.LASF283:
	.string	"jmp_env"
.LASF274:
	.string	"star"
.LASF165:
	.string	"target"
.LASF27:
	.string	"_IO_save_base"
.LASF241:
	.string	"vaddr"
.LASF106:
	.string	"bfd_arch_powerpc"
.LASF170:
	.string	"Elf32_Word"
.LASF328:
	.string	"page_addr"
.LASF90:
	.string	"bfd_arch_m68k"
.LASF108:
	.string	"bfd_arch_hppa"
.LASF253:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF228:
	.string	"logged"
.LASF97:
	.string	"bfd_arch_we32k"
.LASF178:
	.string	"Elf32_Sym"
.LASF263:
	.string	"fp_status"
.LASF191:
	.string	"addend"
.LASF59:
	.string	"va_list"
.LASF16:
	.string	"FILE"
.LASF55:
	.string	"_IO_marker"
.LASF190:
	.string	"addr_code"
.LASF194:
	.string	"float32"
.LASF213:
	.string	"netidx"
.LASF305:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF102:
	.string	"bfd_arch_convex"
.LASF292:
	.string	"current_tb"
.LASF220:
	.string	"instruction_stage"
.LASF300:
	.string	"watchpoint"
.LASF344:
	.string	"index"
.LASF308:
	.string	"cpuid_vendor1"
.LASF310:
	.string	"cpuid_vendor3"
.LASF321:
	.string	"TranslationBlock"
.LASF238:
	.string	"store_addr_type"
.LASF91:
	.string	"bfd_arch_vax"
.LASF7:
	.string	"signed char"
.LASF160:
	.string	"display_endian"
.LASF60:
	.string	"uint8_t"
.LASF86:
	.string	"BFD_ENDIAN_UNKNOWN"
.LASF48:
	.string	"_IO_FILE"
.LASF88:
	.string	"bfd_arch_unknown"
.LASF368:
	.string	"monitor_fprintf"
.LASF357:
	.string	"bfd_getb16"
.LASF63:
	.string	"uint64_t"
.LASF124:
	.string	"bfd_arch_last"
.LASF230:
	.string	"load_value"
.LASF227:
	.string	"instruction_size"
.LASF6:
	.string	"unsigned char"
.LASF95:
	.string	"bfd_arch_mips"
.LASF214:
	.string	"argos_rtag_t"
.LASF315:
	.string	"cpuid_model"
.LASF374:
	.string	"cpu_single_env"
.LASF343:
	.string	"ldub_code"
.LASF211:
	.string	"argos_rtag"
.LASF98:
	.string	"bfd_arch_tahoe"
.LASF162:
	.string	"branch_delay_insns"
.LASF235:
	.string	"store_value"
.LASF226:
	.string	"instruction"
.LASF207:
	.string	"MMXReg"
.LASF69:
	.string	"bfd_target_ecoff_flavour"
.LASF322:
	.string	"cs_base"
.LASF353:
	.string	"generic_symbol_at_address"
.LASF151:
	.string	"read_memory_func"
.LASF254:
	.string	"segs"
.LASF317:
	.string	"cpuid_ext3_features"
.LASF5:
	.string	"char"
.LASF356:
	.string	"bfd_getl16"
.LASF250:
	.string	"cc_src"
.LASF314:
	.string	"cpuid_xlevel"
.LASF134:
	.string	"dis_condbranch"
.LASF75:
	.string	"bfd_target_srec_flavour"
.LASF291:
	.string	"old_exception"
.LASF93:
	.string	"bfd_arch_a29k"
.LASF246:
	.string	"t1tag"
.LASF117:
	.string	"bfd_arch_tic30"
.LASF54:
	.string	"_IO_lock_t"
.LASF333:
	.string	"syminfo"
.LASF338:
	.string	"memaddr"
.LASF251:
	.string	"cc_dst"
.LASF187:
	.string	"CPUTLBEntry"
.LASF233:
	.string	"load_addr_type"
.LASF275:
	.string	"vm_hsave"
.LASF109:
	.string	"bfd_arch_d10v"
.LASF325:
	.string	"tc_ptr"
.LASF335:
	.string	"disas_symtab"
.LASF149:
	.string	"flags"
.LASF358:
	.string	"target_disas"
.LASF19:
	.string	"_IO_read_ptr"
.LASF193:
	.string	"double"
.LASF222:
	.string	"is_system_call"
.LASF51:
	.string	"fp_offset"
.LASF58:
	.string	"_pos"
.LASF372:
	.string	"stdin"
.LASF168:
	.string	"Elf32_Addr"
.LASF295:
	.string	"tlb_table"
.LASF141:
	.string	"stream"
.LASF377:
	.string	"syminfos"
.LASF336:
	.string	"disas_strtab"
.LASF144:
	.string	"arch"
.LASF30:
	.string	"_markers"
.LASF257:
	.string	"prev_fpip"
.LASF381:
	.string	"/home/remco/Projects/Argos/src/disas.c"
.LASF318:
	.string	"cpuid_apic_id"
.LASF205:
	.string	"limit"
.LASF49:
	.string	"__va_list_tag"
.LASF80:
	.string	"bfd_target_msdos_flavour"
.LASF234:
	.string	"load_size"
.LASF70:
	.string	"bfd_target_elf_flavour"
.LASF155:
	.string	"buffer"
.LASF361:
	.string	"disasm_info"
.LASF229:
	.string	"instruction_netidx"
.LASF167:
	.string	"disassembler_options"
.LASF258:
	.string	"fpstt"
.LASF39:
	.string	"_offset"
.LASF330:
	.string	"tb_next"
.LASF135:
	.string	"dis_jsr"
.LASF293:
	.string	"mem_write_pc"
.LASF324:
	.string	"cflags"
.LASF46:
	.string	"_unused2"
.LASF299:
	.string	"singlestep_enabled"
.LASF294:
	.string	"mem_write_vaddr"
.LASF218:
	.string	"logfile"
.LASF0:
	.string	"long unsigned int"
.LASF223:
	.string	"loadedby_eip"
.LASF73:
	.string	"bfd_target_oasys_flavour"
.LASF142:
	.string	"application_data"
.LASF33:
	.string	"_flags2"
.LASF174:
	.string	"st_size"
.LASF365:
	.string	"lookup_symbol"
.LASF21:
	.string	"_IO_read_base"
.LASF53:
	.string	"reg_save_area"
.LASF332:
	.string	"jmp_first"
.LASF206:
	.string	"XMMReg"
.LASF316:
	.string	"cpuid_ext2_features"
.LASF215:
	.string	"argos_shellcode_context_s"
.LASF240:
	.string	"argos_shellcode_context_t"
.LASF282:
	.string	"intercept_exceptions"
.LASF200:
	.string	"floatx80_rounding_precision"
.LASF289:
	.string	"interrupt_request"
.LASF163:
	.string	"data_size"
.LASF96:
	.string	"bfd_arch_i386"
.LASF378:
	.string	"monitor_disas_is_physical"
.LASF34:
	.string	"_old_offset"
.LASF113:
	.string	"bfd_arch_alpha"
.LASF99:
	.string	"bfd_arch_i860"
.LASF145:
	.string	"mach"
.LASF89:
	.string	"bfd_arch_obscure"
.LASF85:
	.string	"BFD_ENDIAN_LITTLE"
.LASF147:
	.string	"symbols"
.LASF101:
	.string	"bfd_arch_alliant"
.LASF269:
	.string	"mmx_t0"
.LASF138:
	.string	"dis_dref2"
.LASF3:
	.string	"long long int"
.LASF350:
	.string	"perror_memory"
.LASF169:
	.string	"Elf32_Half"
.LASF157:
	.string	"buffer_length"
.LASF287:
	.string	"exception_next_eip"
.LASF24:
	.string	"_IO_write_end"
.LASF114:
	.string	"bfd_arch_arm"
.LASF339:
	.string	"myaddr"
.LASF78:
	.string	"bfd_target_os9k_flavour"
.LASF255:
	.string	"a20_mask"
.LASF364:
	.string	"disas"
.LASF83:
	.string	"bfd_endian"
.LASF188:
	.string	"addr_read"
.LASF327:
	.string	"page_next"
.LASF50:
	.string	"gp_offset"
.LASF232:
	.string	"load_addr"
.LASF199:
	.string	"float_rounding_mode"
.LASF153:
	.string	"print_address_func"
.LASF360:
	.string	"count"
.LASF306:
	.string	"cpu_model_str"
.LASF345:
	.string	"addr"
.LASF297:
	.string	"breakpoints"
.LASF239:
	.string	"store_size"
.LASF68:
	.string	"bfd_target_coff_flavour"
.LASF25:
	.string	"_IO_buf_base"
.LASF65:
	.string	"bfd_byte"
.LASF107:
	.string	"bfd_arch_rs6000"
.LASF1:
	.string	"unsigned int"
.LASF367:
	.string	"monitor_read_memory"
.LASF380:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF74:
	.string	"bfd_target_tekhex_flavour"
.LASF112:
	.string	"bfd_arch_sh"
.LASF302:
	.string	"watchpoint_hit"
.LASF296:
	.string	"tb_jmp_cache"
.LASF209:
	.string	"argos_netidx_t"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF57:
	.string	"_sbuf"
.LASF115:
	.string	"bfd_arch_ns32k"
.LASF224:
	.string	"storedby_eip"
.LASF231:
	.string	"load_value_netidx"
.LASF52:
	.string	"overflow_arg_area"
.LASF82:
	.string	"bfd_flavour"
.LASF92:
	.string	"bfd_arch_i960"
.LASF320:
	.string	"apic_state"
.LASF18:
	.string	"_flags"
.LASF376:
	.string	"phys_ram_dirty"
.LASF198:
	.string	"float_status"
.LASF2:
	.string	"long int"
.LASF355:
	.string	"bfd_getb32"
.LASF183:
	.string	"__saved_mask"
.LASF45:
	.string	"_mode"
.LASF181:
	.string	"__jmpbuf"
.LASF105:
	.string	"bfd_arch_h8300"
.LASF304:
	.string	"cpu_index"
.LASF179:
	.string	"__jmp_buf"
.LASF210:
	.string	"argos_bytemap_t"
.LASF354:
	.string	"bfd_getl32"
.LASF177:
	.string	"st_shndx"
.LASF301:
	.string	"nb_watchpoints"
.LASF186:
	.string	"target_phys_addr_t"
.LASF337:
	.string	"next"
.LASF272:
	.string	"sysenter_eip"
.LASF197:
	.string	"long double"
.LASF323:
	.string	"size"
.LASF161:
	.string	"insn_info_valid"
.LASF363:
	.string	"disas_instr"
.LASF64:
	.string	"bfd_vma"
.LASF110:
	.string	"bfd_arch_z8k"
.LASF152:
	.string	"memory_error_func"
.LASF156:
	.string	"buffer_vma"
.LASF171:
	.string	"elf32_sym"
.LASF173:
	.string	"st_value"
.LASF76:
	.string	"bfd_target_ihex_flavour"
.LASF94:
	.string	"bfd_arch_sparc"
.LASF341:
	.string	"info"
.LASF242:
	.string	"CPUX86State"
.LASF182:
	.string	"__mask_was_saved"
.LASF127:
	.string	"udata"
.LASF278:
	.string	"intercept_cr_read"
.LASF329:
	.string	"tb_next_offset"
.LASF221:
	.string	"trace_stage"
.LASF15:
	.string	"long long unsigned int"
.LASF348:
	.string	"cpu_mmu_index"
.LASF369:
	.string	"monitor_disas"
.LASF72:
	.string	"bfd_target_nlm_flavour"
.LASF14:
	.string	"__sigset_t"
.LASF77:
	.string	"bfd_target_som_flavour"
.LASF340:
	.string	"length"
.LASF61:
	.string	"uint16_t"
.LASF154:
	.string	"symbol_at_address_func"
.LASF31:
	.string	"_chain"
.LASF264:
	.string	"fp_convert"
.LASF119:
	.string	"bfd_arch_arc"
.LASF166:
	.string	"target2"
.LASF379:
	.string	"monitor_disas_env"
.LASF148:
	.string	"num_symbols"
.LASF252:
	.string	"cc_op"
.LASF303:
	.string	"next_cpu"
.LASF346:
	.string	"physaddr"
.LASF175:
	.string	"st_info"
.LASF280:
	.string	"intercept_dr_read"
.LASF136:
	.string	"dis_condjsr"
.LASF237:
	.string	"store_addr"
.LASF285:
	.string	"error_code"
.LASF132:
	.string	"dis_nonbranch"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF219:
	.string	"instruction_cnt"
.LASF67:
	.string	"bfd_target_aout_flavour"
.LASF243:
	.string	"regs"
.LASF128:
	.string	"asymbol"
.LASF56:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF139:
	.string	"disassemble_info"
.LASF123:
	.string	"bfd_arch_cris"
.LASF359:
	.string	"code"
.LASF281:
	.string	"intercept_dr_write"
.LASF245:
	.string	"t0tag"
.LASF184:
	.string	"jmp_buf"
.LASF217:
	.string	"stop_condition"
.LASF288:
	.string	"smbase"
.LASF247:
	.string	"t2tag"
.LASF79:
	.string	"bfd_target_versados_flavour"
.LASF312:
	.string	"cpuid_features"
.LASF133:
	.string	"dis_branch"
.LASF26:
	.string	"_IO_buf_end"
.LASF342:
	.string	"target_read_memory"
.LASF130:
	.string	"dis_insn_type"
.LASF126:
	.string	"name"
.LASF185:
	.string	"target_ulong"
.LASF164:
	.string	"insn_type"
.LASF103:
	.string	"bfd_arch_m88k"
.LASF159:
	.string	"bytes_per_chunk"
.LASF279:
	.string	"intercept_cr_write"
.LASF8:
	.string	"short int"
.LASF189:
	.string	"addr_write"
.LASF121:
	.string	"bfd_arch_mn10200"
.LASF383:
	.string	"APICState"
.LASF351:
	.string	"status"
.LASF309:
	.string	"cpuid_vendor2"
.LASF202:
	.string	"SegmentCache"
.LASF284:
	.string	"exception_index"
.LASF36:
	.string	"_vtable_offset"
.LASF286:
	.string	"exception_is_int"
.LASF143:
	.string	"flavour"
.LASF262:
	.string	"fpregs"
.LASF66:
	.string	"bfd_target_unknown_flavour"
.LASF17:
	.string	"__val"
.LASF290:
	.string	"user_mode_only"
.LASF158:
	.string	"bytes_per_line"
.LASF172:
	.string	"st_name"
.LASF298:
	.string	"nb_breakpoints"
.LASF120:
	.string	"bfd_arch_m32r"
.LASF256:
	.string	"fpip"
.LASF100:
	.string	"bfd_arch_romp"
.LASF311:
	.string	"cpuid_version"
.LASF236:
	.string	"store_value_netidx"
.LASF248:
	.string	"regtags"
.LASF20:
	.string	"_IO_read_end"
.LASF129:
	.string	"fprintf_ftype"
.LASF362:
	.string	"print_insn"
.LASF62:
	.string	"uint32_t"
.LASF32:
	.string	"_fileno"
.LASF277:
	.string	"intercept"
.LASF371:
	.string	"is_physical"
.LASF195:
	.string	"float64"
.LASF326:
	.string	"phys_hash_next"
.LASF192:
	.string	"float"
.LASF373:
	.string	"stdout"
.LASF118:
	.string	"bfd_arch_v850"
.LASF225:
	.string	"executed_eip"
.LASF131:
	.string	"dis_noninsn"
.LASF204:
	.string	"base"
.LASF137:
	.string	"dis_dref"
.LASF23:
	.string	"_IO_write_ptr"
.LASF347:
	.string	"mmu_idx"
.LASF244:
	.string	"eflags"
.LASF13:
	.string	"int64_t"
.LASF203:
	.string	"selector"
.LASF208:
	.string	"argos_paddr_t"
.LASF116:
	.string	"bfd_arch_w65"
.LASF349:
	.string	"buffer_read_memory"
.LASF104:
	.string	"bfd_arch_pyramid"
.LASF87:
	.string	"bfd_architecture"
.LASF271:
	.string	"sysenter_esp"
.LASF212:
	.string	"origin"
.LASF81:
	.string	"bfd_target_evax_flavour"
.LASF319:
	.string	"envmap"
.LASF270:
	.string	"sysenter_cs"
.LASF307:
	.string	"cpuid_level"
.LASF331:
	.string	"jmp_next"
.LASF334:
	.string	"disas_num_syms"
.LASF268:
	.string	"xmm_t0"
.LASF352:
	.string	"generic_print_address"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
