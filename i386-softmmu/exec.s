	.file	"exec.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"out_asm"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"show generated host assembly code for each compiled TB"
	.section	.rodata.str1.1
.LC2:
	.string	"in_asm"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"show target assembly code for each compiled TB"
	.section	.rodata.str1.1
.LC4:
	.string	"op"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"show micro ops for each compiled TB (only usable if 'in_asm' used)"
	.section	.rodata.str1.1
.LC6:
	.string	"op_opt"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"show micro ops after optimization for each compiled TB"
	.section	.rodata.str1.1
.LC8:
	.string	"int"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"show interrupts/exceptions in short format"
	.section	.rodata.str1.1
.LC10:
	.string	"exec"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"show trace before each executed TB (lots of logs)"
	.section	.rodata.str1.1
.LC12:
	.string	"cpu"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"show CPU state before block translation"
	.section	.rodata.str1.1
.LC14:
	.string	"pcall"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"show protected mode far calls/returns/exceptions"
.globl cpu_log_items
	.data
	.align 32
	.type	cpu_log_items, @object
	.size	cpu_log_items, 216
cpu_log_items:
	.long	1
	.zero	4
	.quad	.LC0
	.quad	.LC1
	.long	2
	.zero	4
	.quad	.LC2
	.quad	.LC3
	.long	4
	.zero	4
	.quad	.LC4
	.quad	.LC5
	.long	8
	.zero	4
	.quad	.LC6
	.quad	.LC7
	.long	16
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.long	32
	.zero	4
	.quad	.LC10
	.quad	.LC11
	.long	256
	.zero	4
	.quad	.LC12
	.quad	.LC13
	.long	64
	.zero	4
	.quad	.LC14
	.quad	.LC15
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.section	.rodata.str1.1
.LC16:
	.string	"/tmp/argos.log"
.globl logfilename
	.data
	.align 8
	.type	logfilename, @object
	.size	logfilename, 8
logfilename:
	.quad	.LC16
.globl argos_clean_tag
	.section	.rodata
	.align 4
	.type	argos_clean_tag, @object
	.size	argos_clean_tag, 8
argos_clean_tag:
	.long	0
	.zero	4
.globl tb_lock
	.bss
	.align 4
	.type	tb_lock, @object
	.size	tb_lock, 4
tb_lock:
	.zero	4
	.local	phys_ram_alloc_offset
	.comm	phys_ram_alloc_offset,8,8
	.data
	.align 16
	.type	subpage_write, @object
	.size	subpage_write, 24
subpage_write:
	.quad	subpage_writeb
	.quad	subpage_writew
	.quad	subpage_writel
	.align 16
	.type	subpage_read, @object
	.size	subpage_read, 24
subpage_read:
	.quad	subpage_readb
	.quad	subpage_readw
	.quad	subpage_readl
	.local	log_append
	.comm	log_append,4,4
	.align 16
	.type	watch_mem_write, @object
	.size	watch_mem_write, 24
watch_mem_write:
	.quad	watch_mem_writeb
	.quad	watch_mem_writew
	.quad	watch_mem_writel
	.align 16
	.type	watch_mem_read, @object
	.size	watch_mem_read, 24
watch_mem_read:
	.quad	watch_mem_readb
	.quad	watch_mem_readw
	.quad	watch_mem_readl
	.align 16
	.type	notdirty_mem_write, @object
	.size	notdirty_mem_write, 24
notdirty_mem_write:
	.quad	notdirty_mem_writeb
	.quad	notdirty_mem_writew
	.quad	notdirty_mem_writel
	.align 16
	.type	unassigned_mem_read, @object
	.size	unassigned_mem_read, 24
unassigned_mem_read:
	.quad	unassigned_mem_readb
	.quad	unassigned_mem_readb
	.quad	unassigned_mem_readb
	.align 16
	.type	unassigned_mem_write, @object
	.size	unassigned_mem_write, 24
unassigned_mem_write:
	.quad	unassigned_mem_writeb
	.quad	unassigned_mem_writeb
	.quad	unassigned_mem_writeb
	.local	error_mem_read
	.comm	error_mem_read,24,16
	.text
	.p2align 4,,15
	.type	phys_page_find_alloc, @function
phys_page_find_alloc:
.LFB220:
	.file 1 "/home/remco/Projects/Argos/src/exec.c"
	.loc 1 265 0
	pushq	%rbp
.LCFI0:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI1:
	.loc 1 286 0
	movq	%rdi, %rbx
	shrq	$7, %rbx
	.loc 1 265 0
	subq	$8, %rsp
.LCFI2:
	.loc 1 286 0
	andl	$8184, %ebx
	addq	l1_phys_map(%rip), %rbx
	.loc 1 287 0
	movq	(%rbx), %rax
	.loc 1 288 0
	testq	%rax, %rax
	je	.L10
.L2:
	.loc 1 298 0
	andl	$1023, %ebp
	leaq	(%rax,%rbp,4), %rax
.L1:
	.loc 1 299 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L10:
.LBB2:
	.loc 1 291 0
	testl	%esi, %esi
	je	.L1
	.loc 1 293 0
	movl	$4096, %edi
	call	qemu_vmalloc
	movl	$1023, %ecx
	.loc 1 294 0
	movq	%rax, (%rbx)
	movq	%rax, %rdx
	.p2align 4,,7
.L7:
	.loc 1 296 0
	movl	$32, (%rdx)
	addq	$4, %rdx
	decl	%ecx
	jns	.L7
	jmp	.L2
.LBE2:
.LFE220:
	.size	phys_page_find_alloc, .-phys_page_find_alloc
	.p2align 4,,15
.globl phys_page_find
	.type	phys_page_find, @function
phys_page_find:
.LFB221:
	.loc 1 302 0
	.loc 1 303 0
	xorl	%esi, %esi
	jmp	phys_page_find_alloc
.LFE221:
	.size	phys_page_find, .-phys_page_find
	.p2align 4,,15
.globl tlb_set_page_exec
	.type	tlb_set_page_exec, @function
tlb_set_page_exec:
.LFB267:
	.loc 1 1635 0
	pushq	%r14
.LCFI3:
	movl	%r8d, %r14d
	pushq	%r13
.LCFI4:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI5:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI6:
	movq	%rdi, %rbp
	.loc 1 1645 0
	movq	%rdx, %rdi
	shrq	$12, %rdi
	.loc 1 1635 0
	pushq	%rbx
.LCFI7:
	.loc 1 1635 0
	movl	%esi, %ebx
	.loc 1 1645 0
	call	phys_page_find
	.loc 1 1646 0
	testq	%rax, %rax
	.loc 1 1647 0
	movl	$32, %edi
	.loc 1 1646 0
	je	.L14
	.loc 1 1649 0
	mov	(%rax), %edi
.L14:
	.loc 1 1661 0
	movq	%rdi, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L15
	testb	$1, %dil
	je	.L40
.L15:
	.loc 1 1668 0
	movq	%rdi, %r8
	.loc 1 1667 0
	movl	%ebx, %r9d
	.loc 1 1668 0
	andq	$-4096, %r8
	addq	phys_ram_base(%rip), %r8
.L16:
	.loc 1 1673 0
	movl	46976(%rbp), %edx
	xorl	%ecx, %ecx
	cmpl	$0, %edx
	jle	.L37
	.p2align 4,,7
.L42:
	.loc 1 1674 0
	movslq	%ecx,%rax
	salq	$4, %rax
	addq	%rbp, %rax
	leaq	46464(%rax), %rsi
	movl	46464(%rax), %eax
	andl	$-4096, %eax
	cmpl	%ebx, %eax
	je	.L41
	.loc 1 1673 0
	incl	%ecx
	cmpl	%ecx, %edx
.L43:
	jg	.L42
.L37:
	.loc 1 1689 0
	mov	%ebx, %eax
	.loc 1 1688 0
	movl	%ebx, %edx
	.loc 1 1693 0
	movl	$-1, %ecx
	.loc 1 1689 0
	subq	%rax, %r8
	.loc 1 1690 0
	movslq	%r14d,%rax
	.loc 1 1688 0
	shrl	$12, %edx
	.loc 1 1690 0
	leaq	(%rax,%rax,2), %rax
	movzbl	%dl, %edx 
	leaq	(%rdx,%rdx,2), %rdx
	salq	$11, %rax
	addq	%rbp, %rax
	.loc 1 1693 0
	testb	$1, %r13b
	.loc 1 1690 0
	leaq	(%rax,%rdx,8), %rdx
	.loc 1 1693 0
	movl	%ecx, %eax
	cmovne	%r9d, %eax
	.loc 1 1698 0
	testb	$4, %r13b
	.loc 1 1690 0
	leaq	1272(%rdx), %rsi
	.loc 1 1693 0
	movl	%eax, 1272(%rdx)
	.loc 1 1698 0
	movl	%ecx, %eax
	cmovne	%r9d, %eax
	.loc 1 1702 0
	andl	$2, %r13d
	.loc 1 1691 0
	movq	%r8, 16(%rsi)
	.loc 1 1698 0
	movl	%eax, 8(%rsi)
	.loc 1 1702 0
	je	.L28
	.loc 1 1703 0
	movq	%rdi, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	je	.L30
	testb	$1, %dil
	jne	.L30
	.loc 1 1708 0
	testq	%rax, %rax
	jne	.L32
	.file 2 "../cpu-all.h"
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rax
.LBB3:
.LBB4:
	.loc 2 961 0
	shrq	$12, %rdi
.LBE4:
.LBE3:
	.loc 2 960 0
	cmpb	$-1, (%rdi,%rax)
	je	.L32
	.loc 1 1710 0
	orl	$64, %ebx
	movl	%ebx, 4(%rsi)
	jmp	.L35
	.p2align 4,,7
.L41:
	.loc 1 1675 0
	testl	$4095, %r9d
	je	.L21
	.loc 1 1676 0
	movq	$0, 8(%rsi)
	.loc 1 1677 0
	movl	%ebx, %r9d
	orl	io_mem_watch(%rip), %r9d
.L39:
	movl	46976(%rbp), %edx
	.loc 1 1673 0
	incl	%ecx
	cmpl	%ecx, %edx
	jmp	.L43
.L40:
	.loc 1 1663 0
	movl	%ebx, %r9d
	.loc 1 1664 0
	movq	%r12, %r8
	.loc 1 1663 0
	orl	%edi, %r9d
	jmp	.L16
	.p2align 4,,7
.L21:
	.loc 1 1679 0
	movq	%rdi, %rax
	.loc 1 1683 0
	andq	$-4096, %rdi
	.loc 1 1679 0
	subq	%r12, %rax
	addq	phys_ram_base(%rip), %rax
	movq	%rax, 8(%rsi)
	.loc 1 1683 0
	movslq	io_mem_watch(%rip),%rax
	orq	%rax, %rdi
	orq	$1, %rdi
	jmp	.L39
.L28:
	.loc 1 1715 0
	movl	%ecx, 4(%rsi)
.L35:
	.loc 1 1761 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	xorl	%eax, %eax
	ret
.L30:
	.loc 1 1706 0
	movl	%edi, %eax
	andl	$4094, %eax
	orl	%ebx, %eax
	movl	%eax, 4(%rsi)
	.loc 1 1761 0
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L32:
	.loc 1 1712 0
	movl	%r9d, 4(%rsi)
	.loc 1 1761 0
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE267:
	.size	tlb_set_page_exec, .-tlb_set_page_exec
	.p2align 4,,15
.globl tb_flush
	.type	tb_flush, @function
tb_flush:
.LFB225:
	.loc 1 364 0
	pushq	%r12
.LCFI8:
	.loc 1 372 0
	movl	$0, nb_tbs(%rip)
	.loc 1 364 0
	pushq	%rbp
.LCFI9:
	pushq	%rbx
.LCFI10:
	.loc 1 374 0
	movq	first_cpu(%rip), %rbx
.L66:
	testq	%rbx, %rbx
	je	.L62
	.loc 1 375 0
	leaq	13560(%rbx), %rdi
	movl	$32768, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 374 0
	movq	46984(%rbx), %rbx
	jmp	.L66
.L62:
	.loc 1 378 0
	movl	$262144, %edx
	xorl	%esi, %esi
	movl	$tb_phys_hash, %edi
.LBB5:
.LBB6:
	.loc 1 349 0
	xorl	%r12d, %r12d
.LBE6:
.LBE5:
	.loc 1 378 0
	call	memset
.L59:
.LBB7:
.LBB8:
	.loc 1 350 0
	movslq	%r12d,%rax
	movq	l1_map(,%rax,8), %rbx
	.loc 1 351 0
	testq	%rbx, %rbx
	je	.L51
	movl	$1023, %ebp
	jmp	.L58
	.p2align 4,,7
.L56:
.LBB9:
.LBB10:
	.loc 1 340 0
	movl	$0, 8(%rbx)
.LBE10:
.LBE9:
	.loc 1 355 0
	addq	$24, %rbx
	decl	%ebp
	js	.L51
.L58:
.LBB11:
.LBB12:
	.loc 1 336 0
	movq	16(%rbx), %rdi
.LBE12:
.LBE11:
	.loc 1 353 0
	movq	$0, (%rbx)
.LBB13:
.LBB14:
	.loc 1 336 0
	testq	%rdi, %rdi
	je	.L56
	.loc 1 337 0
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%rbx)
	.loc 1 340 0
	movl	$0, 8(%rbx)
.LBE14:
.LBE13:
	.loc 1 355 0
	addq	$24, %rbx
	decl	%ebp
	jns	.L58
.L51:
	.loc 1 349 0
	incl	%r12d
	cmpl	$1023, %r12d
	jle	.L59
.LBE8:
.LBE7:
	.loc 1 384 0
	popq	%rbx
	popq	%rbp
	incl	tb_flush_count(%rip)
	.loc 1 381 0
	movq	$code_gen_buffer, code_gen_ptr(%rip)
	.loc 1 384 0
	popq	%r12
	ret
.LFE225:
	.size	tb_flush, .-tb_flush
	.p2align 4,,15
.globl tb_find_pc
	.type	tb_find_pc, @function
tb_find_pc:
.LFB239:
	.loc 1 987 0
	.loc 1 992 0
	movl	nb_tbs(%rip), %eax
	.loc 1 993 0
	xorl	%edx, %edx
	.loc 1 992 0
	testl	%eax, %eax
	jle	.L67
	.loc 1 994 0
	cmpq	$code_gen_buffer, %rdi
	jb	.L70
	cmpq	%rdi, code_gen_ptr(%rip)
	jbe	.L70
	.loc 1 999 0
	leal	-1(%rax), %ecx
	.loc 1 998 0
	xorl	%r8d, %r8d
.L82:
	.loc 1 1009 0
	cmpl	%ecx, %r8d
	jg	.L79
.L83:
	.loc 1 1001 0
	leal	(%r8,%rcx), %edx
	.loc 1 1002 0
	movl	$104, %esi
	.loc 1 1001 0
	sarl	%edx
	.loc 1 1002 0
	movslq	%edx,%rax
	imulq	%rsi, %rax
	leaq	tbs(%rax), %rsi
	.loc 1 1003 0
	movq	tbs+24(%rax), %rax
	.loc 1 1004 0
	cmpq	%rdi, %rax
	je	.L80
	.loc 1 1006 0
	cmpq	%rax, %rdi
	jae	.L75
	.loc 1 1007 0
	leal	-1(%rdx), %ecx
	.loc 1 1009 0
	cmpl	%ecx, %r8d
	jle	.L83
.L79:
	.loc 1 1012 0
	movslq	%ecx,%rax
	movl	$104, %edx
	imulq	%rdx, %rax
	leaq	tbs(%rax), %rdx
	.loc 1 1013 0
	movq	%rdx, %rax
	ret
	.p2align 4,,7
.L70:
	.loc 1 996 0
	xorl	%edx, %edx
.L67:
	.loc 1 1013 0
	movq	%rdx, %rax
	ret
	.p2align 4,,7
.L75:
	.loc 1 1009 0
	leal	1(%rdx), %r8d
	jmp	.L82
.L80:
	.loc 1 1005 0
	movq	%rsi, %rdx
	.p2align 4,,4
	jmp	.L67
.LFE239:
	.size	tb_find_pc, .-tb_find_pc
	.p2align 4,,15
.globl tb_alloc
	.type	tb_alloc, @function
tb_alloc:
.LFB237:
	.loc 1 936 0
	movq	%rbp, -8(%rsp)
.LCFI11:
	movq	%rbx, -16(%rsp)
.LCFI12:
	subq	$24, %rsp
.LCFI13:
	.loc 1 939 0
	cmpl	$131071, nb_tbs(%rip)
	.loc 1 936 0
	movl	%edi, %ebp
	.loc 1 939 0
	jg	.L86
	movq	code_gen_ptr(%rip), %rbx
	call	code_gen_max_block_size
	movl	$16777216, %edx
	subq	$code_gen_buffer, %rbx
	subq	%rax, %rdx
	cmpq	%rdx, %rbx
	jb	.L85
.L86:
	.loc 1 946 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 941 0
	xorl	%eax, %eax
	.loc 1 946 0
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L85:
	.loc 1 942 0
	movl	nb_tbs(%rip), %eax
	movl	$104, %edi
	.loc 1 946 0
	movq	8(%rsp), %rbx
	.loc 1 942 0
	movslq	%eax,%rdx
	incl	%eax
	imulq	%rdi, %rdx
	movl	%eax, nb_tbs(%rip)
	.loc 1 943 0
	movl	%ebp, tbs(%rdx)
	.loc 1 946 0
	movq	16(%rsp), %rbp
	.loc 1 945 0
	leaq	tbs(%rdx), %rax
	.loc 1 944 0
	movw	$0, tbs+18(%rdx)
	.loc 1 946 0
	addq	$24, %rsp
	ret
.LFE237:
	.size	tb_alloc, .-tb_alloc
	.p2align 4,,15
	.type	tb_reset_jump_recursive, @function
tb_reset_jump_recursive:
.LFB241:
	.loc 1 1057 0
	pushq	%rbx
.LCFI14:
	movq	%rdi, %rbx
	.p2align 4,,7
.L97:
.LBB15:
.LBB16:
	.loc 1 1022 0
	movq	80(%rbx), %rdi
.LBE16:
	.loc 1 1018 0
	xorl	%r8d, %r8d
.LBB17:
	.loc 1 1023 0
	testq	%rdi, %rdi
	jne	.L89
	jmp	.L98
	.p2align 4,,7
.L109:
	.loc 1 1030 0
	mov	%ecx, %eax
	movq	80(%rdi,%rax,8), %rdi
.L89:
	.loc 1 1026 0
	movl	%edi, %ecx
	.loc 1 1027 0
	andq	$-4, %rdi
	.loc 1 1026 0
	andl	$3, %ecx
	.loc 1 1028 0
	cmpl	$2, %ecx
	jne	.L109
	.loc 1 1036 0
	leaq	96(%rdi), %rsi
	.loc 1 1033 0
	movq	%rdi, %r9
	jmp	.L92
	.p2align 4,,7
.L110:
	.loc 1 1043 0
	mov	%ecx, %eax
	leaq	80(%rdi,%rax,8), %rsi
.L92:
	.loc 1 1038 0
	movq	(%rsi), %rdi
	.loc 1 1039 0
	movl	%edi, %ecx
	.loc 1 1040 0
	andq	$-4, %rdi
	.loc 1 1039 0
	andl	$3, %ecx
	.loc 1 1041 0
	cmpl	%ecx, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rdi
	sete	%al
	testl	%edx, %eax
	je	.L110
	.loc 1 1045 0
	movq	80(%rbx), %rax
	.loc 1 1052 0
	movq	%r9, %rdi
	.loc 1 1045 0
	movq	%rax, (%rsi)
.LBB18:
.LBB19:
.LBB20:
	.file 3 "/home/remco/Projects/Argos/src/exec-all.h"
	.loc 3 257 0
	movzwq	64(%rbx), %rax
	addq	24(%rbx), %rax
.LBE20:
.LBE19:
.LBE18:
	.loc 1 1046 0
	movq	$0, 80(%rbx)
.LBB21:
.LBB22:
.LBB23:
.LBB24:
	.loc 3 258 0
	movl	%eax, 68(%rbx)
.LBE24:
.LBE23:
.LBE22:
.LBE21:
	.loc 1 1052 0
	call	tb_reset_jump_recursive
.L98:
.LBE17:
.LBE15:
.LBB25:
.LBB26:
	.loc 1 1022 0
	movq	88(%rbx), %rcx
.LBE26:
	.loc 1 1018 0
	movl	$1, %r8d
.LBB27:
	.loc 1 1023 0
	testq	%rcx, %rcx
	jne	.L100
	jmp	.L87
	.p2align 4,,7
.L111:
	.loc 1 1030 0
	mov	%esi, %eax
	movq	80(%rcx,%rax,8), %rcx
.L100:
	.loc 1 1026 0
	movl	%ecx, %esi
	.loc 1 1027 0
	andq	$-4, %rcx
	.loc 1 1026 0
	andl	$3, %esi
	.loc 1 1028 0
	cmpl	$2, %esi
	jne	.L111
	.loc 1 1036 0
	leaq	96(%rcx), %rdi
	.loc 1 1033 0
	movq	%rcx, %r9
	jmp	.L103
	.p2align 4,,7
.L112:
	.loc 1 1043 0
	mov	%esi, %eax
	leaq	80(%rcx,%rax,8), %rdi
.L103:
	.loc 1 1038 0
	movq	(%rdi), %rcx
	.loc 1 1039 0
	movl	%ecx, %esi
	.loc 1 1040 0
	andq	$-4, %rcx
	.loc 1 1039 0
	andl	$3, %esi
	.loc 1 1041 0
	cmpl	%esi, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	testl	%edx, %eax
	je	.L112
	.loc 1 1045 0
	movq	88(%rbx), %rax
	movq	%rax, (%rdi)
.LBB28:
.LBB29:
.LBB30:
	.loc 3 257 0
	movzwq	66(%rbx), %rax
	addq	24(%rbx), %rax
.LBE30:
.LBE29:
.LBE28:
	.loc 1 1046 0
	movq	$0, 88(%rbx)
.LBB31:
.LBB32:
.LBB33:
.LBB34:
	.loc 3 258 0
	movl	%eax, 72(%rbx)
.LBE34:
.LBE33:
.LBE32:
.LBE31:
	.loc 1 1052 0
	movq	%r9, %rbx
	jmp	.L97
.L87:
.LBE27:
.LBE25:
	.loc 1 1060 0
	popq	%rbx
	ret
.LFE241:
	.size	tb_reset_jump_recursive, .-tb_reset_jump_recursive
	.local	interrupt_lock.0
	.comm	interrupt_lock.0,4,4
	.p2align 4,,15
.globl cpu_interrupt
	.type	cpu_interrupt, @function
cpu_interrupt:
.LFB250:
	.loc 1 1218 0
	.loc 1 1225 0
	movq	1248(%rdi), %rcx
	.loc 1 1222 0
	orl	%esi, 1236(%rdi)
	.loc 1 1226 0
	testq	%rcx, %rcx
	je	.L113
.LBB35:
.LBB36:
	.loc 3 373 0
	xorl	%edx, %edx
	.loc 3 375 0
	movl	$1, %esi
	movq	%rdx, %rax
#APP
	lock; cmpxchgl %esi, interrupt_lock.0(%rip)
#NO_APP
.LBE36:
.LBE35:
	.loc 3 372 0
	testl	%eax, %eax
	je	.L116
.L113:
	rep ; ret
	.p2align 4,,7
.L116:
	.loc 1 1227 0
	movq	$0, 1248(%rdi)
	.loc 1 1228 0
	movq	%rcx, %rdi
	call	tb_reset_jump_recursive
	.loc 1 1229 0
	movl	$0, interrupt_lock.0(%rip)
	ret
.LFE250:
	.size	cpu_interrupt, .-cpu_interrupt
	.p2align 4,,15
.globl cpu_single_step
	.type	cpu_single_step, @function
cpu_single_step:
.LFB247:
	.loc 1 1168 0
	.loc 1 1170 0
	cmpl	%esi, 46460(%rdi)
	je	.L117
	.loc 1 1171 0
	movl	%esi, 46460(%rdi)
	.loc 1 1174 0
	jmp	tb_flush
	.p2align 4,,7
.L117:
	rep ; ret
.LFE247:
	.size	cpu_single_step, .-cpu_single_step
	.section	.rodata.str1.1
.LC18:
	.string	"w"
.LC17:
	.string	"a"
	.text
	.p2align 4,,15
.globl cpu_set_log
	.type	cpu_set_log, @function
cpu_set_log:
.LFB248:
	.loc 1 1181 0
	subq	$8, %rsp
.LCFI15:
	.loc 1 1183 0
	testl	%edi, %edi
	.loc 1 1182 0
	movl	%edi, loglevel(%rip)
	.loc 1 1183 0
	je	.L127
	cmpq	$0, logfile(%rip)
	jne	.L120
	.loc 1 1184 0
	movl	log_append(%rip), %r8d
	movq	logfilename(%rip), %rdi
	movl	$.LC18, %eax
	movl	$.LC17, %esi
	testl	%r8d, %r8d
	cmove	%rax, %rsi
	call	fopen64
	.loc 1 1185 0
	testq	%rax, %rax
	.loc 1 1184 0
	movq	%rax, logfile(%rip)
	.loc 1 1185 0
	je	.L128
	.loc 1 1196 0
	movq	%rax, %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	call	setvbuf
	movl	loglevel(%rip), %edi
	.loc 1 1198 0
	movl	$1, log_append(%rip)
.L120:
	.loc 1 1200 0
	testl	%edi, %edi
	jne	.L119
	.p2align 4,,7
.L127:
	movq	logfile(%rip), %rdi
	testq	%rdi, %rdi
	jne	.L129
.L119:
	.loc 1 1204 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L129:
	.loc 1 1201 0
	call	fclose
	.loc 1 1202 0
	movq	$0, logfile(%rip)
	.loc 1 1204 0
	addq	$8, %rsp
	ret
.L128:
	.loc 1 1186 0
	movq	logfilename(%rip), %rdi
	call	perror
	.loc 1 1187 0
	movl	$1, %edi
	call	_exit
.LFE248:
	.size	cpu_set_log, .-cpu_set_log
	.p2align 4,,15
.globl cpu_set_log_filename
	.type	cpu_set_log_filename, @function
cpu_set_log_filename:
.LFB249:
	.loc 1 1207 0
	subq	$8, %rsp
.LCFI16:
	.loc 1 1208 0
	call	__strdup
	.loc 1 1209 0
	movq	logfile(%rip), %rdi
	.loc 1 1208 0
	movq	%rax, logfilename(%rip)
	.loc 1 1209 0
	testq	%rdi, %rdi
	jne	.L132
	.loc 1 1213 0
	movl	loglevel(%rip), %edi
	addq	$8, %rsp
	jmp	cpu_set_log
	.p2align 4,,7
.L132:
	.loc 1 1210 0
	call	fclose
	.loc 1 1213 0
	movl	loglevel(%rip), %edi
	.loc 1 1211 0
	movq	$0, logfile(%rip)
	.loc 1 1213 0
	addq	$8, %rsp
	jmp	cpu_set_log
.LFE249:
	.size	cpu_set_log_filename, .-cpu_set_log_filename
	.p2align 4,,15
.globl cpu_reset_interrupt
	.type	cpu_reset_interrupt, @function
cpu_reset_interrupt:
.LFB251:
	.loc 1 1234 0
	.loc 1 1235 0
	notl	%esi
	andl	%esi, 1236(%rdi)
	ret
.LFE251:
	.size	cpu_reset_interrupt, .-cpu_reset_interrupt
	.p2align 4,,15
	.type	cmp1, @function
cmp1:
.LFB252:
	.loc 1 1267 0
	movq	%rbx, -24(%rsp)
.LCFI17:
	movq	%rbp, -16(%rsp)
.LCFI18:
	movl	%esi, %ebx
	movq	%r12, -8(%rsp)
.LCFI19:
	subq	$24, %rsp
.LCFI20:
	.loc 1 1267 0
	movq	%rdi, %r12
	.loc 1 1268 0
	movq	%rdx, %rdi
	.loc 1 1267 0
	movq	%rdx, %rbp
	.loc 1 1268 0
	call	strlen
	movslq	%ebx,%rdx
	.loc 1 1269 0
	xorl	%ecx, %ecx
	.loc 1 1268 0
	cmpq	%rdx, %rax
	je	.L136
	.loc 1 1271 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%ecx, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L136:
	.loc 1 1270 0
	cld
	movq	%rax, %rcx
	cmpq	%rax, %rax
	movq	%r12, %rsi
	movq	%rbp, %rdi
	.loc 1 1271 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 1270 0
	repz
	cmpsb
	.loc 1 1271 0
	movq	16(%rsp), %r12
	.loc 1 1270 0
	setb	%al
	seta	%dl
	xorl	%ecx, %ecx
	cmpb	%al, %dl
	sete	%cl
	.loc 1 1271 0
	addq	$24, %rsp
	movl	%ecx, %eax
	ret
.LFE252:
	.size	cmp1, .-cmp1
	.section	.rodata.str1.1
.LC19:
	.string	"all"
	.text
	.p2align 4,,15
.globl cpu_str_to_log_mask
	.type	cpu_str_to_log_mask, @function
cpu_str_to_log_mask:
.LFB253:
	.loc 1 1275 0
	pushq	%r15
.LCFI21:
	pushq	%r14
.LCFI22:
	.loc 1 1281 0
	xorl	%r14d, %r14d
	.loc 1 1275 0
	pushq	%r13
.LCFI23:
	pushq	%r12
.LCFI24:
	pushq	%rbp
.LCFI25:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI26:
	subq	$8, %rsp
.LCFI27:
	movl	cpu_log_items(%rip), %r15d
	.loc 1 1283 0
	movl	$44, %esi
	movq	%rbp, %rdi
	call	strchr
	.loc 1 1284 0
	testq	%rax, %rax
	.loc 1 1283 0
	movq	%rax, %r13
	.loc 1 1284 0
	je	.L161
.L140:
	.loc 1 1286 0
	movl	%r13d, %r12d
	movl	$.LC19, %edx
	movq	%rbp, %rdi
	subl	%ebp, %r12d
	movl	%r12d, %esi
	call	cmp1
	testl	%eax, %eax
	je	.L141
.L162:
	.loc 1 1287 0
	testl	%r15d, %r15d
	movl	$cpu_log_items, %ebx
	je	.L158
	movl	cpu_log_items(%rip), %eax
	.p2align 4,,7
.L145:
	addq	$24, %rbx
	.loc 1 1288 0
	orl	%eax, %r14d
	.loc 1 1287 0
	movl	(%rbx), %eax
	testl	%eax, %eax
	jne	.L145
.L151:
	.loc 1 1298 0
	orl	%eax, %r14d
	.loc 1 1299 0
	cmpb	$44, (%r13)
	jne	.L139
	.loc 1 1301 0
	leaq	1(%r13), %rbp
	.loc 1 1283 0
	movl	$44, %esi
	movq	%rbp, %rdi
	call	strchr
	.loc 1 1284 0
	testq	%rax, %rax
	.loc 1 1283 0
	movq	%rax, %r13
	.loc 1 1284 0
	jne	.L140
.L161:
	.loc 1 1285 0
	movq	%rbp, %rdi
	call	strlen
	leaq	(%rax,%rbp), %r13
	.loc 1 1286 0
	movl	$.LC19, %edx
	movq	%rbp, %rdi
	movl	%r13d, %r12d
	subl	%ebp, %r12d
	movl	%r12d, %esi
	call	cmp1
	testl	%eax, %eax
	jne	.L162
	.p2align 4,,7
.L141:
	.loc 1 1291 0
	movl	$cpu_log_items, %ebx
	testl	%r15d, %r15d
	jmp	.L160
	.p2align 4,,7
.L163:
	.loc 1 1292 0
	movq	8(%rbx), %rdx
	movl	%r12d, %esi
	movq	%rbp, %rdi
	call	cmp1
	testl	%eax, %eax
	jne	.L159
	.loc 1 1291 0
	addq	$24, %rbx
	movl	(%rbx), %r9d
	testl	%r9d, %r9d
.L160:
	jne	.L163
	.loc 1 1295 0
	xorl	%eax, %eax
.L137:
	.loc 1 1304 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L158:
	movl	cpu_log_items(%rip), %eax
	jmp	.L151
.L159:
	movl	(%rbx), %eax
	jmp	.L151
.L139:
	.loc 1 1303 0
	movl	%r14d, %eax
	.p2align 4,,2
	jmp	.L137
.LFE253:
	.size	cpu_str_to_log_mask, .-cpu_str_to_log_mask
	.section	.rodata.str1.1
.LC20:
	.string	"qemu: fatal: "
	.text
	.p2align 4,,15
.globl cpu_abort
	.type	cpu_abort, @function
cpu_abort:
.LFB254:
	.loc 1 1307 0
	movq	%rbx, -32(%rsp)
.LCFI28:
	movq	%rbp, -24(%rsp)
.LCFI29:
	movq	%rdi, %rbp
	movq	%r12, -16(%rsp)
.LCFI30:
	movq	%r13, -8(%rsp)
.LCFI31:
	subq	$280, %rsp
.LCFI32:
	.loc 1 1307 0
	movq	%rdx, 80(%rsp)
	movzbl	%al, %edx 
	movq	%r8, 96(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L165, %edx
	movq	%r9, 104(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rsi, %r12
	.loc 1 1313 0
	movl	$.LC20, %edi
	.loc 1 1307 0
	subq	%rax, %rdx
	leaq	239(%rsp), %rax
	.loc 1 1313 0
	movl	$1, %esi
	.loc 1 1312 0
	leaq	32(%rsp), %rbx
	movq	%rsp, %r13
	.loc 1 1307 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L165:
	.loc 1 1311 0
	leaq	288(%rsp), %rax
	movl	$16, 32(%rsp)
	.loc 1 1313 0
	movl	$13, %edx
	.loc 1 1311 0
	movl	$48, 36(%rsp)
	.loc 1 1313 0
	movq	stderr(%rip), %rcx
	.loc 1 1311 0
	movq	%rax, 40(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc 1 1312 0
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 1313 0
	call	fwrite
	.loc 1 1314 0
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	vfprintf
	.loc 1 1315 0
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc
	.loc 1 1317 0
	cmpq	$0, 952(%rbp)
	js	.L168
.L166:
	.loc 1 1322 0
	movq	stderr(%rip), %rsi
	movl	$3, %ecx
	movl	$fprintf, %edx
	movq	%rbp, %rdi
	call	cpu_dump_state
	.loc 1 1326 0
	movq	logfile(%rip), %rcx
	testq	%rcx, %rcx
	jne	.L169
	.loc 1 1340 0
	call	abort
	.p2align 4,,7
.L169:
	.loc 1 1327 0
	movl	$13, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	.loc 1 1328 0
	movq	logfile(%rip), %rdi
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	vfprintf
	.loc 1 1329 0
	movq	logfile(%rip), %rsi
	movl	$10, %edi
	call	fputc
	.loc 1 1331 0
	movq	logfile(%rip), %rsi
	movl	$3, %ecx
	movl	$fprintf, %edx
	movq	%rbp, %rdi
	call	cpu_dump_state
	.loc 1 1335 0
	movq	logfile(%rip), %rdi
	call	fflush
	.loc 1 1336 0
	movq	logfile(%rip), %rdi
	call	fclose
	.loc 1 1340 0
	call	abort
	.p2align 4,,7
.L168:
	.loc 1 1320 0
	xorl	%esi, %esi
	movl	$127, %edi
	call	vmexit
	jmp	.L166
.LFE254:
	.size	cpu_abort, .-cpu_abort
	.p2align 4,,15
.globl cpu_copy
	.type	cpu_copy, @function
cpu_copy:
.LFB255:
	.loc 1 1344 0
	movq	%rbx, -32(%rsp)
.LCFI33:
	movq	%r12, -24(%rsp)
.LCFI34:
	movq	%rdi, %r12
	movq	%r13, -16(%rsp)
.LCFI35:
	movq	%r14, -8(%rsp)
.LCFI36:
	subq	$40, %rsp
.LCFI37:
	.loc 1 1345 0
	movq	47008(%rdi), %rdi
	call	cpu_x86_init
	.loc 1 1347 0
	movq	46984(%rax), %r13
	.loc 1 1348 0
	movl	46992(%rax), %r14d
	.loc 1 1345 0
	movq	%rax, %rbx
	.loc 1 1349 0
	movq	%r12, %rsi
	movl	$47136, %edx
	movq	%rax, %rdi
	call	memcpy
	.loc 1 1350 0
	movq	%r13, 46984(%rbx)
	.loc 1 1351 0
	movl	%r14d, 46992(%rbx)
	.loc 1 1353 0
	movq	%rbx, %rax
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE255:
	.size	cpu_copy, .-cpu_copy
	.p2align 4,,15
.globl tlb_flush
	.type	tlb_flush, @function
tlb_flush:
.LFB256:
	.loc 1 1360 0
	subq	$8, %rsp
.LCFI38:
	movq	%rdi, %rax
	.loc 1 1368 0
	movq	$0, 1248(%rdi)
	movl	$255, %edx
	.p2align 4,,7
.L175:
	.loc 1 1371 0
	movl	$-1, 1272(%rax)
	.loc 1 1372 0
	movl	$-1, 1276(%rax)
	.loc 1 1373 0
	movl	$-1, 1280(%rax)
	.loc 1 1374 0
	movl	$-1, 7416(%rax)
	.loc 1 1375 0
	movl	$-1, 7420(%rax)
	.loc 1 1376 0
	movl	$-1, 7424(%rax)
	addq	$24, %rax
	decl	%edx
	jns	.L175
	.loc 1 1389 0
	addq	$13560, %rdi
	movl	$32768, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 1399 0
	incl	tlb_flush_count(%rip)
	addq	$8, %rsp
	ret
.LFE256:
	.size	tlb_flush, .-tlb_flush
	.p2align 4,,15
.globl tlb_flush_page
	.type	tlb_flush_page, @function
tlb_flush_page:
.LFB258:
	.loc 1 1417 0
	pushq	%rbp
.LCFI39:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI40:
	movl	%esi, %ebx
	.loc 1 1428 0
	andl	$-4096, %ebx
	.loc 1 1429 0
	movl	%ebx, %eax
	.loc 1 1417 0
	subq	$8, %rsp
.LCFI41:
	.loc 1 1426 0
	movq	$0, 1248(%rdi)
	.loc 1 1429 0
	shrl	$12, %eax
.LBB37:
	.loc 1 1403 0
	movzbl	%al, %ecx 
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rdi,%rax,8), %rax
	leaq	1272(%rax), %rdx
.LBB38:
	.loc 1 1404 0
	movl	1272(%rax), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L180
	movl	4(%rdx), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L180
	movl	8(%rdx), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L180
.LBE38:
.LBE37:
.LBB39:
	.loc 1 1403 0
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rbp,%rax,8), %rax
	leaq	7416(%rax), %rdx
.LBB40:
	.loc 1 1404 0
	movl	7416(%rax), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L183
.L187:
	movl	4(%rdx), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L183
	movl	8(%rdx), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	je	.L183
.L184:
.LBE40:
.LBE39:
.LBB41:
	.loc 3 183 0
	leal	-4096(%rbx), %eax
.LBE41:
	.loc 1 1442 0
	movl	$512, %edx
	xorl	%esi, %esi
.LBB42:
.LBB43:
	.loc 3 185 0
	movl	%eax, %edi
	shrl	$6, %edi
	xorl	%eax, %edi
	shrl	$6, %edi
.LBE43:
.LBE42:
	.loc 1 1442 0
	andl	$4032, %edi
	leaq	13560(%rbp,%rdi,8), %rdi
	call	memset
.LBB44:
.LBB45:
	.loc 3 185 0
	movl	%ebx, %edi
.LBE45:
.LBE44:
	.loc 1 1445 0
	addq	$8, %rsp
	movl	$512, %edx
.LBB46:
.LBB47:
	.loc 3 185 0
	shrl	$6, %edi
.LBE47:
.LBE46:
	.loc 1 1445 0
	xorl	%esi, %esi
.LBB48:
.LBB49:
	.loc 3 185 0
	xorl	%ebx, %edi
	shrl	$6, %edi
.LBE49:
.LBE48:
	.loc 1 1445 0
	andl	$4032, %edi
	popq	%rbx
	leaq	13560(%rbp,%rdi,8), %rdi
	popq	%rbp
	jmp	memset
	.p2align 4,,7
.L180:
.LBB50:
	.loc 1 1403 0
	leaq	(%rcx,%rcx,2), %rax
.LBE50:
.LBB51:
.LBB52:
	.loc 1 1410 0
	movl	$-1, (%rdx)
	.loc 1 1411 0
	movl	$-1, 4(%rdx)
	.loc 1 1412 0
	movl	$-1, 8(%rdx)
.LBE52:
.LBE51:
.LBB53:
	.loc 1 1403 0
	leaq	(%rbp,%rax,8), %rax
	leaq	7416(%rax), %rdx
.LBB54:
	.loc 1 1404 0
	movl	7416(%rax), %eax
	andl	$-4088, %eax
	cmpl	%ebx, %eax
	jne	.L187
	.p2align 4,,7
.L183:
	.loc 1 1410 0
	movl	$-1, (%rdx)
	.loc 1 1411 0
	movl	$-1, 4(%rdx)
	.loc 1 1412 0
	movl	$-1, 8(%rdx)
	jmp	.L184
.LBE54:
.LBE53:
.LFE258:
	.size	tlb_flush_page, .-tlb_flush_page
	.p2align 4,,15
.globl cpu_watchpoint_remove
	.type	cpu_watchpoint_remove, @function
cpu_watchpoint_remove:
.LFB244:
	.loc 1 1106 0
	subq	$8, %rsp
.LCFI42:
	.loc 1 1109 0
	movl	46976(%rdi), %r8d
	xorl	%edx, %edx
	cmpl	$0, %r8d
	jmp	.L196
	.p2align 4,,7
.L198:
	.loc 1 1110 0
	movslq	%edx,%rax
	salq	$4, %rax
	leaq	(%rax,%rdi), %rcx
	cmpl	%esi, 46464(%rcx)
	leaq	46464(%rcx), %r9
	je	.L197
	.loc 1 1109 0
	incl	%edx
	cmpl	%edx, %r8d
.L196:
	jg	.L198
	.loc 1 1117 0
	movl	$-1, %eax
	.loc 1 1118 0
	addq	$8, %rsp
	ret
.L197:
	.loc 1 1111 0
	decl	%r8d
	.loc 1 1112 0
	movslq	%r8d,%rax
	.loc 1 1111 0
	movl	%r8d, 46976(%rdi)
	.loc 1 1112 0
	salq	$4, %rax
	addq	%rdi, %rax
	movq	46464(%rax), %rdx
	movq	%rdx, 46464(%rcx)
	movq	46472(%rax), %rax
	movq	%rax, 8(%r9)
	.loc 1 1113 0
	call	tlb_flush_page
	.loc 1 1114 0
	xorl	%eax, %eax
	.loc 1 1118 0
	addq	$8, %rsp
	ret
.LFE244:
	.size	cpu_watchpoint_remove, .-cpu_watchpoint_remove
	.p2align 4,,15
.globl cpu_watchpoint_insert
	.type	cpu_watchpoint_insert, @function
cpu_watchpoint_insert:
.LFB243:
	.loc 1 1084 0
	pushq	%rbp
.LCFI43:
	.loc 1 1087 0
	xorl	%ecx, %ecx
	.loc 1 1084 0
	pushq	%rbx
.LCFI44:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI45:
	.loc 1 1087 0
	movl	46976(%rdi), %eax
	cmpl	$0, %eax
	jle	.L207
	leaq	46464(%rdi), %rdx
	.p2align 4,,7
.L204:
	.loc 1 1088 0
	cmpl	%esi, (%rdx)
	je	.L208
	.loc 1 1087 0
	incl	%ecx
	addq	$16, %rdx
	cmpl	%ecx, %eax
	jg	.L204
.L207:
	.loc 1 1091 0
	cmpl	$31, %eax
	movl	%eax, %ebp
	.loc 1 1092 0
	movl	$-1, %edx
	.loc 1 1091 0
	jg	.L199
	.loc 1 1094 0
	incl	%eax
	.loc 1 1096 0
	movq	%rbx, %rdi
	.loc 1 1094 0
	movl	%eax, 46976(%rbx)
	.loc 1 1095 0
	movslq	%ebp,%rax
	salq	$4, %rax
	movl	%esi, 46464(%rax,%rbx)
	.loc 1 1096 0
	call	tlb_flush_page
	.loc 1 1100 0
	movq	%rbx, %rdi
	call	tb_flush
	.loc 1 1101 0
	movl	%ebp, %edx
.L199:
	.loc 1 1102 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
.L208:
	addq	$8, %rsp
	.loc 1 1089 0
	xorl	%edx, %edx
	.loc 1 1102 0
	popq	%rbx
	popq	%rbp
	movl	%edx, %eax
	ret
.LFE243:
	.size	cpu_watchpoint_insert, .-cpu_watchpoint_insert
	.p2align 4,,15
.globl cpu_physical_memory_reset_dirty
	.type	cpu_physical_memory_reset_dirty, @function
cpu_physical_memory_reset_dirty:
.LFB262:
	.loc 1 1489 0
	.loc 1 1496 0
	addq	$4095, %rsi
	.loc 1 1495 0
	andq	$-4096, %rdi
	.loc 1 1496 0
	andq	$-4096, %rsi
	.loc 1 1499 0
	subq	%rdi, %rsi
	je	.L209
	.loc 1 1515 0
	movq	%rdi, %rcx
	.loc 1 1501 0
	movq	%rsi, %r9
	.loc 1 1514 0
	notl	%edx
	.loc 1 1515 0
	shrq	$12, %rcx
	addq	phys_ram_dirty(%rip), %rcx
	.loc 1 1501 0
	shrq	$12, %r9
	.loc 1 1516 0
	xorl	%r8d, %r8d
	jmp	.L240
.L242:
	.loc 1 1517 0
	movslq	%r8d,%rax
	.loc 1 1516 0
	incl	%r8d
	.loc 1 1517 0
	andb	%dl, (%rax,%rcx)
.L240:
	.loc 1 1516 0
	cmpl	%r9d, %r8d
	jl	.L242
	.loc 1 1522 0
	movq	first_cpu(%rip), %r9
	.loc 1 1521 0
	addq	phys_ram_base(%rip), %rdi
	.loc 1 1522 0
	testq	%r9, %r9
	je	.L209
.L243:
	leaq	1272(%r9), %rcx
	movl	$255, %r8d
	.p2align 4,,7
.L224:
.LBB55:
.LBB56:
	.loc 1 1479 0
	movl	4(%rcx), %edx
	testl	$4095, %edx
	jne	.L220
	.loc 1 1480 0
	movq	%rdx, %rax
	andl	$4294963200, %eax
	addq	16(%rcx), %rax
	.loc 1 1481 0
	subq	%rdi, %rax
	cmpq	%rsi, %rax
	jae	.L220
	.loc 1 1482 0
	andl	$-4096, %edx
	orl	$64, %edx
	movl	%edx, 4(%rcx)
	.p2align 4,,7
.L220:
	addq	$24, %rcx
	decl	%r8d
	jns	.L224
	leaq	7416(%r9), %rcx
	movl	$255, %r8d
	.p2align 4,,7
.L231:
.LBE56:
.LBE55:
.LBB57:
.LBB58:
	.loc 1 1479 0
	movl	4(%rcx), %edx
	testl	$4095, %edx
	jne	.L227
	.loc 1 1480 0
	movq	%rdx, %rax
	andl	$4294963200, %eax
	addq	16(%rcx), %rax
	.loc 1 1481 0
	subq	%rdi, %rax
	cmpq	%rsi, %rax
	jae	.L227
	.loc 1 1482 0
	andl	$-4096, %edx
	orl	$64, %edx
	movl	%edx, 4(%rcx)
	.p2align 4,,7
.L227:
	addq	$24, %rcx
	decl	%r8d
	jns	.L231
.LBE58:
.LBE57:
	.loc 1 1522 0
	movq	46984(%r9), %r9
	testq	%r9, %r9
	jne	.L243
.L209:
	rep ; ret
.LFE262:
	.size	cpu_physical_memory_reset_dirty, .-cpu_physical_memory_reset_dirty
	.p2align 4,,15
	.type	tlb_protect_code, @function
tlb_protect_code:
.LFB259:
	.loc 1 1461 0
	.loc 1 1462 0
	leaq	4096(%rdi), %rsi
	movl	$2, %edx
	jmp	cpu_physical_memory_reset_dirty
.LFE259:
	.size	tlb_protect_code, .-tlb_protect_code
	.p2align 4,,15
.globl tb_link_phys
	.type	tb_link_phys, @function
tb_link_phys:
.LFB238:
	.loc 1 952 0
	.loc 1 958 0
	movq	%rsi, %rax
	.loc 1 952 0
	movq	%rbx, -48(%rsp)
.LCFI46:
	movq	%rbp, -40(%rsp)
.LCFI47:
	.loc 1 958 0
	andl	$32767, %eax
	.loc 1 952 0
	movq	%r12, -32(%rsp)
.LCFI48:
	movq	%r13, -24(%rsp)
.LCFI49:
	.loc 1 958 0
	salq	$3, %rax
	.loc 1 952 0
	movq	%r14, -16(%rsp)
.LCFI50:
	movq	%r15, -8(%rsp)
.LCFI51:
	subq	$56, %rsp
.LCFI52:
	.loc 1 952 0
	movl	%edx, %r15d
	.loc 1 959 0
	movq	tb_phys_hash(%rax), %rdx
.LBB59:
	.loc 1 881 0
	movl	%esi, %r12d
.LBE59:
	.loc 1 952 0
	movq	%rdi, %rbp
.LBB60:
	.loc 1 881 0
	andl	$-4096, %r12d
.LBE60:
	.loc 1 959 0
	movq	%rdx, 32(%rdi)
	.loc 1 960 0
	movq	%rdi, tb_phys_hash(%rax)
.LBB61:
.LBB62:
.LBB63:
.LBB64:
	.loc 1 243 0
	movl	%r12d, %eax
	shrl	$22, %eax
.LBE64:
.LBE63:
	.loc 1 885 0
	movl	%r12d, 56(%rdi)
.LBB65:
	.loc 1 240 0
	movl	%r12d, %r14d
.LBB66:
	.loc 1 243 0
	mov	%eax, %eax
.LBE66:
	.loc 1 240 0
	shrl	$12, %r14d
.LBB67:
	.loc 1 243 0
	leaq	0(,%rax,8), %r13
	.loc 1 244 0
	movq	l1_map(%r13), %rbx
	.loc 1 245 0
	testq	%rbx, %rbx
	je	.L267
.L247:
	.loc 1 250 0
	movq	%r14, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rbx
.LBE67:
.LBE65:
	.loc 1 887 0
	movq	(%rbx), %rax
	movq	%rax, 40(%rbp)
.LBB68:
.LBB69:
	.loc 1 336 0
	movq	16(%rbx), %rdi
.LBE69:
.LBE68:
	.loc 1 888 0
	movq	(%rbx), %r13
	.loc 1 889 0
	movq	%rbp, (%rbx)
.LBB70:
.LBB71:
	.loc 1 336 0
	testq	%rdi, %rdi
	jne	.L268
.L249:
.LBE71:
.LBE70:
	.loc 1 925 0
	testq	%r13, %r13
.LBB72:
.LBB73:
	.loc 1 340 0
	movl	$0, 8(%rbx)
.LBE73:
.LBE72:
	.loc 1 925 0
	je	.L269
.L252:
.LBE62:
.LBE61:
	.loc 1 964 0
	cmpl	$-1, %r15d
	je	.L253
.LBB74:
.LBB75:
.LBB76:
.LBB77:
	.loc 1 243 0
	movl	%r15d, %eax
.LBE77:
.LBE76:
	.loc 1 885 0
	movl	%r15d, 60(%rbp)
.LBB78:
	.loc 1 240 0
	movl	%r15d, %r13d
.LBB79:
	.loc 1 243 0
	shrl	$22, %eax
.LBE79:
	.loc 1 240 0
	shrl	$12, %r13d
.LBB80:
	.loc 1 243 0
	mov	%eax, %eax
	leaq	0(,%rax,8), %r12
	.loc 1 244 0
	movq	l1_map(%r12), %rbx
	.loc 1 245 0
	testq	%rbx, %rbx
	je	.L270
.L254:
	.loc 1 250 0
	movq	%r13, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %rbx
.LBE80:
.LBE78:
	.loc 1 887 0
	movq	(%rbx), %rax
	movq	%rax, 48(%rbp)
.LBB81:
.LBB82:
	.loc 1 336 0
	movq	16(%rbx), %rdi
.LBE82:
.LBE81:
	.loc 1 889 0
	movq	%rbp, %rax
	orq	$1, %rax
	.loc 1 888 0
	movq	(%rbx), %r12
	.loc 1 889 0
	movq	%rax, (%rbx)
.LBB83:
.LBB84:
	.loc 1 336 0
	testq	%rdi, %rdi
	jne	.L271
.L256:
.LBE84:
.LBE83:
	.loc 1 925 0
	testq	%r12, %r12
.LBB85:
.LBB86:
	.loc 1 340 0
	movl	$0, 8(%rbx)
.LBE86:
.LBE85:
	.loc 1 925 0
	je	.L272
.L260:
.LBE75:
.LBE74:
	.loc 1 969 0
	movq	%rbp, %rax
	.loc 1 970 0
	movq	$0, 80(%rbp)
	.loc 1 971 0
	movq	$0, 88(%rbp)
	.loc 1 969 0
	orq	$2, %rax
	movq	%rax, 96(%rbp)
	.loc 1 974 0
	movzwl	64(%rbp), %eax
	cmpw	$-1, %ax
	je	.L261
.LBB87:
.LBB88:
.LBB89:
	.loc 3 257 0
	movzwl	%ax, %eax 
	addq	24(%rbp), %rax
.LBB90:
	.loc 3 258 0
	movl	%eax, 68(%rbp)
.L261:
.LBE90:
.LBE89:
.LBE88:
.LBE87:
	.loc 1 976 0
	movzwl	66(%rbp), %eax
	cmpw	$-1, %ax
	je	.L245
.LBB91:
.LBB92:
.LBB93:
	.loc 3 257 0
	movzwl	%ax, %eax 
	addq	24(%rbp), %rax
.LBB94:
	.loc 3 258 0
	movl	%eax, 72(%rbp)
.L245:
.LBE94:
.LBE93:
.LBE92:
.LBE91:
	.loc 1 982 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L271:
.LBB95:
.LBB96:
.LBB97:
.LBB98:
	.loc 1 337 0
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%rbx)
	jmp	.L256
	.p2align 4,,7
.L268:
.LBE98:
.LBE97:
.LBE96:
.LBE95:
.LBB99:
.LBB100:
.LBB101:
.LBB102:
	.loc 1 337 0
	.p2align 4,,6
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%rbx)
	.p2align 4,,4
	jmp	.L249
	.p2align 4,,7
.L253:
.LBE102:
.LBE101:
.LBE100:
.LBE99:
	.loc 1 967 0
	movl	%r15d, 60(%rbp)
	.p2align 4,,4
	jmp	.L260
.L269:
.LBB103:
.LBB104:
	.loc 1 926 0
	mov	%r12d, %edi
	.p2align 4,,5
	call	tlb_protect_code
	.p2align 4,,4
	jmp	.L252
.L267:
.LBB105:
.LBB106:
	.loc 1 247 0
	movl	$24576, %edi
	call	qemu_malloc
	.loc 1 248 0
	movl	$24576, %edx
	.loc 1 247 0
	movq	%rax, %rbx
	.loc 1 248 0
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset
	.loc 1 249 0
	movq	%rbx, l1_map(%r13)
	jmp	.L247
.L272:
.LBE106:
.LBE105:
.LBE104:
.LBE103:
.LBB107:
.LBB108:
	.loc 1 926 0
	mov	%r15d, %edi
	call	tlb_protect_code
	jmp	.L260
.L270:
.LBB109:
.LBB110:
	.loc 1 247 0
	movl	$24576, %edi
	call	qemu_malloc
	.loc 1 248 0
	movl	$24576, %edx
	.loc 1 247 0
	movq	%rax, %rbx
	.loc 1 248 0
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset
	.loc 1 249 0
	movq	%rbx, l1_map(%r12)
	jmp	.L254
.LBE110:
.LBE109:
.LBE108:
.LBE107:
.LFE238:
	.size	tb_link_phys, .-tb_link_phys
	.p2align 4,,15
.globl cpu_tlb_update_dirty
	.type	cpu_tlb_update_dirty, @function
cpu_tlb_update_dirty:
.LFB264:
	.loc 1 1581 0
	leaq	1272(%rdi), %rsi
	movl	$255, %r8d
	.p2align 4,,7
.L281:
.LBB111:
.LBB112:
	.loc 1 1570 0
	movl	4(%rsi), %ecx
	testl	$4095, %ecx
	jne	.L276
	.loc 1 1571 0
	movq	%rcx, %rax
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rdx
	.loc 1 1571 0
	andl	$4294963200, %eax
	addq	16(%rsi), %rax
	subq	phys_ram_base(%rip), %rax
.LBB113:
.LBB114:
	.loc 2 961 0
	shrq	$12, %rax
.LBE114:
.LBE113:
	.loc 2 960 0
	cmpb	$-1, (%rax,%rdx)
	je	.L276
	.loc 1 1574 0
	orl	$64, %ecx
	movl	%ecx, 4(%rsi)
	.p2align 4,,7
.L276:
	addq	$24, %rsi
	decl	%r8d
	jns	.L281
	leaq	7416(%rdi), %rsi
	movl	$255, %r8d
	.p2align 4,,7
.L289:
.LBE112:
.LBE111:
.LBB115:
.LBB116:
	.loc 1 1570 0
	movl	4(%rsi), %ecx
	testl	$4095, %ecx
	jne	.L284
	.loc 1 1571 0
	movq	%rcx, %rax
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rdx
	.loc 1 1571 0
	andl	$4294963200, %eax
	addq	16(%rsi), %rax
	subq	phys_ram_base(%rip), %rax
.LBB117:
.LBB118:
	.loc 2 961 0
	shrq	$12, %rax
.LBE118:
.LBE117:
	.loc 2 960 0
	cmpb	$-1, (%rax,%rdx)
	je	.L284
	.loc 1 1574 0
	orl	$64, %ecx
	movl	%ecx, 4(%rsi)
	.p2align 4,,7
.L284:
	addq	$24, %rsi
	decl	%r8d
	jns	.L289
.LBE116:
.LBE115:
	.loc 1 1585 0
	rep ; ret
.LFE264:
	.size	cpu_tlb_update_dirty, .-cpu_tlb_update_dirty
	.p2align 4,,15
.globl page_unprotect
	.type	page_unprotect, @function
page_unprotect:
.LFB268:
	.loc 1 1766 0
	.loc 1 1802 0
	xorl	%eax, %eax
	ret
.LFE268:
	.size	page_unprotect, .-page_unprotect
	.p2align 4,,15
	.type	subpage_register, @function
subpage_register:
.LFB293:
	.loc 1 2413 0
	pushq	%r13
.LCFI53:
	movl	%edx, %r8d
	.loc 1 2417 0
	cmpl	$4095, %esi
	seta	%dl
	cmpl	$4095, %r8d
	.loc 1 2413 0
	pushq	%r12
.LCFI54:
	.loc 1 2417 0
	seta	%al
	orl	%edx, %eax
	.loc 1 2418 0
	movl	$-1, %edx
	.loc 1 2413 0
	pushq	%rbp
.LCFI55:
	.loc 1 2417 0
	testb	$1, %al
	.loc 1 2413 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI56:
	.loc 1 2417 0
	jne	.L295
	.loc 1 2419 0
	movl	%esi, %edi
	.loc 1 2420 0
	movl	%r8d, %r12d
	.loc 1 2425 0
	sarl	$4, %ecx
	.loc 1 2419 0
	andl	$4095, %edi
	.loc 1 2420 0
	andl	$4095, %r12d
	.loc 1 2426 0
	cmpl	%r12d, %edi
	jg	.L308
	movslq	%ecx,%rsi
	movq	%rsi, %rbx
	leaq	0(,%rsi,4), %r13
	salq	$5, %rbx
	.p2align 4,,7
.L306:
	movslq	%edi,%rax
	leaq	io_mem_write(%rbx), %r11
	leaq	io_mem_read(%rbx), %r9
	movq	%rax, %rdx
	salq	$5, %rax
	.loc 1 2427 0
	xorl	%ecx, %ecx
	salq	$6, %rdx
	leaq	131080(%rax,%rbp), %r8
	leaq	262184(%rdx,%rbp), %r10
	movq	%r13, %rdx
	.p2align 4,,7
.L305:
	.loc 1 2428 0
	cmpq	$0, io_mem_read(,%rdx,8)
	je	.L303
	.loc 1 2429 0
	movq	%r9, -131072(%r8)
	.loc 1 2430 0
	movq	io_mem_opaque(,%rsi,8), %rax
	movq	%rax, -32(%r10)
.L303:
	.loc 1 2432 0
	cmpq	$0, io_mem_write(,%rdx,8)
	je	.L302
	.loc 1 2433 0
	movq	%r11, (%r8)
	.loc 1 2434 0
	movq	io_mem_opaque(,%rsi,8), %rax
	movq	%rax, (%r10)
.L302:
	.loc 1 2427 0
	incl	%ecx
	incq	%rdx
	addq	$8, %r9
	addq	$8, %r11
	addq	$8, %r8
	addq	$8, %r10
	cmpl	$3, %ecx
	jbe	.L305
	.loc 1 2426 0
	incl	%edi
	cmpl	%r12d, %edi
	jle	.L306
.L308:
	.loc 1 2439 0
	xorl	%edx, %edx
.L295:
	.loc 1 2440 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	movl	%edx, %eax
	ret
.LFE293:
	.size	subpage_register, .-subpage_register
	.p2align 4,,15
.globl cpu_get_physical_page_desc
	.type	cpu_get_physical_page_desc, @function
cpu_get_physical_page_desc:
.LFB270:
	.loc 1 2079 0
	subq	$8, %rsp
.LCFI57:
	.loc 1 2082 0
	shrq	$12, %rdi
	call	phys_page_find
	.loc 1 2083 0
	testq	%rax, %rax
	.loc 1 2084 0
	movl	$32, %edx
	.loc 1 2083 0
	je	.L311
	.loc 1 2085 0
	movl	(%rax), %edx
.L311:
	.loc 1 2086 0
	movl	%edx, %eax
	addq	$8, %rsp
	ret
.LFE270:
	.size	cpu_get_physical_page_desc, .-cpu_get_physical_page_desc
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Not enough memory (requested_size = %u, max memory = %d)\n"
	.text
	.p2align 4,,15
.globl qemu_ram_alloc
	.type	qemu_ram_alloc, @function
qemu_ram_alloc:
.LFB271:
	.loc 1 2090 0
	subq	$8, %rsp
.LCFI58:
	.loc 1 2092 0
	movq	phys_ram_alloc_offset(%rip), %rsi
	movl	phys_ram_size(%rip), %ecx
	mov	%edi, %eax
	leaq	(%rax,%rsi), %rdx
	movslq	%ecx,%rax
	cmpq	%rax, %rdx
	jae	.L315
	.loc 1 2098 0
	leaq	4095(%rdx), %rax
	andq	$-4096, %rax
	movq	%rax, phys_ram_alloc_offset(%rip)
	.loc 1 2100 0
	movq	%rsi, %rax
	addq	$8, %rsp
	ret
.L315:
	.loc 1 2093 0
	movl	%edi, %edx
	movq	stderr(%rip), %rdi
	movl	$.LC21, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 2095 0
	call	abort
.LFE271:
	.size	qemu_ram_alloc, .-qemu_ram_alloc
	.p2align 4,,15
.globl qemu_ram_free
	.type	qemu_ram_free, @function
qemu_ram_free:
.LFB272:
	.loc 1 2103 0
	.loc 1 2103 0
	rep ; ret
.LFE272:
	.size	qemu_ram_free, .-qemu_ram_free
	.p2align 4,,15
	.type	unassigned_mem_readb, @function
unassigned_mem_readb:
.LFB273:
	.loc 1 2107 0
	.loc 1 2117 0
	xorl	%eax, %eax
	ret
.LFE273:
	.size	unassigned_mem_readb, .-unassigned_mem_readb
	.p2align 4,,15
	.type	unassigned_mem_writeb, @function
unassigned_mem_writeb:
.LFB274:
	.loc 1 2120 0
	.loc 1 2120 0
	rep ; ret
.LFE274:
	.size	unassigned_mem_writeb, .-unassigned_mem_writeb
	.p2align 4,,15
.globl ldl_phys
	.type	ldl_phys, @function
ldl_phys:
.LFB301:
	.loc 1 2706 0
	pushq	%rbx
.LCFI59:
	movq	%rdi, %rbx
	.loc 1 2714 0
	shrq	$12, %rdi
	.loc 1 2706 0
	subq	$16, %rsp
.LCFI60:
	.loc 1 2714 0
	call	phys_page_find
	.loc 1 2715 0
	testq	%rax, %rax
	.loc 1 2716 0
	movl	$32, %edx
	.loc 1 2715 0
	je	.L321
	.loc 1 2718 0
	mov	(%rax), %edx
.L321:
	.loc 1 2721 0
	movq	%rdx, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L322
	testb	$1, %dl
	je	.L325
.L322:
	.loc 1 2728 0
	andq	$-4096, %rdx
	addq	phys_ram_base(%rip), %rdx
	andl	$4095, %ebx
.LBB119:
.LBB120:
	.loc 2 352 0
	movl	(%rdx,%rbx), %eax
.LBE120:
.LBE119:
	.loc 1 2733 0
	addq	$16, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L325:
	.loc 1 2724 0
	shrq	$4, %rdx
	.loc 1 2725 0
	movq	%rbx, %rsi
	movzbl	%dl, %eax 
	leaq	8(%rsp), %rdx
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
	.loc 1 2733 0
	addq	$16, %rsp
	popq	%rbx
	ret
.LFE301:
	.size	ldl_phys, .-ldl_phys
	.p2align 4,,15
	.type	watch_mem_readl, @function
watch_mem_readl:
.LFB280:
	.loc 1 2251 0
	.loc 1 2251 0
	movq	%rsi, %rdi
	.loc 1 2252 0
	jmp	ldl_phys
.LFE280:
	.size	watch_mem_readl, .-watch_mem_readl
	.p2align 4,,15
	.type	check_watchpoint, @function
check_watchpoint:
.LFB281:
	.loc 1 2259 0
	.loc 1 2260 0
	movq	cpu_single_env(%rip), %r10
	.loc 1 2259 0
	pushq	%rbx
.LCFI61:
	.loc 1 2266 0
	xorl	%esi, %esi
	.loc 1 2265 0
	movl	%edi, %ebx
	.loc 1 2266 0
	movl	46976(%r10), %r9d
	cmpl	$0, %r9d
	jle	.L329
	movl	1264(%r10), %r8d
	movq	%r10, %rdx
	.p2align 4,,7
.L333:
	.loc 1 2267 0
	movl	46464(%rdx), %ecx
	.loc 1 2268 0
	movl	%r8d, %eax
	xorl	%ecx, %eax
	testl	$-4096, %eax
	jne	.L330
	.loc 1 2270 0
	movq	%rdi, %rax
	.loc 1 2269 0
	movl	%edi, %ebx
	subl	46472(%rdx), %ebx
	.loc 1 2270 0
	xorq	%rcx, %rax 
	testl	$4095, %eax 
	je	.L335
.L330:
	.loc 1 2266 0
	incl	%esi
	addq	$16, %rdx
	cmpl	%esi, %r9d
	jg	.L333
.L329:
	.loc 1 2278 0
	movl	%ebx, %eax
	popq	%rbx
	ret
.L335:
	.loc 1 2271 0
	leal	1(%rsi), %eax
	.loc 1 2272 0
	movl	$128, %esi
	.loc 1 2271 0
	movl	%eax, 46980(%r10)
	.loc 1 2272 0
	movq	cpu_single_env(%rip), %rdi
	call	cpu_interrupt
	.loc 1 2278 0
	movl	%ebx, %eax
	popq	%rbx
	ret
.LFE281:
	.size	check_watchpoint, .-check_watchpoint
	.p2align 4,,15
	.type	subpage_readb, @function
subpage_readb:
.LFB287:
	.loc 1 2346 0
	subq	$8, %rsp
.LCFI62:
.LBB121:
.LBB122:
	.loc 1 2321 0
	movl	%esi, %eax
	subl	(%rdi), %eax
	.loc 1 2326 0
	andl	$4095, %eax
	leaq	0(,%rax,4), %rdx
	salq	$3, %rax
	movq	8(%rdi,%rdx,8), %rcx
	movq	262152(%rdi,%rax,8), %rdi
	movq	%rsp, %rdx
	call	*(%rcx)
.LBE122:
.LBE121:
	.loc 1 2352 0
	addq	$8, %rsp
	ret
.LFE287:
	.size	subpage_readb, .-subpage_readb
	.p2align 4,,15
	.type	subpage_writeb, @function
subpage_writeb:
.LFB288:
	.loc 1 2356 0
	subq	$8, %rsp
.LCFI63:
.LBB123:
.LBB124:
	.loc 1 2337 0
	movl	%esi, %eax
	.loc 1 2335 0
	movq	$0, (%rsp)
	.loc 1 2337 0
	subl	(%rdi), %eax
	.loc 1 2342 0
	andl	$4095, %eax
	leaq	0(,%rax,4), %rcx
	salq	$3, %rax
	movq	131080(%rdi,%rcx,8), %r8
	movq	262184(%rdi,%rax,8), %rdi
	movq	%rsp, %rcx
	call	*(%r8)
.LBE124:
.LBE123:
	addq	$8, %rsp
	ret
.LFE288:
	.size	subpage_writeb, .-subpage_writeb
	.p2align 4,,15
	.type	subpage_readw, @function
subpage_readw:
.LFB289:
	.loc 1 2364 0
	subq	$8, %rsp
.LCFI64:
.LBB125:
.LBB126:
	.loc 1 2321 0
	movl	%esi, %eax
	subl	(%rdi), %eax
	.loc 1 2326 0
	andl	$4095, %eax
	leaq	1(,%rax,4), %rdx
	leaq	1(,%rax,8), %rax
	movq	8(%rdi,%rdx,8), %rcx
	movq	262152(%rdi,%rax,8), %rdi
	movq	%rsp, %rdx
	call	*(%rcx)
.LBE126:
.LBE125:
	.loc 1 2370 0
	addq	$8, %rsp
	ret
.LFE289:
	.size	subpage_readw, .-subpage_readw
	.p2align 4,,15
	.type	subpage_writew, @function
subpage_writew:
.LFB290:
	.loc 1 2374 0
	subq	$8, %rsp
.LCFI65:
.LBB127:
.LBB128:
	.loc 1 2337 0
	movl	%esi, %eax
	.loc 1 2335 0
	movq	$0, (%rsp)
	.loc 1 2337 0
	subl	(%rdi), %eax
	.loc 1 2342 0
	andl	$4095, %eax
	leaq	1(,%rax,4), %rcx
	leaq	1(,%rax,8), %rax
	movq	131080(%rdi,%rcx,8), %r8
	movq	262184(%rdi,%rax,8), %rdi
	movq	%rsp, %rcx
	call	*(%r8)
.LBE128:
.LBE127:
	addq	$8, %rsp
	ret
.LFE290:
	.size	subpage_writew, .-subpage_writew
	.p2align 4,,15
	.type	subpage_readl, @function
subpage_readl:
.LFB291:
	.loc 1 2382 0
	subq	$8, %rsp
.LCFI66:
.LBB129:
.LBB130:
	.loc 1 2321 0
	movl	%esi, %eax
	subl	(%rdi), %eax
	.loc 1 2326 0
	andl	$4095, %eax
	leaq	2(,%rax,4), %rdx
	leaq	2(,%rax,8), %rax
	movq	8(%rdi,%rdx,8), %rcx
	movq	262152(%rdi,%rax,8), %rdi
	movq	%rsp, %rdx
	call	*(%rcx)
.LBE130:
.LBE129:
	.loc 1 2388 0
	addq	$8, %rsp
	ret
.LFE291:
	.size	subpage_readl, .-subpage_readl
	.p2align 4,,15
	.type	subpage_writel, @function
subpage_writel:
.LFB292:
	.loc 1 2392 0
	subq	$8, %rsp
.LCFI67:
.LBB131:
.LBB132:
	.loc 1 2337 0
	movl	%esi, %eax
	.loc 1 2335 0
	movq	$0, (%rsp)
	.loc 1 2337 0
	subl	(%rdi), %eax
	.loc 1 2342 0
	andl	$4095, %eax
	leaq	2(,%rax,4), %rcx
	leaq	2(,%rax,8), %rax
	movq	131080(%rdi,%rcx,8), %r8
	movq	262184(%rdi,%rax,8), %rdi
	movq	%rsp, %rcx
	call	*(%r8)
.LBE132:
.LBE131:
	addq	$8, %rsp
	ret
.LFE292:
	.size	subpage_writel, .-subpage_writel
	.p2align 4,,15
.globl cpu_register_io_memory
	.type	cpu_register_io_memory, @function
cpu_register_io_memory:
.LFB296:
	.loc 1 2491 0
	pushq	%rbp
.LCFI68:
	movq	%rcx, %rbp
	.loc 1 2492 0
	xorl	%ecx, %ecx
	.loc 1 2494 0
	testl	%edi, %edi
	.loc 1 2491 0
	pushq	%rbx
.LCFI69:
	.loc 1 2491 0
	movq	%rdx, %rbx
	.loc 1 2494 0
	jle	.L361
	.loc 1 2499 0
	cmpl	$255, %edi
	.loc 1 2500 0
	movl	$-1, %eax
	.loc 1 2499 0
	jg	.L348
.L351:
	movslq	%edi,%r11
	.loc 1 2503 0
	xorl	%r9d, %r9d
	leaq	0(,%r11,4), %r10
	.p2align 4,,7
.L358:
	.loc 1 2504 0
	movslq	%r9d,%r8
	cmpq	$0, (%rsi,%r8,8)
	je	.L357
	cmpq	$0, (%rbx,%r8,8)
	jne	.L356
.L357:
	.loc 1 2505 0
	movl	$4, %ecx
.L356:
	.loc 1 2506 0
	movq	(%rsi,%r8,8), %rdx
	leaq	(%r10,%r8), %rax
	.loc 1 2503 0
	incl	%r9d
	cmpl	$2, %r9d
	.loc 1 2506 0
	movq	%rdx, io_mem_read(,%rax,8)
	.loc 1 2507 0
	movq	(%rbx,%r8,8), %rdx
	movq	%rdx, io_mem_write(,%rax,8)
	.loc 1 2503 0
	jle	.L358
	.loc 1 2510 0
	movl	%edi, %eax
	.loc 1 2509 0
	movq	%rbp, io_mem_opaque(,%r11,8)
	.loc 1 2510 0
	sall	$4, %eax
	orl	%ecx, %eax
.L348:
	.loc 1 2511 0
	popq	%rbx
	popq	%rbp
	ret
.L361:
	.loc 1 2495 0
	movl	io_mem_nb(%rip), %edi
	.loc 1 2496 0
	movl	$-1, %eax
	.loc 1 2495 0
	cmpl	$255, %edi
	jg	.L348
	.loc 1 2497 0
	leal	1(%rdi), %eax
	movl	%eax, io_mem_nb(%rip)
	jmp	.L351
.LFE296:
	.size	cpu_register_io_memory, .-cpu_register_io_memory
	.p2align 4,,15
	.type	subpage_init, @function
subpage_init:
.LFB294:
	.loc 1 2444 0
	movq	%rbx, -32(%rsp)
.LCFI70:
	movq	%rbp, -24(%rsp)
.LCFI71:
	movq	%rdi, %rbp
	movq	%r12, -16(%rsp)
.LCFI72:
	movq	%r13, -8(%rsp)
.LCFI73:
	.loc 1 2448 0
	movl	$524296, %edi
	.loc 1 2444 0
	subq	$40, %rsp
.LCFI74:
	.loc 1 2444 0
	movq	%rsi, %r12
	movl	%edx, %r13d
	.loc 1 2448 0
	call	qemu_mallocz
	.loc 1 2449 0
	testq	%rax, %rax
	.loc 1 2448 0
	movq	%rax, %rbx
	.loc 1 2449 0
	je	.L363
	.loc 1 2451 0
	movq	%rax, %rcx
	movl	$subpage_write, %edx
	movl	$subpage_read, %esi
	xorl	%edi, %edi
	.loc 1 2450 0
	movq	%rbp, (%rax)
	.loc 1 2451 0
	call	cpu_register_io_memory
	.loc 1 2456 0
	orl	$2, %eax
	.loc 1 2457 0
	movl	%r13d, %ecx
	movl	$4095, %edx
	.loc 1 2456 0
	movl	%eax, (%r12)
	.loc 1 2457 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	subpage_register
.L363:
	.loc 1 2461 0
	movq	%rbx, %rax
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE294:
	.size	subpage_init, .-subpage_init
	.p2align 4,,15
.globl cpu_register_physical_memory
	.type	cpu_register_physical_memory, @function
cpu_register_physical_memory:
.LFB269:
	.loc 1 2013 0
	pushq	%r15
.LCFI75:
	.loc 1 2020 0
	leaq	4095(%rsi), %rax
	.loc 1 2013 0
	pushq	%r14
.LCFI76:
	.loc 1 2020 0
	andq	$-4096, %rax
	.loc 1 2021 0
	leaq	(%rdi,%rax), %rax
	.loc 1 2013 0
	pushq	%r13
.LCFI77:
	movq	%rdi, %r13
	pushq	%r12
.LCFI78:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI79:
	pushq	%rbx
.LCFI80:
	.loc 1 2022 0
	movq	%rdi, %rbx
	.loc 1 2013 0
	subq	$24, %rsp
.LCFI81:
	.loc 1 2022 0
	cmpq	%rax, %rdi
	.loc 1 2021 0
	movq	%rax, 16(%rsp)
	.loc 1 2022 0
	je	.L402
	leaq	(%rdi,%rsi), %r15
	movq	%r15, 8(%rsp)
	jmp	.L396
	.p2align 4,,7
.L409:
.LBB133:
	.loc 1 2027 0
	xorl	%esi, %esi
	.loc 1 2029 0
	xorl	%r14d, %r14d
	cmpq	%r13, %rbx
	.loc 1 2025 0
	mov	%eax, %edx
	.loc 1 2029 0
	ja	.L371
	movq	%r13, %r14
	movl	$1, %eax
	andl	$4095, %r14d 
	cmovne	%eax, %esi
.L371:
	movq	%r15, %rax
	movl	$4095, %ebp
	subq	%rbx, %rax
	cmpq	$4095, %rax
	ja	.L369
	leaq	-1(%r15), %rbp
	andl	$4095, %ebp
	cmpq	$4094, %rbp
	jbe	.L377
.L369:
	.loc 1 2031 0
	testl	%esi, %esi
	jne	.L377
	testb	$4, %r12b
	je	.L376
	.p2align 4,,7
.L377:
	.loc 1 2032 0
	testb	$2, %dl
	.p2align 4,,5
	je	.L408
	.loc 1 2036 0
	andl	$4095, %edx
	shrq	$4, %rdx
	movq	io_mem_opaque(,%rdx,8), %rdi
.L405:
.LBE133:
.LBB134:
	.loc 1 2062 0
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%r14d, %esi
	call	subpage_register
.L367:
.LBE134:
	.loc 1 2022 0
	addq	$4096, %rbx
	cmpq	16(%rsp), %rbx
	je	.L402
.L396:
	.loc 1 2023 0
	movq	%rbx, %rdi
	shrq	$12, %rdi
	call	phys_page_find
	.loc 1 2024 0
	testq	%rax, %rax
	.loc 1 2023 0
	movq	%rax, %rcx
	.loc 1 2024 0
	je	.L368
	movl	(%rax), %eax
	cmpl	$32, %eax
	jne	.L409
.L368:
	.loc 1 2047 0
	movq	%rbx, %rdi
	movl	$1, %esi
	shrq	$12, %rdi
	call	phys_page_find_alloc
	movq	%rax, %rcx
	.loc 1 2048 0
	movl	%r12d, (%rax)
	.loc 1 2049 0
	movq	%r12, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L385
	testb	$1, %r12b
	je	.L384
	.p2align 4,,7
.L385:
	.loc 1 2051 0
	addq	$4096, %r12
	.loc 1 2022 0
	addq	$4096, %rbx
	cmpq	16(%rsp), %rbx
	jne	.L396
	.p2align 4,,7
.L402:
	.loc 1 2072 0
	movq	first_cpu(%rip), %rbx
	jmp	.L406
	.p2align 4,,7
.L410:
	.loc 1 2073 0
	movq	%rbx, %rdi
	movl	$1, %esi
	call	tlb_flush
	.loc 1 2072 0
	movq	46984(%rbx), %rbx
.L406:
	testq	%rbx, %rbx
	jne	.L410
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L376:
.LBB135:
	.loc 1 2042 0
	movq	%r12, %rax
	.loc 1 2041 0
	movl	%r12d, (%rcx)
	.loc 1 2042 0
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L385
	testb	$1, %r12b
	je	.L367
	jmp	.L385
	.p2align 4,,7
.L408:
	.loc 1 2033 0
	movq	%rbx, %rdi
	andq	$-4096, %rdi
.L407:
.LBE135:
.LBB136:
	.loc 1 2060 0
	movq	%rcx, %rsi
	call	subpage_init
	movq	%rax, %rdi
	jmp	.L405
.L384:
	.loc 1 2054 0
	xorl	%edx, %edx
	.loc 1 2056 0
	xorl	%r14d, %r14d
	cmpq	%r13, %rbx
	ja	.L389
	movq	%r13, %r14
	movl	$1, %eax
	andl	$4095, %r14d 
	cmovne	%eax, %edx
.L389:
	movq	8(%rsp), %rax
	movl	$4095, %ebp
	subq	%rbx, %rax
	cmpq	$4095, %rax
	ja	.L387
	movq	8(%rsp), %rbp
	decq	%rbp
	andl	$4095, %ebp
	cmpq	$4094, %rbp
	jbe	.L395
.L387:
	.loc 1 2059 0
	testl	%edx, %edx
	jne	.L395
	testb	$4, %r12b
	je	.L367
.L395:
	.loc 1 2060 0
	movq	%rbx, %rdi
	movl	$32, %edx
	andq	$-4096, %rdi
	jmp	.L407
.LBE136:
.LFE269:
	.size	cpu_register_physical_memory, .-cpu_register_physical_memory
	.p2align 4,,15
.globl cpu_exec_init
	.type	cpu_exec_init, @function
cpu_exec_init:
.LFB222:
	.loc 1 313 0
	.loc 1 317 0
	cmpq	$0, code_gen_ptr(%rip)
	.loc 1 313 0
	pushq	%rbx
.LCFI82:
	.loc 1 313 0
	movq	%rdi, %rbx
	.loc 1 317 0
	je	.L429
.L412:
	.loc 1 322 0
	movq	$0, 46984(%rbx)
	.loc 1 324 0
	xorl	%edx, %edx
	.loc 1 327 0
	cmpq	$0, first_cpu(%rip)
	.loc 1 323 0
	movl	$first_cpu, %ecx
	jmp	.L428
	.p2align 4,,7
.L430:
	.loc 1 326 0
	movq	(%rcx), %rax
	.loc 1 327 0
	incl	%edx
	cmpq	$0, 46984(%rax)
	.loc 1 326 0
	leaq	46984(%rax), %rcx
.L428:
	.loc 1 327 0
	jne	.L430
	.loc 1 329 0
	movl	%edx, 46992(%rbx)
	.loc 1 330 0
	movl	$0, 46976(%rbx)
	.loc 1 331 0
	movq	%rbx, (%rcx)
	popq	%rbx
	ret
.L429:
	.loc 1 318 0
	movq	$code_gen_buffer, code_gen_ptr(%rip)
.LBB137:
.LBB138:
	.loc 1 190 0
	call	getpagesize
	cltq
.LBB139:
	.loc 1 195 0
	movq	%rax, %rdx
	.loc 1 198 0
	leaq	code_gen_buffer+16777215(%rax), %rsi
.LBE139:
	.loc 1 190 0
	movq	%rax, qemu_real_host_page_size(%rip)
.LBB140:
	.loc 1 195 0
	negq	%rdx
	movq	%rdx, %rdi
	.loc 1 199 0
	andq	%rdx, %rsi
	.loc 1 201 0
	movl	$7, %edx
	.loc 1 195 0
	andl	$code_gen_buffer, %edi
	.loc 1 201 0
	subq	%rdi, %rsi
	call	mprotect
.LBE140:
	.loc 1 206 0
	movq	qemu_host_page_size(%rip), %rdx
	testq	%rdx, %rdx
	je	.L431
.L413:
	.loc 1 208 0
	cmpq	$4095, %rdx
	ja	.L414
	.loc 1 209 0
	movq	$4096, qemu_host_page_size(%rip)
	movl	$4096, %edx
.L414:
	.loc 1 212 0
	cmpq	$1, %rdx
	.loc 1 210 0
	movq	$0, qemu_host_page_bits(%rip)
	.loc 1 212 0
	jbe	.L424
	movl	$1, %esi
	xorl	%ecx, %ecx
	.p2align 4,,7
.L417:
	incq	%rcx
	movl	%esi, %eax
	sall	%cl, %eax
	cltq
	cmpq	%rdx, %rax
	jb	.L417
	movq	%rcx, qemu_host_page_bits(%rip)
.L424:
	.loc 1 213 0
	negq	%rdx
	.loc 1 214 0
	movl	$8192, %edi
	.loc 1 213 0
	movq	%rdx, qemu_host_page_mask(%rip)
	.loc 1 214 0
	call	qemu_vmalloc
	.loc 1 215 0
	xorl	%esi, %esi
	.loc 1 214 0
	movq	%rax, %rdi
	.loc 1 215 0
	movl	$8192, %edx
	.loc 1 214 0
	movq	%rax, l1_phys_map(%rip)
	.loc 1 215 0
	call	memset
.LBE138:
.LBE137:
.LBB141:
.LBB142:
	.loc 1 2465 0
	xorl	%ecx, %ecx
	movl	$unassigned_mem_write, %edx
	movl	$error_mem_read, %esi
	movl	$1, %edi
	call	cpu_register_io_memory
	.loc 1 2466 0
	xorl	%ecx, %ecx
	movl	$unassigned_mem_write, %edx
	movl	$unassigned_mem_read, %esi
	movl	$2, %edi
	call	cpu_register_io_memory
	.loc 1 2467 0
	xorl	%ecx, %ecx
	movl	$notdirty_mem_write, %edx
	movl	$error_mem_read, %esi
	movl	$4, %edi
	call	cpu_register_io_memory
	.loc 1 2471 0
	xorl	%ecx, %ecx
	movl	$watch_mem_write, %edx
	movl	$watch_mem_read, %esi
	movl	$-1, %edi
	.loc 1 2468 0
	movl	$5, io_mem_nb(%rip)
	.loc 1 2471 0
	call	cpu_register_io_memory
	.loc 1 2475 0
	movl	phys_ram_size(%rip), %edi
	.loc 1 2471 0
	movl	%eax, io_mem_watch(%rip)
	.loc 1 2475 0
	sarl	$12, %edi
	movslq	%edi,%rdi
	call	qemu_vmalloc
	.loc 1 2476 0
	movl	phys_ram_size(%rip), %edx
	.loc 1 2475 0
	movq	%rax, %rdi
	.loc 1 2476 0
	movl	$255, %esi
	.loc 1 2475 0
	movq	%rax, phys_ram_dirty(%rip)
	.loc 1 2476 0
	sarl	$12, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L412
.L431:
.LBE142:
.LBE141:
.LBB143:
.LBB144:
	.loc 1 207 0
	movq	qemu_real_host_page_size(%rip), %rax
	movq	%rax, %rdx
	movq	%rax, qemu_host_page_size(%rip)
	jmp	.L413
.LBE144:
.LBE143:
.LFE222:
	.size	cpu_exec_init, .-cpu_exec_init
	.p2align 4,,15
.globl cpu_get_io_memory_write
	.type	cpu_get_io_memory_write, @function
cpu_get_io_memory_write:
.LFB297:
	.loc 1 2514 0
	.loc 1 2515 0
	sarl	$4, %edi
	movslq	%edi,%rdi
	salq	$5, %rdi
	leaq	io_mem_write(%rdi), %rax
	.loc 1 2516 0
	ret
.LFE297:
	.size	cpu_get_io_memory_write, .-cpu_get_io_memory_write
	.p2align 4,,15
.globl cpu_get_io_memory_read
	.type	cpu_get_io_memory_read, @function
cpu_get_io_memory_read:
.LFB298:
	.loc 1 2519 0
	.loc 1 2520 0
	sarl	$4, %edi
	movslq	%edi,%rdi
	salq	$5, %rdi
	leaq	io_mem_read(%rdi), %rax
	.loc 1 2521 0
	ret
.LFE298:
	.size	cpu_get_io_memory_read, .-cpu_get_io_memory_read
	.p2align 4,,15
.globl cpu_physical_memory_write_rom
	.type	cpu_physical_memory_write_rom, @function
cpu_physical_memory_write_rom:
.LFB300:
	.loc 1 2666 0
	pushq	%r15
.LCFI83:
	movq	%rsi, %r15
	pushq	%r14
.LCFI84:
	movq	%rdi, %r14
	pushq	%r13
.LCFI85:
	pushq	%r12
.LCFI86:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI87:
	pushq	%rbx
.LCFI88:
	subq	$8, %rsp
.LCFI89:
	jmp	.L447
	.p2align 4,,7
.L448:
	.loc 1 2674 0
	movq	%r14, %rdi
	andq	$-4096, %rdi
	.loc 1 2675 0
	movl	%edi, %eax
	subl	%r14d, %eax
	leal	4096(%rax), %ebp
	.loc 1 2677 0
	cmpl	%r12d, %ebp
	cmovg	%r12d, %ebp
	.loc 1 2678 0
	shrq	$12, %rdi
	call	phys_page_find
	.loc 1 2679 0
	testq	%rax, %rax
	.loc 1 2680 0
	movl	$32, %ecx
	.loc 1 2679 0
	je	.L439
	.loc 1 2682 0
	mov	(%rax), %ecx
.L439:
	.loc 1 2685 0
	movq	%rcx, %rax
	andl	$4095, %eax 
	setne	%dl
	cmpq	$16, %rax
	setne	%al
	movzbl	%al, %eax
	testl	%edx, %eax
	je	.L440
	testb	$1, %cl
	movslq	%ebp,%rbx
	je	.L441
.L440:
.LBB145:
	.loc 1 2691 0
	movq	%r14, %rax
	andq	$-4096, %rcx
	.loc 1 2693 0
	movq	phys_ram_base(%rip), %rdi
	.loc 1 2691 0
	andl	$4095, %eax
	.loc 1 2694 0
	movslq	%ebp,%rbx
	movq	%r15, %rsi
	.loc 1 2691 0
	leaq	(%rcx,%rax), %r13
	.loc 1 2694 0
	movq	%rbx, %rdx
	.loc 1 2693 0
	addq	%r13, %rdi
	.loc 1 2694 0
	call	memcpy
.LBB146:
.LBB147:
	.file 4 "/home/remco/Projects/Argos/src/argos-bytemap.h"
	.loc 4 394 0
	leaq	0(,%r13,4), %rdi
	addq	argos_memmap(%rip), %rdi
	.loc 4 387 0
	leaq	0(,%rbx,4), %rdx
	.loc 4 394 0
	xorl	%esi, %esi
	call	memset
.L441:
.LBE147:
.LBE146:
.LBE145:
	.loc 1 2697 0
	subl	%ebp, %r12d
	.loc 1 2698 0
	addq	%rbx, %r15
	.loc 1 2699 0
	addq	%rbx, %r14
.L447:
	testl	%r12d, %r12d
	jg	.L448
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE300:
	.size	cpu_physical_memory_write_rom, .-cpu_physical_memory_write_rom
	.p2align 4,,15
.globl argos_ldl_phys
	.type	argos_ldl_phys, @function
argos_ldl_phys:
.LFB302:
	.loc 1 2736 0
	pushq	%rbp
.LCFI90:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI91:
	movq	%rdi, %rbx
	.loc 1 2743 0
	shrq	$12, %rdi
	.loc 1 2736 0
	subq	$8, %rsp
.LCFI92:
	.loc 1 2743 0
	call	phys_page_find
	.loc 1 2744 0
	testq	%rax, %rax
	.loc 1 2745 0
	movl	$32, %edx
	.loc 1 2744 0
	je	.L451
	.loc 1 2747 0
	mov	(%rax), %edx
.L451:
	.loc 1 2750 0
	movq	%rdx, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L452
	testb	$1, %dl
	je	.L465
.L452:
.LBB148:
	.loc 1 2758 0
	andq	$-4096, %rdx
	andl	$4095, %ebx
	.loc 1 2761 0
	movq	phys_ram_base(%rip), %rax
	.loc 1 2758 0
	leaq	(%rdx,%rbx), %rsi
.LBB149:
	.loc 4 167 0
	movq	argos_memmap(%rip), %rdi
.LBB150:
	.loc 4 173 0
	xorl	%ecx, %ecx
.LBE150:
.LBE149:
	.loc 1 2761 0
	addq	%rsi, %rax
	movq	%rsi, %rdx
.LBB151:
.LBB152:
	.loc 2 352 0
	movl	(%rax), %r8d
	leaq	(%rdi,%rsi,4), %rax
	.p2align 4,,7
.L461:
.LBE152:
.LBE151:
.LBB153:
.LBB154:
	.loc 4 174 0
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	jne	.L464
	.loc 4 173 0
	incl	%ecx
	incq	%rdx
	addq	$4, %rax
	cmpl	$3, %ecx
	jle	.L461
	.loc 4 182 0
	movl	$0, 4(%rbp)
.LBE154:
.LBE153:
.LBE148:
	.loc 1 2766 0
	addq	$8, %rsp
	movl	%r8d, %eax
	popq	%rbx
	popq	%rbp
	ret
.L465:
	.loc 1 2754 0
	shrq	$4, %rdx
	.loc 1 2753 0
	movl	$0, 4(%rbp)
	.loc 1 2755 0
	movq	%rbx, %rsi
	movzbl	%dl, %eax 
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
	.loc 1 2766 0
	addq	$8, %rsp
	.loc 1 2755 0
	movl	%eax, %r8d
	.loc 1 2766 0
	popq	%rbx
	popq	%rbp
	movl	%r8d, %eax
	ret
.L464:
.LBB155:
.LBB156:
.LBB157:
	.loc 4 175 0
	movl	%esi, (%rbp)
	movl	(%rdi,%rdx,4), %eax
	movl	%eax, 4(%rbp)
.LBE157:
.LBE156:
.LBE155:
	.loc 1 2766 0
	addq	$8, %rsp
	movl	%r8d, %eax
	popq	%rbx
	popq	%rbp
	ret
.LFE302:
	.size	argos_ldl_phys, .-argos_ldl_phys
	.p2align 4,,15
.globl ldq_phys
	.type	ldq_phys, @function
ldq_phys:
.LFB303:
	.loc 1 2771 0
	movq	%r13, -8(%rsp)
.LCFI93:
	movq	%rbx, -32(%rsp)
.LCFI94:
	movq	%rdi, %r13
	movq	%rbp, -24(%rsp)
.LCFI95:
	movq	%r12, -16(%rsp)
.LCFI96:
	.loc 1 2779 0
	shrq	$12, %rdi
	.loc 1 2771 0
	subq	$40, %rsp
.LCFI97:
	.loc 1 2779 0
	call	phys_page_find
	.loc 1 2780 0
	testq	%rax, %rax
	.loc 1 2781 0
	movl	$32, %edx
	.loc 1 2780 0
	je	.L468
	.loc 1 2783 0
	mov	(%rax), %edx
.L468:
	.loc 1 2786 0
	movq	%rdx, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L469
	testb	$1, %dl
	je	.L472
.L469:
	.loc 1 2799 0
	andq	$-4096, %rdx
	addq	phys_ram_base(%rip), %rdx
	andl	$4095, %r13d
.LBB158:
.LBB159:
	.loc 2 357 0
	movq	(%rdx,%r13), %rbp
.L470:
.LBE159:
.LBE158:
	.loc 1 2804 0
	movq	%rbp, %rax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L472:
	.loc 1 2789 0
	shrq	$4, %rdx
	.loc 1 2794 0
	movq	%r13, %rsi
	movzbl	%dl, %ebx 
	movq	%rsp, %rdx
	movq	%rbx, %r12
	movq	io_mem_opaque(,%rbx,8), %rdi
	salq	$5, %r12
	call	*io_mem_read+16(%r12)
	.loc 1 2795 0
	movq	io_mem_opaque(,%rbx,8), %rdi
	.loc 1 2794 0
	mov	%eax, %ebp
	.loc 1 2795 0
	leaq	4(%r13), %rsi
	movq	%rsp, %rdx
	call	*io_mem_read+16(%r12)
	salq	$32, %rax
	orq	%rax, %rbp
	jmp	.L470
.LFE303:
	.size	ldq_phys, .-ldq_phys
	.p2align 4,,15
.globl argos_ldq_phys
	.type	argos_ldq_phys, @function
argos_ldq_phys:
.LFB304:
	.loc 1 2807 0
	movq	%rbp, -32(%rsp)
.LCFI98:
	movq	%r14, -8(%rsp)
.LCFI99:
	movq	%rdi, %rbp
	movq	%rbx, -40(%rsp)
.LCFI100:
	movq	%r12, -24(%rsp)
.LCFI101:
	.loc 1 2814 0
	shrq	$12, %rdi
	.loc 1 2807 0
	movq	%r13, -16(%rsp)
.LCFI102:
	subq	$40, %rsp
.LCFI103:
	.loc 1 2807 0
	movq	%rsi, %r14
	.loc 1 2814 0
	call	phys_page_find
	.loc 1 2815 0
	testq	%rax, %rax
	.loc 1 2816 0
	movl	$32, %edx
	.loc 1 2815 0
	je	.L475
	.loc 1 2818 0
	mov	(%rax), %edx
.L475:
	.loc 1 2821 0
	movq	%rdx, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L476
	testb	$1, %dl
	je	.L489
.L476:
.LBB160:
	.loc 1 2835 0
	andq	$-4096, %rdx
	andl	$4095, %ebp
	.loc 1 2838 0
	movq	phys_ram_base(%rip), %rax
	.loc 1 2835 0
	leaq	(%rdx,%rbp), %rsi
.LBB161:
	.loc 4 188 0
	movq	argos_memmap(%rip), %rdi
.LBB162:
	.loc 4 196 0
	xorl	%ecx, %ecx
.LBE162:
.LBE161:
	.loc 1 2838 0
	addq	%rsi, %rax
	movq	%rsi, %rdx
.LBB163:
.LBB164:
	.loc 2 357 0
	movq	(%rax), %r13
	leaq	(%rdi,%rsi,4), %rax
	.p2align 4,,7
.L485:
.LBE164:
.LBE163:
.LBB165:
.LBB166:
	.loc 4 197 0
	movl	(%rax), %r11d
	testl	%r11d, %r11d
	jne	.L488
	.loc 4 196 0
	incl	%ecx
	incq	%rdx
	addq	$4, %rax
	cmpl	$7, %ecx
	jle	.L485
	.loc 4 205 0
	movl	$0, 4(%r14)
.L477:
.LBE166:
.LBE165:
.LBE160:
	.loc 1 2843 0
	movq	%r13, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.L488:
.LBB167:
.LBB168:
.LBB169:
	.loc 4 198 0
	movl	%esi, (%r14)
	movl	(%rdi,%rdx,4), %eax
	movl	%eax, 4(%r14)
	jmp	.L477
.L489:
.LBE169:
.LBE168:
.LBE167:
	.loc 1 2824 0
	shrq	$4, %rdx
	.loc 1 2825 0
	movl	$0, 4(%r14)
	.loc 1 2830 0
	movq	%rbp, %rsi
	movzbl	%dl, %ebx 
	movq	%r14, %rdx
	movq	%rbx, %r12
	movq	io_mem_opaque(,%rbx,8), %rdi
	salq	$5, %r12
	call	*io_mem_read+16(%r12)
	.loc 1 2831 0
	movq	io_mem_opaque(,%rbx,8), %rdi
	.loc 1 2830 0
	mov	%eax, %r13d
	.loc 1 2831 0
	leaq	4(%rbp), %rsi
	movq	%r14, %rdx
	call	*io_mem_read+16(%r12)
	salq	$32, %rax
	orq	%rax, %r13
	jmp	.L477
.LFE304:
	.size	argos_ldq_phys, .-argos_ldq_phys
	.p2align 4,,15
.globl stl_phys_notdirty
	.type	stl_phys_notdirty, @function
stl_phys_notdirty:
.LFB307:
	.loc 1 2865 0
	pushq	%rbp
.LCFI104:
	movl	%esi, %ebp
	pushq	%rbx
.LCFI105:
	movq	%rdi, %rbx
	.loc 1 2872 0
	shrq	$12, %rdi
	.loc 1 2865 0
	subq	$8, %rsp
.LCFI106:
	.loc 1 2870 0
	movq	$0, (%rsp)
	.loc 1 2872 0
	call	phys_page_find
	movq	%rax, %rdx
	.loc 1 2874 0
	movl	$32, %eax
	.loc 1 2873 0
	testq	%rdx, %rdx
	je	.L492
	.loc 1 2876 0
	mov	(%rdx), %eax
.L492:
	.loc 1 2879 0
	testl	$4095, %eax 
	jne	.L502
.LBB170:
	.loc 1 2883 0
	andq	$-4096, %rax
	andl	$4095, %ebx
	leaq	(%rax,%rbx), %rdx
	.loc 1 2886 0
	movq	phys_ram_base(%rip), %rax
	addq	%rdx, %rax
.LBB171:
.LBB172:
	.loc 2 367 0
	movl	%ebp, (%rax)
	leaq	0(,%rdx,4), %rax
	addq	argos_memmap(%rip), %rax
	movl	$3, %edx
	.p2align 4,,7
.L499:
.LBE172:
.LBE171:
.LBB173:
.LBB174:
	.loc 4 277 0
	movl	$0, (%rax)
	addq	$4, %rax
	decl	%edx
	jns	.L499
.LBE174:
.LBE173:
.LBE170:
	.loc 1 2890 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L502:
	.loc 1 2880 0
	shrq	$4, %rax
	.loc 1 2881 0
	movq	%rsp, %rcx
	movl	%ebp, %edx
	movzbl	%al, %eax 
	movq	%rbx, %rsi
	movq	%rax, %r8
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %r8
	call	*io_mem_write+16(%r8)
	.loc 1 2890 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE307:
	.size	stl_phys_notdirty, .-stl_phys_notdirty
	.p2align 4,,15
.globl stq_phys_notdirty
	.type	stq_phys_notdirty, @function
stq_phys_notdirty:
.LFB308:
	.loc 1 2893 0
	movq	%rbp, -24(%rsp)
.LCFI107:
	movq	%r13, -8(%rsp)
.LCFI108:
	movq	%rdi, %rbp
	movq	%rbx, -32(%rsp)
.LCFI109:
	movq	%r12, -16(%rsp)
.LCFI110:
	.loc 1 2900 0
	shrq	$12, %rdi
	.loc 1 2893 0
	subq	$40, %rsp
.LCFI111:
	.loc 1 2893 0
	movq	%rsi, %r13
	.loc 1 2898 0
	movq	$0, (%rsp)
	.loc 1 2900 0
	call	phys_page_find
	.loc 1 2901 0
	testq	%rax, %rax
	.loc 1 2902 0
	movl	$32, %edx
	.loc 1 2901 0
	je	.L505
	.loc 1 2904 0
	mov	(%rax), %edx
.L505:
	.loc 1 2907 0
	testl	$4095, %edx 
	jne	.L515
.LBB175:
	.loc 1 2920 0
	movq	phys_ram_base(%rip), %rax
	.loc 1 2917 0
	andq	$-4096, %rdx
	andl	$4095, %ebp
	addq	%rbp, %rdx
	.loc 1 2920 0
	addq	%rdx, %rax
.LBB176:
.LBB177:
	.loc 2 372 0
	movq	%r13, (%rax)
	leaq	0(,%rdx,4), %rax
	addq	argos_memmap(%rip), %rax
	movl	$7, %edx
	.p2align 4,,7
.L512:
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	.loc 4 287 0
	movl	$0, (%rax)
	addq	$4, %rax
	decl	%edx
	jns	.L512
.LBE179:
.LBE178:
.LBE175:
	.loc 1 2924 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L515:
	.loc 1 2908 0
	shrq	$4, %rdx
	.loc 1 2913 0
	movq	%rsp, %rcx
	movq	%rbp, %rsi
	movzbl	%dl, %ebx 
	movl	%r13d, %edx
	.loc 1 2914 0
	shrq	$32, %r13
	.loc 1 2913 0
	movq	%rbx, %r12
	movq	io_mem_opaque(,%rbx,8), %rdi
	salq	$5, %r12
	call	*io_mem_write+16(%r12)
	.loc 1 2914 0
	leaq	4(%rbp), %rsi
	movq	io_mem_opaque(,%rbx,8), %rdi
	movq	%rsp, %rcx
	movl	%r13d, %edx
	call	*io_mem_write+16(%r12)
	.loc 1 2924 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE308:
	.size	stq_phys_notdirty, .-stq_phys_notdirty
	.section	.rodata.str1.1
.LC22:
	.string	"TB count            %d\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"TB avg target size  %d max=%d bytes\n"
	.align 8
.LC25:
	.string	"TB avg host size    %d bytes (expansion ratio: %0.1f)\n"
	.align 8
.LC26:
	.string	"cross page TB count %d (%d%%)\n"
	.align 8
.LC27:
	.string	"direct jump count   %d (%d%%) (2 jumps=%d %d%%)\n"
	.section	.rodata.str1.1
.LC28:
	.string	"TB flush count      %d\n"
.LC29:
	.string	"TB invalidate count %d\n"
.LC30:
	.string	"TLB flush count     %d\n"
	.text
	.p2align 4,,15
.globl dump_exec_info
	.type	dump_exec_info, @function
dump_exec_info:
.LFB316:
	.loc 1 3055 0
	pushq	%r15
.LCFI112:
	.loc 1 3063 0
	xorl	%r15d, %r15d
	.loc 1 3065 0
	xorl	%ecx, %ecx
	.loc 1 3055 0
	pushq	%r14
.LCFI113:
	.loc 1 3062 0
	xorl	%r14d, %r14d
	.loc 1 3055 0
	pushq	%r13
.LCFI114:
	movq	%rsi, %r13
	pushq	%r12
.LCFI115:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI116:
	.loc 1 3060 0
	xorl	%ebp, %ebp
	.loc 1 3055 0
	pushq	%rbx
.LCFI117:
	.loc 1 3061 0
	xorl	%ebx, %ebx
	.loc 1 3055 0
	subq	$8, %rsp
.LCFI118:
	.loc 1 3065 0
	movl	nb_tbs(%rip), %esi
	.loc 1 3064 0
	movl	$0, 4(%rsp)
	.loc 1 3065 0
	cmpl	%esi, %r15d
	jge	.L550
	xorl	%edx, %edx
	.p2align 4,,7
.L524:
	.loc 1 3067 0
	movzwl	tbs+16(%rdx), %eax
	addl	%eax, %ebp
	.loc 1 3069 0
	cmpl	%ebx, %eax
	cmovg	%eax, %ebx
	.loc 1 3071 0
	xorl	%eax, %eax
	cmpl	$-1, tbs+60(%rdx)
	setne	%al
	addl	%eax, %r14d
	.loc 1 3072 0
	cmpw	$-1, tbs+64(%rdx)
	je	.L519
	.loc 1 3075 0
	xorl	%eax, %eax
	.loc 1 3073 0
	incl	%r15d
	.loc 1 3075 0
	cmpw	$-1, tbs+66(%rdx)
	setne	%al
	addl	%eax, 4(%rsp)
.L519:
	.loc 1 3065 0
	incl	%ecx
	addq	$104, %rdx
	cmpl	%esi, %ecx
	jl	.L524
.L550:
	.loc 1 3080 0
	movl	nb_tbs(%rip), %edx
	movl	$.LC22, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	call	*%r13
	.loc 1 3081 0
	movl	nb_tbs(%rip), %edx
	xorl	%esi, %esi
	testl	%edx, %edx
	je	.L528
	movl	%ebp, %eax
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
.L528:
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	movl	$.LC23, %esi
	movq	%r12, %rdi
	call	*%r13
	.loc 1 3084 0
	testl	%ebp, %ebp
	xorpd	%xmm1, %xmm1
	je	.L534
	movq	code_gen_ptr(%rip), %rax
	cvtsi2sd	%ebp, %xmm0
	subq	$code_gen_buffer, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
.L534:
	movl	nb_tbs(%rip), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L536
	movq	code_gen_ptr(%rip), %rax
	movslq	%edx,%rdx
	movq	%rdx, %rbx
	subq	$code_gen_buffer, %rax
	cqto
	idivq	%rbx
.L536:
	movq	%rax, %rdx
	movsd	%xmm1, %xmm0
	movl	$.LC25, %esi
	movq	%r12, %rdi
	movl	$1, %eax
	call	*%r13
	.loc 1 3087 0
	movl	nb_tbs(%rip), %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L540
	movl	$100, %eax
	movl	%r14d, %ecx
	movl	%edx, %ebx
	imull	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
.L540:
	movl	$.LC26, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	movl	%r14d, %edx
	call	*%r13
	.loc 1 3090 0
	movl	nb_tbs(%rip), %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	je	.L548
	movl	4(%rsp), %edx
	movl	$100, %ebp
	movl	$100, %ebx
	imull	%ebp, %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movl	%r15d, %edx
	imull	%ebx, %edx
	movl	%eax, %edi
	movl	%edx, %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
.L548:
	movl	%edi, %r9d
	movl	4(%rsp), %r8d
	movl	%r15d, %edx
	movq	%r12, %rdi
	movl	$.LC27, %esi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 3095 0
	movq	%r12, %rdi
	movl	tb_flush_count(%rip), %edx
	movl	$.LC28, %esi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 3096 0
	movq	%r12, %rdi
	movl	tb_phys_invalidate_count(%rip), %edx
	movl	$.LC29, %esi
	xorl	%eax, %eax
	call	*%r13
	.loc 1 3097 0
	movl	tlb_flush_count(%rip), %edx
	addq	$8, %rsp
	movq	%r12, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	movq	%r13, %r11
	movl	$.LC30, %esi
	xorl	%eax, %eax
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	*%r11
.LFE316:
	.size	dump_exec_info, .-dump_exec_info
	.p2align 4,,15
	.type	slow_ldb_cmmu, @function
slow_ldb_cmmu:
.LFB319:
	.file 5 "/home/remco/Projects/Argos/src/softmmu_template.h"
	.loc 5 196 0
	pushq	%r15
.LCFI119:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	pushq	%r14
.LCFI120:
	movl	%esi, %r14d
	pushq	%r13
.LCFI121:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI122:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI123:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI124:
	subq	$8, %rsp
.LCFI125:
	jmp	.L554
	.p2align 4,,7
.L555:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L554:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L555
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	jne	.L566
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	cmpl	$4095, %eax
	ja	.L567
	.loc 2 204 0
	movzbl	(%rsi), %eax
	.loc 5 266 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	ret
.L566:
.LBB180:
.LBB181:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	movq	%rsp, %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read(%rcx)
.LBE181:
.LBE180:
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L561:
.L567:
	.loc 5 223 0
	leal	1(%rbp), %r12d
	.loc 5 236 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebp, %edi
	call	slow_ldb_cmmu
	.loc 5 238 0
	movq	%r15, %rdx
	.loc 5 236 0
	movl	%eax, %ebx
	.loc 5 238 0
	movl	%r14d, %esi
	movl	%r12d, %edi
	call	slow_ldb_cmmu
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 245 0
	movl	%ebx, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	ret
.LFE319:
	.size	slow_ldb_cmmu, .-slow_ldb_cmmu
	.p2align 4,,15
.globl __ldb_cmmu
	.type	__ldb_cmmu, @function
__ldb_cmmu:
.LFB318:
	.loc 5 112 0
	pushq	%r14
.LCFI126:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movl	%esi, %r14d
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r13
.LCFI127:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI128:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI129:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI130:
	subq	$16, %rsp
.LCFI131:
	jmp	.L569
	.p2align 4,,7
.L570:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L569:
	.loc 5 123 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 124 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L570
	.loc 5 125 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 130 0
	testl	$4095, %ebx
	jne	.L580
	.loc 5 139 0
	movl	%ebp, %eax
	andl	$4095, %eax
	cmpl	$4095, %eax
	ja	.L581
	.loc 2 204 0
	movzbl	(%rsi), %eax
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 5 180 0
	movzbl	%al, %eax
	.loc 5 181 0
	ret
.L580:
.LBB182:
.LBB183:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	leaq	8(%rsp), %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read(%rcx)
.LBE183:
.LBE182:
	.loc 5 181 0
	addq	$16, %rsp
	.loc 5 180 0
	movzbl	%al, %eax
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L576:
.L581:
	.loc 5 152 0
	movl	%r14d, %esi
	movl	%ebp, %edi
	xorl	%edx, %edx
	call	slow_ldb_cmmu
	.loc 5 181 0
	addq	$16, %rsp
	.loc 5 180 0
	movzbl	%al, %eax
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE318:
	.size	__ldb_cmmu, .-__ldb_cmmu
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"Trying to execute code outside RAM or ROM at 0x%08x\n"
	.text
	.p2align 4,,15
	.type	get_phys_addr_code, @function
get_phys_addr_code:
.LFB216:
	.loc 3 549 0
	movq	%rbx, -32(%rsp)
.LCFI132:
	movq	%rbp, -24(%rsp)
.LCFI133:
	.loc 3 552 0
	movl	%esi, %edx
	.loc 3 549 0
	movq	%r12, -16(%rsp)
.LCFI134:
	movq	%r13, -8(%rsp)
.LCFI135:
	subq	$40, %rsp
.LCFI136:
.LBB184:
.LBB185:
	.file 6 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.loc 6 746 0
	movl	352(%rdi), %eax
.LBE185:
.LBE184:
	.loc 3 552 0
	shrl	$12, %edx
	.loc 3 549 0
	movq	%rdi, %r13
	.loc 3 554 0
	movzbl	%dl, %ebp 
	movl	%esi, %edi
	.loc 3 549 0
	movl	%esi, %ebx
.LBB186:
.LBB187:
	.loc 6 746 0
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%al
.LBE187:
.LBE186:
	.loc 3 554 0
	andl	$-4096, %edi
.LBB188:
.LBB189:
	.loc 6 746 0
	movzbl	%al, %eax
.LBE189:
.LBE188:
	.loc 3 554 0
	movslq	%eax,%r12
	leaq	(%rbp,%rbp,2), %rax
	leaq	0(,%rax,8), %r8
	leaq	(%r12,%r12), %rax
	addq	%r12, %rax
	salq	$11, %rax
	leaq	(%r8,%rax), %rax
	cmpl	%edi, 1280(%rax,%r13)
	jne	.L591
.L584:
	.loc 3 558 0
	leaq	(%r12,%r12), %rdx
	leaq	(%rbp,%rbp,2), %rax
	addq	%r12, %rdx
	salq	$11, %rdx
	leaq	(%rdx,%rax,8), %rax
	movl	1280(%rax,%r13), %edx
	movl	%edx, %eax
	andl	$4095, %eax
	.loc 3 559 0
	cmpl	$16, %eax
	jle	.L590
	andl	$1, %edx
	je	.L592
.L590:
	.loc 3 566 0
	leaq	(%r12,%r12), %rax
	leaq	(%rbp,%rbp,2), %rdx
	.loc 3 567 0
	movq	16(%rsp), %rbp
	.loc 3 566 0
	addq	%r12, %rax
	.loc 3 567 0
	movq	24(%rsp), %r12
	.loc 3 566 0
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	addl	1288(%rdx,%r13), %ebx
	.loc 3 567 0
	movq	32(%rsp), %r13
	.loc 3 566 0
	subl	phys_ram_base(%rip), %ebx
	.loc 3 567 0
	movl	%ebx, %eax
	movq	8(%rsp), %rbx
	addq	$40, %rsp
	ret
.L592:
	.loc 3 563 0
	movl	%ebx, %edx
	movl	$.LC32, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	cpu_abort
.L591:
.LBB190:
.LBB191:
.LBB192:
	.loc 6 745 0
	movq	cpu_single_env(%rip), %rcx
.LBB193:
	.loc 6 746 0
	xorl	%esi, %esi
	movl	352(%rcx), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	sete	%sil
.LBE193:
.LBE192:
	.file 7 "/home/remco/Projects/Argos/src/softmmu_header.h"
	.loc 7 267 0
	movslq	%esi,%rdx
	leaq	(%rdx,%rdx), %rax
	addq	%rdx, %rax
	salq	$11, %rax
	leaq	(%r8,%rax), %rax
	cmpl	%edi, 1280(%rax,%rcx)
	je	.L584
	.loc 7 272 0
	movl	%ebx, %edi
	call	__ldb_cmmu
	jmp	.L584
.LBE191:
.LBE190:
.LFE216:
	.size	get_phys_addr_code, .-get_phys_addr_code
	.p2align 4,,15
.globl tb_invalidate_phys_page_range
	.type	tb_invalidate_phys_page_range, @function
tb_invalidate_phys_page_range:
.LFB234:
	.loc 1 670 0
	pushq	%r15
.LCFI137:
.LBB194:
.LBB195:
	.loc 1 258 0
	movl	%edi, %eax
.LBE195:
	.loc 1 255 0
	movl	%edi, %ecx
.LBB196:
	.loc 1 258 0
	shrl	$22, %eax
.LBE196:
	.loc 1 255 0
	shrl	$12, %ecx
.LBE194:
	.loc 1 670 0
	pushq	%r14
.LCFI138:
.LBB197:
.LBB198:
	.loc 1 258 0
	mov	%eax, %eax
.LBE198:
.LBE197:
	.loc 1 670 0
	movl	%edi, %r14d
	pushq	%r13
.LCFI139:
	pushq	%r12
.LCFI140:
	pushq	%rbp
.LCFI141:
	pushq	%rbx
.LCFI142:
	subq	$56, %rsp
.LCFI143:
	.loc 1 672 0
	movq	cpu_single_env(%rip), %r12
	.loc 1 670 0
	movl	%edx, 44(%rsp)
.LBB199:
.LBB200:
	.loc 1 258 0
	movq	l1_map(,%rax,8), %rdx
.LBE200:
.LBE199:
	.loc 1 670 0
	movl	%esi, 48(%rsp)
.LBB201:
.LBB202:
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L593
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %r13
.LBE202:
.LBE201:
	.loc 1 679 0
	testq	%r13, %r13
	je	.L593
	.loc 1 681 0
	cmpq	$0, 16(%r13)
	je	.L709
.L697:
	movq	(%r13), %rax
.L597:
	.loc 1 690 0
	movl	44(%rsp), %edx
	.loc 1 756 0
	testq	%rax, %rax
	.loc 1 691 0
	movl	$0, 40(%rsp)
	.loc 1 692 0
	movq	$0, 24(%rsp)
	.loc 1 693 0
	movl	$0, 12(%rsp)
	.loc 1 696 0
	movq	%rax, %rbx
	.loc 1 694 0
	movl	$0, 8(%rsp)
	.loc 1 695 0
	movl	$0, 32(%rsp)
	.loc 1 690 0
	movl	%edx, 36(%rsp)
	.loc 1 756 0
	je	.L698
	.p2align 4,,7
.L674:
	.loc 1 698 0
	movl	%ebx, %edx
	.loc 1 699 0
	andq	$-4, %rbx
	.loc 1 698 0
	andl	$3, %edx
	.loc 1 700 0
	movslq	%edx,%rax
	.loc 1 702 0
	testl	%edx, %edx
	.loc 1 700 0
	movq	40(%rbx,%rax,8), %r15
	.loc 1 702 0
	jne	.L616
	.loc 1 705 0
	movl	(%rbx), %ecx
	.loc 1 706 0
	movzwl	16(%rbx), %eax
	.loc 1 705 0
	andl	$4095, %ecx
	addl	56(%rbx), %ecx
.L706:
	.loc 1 709 0
	addl	%ecx, %eax
	.loc 1 711 0
	cmpl	%r14d, %eax
	seta	%dl
	xorl	%eax, %eax
	cmpl	48(%rsp), %ecx
	setb	%al
	testl	%edx, %eax
	je	.L618
	.loc 1 713 0
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.L619
	.loc 1 714 0
	movl	$0, 36(%rsp)
	.loc 1 715 0
	movq	$0, 24(%rsp)
	.loc 1 716 0
	movq	1256(%r12), %rdi
	testq	%rdi, %rdi
	jne	.L710
.L619:
	.loc 1 721 0
	cmpq	%rbx, 24(%rsp)
	je	.L711
.L621:
	.loc 1 745 0
	testq	%r12, %r12
	.loc 1 744 0
	movq	$0, 16(%rsp)
	.loc 1 745 0
	je	.L622
	.loc 1 746 0
	movq	1248(%r12), %rcx
	movq	%rcx, 16(%rsp)
	.loc 1 747 0
	movq	$0, 1248(%r12)
.L622:
.LBB203:
.LBB204:
	.loc 1 521 0
	movl	(%rbx), %eax
	andl	$4095, %eax
.LBB205:
	.loc 3 198 0
	addl	56(%rbx), %eax
.LBE205:
.LBB206:
	.loc 1 448 0
	andl	$32767, %eax
	leaq	tb_phys_hash(,%rax,8), %rdx
	jmp	.L624
	.p2align 4,,7
.L712:
.LBB207:
	.loc 1 456 0
	leaq	32(%rax), %rdx
.L624:
	.loc 1 451 0
	movq	(%rdx), %rax
	.loc 1 452 0
	cmpq	%rbx, %rax
	jne	.L712
	.loc 1 453 0
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.LBE207:
.LBE206:
	.loc 1 527 0
	movl	56(%rbx), %eax
	cmpl	$-1, %eax
	je	.L628
.LBB208:
	.loc 1 255 0
	movl	%eax, %ecx
.LBB209:
	.loc 1 258 0
	shrl	$22, %eax
	.loc 1 259 0
	xorl	%ebp, %ebp
	.loc 1 258 0
	mov	%eax, %eax
.LBE209:
	.loc 1 255 0
	shrl	$12, %ecx
.LBB210:
	.loc 1 258 0
	movq	l1_map(,%rax,8), %rdx
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L630
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rbp
.L630:
.LBE210:
.LBE208:
.LBB211:
	.loc 1 461 0
	movq	%rbp, %rcx
	jmp	.L631
	.p2align 4,,7
.L713:
.LBB212:
	.loc 1 473 0
	mov	%eax, %eax
	leaq	40(%rdx,%rax,8), %rcx
.L631:
	.loc 1 466 0
	movq	(%rcx), %rdx
	.loc 1 467 0
	movl	%edx, %eax
	.loc 1 468 0
	andq	$-4, %rdx
	.loc 1 467 0
	andl	$3, %eax
	.loc 1 469 0
	cmpq	%rbx, %rdx
	jne	.L713
	.loc 1 470 0
	mov	%eax, %eax
	movq	40(%rdx,%rax,8), %rax
	movq	%rax, (%rcx)
.LBE212:
.LBE211:
.LBB213:
.LBB214:
	.loc 1 336 0
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L714
.L635:
	.loc 1 340 0
	movl	$0, 8(%rbp)
.L628:
.LBE214:
.LBE213:
	.loc 1 532 0
	movl	60(%rbx), %eax
	cmpl	$-1, %eax
	je	.L637
.LBB215:
	.loc 1 255 0
	movl	%eax, %ecx
.LBB216:
	.loc 1 258 0
	shrl	$22, %eax
	.loc 1 259 0
	xorl	%ebp, %ebp
	.loc 1 258 0
	mov	%eax, %eax
.LBE216:
	.loc 1 255 0
	shrl	$12, %ecx
.LBB217:
	.loc 1 258 0
	movq	l1_map(,%rax,8), %rdx
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L639
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rbp
.L639:
.LBE217:
.LBE215:
.LBB218:
	.loc 1 461 0
	movq	%rbp, %rcx
	jmp	.L640
	.p2align 4,,7
.L715:
.LBB219:
	.loc 1 473 0
	mov	%eax, %eax
	leaq	40(%rdx,%rax,8), %rcx
.L640:
	.loc 1 466 0
	movq	(%rcx), %rdx
	.loc 1 467 0
	movl	%edx, %eax
	.loc 1 468 0
	andq	$-4, %rdx
	.loc 1 467 0
	andl	$3, %eax
	.loc 1 469 0
	cmpq	%rbx, %rdx
	jne	.L715
	.loc 1 470 0
	mov	%eax, %eax
	movq	40(%rdx,%rax,8), %rax
	movq	%rax, (%rcx)
.LBE219:
.LBE218:
.LBB220:
.LBB221:
	.loc 1 336 0
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L716
.L644:
	.loc 1 340 0
	movl	$0, 8(%rbp)
.L637:
.LBE221:
.LBE220:
	.loc 1 538 0
	movl	$1, tb_invalidated_flag(%rip)
.LBB222:
	.loc 3 190 0
	movl	(%rbx), %edx
.LBB223:
	.loc 3 192 0
	movl	%edx, %eax
	shrl	$6, %eax
	xorl	%edx, %eax
.LBE223:
.LBE222:
	.loc 1 542 0
	movq	first_cpu(%rip), %rdx
.LBB224:
.LBB225:
	.loc 3 192 0
	movl	%eax, %ecx
	andl	$63, %eax
	shrl	$6, %ecx
	andl	$4032, %ecx
	orl	%eax, %ecx
.LBE225:
.LBE224:
	.loc 1 542 0
	testq	%rdx, %rdx
	je	.L693
	mov	%ecx, %eax
	jmp	.L651
	.p2align 4,,7
.L649:
	movq	46984(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L693
.L651:
	.loc 1 543 0
	cmpq	%rbx, 13560(%rdx,%rax,8)
	jne	.L649
	.loc 1 544 0
	movq	$0, 13560(%rdx,%rax,8)
	.loc 1 542 0
	movq	46984(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.L651
	.p2align 4,,7
.L693:
.LBB226:
	.loc 1 478 0
	xorl	%r8d, %r8d
.LBB227:
	.loc 1 484 0
	cmpq	$0, 80(%rbx)
	.loc 1 482 0
	leaq	80(%rbx), %rdi
	.loc 1 484 0
	je	.L658
	.p2align 4,,7
.L707:
	.loc 1 487 0
	movq	(%rdi), %rcx
	.loc 1 488 0
	movl	%ecx, %esi
	.loc 1 489 0
	andq	$-4, %rcx
	.loc 1 488 0
	andl	$3, %esi
	.loc 1 490 0
	cmpl	%esi, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	testl	%edx, %eax
	jne	.L654
.L717:
	.loc 1 495 0
	mov	%esi, %eax
	.loc 1 492 0
	cmpl	$2, %esi
	.loc 1 495 0
	leaq	80(%rcx,%rax,8), %rdi
	.loc 1 492 0
	jne	.L707
	.loc 1 493 0
	leaq	96(%rcx), %rdi
	.loc 1 487 0
	movq	(%rdi), %rcx
	.loc 1 488 0
	movl	%ecx, %esi
	.loc 1 489 0
	andq	$-4, %rcx
	.loc 1 488 0
	andl	$3, %esi
	.loc 1 490 0
	cmpl	%esi, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	testl	%edx, %eax
	je	.L717
.L654:
	.loc 1 499 0
	movq	80(%rbx), %rax
	movq	%rax, (%rdi)
	.loc 1 501 0
	movq	$0, 80(%rbx)
.L658:
.LBE227:
.LBE226:
.LBB228:
.LBB229:
	.loc 1 484 0
	cmpq	$0, 88(%rbx)
.LBE229:
	.loc 1 478 0
	movl	$1, %r8d
.LBB230:
	.loc 1 482 0
	leaq	88(%rbx), %rdi
	.loc 1 484 0
	je	.L665
	.p2align 4,,7
.L708:
	.loc 1 487 0
	movq	(%rdi), %rcx
	.loc 1 488 0
	movl	%ecx, %esi
	.loc 1 489 0
	andq	$-4, %rcx
	.loc 1 488 0
	andl	$3, %esi
	.loc 1 490 0
	cmpl	%esi, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	testl	%edx, %eax
	jne	.L661
.L718:
	.loc 1 495 0
	mov	%esi, %eax
	.loc 1 492 0
	cmpl	$2, %esi
	.loc 1 495 0
	leaq	80(%rcx,%rax,8), %rdi
	.loc 1 492 0
	jne	.L708
	.loc 1 493 0
	leaq	96(%rcx), %rdi
	.loc 1 487 0
	movq	(%rdi), %rcx
	.loc 1 488 0
	movl	%ecx, %esi
	.loc 1 489 0
	andq	$-4, %rcx
	.loc 1 488 0
	andl	$3, %esi
	.loc 1 490 0
	cmpl	%esi, %r8d
	sete	%dl
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	sete	%al
	testl	%edx, %eax
	je	.L718
.L661:
	.loc 1 499 0
	movq	88(%rbx), %rax
	movq	%rax, (%rdi)
	.loc 1 501 0
	movq	$0, 88(%rbx)
.L665:
.LBE230:
.LBE228:
	.loc 1 552 0
	movq	96(%rbx), %rdi
	jmp	.L666
	.p2align 4,,7
.L719:
	.loc 1 557 0
	andq	$-4, %rdi
.LBB231:
.LBB232:
.LBB233:
	.loc 3 257 0
	movslq	%eax,%rdx
.LBE233:
.LBE232:
.LBE231:
	.loc 1 558 0
	mov	%eax, %ecx
.LBB234:
.LBB235:
.LBB236:
	.loc 3 257 0
	movzwq	64(%rdi,%rdx,2), %rax
.LBE236:
.LBE235:
.LBE234:
	.loc 1 558 0
	movq	80(%rdi,%rcx,8), %rsi
.LBB237:
.LBB238:
.LBB239:
	.loc 3 257 0
	addq	24(%rdi), %rax
.LBE239:
.LBE238:
.LBE237:
	.loc 1 560 0
	movq	$0, 80(%rdi,%rcx,8)
.LBB240:
.LBB241:
.LBB242:
.LBB243:
	.loc 3 258 0
	movl	%eax, 68(%rdi,%rdx,4)
.LBE243:
.LBE242:
.LBE241:
.LBE240:
	.loc 1 561 0
	movq	%rsi, %rdi
.L666:
	.loc 1 554 0
	movl	%edi, %eax
	andl	$3, %eax
	.loc 1 555 0
	cmpl	$2, %eax
	jne	.L719
	.loc 1 563 0
	movq	%rbx, %rax
	orq	$2, %rax
	movq	%rax, 96(%rbx)
	.loc 1 565 0
	incl	tb_phys_invalidate_count(%rip)
.LBE204:
.LBE203:
	.loc 1 750 0
	testq	%r12, %r12
	je	.L618
	.loc 1 752 0
	movl	1236(%r12), %esi
	.loc 1 751 0
	movq	16(%rsp), %rax
	.loc 1 752 0
	testl	%esi, %esi
	.loc 1 751 0
	movq	%rax, 1248(%r12)
	.loc 1 752 0
	je	.L618
	testq	%rax, %rax
	je	.L618
	.loc 1 753 0
	movq	%r12, %rdi
	call	cpu_interrupt
	.p2align 4,,7
.L618:
	.loc 1 756 0
	testq	%r15, %r15
	movq	%r15, %rbx
	jne	.L674
	.loc 1 760 0
	cmpq	$0, (%r13)
	jne	.L675
.L698:
.LBB244:
.LBB245:
	.loc 1 336 0
	movq	16(%r13), %rdi
	testq	%rdi, %rdi
	jne	.L720
.L676:
	.loc 1 340 0
	movl	$0, 8(%r13)
.LBE245:
.LBE244:
	.loc 1 762 0
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L675
.LBB246:
.LBB247:
	.loc 1 1472 0
	movq	phys_ram_dirty(%rip), %rdx
.LBE247:
	.loc 1 1471 0
	mov	%r14d, %eax
.LBB248:
	.loc 1 1472 0
	shrq	$12, %rax
	orb	$2, (%rax,%rdx)
.L675:
.LBE248:
.LBE246:
	.loc 1 768 0
	movl	40(%rsp), %eax
	testl	%eax, %eax
	jne	.L721
.L593:
	.loc 1 778 0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L709:
	.loc 1 681 0
	movl	8(%r13), %eax
	incl	%eax
	cmpl	$9, %eax
	movl	%eax, 8(%r13)
	jbe	.L697
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L697
.LBB249:
.LBB250:
	.loc 1 600 0
	movl	$512, %edi
	call	qemu_malloc
	.loc 1 601 0
	testq	%rax, %rax
	.loc 1 600 0
	movq	%rax, 16(%r13)
	.loc 1 601 0
	je	.L697
	.loc 1 603 0
	xorl	%esi, %esi
	movl	$512, %edx
	movq	%rax, %rdi
	call	memset
	.loc 1 605 0
	movq	(%r13), %rax
	.loc 1 622 0
	testq	%rax, %rax
	.loc 1 605 0
	movq	%rax, %r8
	.loc 1 622 0
	je	.L597
	movl	$255, %ebx
.L613:
	.loc 1 607 0
	movl	%r8d, %r11d
	.loc 1 608 0
	andq	$-4, %r8
	.loc 1 607 0
	andl	$3, %r11d
	.loc 1 610 0
	testl	%r11d, %r11d
	jne	.L602
	.loc 1 613 0
	movl	(%r8), %edx
	.loc 1 614 0
	movzwl	16(%r8), %eax
	.loc 1 613 0
	andl	$4095, %edx
	.loc 1 614 0
	leal	(%rax,%rdx), %ecx
	.loc 1 615 0
	cmpl	$4096, %ecx
	jle	.L604
	.loc 1 616 0
	movl	$4096, %ecx
.L604:
.LBB251:
.LBB252:
	.loc 1 572 0
	movl	%ecx, %edi
	.loc 1 573 0
	movl	%edx, %eax
	.loc 1 574 0
	movl	%edx, %ecx
	movl	$255, %r10d
	.loc 1 573 0
	sarl	$3, %eax
	.loc 1 574 0
	andl	$7, %ecx
	movl	%r10d, %r9d
	.loc 1 573 0
	movslq	%eax,%rsi
	.loc 1 575 0
	movl	%edx, %eax
	.loc 1 574 0
	sall	%cl, %r9d
	.loc 1 575 0
	movl	%edi, %ecx
	andl	$-8, %eax
	andl	$-8, %ecx
	.loc 1 573 0
	addq	16(%r13), %rsi
	.loc 1 575 0
	cmpl	%ecx, %eax
	je	.L722
	.loc 1 581 0
	movq	%rsi, %rax
	.loc 1 582 0
	addl	$8, %edx
	.loc 1 581 0
	incq	%rsi
	orb	%r9b, (%rax)
	.loc 1 582 0
	andl	$-8, %edx
	jmp	.L705
.L723:
	.loc 1 585 0
	movb	$-1, (%rsi)
	.loc 1 586 0
	addl	$8, %edx
	.loc 1 585 0
	incq	%rsi
.L705:
	.loc 1 586 0
	cmpl	%ecx, %edx
	jl	.L723
	.loc 1 588 0
	cmpl	%edi, %edx
	jge	.L612
	.loc 1 589 0
	andl	$7, %edi
	movl	%ebx, %eax
	movl	%edi, %ecx
	sall	%cl, %eax
	notl	%eax
	.loc 1 590 0
	orb	%al, (%rsi)
.L612:
.LBE252:
.LBE251:
	.loc 1 622 0
	movslq	%r11d,%rax
	movq	40(%r8,%rax,8), %r8
	testq	%r8, %r8
	jne	.L613
	jmp	.L697
	.p2align 4,,7
.L616:
.LBE250:
.LBE249:
	.loc 1 709 0
	movzwl	16(%rbx), %eax
	.loc 1 708 0
	movl	60(%rbx), %ecx
	.loc 1 709 0
	addl	(%rbx), %eax
	andl	$4095, %eax
	jmp	.L706
.L710:
	.loc 1 718 0
	call	tb_find_pc
	movq	%rax, 24(%rsp)
	.loc 1 721 0
	cmpq	%rbx, 24(%rsp)
	jne	.L621
.L711:
	testb	$8, 18(%rbx)
	jne	.L621
	.loc 1 729 0
	movl	$1, 40(%rsp)
	.loc 1 730 0
	movq	1256(%r12), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	cpu_restore_state
	.loc 1 734 0
	movl	36(%r12), %ecx
	andl	$143616, %ecx
	movl	%ecx, 32(%rsp)
	movl	352(%r12), %eax
	orl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	.loc 1 735 0
	movl	376(%r12), %edx
	movl	%edx, 8(%rsp)
	.loc 1 736 0
	addl	32(%r12), %edx
	movl	%edx, 12(%rsp)
	jmp	.L621
.L721:
	.loc 1 772 0
	movq	$0, 1248(%r12)
.LBB253:
.LBB254:
	.loc 1 637 0
	movl	12(%rsp), %esi
	movq	%r12, %rdi
	call	get_phys_addr_code
	.loc 1 638 0
	movl	12(%rsp), %edi
	.loc 1 637 0
	movl	%eax, %ebp
	.loc 1 638 0
	call	tb_alloc
	.loc 1 639 0
	testq	%rax, %rax
	.loc 1 638 0
	movq	%rax, %rbx
	.loc 1 639 0
	je	.L724
.L681:
	.loc 1 646 0
	movq	code_gen_ptr(%rip), %rax
	.loc 1 650 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	.loc 1 646 0
	movq	%rax, 24(%rbx)
	.loc 1 647 0
	movl	8(%rsp), %edx
	movl	%edx, 4(%rbx)
	.loc 1 648 0
	movslq	32(%rsp),%rax
	.loc 1 650 0
	leaq	52(%rsp), %rdx
	.loc 1 649 0
	movw	$8, 18(%rbx)
	.loc 1 648 0
	movq	%rax, 8(%rbx)
	.loc 1 650 0
	call	cpu_x86_gen_code
	.loc 1 651 0
	movslq	52(%rsp),%rax
	.loc 1 654 0
	movl	12(%rsp), %ecx
	.loc 1 655 0
	movl	$-1, %edx
	.loc 1 651 0
	addq	code_gen_ptr(%rip), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, code_gen_ptr(%rip)
	.loc 1 654 0
	movzwl	16(%rbx), %eax
	leal	-1(%rax,%rcx), %esi
	.loc 1 656 0
	andl	$-4096, %ecx
	.loc 1 654 0
	andl	$-4096, %esi
	.loc 1 656 0
	cmpl	%esi, %ecx
	je	.L682
	.loc 1 657 0
	movq	%r12, %rdi
	call	get_phys_addr_code
	movl	%eax, %edx
.L682:
	.loc 1 659 0
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	tb_link_phys
.LBE254:
.LBE253:
	.loc 1 775 0
	movq	%r12, %rdi
	xorl	%esi, %esi
	call	cpu_resume_from_signal
	.loc 1 778 0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L716:
.LBB255:
.LBB256:
.LBB257:
.LBB258:
	.loc 1 337 0
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%rbp)
	jmp	.L644
.L714:
.LBE258:
.LBE257:
.LBB259:
.LBB260:
	.loc 1 337 0
	.p2align 4,,6
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%rbp)
	.p2align 4,,4
	jmp	.L635
.L720:
.LBE260:
.LBE259:
.LBE256:
.LBE255:
.LBB261:
.LBB262:
	.loc 1 337 0
	.p2align 4,,6
	call	qemu_free
	.loc 1 338 0
	movq	$0, 16(%r13)
	.p2align 4,,4
	jmp	.L676
.L602:
.LBE262:
.LBE261:
.LBB263:
.LBB264:
	.loc 1 619 0
	movzwl	16(%r8), %ecx
	.loc 1 618 0
	xorl	%edx, %edx
	.loc 1 619 0
	addl	(%r8), %ecx
	andl	$4095, %ecx
	jmp	.L604
.L722:
.LBB265:
.LBB266:
	.loc 1 576 0
	cmpl	%edi, %edx
	jge	.L612
	.loc 1 577 0
	andl	$7, %edi
	movl	%edi, %ecx
	sall	%cl, %r10d
	notl	%r10d
	andl	%r10d, %r9d
	.loc 1 578 0
	orb	%r9b, (%rsi)
	jmp	.L612
.L724:
.LBE266:
.LBE265:
.LBE264:
.LBE263:
.LBB267:
.LBB268:
	.loc 1 641 0
	movq	%r12, %rdi
	call	tb_flush
	.loc 1 643 0
	movl	12(%rsp), %edi
	call	tb_alloc
	movq	%rax, %rbx
	jmp	.L681
.LBE268:
.LBE267:
.LFE234:
	.size	tb_invalidate_phys_page_range, .-tb_invalidate_phys_page_range
	.p2align 4,,15
.globl argos_stl_phys
	.type	argos_stl_phys, @function
argos_stl_phys:
.LFB310:
	.loc 1 2964 0
	movq	%rbx, -24(%rsp)
.LCFI144:
	movq	%rbp, -16(%rsp)
.LCFI145:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI146:
	.loc 1 2970 0
	shrq	$12, %rdi
	.loc 1 2964 0
	subq	$24, %rsp
.LCFI147:
	.loc 1 2964 0
	movq	%rdx, %rbp
	movl	%esi, %r12d
	.loc 1 2970 0
	call	phys_page_find
	movq	%rax, %rdx
	.loc 1 2972 0
	movl	$32, %eax
	.loc 1 2971 0
	testq	%rdx, %rdx
	je	.L727
	.loc 1 2974 0
	mov	(%rdx), %eax
.L727:
	.loc 1 2977 0
	testl	$4095, %eax 
	jne	.L740
.LBB269:
	.loc 1 2982 0
	andq	$-4096, %rax
	andl	$4095, %ebx
	movl	$3, %ecx
	leaq	(%rax,%rbx), %rdi
	.loc 1 2984 0
	movq	phys_ram_base(%rip), %rax
	leaq	0(,%rdi,4), %rdx
	addq	%rdi, %rax
.LBB270:
.LBB271:
	.loc 2 367 0
	movl	%r12d, (%rax)
	addq	argos_memmap(%rip), %rdx
	.p2align 4,,7
.L734:
.LBE271:
.LBE270:
.LBB272:
.LBB273:
	.loc 4 234 0
	movl	4(%rbp), %eax
	andl	$1073741823, %eax
	movl	%eax, (%rdx)
	addq	$4, %rdx
	decl	%ecx
	jns	.L734
.LBE273:
.LBE272:
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rax
.LBB274:
.LBB275:
	.loc 2 961 0
	movq	%rdi, %rbx
	shrq	$12, %rbx
.LBE275:
.LBE274:
	.loc 2 960 0
	cmpb	$-1, (%rbx,%rax)
	jne	.L741
.LBE269:
	.loc 1 2995 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L740:
	.loc 1 2978 0
	shrq	$4, %rax
	.loc 1 2979 0
	movq	%rbp, %rcx
	movl	%r12d, %edx
	movzbl	%al, %eax 
	movq	%rbx, %rsi
	.loc 1 2995 0
	movq	8(%rsp), %rbp
	.loc 1 2979 0
	movq	%rax, %r8
	movq	io_mem_opaque(,%rax,8), %rdi
	.loc 1 2995 0
	movq	(%rsp), %rbx
	.loc 1 2979 0
	salq	$5, %r8
	.loc 1 2995 0
	movq	16(%rsp), %r12
	.loc 1 2979 0
	movq	io_mem_write+16(%r8), %r11
	.loc 1 2995 0
	addq	$24, %rsp
	.loc 1 2979 0
	jmp	*%r11
.L741:
.LBB276:
	.loc 1 2989 0
	leal	4(%rdi), %esi
	xorl	%edx, %edx
	call	tb_invalidate_phys_page_range
	.loc 1 2991 0
	movq	phys_ram_dirty(%rip), %rax
	orb	$-3, (%rbx,%rax)
.LBE276:
	.loc 1 2995 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE310:
	.size	argos_stl_phys, .-argos_stl_phys
	.p2align 4,,15
.globl stl_phys
	.type	stl_phys, @function
stl_phys:
.LFB309:
	.loc 1 2928 0
	pushq	%rbp
.LCFI148:
	movl	%esi, %ebp
	pushq	%rbx
.LCFI149:
	movq	%rdi, %rbx
	.loc 1 2935 0
	shrq	$12, %rdi
	.loc 1 2928 0
	subq	$8, %rsp
.LCFI150:
	.loc 1 2933 0
	movq	$0, (%rsp)
	.loc 1 2935 0
	call	phys_page_find
	movq	%rax, %rdx
	.loc 1 2937 0
	movl	$32, %eax
	.loc 1 2936 0
	testq	%rdx, %rdx
	je	.L744
	.loc 1 2939 0
	mov	(%rdx), %eax
.L744:
	.loc 1 2942 0
	testl	$4095, %eax 
	jne	.L757
.LBB277:
	.loc 1 2947 0
	andq	$-4096, %rax
	andl	$4095, %ebx
	movl	$3, %edx
	leaq	(%rax,%rbx), %rcx
	.loc 1 2949 0
	movq	phys_ram_base(%rip), %rax
	addq	%rcx, %rax
.LBB278:
.LBB279:
	.loc 2 367 0
	movl	%ebp, (%rax)
	leaq	0(,%rcx,4), %rax
	addq	argos_memmap(%rip), %rax
	.p2align 4,,7
.L751:
.LBE279:
.LBE278:
.LBB280:
.LBB281:
	.loc 4 277 0
	movl	$0, (%rax)
	addq	$4, %rax
	decl	%edx
	jns	.L751
.LBE281:
.LBE280:
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rax
.LBB282:
.LBB283:
	.loc 2 961 0
	movq	%rcx, %rbx
	shrq	$12, %rbx
.LBE283:
.LBE282:
	.loc 2 960 0
	cmpb	$-1, (%rbx,%rax)
	jne	.L758
.LBE277:
	.loc 1 2960 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L757:
	.loc 1 2943 0
	shrq	$4, %rax
	.loc 1 2944 0
	movq	%rsp, %rcx
	movl	%ebp, %edx
	movzbl	%al, %eax 
	movq	%rbx, %rsi
	movq	%rax, %r8
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %r8
	call	*io_mem_write+16(%r8)
	.loc 1 2960 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L758:
.LBB284:
	.loc 1 2954 0
	leal	4(%rcx), %esi
	xorl	%edx, %edx
	movl	%ecx, %edi
	call	tb_invalidate_phys_page_range
	.loc 1 2956 0
	movq	phys_ram_dirty(%rip), %rax
	orb	$-3, (%rbx,%rax)
.LBE284:
	.loc 1 2960 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE309:
	.size	stl_phys, .-stl_phys
	.p2align 4,,15
	.type	watch_mem_writel, @function
watch_mem_writel:
.LFB284:
	.loc 1 2296 0
	pushq	%rbx
.LCFI151:
	.loc 1 2296 0
	movq	%rsi, %rdi
	movl	%edx, %ebx
	.loc 1 2297 0
	call	check_watchpoint
	.loc 1 2298 0
	movl	%ebx, %esi
	.loc 1 2297 0
	mov	%eax, %edi
	.loc 1 2298 0
	popq	%rbx
	jmp	stl_phys
.LFE284:
	.size	watch_mem_writel, .-watch_mem_writel
	.p2align 4,,15
.globl cpu_physical_memory_rw
	.type	cpu_physical_memory_rw, @function
cpu_physical_memory_rw:
.LFB299:
	.loc 1 2568 0
	pushq	%r15
.LCFI152:
	pushq	%r14
.LCFI153:
	movl	%edx, %r14d
	pushq	%r13
.LCFI154:
	pushq	%r12
.LCFI155:
	pushq	%rbp
.LCFI156:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI157:
	subq	$40, %rsp
.LCFI158:
	movq	%rsi, 16(%rsp)
	movl	%ecx, 12(%rsp)
	jmp	.L792
	.p2align 4,,7
.L798:
	.loc 1 2589 0
	testl	$4095, %edx 
	je	.L767
.LBB285:
	.loc 1 2592 0
	shrq	$4, %rdx
	.loc 1 2590 0
	movq	$0, 32(%rsp)
	.loc 1 2592 0
	movzbl	%dl,%eax
	.loc 1 2595 0
	cmpl	$3, %ebx
	jle	.L768
	testb	$3, %bpl
	je	.L796
.L768:
	.loc 1 2600 0
	decl	%ebx
	jle	.L771
	testb	$1, %bpl
	.p2align 4,,6
	je	.L797
.L771:
	.loc 2 204 0
	movq	16(%rsp), %rcx
	.loc 1 2608 0
	cltq
	movq	%rbp, %rsi
	movq	%rax, %r8
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %r8
	.loc 2 204 0
	movzbl	(%rcx), %edx
	.loc 1 2608 0
	leaq	32(%rsp), %rcx
	call	*io_mem_write(%r8)
.L793:
.LBE285:
.LBB286:
	.loc 1 2648 0
	movl	$1, %ebx
	movl	$1, %r12d
.L779:
.LBE286:
	.loc 1 2658 0
	addq	%r12, 16(%rsp)
	.loc 1 2657 0
	subl	%ebx, %r14d
	.loc 1 2659 0
	addq	%r12, %rbp
.L792:
	testl	%r14d, %r14d
	jle	.L791
	.loc 1 2577 0
	movq	%rbp, %rdi
	andq	$-4096, %rdi
	.loc 1 2578 0
	movl	%edi, %eax
	subl	%ebp, %eax
	leal	4096(%rax), %ebx
	.loc 1 2580 0
	cmpl	%r14d, %ebx
	cmovg	%r14d, %ebx
	.loc 1 2581 0
	shrq	$12, %rdi
	call	phys_page_find
	.loc 1 2582 0
	testq	%rax, %rax
	.loc 1 2583 0
	movl	$32, %edx
	.loc 1 2582 0
	je	.L765
	.loc 1 2585 0
	mov	(%rax), %edx
.L765:
	.loc 1 2588 0
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jne	.L798
	.loc 1 2628 0
	movq	%rdx, %rax
	andl	$4095, %eax
	cmpq	$16, %rax
	jbe	.L780
	testb	$1, %dl
	jne	.L780
.LBB287:
	.loc 1 2633 0
	shrq	$4, %rdx
	movzbl	%dl,%eax
	.loc 1 2634 0
	cmpl	$3, %ebx
	jle	.L781
	testb	$3, %bpl
	je	.L799
.L781:
	.loc 1 2639 0
	decl	%ebx
	.p2align 4,,2
	jle	.L784
	testb	$1, %bpl
	.p2align 4,,6
	je	.L800
.L784:
	.loc 1 2646 0
	cltq
	leaq	24(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read(%rcx)
	movl	%eax, %edx
.LBB288:
.LBB289:
	.loc 2 215 0
	movq	16(%rsp), %rax
	movb	%dl, (%rax)
	jmp	.L793
.L799:
.LBE289:
.LBE288:
	.loc 1 2636 0
	cltq
	leaq	24(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
	movl	%eax, %edx
.LBB290:
.LBB291:
	.loc 2 367 0
	movq	16(%rsp), %rax
	movl	%edx, (%rax)
.L795:
.LBE291:
.LBE290:
	.loc 1 2638 0
	movl	$4, %ebx
	movl	$4, %r12d
	jmp	.L779
	.p2align 4,,7
.L780:
.LBE287:
	.loc 1 2652 0
	andq	$-4096, %rdx
	addq	phys_ram_base(%rip), %rdx
	movq	%rbp, %rax
	andl	$4095, %eax
	.loc 1 2654 0
	movq	16(%rsp), %rdi
	movslq	%ebx,%r12
	.loc 1 2652 0
	leaq	(%rdx,%rax), %rax
	.loc 1 2654 0
	movq	%r12, %rdx
	movq	%rax, %rsi
	call	memcpy
	jmp	.L779
	.p2align 4,,7
.L767:
.LBB292:
	.loc 1 2613 0
	movq	%rbp, %rax
	andq	$-4096, %rdx
	.loc 1 2616 0
	movq	16(%rsp), %rsi
	.loc 1 2613 0
	andl	$4095, %eax
	.loc 1 2616 0
	movslq	%ebx,%r12
	.loc 1 2613 0
	leaq	(%rdx,%rax), %r15
	.loc 1 2615 0
	movq	phys_ram_base(%rip), %rax
	.loc 1 2616 0
	movq	%r12, %rdx
.LBB293:
.LBB294:
	.loc 2 961 0
	movq	%r15, %r13
.LBE294:
.LBE293:
	.loc 1 2615 0
	addq	%r15, %rax
.LBB295:
.LBB296:
	.loc 2 961 0
	shrq	$12, %r13
.LBE296:
.LBE295:
	.loc 1 2616 0
	movq	%rax, %rdi
	call	memcpy
.LBB297:
.LBB298:
	.loc 4 394 0
	leaq	0(,%r15,4), %rdi
	addq	argos_memmap(%rip), %rdi
	.loc 4 387 0
	leaq	0(,%r12,4), %rdx
	.loc 4 394 0
	xorl	%esi, %esi
	call	memset
.LBE298:
.LBE297:
	.loc 2 960 0
	movq	phys_ram_dirty(%rip), %rax
	cmpb	$-1, (%r13,%rax)
	je	.L779
	.loc 1 2620 0
	leal	(%rbx,%r15), %esi
	xorl	%edx, %edx
	movl	%r15d, %edi
	call	tb_invalidate_phys_page_range
	.loc 1 2622 0
	movq	phys_ram_dirty(%rip), %rax
	orb	$-3, (%r13,%rax)
	jmp	.L779
	.p2align 4,,7
.L791:
.LBE292:
	.loc 1 2659 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L797:
.LBB299:
.LBB300:
.LBB301:
	.loc 2 342 0
	movq	16(%rsp), %rcx
.LBE301:
.LBE300:
	.loc 1 2603 0
	cltq
	movq	%rbp, %rsi
	movq	%rax, %r8
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %r8
.LBB302:
.LBB303:
	.loc 2 342 0
	movzwl	(%rcx), %edx
.LBE303:
.LBE302:
	.loc 1 2603 0
	leaq	32(%rsp), %rcx
	call	*io_mem_write+8(%r8)
.L794:
.LBE299:
.LBB304:
	.loc 1 2643 0
	movl	$2, %ebx
	movl	$2, %r12d
	jmp	.L779
.L796:
.LBE304:
.LBB305:
.LBB306:
.LBB307:
	.loc 2 352 0
	movq	16(%rsp), %rcx
.LBE307:
.LBE306:
	.loc 1 2598 0
	cltq
	movq	%rbp, %rsi
	movq	io_mem_opaque(,%rax,8), %rdi
	movq	%rax, %r8
	salq	$5, %r8
.LBB308:
.LBB309:
	.loc 2 352 0
	movl	(%rcx), %edx
.LBE309:
.LBE308:
	.loc 1 2598 0
	leaq	32(%rsp), %rcx
	call	*io_mem_write+16(%r8)
	jmp	.L795
.L800:
.LBE305:
.LBB310:
	.loc 1 2641 0
	cltq
	leaq	24(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+8(%rcx)
.LBB311:
.LBB312:
	.loc 2 362 0
	movq	16(%rsp), %rcx
	movw	%ax, (%rcx)
	jmp	.L794
.LBE312:
.LBE311:
.LBE310:
.LFE299:
	.size	cpu_physical_memory_rw, .-cpu_physical_memory_rw
	.p2align 4,,15
.globl cpu_memory_rw_debug
	.type	cpu_memory_rw_debug, @function
cpu_memory_rw_debug:
.LFB315:
	.loc 1 3030 0
	pushq	%r15
.LCFI159:
	movq	%rdi, %r15
	pushq	%r14
.LCFI160:
	movl	%r8d, %r14d
	pushq	%r13
.LCFI161:
	movq	%rdx, %r13
	pushq	%r12
.LCFI162:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI163:
	movl	%ecx, %ebp
	pushq	%rbx
.LCFI164:
	subq	$8, %rsp
.LCFI165:
	jmp	.L809
	.p2align 4,,7
.L810:
	.loc 1 3036 0
	movl	%r12d, %ebx
	.loc 1 3037 0
	movq	%r15, %rdi
	.loc 1 3036 0
	andl	$-4096, %ebx
	.loc 1 3037 0
	movl	%ebx, %esi
	call	cpu_get_phys_page_debug
	.loc 1 3039 0
	cmpq	$-1, %rax
	je	.L801
	.loc 1 3041 0
	subl	%r12d, %ebx
	.loc 1 3044 0
	movq	%r12, %rdi
	movq	%r13, %rsi
	.loc 1 3041 0
	addl	$4096, %ebx
	.loc 1 3044 0
	movl	%r14d, %ecx
	.loc 1 3043 0
	cmpl	%ebp, %ebx
	cmovg	%ebp, %ebx
	.loc 1 3044 0
	andl	$4095, %edi
	addq	%rax, %rdi
	movl	%ebx, %edx
	.loc 1 3046 0
	subl	%ebx, %ebp
	.loc 1 3044 0
	call	cpu_physical_memory_rw
	.loc 1 3047 0
	movslq	%ebx,%rax
	.loc 1 3048 0
	addl	%ebx, %r12d
	.loc 1 3047 0
	addq	%rax, %r13
.L809:
	.loc 1 3048 0
	testl	%ebp, %ebp
	jg	.L810
	.loc 1 3050 0
	xorl	%eax, %eax
.L801:
	.loc 1 3051 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE315:
	.size	cpu_memory_rw_debug, .-cpu_memory_rw_debug
	.p2align 4,,15
.globl argos_stq_phys
	.type	argos_stq_phys, @function
argos_stq_phys:
.LFB314:
	.loc 1 3020 0
	subq	$8, %rsp
.LCFI166:
.LBB313:
.LBB314:
	.loc 2 930 0
	movl	$1, %ecx
	movl	$8, %edx
.LBE314:
.LBE313:
	.loc 1 3020 0
	movq	%rsi, (%rsp)
.LBB315:
.LBB316:
	.loc 2 930 0
	movq	%rsp, %rsi
	call	cpu_physical_memory_rw
.LBE316:
.LBE315:
	addq	$8, %rsp
	ret
.LFE314:
	.size	argos_stq_phys, .-argos_stq_phys
	.p2align 4,,15
.globl stq_phys
	.type	stq_phys, @function
stq_phys:
.LFB313:
	.loc 1 3013 0
	subq	$8, %rsp
.LCFI167:
.LBB317:
.LBB318:
	.loc 2 930 0
	movl	$1, %ecx
	movl	$8, %edx
.LBE318:
.LBE317:
	.loc 1 3013 0
	movq	%rsi, (%rsp)
.LBB319:
.LBB320:
	.loc 2 930 0
	movq	%rsp, %rsi
	call	cpu_physical_memory_rw
.LBE320:
.LBE319:
	addq	$8, %rsp
	ret
.LFE313:
	.size	stq_phys, .-stq_phys
	.p2align 4,,15
.globl stw_phys
	.type	stw_phys, @function
stw_phys:
.LFB312:
	.loc 1 3006 0
	subq	$8, %rsp
.LCFI168:
.LBB321:
.LBB322:
	.loc 2 930 0
	movl	$1, %ecx
	movl	$2, %edx
.LBE322:
.LBE321:
	.loc 2 81 0
	movw	%si, 6(%rsp)
.LBB323:
.LBB324:
	.loc 2 930 0
	leaq	6(%rsp), %rsi
	call	cpu_physical_memory_rw
.LBE324:
.LBE323:
	addq	$8, %rsp
	ret
.LFE312:
	.size	stw_phys, .-stw_phys
	.p2align 4,,15
	.type	watch_mem_writew, @function
watch_mem_writew:
.LFB283:
	.loc 1 2289 0
	pushq	%rbx
.LCFI169:
	.loc 1 2289 0
	movq	%rsi, %rdi
	movl	%edx, %ebx
	.loc 1 2290 0
	call	check_watchpoint
	.loc 1 2291 0
	movl	%ebx, %esi
	.loc 1 2290 0
	mov	%eax, %edi
	.loc 1 2291 0
	popq	%rbx
	jmp	stw_phys
.LFE283:
	.size	watch_mem_writew, .-watch_mem_writew
	.p2align 4,,15
.globl stb_phys
	.type	stb_phys, @function
stb_phys:
.LFB311:
	.loc 1 2999 0
	subq	$8, %rsp
.LCFI170:
.LBB325:
.LBB326:
	.loc 2 930 0
	movl	$1, %ecx
	movl	$1, %edx
.LBE326:
.LBE325:
	.loc 1 3000 0
	movb	%sil, 7(%rsp)
.LBB327:
.LBB328:
	.loc 2 930 0
	leaq	7(%rsp), %rsi
	call	cpu_physical_memory_rw
.LBE328:
.LBE327:
	addq	$8, %rsp
	ret
.LFE311:
	.size	stb_phys, .-stb_phys
	.p2align 4,,15
	.type	watch_mem_writeb, @function
watch_mem_writeb:
.LFB282:
	.loc 1 2282 0
	pushq	%rbx
.LCFI171:
	.loc 1 2282 0
	movq	%rsi, %rdi
	movl	%edx, %ebx
	.loc 1 2283 0
	call	check_watchpoint
	.loc 1 2284 0
	movl	%ebx, %esi
	.loc 1 2283 0
	mov	%eax, %edi
	.loc 1 2284 0
	popq	%rbx
	jmp	stb_phys
.LFE282:
	.size	watch_mem_writeb, .-watch_mem_writeb
	.p2align 4,,15
.globl lduw_phys
	.type	lduw_phys, @function
lduw_phys:
.LFB306:
	.loc 1 2855 0
	subq	$8, %rsp
.LCFI172:
.LBB329:
.LBB330:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movl	$2, %edx
	leaq	6(%rsp), %rsi
	call	cpu_physical_memory_rw
.LBE330:
.LBE329:
	.loc 2 81 0
	movzwl	6(%rsp), %eax
	.loc 1 2859 0
	addq	$8, %rsp
	ret
.LFE306:
	.size	lduw_phys, .-lduw_phys
	.p2align 4,,15
	.type	watch_mem_readw, @function
watch_mem_readw:
.LFB279:
	.loc 1 2246 0
	.loc 1 2246 0
	movq	%rsi, %rdi
	.loc 1 2247 0
	jmp	lduw_phys
.LFE279:
	.size	watch_mem_readw, .-watch_mem_readw
	.p2align 4,,15
.globl ldub_phys
	.type	ldub_phys, @function
ldub_phys:
.LFB305:
	.loc 1 2847 0
	subq	$8, %rsp
.LCFI173:
.LBB331:
.LBB332:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movl	$1, %edx
	leaq	7(%rsp), %rsi
	call	cpu_physical_memory_rw
.LBE332:
.LBE331:
	.loc 1 2850 0
	movzbl	7(%rsp), %eax
	.loc 1 2851 0
	addq	$8, %rsp
	ret
.LFE305:
	.size	ldub_phys, .-ldub_phys
	.p2align 4,,15
	.type	watch_mem_readb, @function
watch_mem_readb:
.LFB278:
	.loc 1 2241 0
	.loc 1 2241 0
	movq	%rsi, %rdi
	.loc 1 2242 0
	jmp	ldub_phys
.LFE278:
	.size	watch_mem_readb, .-watch_mem_readb
	.p2align 4,,15
	.type	breakpoint_invalidate, @function
breakpoint_invalidate:
.LFB242:
	.loc 1 1064 0
	pushq	%rbx
.LCFI174:
	.loc 1 1064 0
	movl	%esi, %ebx
	.loc 1 1070 0
	call	cpu_get_phys_page_debug
	movq	%rax, %rdi
	.loc 1 1071 0
	shrq	$12, %rdi
	call	phys_page_find
	.loc 1 1072 0
	testq	%rax, %rax
	.loc 1 1073 0
	movl	$32, %edx
	.loc 1 1072 0
	je	.L833
	.loc 1 1075 0
	movl	(%rax), %edx
.L833:
	.loc 1 1077 0
	andl	$4095, %ebx
	andl	$-4096, %edx
	orl	%ebx, %edx
	.loc 1 1078 0
	popq	%rbx
	.loc 1 1077 0
	mov	%edx, %edi
	.loc 1 1078 0
	xorl	%edx, %edx
	leal	1(%rdi), %esi
	jmp	tb_invalidate_phys_page_range
.LFE242:
	.size	breakpoint_invalidate, .-breakpoint_invalidate
	.p2align 4,,15
.globl cpu_breakpoint_remove
	.type	cpu_breakpoint_remove, @function
cpu_breakpoint_remove:
.LFB246:
	.loc 1 1145 0
	subq	$8, %rsp
.LCFI175:
	.loc 1 1148 0
	movl	46456(%rdi), %eax
	xorl	%edx, %edx
	cmpl	$0, %eax
	jmp	.L844
	.p2align 4,,7
.L845:
	.loc 1 1149 0
	movslq	%edx,%rcx
	cmpl	%esi, 46328(%rdi,%rcx,4)
	je	.L839
	.loc 1 1148 0
	incl	%edx
	cmpl	%edx, %eax
.L844:
	jg	.L845
	.loc 1 1152 0
	movl	$-1, %eax
	.loc 1 1163 0
	addq	$8, %rsp
	ret
.L839:
	.loc 1 1154 0
	decl	%eax
	.loc 1 1155 0
	cmpl	%edx, %eax
	.loc 1 1154 0
	movl	%eax, 46456(%rdi)
	.loc 1 1155 0
	jle	.L841
	.loc 1 1156 0
	cltq
	movl	46328(%rdi,%rax,4), %eax
	movl	%eax, 46328(%rdi,%rcx,4)
.L841:
	.loc 1 1158 0
	call	breakpoint_invalidate
	.loc 1 1159 0
	xorl	%eax, %eax
	.loc 1 1163 0
	addq	$8, %rsp
	ret
.LFE246:
	.size	cpu_breakpoint_remove, .-cpu_breakpoint_remove
	.p2align 4,,15
.globl cpu_breakpoint_insert
	.type	cpu_breakpoint_insert, @function
cpu_breakpoint_insert:
.LFB245:
	.loc 1 1123 0
	subq	$8, %rsp
.LCFI176:
	.loc 1 1127 0
	movl	46456(%rdi), %ecx
	xorl	%edx, %edx
	cmpl	$0, %ecx
	jmp	.L856
	.p2align 4,,7
.L858:
	.loc 1 1128 0
	movslq	%edx,%rax
	cmpl	%esi, 46328(%rdi,%rax,4)
	je	.L857
	.loc 1 1127 0
	incl	%edx
	cmpl	%edx, %ecx
.L856:
	jg	.L858
	.loc 1 1132 0
	cmpl	$31, %ecx
	.loc 1 1133 0
	movl	$-1, %eax
	.loc 1 1132 0
	jg	.L846
	.loc 1 1134 0
	movslq	%ecx,%rax
	movl	%esi, 46328(%rdi,%rax,4)
	leal	1(%rcx), %eax
	movl	%eax, 46456(%rdi)
	.loc 1 1136 0
	call	breakpoint_invalidate
.L857:
	.loc 1 1137 0
	xorl	%eax, %eax
.L846:
	.loc 1 1141 0
	addq	$8, %rsp
	ret
.LFE245:
	.size	cpu_breakpoint_insert, .-cpu_breakpoint_insert
	.p2align 4,,15
	.type	notdirty_mem_writel, @function
notdirty_mem_writel:
.LFB277:
	.loc 1 2198 0
	movq	%rbx, -32(%rsp)
.LCFI177:
	movq	%rbp, -24(%rsp)
.LCFI178:
	.loc 1 2201 0
	movq	%rsi, %rbx
	.loc 1 2198 0
	movq	%r12, -16(%rsp)
.LCFI179:
	movq	%r13, -8(%rsp)
.LCFI180:
	subq	$40, %rsp
.LCFI181:
	.loc 1 2201 0
	subq	phys_ram_base(%rip), %rbx
	.loc 1 2202 0
	movq	phys_ram_dirty(%rip), %rdi
	.loc 1 2198 0
	movq	%rsi, %rbp
	movl	%edx, %r13d
	movq	%rcx, %r12
	.loc 1 2202 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %esi
	.loc 1 2203 0
	testb	$2, %sil
	jne	.L860
.LBB333:
.LBB334:
.LBB335:
.LBB336:
	.loc 1 258 0
	movl	%ebx, %eax
.LBE336:
	.loc 1 255 0
	movl	%ebx, %ecx
.LBE335:
.LBE334:
	.loc 1 782 0
	movl	%ebx, %esi
.LBB337:
.LBB338:
.LBB339:
	.loc 1 258 0
	shrl	$22, %eax
.LBE339:
	.loc 1 255 0
	shrl	$12, %ecx
.LBB340:
	.loc 1 258 0
	mov	%eax, %eax
	movq	l1_map(,%rax,8), %rdx
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L864
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rax
.LBE340:
.LBE338:
	.loc 1 796 0
	testq	%rax, %rax
	je	.L864
	.loc 1 798 0
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L867
	.loc 1 800 0
	movq	%rbx, %rax
	movl	%ebx, %ecx
	salq	$52, %rax
	andl	$7, %ecx
	shrq	$55, %rax
	movzbl	(%rdx,%rax), %eax
	sarl	%cl, %eax
	.loc 1 801 0
	testb	$15, %al
	jne	.L867
.L864:
.LBE337:
.LBE333:
	.loc 1 2206 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %esi
	.p2align 4,,7
.L860:
.LBB341:
.LBB342:
	.loc 2 367 0
	movl	%r13d, (%rbp)
	leaq	0(,%rbx,4), %rdx
	addq	argos_memmap(%rip), %rdx
	movl	$3, %ecx
	.p2align 4,,7
.L873:
.LBE342:
.LBE341:
.LBB343:
.LBB344:
	.loc 4 234 0
	movl	4(%r12), %eax
	andl	$1073741823, %eax
	movl	%eax, (%rdx)
	addq	$4, %rdx
	decl	%ecx
	jns	.L873
.LBE344:
.LBE343:
	.loc 1 2217 0
	movq	phys_ram_dirty(%rip), %rax
	.loc 1 2216 0
	orb	$-3, %sil
	.loc 1 2217 0
	shrq	$12, %rbx
	.loc 1 2220 0
	cmpl	$255, %esi
	.loc 1 2217 0
	movb	%sil, (%rbx,%rax)
	.loc 1 2220 0
	je	.L885
.L859:
	.loc 1 2222 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L885:
.LBB345:
	.loc 1 1613 0
	movq	cpu_single_env(%rip), %r8
.LBB346:
	.loc 1 1616 0
	movq	%rbp, %rsi
	andq	$-4096, %rsi
.LBE346:
	.loc 1 1613 0
	movl	1264(%r8), %eax
.LBB347:
	.loc 1 1617 0
	shrl	$12, %eax
.LBB348:
	.loc 1 1599 0
	movzbl	%al, %edx 
	leaq	(%rdx,%rdx,2), %rax
	leaq	1272(%r8,%rax,8), %rdi
.LBB349:
	.loc 1 1601 0
	movl	4(%rdi), %ecx
	movl	%ecx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	je	.L886
.L878:
.LBE349:
.LBE348:
.LBB350:
	.loc 1 1599 0
	leaq	(%rdx,%rdx,2), %rax
	leaq	7416(%r8,%rax,8), %rcx
.LBB351:
	.loc 1 1601 0
	movl	4(%rcx), %edx
	movl	%edx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	jne	.L859
	.loc 1 1602 0
	movq	%rdx, %rax
	andl	$4294963200, %eax
	addq	16(%rcx), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L859
	.loc 1 1604 0
	andl	$-4096, %edx
	movl	%edx, 4(%rcx)
	jmp	.L859
.L867:
.LBE351:
.LBE350:
.LBE347:
.LBE345:
.LBB352:
.LBB353:
	.loc 1 805 0
	addl	$4, %esi
	movl	%ebx, %edi
	movl	$1, %edx
	call	tb_invalidate_phys_page_range
	movq	phys_ram_dirty(%rip), %rdi
.LBE353:
.LBE352:
	.loc 1 2206 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %esi
	jmp	.L860
.L886:
.LBB354:
.LBB355:
.LBB356:
.LBB357:
	.loc 1 1602 0
	movq	%rcx, %rax
	andl	$4294963200, %eax
	addq	16(%rdi), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L878
	.loc 1 1604 0
	andl	$-4096, %ecx
	movl	%ecx, 4(%rdi)
	jmp	.L878
.LBE357:
.LBE356:
.LBE355:
.LBE354:
.LFE277:
	.size	notdirty_mem_writel, .-notdirty_mem_writel
	.p2align 4,,15
	.type	notdirty_mem_writew, @function
notdirty_mem_writew:
.LFB276:
	.loc 1 2171 0
	movq	%rbx, -32(%rsp)
.LCFI182:
	movq	%rbp, -24(%rsp)
.LCFI183:
	.loc 1 2174 0
	movq	%rsi, %rbx
	.loc 1 2171 0
	movq	%r12, -16(%rsp)
.LCFI184:
	movq	%r13, -8(%rsp)
.LCFI185:
	subq	$40, %rsp
.LCFI186:
	.loc 1 2174 0
	subq	phys_ram_base(%rip), %rbx
	.loc 1 2175 0
	movq	phys_ram_dirty(%rip), %rdi
	.loc 1 2171 0
	movq	%rcx, %r13
	movq	%rsi, %rbp
	movl	%edx, %r12d
	.loc 1 2175 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	.loc 1 2176 0
	testb	$2, %cl
	jne	.L888
.LBB358:
.LBB359:
.LBB360:
.LBB361:
	.loc 1 258 0
	movl	%ebx, %eax
.LBE361:
	.loc 1 255 0
	movl	%ebx, %ecx
.LBE360:
.LBE359:
	.loc 1 782 0
	movl	%ebx, %esi
.LBB362:
.LBB363:
.LBB364:
	.loc 1 258 0
	shrl	$22, %eax
.LBE364:
	.loc 1 255 0
	shrl	$12, %ecx
.LBB365:
	.loc 1 258 0
	mov	%eax, %eax
	movq	l1_map(,%rax,8), %rdx
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L892
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rax
.LBE365:
.LBE363:
	.loc 1 796 0
	testq	%rax, %rax
	je	.L892
	.loc 1 798 0
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L895
	.loc 1 800 0
	movq	%rbx, %rax
	movl	%ebx, %ecx
	salq	$52, %rax
	andl	$7, %ecx
	shrq	$55, %rax
	movzbl	(%rdx,%rax), %eax
	sarl	%cl, %eax
	.loc 1 801 0
	testb	$3, %al
	jne	.L895
.L892:
.LBE362:
.LBE358:
	.loc 1 2179 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	.p2align 4,,7
.L888:
.LBB366:
.LBB367:
	.loc 2 362 0
	movw	%r12w, (%rbp)
.LBE367:
.LBE366:
.LBB368:
.LBB369:
	.loc 4 224 0
	movl	4(%r13), %eax
.LBE369:
.LBE368:
	.loc 1 2189 0
	orb	$-3, %cl
.LBB370:
	.loc 4 219 0
	movq	argos_memmap(%rip), %rdx
.LBB371:
	.loc 4 224 0
	andl	$1073741823, %eax
	movl	%eax, (%rdx,%rbx,4)
	movl	%eax, 4(%rdx,%rbx,4)
.LBE371:
.LBE370:
	.loc 1 2190 0
	shrq	$12, %rbx
	movq	phys_ram_dirty(%rip), %rax
	.loc 1 2193 0
	cmpl	$255, %ecx
	.loc 1 2190 0
	movb	%cl, (%rbx,%rax)
	.loc 1 2193 0
	je	.L907
.L887:
	.loc 1 2195 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L907:
.LBB372:
	.loc 1 1613 0
	movq	cpu_single_env(%rip), %r8
.LBB373:
	.loc 1 1616 0
	movq	%rbp, %rsi
	andq	$-4096, %rsi
.LBE373:
	.loc 1 1613 0
	movl	1264(%r8), %eax
.LBB374:
	.loc 1 1617 0
	shrl	$12, %eax
.LBB375:
	.loc 1 1599 0
	movzbl	%al, %edx 
	leaq	(%rdx,%rdx,2), %rax
	leaq	1272(%r8,%rax,8), %rdi
.LBB376:
	.loc 1 1601 0
	movl	4(%rdi), %ecx
	movl	%ecx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	je	.L908
.L902:
.LBE376:
.LBE375:
.LBB377:
	.loc 1 1599 0
	leaq	(%rdx,%rdx,2), %rax
	leaq	7416(%r8,%rax,8), %rcx
.LBB378:
	.loc 1 1601 0
	movl	4(%rcx), %edx
	movl	%edx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	jne	.L887
	.loc 1 1602 0
	movq	%rdx, %rax
	andl	$4294963200, %eax
	addq	16(%rcx), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L887
	.loc 1 1604 0
	andl	$-4096, %edx
	movl	%edx, 4(%rcx)
	jmp	.L887
	.p2align 4,,7
.L895:
.LBE378:
.LBE377:
.LBE374:
.LBE372:
.LBB379:
.LBB380:
	.loc 1 805 0
	movl	%ebx, %edi
	addl	$2, %esi
	movl	$1, %edx
	call	tb_invalidate_phys_page_range
	movq	phys_ram_dirty(%rip), %rdi
.LBE380:
.LBE379:
	.loc 1 2179 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	jmp	.L888
.L908:
.LBB381:
.LBB382:
.LBB383:
.LBB384:
	.loc 1 1602 0
	movq	%rcx, %rax
	andl	$4294963200, %eax
	addq	16(%rdi), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L902
	.loc 1 1604 0
	andl	$-4096, %ecx
	movl	%ecx, 4(%rdi)
	jmp	.L902
.LBE384:
.LBE383:
.LBE382:
.LBE381:
.LFE276:
	.size	notdirty_mem_writew, .-notdirty_mem_writew
	.p2align 4,,15
	.type	notdirty_mem_writeb, @function
notdirty_mem_writeb:
.LFB275:
	.loc 1 2144 0
	movq	%rbx, -32(%rsp)
.LCFI187:
	movq	%rbp, -24(%rsp)
.LCFI188:
	.loc 1 2147 0
	movq	%rsi, %rbx
	.loc 1 2144 0
	movq	%r12, -16(%rsp)
.LCFI189:
	movq	%r13, -8(%rsp)
.LCFI190:
	subq	$40, %rsp
.LCFI191:
	.loc 1 2147 0
	subq	phys_ram_base(%rip), %rbx
	.loc 1 2148 0
	movq	phys_ram_dirty(%rip), %rdi
	.loc 1 2144 0
	movq	%rcx, %r13
	movq	%rsi, %rbp
	movl	%edx, %r12d
	.loc 1 2148 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	.loc 1 2149 0
	testb	$2, %cl
	jne	.L910
.LBB385:
.LBB386:
.LBB387:
.LBB388:
	.loc 1 258 0
	movl	%ebx, %eax
.LBE388:
	.loc 1 255 0
	movl	%ebx, %ecx
.LBE387:
.LBE386:
	.loc 1 782 0
	movl	%ebx, %esi
.LBB389:
.LBB390:
.LBB391:
	.loc 1 258 0
	shrl	$22, %eax
.LBE391:
	.loc 1 255 0
	shrl	$12, %ecx
.LBB392:
	.loc 1 258 0
	mov	%eax, %eax
	movq	l1_map(,%rax,8), %rdx
	.loc 1 259 0
	testq	%rdx, %rdx
	je	.L914
	movq	%rcx, %rax
	andl	$1023, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rax
.LBE392:
.LBE390:
	.loc 1 796 0
	testq	%rax, %rax
	je	.L914
	.loc 1 798 0
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.L917
	.loc 1 800 0
	movq	%rbx, %rax
	movl	%ebx, %ecx
	salq	$52, %rax
	andl	$7, %ecx
	shrq	$55, %rax
	movzbl	(%rdx,%rax), %eax
	sarl	%cl, %eax
	.loc 1 801 0
	testb	$1, %al
	jne	.L917
.L914:
.LBE389:
.LBE385:
	.loc 1 2152 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	.p2align 4,,7
.L910:
.LBB393:
.LBB394:
	.loc 2 215 0
	movb	%r12b, (%rbp)
.LBE394:
.LBE393:
.LBB395:
.LBB396:
	.loc 4 213 0
	movl	4(%r13), %eax
.LBE396:
.LBE395:
	.loc 1 2162 0
	orb	$-3, %cl
.LBB397:
.LBB398:
	.loc 4 213 0
	movq	argos_memmap(%rip), %rdx
	andl	$1073741823, %eax
	movl	%eax, (%rdx,%rbx,4)
.LBE398:
.LBE397:
	.loc 1 2163 0
	movq	phys_ram_dirty(%rip), %rax
	shrq	$12, %rbx
	.loc 1 2166 0
	cmpl	$255, %ecx
	.loc 1 2163 0
	movb	%cl, (%rbx,%rax)
	.loc 1 2166 0
	je	.L929
.L909:
	.loc 1 2168 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L929:
.LBB399:
	.loc 1 1613 0
	movq	cpu_single_env(%rip), %r8
.LBB400:
	.loc 1 1616 0
	movq	%rbp, %rsi
	andq	$-4096, %rsi
.LBE400:
	.loc 1 1613 0
	movl	1264(%r8), %eax
.LBB401:
	.loc 1 1617 0
	shrl	$12, %eax
.LBB402:
	.loc 1 1599 0
	movzbl	%al, %edx 
	leaq	(%rdx,%rdx,2), %rax
	leaq	1272(%r8,%rax,8), %rdi
.LBB403:
	.loc 1 1601 0
	movl	4(%rdi), %ecx
	movl	%ecx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	je	.L930
.L924:
.LBE403:
.LBE402:
.LBB404:
	.loc 1 1599 0
	leaq	(%rdx,%rdx,2), %rax
	leaq	7416(%r8,%rax,8), %rcx
.LBB405:
	.loc 1 1601 0
	movl	4(%rcx), %edx
	movl	%edx, %eax
	andl	$4095, %eax
	cmpl	$64, %eax
	jne	.L909
	.loc 1 1602 0
	movq	%rdx, %rax
	andl	$4294963200, %eax
	addq	16(%rcx), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L909
	.loc 1 1604 0
	andl	$-4096, %edx
	movl	%edx, 4(%rcx)
	jmp	.L909
	.p2align 4,,7
.L917:
.LBE405:
.LBE404:
.LBE401:
.LBE399:
.LBB406:
.LBB407:
	.loc 1 805 0
	movl	%ebx, %edi
	incl	%esi
	movl	$1, %edx
	call	tb_invalidate_phys_page_range
	movq	phys_ram_dirty(%rip), %rdi
.LBE407:
.LBE406:
	.loc 1 2152 0
	movq	%rbx, %rax
	shrq	$12, %rax
	movzbl	(%rax,%rdi), %ecx
	jmp	.L910
.L930:
.LBB408:
.LBB409:
.LBB410:
.LBB411:
	.loc 1 1602 0
	movq	%rcx, %rax
	andl	$4294963200, %eax
	addq	16(%rdi), %rax
	.loc 1 1603 0
	cmpq	%rsi, %rax
	jne	.L924
	.loc 1 1604 0
	andl	$-4096, %ecx
	movl	%ecx, 4(%rdi)
	jmp	.L924
.LBE411:
.LBE410:
.LBE409:
.LBE408:
.LFE275:
	.size	notdirty_mem_writeb, .-notdirty_mem_writeb
	.p2align 4,,15
	.type	argos_slow_ldb_cmmu, @function
argos_slow_ldb_cmmu:
.LFB322:
	.loc 5 196 0
	pushq	%r15
.LCFI192:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	movl	%ecx, %r10d
	pushq	%r14
.LCFI193:
	movl	%esi, %r14d
	pushq	%r13
.LCFI194:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI195:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI196:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI197:
	subq	$40, %rsp
.LCFI198:
	.loc 5 196 0
	movl	%r8d, 20(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.L932
	.p2align 4,,7
.L933:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	movl	%r10d, (%rsp)
	call	tlb_fill
	.loc 5 263 0
	movl	(%rsp), %r10d
.L932:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L933
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	jne	.L957
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	cmpl	$4095, %eax
	ja	.L958
.LBB412:
	.loc 5 251 0
	movq	%rsi, %rdx
	subq	phys_ram_base(%rip), %rdx
	.loc 5 252 0
	cmpl	20(%rsp), %r10d
	jae	.L946
	mov	%r10d, %eax
	leaq	(%rax,%rdx), %rdx
	jmp	.L953
	.p2align 4,,7
.L959:
.LBB413:
.LBB414:
	.loc 4 148 0
	movq	8(%rsp), %rcx
	movl	%edx, (%rcx)
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 4(%rcx)
.LBE414:
.LBE413:
	.loc 5 254 0
	movq	8(%rsp), %rcx
	testl	$1073741823, 4(%rcx)
	jne	.L946
.L960:
	.loc 5 252 0
	incl	%r10d
	incq	%rdx
	cmpl	20(%rsp), %r10d
	jae	.L946
.L953:
.LBB415:
	.loc 4 146 0
	movq	argos_memmap(%rip), %rax
.LBB416:
	.loc 4 147 0
	movl	(%rax,%rdx,4), %ecx
	testl	%ecx, %ecx
	jne	.L959
	.loc 4 150 0
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
.LBE416:
.LBE415:
	.loc 5 254 0
	movq	8(%rsp), %rcx
	testl	$1073741823, 4(%rcx)
	je	.L960
.L946:
	.loc 2 204 0
	movzbl	(%rsi), %eax
.LBE412:
	.loc 5 266 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	ret
.L957:
.LBB417:
.LBB418:
	.loc 5 82 0
	movq	8(%rsp), %rax
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%rax)
	.loc 5 86 0
	movzbl	%bl, %eax 
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read(%rcx)
.LBE418:
.LBE417:
	.loc 5 266 0
	addq	$40, %rsp
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L939:
.L958:
.LBB419:
	.loc 5 225 0
	leaq	32(%rsp), %r9
	xorl	%ecx, %ecx
	movl	%ebp, %edi
	.loc 5 223 0
	leal	1(%rbp), %ebx
	.loc 5 225 0
	movl	$1, %r8d
	movq	%r15, %rdx
	movl	%r14d, %esi
	call	argos_slow_ldb_cmmu
	.loc 5 230 0
	leaq	24(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %edi
	.loc 5 225 0
	movl	%eax, %ebp
	.loc 5 230 0
	call	argos_slow_ldb_cmmu
	.loc 5 234 0
	testl	$1073741823, 36(%rsp)
	je	.L942
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
	.loc 5 245 0
	movl	%ebp, %eax
.L961:
.LBE419:
	.loc 5 266 0
	addq	$40, %rsp
	.loc 5 265 0
	movzbl	%al, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L942:
.LBB420:
	.loc 5 234 0
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	.loc 5 245 0
	movl	%ebp, %eax
	jmp	.L961
.LBE420:
.LFE322:
	.size	argos_slow_ldb_cmmu, .-argos_slow_ldb_cmmu
	.p2align 4,,15
.globl __argos_ldb_cmmu
	.type	__argos_ldb_cmmu, @function
__argos_ldb_cmmu:
.LFB321:
	.loc 5 112 0
	pushq	%r14
.LCFI199:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movq	%rdx, %r14
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r13
.LCFI200:
	movl	%esi, %r13d
	pushq	%r12
.LCFI201:
	movzbl	%al, %r12d 
	pushq	%rbp
.LCFI202:
	movslq	%esi,%rbp
	pushq	%rbx
.LCFI203:
	.loc 5 112 0
	movl	%edi, %ebx
	jmp	.L963
	.p2align 4,,7
.L964:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r13d, %edx
	movl	$2, %esi
	movl	%ebx, %edi
	call	tlb_fill
.L963:
	.loc 5 123 0
	leaq	(%rbp,%rbp,2), %rax
	leaq	(%r12,%r12,2), %rdx
	movq	cpu_single_env(%rip), %r8
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	leaq	(%rdx,%r8), %rdi
	.loc 5 124 0
	movl	%ebx, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rdi), %ecx
	.loc 5 124 0
	movl	%ecx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L964
	.loc 5 125 0
	mov	%ebx, %esi
	addq	1288(%rdi), %rsi
	.loc 5 130 0
	testl	$4095, %ecx
	.loc 5 127 0
	movq	%rsi, 288(%r8)
	.loc 5 128 0
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 130 0
	jne	.L982
	.loc 5 139 0
	movl	%ebx, %eax
	andl	$4095, %eax
	cmpl	$4095, %eax
	ja	.L983
.LBB421:
	.loc 4 146 0
	movq	%rsi, %rax
	subq	phys_ram_base(%rip), %rax
	movq	argos_memmap(%rip), %rdx
.LBE421:
	.loc 2 204 0
	movzbl	(%rsi), %ecx
.LBB422:
.LBB423:
	.loc 4 147 0
	movl	(%rdx,%rax,4), %r8d
	testl	%r8d, %r8d
	je	.L974
	.loc 4 148 0
	movl	%eax, (%r14)
	movl	(%rdx,%rax,4), %eax
	movl	%eax, 4(%r14)
.L977:
.LBE423:
.LBE422:
	.loc 5 165 0
	movq	cpu_single_env(%rip), %rdx
	movl	128(%rdx), %edi
	testl	%edi, %edi
	je	.L980
	movl	32(%rdx), %eax
	movl	%eax, 168(%rdx)
	movq	cpu_single_env(%rip), %rax
	movzbl	%cl, %edx
	movl	%edx, 272(%rax)
	movq	cpu_single_env(%rip), %rax
	movl	$1, 300(%rax)
	movq	cpu_single_env(%rip), %rax
	movq	%rsi, 288(%rax)
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
.L980:
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 5 180 0
	movzbl	%cl, %eax
	.loc 5 181 0
	ret
.L982:
.LBB424:
.LBB425:
	.loc 5 77 0
	shrl	$4, %ecx
	.loc 5 82 0
	movl	$0, 4(%r14)
	.loc 5 86 0
	movq	%r14, %rdx
	movzbl	%cl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read(%rcx)
.LBE425:
.LBE424:
	.loc 5 147 0
	movl	%eax, %ecx
.L984:
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 5 180 0
	movzbl	%cl, %eax
	.loc 5 181 0
	ret
.L974:
.LBB426:
.LBB427:
	.loc 4 150 0
	movl	$0, 4(%r14)
	jmp	.L977
.L970:
.L983:
.LBE427:
.LBE426:
	.loc 5 147 0
	xorl	%ecx, %ecx
	movq	%r14, %r9
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	argos_slow_ldb_cmmu
	movl	%eax, %ecx
	jmp	.L984
.LFE321:
	.size	__argos_ldb_cmmu, .-__argos_ldb_cmmu
	.p2align 4,,15
	.type	slow_ldw_cmmu, @function
slow_ldw_cmmu:
.LFB325:
	.loc 5 196 0
	pushq	%r15
.LCFI204:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	pushq	%r14
.LCFI205:
	movl	%esi, %r14d
	pushq	%r13
.LCFI206:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI207:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI208:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI209:
	subq	$8, %rsp
.LCFI210:
	jmp	.L986
	.p2align 4,,7
.L987:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L986:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L987
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L988
	.loc 5 209 0
	testb	$1, %bpl
	jne	.L990
.LBB428:
.LBB429:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	movq	%rsp, %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+8(%rcx)
.LBE429:
.LBE428:
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L988:
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	incl	%eax
	cmpl	$4095, %eax
	jbe	.L993
.L990:
	.loc 5 222 0
	movl	%ebp, %edi
	.loc 5 236 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	.loc 5 222 0
	andl	$-2, %edi
	.loc 5 241 0
	andl	$1, %ebp
	.loc 5 223 0
	leal	2(%rdi), %ebx
	.loc 5 236 0
	call	slow_ldw_cmmu
	.loc 5 238 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %edi
	.loc 5 236 0
	movl	%eax, %r12d
	.loc 5 238 0
	call	slow_ldw_cmmu
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 241 0
	leal	0(,%rbp,8), %edx
	.loc 5 245 0
	movzwl	%r12w, %esi
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 5 245 0
	movl	%edx, %ecx
	movzwl	%ax, %eax
	.loc 5 266 0
	popq	%r13
	.loc 5 245 0
	sarl	%cl, %esi
	movl	$16, %ecx
	.loc 5 266 0
	popq	%r14
	.loc 5 245 0
	subl	%edx, %ecx
	.loc 5 266 0
	popq	%r15
	.loc 5 245 0
	sall	%cl, %eax
	orl	%esi, %eax
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	ret
.L993:
	.loc 2 341 0
	movzwl	(%rsi), %eax
	.loc 5 266 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	ret
.LFE325:
	.size	slow_ldw_cmmu, .-slow_ldw_cmmu
	.p2align 4,,15
.globl __ldw_cmmu
	.type	__ldw_cmmu, @function
__ldw_cmmu:
.LFB324:
	.loc 5 112 0
	pushq	%r14
.LCFI211:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movl	%esi, %r14d
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r13
.LCFI212:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI213:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI214:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI215:
	subq	$16, %rsp
.LCFI216:
	jmp	.L999
	.p2align 4,,7
.L1000:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L999:
	.loc 5 123 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 124 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1000
	.loc 5 125 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 130 0
	testl	$4095, %ebx
	je	.L1001
	.loc 5 132 0
	testb	$1, %bpl
	jne	.L1003
.LBB430:
.LBB431:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	leaq	8(%rsp), %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+8(%rcx)
.LBE431:
.LBE430:
	.loc 5 181 0
	addq	$16, %rsp
	.loc 5 180 0
	movzwl	%ax, %eax
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1001:
	.loc 5 139 0
	movl	%ebp, %eax
	andl	$4095, %eax
	incl	%eax
	cmpl	$4095, %eax
	jbe	.L1006
.L1003:
	.loc 5 152 0
	movl	%r14d, %esi
	movl	%ebp, %edi
	xorl	%edx, %edx
	call	slow_ldw_cmmu
	.loc 5 181 0
	addq	$16, %rsp
	.loc 5 180 0
	movzwl	%ax, %eax
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1006:
	.loc 2 341 0
	movzwl	(%rsi), %eax
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 5 180 0
	movzwl	%ax, %eax
	.loc 5 181 0
	ret
.LFE324:
	.size	__ldw_cmmu, .-__ldw_cmmu
	.p2align 4,,15
	.type	argos_slow_ldw_cmmu, @function
argos_slow_ldw_cmmu:
.LFB328:
	.loc 5 196 0
	pushq	%r15
.LCFI217:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	movl	%ecx, %r10d
	pushq	%r14
.LCFI218:
	movl	%esi, %r14d
	pushq	%r13
.LCFI219:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI220:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI221:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI222:
	subq	$40, %rsp
.LCFI223:
	.loc 5 196 0
	movl	%r8d, 20(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.L1011
	.p2align 4,,7
.L1012:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	movl	%r10d, (%rsp)
	call	tlb_fill
	.loc 5 263 0
	movl	(%rsp), %r10d
.L1011:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1012
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L1013
	.loc 5 209 0
	testb	$1, %bpl
	jne	.L1015
.LBB432:
.LBB433:
	.loc 5 82 0
	movq	8(%rsp), %rax
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%rax)
	.loc 5 86 0
	movzbl	%bl, %eax 
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+8(%rcx)
.LBE433:
.LBE432:
	.loc 5 266 0
	addq	$40, %rsp
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1013:
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	incl	%eax
	cmpl	$4095, %eax
	jbe	.L1018
.L1015:
.LBB434:
	.loc 5 222 0
	movl	%ebp, %edi
	.loc 5 225 0
	movl	%ebp, %ebx
	leaq	32(%rsp), %r9
	.loc 5 222 0
	andl	$-2, %edi
	.loc 5 225 0
	movl	$2, %r8d
	movq	%r15, %rdx
	subl	%edi, %ebx
	.loc 5 223 0
	leal	2(%rdi), %r12d
	.loc 5 225 0
	movl	%r14d, %esi
	movl	%ebx, %ecx
	call	argos_slow_ldw_cmmu
	.loc 5 230 0
	leaq	24(%rsp), %r9
	xorl	%ecx, %ecx
	movl	%r12d, %edi
	movl	%ebx, %r8d
	movq	%r15, %rdx
	movl	%r14d, %esi
	.loc 5 225 0
	movl	%eax, %r13d
	.loc 5 230 0
	call	argos_slow_ldw_cmmu
	.loc 5 234 0
	testl	$1073741823, 36(%rsp)
	.loc 5 230 0
	movl	%eax, %edi
	.loc 5 234 0
	je	.L1021
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
.L1020:
.LBE434:
	.loc 5 266 0
	addq	$40, %rsp
.LBB435:
	.loc 5 241 0
	andl	$1, %ebp
	.loc 5 245 0
	movzwl	%r13w, %edx
.LBE435:
	.loc 5 266 0
	popq	%rbx
.LBB436:
	.loc 5 241 0
	leal	0(,%rbp,8), %esi
	.loc 5 245 0
	movzwl	%di, %eax
.LBE436:
	.loc 5 266 0
	popq	%rbp
	popq	%r12
.LBB437:
	.loc 5 245 0
	movl	%esi, %ecx
.LBE437:
	.loc 5 266 0
	popq	%r13
.LBB438:
	.loc 5 245 0
	sarl	%cl, %edx
	movl	$16, %ecx
.LBE438:
	.loc 5 266 0
	popq	%r14
.LBB439:
	.loc 5 245 0
	subl	%esi, %ecx
.LBE439:
	.loc 5 266 0
	popq	%r15
.LBB440:
	.loc 5 245 0
	sall	%cl, %eax
	orl	%edx, %eax
.LBE440:
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	ret
.L1018:
.LBB441:
	.loc 5 251 0
	movq	%rsi, %rdx
	subq	phys_ram_base(%rip), %rdx
	.loc 5 252 0
	cmpl	20(%rsp), %r10d
	jae	.L1025
	mov	%r10d, %eax
	leaq	(%rax,%rdx), %rdx
	jmp	.L1032
.L1036:
.LBB442:
.LBB443:
	.loc 4 148 0
	movq	8(%rsp), %rcx
	movl	%edx, (%rcx)
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 4(%rcx)
.L1030:
.LBE443:
.LBE442:
	.loc 5 254 0
	movq	8(%rsp), %rcx
	testl	$1073741823, 4(%rcx)
	jne	.L1025
	.loc 5 252 0
	incl	%r10d
	incq	%rdx
	cmpl	20(%rsp), %r10d
	jae	.L1025
.L1032:
.LBB444:
	.loc 4 146 0
	movq	argos_memmap(%rip), %rax
.LBB445:
	.loc 4 147 0
	movl	(%rax,%rdx,4), %r9d
	testl	%r9d, %r9d
	jne	.L1036
	.loc 4 150 0
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
	jmp	.L1030
.L1021:
.LBE445:
.LBE444:
.LBE441:
.LBB446:
	.loc 5 234 0
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	jmp	.L1020
.L1025:
.LBE446:
.LBB447:
	.loc 2 341 0
	movzwl	(%rsi), %eax
.LBE447:
	.loc 5 266 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 5 265 0
	movzwl	%ax, %eax
	.loc 5 266 0
	ret
.LFE328:
	.size	argos_slow_ldw_cmmu, .-argos_slow_ldw_cmmu
	.p2align 4,,15
.globl __argos_ldw_cmmu
	.type	__argos_ldw_cmmu, @function
__argos_ldw_cmmu:
.LFB327:
	.loc 5 112 0
	pushq	%r15
.LCFI224:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movq	%rdx, %r15
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r14
.LCFI225:
	movl	%esi, %r14d
	pushq	%r13
.LCFI226:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI227:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI228:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI229:
	subq	$8, %rsp
.LCFI230:
	jmp	.L1038
	.p2align 4,,7
.L1039:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L1038:
	.loc 5 123 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	movq	cpu_single_env(%rip), %rdi
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	leaq	(%rdx,%rdi), %rcx
	.loc 5 124 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1039
	.loc 5 125 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 130 0
	testl	$4095, %ebx
	.loc 5 127 0
	movq	%rsi, 288(%rdi)
	.loc 5 128 0
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 130 0
	je	.L1040
	.loc 5 132 0
	testb	$1, %bpl
	jne	.L1042
.LBB448:
.LBB449:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%r15)
	.loc 5 86 0
	movq	%r15, %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+8(%rcx)
	movzwl	%ax, %edx
.L1057:
.LBE449:
.LBE448:
	.loc 5 181 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1040:
	.loc 5 139 0
	movl	%ebp, %eax
	andl	$4095, %eax
	incl	%eax
	cmpl	$4095, %eax
	jbe	.L1045
.L1042:
	.loc 5 147 0
	movq	%r15, %r9
	xorl	%edx, %edx
	movl	%r14d, %esi
	movl	%ebp, %edi
	movl	$2, %r8d
	xorl	%ecx, %ecx
	call	argos_slow_ldw_cmmu
	.loc 5 181 0
	addq	$8, %rsp
	movzwl	%ax, %edx
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%edx, %eax
	ret
.L1045:
.LBB450:
	.loc 4 156 0
	movq	%rsi, %rdx
	subq	phys_ram_base(%rip), %rdx
	movq	argos_memmap(%rip), %rcx
.LBE450:
	.loc 2 341 0
	movzwl	(%rsi), %edi
.LBB451:
.LBB452:
	.loc 4 157 0
	movl	(%rcx,%rdx,4), %ebx
	testl	%ebx, %ebx
	jne	.L1050
	movl	4(%rcx,%rdx,4), %r11d
	testl	%r11d, %r11d
	jne	.L1050
	.loc 4 161 0
	movl	$0, 4(%r15)
.L1054:
.LBE452:
.LBE451:
	.loc 5 165 0
	movq	cpu_single_env(%rip), %rcx
	movzwl	%di, %edx
	movl	128(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L1057
	movl	32(%rcx), %eax
	movl	%eax, 168(%rcx)
	movq	cpu_single_env(%rip), %rax
	movl	%edx, 272(%rax)
	movq	cpu_single_env(%rip), %rax
	movl	$2, 300(%rax)
	movq	cpu_single_env(%rip), %rax
	movq	%rsi, 288(%rax)
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 181 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1050:
.LBB453:
.LBB454:
	.loc 4 158 0
	movl	%edx, (%r15)
	movl	(%rcx,%rdx,4), %eax
	testl	%eax, %eax
	jne	.L1052
	movl	4(%rcx,%rdx,4), %eax
.L1052:
	movl	%eax, 4(%r15)
	jmp	.L1054
.LBE454:
.LBE453:
.LFE327:
	.size	__argos_ldw_cmmu, .-__argos_ldw_cmmu
	.p2align 4,,15
	.type	slow_ldl_cmmu, @function
slow_ldl_cmmu:
.LFB331:
	.loc 5 196 0
	pushq	%r15
.LCFI231:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	pushq	%r14
.LCFI232:
	movl	%esi, %r14d
	pushq	%r13
.LCFI233:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI234:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI235:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI236:
	subq	$8, %rsp
.LCFI237:
	jmp	.L1060
	.p2align 4,,7
.L1061:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L1060:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1061
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L1062
	.loc 5 209 0
	testb	$3, %bpl
	jne	.L1064
.LBB455:
.LBB456:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	movq	%rsp, %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
.LBE456:
.LBE455:
	.loc 5 266 0
	addq	$8, %rsp
.LBB457:
.LBB458:
	.loc 5 86 0
	movl	%eax, %esi
.LBE458:
.LBE457:
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%esi, %eax
	ret
.L1062:
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	addl	$3, %eax
	cmpl	$4095, %eax
	jbe	.L1067
.L1064:
	.loc 5 222 0
	movl	%ebp, %edi
	.loc 5 236 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	.loc 5 222 0
	andl	$-4, %edi
	.loc 5 241 0
	andl	$3, %ebp
	.loc 5 223 0
	leal	4(%rdi), %ebx
	.loc 5 236 0
	call	slow_ldl_cmmu
	.loc 5 238 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %edi
	.loc 5 236 0
	movl	%eax, %r12d
	.loc 5 238 0
	call	slow_ldl_cmmu
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 241 0
	leal	0(,%rbp,8), %edx
	.loc 5 245 0
	movl	%r12d, %esi
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 5 245 0
	movl	%edx, %ecx
	.loc 5 266 0
	popq	%r13
	.loc 5 245 0
	shrl	%cl, %esi
	movl	$32, %ecx
	.loc 5 266 0
	popq	%r14
	.loc 5 245 0
	subl	%edx, %ecx
	.loc 5 266 0
	popq	%r15
	.loc 5 245 0
	sall	%cl, %eax
	orl	%eax, %esi
	.loc 5 266 0
	movl	%esi, %eax
	ret
.L1067:
.LBB459:
.LBB460:
	.loc 2 352 0
	movl	(%rsi), %esi
.LBE460:
.LBE459:
	.loc 5 266 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%esi, %eax
	ret
.LFE331:
	.size	slow_ldl_cmmu, .-slow_ldl_cmmu
	.p2align 4,,15
.globl __ldl_cmmu
	.type	__ldl_cmmu, @function
__ldl_cmmu:
.LFB330:
	.loc 5 112 0
	pushq	%r14
.LCFI238:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movl	%esi, %r14d
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r13
.LCFI239:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI240:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI241:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI242:
	subq	$16, %rsp
.LCFI243:
	jmp	.L1073
	.p2align 4,,7
.L1074:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L1073:
	.loc 5 123 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 124 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1074
	.loc 5 125 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 130 0
	testl	$4095, %ebx
	je	.L1075
	.loc 5 132 0
	testb	$3, %bpl
	jne	.L1077
.LBB461:
.LBB462:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 86 0
	leaq	8(%rsp), %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
.LBE462:
.LBE461:
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1075:
	.loc 5 139 0
	movl	%ebp, %eax
	andl	$4095, %eax
	addl	$3, %eax
	cmpl	$4095, %eax
	jbe	.L1080
.L1077:
	.loc 5 152 0
	movl	%r14d, %esi
	movl	%ebp, %edi
	xorl	%edx, %edx
	call	slow_ldl_cmmu
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1080:
.LBB463:
.LBB464:
	.loc 2 352 0
	movl	(%rsi), %eax
.LBE464:
.LBE463:
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE330:
	.size	__ldl_cmmu, .-__ldl_cmmu
	.p2align 4,,15
	.type	argos_slow_ldl_cmmu, @function
argos_slow_ldl_cmmu:
.LFB334:
	.loc 5 196 0
	pushq	%r15
.LCFI244:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	movl	%ecx, %r10d
	pushq	%r14
.LCFI245:
	movl	%esi, %r14d
	pushq	%r13
.LCFI246:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI247:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI248:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI249:
	subq	$40, %rsp
.LCFI250:
	.loc 5 196 0
	movl	%r8d, 20(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.L1085
	.p2align 4,,7
.L1086:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	movl	%r10d, (%rsp)
	call	tlb_fill
	.loc 5 263 0
	movl	(%rsp), %r10d
.L1085:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1086
	.loc 5 206 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L1087
	.loc 5 209 0
	testb	$3, %bpl
	jne	.L1089
.LBB465:
.LBB466:
	.loc 5 82 0
	movq	8(%rsp), %rax
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%rax)
	.loc 5 86 0
	movzbl	%bl, %eax 
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
.LBE466:
.LBE465:
	.loc 5 266 0
	addq	$40, %rsp
.LBB467:
.LBB468:
	.loc 5 86 0
	movl	%eax, %edx
.LBE468:
.LBE467:
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%edx, %eax
	ret
.L1087:
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	addl	$3, %eax
	cmpl	$4095, %eax
	jbe	.L1092
.L1089:
.LBB469:
	.loc 5 222 0
	movl	%ebp, %edi
	.loc 5 225 0
	movl	%ebp, %ebx
	leaq	32(%rsp), %r9
	.loc 5 222 0
	andl	$-4, %edi
	.loc 5 225 0
	movl	$4, %r8d
	movq	%r15, %rdx
	subl	%edi, %ebx
	.loc 5 223 0
	leal	4(%rdi), %r12d
	.loc 5 225 0
	movl	%r14d, %esi
	movl	%ebx, %ecx
	call	argos_slow_ldl_cmmu
	.loc 5 230 0
	leaq	24(%rsp), %r9
	xorl	%ecx, %ecx
	movl	%r14d, %esi
	movl	%ebx, %r8d
	movq	%r15, %rdx
	movl	%r12d, %edi
	.loc 5 225 0
	movl	%eax, %r13d
	.loc 5 230 0
	call	argos_slow_ldl_cmmu
	.loc 5 234 0
	testl	$1073741823, 36(%rsp)
	.loc 5 230 0
	movl	%eax, %esi
	.loc 5 234 0
	je	.L1095
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
.L1094:
.LBE469:
	.loc 5 266 0
	addq	$40, %rsp
.LBB470:
	.loc 5 241 0
	andl	$3, %ebp
	.loc 5 245 0
	movl	%r13d, %edx
.LBE470:
	.loc 5 266 0
	popq	%rbx
.LBB471:
	.loc 5 241 0
	leal	0(,%rbp,8), %eax
.LBE471:
	.loc 5 266 0
	popq	%rbp
	popq	%r12
.LBB472:
	.loc 5 245 0
	movl	%eax, %ecx
.LBE472:
	.loc 5 266 0
	popq	%r13
.LBB473:
	.loc 5 245 0
	shrl	%cl, %edx
	movl	$32, %ecx
.LBE473:
	.loc 5 266 0
	popq	%r14
.LBB474:
	.loc 5 245 0
	subl	%eax, %ecx
.LBE474:
	.loc 5 266 0
	popq	%r15
.LBB475:
	.loc 5 245 0
	sall	%cl, %esi
	orl	%esi, %edx
.LBE475:
	.loc 5 266 0
	movl	%edx, %eax
	ret
.L1092:
.LBB476:
	.loc 5 251 0
	movq	%rsi, %rdx
	subq	phys_ram_base(%rip), %rdx
	.loc 5 252 0
	cmpl	20(%rsp), %r10d
	jae	.L1099
	mov	%r10d, %eax
	leaq	(%rax,%rdx), %rdx
	jmp	.L1106
.L1110:
.LBB477:
.LBB478:
	.loc 4 148 0
	movq	8(%rsp), %rcx
	movl	%edx, (%rcx)
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 4(%rcx)
.L1104:
.LBE478:
.LBE477:
	.loc 5 254 0
	movq	8(%rsp), %rcx
	testl	$1073741823, 4(%rcx)
	jne	.L1099
	.loc 5 252 0
	incl	%r10d
	incq	%rdx
	cmpl	20(%rsp), %r10d
	jae	.L1099
.L1106:
.LBB479:
	.loc 4 146 0
	movq	argos_memmap(%rip), %rax
.LBB480:
	.loc 4 147 0
	movl	(%rax,%rdx,4), %ebp
	testl	%ebp, %ebp
	jne	.L1110
	.loc 4 150 0
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
	jmp	.L1104
.L1095:
.LBE480:
.LBE479:
.LBE476:
.LBB481:
	.loc 5 234 0
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	jmp	.L1094
.L1099:
.LBE481:
.LBB482:
.LBB483:
.LBB484:
	.loc 2 352 0
	movl	(%rsi), %edx
.LBE484:
.LBE483:
.LBE482:
	.loc 5 266 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	%edx, %eax
	ret
.LFE334:
	.size	argos_slow_ldl_cmmu, .-argos_slow_ldl_cmmu
	.p2align 4,,15
.globl __argos_ldl_cmmu
	.type	__argos_ldl_cmmu, @function
__argos_ldl_cmmu:
.LFB333:
	.loc 5 112 0
	pushq	%r15
.LCFI251:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movq	%rdx, %r15
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r14
.LCFI252:
	movl	%esi, %r14d
	pushq	%r13
.LCFI253:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI254:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI255:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI256:
	subq	$8, %rsp
.LCFI257:
	jmp	.L1112
	.p2align 4,,7
.L1113:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	call	tlb_fill
.L1112:
	.loc 5 123 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	movq	cpu_single_env(%rip), %rdi
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	leaq	(%rdx,%rdi), %rcx
	.loc 5 124 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1113
	.loc 5 125 0
	mov	%ebp, %esi
	addq	1288(%rcx), %rsi
	.loc 5 130 0
	testl	$4095, %ebx
	.loc 5 127 0
	movq	%rsi, 288(%rdi)
	.loc 5 128 0
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 130 0
	je	.L1114
	.loc 5 132 0
	testb	$3, %bpl
	jne	.L1116
.LBB485:
.LBB486:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%r15)
	.loc 5 86 0
	movq	%r15, %rdx
	movzbl	%bl, %eax 
	movq	%rax, %rcx
	movq	io_mem_opaque(,%rax,8), %rdi
	salq	$5, %rcx
	call	*io_mem_read+16(%rcx)
.L1136:
.LBE486:
.LBE485:
	.loc 5 147 0
	movl	%eax, %r8d
.L1132:
	.loc 5 181 0
	addq	$8, %rsp
	movl	%r8d, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1116:
	.loc 5 147 0
	movq	%r15, %r9
	movl	$4, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%r14d, %esi
	movl	%ebp, %edi
	call	argos_slow_ldl_cmmu
	jmp	.L1136
.L1114:
	.loc 5 139 0
	movl	%ebp, %eax
	andl	$4095, %eax
	addl	$3, %eax
	cmpl	$4095, %eax
	ja	.L1116
.LBB487:
	.loc 4 167 0
	movq	%rsi, %rdi
	subq	phys_ram_base(%rip), %rdi
	movq	argos_memmap(%rip), %r9
.LBE487:
.LBB488:
.LBB489:
	.loc 2 352 0
	movl	(%rsi), %r8d
.LBE489:
.LBE488:
.LBB490:
.LBB491:
	.loc 4 173 0
	xorl	%ecx, %ecx
	leaq	(%r9,%rdi,4), %rax
	movq	%rdi, %rdx
.L1129:
	.loc 4 174 0
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jne	.L1135
	.loc 4 173 0
	incl	%ecx
	incq	%rdx
	addq	$4, %rax
	cmpl	$3, %ecx
	jle	.L1129
	.loc 4 182 0
	movl	$0, 4(%r15)
.L1128:
.LBE491:
.LBE490:
	.loc 5 165 0
	movq	cpu_single_env(%rip), %rdx
	movl	128(%rdx), %r12d
	testl	%r12d, %r12d
	je	.L1132
	movl	32(%rdx), %eax
	movl	%eax, 168(%rdx)
	movq	cpu_single_env(%rip), %rax
	movl	%r8d, 272(%rax)
	movq	cpu_single_env(%rip), %rax
	movl	$4, 300(%rax)
	movq	cpu_single_env(%rip), %rax
	movq	%rsi, 288(%rax)
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 181 0
	addq	$8, %rsp
	movl	%r8d, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1135:
.LBB492:
.LBB493:
	.loc 4 175 0
	movl	%edi, (%r15)
	movl	(%r9,%rdx,4), %eax
	movl	%eax, 4(%r15)
	jmp	.L1128
.LBE493:
.LBE492:
.LFE333:
	.size	__argos_ldl_cmmu, .-__argos_ldl_cmmu
	.p2align 4,,15
	.type	slow_ldq_cmmu, @function
slow_ldq_cmmu:
.LFB337:
	.loc 5 196 0
	pushq	%r15
.LCFI258:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	pushq	%r14
.LCFI259:
	movl	%esi, %r14d
	pushq	%r13
.LCFI260:
	movl	%edi, %r13d
	pushq	%r12
.LCFI261:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI262:
	movzbl	%al, %ebp 
	pushq	%rbx
.LCFI263:
	subq	$8, %rsp
.LCFI264:
	jmp	.L1138
	.p2align 4,,7
.L1139:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%r13d, %edi
	call	tlb_fill
.L1138:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%rbp,%rbp,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%r13d, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1139
	.loc 5 206 0
	mov	%r13d, %ebp
	addq	1288(%rcx), %rbp
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L1140
	.loc 5 209 0
	testb	$7, %r13b
	jne	.L1142
.LBB494:
.LBB495:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 92 0
	movq	%rsp, %rdx
	movq	%rbp, %rsi
	movzbl	%bl, %ebx 
	movq	%rbx, %r13
	movq	io_mem_opaque(,%rbx,8), %rdi
	salq	$5, %r13
	call	*io_mem_read+16(%r13)
	.loc 5 93 0
	leaq	4(%rbp), %rsi
	.loc 5 92 0
	mov	%eax, %r14d
	.loc 5 93 0
	movq	io_mem_opaque(,%rbx,8), %rdi
	movq	%rsp, %rdx
	call	*io_mem_read+16(%r13)
.LBE495:
.LBE494:
	.loc 5 266 0
	addq	$8, %rsp
.LBB496:
.LBB497:
	.loc 5 93 0
	movq	%rax, %rsi
.LBE497:
.LBE496:
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
.LBB498:
.LBB499:
	.loc 5 93 0
	salq	$32, %rsi
.LBE499:
.LBE498:
	.loc 5 266 0
	popq	%r13
	.loc 5 69 0
	orq	%r14, %rsi
	.loc 5 266 0
	popq	%r14
	popq	%r15
	movq	%rsi, %rax
	ret
.L1140:
	.loc 5 216 0
	movl	%r13d, %eax
	andl	$4095, %eax
	addl	$7, %eax
	cmpl	$4095, %eax
	jbe	.L1145
.L1142:
	.loc 5 222 0
	movl	%r13d, %edi
	.loc 5 236 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	.loc 5 222 0
	andl	$-8, %edi
	.loc 5 241 0
	andl	$7, %r13d
	.loc 5 223 0
	leal	8(%rdi), %ebx
	.loc 5 236 0
	call	slow_ldq_cmmu
	.loc 5 238 0
	movq	%r15, %rdx
	movl	%r14d, %esi
	movl	%ebx, %edi
	.loc 5 236 0
	movq	%rax, %r12
	.loc 5 238 0
	call	slow_ldq_cmmu
	.loc 5 266 0
	addq	$8, %rsp
	.loc 5 241 0
	leal	0(,%r13,8), %edx
	.loc 5 245 0
	movq	%r12, %rsi
	.loc 5 266 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 5 245 0
	movl	%edx, %ecx
	.loc 5 266 0
	popq	%r13
	.loc 5 245 0
	shrq	%cl, %rsi
	movl	$64, %ecx
	.loc 5 266 0
	popq	%r14
	.loc 5 245 0
	subl	%edx, %ecx
	.loc 5 266 0
	popq	%r15
	.loc 5 245 0
	salq	%cl, %rax
	orq	%rax, %rsi
	.loc 5 266 0
	movq	%rsi, %rax
	ret
.L1145:
.LBB500:
.LBB501:
	.loc 2 357 0
	movq	(%rbp), %rsi
.LBE501:
.LBE500:
	.loc 5 266 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rsi, %rax
	ret
.LFE337:
	.size	slow_ldq_cmmu, .-slow_ldq_cmmu
	.p2align 4,,15
.globl __ldq_cmmu
	.type	__ldq_cmmu, @function
__ldq_cmmu:
.LFB336:
	.loc 5 112 0
	pushq	%r14
.LCFI265:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movl	%esi, %r14d
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r13
.LCFI266:
	movslq	%esi,%r13
	pushq	%r12
.LCFI267:
	movl	%edi, %r12d
	pushq	%rbp
.LCFI268:
	movzbl	%al, %ebp 
	pushq	%rbx
.LCFI269:
	subq	$16, %rsp
.LCFI270:
	jmp	.L1151
	.p2align 4,,7
.L1152:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	tlb_fill
.L1151:
	.loc 5 123 0
	leaq	(%r13,%r13,2), %rax
	leaq	(%rbp,%rbp,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 124 0
	movl	%r12d, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1152
	.loc 5 125 0
	mov	%r12d, %ebp
	addq	1288(%rcx), %rbp
	.loc 5 130 0
	testl	$4095, %ebx
	je	.L1153
	.loc 5 132 0
	testb	$7, %r12b
	jne	.L1155
.LBB502:
.LBB503:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 74 0
	leaq	8(%rsp), %r12
	.loc 5 92 0
	movq	%rbp, %rsi
	movzbl	%bl, %ebx 
	movq	%rbx, %r13
	movq	io_mem_opaque(,%rbx,8), %rdi
	movq	%r12, %rdx
	salq	$5, %r13
	call	*io_mem_read+16(%r13)
	.loc 5 93 0
	leaq	4(%rbp), %rsi
	.loc 5 92 0
	mov	%eax, %r14d
	.loc 5 93 0
	movq	io_mem_opaque(,%rbx,8), %rdi
	movq	%r12, %rdx
	call	*io_mem_read+16(%r13)
.LBE503:
.LBE502:
	.loc 5 181 0
	addq	$16, %rsp
.LBB504:
.LBB505:
	.loc 5 93 0
	salq	$32, %rax
.LBE505:
.LBE504:
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	.loc 5 69 0
	orq	%r14, %rax
	.loc 5 181 0
	popq	%r14
	ret
.L1153:
	.loc 5 139 0
	movl	%r12d, %eax
	andl	$4095, %eax
	addl	$7, %eax
	cmpl	$4095, %eax
	jbe	.L1158
.L1155:
	.loc 5 152 0
	movl	%r14d, %esi
	movl	%r12d, %edi
	xorl	%edx, %edx
	call	slow_ldq_cmmu
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L1158:
.LBB506:
.LBB507:
	.loc 2 357 0
	movq	(%rbp), %rax
.LBE507:
.LBE506:
	.loc 5 181 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE336:
	.size	__ldq_cmmu, .-__ldq_cmmu
	.p2align 4,,15
	.type	argos_slow_ldq_cmmu, @function
argos_slow_ldq_cmmu:
.LFB340:
	.loc 5 196 0
	pushq	%r15
.LCFI271:
	.loc 5 202 0
	movl	%edi, %eax
	.loc 5 196 0
	movq	%rdx, %r15
	.loc 5 202 0
	shrl	$12, %eax
	.loc 5 196 0
	movl	%ecx, %r10d
	pushq	%r14
.LCFI272:
	movl	%esi, %r14d
	pushq	%r13
.LCFI273:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI274:
	movslq	%esi,%r12
	pushq	%rbp
.LCFI275:
	movl	%edi, %ebp
	pushq	%rbx
.LCFI276:
	subq	$40, %rsp
.LCFI277:
	.loc 5 196 0
	movl	%r8d, 20(%rsp)
	movq	%r9, 8(%rsp)
	jmp	.L1163
	.p2align 4,,7
.L1164:
	.loc 5 262 0
	movq	%r15, %rcx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%ebp, %edi
	movl	%r10d, (%rsp)
	call	tlb_fill
	.loc 5 263 0
	movl	(%rsp), %r10d
.L1163:
	.loc 5 204 0
	leaq	(%r12,%r12,2), %rax
	leaq	(%r13,%r13,2), %rdx
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rcx
	addq	cpu_single_env(%rip), %rcx
	.loc 5 205 0
	movl	%ebp, %edx
	andl	$-4096, %edx
	.loc 5 204 0
	movl	1280(%rcx), %ebx
	.loc 5 205 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1164
	.loc 5 206 0
	mov	%ebp, %r13d
	addq	1288(%rcx), %r13
	.loc 5 207 0
	testl	$4095, %ebx
	je	.L1165
	.loc 5 209 0
	testb	$7, %bpl
	jne	.L1167
.LBB508:
.LBB509:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movq	8(%rsp), %rax
	.loc 5 92 0
	movq	%r13, %rsi
	movzbl	%bl, %ebx 
	movq	%rbx, %r12
	salq	$5, %r12
	.loc 5 82 0
	movl	$0, 4(%rax)
	.loc 5 92 0
	movq	%rax, %rdx
	movq	io_mem_opaque(,%rbx,8), %rdi
	call	*io_mem_read+16(%r12)
	.loc 5 93 0
	movq	8(%rsp), %rdx
	.loc 5 92 0
	mov	%eax, %ebp
	.loc 5 93 0
	leaq	4(%r13), %rsi
	movq	io_mem_opaque(,%rbx,8), %rdi
	call	*io_mem_read+16(%r12)
	movq	%rax, %rdx
.LBE509:
.LBE508:
	.loc 5 266 0
	addq	$40, %rsp
.LBB510:
.LBB511:
	.loc 5 93 0
	salq	$32, %rdx
.LBE511:
.LBE510:
	.loc 5 266 0
	popq	%rbx
	.loc 5 69 0
	orq	%rbp, %rdx
	.loc 5 266 0
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rdx, %rax
	ret
.L1165:
	.loc 5 216 0
	movl	%ebp, %eax
	andl	$4095, %eax
	addl	$7, %eax
	cmpl	$4095, %eax
	jbe	.L1170
.L1167:
.LBB512:
	.loc 5 222 0
	movl	%ebp, %edi
	.loc 5 225 0
	movl	%ebp, %ebx
	leaq	32(%rsp), %r9
	.loc 5 222 0
	andl	$-8, %edi
	.loc 5 225 0
	movl	$8, %r8d
	movq	%r15, %rdx
	subl	%edi, %ebx
	.loc 5 223 0
	leal	8(%rdi), %r12d
	.loc 5 225 0
	movl	%r14d, %esi
	movl	%ebx, %ecx
	call	argos_slow_ldq_cmmu
	.loc 5 230 0
	leaq	24(%rsp), %r9
	xorl	%ecx, %ecx
	movl	%r14d, %esi
	movl	%ebx, %r8d
	movq	%r15, %rdx
	movl	%r12d, %edi
	.loc 5 225 0
	movq	%rax, %r13
	.loc 5 230 0
	call	argos_slow_ldq_cmmu
	.loc 5 234 0
	testl	$1073741823, 36(%rsp)
	.loc 5 230 0
	movq	%rax, %rsi
	.loc 5 234 0
	je	.L1173
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rax, (%rdx)
.L1172:
.LBE512:
	.loc 5 266 0
	addq	$40, %rsp
.LBB513:
	.loc 5 241 0
	andl	$7, %ebp
	.loc 5 245 0
	movq	%r13, %rdx
.LBE513:
	.loc 5 266 0
	popq	%rbx
.LBB514:
	.loc 5 241 0
	leal	0(,%rbp,8), %eax
.LBE514:
	.loc 5 266 0
	popq	%rbp
	popq	%r12
.LBB515:
	.loc 5 245 0
	movl	%eax, %ecx
.LBE515:
	.loc 5 266 0
	popq	%r13
.LBB516:
	.loc 5 245 0
	shrq	%cl, %rdx
	movl	$64, %ecx
.LBE516:
	.loc 5 266 0
	popq	%r14
.LBB517:
	.loc 5 245 0
	subl	%eax, %ecx
.LBE517:
	.loc 5 266 0
	popq	%r15
.LBB518:
	.loc 5 245 0
	salq	%cl, %rsi
	orq	%rsi, %rdx
.LBE518:
	.loc 5 266 0
	movq	%rdx, %rax
	ret
.L1170:
.LBB519:
	.loc 5 251 0
	movq	%r13, %rdx
	subq	phys_ram_base(%rip), %rdx
	.loc 5 252 0
	cmpl	20(%rsp), %r10d
	jae	.L1177
	mov	%r10d, %eax
	leaq	(%rax,%rdx), %rdx
	jmp	.L1184
.L1188:
.LBB520:
.LBB521:
	.loc 4 148 0
	movq	8(%rsp), %rcx
	movl	%edx, (%rcx)
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 4(%rcx)
.L1182:
.LBE521:
.LBE520:
	.loc 5 254 0
	movq	8(%rsp), %rcx
	testl	$1073741823, 4(%rcx)
	jne	.L1177
	.loc 5 252 0
	incl	%r10d
	incq	%rdx
	cmpl	20(%rsp), %r10d
	jae	.L1177
.L1184:
.LBB522:
	.loc 4 146 0
	movq	argos_memmap(%rip), %rax
.LBB523:
	.loc 4 147 0
	movl	(%rax,%rdx,4), %r14d
	testl	%r14d, %r14d
	jne	.L1188
	.loc 4 150 0
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
	jmp	.L1182
.L1173:
.LBE523:
.LBE522:
.LBE519:
.LBB524:
	.loc 5 234 0
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	jmp	.L1172
.L1177:
.LBE524:
.LBB525:
.LBB526:
.LBB527:
	.loc 2 357 0
	movq	(%r13), %rdx
.LBE527:
.LBE526:
.LBE525:
	.loc 5 266 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rdx, %rax
	ret
.LFE340:
	.size	argos_slow_ldq_cmmu, .-argos_slow_ldq_cmmu
	.p2align 4,,15
.globl __argos_ldq_cmmu
	.type	__argos_ldq_cmmu, @function
__argos_ldq_cmmu:
.LFB339:
	.loc 5 112 0
	pushq	%r15
.LCFI278:
	.loc 5 121 0
	movl	%edi, %eax
	.loc 5 112 0
	movq	%rdx, %r15
	.loc 5 121 0
	shrl	$12, %eax
	.loc 5 112 0
	pushq	%r14
.LCFI279:
	movl	%esi, %r14d
	pushq	%r13
.LCFI280:
	movzbl	%al, %r13d 
	pushq	%r12
.LCFI281:
	movl	%edi, %r12d
	pushq	%rbp
.LCFI282:
	movslq	%esi,%rbp
	pushq	%rbx
.LCFI283:
	subq	$8, %rsp
.LCFI284:
	jmp	.L1190
	.p2align 4,,7
.L1191:
	.loc 5 177 0
	xorl	%ecx, %ecx
	movl	%r14d, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	tlb_fill
.L1190:
	.loc 5 123 0
	leaq	(%rbp,%rbp,2), %rax
	leaq	(%r13,%r13,2), %rdx
	movq	cpu_single_env(%rip), %rsi
	salq	$11, %rax
	leaq	(%rax,%rdx,8), %rdx
	leaq	(%rdx,%rsi), %rcx
	.loc 5 124 0
	movl	%r12d, %edx
	andl	$-4096, %edx
	.loc 5 123 0
	movl	1280(%rcx), %ebx
	.loc 5 124 0
	movl	%ebx, %eax
	andl	$-4088, %eax
	cmpl	%eax, %edx
	jne	.L1191
	.loc 5 125 0
	mov	%r12d, %ebp
	addq	1288(%rcx), %rbp
	.loc 5 130 0
	testl	$4095, %ebx
	.loc 5 127 0
	movq	%rbp, 288(%rsi)
	.loc 5 128 0
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 130 0
	je	.L1192
	.loc 5 132 0
	testb	$7, %r12b
	jne	.L1194
.LBB528:
.LBB529:
	.loc 5 77 0
	shrl	$4, %ebx
	.loc 5 82 0
	movl	$0, 4(%r15)
	.loc 5 92 0
	movq	%r15, %rdx
	movzbl	%bl, %ebx 
	movq	%rbp, %rsi
	movq	%rbx, %r12
	movq	io_mem_opaque(,%rbx,8), %rdi
	salq	$5, %r12
	call	*io_mem_read+16(%r12)
	.loc 5 93 0
	movq	io_mem_opaque(,%rbx,8), %rdi
	.loc 5 92 0
	mov	%eax, %r13d
	.loc 5 93 0
	leaq	4(%rbp), %rsi
	movq	%r15, %rdx
	call	*io_mem_read+16(%r12)
	movq	%rax, %rdi
	salq	$32, %rdi
.LBE529:
.LBE528:
	.loc 5 69 0
	orq	%r13, %rdi
.L1210:
	.loc 5 181 0
	addq	$8, %rsp
	movq	%rdi, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1192:
	.loc 5 139 0
	movl	%r12d, %eax
	andl	$4095, %eax
	addl	$7, %eax
	cmpl	$4095, %eax
	jbe	.L1197
.L1194:
	.loc 5 147 0
	movl	%r12d, %edi
	movq	%r15, %r9
	movl	%r14d, %esi
	movl	$8, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	argos_slow_ldq_cmmu
	.loc 5 181 0
	addq	$8, %rsp
	.loc 5 147 0
	movq	%rax, %rdi
	.loc 5 181 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rdi, %rax
	ret
.L1197:
.LBB530:
	.loc 4 188 0
	movq	%rbp, %rsi
	subq	phys_ram_base(%rip), %rsi
	movq	argos_memmap(%rip), %r8
.LBE530:
.LBB531:
.LBB532:
	.loc 2 357 0
	movq	(%rbp), %rdi
.LBE532:
.LBE531:
.LBB533:
.LBB534:
	.loc 4 196 0
	xorl	%ecx, %ecx
	leaq	(%r8,%rsi,4), %rax
	movq	%rsi, %rdx
	.p2align 4,,7
.L1207:
	.loc 4 197 0
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L1213
	.loc 4 196 0
	incl	%ecx
	incq	%rdx
	addq	$4, %rax
	cmpl	$7, %ecx
	jle	.L1207
	.loc 4 205 0
	movl	$0, 4(%r15)
.L1206:
.LBE534:
.LBE533:
	.loc 5 165 0
	movq	cpu_single_env(%rip), %rdx
	movl	128(%rdx), %r15d
	testl	%r15d, %r15d
	je	.L1210
	movl	32(%rdx), %eax
	movl	%eax, 168(%rdx)
	movq	cpu_single_env(%rip), %rax
	movl	%edi, 272(%rax)
	movq	cpu_single_env(%rip), %rax
	movl	$8, 300(%rax)
	movq	cpu_single_env(%rip), %rax
	movq	%rbp, 288(%rax)
	movq	cpu_single_env(%rip), %rax
	movb	$2, 296(%rax)
	.loc 5 181 0
	addq	$8, %rsp
	movq	%rdi, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1213:
.LBB535:
.LBB536:
	.loc 4 198 0
	movl	%esi, (%r15)
	movl	(%r8,%rdx,4), %eax
	movl	%eax, 4(%r15)
	jmp	.L1206
.LBE536:
.LBE535:
.LFE339:
	.size	__argos_ldq_cmmu, .-__argos_ldq_cmmu
	.comm	argos_memmap,8,8
	.comm	argos_trash_tag,8,4
	.comm	qemu_real_host_page_size,8,8
	.comm	qemu_host_page_bits,8,8
	.comm	qemu_host_page_size,8,8
	.comm	qemu_host_page_mask,8,8
	.comm	first_cpu,8,8
	.comm	cpu_single_env,8,8
	.comm	phys_ram_size,4,4
	.comm	phys_ram_fd,4,4
	.comm	phys_ram_base,8,8
	.comm	phys_ram_dirty,8,8
	.comm	logfile,8,8
	.comm	loglevel,4,4
	.comm	tb_phys_hash,262144,32
	.comm	code_gen_buffer,16777216,32
	.comm	code_gen_ptr,8,8
	.comm	io_mem_write,8192,32
	.comm	io_mem_read,8192,32
	.comm	io_mem_opaque,2048,32
	.comm	tbs,13631488,32
	.comm	nb_tbs,4,4
	.local	l1_map
	.comm	l1_map,8192,32
	.comm	l1_phys_map,8,8
	.local	io_mem_nb
	.comm	io_mem_nb,4,4
	.local	io_mem_watch
	.comm	io_mem_watch,4,4
	.local	tlb_flush_count
	.comm	tlb_flush_count,4,4
	.local	tb_flush_count
	.comm	tb_flush_count,4,4
	.local	tb_phys_invalidate_count
	.comm	tb_phys_invalidate_count,4,4
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
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI0-.LFB220
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI3-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI8-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.byte	0x4
	.long	.LCFI13-.LFB237
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB241
	.quad	.LFE241-.LFB241
	.byte	0x4
	.long	.LCFI14-.LFB241
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.byte	0x4
	.long	.LCFI15-.LFB248
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.byte	0x4
	.long	.LCFI16-.LFB249
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI18-.LFB252
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB253
	.quad	.LFE253-.LFB253
	.byte	0x4
	.long	.LCFI21-.LFB253
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.byte	0x4
	.long	.LCFI29-.LFB254
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0xe
	.uleb128 0x120
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI34-.LFB255
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI34
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.byte	0x4
	.long	.LCFI38-.LFB256
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.byte	0x4
	.long	.LCFI39-.LFB258
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI42-.LFB244
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI43-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.byte	0x4
	.long	.LCFI52-.LFB238
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.byte	0x4
	.long	.LCFI53-.LFB293
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.byte	0x4
	.long	.LCFI57-.LFB270
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI58-.LFB271
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI59-.LFB301
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI61-.LFB281
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI62-.LFB287
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.byte	0x4
	.long	.LCFI63-.LFB288
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB289
	.quad	.LFE289-.LFB289
	.byte	0x4
	.long	.LCFI64-.LFB289
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.byte	0x4
	.long	.LCFI65-.LFB290
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB291
	.quad	.LFE291-.LFB291
	.byte	0x4
	.long	.LCFI66-.LFB291
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB292
	.quad	.LFE292-.LFB292
	.byte	0x4
	.long	.LCFI67-.LFB292
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB296
	.quad	.LFE296-.LFB296
	.byte	0x4
	.long	.LCFI68-.LFB296
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI71-.LFB294
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI75-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI82-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI83-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB302
	.quad	.LFE302-.LFB302
	.byte	0x4
	.long	.LCFI90-.LFB302
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI94-.LFB303
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI94
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI99-.LFB304
	.byte	0x8e
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI99
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.byte	0x4
	.long	.LCFI104-.LFB307
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.byte	0x4
	.long	.LCFI108-.LFB308
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI108
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI112-.LFB316
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB319
	.quad	.LFE319-.LFB319
	.byte	0x4
	.long	.LCFI119-.LFB319
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI126-.LFB318
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI136-.LFB216
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI137-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.byte	0x4
	.long	.LCFI145-.LFB310
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI147-.LCFI145
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.byte	0x4
	.long	.LCFI148-.LFB309
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI151-.LFB284
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB299
	.quad	.LFE299-.LFB299
	.byte	0x4
	.long	.LCFI152-.LFB299
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.byte	0x4
	.long	.LCFI159-.LFB315
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI166-.LFB314
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.byte	0x4
	.long	.LCFI167-.LFB313
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI168-.LFB312
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI169-.LFB283
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.byte	0x4
	.long	.LCFI170-.LFB311
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.byte	0x4
	.long	.LCFI171-.LFB282
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.byte	0x4
	.long	.LCFI172-.LFB306
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.byte	0x4
	.long	.LCFI173-.LFB305
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.quad	.LFB242
	.quad	.LFE242-.LFB242
	.byte	0x4
	.long	.LCFI174-.LFB242
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.byte	0x4
	.long	.LCFI175-.LFB246
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.byte	0x4
	.long	.LCFI176-.LFB245
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.byte	0x4
	.long	.LCFI178-.LFB277
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI183-.LFB276
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI183
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI188-.LFB275
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI188
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.quad	.LFB322
	.quad	.LFE322-.LFB322
	.byte	0x4
	.long	.LCFI192-.LFB322
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI193-.LCFI192
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.quad	.LFB321
	.quad	.LFE321-.LFB321
	.byte	0x4
	.long	.LCFI199-.LFB321
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.quad	.LFB325
	.quad	.LFE325-.LFB325
	.byte	0x4
	.long	.LCFI204-.LFB325
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.quad	.LFB324
	.quad	.LFE324-.LFB324
	.byte	0x4
	.long	.LCFI211-.LFB324
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.quad	.LFB328
	.quad	.LFE328-.LFB328
	.byte	0x4
	.long	.LCFI217-.LFB328
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI220-.LCFI219
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.quad	.LFB327
	.quad	.LFE327-.LFB327
	.byte	0x4
	.long	.LCFI224-.LFB327
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.quad	.LFB331
	.quad	.LFE331-.LFB331
	.byte	0x4
	.long	.LCFI231-.LFB331
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.quad	.LFB330
	.quad	.LFE330-.LFB330
	.byte	0x4
	.long	.LCFI238-.LFB330
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI243-.LCFI242
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.quad	.LFB334
	.quad	.LFE334-.LFB334
	.byte	0x4
	.long	.LCFI244-.LFB334
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI247-.LCFI246
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.quad	.LFB333
	.quad	.LFE333-.LFB333
	.byte	0x4
	.long	.LCFI251-.LFB333
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI252-.LCFI251
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI257-.LCFI256
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE174:
.LSFDE176:
	.long	.LEFDE176-.LASFDE176
.LASFDE176:
	.long	.Lframe0
	.quad	.LFB337
	.quad	.LFE337-.LFB337
	.byte	0x4
	.long	.LCFI258-.LFB337
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI261-.LCFI260
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.quad	.LFB336
	.quad	.LFE336-.LFB336
	.byte	0x4
	.long	.LCFI265-.LFB336
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI270-.LCFI269
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE178:
.LSFDE180:
	.long	.LEFDE180-.LASFDE180
.LASFDE180:
	.long	.Lframe0
	.quad	.LFB340
	.quad	.LFE340-.LFB340
	.byte	0x4
	.long	.LCFI271-.LFB340
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE180:
.LSFDE182:
	.long	.LEFDE182-.LASFDE182
.LASFDE182:
	.long	.Lframe0
	.quad	.LFB339
	.quad	.LFE339-.LFB339
	.byte	0x4
	.long	.LCFI278-.LFB339
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI280-.LCFI279
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI281-.LCFI280
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI284-.LCFI283
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE182:
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
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI0-.LFB220
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI3-.LFB267
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI8-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB239
	.quad	.LFE239-.LFB239
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.byte	0x4
	.long	.LCFI13-.LFB237
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB241
	.quad	.LFE241-.LFB241
	.byte	0x4
	.long	.LCFI14-.LFB241
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB250
	.quad	.LFE250-.LFB250
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB248
	.quad	.LFE248-.LFB248
	.byte	0x4
	.long	.LCFI15-.LFB248
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB249
	.quad	.LFE249-.LFB249
	.byte	0x4
	.long	.LCFI16-.LFB249
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB251
	.quad	.LFE251-.LFB251
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB252
	.quad	.LFE252-.LFB252
	.byte	0x4
	.long	.LCFI18-.LFB252
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB253
	.quad	.LFE253-.LFB253
	.byte	0x4
	.long	.LCFI21-.LFB253
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB254
	.quad	.LFE254-.LFB254
	.byte	0x4
	.long	.LCFI29-.LFB254
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0xe
	.uleb128 0x120
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB255
	.quad	.LFE255-.LFB255
	.byte	0x4
	.long	.LCFI34-.LFB255
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI34
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB256
	.quad	.LFE256-.LFB256
	.byte	0x4
	.long	.LCFI38-.LFB256
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB258
	.quad	.LFE258-.LFB258
	.byte	0x4
	.long	.LCFI39-.LFB258
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB244
	.quad	.LFE244-.LFB244
	.byte	0x4
	.long	.LCFI42-.LFB244
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB243
	.quad	.LFE243-.LFB243
	.byte	0x4
	.long	.LCFI43-.LFB243
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB259
	.quad	.LFE259-.LFB259
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB238
	.quad	.LFE238-.LFB238
	.byte	0x4
	.long	.LCFI52-.LFB238
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB293
	.quad	.LFE293-.LFB293
	.byte	0x4
	.long	.LCFI53-.LFB293
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.byte	0x4
	.long	.LCFI57-.LFB270
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI58-.LFB271
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB301
	.quad	.LFE301-.LFB301
	.byte	0x4
	.long	.LCFI59-.LFB301
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI61-.LFB281
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB287
	.quad	.LFE287-.LFB287
	.byte	0x4
	.long	.LCFI62-.LFB287
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB288
	.quad	.LFE288-.LFB288
	.byte	0x4
	.long	.LCFI63-.LFB288
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB289
	.quad	.LFE289-.LFB289
	.byte	0x4
	.long	.LCFI64-.LFB289
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.byte	0x4
	.long	.LCFI65-.LFB290
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB291
	.quad	.LFE291-.LFB291
	.byte	0x4
	.long	.LCFI66-.LFB291
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB292
	.quad	.LFE292-.LFB292
	.byte	0x4
	.long	.LCFI67-.LFB292
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB296
	.quad	.LFE296-.LFB296
	.byte	0x4
	.long	.LCFI68-.LFB296
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB294
	.quad	.LFE294-.LFB294
	.byte	0x4
	.long	.LCFI71-.LFB294
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI75-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI82-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB297
	.quad	.LFE297-.LFB297
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB298
	.quad	.LFE298-.LFB298
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB300
	.quad	.LFE300-.LFB300
	.byte	0x4
	.long	.LCFI83-.LFB300
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB302
	.quad	.LFE302-.LFB302
	.byte	0x4
	.long	.LCFI90-.LFB302
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB303
	.quad	.LFE303-.LFB303
	.byte	0x4
	.long	.LCFI94-.LFB303
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI94
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB304
	.quad	.LFE304-.LFB304
	.byte	0x4
	.long	.LCFI99-.LFB304
	.byte	0x8e
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI99
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB307
	.quad	.LFE307-.LFB307
	.byte	0x4
	.long	.LCFI104-.LFB307
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB308
	.quad	.LFE308-.LFB308
	.byte	0x4
	.long	.LCFI108-.LFB308
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI108
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB316
	.quad	.LFE316-.LFB316
	.byte	0x4
	.long	.LCFI112-.LFB316
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB319
	.quad	.LFE319-.LFB319
	.byte	0x4
	.long	.LCFI119-.LFB319
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB318
	.quad	.LFE318-.LFB318
	.byte	0x4
	.long	.LCFI126-.LFB318
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI136-.LFB216
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI137-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB310
	.quad	.LFE310-.LFB310
	.byte	0x4
	.long	.LCFI145-.LFB310
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI147-.LCFI145
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB309
	.quad	.LFE309-.LFB309
	.byte	0x4
	.long	.LCFI148-.LFB309
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI151-.LFB284
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB299
	.quad	.LFE299-.LFB299
	.byte	0x4
	.long	.LCFI152-.LFB299
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB315
	.quad	.LFE315-.LFB315
	.byte	0x4
	.long	.LCFI159-.LFB315
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB314
	.quad	.LFE314-.LFB314
	.byte	0x4
	.long	.LCFI166-.LFB314
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB313
	.quad	.LFE313-.LFB313
	.byte	0x4
	.long	.LCFI167-.LFB313
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB312
	.quad	.LFE312-.LFB312
	.byte	0x4
	.long	.LCFI168-.LFB312
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE129:
.LSFDE131:
	.long	.LEFDE131-.LASFDE131
.LASFDE131:
	.long	.LASFDE131-.Lframe1
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI169-.LFB283
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE131:
.LSFDE133:
	.long	.LEFDE133-.LASFDE133
.LASFDE133:
	.long	.LASFDE133-.Lframe1
	.quad	.LFB311
	.quad	.LFE311-.LFB311
	.byte	0x4
	.long	.LCFI170-.LFB311
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.byte	0x4
	.long	.LCFI171-.LFB282
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB306
	.quad	.LFE306-.LFB306
	.byte	0x4
	.long	.LCFI172-.LFB306
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE139:
.LSFDE141:
	.long	.LEFDE141-.LASFDE141
.LASFDE141:
	.long	.LASFDE141-.Lframe1
	.quad	.LFB305
	.quad	.LFE305-.LFB305
	.byte	0x4
	.long	.LCFI173-.LFB305
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE141:
.LSFDE143:
	.long	.LEFDE143-.LASFDE143
.LASFDE143:
	.long	.LASFDE143-.Lframe1
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.align 8
.LEFDE143:
.LSFDE145:
	.long	.LEFDE145-.LASFDE145
.LASFDE145:
	.long	.LASFDE145-.Lframe1
	.quad	.LFB242
	.quad	.LFE242-.LFB242
	.byte	0x4
	.long	.LCFI174-.LFB242
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE145:
.LSFDE147:
	.long	.LEFDE147-.LASFDE147
.LASFDE147:
	.long	.LASFDE147-.Lframe1
	.quad	.LFB246
	.quad	.LFE246-.LFB246
	.byte	0x4
	.long	.LCFI175-.LFB246
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE147:
.LSFDE149:
	.long	.LEFDE149-.LASFDE149
.LASFDE149:
	.long	.LASFDE149-.Lframe1
	.quad	.LFB245
	.quad	.LFE245-.LFB245
	.byte	0x4
	.long	.LCFI176-.LFB245
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE149:
.LSFDE151:
	.long	.LEFDE151-.LASFDE151
.LASFDE151:
	.long	.LASFDE151-.Lframe1
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.byte	0x4
	.long	.LCFI178-.LFB277
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE151:
.LSFDE153:
	.long	.LEFDE153-.LASFDE153
.LASFDE153:
	.long	.LASFDE153-.Lframe1
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI183-.LFB276
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI183
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE153:
.LSFDE155:
	.long	.LEFDE155-.LASFDE155
.LASFDE155:
	.long	.LASFDE155-.Lframe1
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI188-.LFB275
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI191-.LCFI188
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE155:
.LSFDE157:
	.long	.LEFDE157-.LASFDE157
.LASFDE157:
	.long	.LASFDE157-.Lframe1
	.quad	.LFB322
	.quad	.LFE322-.LFB322
	.byte	0x4
	.long	.LCFI192-.LFB322
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI193-.LCFI192
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE157:
.LSFDE159:
	.long	.LEFDE159-.LASFDE159
.LASFDE159:
	.long	.LASFDE159-.Lframe1
	.quad	.LFB321
	.quad	.LFE321-.LFB321
	.byte	0x4
	.long	.LCFI199-.LFB321
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI200-.LCFI199
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI201-.LCFI200
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE159:
.LSFDE161:
	.long	.LEFDE161-.LASFDE161
.LASFDE161:
	.long	.LASFDE161-.Lframe1
	.quad	.LFB325
	.quad	.LFE325-.LFB325
	.byte	0x4
	.long	.LCFI204-.LFB325
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI210-.LCFI209
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE161:
.LSFDE163:
	.long	.LEFDE163-.LASFDE163
.LASFDE163:
	.long	.LASFDE163-.Lframe1
	.quad	.LFB324
	.quad	.LFE324-.LFB324
	.byte	0x4
	.long	.LCFI211-.LFB324
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE163:
.LSFDE165:
	.long	.LEFDE165-.LASFDE165
.LASFDE165:
	.long	.LASFDE165-.Lframe1
	.quad	.LFB328
	.quad	.LFE328-.LFB328
	.byte	0x4
	.long	.LCFI217-.LFB328
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI220-.LCFI219
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI222-.LCFI221
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE165:
.LSFDE167:
	.long	.LEFDE167-.LASFDE167
.LASFDE167:
	.long	.LASFDE167-.Lframe1
	.quad	.LFB327
	.quad	.LFE327-.LFB327
	.byte	0x4
	.long	.LCFI224-.LFB327
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI226-.LCFI225
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE167:
.LSFDE169:
	.long	.LEFDE169-.LASFDE169
.LASFDE169:
	.long	.LASFDE169-.Lframe1
	.quad	.LFB331
	.quad	.LFE331-.LFB331
	.byte	0x4
	.long	.LCFI231-.LFB331
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI234-.LCFI233
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI237-.LCFI236
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE169:
.LSFDE171:
	.long	.LEFDE171-.LASFDE171
.LASFDE171:
	.long	.LASFDE171-.Lframe1
	.quad	.LFB330
	.quad	.LFE330-.LFB330
	.byte	0x4
	.long	.LCFI238-.LFB330
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI241-.LCFI240
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI243-.LCFI242
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE171:
.LSFDE173:
	.long	.LEFDE173-.LASFDE173
.LASFDE173:
	.long	.LASFDE173-.Lframe1
	.quad	.LFB334
	.quad	.LFE334-.LFB334
	.byte	0x4
	.long	.LCFI244-.LFB334
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI247-.LCFI246
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE173:
.LSFDE175:
	.long	.LEFDE175-.LASFDE175
.LASFDE175:
	.long	.LASFDE175-.Lframe1
	.quad	.LFB333
	.quad	.LFE333-.LFB333
	.byte	0x4
	.long	.LCFI251-.LFB333
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI252-.LCFI251
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI253-.LCFI252
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI257-.LCFI256
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE175:
.LSFDE177:
	.long	.LEFDE177-.LASFDE177
.LASFDE177:
	.long	.LASFDE177-.Lframe1
	.quad	.LFB337
	.quad	.LFE337-.LFB337
	.byte	0x4
	.long	.LCFI258-.LFB337
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI261-.LCFI260
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE177:
.LSFDE179:
	.long	.LEFDE179-.LASFDE179
.LASFDE179:
	.long	.LASFDE179-.Lframe1
	.quad	.LFB336
	.quad	.LFE336-.LFB336
	.byte	0x4
	.long	.LCFI265-.LFB336
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI270-.LCFI269
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE179:
.LSFDE181:
	.long	.LEFDE181-.LASFDE181
.LASFDE181:
	.long	.LASFDE181-.Lframe1
	.quad	.LFB340
	.quad	.LFE340-.LFB340
	.byte	0x4
	.long	.LCFI271-.LFB340
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI273-.LCFI272
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI276-.LCFI275
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE181:
.LSFDE183:
	.long	.LEFDE183-.LASFDE183
.LASFDE183:
	.long	.LASFDE183-.Lframe1
	.quad	.LFB339
	.quad	.LFE339-.LFB339
	.byte	0x4
	.long	.LCFI278-.LFB339
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI280-.LCFI279
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI281-.LCFI280
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI282-.LCFI281
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI284-.LCFI283
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE183:
	.file 8 "/usr/include/stdint.h"
	.file 9 "../cpu-defs.h"
	.file 10 "../argos-tag.h"
	.file 11 "../argos.h"
	.file 12 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/libio.h"
	.file 15 "/usr/include/bits/types.h"
	.file 16 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 17 "/usr/include/sys/types.h"
	.file 18 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 19 "/usr/include/setjmp.h"
	.file 20 "/usr/include/bits/setjmp.h"
	.file 21 "/usr/include/bits/sigset.h"
	.file 22 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 23 "<internal>"
	.text
.Letext0:
	.section	.debug_info
	.long	0x6c15
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF518
	.byte	0x1
	.long	.LASF519
	.long	.LASF520
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.long	.LASF7
	.byte	0xf
	.byte	0x8d
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0xf
	.byte	0x8e
	.long	0x5e
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x2
	.long	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF10
	.byte	0x10
	.byte	0xd5
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x11
	.byte	0xc5
	.long	0x57
	.uleb128 0x4
	.long	.LASF12
	.byte	0x11
	.byte	0xc6
	.long	0x5e
	.uleb128 0x7
	.long	0xc9
	.byte	0x80
	.byte	0x15
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x15
	.byte	0x1f
	.long	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0xd9
	.long	0x42
	.uleb128 0xa
	.long	0x7b
	.byte	0xf
	.byte	0x0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x15
	.byte	0x20
	.long	0xb2
	.uleb128 0x2
	.long	.LASF14
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF15
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0xfe
	.uleb128 0xb
	.long	0x8a
	.uleb128 0x4
	.long	.LASF16
	.byte	0xd
	.byte	0x31
	.long	0x10e
	.uleb128 0xc
	.long	0x2da
	.long	.LASF48
	.byte	0xd8
	.byte	0xd
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xe
	.value	0x110
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xe
	.value	0x115
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xe
	.value	0x116
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xe
	.value	0x117
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xe
	.value	0x118
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xe
	.value	0x119
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xe
	.value	0x11a
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xe
	.value	0x11b
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xe
	.value	0x11c
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xe
	.value	0x11e
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xe
	.value	0x11f
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xe
	.value	0x120
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xe
	.value	0x122
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xe
	.value	0x124
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xe
	.value	0x126
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xe
	.value	0x12a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xe
	.value	0x12c
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xe
	.value	0x130
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xe
	.value	0x131
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xe
	.value	0x132
	.long	0x384
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xe
	.value	0x136
	.long	0x394
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xe
	.value	0x13f
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xe
	.value	0x148
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xe
	.value	0x149
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xe
	.value	0x14a
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xe
	.value	0x14b
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xe
	.value	0x14c
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xe
	.value	0x14e
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xe
	.value	0x150
	.long	0x39a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF47
	.byte	0x16
	.byte	0x2b
	.long	0x2e5
	.uleb128 0x9
	.long	0x2f5
	.long	0x2f5
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x33a
	.long	.LASF49
	.byte	0x18
	.byte	0x17
	.byte	0x0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x17
	.byte	0x0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x17
	.byte	0x0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF52
	.byte	0x17
	.byte	0x0
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF53
	.byte	0x17
	.byte	0x0
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF54
	.byte	0xe
	.byte	0xb4
	.uleb128 0xc
	.long	0x378
	.long	.LASF55
	.byte	0x18
	.byte	0xe
	.byte	0xba
	.uleb128 0x8
	.long	.LASF56
	.byte	0xe
	.byte	0xbb
	.long	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF57
	.byte	0xe
	.byte	0xbc
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0xe
	.byte	0xc0
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x341
	.uleb128 0x6
	.byte	0x8
	.long	0x10e
	.uleb128 0x9
	.long	0x394
	.long	0x8a
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x33a
	.uleb128 0x9
	.long	0x3aa
	.long	0x8a
	.uleb128 0xa
	.long	0x7b
	.byte	0x13
	.byte	0x0
	.uleb128 0x4
	.long	.LASF59
	.byte	0xd
	.byte	0x50
	.long	0x2da
	.uleb128 0x4
	.long	.LASF60
	.byte	0x8
	.byte	0x31
	.long	0x2d
	.uleb128 0x4
	.long	.LASF61
	.byte	0x8
	.byte	0x32
	.long	0x34
	.uleb128 0x4
	.long	.LASF62
	.byte	0x8
	.byte	0x34
	.long	0x3b
	.uleb128 0x4
	.long	.LASF63
	.byte	0x8
	.byte	0x38
	.long	0x42
	.uleb128 0x4
	.long	.LASF64
	.byte	0x14
	.byte	0x20
	.long	0x3ec
	.uleb128 0x9
	.long	0x3fc
	.long	0x5e
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x433
	.long	.LASF65
	.byte	0xc8
	.byte	0x13
	.byte	0x24
	.uleb128 0x8
	.long	.LASF66
	.byte	0x13
	.byte	0x29
	.long	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x13
	.byte	0x2a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF68
	.byte	0x13
	.byte	0x2b
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x4
	.long	.LASF69
	.byte	0x13
	.byte	0x31
	.long	0x43e
	.uleb128 0x9
	.long	0x44e
	.long	0x3fc
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	.LASF70
	.byte	0x9
	.byte	0x31
	.long	0x3cb
	.uleb128 0x4
	.long	.LASF71
	.byte	0x9
	.byte	0x49
	.long	0x3d6
	.uleb128 0x4
	.long	.LASF72
	.byte	0x9
	.byte	0x50
	.long	0x42
	.uleb128 0xc
	.long	0x4b4
	.long	.LASF73
	.byte	0x18
	.byte	0x9
	.byte	0x69
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x70
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x71
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x72
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x74
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF73
	.byte	0x9
	.byte	0x75
	.long	0x46f
	.uleb128 0x2
	.long	.LASF78
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.byte	0x4
	.uleb128 0x4
	.long	.LASF80
	.byte	0x12
	.byte	0x3b
	.long	0x4bf
	.uleb128 0x4
	.long	.LASF81
	.byte	0x12
	.byte	0x3c
	.long	0x4c6
	.uleb128 0x4
	.long	.LASF82
	.byte	0x12
	.byte	0x3e
	.long	0x4ee
	.uleb128 0x2
	.long	.LASF83
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x51e
	.long	.LASF84
	.byte	0x2
	.byte	0x12
	.byte	0x6d
	.uleb128 0x8
	.long	.LASF85
	.byte	0x12
	.byte	0x6e
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF86
	.byte	0x12
	.byte	0x70
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF84
	.byte	0x12
	.byte	0x72
	.long	0x4f5
	.uleb128 0xf
	.long	.LASF87
	.byte	0x6
	.value	0x198
	.long	0x4e3
	.uleb128 0x10
	.long	0x57f
	.long	.LASF88
	.byte	0x10
	.byte	0x6
	.value	0x19d
	.uleb128 0xd
	.long	.LASF89
	.byte	0x6
	.value	0x19e
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF90
	.byte	0x6
	.value	0x19f
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF91
	.byte	0x6
	.value	0x1a0
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF92
	.byte	0x6
	.value	0x1a1
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF88
	.byte	0x6
	.value	0x1a2
	.long	0x535
	.uleb128 0x11
	.long	0x5d7
	.byte	0x10
	.byte	0x6
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x6
	.value	0x1a5
	.long	0x5d7
	.uleb128 0x12
	.string	"_w"
	.byte	0x6
	.value	0x1a6
	.long	0x5e7
	.uleb128 0x12
	.string	"_l"
	.byte	0x6
	.value	0x1a7
	.long	0x5f7
	.uleb128 0x12
	.string	"_q"
	.byte	0x6
	.value	0x1a8
	.long	0x607
	.uleb128 0x12
	.string	"_s"
	.byte	0x6
	.value	0x1a9
	.long	0x617
	.uleb128 0x12
	.string	"_d"
	.byte	0x6
	.value	0x1aa
	.long	0x627
	.byte	0x0
	.uleb128 0x9
	.long	0x5e7
	.long	0x3b5
	.uleb128 0xa
	.long	0x7b
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.long	0x5f7
	.long	0x3c0
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0x607
	.long	0x3cb
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x9
	.long	0x617
	.long	0x3d6
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x627
	.long	0x4cd
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x9
	.long	0x637
	.long	0x4d8
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x6
	.value	0x1ab
	.long	0x58b
	.uleb128 0x11
	.long	0x678
	.byte	0x8
	.byte	0x6
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x6
	.value	0x1ae
	.long	0x678
	.uleb128 0x12
	.string	"_w"
	.byte	0x6
	.value	0x1af
	.long	0x688
	.uleb128 0x12
	.string	"_l"
	.byte	0x6
	.value	0x1b0
	.long	0x698
	.uleb128 0x12
	.string	"q"
	.byte	0x6
	.value	0x1b1
	.long	0x3d6
	.byte	0x0
	.uleb128 0x9
	.long	0x688
	.long	0x3b5
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0x698
	.long	0x3c0
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x6a8
	.long	0x3cb
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF94
	.byte	0x6
	.value	0x1b2
	.long	0x643
	.uleb128 0x4
	.long	.LASF95
	.byte	0xb
	.byte	0x2f
	.long	0x3cb
	.uleb128 0x4
	.long	.LASF96
	.byte	0xb
	.byte	0x34
	.long	0x3cb
	.uleb128 0x4
	.long	.LASF97
	.byte	0xb
	.byte	0x35
	.long	0x6bf
	.uleb128 0x4
	.long	.LASF98
	.byte	0xb
	.byte	0x4f
	.long	0x6ca
	.uleb128 0xc
	.long	0x709
	.long	.LASF99
	.byte	0x8
	.byte	0xa
	.byte	0x37
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x38
	.long	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0x39
	.long	0x6bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF102
	.byte	0xa
	.byte	0x3d
	.long	0x6e0
	.uleb128 0xc
	.long	0x889
	.long	.LASF103
	.byte	0xd0
	.byte	0xc
	.byte	0x36
	.uleb128 0x8
	.long	.LASF104
	.byte	0xc
	.byte	0x38
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF105
	.byte	0xc
	.byte	0x39
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0xc
	.byte	0x3d
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF106
	.byte	0xc
	.byte	0x3f
	.long	0x889
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF107
	.byte	0xc
	.byte	0x41
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF108
	.byte	0xc
	.byte	0x43
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF109
	.byte	0xc
	.byte	0x45
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF110
	.byte	0xc
	.byte	0x47
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF111
	.byte	0xc
	.byte	0x4a
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF112
	.byte	0xc
	.byte	0x4b
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF113
	.byte	0xc
	.byte	0x4c
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF114
	.byte	0xc
	.byte	0x4e
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF115
	.byte	0xc
	.byte	0x50
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.long	.LASF116
	.byte	0xc
	.byte	0x52
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF117
	.byte	0xc
	.byte	0x54
	.long	0x89f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF118
	.byte	0xc
	.byte	0x56
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF119
	.byte	0xc
	.byte	0x58
	.long	0x8af
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF120
	.byte	0xc
	.byte	0x5b
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xc
	.byte	0x5c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF122
	.byte	0xc
	.byte	0x5e
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x8
	.long	.LASF123
	.byte	0xc
	.byte	0x60
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF124
	.byte	0xc
	.byte	0x62
	.long	0x8af
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF125
	.byte	0xc
	.byte	0x65
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF126
	.byte	0xc
	.byte	0x66
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x8
	.long	.LASF127
	.byte	0xc
	.byte	0x68
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x103
	.uleb128 0x9
	.long	0x89f
	.long	0x8a
	.uleb128 0xa
	.long	0x7b
	.byte	0x10
	.byte	0x0
	.uleb128 0x9
	.long	0x8af
	.long	0x6bf
	.uleb128 0xa
	.long	0x7b
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6bf
	.uleb128 0x4
	.long	.LASF128
	.byte	0xc
	.byte	0x69
	.long	0x714
	.uleb128 0x11
	.long	0x8e0
	.byte	0x10
	.byte	0x6
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x6
	.value	0x20a
	.long	0x529
	.uleb128 0x12
	.string	"mmx"
	.byte	0x6
	.value	0x20e
	.long	0x6a8
	.byte	0x0
	.uleb128 0x11
	.long	0x916
	.byte	0x8
	.byte	0x6
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x6
	.value	0x215
	.long	0x4bf
	.uleb128 0x12
	.string	"d"
	.byte	0x6
	.value	0x216
	.long	0x4c6
	.uleb128 0x12
	.string	"i32"
	.byte	0x6
	.value	0x217
	.long	0x57
	.uleb128 0x12
	.string	"i64"
	.byte	0x6
	.value	0x218
	.long	0xa7
	.byte	0x0
	.uleb128 0x14
	.long	0x93e
	.byte	0x10
	.byte	0x6
	.value	0x246
	.uleb128 0xd
	.long	.LASF129
	.byte	0x6
	.value	0x246
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF77
	.byte	0x6
	.value	0x246
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xeda
	.long	.LASF130
	.value	0xb820
	.byte	0x6
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF131
	.byte	0x6
	.value	0x1df
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x6
	.value	0x1e0
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF132
	.byte	0x6
	.value	0x1e1
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF133
	.byte	0x6
	.value	0x1e6
	.long	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF134
	.byte	0x6
	.value	0x1e6
	.long	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF135
	.byte	0x6
	.value	0x1e6
	.long	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF136
	.byte	0x6
	.value	0x1e7
	.long	0xeea
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF137
	.byte	0x6
	.value	0x1e9
	.long	0x8b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF138
	.byte	0x6
	.value	0x1ec
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF139
	.byte	0x6
	.value	0x1ed
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF140
	.byte	0x6
	.value	0x1ee
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x6
	.value	0x1ef
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF141
	.byte	0x6
	.value	0x1f0
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF142
	.byte	0x6
	.value	0x1f3
	.long	0xefa
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x6
	.value	0x1f4
	.long	0x57f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x6
	.value	0x1f5
	.long	0x57f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x6
	.value	0x1f6
	.long	0x57f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x6
	.value	0x1f7
	.long	0x57f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x6
	.value	0x1f9
	.long	0xf0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF143
	.byte	0x6
	.value	0x1fa
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF144
	.byte	0x6
	.value	0x201
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF145
	.byte	0x6
	.value	0x202
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF146
	.byte	0x6
	.value	0x204
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF147
	.byte	0x6
	.value	0x205
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF148
	.byte	0x6
	.value	0x206
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF149
	.byte	0x6
	.value	0x207
	.long	0x678
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF150
	.byte	0x6
	.value	0x20f
	.long	0xf1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF151
	.byte	0x6
	.value	0x212
	.long	0x51e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x6
	.value	0x213
	.long	0x529
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF152
	.byte	0x6
	.value	0x219
	.long	0x8e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF153
	.byte	0x6
	.value	0x21b
	.long	0x51e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF154
	.byte	0x6
	.value	0x21c
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF155
	.byte	0x6
	.value	0x21d
	.long	0xf2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x6
	.value	0x21e
	.long	0x637
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF157
	.byte	0x6
	.value	0x21f
	.long	0x6a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF158
	.byte	0x6
	.value	0x222
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF159
	.byte	0x6
	.value	0x223
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF160
	.byte	0x6
	.value	0x224
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF161
	.byte	0x6
	.value	0x225
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF162
	.byte	0x6
	.value	0x226
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x6
	.value	0x228
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF164
	.byte	0x6
	.value	0x229
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF165
	.byte	0x6
	.value	0x22a
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x6
	.value	0x22b
	.long	0x3c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x6
	.value	0x22c
	.long	0x3c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF168
	.byte	0x6
	.value	0x22d
	.long	0x3c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF169
	.byte	0x6
	.value	0x22e
	.long	0x3c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF170
	.byte	0x6
	.value	0x22f
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x6
	.value	0x238
	.long	0x3d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF171
	.byte	0x6
	.value	0x23b
	.long	0x433
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF172
	.byte	0x6
	.value	0x23c
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x6
	.value	0x23d
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF174
	.byte	0x6
	.value	0x23e
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x6
	.value	0x23f
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x6
	.value	0x240
	.long	0xeda
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF176
	.byte	0x6
	.value	0x241
	.long	0x3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF177
	.byte	0x6
	.value	0x242
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF178
	.byte	0x6
	.value	0x243
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF179
	.byte	0x6
	.value	0x244
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF180
	.byte	0x6
	.value	0x246
	.long	0xffd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x6
	.value	0x246
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF182
	.byte	0x6
	.value	0x246
	.long	0x44e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF183
	.byte	0x6
	.value	0x246
	.long	0x1003
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF184
	.byte	0x6
	.value	0x246
	.long	0x1019
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF185
	.byte	0x6
	.value	0x246
	.long	0x102a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF186
	.byte	0x6
	.value	0x246
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF187
	.byte	0x6
	.value	0x246
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF188
	.byte	0x6
	.value	0x246
	.long	0x103a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF189
	.byte	0x6
	.value	0x246
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF190
	.byte	0x6
	.value	0x246
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF191
	.byte	0x6
	.value	0x246
	.long	0x82
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF192
	.byte	0x6
	.value	0x246
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF193
	.byte	0x6
	.value	0x246
	.long	0x82
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF194
	.byte	0x6
	.value	0x246
	.long	0xf8
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF195
	.byte	0x6
	.value	0x249
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x6
	.value	0x24a
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF197
	.byte	0x6
	.value	0x24b
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x6
	.value	0x24c
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF199
	.byte	0x6
	.value	0x24d
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF200
	.byte	0x6
	.value	0x24e
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF201
	.byte	0x6
	.value	0x24f
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF202
	.byte	0x6
	.value	0x250
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF203
	.byte	0x6
	.value	0x251
	.long	0x104a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF204
	.byte	0x6
	.value	0x252
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF205
	.byte	0x6
	.value	0x253
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF206
	.byte	0x6
	.value	0x254
	.long	0x3cb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF207
	.byte	0x6
	.value	0x25b
	.long	0x105a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF208
	.byte	0x6
	.value	0x25f
	.long	0x1066
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0x9
	.long	0xeea
	.long	0x44e
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0xefa
	.long	0x709
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0xf0a
	.long	0x57f
	.uleb128 0xa
	.long	0x7b
	.byte	0x5
	.byte	0x0
	.uleb128 0x9
	.long	0xf1a
	.long	0x44e
	.uleb128 0xa
	.long	0x7b
	.byte	0x4
	.byte	0x0
	.uleb128 0x9
	.long	0xf2a
	.long	0x8c0
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0xf3a
	.long	0x637
	.uleb128 0xa
	.long	0x7b
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0xffd
	.long	.LASF209
	.byte	0x68
	.byte	0x6
	.value	0x246
	.uleb128 0x13
	.string	"pc"
	.byte	0x3
	.byte	0x93
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF210
	.byte	0x3
	.byte	0x94
	.long	0x44e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF92
	.byte	0x3
	.byte	0x95
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF211
	.byte	0x3
	.byte	0x96
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF212
	.byte	0x3
	.byte	0x98
	.long	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF213
	.byte	0x3
	.byte	0x9e
	.long	0x111d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF214
	.byte	0x3
	.byte	0xa0
	.long	0xffd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF215
	.byte	0x3
	.byte	0xa3
	.long	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF216
	.byte	0x3
	.byte	0xa4
	.long	0x1133
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF217
	.byte	0x3
	.byte	0xa8
	.long	0x688
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF218
	.byte	0x3
	.byte	0xac
	.long	0x1143
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF219
	.byte	0x3
	.byte	0xb2
	.long	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF220
	.byte	0x3
	.byte	0xb3
	.long	0xffd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf3a
	.uleb128 0x9
	.long	0x1019
	.long	0x4b4
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.uleb128 0xa
	.long	0x7b
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.long	0x102a
	.long	0xffd
	.uleb128 0x17
	.long	0x7b
	.value	0xfff
	.byte	0x0
	.uleb128 0x9
	.long	0x103a
	.long	0x44e
	.uleb128 0xa
	.long	0x7b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.long	0x104a
	.long	0x916
	.uleb128 0xa
	.long	0x7b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.long	0x105a
	.long	0x3cb
	.uleb128 0xa
	.long	0x7b
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6ca
	.uleb128 0x18
	.long	.LASF521
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x1060
	.uleb128 0xf
	.long	.LASF130
	.byte	0x6
	.value	0x260
	.long	0x93e
	.uleb128 0x10
	.long	0x10b3
	.long	.LASF221
	.byte	0x18
	.byte	0x2
	.value	0x353
	.uleb128 0xd
	.long	.LASF222
	.byte	0x2
	.value	0x354
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF223
	.byte	0x2
	.value	0x355
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF224
	.byte	0x2
	.value	0x356
	.long	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	.LASF221
	.byte	0x2
	.value	0x357
	.long	0x1078
	.uleb128 0xf
	.long	.LASF225
	.byte	0x2
	.value	0x388
	.long	0x10cb
	.uleb128 0x19
	.long	0x10e6
	.byte	0x1
	.uleb128 0x1a
	.long	0x82
	.uleb128 0x1a
	.long	0x459
	.uleb128 0x1a
	.long	0x3cb
	.uleb128 0x1a
	.long	0x10e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10ec
	.uleb128 0xb
	.long	0x709
	.uleb128 0xf
	.long	.LASF226
	.byte	0x2
	.value	0x389
	.long	0x10fd
	.uleb128 0x1b
	.long	0x1117
	.byte	0x1
	.long	0x3cb
	.uleb128 0x1a
	.long	0x82
	.uleb128 0x1a
	.long	0x459
	.uleb128 0x1a
	.long	0x1117
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x709
	.uleb128 0x6
	.byte	0x8
	.long	0x3b5
	.uleb128 0x9
	.long	0x1133
	.long	0xffd
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x1143
	.long	0x44e
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x1153
	.long	0x3cb
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF209
	.byte	0x3
	.byte	0xb4
	.long	0xf3a
	.uleb128 0xf
	.long	.LASF227
	.byte	0x3
	.value	0x1da
	.long	0x57
	.uleb128 0x10
	.long	0x1187
	.long	.LASF228
	.byte	0x4
	.byte	0x3
	.value	0x254
	.uleb128 0xd
	.long	.LASF229
	.byte	0x3
	.value	0x256
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF228
	.byte	0x3
	.value	0x257
	.long	0x116a
	.uleb128 0xc
	.long	0x11ca
	.long	.LASF230
	.byte	0x18
	.byte	0x1
	.byte	0x6d
	.uleb128 0x8
	.long	.LASF231
	.byte	0x1
	.byte	0x6f
	.long	0x11ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF232
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF233
	.byte	0x1
	.byte	0x73
	.long	0x111d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1153
	.uleb128 0x4
	.long	.LASF230
	.byte	0x1
	.byte	0x77
	.long	0x1193
	.uleb128 0x1c
	.long	0x1227
	.long	.LASF234
	.long	0x80008
	.byte	0x1
	.byte	0xa7
	.uleb128 0x8
	.long	.LASF90
	.byte	0x1
	.byte	0xa8
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF235
	.byte	0x1
	.byte	0xa9
	.long	0x1227
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x1
	.byte	0xaa
	.long	0x124a
	.byte	0x4
	.byte	0x23
	.uleb128 0x20008
	.uleb128 0x8
	.long	.LASF193
	.byte	0x1
	.byte	0xab
	.long	0x126d
	.byte	0x4
	.byte	0x23
	.uleb128 0x40008
	.byte	0x0
	.uleb128 0x9
	.long	0x123e
	.long	0x123e
	.uleb128 0x17
	.long	0x7b
	.value	0xfff
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1244
	.uleb128 0x6
	.byte	0x8
	.long	0x10f1
	.uleb128 0x9
	.long	0x1261
	.long	0x1261
	.uleb128 0x17
	.long	0x7b
	.value	0xfff
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1267
	.uleb128 0x6
	.byte	0x8
	.long	0x10bf
	.uleb128 0x9
	.long	0x128a
	.long	0x82
	.uleb128 0x17
	.long	0x7b
	.value	0xfff
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x4
	.long	.LASF234
	.byte	0x1
	.byte	0xac
	.long	0x11db
	.uleb128 0x1d
	.long	0x1317
	.long	.LASF246
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x1317
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF237
	.byte	0x1
	.value	0x108
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF238
	.byte	0x1
	.value	0x108
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"lp"
	.byte	0x1
	.value	0x10a
	.long	0x131d
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x10a
	.long	0x131d
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0x10b
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x121
	.long	0x57
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1187
	.uleb128 0x6
	.byte	0x8
	.long	0x82
	.uleb128 0x22
	.long	0x1356
	.byte	0x1
	.long	.LASF239
	.byte	0x1
	.value	0x12e
	.byte	0x1
	.long	0x1317
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF237
	.byte	0x1
	.value	0x12d
	.long	0x459
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1450
	.byte	0x1
	.long	.LASF240
	.byte	0x1
	.value	0x663
	.byte	0x1
	.long	0x57
	.quad	.LFB267
	.quad	.LFE267
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x660
	.long	0x1450
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x660
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF241
	.byte	0x1
	.value	0x661
	.long	0x459
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF242
	.byte	0x1
	.value	0x661
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	.LASF243
	.byte	0x1
	.value	0x662
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.long	.LASF244
	.byte	0x1
	.value	0x662
	.long	0x57
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x664
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0x665
	.long	0x42
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF237
	.byte	0x1
	.value	0x666
	.long	0x3b
	.uleb128 0x25
	.long	.LASF245
	.byte	0x1
	.value	0x667
	.long	0x44e
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.value	0x668
	.long	0x459
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.value	0x669
	.long	0x57
	.uleb128 0x1f
	.string	"te"
	.byte	0x1
	.value	0x66a
	.long	0x1456
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x66b
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x145c
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x106c
	.uleb128 0x6
	.byte	0x8
	.long	0x4b4
	.uleb128 0x28
	.long	0x147b
	.long	.LASF247
	.byte	0x2
	.value	0x3c0
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x29
	.long	.LASF248
	.byte	0x2
	.value	0x3bf
	.long	0x464
	.byte	0x0
	.uleb128 0x2a
	.long	0x151d
	.byte	0x1
	.long	.LASF249
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF250
	.byte	0x1
	.value	0x16b
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.value	0x16d
	.long	0x1450
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x1501
	.long	0x151d
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x2c
	.long	0x152b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	0x1535
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x153f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2c
	.long	0x152b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	0x1535
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x153f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1550
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x154a
	.long	.LASF251
	.byte	0x1
	.value	0x159
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x15b
	.long	0x154a
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x11d0
	.uleb128 0x2e
	.long	0x1569
	.long	.LASF252
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x14e
	.long	0x154a
	.byte	0x0
	.uleb128 0x22
	.long	0x15dd
	.byte	0x1
	.long	.LASF253
	.byte	0x1
	.value	0x3db
	.byte	0x1
	.long	0x11ca
	.quad	.LFB239
	.quad	.LFE239
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF213
	.byte	0x1
	.value	0x3da
	.long	0x42
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF254
	.byte	0x1
	.value	0x3dc
	.long	0x57
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.long	.LASF255
	.byte	0x1
	.value	0x3dc
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.value	0x3dc
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.value	0x3dd
	.long	0x42
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"tb"
	.byte	0x1
	.value	0x3de
	.long	0x11ca
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x22
	.long	0x161a
	.byte	0x1
	.long	.LASF256
	.byte	0x1
	.value	0x3a8
	.byte	0x1
	.long	0x11ca
	.quad	.LFB237
	.quad	.LFE237
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"pc"
	.byte	0x1
	.value	0x3a7
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"tb"
	.byte	0x1
	.value	0x3a9
	.long	0x11ca
	.byte	0x0
	.uleb128 0x30
	.long	0x1765
	.long	.LASF257
	.byte	0x1
	.value	0x421
	.byte	0x1
	.quad	.LFB241
	.quad	.LFE241
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"tb"
	.byte	0x1
	.value	0x420
	.long	0x11ca
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x16d7
	.long	0x1765
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x27
	.long	0x1773
	.uleb128 0x31
	.long	0x177e
	.byte	0x1
	.byte	0x58
	.uleb128 0x32
	.long	0x1691
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2c
	.long	0x1788
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x1794
	.byte	0x1
	.byte	0x59
	.uleb128 0x2c
	.long	0x17a0
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	0x17ac
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x26
	.long	0x17be
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x27
	.long	0x17cc
	.uleb128 0x27
	.long	0x17d7
	.uleb128 0x26
	.long	0x17e2
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x27
	.long	0x17f0
	.uleb128 0x27
	.long	0x17fa
	.uleb128 0x27
	.long	0x1804
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1765
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x27
	.long	0x1773
	.uleb128 0x31
	.long	0x177e
	.byte	0x1
	.byte	0x58
	.uleb128 0x32
	.long	0x171e
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2c
	.long	0x1788
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x1794
	.byte	0x1
	.byte	0x59
	.uleb128 0x2c
	.long	0x17a0
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x17ac
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x17be
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x27
	.long	0x17cc
	.uleb128 0x27
	.long	0x17d7
	.uleb128 0x26
	.long	0x17e2
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x27
	.long	0x17f0
	.uleb128 0x27
	.long	0x17fa
	.uleb128 0x27
	.long	0x1804
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x17b8
	.long	.LASF258
	.byte	0x1
	.value	0x3fa
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x3f9
	.long	0x11ca
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x3f9
	.long	0x57
	.uleb128 0x20
	.string	"tb1"
	.byte	0x1
	.value	0x3fb
	.long	0x11ca
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x3fb
	.long	0x11ca
	.uleb128 0x20
	.string	"ptb"
	.byte	0x1
	.value	0x3fb
	.long	0x17b8
	.uleb128 0x20
	.string	"n1"
	.byte	0x1
	.value	0x3fc
	.long	0x3b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ca
	.uleb128 0x2e
	.long	0x17e2
	.long	.LASF259
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x1fb
	.long	0x11ca
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x1fb
	.long	0x57
	.byte	0x0
	.uleb128 0x2e
	.long	0x1811
	.long	.LASF260
	.byte	0x3
	.value	0x101
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"tb"
	.byte	0x3
	.byte	0xff
	.long	0x11ca
	.uleb128 0x2f
	.string	"n"
	.byte	0x3
	.value	0x100
	.long	0x57
	.uleb128 0x29
	.long	.LASF248
	.byte	0x3
	.value	0x100
	.long	0x42
	.byte	0x0
	.uleb128 0x2a
	.long	0x18a5
	.byte	0x1
	.long	.LASF261
	.byte	0x1
	.value	0x4c2
	.byte	0x1
	.quad	.LFB250
	.quad	.LFE250
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x4c1
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF222
	.byte	0x1
	.value	0x4c1
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"tb"
	.byte	0x1
	.value	0x4c3
	.long	0x11ca
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF262
	.byte	0x1
	.value	0x4c4
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	interrupt_lock.0
	.uleb128 0x26
	.long	0x18a5
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x27
	.long	0x18b7
	.uleb128 0x21
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x2c
	.long	0x18c1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x18ce
	.long	.LASF263
	.byte	0x3
	.value	0x174
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2f
	.string	"p"
	.byte	0x3
	.value	0x173
	.long	0xf2
	.uleb128 0x24
	.long	.LASF264
	.byte	0x3
	.value	0x175
	.long	0x5e
	.byte	0x0
	.uleb128 0x2a
	.long	0x190b
	.byte	0x1
	.long	.LASF265
	.byte	0x1
	.value	0x490
	.byte	0x1
	.quad	.LFB247
	.quad	.LFE247
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x48f
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF266
	.byte	0x1
	.value	0x48f
	.long	0x57
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2a
	.long	0x193a
	.byte	0x1
	.long	.LASF267
	.byte	0x1
	.value	0x49d
	.byte	0x1
	.quad	.LFB248
	.quad	.LFE248
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF268
	.byte	0x1
	.value	0x49c
	.long	0x57
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2a
	.long	0x1969
	.byte	0x1
	.long	.LASF269
	.byte	0x1
	.value	0x4b7
	.byte	0x1
	.quad	.LFB249
	.quad	.LFE249
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF270
	.byte	0x1
	.value	0x4b6
	.long	0xf8
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2a
	.long	0x19a6
	.byte	0x1
	.long	.LASF271
	.byte	0x1
	.value	0x4d2
	.byte	0x1
	.quad	.LFB251
	.quad	.LFE251
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x4d1
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF222
	.byte	0x1
	.value	0x4d1
	.long	0x57
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1d
	.long	0x19f0
	.long	.LASF272
	.byte	0x1
	.value	0x4f3
	.byte	0x1
	.long	0x57
	.quad	.LFB252
	.quad	.LFE252
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"s1"
	.byte	0x1
	.value	0x4f2
	.long	0xf8
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x4f2
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"s2"
	.byte	0x1
	.value	0x4f2
	.long	0xf8
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x22
	.long	0x1a68
	.byte	0x1
	.long	.LASF273
	.byte	0x1
	.value	0x4fb
	.byte	0x1
	.long	0x57
	.quad	.LFB253
	.quad	.LFE253
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.value	0x4fa
	.long	0xf8
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF274
	.byte	0x1
	.value	0x4fc
	.long	0x1a68
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF222
	.byte	0x1
	.value	0x4fd
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x4fe
	.long	0xf8
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"p1"
	.byte	0x1
	.value	0x4fe
	.long	0xf8
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.long	.LASF379
	.byte	0x1
	.value	0x511
	.quad	.L151
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10b3
	.uleb128 0x2a
	.long	0x1ac9
	.byte	0x1
	.long	.LASF275
	.byte	0x1
	.value	0x51b
	.byte	0x1
	.quad	.LFB254
	.quad	.LFE254
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x51a
	.long	0x1450
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"fmt"
	.byte	0x1
	.value	0x51a
	.long	0xf8
	.byte	0x1
	.byte	0x5c
	.uleb128 0x35
	.uleb128 0x1f
	.string	"ap"
	.byte	0x1
	.value	0x51c
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1f
	.string	"ap2"
	.byte	0x1
	.value	0x51d
	.long	0x3aa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1b26
	.byte	0x1
	.long	.LASF276
	.byte	0x1
	.value	0x540
	.byte	0x1
	.long	0x1450
	.quad	.LFB255
	.quad	.LFE255
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x53f
	.long	0x1450
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF277
	.byte	0x1
	.value	0x541
	.long	0x1450
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF191
	.byte	0x1
	.value	0x543
	.long	0x1450
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF192
	.byte	0x1
	.value	0x544
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x2a
	.long	0x1b6f
	.byte	0x1
	.long	.LASF278
	.byte	0x1
	.value	0x550
	.byte	0x1
	.quad	.LFB256
	.quad	.LFE256
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x54f
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF279
	.byte	0x1
	.value	0x54f
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x551
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2a
	.long	0x1c6f
	.byte	0x1
	.long	.LASF280
	.byte	0x1
	.value	0x589
	.byte	0x1
	.quad	.LFB258
	.quad	.LFE258
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x588
	.long	0x1450
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x588
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x58a
	.long	0x57
	.uleb128 0x20
	.string	"tb"
	.byte	0x1
	.value	0x58b
	.long	0x11ca
	.uleb128 0x2b
	.long	0x1be6
	.long	0x1c6f
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x31
	.long	0x1c7d
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x1c89
	.byte	0x0
	.uleb128 0x2b
	.long	0x1c0c
	.long	0x1c6f
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x31
	.long	0x1c7d
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x1c89
	.byte	0x0
	.uleb128 0x2b
	.long	0x1c2d
	.long	0x1c96
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x31
	.long	0x1ca7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x36
	.long	0x1c48
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x37
	.long	0x1cb1
	.byte	0x0
	.uleb128 0x26
	.long	0x1c96
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x27
	.long	0x1ca7
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x37
	.long	0x1cb1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1c96
	.long	.LASF281
	.byte	0x1
	.value	0x57b
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF282
	.byte	0x1
	.value	0x57a
	.long	0x1456
	.uleb128 0x29
	.long	.LASF248
	.byte	0x1
	.value	0x57a
	.long	0x44e
	.byte	0x0
	.uleb128 0x38
	.long	0x1cbd
	.long	.LASF283
	.byte	0x3
	.byte	0xb7
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x33
	.string	"pc"
	.byte	0x3
	.byte	0xb6
	.long	0x44e
	.uleb128 0x39
	.string	"tmp"
	.byte	0x3
	.byte	0xb8
	.long	0x44e
	.byte	0x0
	.uleb128 0x22
	.long	0x1d0a
	.byte	0x1
	.long	.LASF284
	.byte	0x1
	.value	0x452
	.byte	0x1
	.long	0x57
	.quad	.LFB244
	.quad	.LFE244
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x451
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x451
	.long	0x44e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x453
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1d57
	.byte	0x1
	.long	.LASF285
	.byte	0x1
	.value	0x43c
	.byte	0x1
	.long	0x57
	.quad	.LFB243
	.quad	.LFE243
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x43b
	.long	0x1450
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x43b
	.long	0x44e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x43d
	.long	0x57
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x1e7c
	.byte	0x1
	.long	.LASF286
	.byte	0x1
	.value	0x5d1
	.byte	0x1
	.quad	.LFB262
	.quad	.LFE262
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF287
	.byte	0x1
	.value	0x5cf
	.long	0x464
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x5cf
	.long	0x464
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF288
	.byte	0x1
	.value	0x5d0
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.value	0x5d2
	.long	0x1450
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.long	.LASF289
	.byte	0x1
	.value	0x5d3
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.long	.LASF290
	.byte	0x1
	.value	0x5d3
	.long	0x42
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x5d4
	.long	0x57
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.long	.LASF222
	.byte	0x1
	.value	0x5d4
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.value	0x5d4
	.long	0x57
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x5d5
	.long	0x111d
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x1e3f
	.long	0x1e7c
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x27
	.long	0x1e8a
	.uleb128 0x27
	.long	0x1e96
	.uleb128 0x27
	.long	0x1ea2
	.uleb128 0x21
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x37
	.long	0x1eae
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1e7c
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x27
	.long	0x1e8a
	.uleb128 0x27
	.long	0x1e96
	.uleb128 0x27
	.long	0x1ea2
	.uleb128 0x21
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x37
	.long	0x1eae
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1ebb
	.long	.LASF291
	.byte	0x1
	.value	0x5c5
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF282
	.byte	0x1
	.value	0x5c3
	.long	0x1456
	.uleb128 0x29
	.long	.LASF287
	.byte	0x1
	.value	0x5c4
	.long	0x42
	.uleb128 0x29
	.long	.LASF289
	.byte	0x1
	.value	0x5c4
	.long	0x42
	.uleb128 0x24
	.long	.LASF248
	.byte	0x1
	.value	0x5c6
	.long	0x42
	.byte	0x0
	.uleb128 0x30
	.long	0x1ee9
	.long	.LASF292
	.byte	0x1
	.value	0x5b5
	.byte	0x1
	.quad	.LFB259
	.quad	.LFE259
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF293
	.byte	0x1
	.value	0x5b4
	.long	0x464
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2a
	.long	0x20ef
	.byte	0x1
	.long	.LASF294
	.byte	0x1
	.value	0x3b8
	.byte	0x1
	.quad	.LFB238
	.quad	.LFE238
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"tb"
	.byte	0x1
	.value	0x3b6
	.long	0x11ca
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF295
	.byte	0x1
	.value	0x3b7
	.long	0x44e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF296
	.byte	0x1
	.value	0x3b7
	.long	0x44e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"h"
	.byte	0x1
	.value	0x3b9
	.long	0x3b
	.uleb128 0x20
	.string	"ptb"
	.byte	0x1
	.value	0x3ba
	.long	0x17b8
	.uleb128 0x2b
	.long	0x1f73
	.long	0x20ef
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x27
	.long	0x20fd
	.uleb128 0x27
	.long	0x2108
	.uleb128 0x31
	.long	0x2112
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x32
	.long	0x1fd7
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x37
	.long	0x211e
	.uleb128 0x2c
	.long	0x2128
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	0x1fbb
	.long	0x2135
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x31
	.long	0x2146
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x37
	.long	0x2151
	.uleb128 0x2c
	.long	0x215b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1550
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2060
	.long	0x20ef
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x27
	.long	0x20fd
	.uleb128 0x27
	.long	0x2108
	.uleb128 0x27
	.long	0x2112
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x37
	.long	0x211e
	.uleb128 0x2c
	.long	0x2128
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	0x2043
	.long	0x2135
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x31
	.long	0x2146
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x37
	.long	0x2151
	.uleb128 0x2c
	.long	0x215b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1550
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x20a9
	.long	0x17be
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x27
	.long	0x17cc
	.uleb128 0x27
	.long	0x17d7
	.uleb128 0x26
	.long	0x17e2
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x27
	.long	0x17f0
	.uleb128 0x27
	.long	0x17fa
	.uleb128 0x27
	.long	0x1804
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x17be
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x27
	.long	0x17cc
	.uleb128 0x27
	.long	0x17d7
	.uleb128 0x26
	.long	0x17e2
	.quad	.LBB93
	.quad	.LBE93
	.uleb128 0x27
	.long	0x17f0
	.uleb128 0x27
	.long	0x17fa
	.uleb128 0x27
	.long	0x1804
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2135
	.long	.LASF297
	.byte	0x1
	.value	0x371
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x36f
	.long	0x11ca
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x370
	.long	0x3b
	.uleb128 0x29
	.long	.LASF216
	.byte	0x1
	.value	0x370
	.long	0x44e
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x372
	.long	0x154a
	.uleb128 0x24
	.long	.LASF298
	.byte	0x1
	.value	0x373
	.long	0x11ca
	.byte	0x0
	.uleb128 0x38
	.long	0x2165
	.long	.LASF299
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	0x154a
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF237
	.byte	0x1
	.byte	0xef
	.long	0x3b
	.uleb128 0x39
	.string	"lp"
	.byte	0x1
	.byte	0xf1
	.long	0x2165
	.uleb128 0x39
	.string	"p"
	.byte	0x1
	.byte	0xf1
	.long	0x154a
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x154a
	.uleb128 0x2a
	.long	0x2244
	.byte	0x1
	.long	.LASF300
	.byte	0x1
	.value	0x62d
	.byte	0x1
	.quad	.LFB264
	.quad	.LFE264
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x62c
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x62e
	.long	0x57
	.byte	0x1
	.byte	0x58
	.uleb128 0x2b
	.long	0x21f6
	.long	0x2244
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x27
	.long	0x2252
	.uleb128 0x21
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x37
	.long	0x225e
	.uleb128 0x26
	.long	0x145c
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2244
	.quad	.LBB115
	.quad	.LBE115
	.uleb128 0x27
	.long	0x2252
	.uleb128 0x21
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x37
	.long	0x225e
	.uleb128 0x26
	.long	0x145c
	.quad	.LBB117
	.quad	.LBE117
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x226b
	.long	.LASF301
	.byte	0x1
	.value	0x61f
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF282
	.byte	0x1
	.value	0x61e
	.long	0x1456
	.uleb128 0x24
	.long	.LASF293
	.byte	0x1
	.value	0x620
	.long	0x464
	.byte	0x0
	.uleb128 0x22
	.long	0x22b9
	.byte	0x1
	.long	.LASF302
	.byte	0x1
	.value	0x6e6
	.byte	0x1
	.long	0x57
	.quad	.LFB268
	.quad	.LFE268
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x6e5
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"pc"
	.byte	0x1
	.value	0x6e5
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"puc"
	.byte	0x1
	.value	0x6e5
	.long	0x82
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x233d
	.long	.LASF303
	.byte	0x1
	.value	0x96d
	.byte	0x1
	.long	0x57
	.quad	.LFB293
	.quad	.LFE293
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF304
	.byte	0x1
	.value	0x96b
	.long	0x233d
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF287
	.byte	0x1
	.value	0x96b
	.long	0x3cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x96b
	.long	0x3cb
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.LASF305
	.byte	0x1
	.value	0x96c
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x96e
	.long	0x57
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF306
	.byte	0x1
	.value	0x96e
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x96f
	.long	0x3b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x128a
	.uleb128 0x22
	.long	0x2382
	.byte	0x1
	.long	.LASF307
	.byte	0x1
	.value	0x81f
	.byte	0x1
	.long	0x3cb
	.quad	.LFB270
	.quad	.LFE270
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x81e
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x820
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x23c1
	.byte	0x1
	.long	.LASF308
	.byte	0x1
	.value	0x82a
	.byte	0x1
	.long	0x464
	.quad	.LFB271
	.quad	.LFE271
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.value	0x829
	.long	0x3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF248
	.byte	0x1
	.value	0x82b
	.long	0x464
	.byte	0x0
	.uleb128 0x2a
	.long	0x23f0
	.byte	0x1
	.long	.LASF309
	.byte	0x1
	.value	0x837
	.byte	0x1
	.quad	.LFB272
	.quad	.LFE272
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x836
	.long	0x464
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1d
	.long	0x243e
	.long	.LASF310
	.byte	0x1
	.value	0x83b
	.byte	0x1
	.long	0x3cb
	.quad	.LFB273
	.quad	.LFE273
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x83a
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x83a
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x83a
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x2496
	.long	.LASF311
	.byte	0x1
	.value	0x848
	.byte	0x1
	.quad	.LFB274
	.quad	.LFE274
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x847
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x847
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x847
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x847
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x2532
	.byte	0x1
	.long	.LASF312
	.byte	0x1
	.value	0xa92
	.byte	0x1
	.long	0x3cb
	.quad	.LFB301
	.quad	.LFE301
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xa91
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xa93
	.long	0x57
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.value	0xa94
	.long	0x111d
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xa95
	.long	0x3cb
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xa96
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xa97
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xa98
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	0x2532
	.quad	.LBB119
	.quad	.LBE119
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2551
	.long	.LASF315
	.byte	0x2
	.value	0x15f
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x15e
	.long	0x82
	.byte	0x0
	.uleb128 0x1d
	.long	0x259f
	.long	.LASF316
	.byte	0x1
	.value	0x8cb
	.byte	0x1
	.long	0x3cb
	.quad	.LFB280
	.quad	.LFE280
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8ca
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8ca
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8ca
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x2605
	.long	.LASF317
	.byte	0x1
	.value	0x8d3
	.byte	0x1
	.long	0x44e
	.quad	.LFB281
	.quad	.LFE281
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8d2
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x8d4
	.long	0x1450
	.uleb128 0x25
	.long	.LASF318
	.byte	0x1
	.value	0x8d5
	.long	0x44e
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF319
	.byte	0x1
	.value	0x8d6
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x8d7
	.long	0x57
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1d
	.long	0x269e
	.long	.LASF320
	.byte	0x1
	.value	0x92a
	.byte	0x1
	.long	0x3cb
	.quad	.LFB287
	.quad	.LFE287
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x929
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x929
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x929
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x269e
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x27
	.long	0x26b0
	.uleb128 0x27
	.long	0x26bc
	.uleb128 0x27
	.long	0x26c8
	.uleb128 0x21
	.quad	.LBB122
	.quad	.LBE122
	.uleb128 0x2c
	.long	0x26d4
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	0x26e0
	.uleb128 0x2c
	.long	0x26ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x26f9
	.long	.LASF321
	.byte	0x1
	.value	0x90c
	.byte	0x1
	.long	0x3cb
	.byte	0x3
	.uleb128 0x29
	.long	.LASF304
	.byte	0x1
	.value	0x90a
	.long	0x233d
	.uleb128 0x29
	.long	.LASF248
	.byte	0x1
	.value	0x90a
	.long	0x459
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x90b
	.long	0x3b
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.value	0x90d
	.long	0x3cb
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.value	0x90e
	.long	0x3b
	.uleb128 0x24
	.long	.LASF314
	.byte	0x1
	.value	0x90f
	.long	0x709
	.byte	0x0
	.uleb128 0x30
	.long	0x279a
	.long	.LASF322
	.byte	0x1
	.value	0x934
	.byte	0x1
	.quad	.LFB288
	.quad	.LFE288
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x932
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x932
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF323
	.byte	0x1
	.value	0x933
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x933
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x279a
	.quad	.LBB123
	.quad	.LBE123
	.uleb128 0x27
	.long	0x27a8
	.uleb128 0x27
	.long	0x27b4
	.uleb128 0x27
	.long	0x27c0
	.uleb128 0x27
	.long	0x27cc
	.uleb128 0x21
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x37
	.long	0x27d8
	.uleb128 0x2c
	.long	0x27e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x27f1
	.long	.LASF324
	.byte	0x1
	.value	0x91d
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF304
	.byte	0x1
	.value	0x91b
	.long	0x233d
	.uleb128 0x29
	.long	.LASF248
	.byte	0x1
	.value	0x91b
	.long	0x459
	.uleb128 0x29
	.long	.LASF323
	.byte	0x1
	.value	0x91c
	.long	0x3cb
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x91c
	.long	0x3b
	.uleb128 0x20
	.string	"idx"
	.byte	0x1
	.value	0x91e
	.long	0x3b
	.uleb128 0x24
	.long	.LASF314
	.byte	0x1
	.value	0x91f
	.long	0x10ec
	.byte	0x0
	.uleb128 0x1d
	.long	0x288a
	.long	.LASF325
	.byte	0x1
	.value	0x93c
	.byte	0x1
	.long	0x3cb
	.quad	.LFB289
	.quad	.LFE289
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x93b
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x93b
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x93b
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x269e
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x27
	.long	0x26b0
	.uleb128 0x27
	.long	0x26bc
	.uleb128 0x27
	.long	0x26c8
	.uleb128 0x21
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x2c
	.long	0x26d4
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	0x26e0
	.uleb128 0x2c
	.long	0x26ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x292b
	.long	.LASF326
	.byte	0x1
	.value	0x946
	.byte	0x1
	.quad	.LFB290
	.quad	.LFE290
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x944
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x944
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF323
	.byte	0x1
	.value	0x945
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x945
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x279a
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x27
	.long	0x27a8
	.uleb128 0x27
	.long	0x27b4
	.uleb128 0x27
	.long	0x27c0
	.uleb128 0x27
	.long	0x27cc
	.uleb128 0x21
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x37
	.long	0x27d8
	.uleb128 0x2c
	.long	0x27e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x29c4
	.long	.LASF327
	.byte	0x1
	.value	0x94e
	.byte	0x1
	.long	0x3cb
	.quad	.LFB291
	.quad	.LFE291
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x94d
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x94d
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x94d
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x269e
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x27
	.long	0x26b0
	.uleb128 0x27
	.long	0x26bc
	.uleb128 0x27
	.long	0x26c8
	.uleb128 0x21
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x2c
	.long	0x26d4
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	0x26e0
	.uleb128 0x2c
	.long	0x26ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x2a65
	.long	.LASF328
	.byte	0x1
	.value	0x958
	.byte	0x1
	.quad	.LFB292
	.quad	.LFE292
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x956
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x957
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF323
	.byte	0x1
	.value	0x957
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x957
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x279a
	.quad	.LBB131
	.quad	.LBE131
	.uleb128 0x27
	.long	0x27a8
	.uleb128 0x27
	.long	0x27b4
	.uleb128 0x27
	.long	0x27c0
	.uleb128 0x27
	.long	0x27cc
	.uleb128 0x21
	.quad	.LBB132
	.quad	.LBE132
	.uleb128 0x37
	.long	0x27d8
	.uleb128 0x2c
	.long	0x27e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x2adc
	.byte	0x1
	.long	.LASF329
	.byte	0x1
	.value	0x9bb
	.byte	0x1
	.long	0x57
	.quad	.LFB296
	.quad	.LFE296
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF313
	.byte	0x1
	.value	0x9b7
	.long	0x57
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF235
	.byte	0x1
	.value	0x9b8
	.long	0x123e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF236
	.byte	0x1
	.value	0x9b9
	.long	0x1261
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x9ba
	.long	0x82
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x9bc
	.long	0x57
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.long	.LASF330
	.byte	0x1
	.value	0x9bc
	.long	0x57
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.long	0x2b46
	.long	.LASF331
	.byte	0x1
	.value	0x98c
	.byte	0x1
	.long	0x82
	.quad	.LFB294
	.quad	.LFE294
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x1
	.value	0x98a
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF332
	.byte	0x1
	.value	0x98a
	.long	0x2b46
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF333
	.byte	0x1
	.value	0x98b
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF304
	.byte	0x1
	.value	0x98d
	.long	0x233d
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF334
	.byte	0x1
	.value	0x98e
	.long	0x57
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3cb
	.uleb128 0x2a
	.long	0x2c5c
	.byte	0x1
	.long	.LASF335
	.byte	0x1
	.value	0x7dd
	.byte	0x1
	.quad	.LFB269
	.quad	.LFE269
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF336
	.byte	0x1
	.value	0x7da
	.long	0x459
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.value	0x7db
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF229
	.byte	0x1
	.value	0x7dc
	.long	0x42
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF248
	.byte	0x1
	.value	0x7de
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF337
	.byte	0x1
	.value	0x7de
	.long	0x459
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x7df
	.long	0x1317
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.value	0x7e0
	.long	0x1450
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF338
	.byte	0x1
	.value	0x7e1
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.long	.LASF339
	.byte	0x1
	.value	0x7e2
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.long	0x2c2b
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x25
	.long	.LASF333
	.byte	0x1
	.value	0x7e9
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF340
	.byte	0x1
	.value	0x7ea
	.long	0x459
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.long	.LASF341
	.byte	0x1
	.value	0x7ea
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.long	.LASF342
	.byte	0x1
	.value	0x7eb
	.long	0x57
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x25
	.long	.LASF340
	.byte	0x1
	.value	0x805
	.long	0x459
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.long	.LASF341
	.byte	0x1
	.value	0x805
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.long	.LASF342
	.byte	0x1
	.value	0x806
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2cea
	.byte	0x1
	.long	.LASF343
	.byte	0x1
	.value	0x139
	.byte	0x1
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x138
	.long	0x1450
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF344
	.byte	0x1
	.value	0x13a
	.long	0x2cea
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF192
	.byte	0x1
	.value	0x13b
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x2cd4
	.long	0x2cf0
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x2c
	.long	0x2cfe
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x2d09
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x2d16
	.quad	.LBB141
	.quad	.LBE141
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1450
	.uleb128 0x3c
	.long	0x2d16
	.long	.LASF345
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.uleb128 0x3e
	.long	.LASF287
	.byte	0x1
	.byte	0xc0
	.long	0x42
	.uleb128 0x39
	.string	"end"
	.byte	0x1
	.byte	0xc0
	.long	0x42
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF522
	.byte	0x1
	.value	0x9a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0x2d53
	.byte	0x1
	.long	.LASF346
	.byte	0x1
	.value	0x9d2
	.byte	0x1
	.long	0x1261
	.quad	.LFB297
	.quad	.LFE297
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF313
	.byte	0x1
	.value	0x9d1
	.long	0x57
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x2d86
	.byte	0x1
	.long	.LASF347
	.byte	0x1
	.value	0x9d7
	.byte	0x1
	.long	0x123e
	.quad	.LFB298
	.quad	.LFE298
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF313
	.byte	0x1
	.value	0x9d6
	.long	0x57
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2a
	.long	0x2e57
	.byte	0x1
	.long	.LASF348
	.byte	0x1
	.value	0xa6a
	.byte	0x1
	.quad	.LFB300
	.quad	.LFE300
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xa68
	.long	0x459
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xa69
	.long	0x2e57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xa69
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.value	0xa6b
	.long	0x57
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xa6c
	.long	0x111d
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.long	.LASF349
	.byte	0x1
	.value	0xa6d
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xa6e
	.long	0x42
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xa6f
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x25
	.long	.LASF350
	.byte	0x1
	.value	0xa82
	.long	0x42
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	0x2e62
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x27
	.long	0x2e70
	.uleb128 0x27
	.long	0x2e7c
	.uleb128 0x27
	.long	0x2e88
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5d
	.uleb128 0xb
	.long	0x3b5
	.uleb128 0x2e
	.long	0x2e95
	.long	.LASF351
	.byte	0x4
	.value	0x180
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"map"
	.byte	0x4
	.value	0x17f
	.long	0x105a
	.uleb128 0x29
	.long	.LASF352
	.byte	0x4
	.value	0x17f
	.long	0x42
	.uleb128 0x2f
	.string	"len"
	.byte	0x4
	.value	0x17f
	.long	0x91
	.byte	0x0
	.uleb128 0x22
	.long	0x2f83
	.byte	0x1
	.long	.LASF353
	.byte	0x1
	.value	0xab0
	.byte	0x1
	.long	0x3cb
	.quad	.LFB302
	.quad	.LFE302
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xaaf
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0xaaf
	.long	0x1117
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xab1
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xab2
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xab3
	.long	0x3cb
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xab4
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xab5
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x280
	.uleb128 0x1f
	.string	"off"
	.byte	0x1
	.value	0xac6
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	0x2f66
	.long	0x2f83
	.quad	.LBB149
	.quad	.LBE149
	.uleb128 0x31
	.long	0x2f90
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x2f9b
	.uleb128 0x27
	.long	0x2fa6
	.uleb128 0x27
	.long	0x2fb1
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x2b0
	.uleb128 0x2c
	.long	0x2fbc
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2532
	.quad	.LBB151
	.quad	.LBE151
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x2fc6
	.long	.LASF354
	.byte	0x4
	.byte	0xa7
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0xa5
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0xa5
	.long	0x42
	.uleb128 0x3a
	.long	.LASF241
	.byte	0x4
	.byte	0xa6
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0xa6
	.long	0x1117
	.uleb128 0x39
	.string	"i"
	.byte	0x4
	.byte	0xac
	.long	0x57
	.byte	0x0
	.uleb128 0x22
	.long	0x3062
	.byte	0x1
	.long	.LASF355
	.byte	0x1
	.value	0xad3
	.byte	0x1
	.long	0x3d6
	.quad	.LFB303
	.quad	.LFE303
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xad2
	.long	0x459
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xad4
	.long	0x57
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.value	0xad5
	.long	0x111d
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xad6
	.long	0x3d6
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xad7
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xad8
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xad9
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	0x3062
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3081
	.long	.LASF356
	.byte	0x2
	.value	0x164
	.byte	0x1
	.long	0x3d6
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x163
	.long	0x82
	.byte	0x0
	.uleb128 0x22
	.long	0x316f
	.byte	0x1
	.long	.LASF357
	.byte	0x1
	.value	0xaf7
	.byte	0x1
	.long	0x3d6
	.quad	.LFB304
	.quad	.LFE304
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xaf6
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0xaf6
	.long	0x1117
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xaf8
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xaf9
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xafa
	.long	0x3d6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xafb
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xafc
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x2f0
	.uleb128 0x1f
	.string	"off"
	.byte	0x1
	.value	0xb13
	.long	0x42
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	0x3152
	.long	0x316f
	.quad	.LBB161
	.quad	.LBE161
	.uleb128 0x31
	.long	0x317c
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x3187
	.uleb128 0x27
	.long	0x3192
	.uleb128 0x27
	.long	0x319d
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x2c
	.long	0x31a8
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3062
	.quad	.LBB163
	.quad	.LBE163
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x31b2
	.long	.LASF358
	.byte	0x4
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0xba
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0xba
	.long	0x42
	.uleb128 0x3a
	.long	.LASF241
	.byte	0x4
	.byte	0xbb
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0xbb
	.long	0x1117
	.uleb128 0x39
	.string	"i"
	.byte	0x4
	.byte	0xc3
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x32ae
	.byte	0x1
	.long	.LASF359
	.byte	0x1
	.value	0xb31
	.byte	0x1
	.quad	.LFB307
	.quad	.LFE307
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb30
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xb30
	.long	0x3cb
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xb32
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xb33
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xb34
	.long	0x42
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xb35
	.long	0x1317
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xb36
	.long	0x10ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x1f
	.string	"off"
	.byte	0x1
	.value	0xb43
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x3273
	.long	0x32ae
	.quad	.LBB171
	.quad	.LBE171
	.uleb128 0x27
	.long	0x32bc
	.uleb128 0x27
	.long	0x32c8
	.byte	0x0
	.uleb128 0x26
	.long	0x32d3
	.quad	.LBB173
	.quad	.LBE173
	.uleb128 0x27
	.long	0x32e1
	.uleb128 0x27
	.long	0x32ed
	.uleb128 0x21
	.quad	.LBB174
	.quad	.LBE174
	.uleb128 0x2c
	.long	0x32f9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x32d3
	.long	.LASF360
	.byte	0x2
	.value	0x16e
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x16d
	.long	0x82
	.uleb128 0x2f
	.string	"v"
	.byte	0x2
	.value	0x16d
	.long	0x57
	.byte	0x0
	.uleb128 0x2e
	.long	0x3304
	.long	.LASF361
	.byte	0x4
	.value	0x111
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"map"
	.byte	0x4
	.value	0x110
	.long	0x105a
	.uleb128 0x29
	.long	.LASF352
	.byte	0x4
	.value	0x110
	.long	0x42
	.uleb128 0x20
	.string	"i"
	.byte	0x4
	.value	0x112
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x3400
	.byte	0x1
	.long	.LASF362
	.byte	0x1
	.value	0xb4d
	.byte	0x1
	.quad	.LFB308
	.quad	.LFE308
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb4c
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xb4c
	.long	0x3d6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xb4e
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xb4f
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xb50
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xb51
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xb52
	.long	0x10ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.quad	.LBB175
	.quad	.LBE175
	.uleb128 0x1f
	.string	"off"
	.byte	0x1
	.value	0xb65
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x33c5
	.long	0x3400
	.quad	.LBB176
	.quad	.LBE176
	.uleb128 0x27
	.long	0x340e
	.uleb128 0x27
	.long	0x341a
	.byte	0x0
	.uleb128 0x26
	.long	0x3425
	.quad	.LBB178
	.quad	.LBE178
	.uleb128 0x27
	.long	0x3433
	.uleb128 0x27
	.long	0x343f
	.uleb128 0x21
	.quad	.LBB179
	.quad	.LBE179
	.uleb128 0x2c
	.long	0x344b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x3425
	.long	.LASF363
	.byte	0x2
	.value	0x173
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x172
	.long	0x82
	.uleb128 0x2f
	.string	"v"
	.byte	0x2
	.value	0x172
	.long	0x3d6
	.byte	0x0
	.uleb128 0x2e
	.long	0x3456
	.long	.LASF364
	.byte	0x4
	.value	0x11b
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"map"
	.byte	0x4
	.value	0x11a
	.long	0x105a
	.uleb128 0x29
	.long	.LASF352
	.byte	0x4
	.value	0x11a
	.long	0x42
	.uleb128 0x20
	.string	"i"
	.byte	0x4
	.value	0x11c
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x34ef
	.byte	0x1
	.long	.LASF365
	.byte	0x1
	.value	0xbef
	.byte	0x1
	.quad	.LFB316
	.quad	.LFE316
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"f"
	.byte	0x1
	.value	0xbed
	.long	0x889
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF366
	.byte	0x1
	.value	0xbee
	.long	0x3505
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0xbf0
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF367
	.byte	0x1
	.value	0xbf0
	.long	0x57
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.long	.LASF368
	.byte	0x1
	.value	0xbf0
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF369
	.byte	0x1
	.value	0xbf1
	.long	0x57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF370
	.byte	0x1
	.value	0xbf1
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF371
	.byte	0x1
	.value	0xbf1
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x20
	.string	"tb"
	.byte	0x1
	.value	0xbf2
	.long	0x11ca
	.byte	0x0
	.uleb128 0x1b
	.long	0x3505
	.byte	0x1
	.long	0x57
	.uleb128 0x1a
	.long	0x889
	.uleb128 0x1a
	.long	0xf8
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x34ef
	.uleb128 0x40
	.long	0x362a
	.long	.LASF372
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3b5
	.quad	.LFB319
	.quad	.LFE319
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xc0
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xc1
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xc2
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.byte	0x1
	.byte	0x53
	.uleb128 0x3e
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x3e
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L554
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L561
	.uleb128 0x26
	.long	0x362a
	.quad	.LBB180
	.quad	.LBE180
	.uleb128 0x27
	.long	0x363b
	.uleb128 0x27
	.long	0x3646
	.uleb128 0x21
	.quad	.LBB181
	.quad	.LBE181
	.uleb128 0x37
	.long	0x3651
	.uleb128 0x37
	.long	0x365c
	.uleb128 0x2c
	.long	0x3667
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	0x3672
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x367e
	.long	.LASF382
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3b5
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x42
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x43
	.long	0x44e
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3b5
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.uleb128 0x3e
	.long	.LASF314
	.byte	0x5
	.byte	0x4a
	.long	0x709
	.uleb128 0x39
	.string	"tag"
	.byte	0x5
	.byte	0x4a
	.long	0x1117
	.byte	0x0
	.uleb128 0x45
	.long	0x3760
	.byte	0x1
	.long	.LASF383
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3b5
	.quad	.LFB318
	.quad	.LFE318
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x6d
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6e
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L569
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L576
	.uleb128 0x26
	.long	0x362a
	.quad	.LBB182
	.quad	.LBE182
	.uleb128 0x27
	.long	0x363b
	.uleb128 0x27
	.long	0x3646
	.uleb128 0x21
	.quad	.LBB183
	.quad	.LBE183
	.uleb128 0x37
	.long	0x3651
	.uleb128 0x37
	.long	0x365c
	.uleb128 0x2c
	.long	0x3667
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	0x3672
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x3847
	.long	.LASF384
	.byte	0x3
	.value	0x225
	.byte	0x1
	.long	0x44e
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x3
	.value	0x224
	.long	0x1450
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x3
	.value	0x224
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF243
	.byte	0x3
	.value	0x226
	.long	0x57
	.uleb128 0x24
	.long	.LASF237
	.byte	0x3
	.value	0x226
	.long	0x57
	.uleb128 0x1f
	.string	"pd"
	.byte	0x3
	.value	0x226
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x37e3
	.long	0x3847
	.quad	.LBB184
	.quad	.LBE184
	.uleb128 0x27
	.long	0x3859
	.byte	0x0
	.uleb128 0x26
	.long	0x3866
	.quad	.LBB190
	.quad	.LBE190
	.uleb128 0x27
	.long	0x3878
	.uleb128 0x21
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x37
	.long	0x3883
	.uleb128 0x37
	.long	0x388f
	.uleb128 0x37
	.long	0x389b
	.uleb128 0x37
	.long	0x38a7
	.uleb128 0x37
	.long	0x38b3
	.uleb128 0x26
	.long	0x3847
	.quad	.LBB192
	.quad	.LBE192
	.uleb128 0x31
	.long	0x3859
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3866
	.long	.LASF385
	.byte	0x6
	.value	0x2e9
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2f
	.string	"env"
	.byte	0x6
	.value	0x2e8
	.long	0x1450
	.byte	0x0
	.uleb128 0x28
	.long	0x38c0
	.long	.LASF386
	.byte	0x7
	.value	0x101
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x33
	.string	"ptr"
	.byte	0x7
	.byte	0xff
	.long	0x44e
	.uleb128 0x24
	.long	.LASF237
	.byte	0x7
	.value	0x102
	.long	0x57
	.uleb128 0x20
	.string	"res"
	.byte	0x7
	.value	0x103
	.long	0x57
	.uleb128 0x24
	.long	.LASF248
	.byte	0x7
	.value	0x104
	.long	0x44e
	.uleb128 0x24
	.long	.LASF376
	.byte	0x7
	.value	0x105
	.long	0x42
	.uleb128 0x24
	.long	.LASF243
	.byte	0x7
	.value	0x106
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x3e0d
	.byte	0x1
	.long	.LASF387
	.byte	0x1
	.value	0x29e
	.byte	0x1
	.quad	.LFB234
	.quad	.LFE234
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF287
	.byte	0x1
	.value	0x29c
	.long	0x44e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x29c
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x1
	.value	0x29d
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0x29f
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF389
	.byte	0x1
	.value	0x29f
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x25
	.long	.LASF390
	.byte	0x1
	.value	0x29f
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x25
	.long	.LASF391
	.byte	0x1
	.value	0x29f
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.value	0x2a0
	.long	0x1450
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x2a1
	.long	0x154a
	.uleb128 0x1f
	.string	"tb"
	.byte	0x1
	.value	0x2a2
	.long	0x11ca
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF218
	.byte	0x1
	.value	0x2a2
	.long	0x11ca
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF180
	.byte	0x1
	.value	0x2a2
	.long	0x11ca
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x25
	.long	.LASF392
	.byte	0x1
	.value	0x2a2
	.long	0x11ca
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LASF393
	.byte	0x1
	.value	0x2a3
	.long	0x44e
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF394
	.byte	0x1
	.value	0x2a3
	.long	0x44e
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF395
	.byte	0x1
	.value	0x2a4
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.long	.LASF396
	.byte	0x1
	.value	0x2a4
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	0x39fe
	.long	0x3e0d
	.quad	.LBB194
	.quad	.LBE194
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x360
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3cdf
	.long	0x3e34
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x27
	.long	0x3e42
	.uleb128 0x27
	.long	0x3e4d
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x3c0
	.uleb128 0x2c
	.long	0x3e59
	.byte	0x1
	.byte	0x51
	.uleb128 0x37
	.long	0x3e65
	.uleb128 0x37
	.long	0x3e6f
	.uleb128 0x2c
	.long	0x3e79
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	0x3e84
	.uleb128 0x2c
	.long	0x3e90
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x3e9c
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	0x3a72
	.long	0x3ea9
	.quad	.LBB205
	.quad	.LBE205
	.uleb128 0x31
	.long	0x3eba
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x3ab6
	.long	0x3ec5
	.quad	.LBB206
	.quad	.LBE206
	.uleb128 0x31
	.long	0x3ed3
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x3edf
	.uleb128 0x27
	.long	0x3eea
	.uleb128 0x21
	.quad	.LBB207
	.quad	.LBE207
	.uleb128 0x2c
	.long	0x3ef6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3ae4
	.long	0x3e0d
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x3f0
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3b2a
	.long	0x3f03
	.quad	.LBB211
	.quad	.LBE211
	.uleb128 0x31
	.long	0x3f11
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x3f1d
	.uleb128 0x21
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x2c
	.long	0x3f28
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x3f34
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3b49
	.long	0x1550
	.quad	.LBB213
	.quad	.LBE213
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.uleb128 0x2b
	.long	0x3b77
	.long	0x3e0d
	.quad	.LBB215
	.quad	.LBE215
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x420
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3bbd
	.long	0x3f03
	.quad	.LBB218
	.quad	.LBE218
	.uleb128 0x31
	.long	0x3f11
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x3f1d
	.uleb128 0x21
	.quad	.LBB219
	.quad	.LBE219
	.uleb128 0x2c
	.long	0x3f28
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x3f34
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3bdc
	.long	0x1550
	.quad	.LBB220
	.quad	.LBE220
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.uleb128 0x2b
	.long	0x3c0a
	.long	0x3f40
	.quad	.LBB222
	.quad	.LBE222
	.uleb128 0x31
	.long	0x3f51
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x450
	.uleb128 0x2c
	.long	0x3f5b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3c57
	.long	0x3f67
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x27
	.long	0x3f75
	.uleb128 0x31
	.long	0x3f80
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.quad	.LBB227
	.quad	.LBE227
	.uleb128 0x2c
	.long	0x3f8a
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x3f96
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x3fa2
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3c98
	.long	0x3f67
	.quad	.LBB228
	.quad	.LBE228
	.uleb128 0x27
	.long	0x3f75
	.uleb128 0x31
	.long	0x3f80
	.byte	0x1
	.byte	0x58
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x480
	.uleb128 0x2c
	.long	0x3f8a
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x3f96
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x3fa2
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x17be
	.quad	.LBB231
	.quad	.LBE231
	.uleb128 0x27
	.long	0x17cc
	.uleb128 0x27
	.long	0x17d7
	.uleb128 0x26
	.long	0x17e2
	.quad	.LBB233
	.quad	.LBE233
	.uleb128 0x27
	.long	0x17f0
	.uleb128 0x27
	.long	0x17fa
	.uleb128 0x27
	.long	0x1804
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3cfe
	.long	0x1550
	.quad	.LBB244
	.quad	.LBE244
	.uleb128 0x27
	.long	0x155e
	.byte	0x0
	.uleb128 0x2b
	.long	0x3d29
	.long	0x3fae
	.quad	.LBB246
	.quad	.LBE246
	.uleb128 0x27
	.long	0x3fbc
	.uleb128 0x31
	.long	0x3fc8
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x3fd4
	.byte	0x0
	.uleb128 0x2b
	.long	0x3dac
	.long	0x3fe1
	.quad	.LBB249
	.quad	.LBE249
	.uleb128 0x27
	.long	0x3fef
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x4b0
	.uleb128 0x2c
	.long	0x3ff9
	.byte	0x1
	.byte	0x5b
	.uleb128 0x2c
	.long	0x4003
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x400f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	0x401b
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	0x4027
	.quad	.LBB251
	.quad	.LBE251
	.uleb128 0x31
	.long	0x4035
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4041
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x404d
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x4e0
	.uleb128 0x2c
	.long	0x4059
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	0x4065
	.byte	0x1
	.byte	0x59
	.uleb128 0x37
	.long	0x4071
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x407e
	.quad	.LBB253
	.quad	.LBE253
	.uleb128 0x27
	.long	0x408c
	.uleb128 0x27
	.long	0x4098
	.uleb128 0x27
	.long	0x40a3
	.uleb128 0x27
	.long	0x40af
	.uleb128 0x27
	.long	0x40bb
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x510
	.uleb128 0x2c
	.long	0x40c7
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x40d2
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	0x40de
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	0x40ea
	.byte	0x1
	.byte	0x51
	.uleb128 0x2c
	.long	0x40f6
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	0x4102
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x3e34
	.long	.LASF397
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x154a
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF237
	.byte	0x1
	.byte	0xfe
	.long	0x3b
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x100
	.long	0x154a
	.byte	0x0
	.uleb128 0x2e
	.long	0x3ea9
	.long	.LASF398
	.byte	0x1
	.value	0x201
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x200
	.long	0x11ca
	.uleb128 0x29
	.long	.LASF216
	.byte	0x1
	.value	0x200
	.long	0x3b
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x202
	.long	0x1450
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x203
	.long	0x154a
	.uleb128 0x20
	.string	"h"
	.byte	0x1
	.value	0x204
	.long	0x3b
	.uleb128 0x20
	.string	"n1"
	.byte	0x1
	.value	0x204
	.long	0x3b
	.uleb128 0x24
	.long	.LASF295
	.byte	0x1
	.value	0x205
	.long	0x44e
	.uleb128 0x20
	.string	"tb1"
	.byte	0x1
	.value	0x206
	.long	0x11ca
	.uleb128 0x20
	.string	"tb2"
	.byte	0x1
	.value	0x206
	.long	0x11ca
	.byte	0x0
	.uleb128 0x38
	.long	0x3ec5
	.long	.LASF399
	.byte	0x3
	.byte	0xc6
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x33
	.string	"pc"
	.byte	0x3
	.byte	0xc5
	.long	0x42
	.byte	0x0
	.uleb128 0x2e
	.long	0x3f03
	.long	.LASF400
	.byte	0x1
	.value	0x1c0
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"ptb"
	.byte	0x1
	.value	0x1be
	.long	0x17b8
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x1be
	.long	0x11ca
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.value	0x1bf
	.long	0x57
	.uleb128 0x20
	.string	"tb1"
	.byte	0x1
	.value	0x1c1
	.long	0x11ca
	.byte	0x0
	.uleb128 0x2e
	.long	0x3f40
	.long	.LASF402
	.byte	0x1
	.value	0x1cd
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"ptb"
	.byte	0x1
	.value	0x1cc
	.long	0x17b8
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x1cc
	.long	0x11ca
	.uleb128 0x20
	.string	"tb1"
	.byte	0x1
	.value	0x1ce
	.long	0x11ca
	.uleb128 0x20
	.string	"n1"
	.byte	0x1
	.value	0x1cf
	.long	0x3b
	.byte	0x0
	.uleb128 0x38
	.long	0x3f67
	.long	.LASF403
	.byte	0x3
	.byte	0xbe
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x33
	.string	"pc"
	.byte	0x3
	.byte	0xbd
	.long	0x44e
	.uleb128 0x39
	.string	"tmp"
	.byte	0x3
	.byte	0xbf
	.long	0x44e
	.byte	0x0
	.uleb128 0x2e
	.long	0x3fae
	.long	.LASF404
	.byte	0x1
	.value	0x1de
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tb"
	.byte	0x1
	.value	0x1dd
	.long	0x11ca
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x1dd
	.long	0x57
	.uleb128 0x20
	.string	"tb1"
	.byte	0x1
	.value	0x1df
	.long	0x11ca
	.uleb128 0x20
	.string	"ptb"
	.byte	0x1
	.value	0x1df
	.long	0x17b8
	.uleb128 0x20
	.string	"n1"
	.byte	0x1
	.value	0x1e0
	.long	0x3b
	.byte	0x0
	.uleb128 0x2e
	.long	0x3fe1
	.long	.LASF405
	.byte	0x1
	.value	0x5bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"env"
	.byte	0x1
	.value	0x5bd
	.long	0x1450
	.uleb128 0x29
	.long	.LASF293
	.byte	0x1
	.value	0x5bd
	.long	0x464
	.uleb128 0x29
	.long	.LASF129
	.byte	0x1
	.value	0x5be
	.long	0x44e
	.byte	0x0
	.uleb128 0x2e
	.long	0x4027
	.long	.LASF406
	.byte	0x1
	.value	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x253
	.long	0x154a
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.value	0x255
	.long	0x57
	.uleb128 0x24
	.long	.LASF393
	.byte	0x1
	.value	0x255
	.long	0x57
	.uleb128 0x24
	.long	.LASF394
	.byte	0x1
	.value	0x255
	.long	0x57
	.uleb128 0x20
	.string	"tb"
	.byte	0x1
	.value	0x256
	.long	0x11ca
	.byte	0x0
	.uleb128 0x2e
	.long	0x407e
	.long	.LASF407
	.byte	0x1
	.value	0x239
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"tab"
	.byte	0x1
	.value	0x238
	.long	0x111d
	.uleb128 0x29
	.long	.LASF287
	.byte	0x1
	.value	0x238
	.long	0x57
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x238
	.long	0x57
	.uleb128 0x20
	.string	"end"
	.byte	0x1
	.value	0x23a
	.long	0x57
	.uleb128 0x24
	.long	.LASF222
	.byte	0x1
	.value	0x23a
	.long	0x57
	.uleb128 0x24
	.long	.LASF408
	.byte	0x1
	.value	0x23a
	.long	0x57
	.byte	0x0
	.uleb128 0x2e
	.long	0x410f
	.long	.LASF409
	.byte	0x1
	.value	0x277
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"env"
	.byte	0x1
	.value	0x274
	.long	0x1450
	.uleb128 0x2f
	.string	"pc"
	.byte	0x1
	.value	0x275
	.long	0x44e
	.uleb128 0x29
	.long	.LASF210
	.byte	0x1
	.value	0x275
	.long	0x44e
	.uleb128 0x29
	.long	.LASF92
	.byte	0x1
	.value	0x275
	.long	0x57
	.uleb128 0x29
	.long	.LASF212
	.byte	0x1
	.value	0x276
	.long	0x57
	.uleb128 0x20
	.string	"tb"
	.byte	0x1
	.value	0x278
	.long	0x11ca
	.uleb128 0x24
	.long	.LASF213
	.byte	0x1
	.value	0x279
	.long	0x111d
	.uleb128 0x24
	.long	.LASF295
	.byte	0x1
	.value	0x27a
	.long	0x44e
	.uleb128 0x24
	.long	.LASF296
	.byte	0x1
	.value	0x27a
	.long	0x44e
	.uleb128 0x24
	.long	.LASF410
	.byte	0x1
	.value	0x27a
	.long	0x44e
	.uleb128 0x24
	.long	.LASF411
	.byte	0x1
	.value	0x27b
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x4222
	.byte	0x1
	.long	.LASF412
	.byte	0x1
	.value	0xb94
	.byte	0x1
	.quad	.LFB310
	.quad	.LFE310
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb92
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xb92
	.long	0x3cb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0xb93
	.long	0x10e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xb95
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xb96
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xb97
	.long	0x42
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xb98
	.long	0x1317
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x540
	.uleb128 0x25
	.long	.LASF350
	.byte	0x1
	.value	0xba5
	.long	0x42
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	0x41c3
	.long	0x32ae
	.quad	.LBB270
	.quad	.LBE270
	.uleb128 0x27
	.long	0x32bc
	.uleb128 0x27
	.long	0x32c8
	.byte	0x0
	.uleb128 0x2b
	.long	0x4205
	.long	0x4222
	.quad	.LBB272
	.quad	.LBE272
	.uleb128 0x27
	.long	0x422f
	.uleb128 0x27
	.long	0x423a
	.uleb128 0x27
	.long	0x4245
	.uleb128 0x21
	.quad	.LBB273
	.quad	.LBE273
	.uleb128 0x2c
	.long	0x4250
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x145c
	.quad	.LBB274
	.quad	.LBE274
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x425a
	.long	.LASF413
	.byte	0x4
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0xe4
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0xe4
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0xe5
	.long	0x10e6
	.uleb128 0x39
	.string	"i"
	.byte	0x4
	.byte	0xe7
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x4369
	.byte	0x1
	.long	.LASF414
	.byte	0x1
	.value	0xb70
	.byte	0x1
	.quad	.LFB309
	.quad	.LFE309
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb6f
	.long	0x459
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xb6f
	.long	0x3cb
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xb71
	.long	0x57
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xb72
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xb73
	.long	0x42
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xb74
	.long	0x1317
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xb75
	.long	0x10ec
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x570
	.uleb128 0x25
	.long	.LASF350
	.byte	0x1
	.value	0xb82
	.long	0x42
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x430f
	.long	0x32ae
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x27
	.long	0x32bc
	.uleb128 0x27
	.long	0x32c8
	.byte	0x0
	.uleb128 0x2b
	.long	0x434c
	.long	0x32d3
	.quad	.LBB280
	.quad	.LBE280
	.uleb128 0x27
	.long	0x32e1
	.uleb128 0x27
	.long	0x32ed
	.uleb128 0x21
	.quad	.LBB281
	.quad	.LBE281
	.uleb128 0x2c
	.long	0x32f9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x145c
	.quad	.LBB282
	.quad	.LBE282
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x43c1
	.long	.LASF415
	.byte	0x1
	.value	0x8f8
	.byte	0x1
	.quad	.LFB284
	.quad	.LFE284
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8f6
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8f6
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x8f7
	.long	0x3cb
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8f7
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x45b9
	.byte	0x1
	.long	.LASF416
	.byte	0x1
	.value	0xa08
	.byte	0x1
	.quad	.LFB299
	.quad	.LFE299
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xa06
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xa06
	.long	0x111d
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xa07
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x1
	.value	0xa07
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.value	0xa09
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF313
	.byte	0x1
	.value	0xa09
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.value	0xa0a
	.long	0x111d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xa0b
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF349
	.byte	0x1
	.value	0xa0c
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0xa0d
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0xa0e
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	0x4491
	.long	.Ldebug_ranges0+0x5a0
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xa1e
	.long	0x10ec
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x32
	.long	0x44aa
	.long	.Ldebug_ranges0+0x5e0
	.uleb128 0x25
	.long	.LASF314
	.byte	0x1
	.value	0xa47
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x2b
	.long	0x44ce
	.long	0x45b9
	.quad	.LBB288
	.quad	.LBE288
	.uleb128 0x27
	.long	0x45c6
	.uleb128 0x27
	.long	0x45d1
	.byte	0x0
	.uleb128 0x2b
	.long	0x44f2
	.long	0x32ae
	.quad	.LBB290
	.quad	.LBE290
	.uleb128 0x27
	.long	0x32bc
	.uleb128 0x27
	.long	0x32c8
	.byte	0x0
	.uleb128 0x36
	.long	0x455a
	.quad	.LBB292
	.quad	.LBE292
	.uleb128 0x25
	.long	.LASF350
	.byte	0x1
	.value	0xa34
	.long	0x42
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	0x4534
	.long	0x145c
	.quad	.LBB293
	.quad	.LBE293
	.uleb128 0x27
	.long	0x146e
	.byte	0x0
	.uleb128 0x26
	.long	0x2e62
	.quad	.LBB297
	.quad	.LBE297
	.uleb128 0x27
	.long	0x2e70
	.uleb128 0x27
	.long	0x2e7c
	.uleb128 0x27
	.long	0x2e88
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4579
	.long	0x45db
	.quad	.LBB300
	.quad	.LBE300
	.uleb128 0x27
	.long	0x45ed
	.byte	0x0
	.uleb128 0x2b
	.long	0x4598
	.long	0x2532
	.quad	.LBB306
	.quad	.LBE306
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.uleb128 0x26
	.long	0x45fa
	.quad	.LBB311
	.quad	.LBE311
	.uleb128 0x27
	.long	0x4608
	.uleb128 0x27
	.long	0x4614
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x45db
	.long	.LASF418
	.byte	0x2
	.byte	0xd6
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"ptr"
	.byte	0x2
	.byte	0xd5
	.long	0x82
	.uleb128 0x33
	.string	"v"
	.byte	0x2
	.byte	0xd5
	.long	0x57
	.byte	0x0
	.uleb128 0x28
	.long	0x45fa
	.long	.LASF419
	.byte	0x2
	.value	0x155
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x154
	.long	0x82
	.byte	0x0
	.uleb128 0x2e
	.long	0x461f
	.long	.LASF420
	.byte	0x2
	.value	0x169
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"ptr"
	.byte	0x2
	.value	0x168
	.long	0x82
	.uleb128 0x2f
	.string	"v"
	.byte	0x2
	.value	0x168
	.long	0x57
	.byte	0x0
	.uleb128 0x22
	.long	0x46b2
	.byte	0x1
	.long	.LASF421
	.byte	0x1
	.value	0xbd6
	.byte	0x1
	.long	0x57
	.quad	.LFB315
	.quad	.LFE315
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0xbd4
	.long	0x1450
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xbd4
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xbd5
	.long	0x111d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xbd5
	.long	0x57
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x1
	.value	0xbd5
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.value	0xbd7
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF422
	.byte	0x1
	.value	0xbd8
	.long	0x459
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF349
	.byte	0x1
	.value	0xbd9
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2a
	.long	0x4723
	.byte	0x1
	.long	.LASF423
	.byte	0x1
	.value	0xbcc
	.byte	0x1
	.quad	.LFB314
	.quad	.LFE314
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xbca
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xbca
	.long	0x3d6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0xbcb
	.long	0x10e6
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x4723
	.quad	.LBB313
	.quad	.LBE313
	.uleb128 0x27
	.long	0x4731
	.uleb128 0x27
	.long	0x473d
	.uleb128 0x27
	.long	0x4749
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4756
	.long	.LASF424
	.byte	0x2
	.value	0x3a1
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF248
	.byte	0x2
	.value	0x39f
	.long	0x459
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.value	0x3a0
	.long	0x2e57
	.uleb128 0x2f
	.string	"len"
	.byte	0x2
	.value	0x3a0
	.long	0x57
	.byte	0x0
	.uleb128 0x2a
	.long	0x47b9
	.byte	0x1
	.long	.LASF425
	.byte	0x1
	.value	0xbc5
	.byte	0x1
	.quad	.LFB313
	.quad	.LFE313
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xbc4
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xbc4
	.long	0x3d6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	0x4723
	.quad	.LBB317
	.quad	.LBE317
	.uleb128 0x27
	.long	0x4731
	.uleb128 0x27
	.long	0x473d
	.uleb128 0x27
	.long	0x4749
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x4828
	.byte	0x1
	.long	.LASF426
	.byte	0x1
	.value	0xbbe
	.byte	0x1
	.quad	.LFB312
	.quad	.LFE312
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xbbd
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xbbd
	.long	0x3cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.value	0xbbf
	.long	0x3c0
	.byte	0x2
	.byte	0x91
	.sleb128 6
	.uleb128 0x26
	.long	0x4723
	.quad	.LBB321
	.quad	.LBE321
	.uleb128 0x27
	.long	0x4731
	.uleb128 0x27
	.long	0x473d
	.uleb128 0x27
	.long	0x4749
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4880
	.long	.LASF427
	.byte	0x1
	.value	0x8f1
	.byte	0x1
	.quad	.LFB283
	.quad	.LFE283
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8ef
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8ef
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x8f0
	.long	0x3cb
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8f0
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x48ef
	.byte	0x1
	.long	.LASF428
	.byte	0x1
	.value	0xbb7
	.byte	0x1
	.quad	.LFB311
	.quad	.LFE311
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xbb6
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0xbb6
	.long	0x3cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.value	0xbb8
	.long	0x3b5
	.byte	0x2
	.byte	0x91
	.sleb128 7
	.uleb128 0x26
	.long	0x4723
	.quad	.LBB325
	.quad	.LBE325
	.uleb128 0x27
	.long	0x4731
	.uleb128 0x27
	.long	0x473d
	.uleb128 0x27
	.long	0x4749
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4947
	.long	.LASF429
	.byte	0x1
	.value	0x8ea
	.byte	0x1
	.quad	.LFB282
	.quad	.LFE282
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8e8
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8e8
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x8e9
	.long	0x3cb
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8e9
	.long	0x10e6
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x49ae
	.byte	0x1
	.long	.LASF430
	.byte	0x1
	.value	0xb27
	.byte	0x1
	.long	0x3cb
	.quad	.LFB306
	.quad	.LFE306
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb26
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xb28
	.long	0x3c0
	.byte	0x2
	.byte	0x91
	.sleb128 6
	.uleb128 0x26
	.long	0x49ae
	.quad	.LBB329
	.quad	.LBE329
	.uleb128 0x27
	.long	0x49bc
	.uleb128 0x27
	.long	0x49c8
	.uleb128 0x27
	.long	0x49d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x49e1
	.long	.LASF431
	.byte	0x2
	.value	0x39c
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF248
	.byte	0x2
	.value	0x39a
	.long	0x459
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.value	0x39b
	.long	0x111d
	.uleb128 0x2f
	.string	"len"
	.byte	0x2
	.value	0x39b
	.long	0x57
	.byte	0x0
	.uleb128 0x1d
	.long	0x4a2f
	.long	.LASF432
	.byte	0x1
	.value	0x8c6
	.byte	0x1
	.long	0x3cb
	.quad	.LFB279
	.quad	.LFE279
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8c5
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8c5
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8c5
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x4a96
	.byte	0x1
	.long	.LASF433
	.byte	0x1
	.value	0xb1f
	.byte	0x1
	.long	0x3cb
	.quad	.LFB305
	.quad	.LFE305
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0xb1e
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0xb20
	.long	0x3b5
	.byte	0x2
	.byte	0x91
	.sleb128 7
	.uleb128 0x26
	.long	0x49ae
	.quad	.LBB331
	.quad	.LBE331
	.uleb128 0x27
	.long	0x49bc
	.uleb128 0x27
	.long	0x49c8
	.uleb128 0x27
	.long	0x49d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x4ae4
	.long	.LASF434
	.byte	0x1
	.value	0x8c1
	.byte	0x1
	.long	0x3cb
	.quad	.LFB278
	.quad	.LFE278
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x8c0
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x8c0
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x8c0
	.long	0x1117
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x4b54
	.long	.LASF435
	.byte	0x1
	.value	0x428
	.byte	0x1
	.quad	.LFB242
	.quad	.LFE242
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x427
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"pc"
	.byte	0x1
	.value	0x427
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF248
	.byte	0x1
	.value	0x429
	.long	0x459
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"pd"
	.byte	0x1
	.value	0x42a
	.long	0x44e
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF293
	.byte	0x1
	.value	0x42b
	.long	0x464
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x42c
	.long	0x1317
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x4bb0
	.byte	0x1
	.long	.LASF436
	.byte	0x1
	.value	0x479
	.byte	0x1
	.long	0x57
	.quad	.LFB246
	.quad	.LFE246
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x478
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"pc"
	.byte	0x1
	.value	0x478
	.long	0x44e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x47b
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x34
	.long	.LASF379
	.byte	0x1
	.value	0x481
	.quad	.L839
	.byte	0x0
	.uleb128 0x22
	.long	0x4bfc
	.byte	0x1
	.long	.LASF437
	.byte	0x1
	.value	0x463
	.byte	0x1
	.long	0x57
	.quad	.LFB245
	.quad	.LFE245
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.value	0x462
	.long	0x1450
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"pc"
	.byte	0x1
	.value	0x462
	.long	0x44e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x465
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x4dec
	.long	.LASF438
	.byte	0x1
	.value	0x896
	.byte	0x1
	.quad	.LFB277
	.quad	.LFE277
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x895
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x895
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x895
	.long	0x3cb
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x895
	.long	0x10e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF293
	.byte	0x1
	.value	0x897
	.long	0x42
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF288
	.byte	0x1
	.value	0x898
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.long	0x4ce1
	.long	0x4dec
	.quad	.LBB333
	.quad	.LBE333
	.uleb128 0x31
	.long	0x4dfa
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	0x4e06
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x630
	.uleb128 0x37
	.long	0x4e12
	.uleb128 0x37
	.long	0x4e1c
	.uleb128 0x37
	.long	0x4e28
	.uleb128 0x46
	.long	0x4e32
	.quad	.L867
	.uleb128 0x26
	.long	0x3e0d
	.quad	.LBB335
	.quad	.LBE335
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x670
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4d05
	.long	0x32ae
	.quad	.LBB341
	.quad	.LBE341
	.uleb128 0x27
	.long	0x32bc
	.uleb128 0x27
	.long	0x32c8
	.byte	0x0
	.uleb128 0x2b
	.long	0x4d47
	.long	0x4222
	.quad	.LBB343
	.quad	.LBE343
	.uleb128 0x27
	.long	0x422f
	.uleb128 0x27
	.long	0x423a
	.uleb128 0x27
	.long	0x4245
	.uleb128 0x21
	.quad	.LBB344
	.quad	.LBE344
	.uleb128 0x2c
	.long	0x4250
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4e3b
	.quad	.LBB345
	.quad	.LBE345
	.uleb128 0x31
	.long	0x4e49
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	0x4e55
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4e61
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	0x4d80
	.long	.Ldebug_ranges0+0x6b0
	.uleb128 0x37
	.long	0x4e6d
	.byte	0x0
	.uleb128 0x2b
	.long	0x4db1
	.long	0x4e78
	.quad	.LBB348
	.quad	.LBE348
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x6f0
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4e78
	.quad	.LBB350
	.quad	.LBE350
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x21
	.quad	.LBB351
	.quad	.LBE351
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x4e3b
	.long	.LASF439
	.byte	0x1
	.value	0x30e
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF287
	.byte	0x1
	.value	0x30d
	.long	0x44e
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x30d
	.long	0x57
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.value	0x30f
	.long	0x154a
	.uleb128 0x24
	.long	.LASF440
	.byte	0x1
	.value	0x310
	.long	0x57
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.value	0x310
	.long	0x57
	.uleb128 0x47
	.long	.LASF441
	.byte	0x1
	.value	0x324
	.byte	0x0
	.uleb128 0x2e
	.long	0x4e78
	.long	.LASF442
	.byte	0x1
	.value	0x64d
	.byte	0x1
	.byte	0x3
	.uleb128 0x2f
	.string	"env"
	.byte	0x1
	.value	0x64b
	.long	0x1450
	.uleb128 0x29
	.long	.LASF248
	.byte	0x1
	.value	0x64c
	.long	0x42
	.uleb128 0x29
	.long	.LASF129
	.byte	0x1
	.value	0x64c
	.long	0x44e
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x64e
	.long	0x57
	.byte	0x0
	.uleb128 0x2e
	.long	0x4eab
	.long	.LASF443
	.byte	0x1
	.value	0x63f
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF282
	.byte	0x1
	.value	0x63d
	.long	0x1456
	.uleb128 0x29
	.long	.LASF287
	.byte	0x1
	.value	0x63e
	.long	0x42
	.uleb128 0x24
	.long	.LASF248
	.byte	0x1
	.value	0x640
	.long	0x42
	.byte	0x0
	.uleb128 0x30
	.long	0x5084
	.long	.LASF444
	.byte	0x1
	.value	0x87b
	.byte	0x1
	.quad	.LFB276
	.quad	.LFE276
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x87a
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x87a
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x87a
	.long	0x3cb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x87a
	.long	0x10e6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF293
	.byte	0x1
	.value	0x87c
	.long	0x42
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF288
	.byte	0x1
	.value	0x87d
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x4f90
	.long	0x4dec
	.quad	.LBB358
	.quad	.LBE358
	.uleb128 0x31
	.long	0x4dfa
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	0x4e06
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x720
	.uleb128 0x37
	.long	0x4e12
	.uleb128 0x37
	.long	0x4e1c
	.uleb128 0x37
	.long	0x4e28
	.uleb128 0x46
	.long	0x4e32
	.quad	.L895
	.uleb128 0x26
	.long	0x3e0d
	.quad	.LBB360
	.quad	.LBE360
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x760
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4fb4
	.long	0x45fa
	.quad	.LBB366
	.quad	.LBE366
	.uleb128 0x27
	.long	0x4608
	.uleb128 0x27
	.long	0x4614
	.byte	0x0
	.uleb128 0x2b
	.long	0x4fdf
	.long	0x5084
	.quad	.LBB368
	.quad	.LBE368
	.uleb128 0x31
	.long	0x5091
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x509c
	.uleb128 0x27
	.long	0x50a7
	.byte	0x0
	.uleb128 0x26
	.long	0x4e3b
	.quad	.LBB372
	.quad	.LBE372
	.uleb128 0x31
	.long	0x4e49
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	0x4e55
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4e61
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	0x5018
	.long	.Ldebug_ranges0+0x7a0
	.uleb128 0x37
	.long	0x4e6d
	.byte	0x0
	.uleb128 0x2b
	.long	0x5049
	.long	0x4e78
	.quad	.LBB375
	.quad	.LBE375
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x7e0
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4e78
	.quad	.LBB377
	.quad	.LBE377
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x21
	.quad	.LBB378
	.quad	.LBE378
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x50b3
	.long	.LASF445
	.byte	0x4
	.byte	0xdb
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0xd9
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0xd9
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0xda
	.long	0x10e6
	.byte	0x0
	.uleb128 0x30
	.long	0x528c
	.long	.LASF446
	.byte	0x1
	.value	0x860
	.byte	0x1
	.quad	.LFB275
	.quad	.LFE275
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x85f
	.long	0x82
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.value	0x85f
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x85f
	.long	0x3cb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"tag"
	.byte	0x1
	.value	0x85f
	.long	0x10e6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.long	.LASF293
	.byte	0x1
	.value	0x861
	.long	0x42
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF288
	.byte	0x1
	.value	0x862
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x5198
	.long	0x4dec
	.quad	.LBB385
	.quad	.LBE385
	.uleb128 0x31
	.long	0x4dfa
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	0x4e06
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x810
	.uleb128 0x37
	.long	0x4e12
	.uleb128 0x37
	.long	0x4e1c
	.uleb128 0x37
	.long	0x4e28
	.uleb128 0x46
	.long	0x4e32
	.quad	.L917
	.uleb128 0x26
	.long	0x3e0d
	.quad	.LBB387
	.quad	.LBE387
	.uleb128 0x31
	.long	0x3e1e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x850
	.uleb128 0x2c
	.long	0x3e29
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x51bc
	.long	0x45b9
	.quad	.LBB393
	.quad	.LBE393
	.uleb128 0x27
	.long	0x45c6
	.uleb128 0x27
	.long	0x45d1
	.byte	0x0
	.uleb128 0x2b
	.long	0x51e7
	.long	0x528c
	.quad	.LBB395
	.quad	.LBE395
	.uleb128 0x31
	.long	0x5299
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x52a4
	.uleb128 0x27
	.long	0x52af
	.byte	0x0
	.uleb128 0x26
	.long	0x4e3b
	.quad	.LBB399
	.quad	.LBE399
	.uleb128 0x31
	.long	0x4e49
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	0x4e55
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4e61
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	0x5220
	.long	.Ldebug_ranges0+0x890
	.uleb128 0x37
	.long	0x4e6d
	.byte	0x0
	.uleb128 0x2b
	.long	0x5251
	.long	0x4e78
	.quad	.LBB402
	.quad	.LBE402
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x8d0
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4e78
	.quad	.LBB404
	.quad	.LBE404
	.uleb128 0x31
	.long	0x4e86
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x4e92
	.uleb128 0x21
	.quad	.LBB405
	.quad	.LBE405
	.uleb128 0x37
	.long	0x4e9e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x52bb
	.long	.LASF447
	.byte	0x4
	.byte	0xd3
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0xd1
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0xd1
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0xd2
	.long	0x10e6
	.byte	0x0
	.uleb128 0x40
	.long	0x546c
	.long	.LASF448
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3b5
	.quad	.LFB322
	.quad	.LFE322
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xb9
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xba
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xbb
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x48
	.string	"s"
	.byte	0x5
	.byte	0xbc
	.long	0x3b
	.byte	0x1
	.byte	0x5a
	.uleb128 0x48
	.string	"e"
	.byte	0x5
	.byte	0xbd
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0xbe
	.long	0x1117
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.byte	0x1
	.byte	0x56
	.uleb128 0x3e
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3b5
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x3e
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L932
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L939
	.uleb128 0x36
	.long	0x5404
	.quad	.LBB412
	.quad	.LBE412
	.uleb128 0x42
	.string	"off"
	.byte	0x5
	.byte	0xfb
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x546c
	.quad	.LBB413
	.quad	.LBE413
	.uleb128 0x31
	.long	0x5479
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x5484
	.uleb128 0x27
	.long	0x548f
	.uleb128 0x27
	.long	0x549a
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x5449
	.long	0x54a6
	.quad	.LBB417
	.quad	.LBE417
	.uleb128 0x27
	.long	0x54b7
	.uleb128 0x27
	.long	0x54c2
	.uleb128 0x27
	.long	0x54cd
	.uleb128 0x21
	.quad	.LBB418
	.quad	.LBE418
	.uleb128 0x37
	.long	0x54d8
	.uleb128 0x37
	.long	0x54e3
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x900
	.uleb128 0x43
	.long	.LASF449
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x43
	.long	.LASF450
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x54a6
	.long	.LASF451
	.byte	0x4
	.byte	0x92
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0x90
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0x90
	.long	0x42
	.uleb128 0x3a
	.long	.LASF241
	.byte	0x4
	.byte	0x91
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0x91
	.long	0x1117
	.byte	0x0
	.uleb128 0x38
	.long	0x54ef
	.long	.LASF452
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3b5
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x3b
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x3c
	.long	0x44e
	.uleb128 0x33
	.string	"tag"
	.byte	0x5
	.byte	0x3d
	.long	0x1117
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3b5
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.byte	0x0
	.uleb128 0x45
	.long	0x5608
	.byte	0x1
	.long	.LASF453
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3b5
	.quad	.LFB321
	.quad	.LFE321
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x69
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6a
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0x6b
	.long	0x1117
	.byte	0x1
	.byte	0x5e
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3b5
	.byte	0x1
	.byte	0x52
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x52
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L963
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L970
	.uleb128 0x2b
	.long	0x55c6
	.long	0x546c
	.quad	.LBB421
	.quad	.LBE421
	.uleb128 0x31
	.long	0x5479
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	0x5484
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x548f
	.uleb128 0x27
	.long	0x549a
	.byte	0x0
	.uleb128 0x26
	.long	0x54a6
	.quad	.LBB424
	.quad	.LBE424
	.uleb128 0x27
	.long	0x54b7
	.uleb128 0x27
	.long	0x54c2
	.uleb128 0x27
	.long	0x54cd
	.uleb128 0x21
	.quad	.LBB425
	.quad	.LBE425
	.uleb128 0x37
	.long	0x54d8
	.uleb128 0x37
	.long	0x54e3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x572b
	.long	.LASF454
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3c0
	.quad	.LFB325
	.quad	.LFE325
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xc0
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xc1
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xc2
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x50
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L986
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L990
	.uleb128 0x26
	.long	0x572b
	.quad	.LBB428
	.quad	.LBE428
	.uleb128 0x27
	.long	0x573c
	.uleb128 0x27
	.long	0x5747
	.uleb128 0x21
	.quad	.LBB429
	.quad	.LBE429
	.uleb128 0x37
	.long	0x5752
	.uleb128 0x37
	.long	0x575d
	.uleb128 0x2c
	.long	0x5768
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	0x5773
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x577f
	.long	.LASF455
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3c0
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x42
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x43
	.long	0x44e
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3c0
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.uleb128 0x3e
	.long	.LASF314
	.byte	0x5
	.byte	0x4a
	.long	0x709
	.uleb128 0x39
	.string	"tag"
	.byte	0x5
	.byte	0x4a
	.long	0x1117
	.byte	0x0
	.uleb128 0x45
	.long	0x5861
	.byte	0x1
	.long	.LASF456
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3c0
	.quad	.LFB324
	.quad	.LFE324
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x6d
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6e
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3c0
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L999
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1003
	.uleb128 0x26
	.long	0x572b
	.quad	.LBB430
	.quad	.LBE430
	.uleb128 0x27
	.long	0x573c
	.uleb128 0x27
	.long	0x5747
	.uleb128 0x21
	.quad	.LBB431
	.quad	.LBE431
	.uleb128 0x37
	.long	0x5752
	.uleb128 0x37
	.long	0x575d
	.uleb128 0x2c
	.long	0x5768
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	0x5773
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x5a0a
	.long	.LASF457
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3c0
	.quad	.LFB328
	.quad	.LFE328
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xb9
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xba
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xbb
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x48
	.string	"s"
	.byte	0x5
	.byte	0xbc
	.long	0x3b
	.byte	0x1
	.byte	0x5a
	.uleb128 0x48
	.string	"e"
	.byte	0x5
	.byte	0xbd
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0xbe
	.long	0x1117
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x50
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3c0
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L1011
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L1015
	.uleb128 0x2b
	.long	0x59a4
	.long	0x5a0a
	.quad	.LBB432
	.quad	.LBE432
	.uleb128 0x27
	.long	0x5a1b
	.uleb128 0x27
	.long	0x5a26
	.uleb128 0x27
	.long	0x5a31
	.uleb128 0x21
	.quad	.LBB433
	.quad	.LBE433
	.uleb128 0x37
	.long	0x5a3c
	.uleb128 0x37
	.long	0x5a47
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x59ca
	.long	.Ldebug_ranges0+0x930
	.uleb128 0x43
	.long	.LASF449
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x43
	.long	.LASF450
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x9c0
	.uleb128 0x42
	.string	"off"
	.byte	0x5
	.byte	0xfb
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x546c
	.quad	.LBB442
	.quad	.LBE442
	.uleb128 0x31
	.long	0x5479
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x5484
	.uleb128 0x27
	.long	0x548f
	.uleb128 0x27
	.long	0x549a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x5a53
	.long	.LASF458
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3c0
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x3b
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x3c
	.long	0x44e
	.uleb128 0x33
	.string	"tag"
	.byte	0x5
	.byte	0x3d
	.long	0x1117
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3c0
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.byte	0x0
	.uleb128 0x45
	.long	0x5b6c
	.byte	0x1
	.long	.LASF459
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3c0
	.quad	.LFB327
	.quad	.LFE327
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x69
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6a
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0x6b
	.long	0x1117
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3c0
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L1038
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1042
	.uleb128 0x2b
	.long	0x5b3d
	.long	0x5a0a
	.quad	.LBB448
	.quad	.LBE448
	.uleb128 0x27
	.long	0x5a1b
	.uleb128 0x27
	.long	0x5a26
	.uleb128 0x27
	.long	0x5a31
	.uleb128 0x21
	.quad	.LBB449
	.quad	.LBE449
	.uleb128 0x37
	.long	0x5a3c
	.uleb128 0x37
	.long	0x5a47
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x5b6c
	.quad	.LBB450
	.quad	.LBE450
	.uleb128 0x31
	.long	0x5b79
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	0x5b84
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x5b8f
	.uleb128 0x27
	.long	0x5b9a
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x5ba6
	.long	.LASF460
	.byte	0x4
	.byte	0x9c
	.byte	0x1
	.byte	0x3
	.uleb128 0x33
	.string	"map"
	.byte	0x4
	.byte	0x9a
	.long	0x105a
	.uleb128 0x3a
	.long	.LASF352
	.byte	0x4
	.byte	0x9a
	.long	0x42
	.uleb128 0x3a
	.long	.LASF241
	.byte	0x4
	.byte	0x9b
	.long	0x42
	.uleb128 0x33
	.string	"tag"
	.byte	0x4
	.byte	0x9b
	.long	0x1117
	.byte	0x0
	.uleb128 0x40
	.long	0x5cdc
	.long	.LASF461
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3cb
	.quad	.LFB331
	.quad	.LFE331
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xc0
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xc1
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xc2
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L1060
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L1064
	.uleb128 0x2b
	.long	0x5cc0
	.long	0x5cdc
	.quad	.LBB455
	.quad	.LBE455
	.uleb128 0x27
	.long	0x5ced
	.uleb128 0x27
	.long	0x5cf8
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x9f0
	.uleb128 0x37
	.long	0x5d03
	.uleb128 0x37
	.long	0x5d0e
	.uleb128 0x2c
	.long	0x5d19
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	0x5d24
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2532
	.quad	.LBB459
	.quad	.LBE459
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x5d30
	.long	.LASF462
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3cb
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x42
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x43
	.long	0x44e
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3cb
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.uleb128 0x3e
	.long	.LASF314
	.byte	0x5
	.byte	0x4a
	.long	0x709
	.uleb128 0x39
	.string	"tag"
	.byte	0x5
	.byte	0x4a
	.long	0x1117
	.byte	0x0
	.uleb128 0x45
	.long	0x5e31
	.byte	0x1
	.long	.LASF463
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3cb
	.quad	.LFB330
	.quad	.LFE330
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x6d
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6e
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3cb
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L1073
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1077
	.uleb128 0x2b
	.long	0x5e15
	.long	0x5cdc
	.quad	.LBB461
	.quad	.LBE461
	.uleb128 0x27
	.long	0x5ced
	.uleb128 0x27
	.long	0x5cf8
	.uleb128 0x21
	.quad	.LBB462
	.quad	.LBE462
	.uleb128 0x37
	.long	0x5d03
	.uleb128 0x37
	.long	0x5d0e
	.uleb128 0x2c
	.long	0x5d19
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	0x5d24
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2532
	.quad	.LBB463
	.quad	.LBE463
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x5fed
	.long	.LASF464
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3cb
	.quad	.LFB334
	.quad	.LFE334
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xb9
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xba
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xbb
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x48
	.string	"s"
	.byte	0x5
	.byte	0xbc
	.long	0x3b
	.byte	0x1
	.byte	0x5a
	.uleb128 0x48
	.string	"e"
	.byte	0x5
	.byte	0xbd
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0xbe
	.long	0x1117
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x51
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x5d
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3cb
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L1085
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L1089
	.uleb128 0x2b
	.long	0x5f68
	.long	0x5fed
	.quad	.LBB465
	.quad	.LBE465
	.uleb128 0x27
	.long	0x5ffe
	.uleb128 0x27
	.long	0x6009
	.uleb128 0x27
	.long	0x6014
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xa20
	.uleb128 0x37
	.long	0x601f
	.uleb128 0x37
	.long	0x602a
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x5f8e
	.long	.Ldebug_ranges0+0xa50
	.uleb128 0x43
	.long	.LASF449
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x43
	.long	.LASF450
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x32
	.long	0x5fd1
	.long	.Ldebug_ranges0+0xae0
	.uleb128 0x42
	.string	"off"
	.byte	0x5
	.byte	0xfb
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x546c
	.quad	.LBB477
	.quad	.LBE477
	.uleb128 0x31
	.long	0x5479
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x5484
	.uleb128 0x27
	.long	0x548f
	.uleb128 0x27
	.long	0x549a
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x2532
	.quad	.LBB483
	.quad	.LBE483
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x6036
	.long	.LASF465
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3cb
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x3b
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x3c
	.long	0x44e
	.uleb128 0x33
	.string	"tag"
	.byte	0x5
	.byte	0x3d
	.long	0x1117
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3cb
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.byte	0x0
	.uleb128 0x45
	.long	0x617f
	.byte	0x1
	.long	.LASF466
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3cb
	.quad	.LFB333
	.quad	.LFE333
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x69
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6a
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0x6b
	.long	0x1117
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3cb
	.byte	0x1
	.byte	0x58
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L1112
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1116
	.uleb128 0x2b
	.long	0x6120
	.long	0x5fed
	.quad	.LBB485
	.quad	.LBE485
	.uleb128 0x27
	.long	0x5ffe
	.uleb128 0x27
	.long	0x6009
	.uleb128 0x27
	.long	0x6014
	.uleb128 0x21
	.quad	.LBB486
	.quad	.LBE486
	.uleb128 0x37
	.long	0x601f
	.uleb128 0x37
	.long	0x602a
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x6152
	.long	0x2f83
	.quad	.LBB487
	.quad	.LBE487
	.uleb128 0x31
	.long	0x2f90
	.byte	0x1
	.byte	0x59
	.uleb128 0x31
	.long	0x2f9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x2fa6
	.uleb128 0x27
	.long	0x2fb1
	.byte	0x0
	.uleb128 0x2b
	.long	0x6171
	.long	0x2532
	.quad	.LBB488
	.quad	.LBE488
	.uleb128 0x27
	.long	0x2544
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xb10
	.uleb128 0x2c
	.long	0x2fbc
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x62b9
	.long	.LASF467
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3d6
	.quad	.LFB337
	.quad	.LFE337
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xc0
	.long	0x44e
	.byte	0x1
	.byte	0x5d
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xc1
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xc2
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x54
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L1138
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L1142
	.uleb128 0x2b
	.long	0x629d
	.long	0x62b9
	.quad	.LBB494
	.quad	.LBE494
	.uleb128 0x27
	.long	0x62ca
	.uleb128 0x27
	.long	0x62d5
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xb40
	.uleb128 0x2c
	.long	0x62e0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x37
	.long	0x62eb
	.uleb128 0x2c
	.long	0x62f6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	0x6301
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3062
	.quad	.LBB500
	.quad	.LBE500
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x630d
	.long	.LASF468
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3d6
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x42
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x43
	.long	0x44e
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3d6
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.uleb128 0x3e
	.long	.LASF314
	.byte	0x5
	.byte	0x4a
	.long	0x709
	.uleb128 0x39
	.string	"tag"
	.byte	0x5
	.byte	0x4a
	.long	0x1117
	.byte	0x0
	.uleb128 0x45
	.long	0x6406
	.byte	0x1
	.long	.LASF469
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3d6
	.quad	.LFB336
	.quad	.LFE336
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x6d
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6e
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3d6
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L1151
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1155
	.uleb128 0x2b
	.long	0x63ea
	.long	0x62b9
	.quad	.LBB502
	.quad	.LBE502
	.uleb128 0x27
	.long	0x62ca
	.uleb128 0x27
	.long	0x62d5
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xb80
	.uleb128 0x2c
	.long	0x62e0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x37
	.long	0x62eb
	.uleb128 0x2c
	.long	0x62f6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	0x6301
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3062
	.quad	.LBB506
	.quad	.LBE506
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x65c4
	.long	.LASF470
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.long	0x3d6
	.quad	.LFB340
	.quad	.LFE340
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0xb9
	.long	0x44e
	.byte	0x1
	.byte	0x56
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0xba
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x41
	.long	.LASF319
	.byte	0x5
	.byte	0xbb
	.long	0x82
	.byte	0x1
	.byte	0x5f
	.uleb128 0x48
	.string	"s"
	.byte	0x5
	.byte	0xbc
	.long	0x3b
	.byte	0x1
	.byte	0x5a
	.uleb128 0x48
	.string	"e"
	.byte	0x5
	.byte	0xbd
	.long	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0xbe
	.long	0x1117
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x51
	.uleb128 0x43
	.long	.LASF373
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x43
	.long	.LASF374
	.byte	0x5
	.byte	0xc5
	.long	0x3d6
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x3e
	.long	.LASF375
	.byte	0x5
	.byte	0xc6
	.long	0x57
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0xc7
	.long	0x459
	.byte	0x1
	.byte	0x5d
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF350
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x55
	.uleb128 0x43
	.long	.LASF378
	.byte	0x5
	.byte	0xc8
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF380
	.byte	0x5
	.value	0x107
	.quad	.L1163
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0xdc
	.quad	.L1167
	.uleb128 0x2b
	.long	0x653f
	.long	0x65c4
	.quad	.LBB508
	.quad	.LBE508
	.uleb128 0x27
	.long	0x65d5
	.uleb128 0x27
	.long	0x65e0
	.uleb128 0x27
	.long	0x65eb
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xbb0
	.uleb128 0x2c
	.long	0x65f6
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	0x6601
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6565
	.long	.Ldebug_ranges0+0xbe0
	.uleb128 0x43
	.long	.LASF449
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x43
	.long	.LASF450
	.byte	0x5
	.byte	0xda
	.long	0x709
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x32
	.long	0x65a8
	.long	.Ldebug_ranges0+0xc70
	.uleb128 0x42
	.string	"off"
	.byte	0x5
	.byte	0xfb
	.long	0x42
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x546c
	.quad	.LBB520
	.quad	.LBE520
	.uleb128 0x31
	.long	0x5479
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x5484
	.uleb128 0x27
	.long	0x548f
	.uleb128 0x27
	.long	0x549a
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3062
	.quad	.LBB526
	.quad	.LBE526
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x660d
	.long	.LASF471
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.long	0x3d6
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF376
	.byte	0x5
	.byte	0x3b
	.long	0x459
	.uleb128 0x3a
	.long	.LASF377
	.byte	0x5
	.byte	0x3c
	.long	0x44e
	.uleb128 0x33
	.string	"tag"
	.byte	0x5
	.byte	0x3d
	.long	0x1117
	.uleb128 0x39
	.string	"res"
	.byte	0x5
	.byte	0x46
	.long	0x3d6
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x47
	.long	0x57
	.byte	0x0
	.uleb128 0x45
	.long	0x6758
	.byte	0x1
	.long	.LASF472
	.byte	0x5
	.byte	0x70
	.byte	0x1
	.long	0x3d6
	.quad	.LFB339
	.quad	.LFE339
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.long	.LASF248
	.byte	0x5
	.byte	0x69
	.long	0x44e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x41
	.long	.LASF243
	.byte	0x5
	.byte	0x6a
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x48
	.string	"tag"
	.byte	0x5
	.byte	0x6b
	.long	0x1117
	.byte	0x1
	.byte	0x5f
	.uleb128 0x42
	.string	"res"
	.byte	0x5
	.byte	0x71
	.long	0x3d6
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.long	.LASF237
	.byte	0x5
	.byte	0x72
	.long	0x57
	.uleb128 0x43
	.long	.LASF377
	.byte	0x5
	.byte	0x73
	.long	0x44e
	.byte	0x1
	.byte	0x53
	.uleb128 0x43
	.long	.LASF376
	.byte	0x5
	.byte	0x74
	.long	0x459
	.byte	0x1
	.byte	0x56
	.uleb128 0x3e
	.long	.LASF319
	.byte	0x5
	.byte	0x75
	.long	0x82
	.uleb128 0x44
	.long	.LASF380
	.byte	0x5
	.byte	0xb2
	.quad	.L1190
	.uleb128 0x44
	.long	.LASF381
	.byte	0x5
	.byte	0x8d
	.quad	.L1194
	.uleb128 0x2b
	.long	0x66f9
	.long	0x65c4
	.quad	.LBB528
	.quad	.LBE528
	.uleb128 0x27
	.long	0x65d5
	.uleb128 0x27
	.long	0x65e0
	.uleb128 0x27
	.long	0x65eb
	.uleb128 0x21
	.quad	.LBB529
	.quad	.LBE529
	.uleb128 0x2c
	.long	0x65f6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x37
	.long	0x6601
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x672b
	.long	0x316f
	.quad	.LBB530
	.quad	.LBE530
	.uleb128 0x31
	.long	0x317c
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	0x3187
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	0x3192
	.uleb128 0x27
	.long	0x319d
	.byte	0x0
	.uleb128 0x2b
	.long	0x674a
	.long	0x3062
	.quad	.LBB531
	.quad	.LBE531
	.uleb128 0x27
	.long	0x3074
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xca0
	.uleb128 0x2c
	.long	0x31a8
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.long	.LASF473
	.byte	0xd
	.byte	0x91
	.long	0x37e
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF474
	.byte	0xd
	.byte	0x92
	.long	0x37e
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF475
	.byte	0xd
	.byte	0x93
	.long	0x37e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF476
	.byte	0x1
	.byte	0x64
	.long	0x6795
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_memmap
	.uleb128 0x6
	.byte	0x8
	.long	0x6d5
	.uleb128 0x4a
	.long	.LASF477
	.byte	0x1
	.byte	0x65
	.long	0x10ec
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_clean_tag
	.uleb128 0x4a
	.long	.LASF478
	.byte	0x1
	.byte	0x66
	.long	0x709
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	argos_trash_tag
	.uleb128 0x4a
	.long	.LASF479
	.byte	0x1
	.byte	0x89
	.long	0x42
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_real_host_page_size
	.uleb128 0x4a
	.long	.LASF480
	.byte	0x1
	.byte	0x8a
	.long	0x42
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_host_page_bits
	.uleb128 0x4a
	.long	.LASF481
	.byte	0x1
	.byte	0x8b
	.long	0x42
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_host_page_size
	.uleb128 0x4a
	.long	.LASF482
	.byte	0x1
	.byte	0x8c
	.long	0x42
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	qemu_host_page_mask
	.uleb128 0x4a
	.long	.LASF483
	.byte	0x1
	.byte	0x68
	.long	0x1450
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	first_cpu
	.uleb128 0x4a
	.long	.LASF484
	.byte	0x1
	.byte	0x6b
	.long	0x1450
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	cpu_single_env
	.uleb128 0x9
	.long	0x685b
	.long	0x10b3
	.uleb128 0xa
	.long	0x7b
	.byte	0x8
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF485
	.byte	0x1
	.value	0x4d6
	.long	0x684b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	cpu_log_items
	.uleb128 0x4a
	.long	.LASF486
	.byte	0x1
	.byte	0x5b
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	phys_ram_size
	.uleb128 0x4a
	.long	.LASF487
	.byte	0x1
	.byte	0x5c
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	phys_ram_fd
	.uleb128 0x4a
	.long	.LASF488
	.byte	0x1
	.byte	0x5d
	.long	0x111d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	phys_ram_base
	.uleb128 0x4a
	.long	.LASF489
	.byte	0x1
	.byte	0x5e
	.long	0x111d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	phys_ram_dirty
	.uleb128 0x4a
	.long	.LASF106
	.byte	0x1
	.byte	0x9d
	.long	0x889
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	logfile
	.uleb128 0x4a
	.long	.LASF490
	.byte	0x1
	.byte	0x9e
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	loglevel
	.uleb128 0x9
	.long	0x6907
	.long	0x11ca
	.uleb128 0x17
	.long	0x7b
	.value	0x7fff
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF491
	.byte	0x1
	.byte	0x53
	.long	0x68f6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tb_phys_hash
	.uleb128 0x9
	.long	0x6930
	.long	0x3b5
	.uleb128 0x4c
	.long	0x7b
	.long	0xffffff
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF492
	.byte	0x1
	.byte	0x58
	.long	0x691d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	code_gen_buffer
	.uleb128 0x4a
	.long	.LASF493
	.byte	0x1
	.byte	0x59
	.long	0x111d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	code_gen_ptr
	.uleb128 0x9
	.long	0x6972
	.long	0x1267
	.uleb128 0xa
	.long	0x7b
	.byte	0xff
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF494
	.byte	0x1
	.byte	0x93
	.long	0x695c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	io_mem_write
	.uleb128 0x9
	.long	0x699e
	.long	0x1244
	.uleb128 0xa
	.long	0x7b
	.byte	0xff
	.uleb128 0xa
	.long	0x7b
	.byte	0x3
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF495
	.byte	0x1
	.byte	0x94
	.long	0x6988
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	io_mem_read
	.uleb128 0x9
	.long	0x69c4
	.long	0x82
	.uleb128 0xa
	.long	0x7b
	.byte	0xff
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF496
	.byte	0x1
	.byte	0x95
	.long	0x69b4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	io_mem_opaque
	.uleb128 0x4a
	.long	.LASF497
	.byte	0x1
	.byte	0x56
	.long	0x115e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tb_lock
	.uleb128 0x4d
	.long	.LASF498
	.byte	0x3
	.value	0x1fe
	.long	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x6a11
	.long	0x1153
	.uleb128 0x4c
	.long	0x7b
	.long	0x1ffff
	.byte	0x0
	.uleb128 0x4e
	.string	"tbs"
	.byte	0x1
	.byte	0x52
	.long	0x69fe
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tbs
	.uleb128 0x4a
	.long	.LASF499
	.byte	0x1
	.byte	0x54
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_tbs
	.uleb128 0x43
	.long	.LASF500
	.byte	0x1
	.byte	0x5f
	.long	0x464
	.byte	0x9
	.byte	0x3
	.quad	phys_ram_alloc_offset
	.uleb128 0x9
	.long	0x6a63
	.long	0x154a
	.uleb128 0x17
	.long	0x7b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x43
	.long	.LASF501
	.byte	0x1
	.byte	0x8f
	.long	0x6a52
	.byte	0x9
	.byte	0x3
	.quad	l1_map
	.uleb128 0x4a
	.long	.LASF502
	.byte	0x1
	.byte	0x90
	.long	0x6a8e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	l1_phys_map
	.uleb128 0x6
	.byte	0x8
	.long	0x1317
	.uleb128 0x43
	.long	.LASF503
	.byte	0x1
	.byte	0x96
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	io_mem_nb
	.uleb128 0x43
	.long	.LASF504
	.byte	0x1
	.byte	0x98
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	io_mem_watch
	.uleb128 0x4a
	.long	.LASF505
	.byte	0x1
	.byte	0x9c
	.long	0x84
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	logfilename
	.uleb128 0x43
	.long	.LASF506
	.byte	0x1
	.byte	0x9f
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	log_append
	.uleb128 0x43
	.long	.LASF507
	.byte	0x1
	.byte	0xa2
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	tlb_flush_count
	.uleb128 0x43
	.long	.LASF508
	.byte	0x1
	.byte	0xa3
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	tb_flush_count
	.uleb128 0x43
	.long	.LASF509
	.byte	0x1
	.byte	0xa4
	.long	0x57
	.byte	0x9
	.byte	0x3
	.quad	tb_phys_invalidate_count
	.uleb128 0x9
	.long	0x6b38
	.long	0x1244
	.uleb128 0xa
	.long	0x7b
	.byte	0x2
	.byte	0x0
	.uleb128 0x25
	.long	.LASF510
	.byte	0x1
	.value	0x853
	.long	0x6b28
	.byte	0x9
	.byte	0x3
	.quad	unassigned_mem_read
	.uleb128 0x9
	.long	0x6b5e
	.long	0x1267
	.uleb128 0xa
	.long	0x7b
	.byte	0x2
	.byte	0x0
	.uleb128 0x25
	.long	.LASF511
	.byte	0x1
	.value	0x859
	.long	0x6b4e
	.byte	0x9
	.byte	0x3
	.quad	unassigned_mem_write
	.uleb128 0x25
	.long	.LASF512
	.byte	0x1
	.value	0x8b0
	.long	0x6b28
	.byte	0x9
	.byte	0x3
	.quad	error_mem_read
	.uleb128 0x25
	.long	.LASF513
	.byte	0x1
	.value	0x8b6
	.long	0x6b4e
	.byte	0x9
	.byte	0x3
	.quad	notdirty_mem_write
	.uleb128 0x25
	.long	.LASF514
	.byte	0x1
	.value	0x8fd
	.long	0x6b28
	.byte	0x9
	.byte	0x3
	.quad	watch_mem_read
	.uleb128 0x25
	.long	.LASF515
	.byte	0x1
	.value	0x903
	.long	0x6b4e
	.byte	0x9
	.byte	0x3
	.quad	watch_mem_write
	.uleb128 0x9
	.long	0x6bdc
	.long	0x1244
	.uleb128 0xa
	.long	0x7b
	.byte	0x2
	.byte	0x0
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.value	0x95f
	.long	0x6bcc
	.byte	0x9
	.byte	0x3
	.quad	subpage_read
	.uleb128 0x9
	.long	0x6c02
	.long	0x1267
	.uleb128 0xa
	.long	0x7b
	.byte	0x2
	.byte	0x0
	.uleb128 0x25
	.long	.LASF517
	.byte	0x1
	.value	0x965
	.long	0x6bf2
	.byte	0x9
	.byte	0x3
	.quad	subpage_write
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x29
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x682
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6c19
	.long	0x1323
	.string	"phys_page_find"
	.long	0x1356
	.string	"tlb_set_page_exec"
	.long	0x147b
	.string	"tb_flush"
	.long	0x1569
	.string	"tb_find_pc"
	.long	0x15dd
	.string	"tb_alloc"
	.long	0x1811
	.string	"cpu_interrupt"
	.long	0x18ce
	.string	"cpu_single_step"
	.long	0x190b
	.string	"cpu_set_log"
	.long	0x193a
	.string	"cpu_set_log_filename"
	.long	0x1969
	.string	"cpu_reset_interrupt"
	.long	0x19f0
	.string	"cpu_str_to_log_mask"
	.long	0x1a6e
	.string	"cpu_abort"
	.long	0x1ac9
	.string	"cpu_copy"
	.long	0x1b26
	.string	"tlb_flush"
	.long	0x1b6f
	.string	"tlb_flush_page"
	.long	0x1cbd
	.string	"cpu_watchpoint_remove"
	.long	0x1d0a
	.string	"cpu_watchpoint_insert"
	.long	0x1d57
	.string	"cpu_physical_memory_reset_dirty"
	.long	0x1ee9
	.string	"tb_link_phys"
	.long	0x216b
	.string	"cpu_tlb_update_dirty"
	.long	0x226b
	.string	"page_unprotect"
	.long	0x2343
	.string	"cpu_get_physical_page_desc"
	.long	0x2382
	.string	"qemu_ram_alloc"
	.long	0x23c1
	.string	"qemu_ram_free"
	.long	0x2496
	.string	"ldl_phys"
	.long	0x2a65
	.string	"cpu_register_io_memory"
	.long	0x2b4c
	.string	"cpu_register_physical_memory"
	.long	0x2c5c
	.string	"cpu_exec_init"
	.long	0x2d20
	.string	"cpu_get_io_memory_write"
	.long	0x2d53
	.string	"cpu_get_io_memory_read"
	.long	0x2d86
	.string	"cpu_physical_memory_write_rom"
	.long	0x2e95
	.string	"argos_ldl_phys"
	.long	0x2fc6
	.string	"ldq_phys"
	.long	0x3081
	.string	"argos_ldq_phys"
	.long	0x31b2
	.string	"stl_phys_notdirty"
	.long	0x3304
	.string	"stq_phys_notdirty"
	.long	0x3456
	.string	"dump_exec_info"
	.long	0x367e
	.string	"__ldb_cmmu"
	.long	0x38c0
	.string	"tb_invalidate_phys_page_range"
	.long	0x410f
	.string	"argos_stl_phys"
	.long	0x425a
	.string	"stl_phys"
	.long	0x43c1
	.string	"cpu_physical_memory_rw"
	.long	0x461f
	.string	"cpu_memory_rw_debug"
	.long	0x46b2
	.string	"argos_stq_phys"
	.long	0x4756
	.string	"stq_phys"
	.long	0x47b9
	.string	"stw_phys"
	.long	0x4880
	.string	"stb_phys"
	.long	0x4947
	.string	"lduw_phys"
	.long	0x4a2f
	.string	"ldub_phys"
	.long	0x4b54
	.string	"cpu_breakpoint_remove"
	.long	0x4bb0
	.string	"cpu_breakpoint_insert"
	.long	0x54ef
	.string	"__argos_ldb_cmmu"
	.long	0x577f
	.string	"__ldw_cmmu"
	.long	0x5a53
	.string	"__argos_ldw_cmmu"
	.long	0x5d30
	.string	"__ldl_cmmu"
	.long	0x6036
	.string	"__argos_ldl_cmmu"
	.long	0x630d
	.string	"__ldq_cmmu"
	.long	0x660d
	.string	"__argos_ldq_cmmu"
	.long	0x677f
	.string	"argos_memmap"
	.long	0x679b
	.string	"argos_clean_tag"
	.long	0x67b1
	.string	"argos_trash_tag"
	.long	0x67c7
	.string	"qemu_real_host_page_size"
	.long	0x67dd
	.string	"qemu_host_page_bits"
	.long	0x67f3
	.string	"qemu_host_page_size"
	.long	0x6809
	.string	"qemu_host_page_mask"
	.long	0x681f
	.string	"first_cpu"
	.long	0x6835
	.string	"cpu_single_env"
	.long	0x685b
	.string	"cpu_log_items"
	.long	0x6872
	.string	"phys_ram_size"
	.long	0x6888
	.string	"phys_ram_fd"
	.long	0x689e
	.string	"phys_ram_base"
	.long	0x68b4
	.string	"phys_ram_dirty"
	.long	0x68ca
	.string	"logfile"
	.long	0x68e0
	.string	"loglevel"
	.long	0x6907
	.string	"tb_phys_hash"
	.long	0x6930
	.string	"code_gen_buffer"
	.long	0x6946
	.string	"code_gen_ptr"
	.long	0x6972
	.string	"io_mem_write"
	.long	0x699e
	.string	"io_mem_read"
	.long	0x69c4
	.string	"io_mem_opaque"
	.long	0x69da
	.string	"tb_lock"
	.long	0x6a11
	.string	"tbs"
	.long	0x6a27
	.string	"nb_tbs"
	.long	0x6a78
	.string	"l1_phys_map"
	.long	0x6abe
	.string	"logfilename"
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB104-.Ltext0
	.quad	.LBE104-.Ltext0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB106-.Ltext0
	.quad	.LBE106-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB108-.Ltext0
	.quad	.LBE108-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	.LBB110-.Ltext0
	.quad	.LBE110-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB133-.Ltext0
	.quad	.LBE133-.Ltext0
	.quad	.LBB135-.Ltext0
	.quad	.LBE135-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB134-.Ltext0
	.quad	.LBE134-.Ltext0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB139-.Ltext0
	.quad	.LBE139-.Ltext0
	.quad	.LBB140-.Ltext0
	.quad	.LBE140-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB148-.Ltext0
	.quad	.LBE148-.Ltext0
	.quad	.LBB155-.Ltext0
	.quad	.LBE155-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB150-.Ltext0
	.quad	.LBE150-.Ltext0
	.quad	.LBB157-.Ltext0
	.quad	.LBE157-.Ltext0
	.quad	.LBB154-.Ltext0
	.quad	.LBE154-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB160-.Ltext0
	.quad	.LBE160-.Ltext0
	.quad	.LBB167-.Ltext0
	.quad	.LBE167-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB162-.Ltext0
	.quad	.LBE162-.Ltext0
	.quad	.LBB169-.Ltext0
	.quad	.LBE169-.Ltext0
	.quad	.LBB166-.Ltext0
	.quad	.LBE166-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB195-.Ltext0
	.quad	.LBE195-.Ltext0
	.quad	.LBB202-.Ltext0
	.quad	.LBE202-.Ltext0
	.quad	.LBB200-.Ltext0
	.quad	.LBE200-.Ltext0
	.quad	.LBB198-.Ltext0
	.quad	.LBE198-.Ltext0
	.quad	.LBB196-.Ltext0
	.quad	.LBE196-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB204-.Ltext0
	.quad	.LBE204-.Ltext0
	.quad	.LBB256-.Ltext0
	.quad	.LBE256-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB209-.Ltext0
	.quad	.LBE209-.Ltext0
	.quad	.LBB210-.Ltext0
	.quad	.LBE210-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB216-.Ltext0
	.quad	.LBE216-.Ltext0
	.quad	.LBB217-.Ltext0
	.quad	.LBE217-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB223-.Ltext0
	.quad	.LBE223-.Ltext0
	.quad	.LBB225-.Ltext0
	.quad	.LBE225-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB229-.Ltext0
	.quad	.LBE229-.Ltext0
	.quad	.LBB230-.Ltext0
	.quad	.LBE230-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB250-.Ltext0
	.quad	.LBE250-.Ltext0
	.quad	.LBB264-.Ltext0
	.quad	.LBE264-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB252-.Ltext0
	.quad	.LBE252-.Ltext0
	.quad	.LBB266-.Ltext0
	.quad	.LBE266-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB254-.Ltext0
	.quad	.LBE254-.Ltext0
	.quad	.LBB268-.Ltext0
	.quad	.LBE268-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB269-.Ltext0
	.quad	.LBE269-.Ltext0
	.quad	.LBB276-.Ltext0
	.quad	.LBE276-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB277-.Ltext0
	.quad	.LBE277-.Ltext0
	.quad	.LBB284-.Ltext0
	.quad	.LBE284-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB285-.Ltext0
	.quad	.LBE285-.Ltext0
	.quad	.LBB305-.Ltext0
	.quad	.LBE305-.Ltext0
	.quad	.LBB299-.Ltext0
	.quad	.LBE299-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB286-.Ltext0
	.quad	.LBE286-.Ltext0
	.quad	.LBB310-.Ltext0
	.quad	.LBE310-.Ltext0
	.quad	.LBB304-.Ltext0
	.quad	.LBE304-.Ltext0
	.quad	.LBB287-.Ltext0
	.quad	.LBE287-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB334-.Ltext0
	.quad	.LBE334-.Ltext0
	.quad	.LBB353-.Ltext0
	.quad	.LBE353-.Ltext0
	.quad	.LBB337-.Ltext0
	.quad	.LBE337-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB336-.Ltext0
	.quad	.LBE336-.Ltext0
	.quad	.LBB340-.Ltext0
	.quad	.LBE340-.Ltext0
	.quad	.LBB339-.Ltext0
	.quad	.LBE339-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB346-.Ltext0
	.quad	.LBE346-.Ltext0
	.quad	.LBB355-.Ltext0
	.quad	.LBE355-.Ltext0
	.quad	.LBB347-.Ltext0
	.quad	.LBE347-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB349-.Ltext0
	.quad	.LBE349-.Ltext0
	.quad	.LBB357-.Ltext0
	.quad	.LBE357-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB359-.Ltext0
	.quad	.LBE359-.Ltext0
	.quad	.LBB380-.Ltext0
	.quad	.LBE380-.Ltext0
	.quad	.LBB362-.Ltext0
	.quad	.LBE362-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB361-.Ltext0
	.quad	.LBE361-.Ltext0
	.quad	.LBB365-.Ltext0
	.quad	.LBE365-.Ltext0
	.quad	.LBB364-.Ltext0
	.quad	.LBE364-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB373-.Ltext0
	.quad	.LBE373-.Ltext0
	.quad	.LBB382-.Ltext0
	.quad	.LBE382-.Ltext0
	.quad	.LBB374-.Ltext0
	.quad	.LBE374-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB376-.Ltext0
	.quad	.LBE376-.Ltext0
	.quad	.LBB384-.Ltext0
	.quad	.LBE384-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB386-.Ltext0
	.quad	.LBE386-.Ltext0
	.quad	.LBB407-.Ltext0
	.quad	.LBE407-.Ltext0
	.quad	.LBB389-.Ltext0
	.quad	.LBE389-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB388-.Ltext0
	.quad	.LBE388-.Ltext0
	.quad	.LBB392-.Ltext0
	.quad	.LBE392-.Ltext0
	.quad	.LBB391-.Ltext0
	.quad	.LBE391-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB400-.Ltext0
	.quad	.LBE400-.Ltext0
	.quad	.LBB409-.Ltext0
	.quad	.LBE409-.Ltext0
	.quad	.LBB401-.Ltext0
	.quad	.LBE401-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB403-.Ltext0
	.quad	.LBE403-.Ltext0
	.quad	.LBB411-.Ltext0
	.quad	.LBE411-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB419-.Ltext0
	.quad	.LBE419-.Ltext0
	.quad	.LBB420-.Ltext0
	.quad	.LBE420-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB434-.Ltext0
	.quad	.LBE434-.Ltext0
	.quad	.LBB446-.Ltext0
	.quad	.LBE446-.Ltext0
	.quad	.LBB440-.Ltext0
	.quad	.LBE440-.Ltext0
	.quad	.LBB439-.Ltext0
	.quad	.LBE439-.Ltext0
	.quad	.LBB438-.Ltext0
	.quad	.LBE438-.Ltext0
	.quad	.LBB437-.Ltext0
	.quad	.LBE437-.Ltext0
	.quad	.LBB436-.Ltext0
	.quad	.LBE436-.Ltext0
	.quad	.LBB435-.Ltext0
	.quad	.LBE435-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB441-.Ltext0
	.quad	.LBE441-.Ltext0
	.quad	.LBB447-.Ltext0
	.quad	.LBE447-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB456-.Ltext0
	.quad	.LBE456-.Ltext0
	.quad	.LBB458-.Ltext0
	.quad	.LBE458-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB466-.Ltext0
	.quad	.LBE466-.Ltext0
	.quad	.LBB468-.Ltext0
	.quad	.LBE468-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB469-.Ltext0
	.quad	.LBE469-.Ltext0
	.quad	.LBB481-.Ltext0
	.quad	.LBE481-.Ltext0
	.quad	.LBB475-.Ltext0
	.quad	.LBE475-.Ltext0
	.quad	.LBB474-.Ltext0
	.quad	.LBE474-.Ltext0
	.quad	.LBB473-.Ltext0
	.quad	.LBE473-.Ltext0
	.quad	.LBB472-.Ltext0
	.quad	.LBE472-.Ltext0
	.quad	.LBB471-.Ltext0
	.quad	.LBE471-.Ltext0
	.quad	.LBB470-.Ltext0
	.quad	.LBE470-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB476-.Ltext0
	.quad	.LBE476-.Ltext0
	.quad	.LBB482-.Ltext0
	.quad	.LBE482-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB491-.Ltext0
	.quad	.LBE491-.Ltext0
	.quad	.LBB493-.Ltext0
	.quad	.LBE493-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB495-.Ltext0
	.quad	.LBE495-.Ltext0
	.quad	.LBB499-.Ltext0
	.quad	.LBE499-.Ltext0
	.quad	.LBB497-.Ltext0
	.quad	.LBE497-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB503-.Ltext0
	.quad	.LBE503-.Ltext0
	.quad	.LBB505-.Ltext0
	.quad	.LBE505-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB509-.Ltext0
	.quad	.LBE509-.Ltext0
	.quad	.LBB511-.Ltext0
	.quad	.LBE511-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB512-.Ltext0
	.quad	.LBE512-.Ltext0
	.quad	.LBB524-.Ltext0
	.quad	.LBE524-.Ltext0
	.quad	.LBB518-.Ltext0
	.quad	.LBE518-.Ltext0
	.quad	.LBB517-.Ltext0
	.quad	.LBE517-.Ltext0
	.quad	.LBB516-.Ltext0
	.quad	.LBE516-.Ltext0
	.quad	.LBB515-.Ltext0
	.quad	.LBE515-.Ltext0
	.quad	.LBB514-.Ltext0
	.quad	.LBE514-.Ltext0
	.quad	.LBB513-.Ltext0
	.quad	.LBE513-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB519-.Ltext0
	.quad	.LBE519-.Ltext0
	.quad	.LBB525-.Ltext0
	.quad	.LBE525-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB534-.Ltext0
	.quad	.LBE534-.Ltext0
	.quad	.LBB536-.Ltext0
	.quad	.LBE536-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"char"
.LASF161:
	.string	"efer"
.LASF218:
	.string	"tb_next"
.LASF10:
	.string	"size_t"
.LASF257:
	.string	"tb_reset_jump_recursive"
.LASF258:
	.string	"tb_reset_jump_recursive2"
.LASF303:
	.string	"subpage_register"
.LASF420:
	.string	"stw_le_p"
.LASF421:
	.string	"cpu_memory_rw_debug"
.LASF377:
	.string	"tlb_addr"
.LASF65:
	.string	"__jmp_buf_tag"
.LASF483:
	.string	"first_cpu"
.LASF299:
	.string	"page_find_alloc"
.LASF240:
	.string	"tlb_set_page_exec"
.LASF11:
	.string	"int32_t"
.LASF501:
	.string	"l1_map"
.LASF29:
	.string	"_IO_save_end"
.LASF148:
	.string	"fpuc"
.LASF502:
	.string	"l1_phys_map"
.LASF395:
	.string	"current_pc"
.LASF149:
	.string	"fptags"
.LASF82:
	.string	"floatx80"
.LASF147:
	.string	"fpus"
.LASF22:
	.string	"_IO_write_base"
.LASF76:
	.string	"addr_code"
.LASF104:
	.string	"running"
.LASF276:
	.string	"cpu_copy"
.LASF38:
	.string	"_lock"
.LASF477:
	.string	"argos_clean_tag"
.LASF343:
	.string	"cpu_exec_init"
.LASF137:
	.string	"shellcode_context"
.LASF87:
	.string	"CPU86_LDouble"
.LASF351:
	.string	"argos_bytemap_clear"
.LASF171:
	.string	"jmp_env"
.LASF478:
	.string	"argos_trash_tag"
.LASF27:
	.string	"_IO_save_base"
.LASF129:
	.string	"vaddr"
.LASF432:
	.string	"watch_mem_readw"
.LASF233:
	.string	"code_bitmap"
.LASF138:
	.string	"cc_src"
.LASF139:
	.string	"cc_dst"
.LASF216:
	.string	"page_addr"
.LASF499:
	.string	"nb_tbs"
.LASF259:
	.string	"tb_reset_jump"
.LASF165:
	.string	"intercept"
.LASF315:
	.string	"ldl_le_p"
.LASF141:
	.string	"hflags"
.LASF514:
	.string	"watch_mem_read"
.LASF35:
	.string	"_cur_column"
.LASF116:
	.string	"logged"
.LASF287:
	.string	"start"
.LASF374:
	.string	"res2"
.LASF361:
	.string	"argos_bytemap_clrl"
.LASF291:
	.string	"tlb_reset_dirty_range"
.LASF45:
	.string	"_mode"
.LASF318:
	.string	"watch"
.LASF414:
	.string	"stl_phys"
.LASF316:
	.string	"watch_mem_readl"
.LASF77:
	.string	"addend"
.LASF254:
	.string	"m_min"
.LASF446:
	.string	"notdirty_mem_writeb"
.LASF59:
	.string	"va_list"
.LASF16:
	.string	"FILE"
.LASF6:
	.string	"long int"
.LASF201:
	.string	"cpuid_ext_features"
.LASF91:
	.string	"limit"
.LASF98:
	.string	"argos_memmap_t"
.LASF438:
	.string	"notdirty_mem_writel"
.LASF342:
	.string	"need_subpage"
.LASF246:
	.string	"phys_page_find_alloc"
.LASF55:
	.string	"_IO_marker"
.LASF101:
	.string	"netidx"
.LASF193:
	.string	"opaque"
.LASF352:
	.string	"maddr"
.LASF375:
	.string	"shift"
.LASF1:
	.string	"short unsigned int"
.LASF513:
	.string	"notdirty_mem_write"
.LASF130:
	.string	"CPUX86State"
.LASF72:
	.string	"ram_addr_t"
.LASF401:
	.string	"next_offset"
.LASF159:
	.string	"sysenter_esp"
.LASF180:
	.string	"current_tb"
.LASF228:
	.string	"PhysPageDesc"
.LASF468:
	.string	"io_readq"
.LASF480:
	.string	"qemu_host_page_bits"
.LASF164:
	.string	"vm_vmcb"
.LASF324:
	.string	"subpage_writelen"
.LASF108:
	.string	"instruction_stage"
.LASF160:
	.string	"sysenter_eip"
.LASF237:
	.string	"index"
.LASF196:
	.string	"cpuid_vendor1"
.LASF198:
	.string	"cpuid_vendor3"
.LASF209:
	.string	"TranslationBlock"
.LASF126:
	.string	"store_addr_type"
.LASF457:
	.string	"argos_slow_ldw_cmmu"
.LASF522:
	.string	"io_mem_init"
.LASF340:
	.string	"start_addr2"
.LASF269:
	.string	"cpu_set_log_filename"
.LASF454:
	.string	"slow_ldw_cmmu"
.LASF4:
	.string	"signed char"
.LASF348:
	.string	"cpu_physical_memory_write_rom"
.LASF506:
	.string	"log_append"
.LASF439:
	.string	"tb_invalidate_phys_page_fast"
.LASF48:
	.string	"_IO_FILE"
.LASF434:
	.string	"watch_mem_readb"
.LASF449:
	.string	"tmp1"
.LASF63:
	.string	"uint64_t"
.LASF469:
	.string	"__ldq_cmmu"
.LASF268:
	.string	"log_flags"
.LASF118:
	.string	"load_value"
.LASF423:
	.string	"argos_stq_phys"
.LASF407:
	.string	"set_bits"
.LASF400:
	.string	"tb_remove"
.LASF0:
	.string	"unsigned char"
.LASF334:
	.string	"subpage_memory"
.LASF332:
	.string	"phys"
.LASF309:
	.string	"qemu_ram_free"
.LASF102:
	.string	"argos_rtag_t"
.LASF203:
	.string	"cpuid_model"
.LASF226:
	.string	"CPUReadMemoryFunc"
.LASF359:
	.string	"stl_phys_notdirty"
.LASF231:
	.string	"first_tb"
.LASF484:
	.string	"cpu_single_env"
.LASF386:
	.string	"ldub_code"
.LASF99:
	.string	"argos_rtag"
.LASF495:
	.string	"io_mem_read"
.LASF123:
	.string	"store_value"
.LASF430:
	.string	"lduw_phys"
.LASF437:
	.string	"cpu_breakpoint_insert"
.LASF47:
	.string	"__gnuc_va_list"
.LASF302:
	.string	"page_unprotect"
.LASF519:
	.string	"/home/remco/Projects/Argos/src/exec.c"
.LASF323:
	.string	"value"
.LASF465:
	.string	"argos_io_readl"
.LASF142:
	.string	"segs"
.LASF456:
	.string	"__ldw_cmmu"
.LASF399:
	.string	"tb_phys_hash_func"
.LASF205:
	.string	"cpuid_ext3_features"
.LASF81:
	.string	"float64"
.LASF431:
	.string	"cpu_physical_memory_read"
.LASF202:
	.string	"cpuid_xlevel"
.LASF179:
	.string	"old_exception"
.LASF307:
	.string	"cpu_get_physical_page_desc"
.LASF509:
	.string	"tb_phys_invalidate_count"
.LASF134:
	.string	"t1tag"
.LASF447:
	.string	"argos_bytemap_stb"
.LASF467:
	.string	"slow_ldq_cmmu"
.LASF413:
	.string	"argos_bytemap_stl"
.LASF54:
	.string	"_IO_lock_t"
.LASF445:
	.string	"argos_bytemap_stw"
.LASF121:
	.string	"load_addr_type"
.LASF270:
	.string	"filename"
.LASF213:
	.string	"tc_ptr"
.LASF394:
	.string	"tb_end"
.LASF357:
	.string	"argos_ldq_phys"
.LASF321:
	.string	"subpage_readlen"
.LASF92:
	.string	"flags"
.LASF470:
	.string	"argos_slow_ldq_cmmu"
.LASF336:
	.string	"start_addr"
.LASF19:
	.string	"_IO_read_ptr"
.LASF79:
	.string	"double"
.LASF296:
	.string	"phys_page2"
.LASF51:
	.string	"fp_offset"
.LASF511:
	.string	"unassigned_mem_write"
.LASF517:
	.string	"subpage_write"
.LASF388:
	.string	"is_cpu_write_access"
.LASF285:
	.string	"cpu_watchpoint_insert"
.LASF58:
	.string	"_pos"
.LASF298:
	.string	"last_first_tb"
.LASF422:
	.string	"phys_addr"
.LASF124:
	.string	"store_value_netidx"
.LASF295:
	.string	"phys_pc"
.LASF345:
	.string	"page_init"
.LASF153:
	.string	"sse_status"
.LASF30:
	.string	"_markers"
.LASF177:
	.string	"interrupt_request"
.LASF206:
	.string	"cpuid_apic_id"
.LASF328:
	.string	"subpage_writel"
.LASF95:
	.string	"argos_paddr_t"
.LASF358:
	.string	"argos_bytemap_ldq"
.LASF402:
	.string	"tb_page_remove"
.LASF497:
	.string	"tb_lock"
.LASF373:
	.string	"res1"
.LASF327:
	.string	"subpage_readl"
.LASF252:
	.string	"invalidate_page_bitmap"
.LASF305:
	.string	"memory"
.LASF442:
	.string	"tlb_set_dirty"
.LASF335:
	.string	"cpu_register_physical_memory"
.LASF507:
	.string	"tlb_flush_count"
.LASF175:
	.string	"exception_next_eip"
.LASF325:
	.string	"subpage_readw"
.LASF214:
	.string	"phys_hash_next"
.LASF117:
	.string	"instruction_netidx"
.LASF418:
	.string	"stb_p"
.LASF146:
	.string	"fpstt"
.LASF320:
	.string	"subpage_readb"
.LASF157:
	.string	"mmx_t0"
.LASF212:
	.string	"cflags"
.LASF46:
	.string	"_unused2"
.LASF187:
	.string	"singlestep_enabled"
.LASF182:
	.string	"mem_write_vaddr"
.LASF455:
	.string	"io_readw"
.LASF504:
	.string	"io_mem_watch"
.LASF122:
	.string	"load_size"
.LASF106:
	.string	"logfile"
.LASF409:
	.string	"tb_gen_code"
.LASF267:
	.string	"cpu_set_log"
.LASF3:
	.string	"long unsigned int"
.LASF111:
	.string	"loadedby_eip"
.LASF398:
	.string	"tb_phys_invalidate"
.LASF384:
	.string	"get_phys_addr_code"
.LASF491:
	.string	"tb_phys_hash"
.LASF33:
	.string	"_flags2"
.LASF372:
	.string	"slow_ldb_cmmu"
.LASF21:
	.string	"_IO_read_base"
.LASF355:
	.string	"ldq_phys"
.LASF53:
	.string	"reg_save_area"
.LASF151:
	.string	"fp_status"
.LASF239:
	.string	"phys_page_find"
.LASF220:
	.string	"jmp_first"
.LASF93:
	.string	"XMMReg"
.LASF512:
	.string	"error_mem_read"
.LASF360:
	.string	"stl_le_p"
.LASF158:
	.string	"sysenter_cs"
.LASF443:
	.string	"tlb_set_dirty1"
.LASF204:
	.string	"cpuid_ext2_features"
.LASF103:
	.string	"argos_shellcode_context_s"
.LASF362:
	.string	"stq_phys_notdirty"
.LASF170:
	.string	"intercept_exceptions"
.LASF86:
	.string	"floatx80_rounding_precision"
.LASF448:
	.string	"argos_slow_ldb_cmmu"
.LASF473:
	.string	"stdin"
.LASF433:
	.string	"ldub_phys"
.LASF266:
	.string	"enabled"
.LASF331:
	.string	"subpage_init"
.LASF490:
	.string	"loglevel"
.LASF34:
	.string	"_old_offset"
.LASF162:
	.string	"star"
.LASF154:
	.string	"mxcsr"
.LASF416:
	.string	"cpu_physical_memory_rw"
.LASF429:
	.string	"watch_mem_writeb"
.LASF286:
	.string	"cpu_physical_memory_reset_dirty"
.LASF379:
	.string	"found"
.LASF482:
	.string	"qemu_host_page_mask"
.LASF281:
	.string	"tlb_flush_entry"
.LASF508:
	.string	"tb_flush_count"
.LASF333:
	.string	"orig_memory"
.LASF412:
	.string	"argos_stl_phys"
.LASF15:
	.string	"long long int"
.LASF288:
	.string	"dirty_flags"
.LASF253:
	.string	"tb_find_pc"
.LASF241:
	.string	"paddr"
.LASF408:
	.string	"end1"
.LASF466:
	.string	"__argos_ldl_cmmu"
.LASF496:
	.string	"io_mem_opaque"
.LASF487:
	.string	"phys_ram_fd"
.LASF485:
	.string	"cpu_log_items"
.LASF24:
	.string	"_IO_write_end"
.LASF219:
	.string	"jmp_next"
.LASF143:
	.string	"a20_mask"
.LASF306:
	.string	"eidx"
.LASF339:
	.string	"subpage"
.LASF74:
	.string	"addr_read"
.LASF215:
	.string	"page_next"
.LASF50:
	.string	"gp_offset"
.LASF459:
	.string	"__argos_ldw_cmmu"
.LASF120:
	.string	"load_addr"
.LASF406:
	.string	"build_page_bitmap"
.LASF85:
	.string	"float_rounding_mode"
.LASF520:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF404:
	.string	"tb_jmp_remove"
.LASF261:
	.string	"cpu_interrupt"
.LASF451:
	.string	"argos_bytemap_ldb"
.LASF194:
	.string	"cpu_model_str"
.LASF224:
	.string	"help"
.LASF248:
	.string	"addr"
.LASF510:
	.string	"unassigned_mem_read"
.LASF185:
	.string	"breakpoints"
.LASF238:
	.string	"alloc"
.LASF127:
	.string	"store_size"
.LASF280:
	.string	"tlb_flush_page"
.LASF25:
	.string	"_IO_buf_base"
.LASF498:
	.string	"tb_invalidated_flag"
.LASF222:
	.string	"mask"
.LASF461:
	.string	"slow_ldl_cmmu"
.LASF370:
	.string	"direct_jmp2_count"
.LASF56:
	.string	"_next"
.LASF2:
	.string	"unsigned int"
.LASF518:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF256:
	.string	"tb_alloc"
.LASF292:
	.string	"tlb_protect_code"
.LASF415:
	.string	"watch_mem_writel"
.LASF190:
	.string	"watchpoint_hit"
.LASF427:
	.string	"watch_mem_writew"
.LASF96:
	.string	"argos_netidx_t"
.LASF229:
	.string	"phys_offset"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF225:
	.string	"CPUWriteMemoryFunc"
.LASF366:
	.string	"cpu_fprintf"
.LASF57:
	.string	"_sbuf"
.LASF382:
	.string	"io_readb"
.LASF112:
	.string	"storedby_eip"
.LASF119:
	.string	"load_value_netidx"
.LASF521:
	.string	"APICState"
.LASF353:
	.string	"argos_ldl_phys"
.LASF52:
	.string	"overflow_arg_area"
.LASF208:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF330:
	.string	"subwidth"
.LASF488:
	.string	"phys_ram_base"
.LASF181:
	.string	"mem_write_pc"
.LASF245:
	.string	"address"
.LASF265:
	.string	"cpu_single_step"
.LASF479:
	.string	"qemu_real_host_page_size"
.LASF68:
	.string	"__saved_mask"
.LASF284:
	.string	"cpu_watchpoint_remove"
.LASF349:
	.string	"page"
.LASF66:
	.string	"__jmpbuf"
.LASF192:
	.string	"cpu_index"
.LASF289:
	.string	"length"
.LASF64:
	.string	"__jmp_buf"
.LASF97:
	.string	"argos_bytemap_t"
.LASF311:
	.string	"unassigned_mem_writeb"
.LASF242:
	.string	"prot"
.LASF260:
	.string	"tb_set_jmp_target"
.LASF277:
	.string	"new_env"
.LASF189:
	.string	"nb_watchpoints"
.LASF71:
	.string	"target_phys_addr_t"
.LASF329:
	.string	"cpu_register_io_memory"
.LASF393:
	.string	"tb_start"
.LASF389:
	.string	"current_tb_modified"
.LASF83:
	.string	"long double"
.LASF471:
	.string	"argos_io_readq"
.LASF380:
	.string	"redo"
.LASF453:
	.string	"__argos_ldb_cmmu"
.LASF312:
	.string	"ldl_phys"
.LASF236:
	.string	"mem_write"
.LASF145:
	.string	"prev_fpip"
.LASF263:
	.string	"testandset"
.LASF308:
	.string	"qemu_ram_alloc"
.LASF39:
	.string	"_offset"
.LASF452:
	.string	"argos_io_readb"
.LASF67:
	.string	"__mask_was_saved"
.LASF200:
	.string	"cpuid_features"
.LASF232:
	.string	"code_write_count"
.LASF166:
	.string	"intercept_cr_read"
.LASF221:
	.string	"CPULogItem"
.LASF217:
	.string	"tb_next_offset"
.LASF211:
	.string	"size"
.LASF109:
	.string	"trace_stage"
.LASF14:
	.string	"long long unsigned int"
.LASF385:
	.string	"cpu_mmu_index"
.LASF494:
	.string	"io_mem_write"
.LASF60:
	.string	"uint8_t"
.LASF84:
	.string	"float_status"
.LASF61:
	.string	"uint16_t"
.LASF365:
	.string	"dump_exec_info"
.LASF7:
	.string	"__off_t"
.LASF31:
	.string	"_chain"
.LASF152:
	.string	"fp_convert"
.LASF114:
	.string	"instruction"
.LASF337:
	.string	"end_addr"
.LASF347:
	.string	"cpu_get_io_memory_read"
.LASF140:
	.string	"cc_op"
.LASF191:
	.string	"next_cpu"
.LASF417:
	.string	"is_write"
.LASF80:
	.string	"float32"
.LASF410:
	.string	"virt_page2"
.LASF73:
	.string	"CPUTLBEntry"
.LASF396:
	.string	"current_cs_base"
.LASF492:
	.string	"code_gen_buffer"
.LASF279:
	.string	"flush_global"
.LASF376:
	.string	"physaddr"
.LASF168:
	.string	"intercept_dr_read"
.LASF503:
	.string	"io_mem_nb"
.LASF341:
	.string	"end_addr2"
.LASF125:
	.string	"store_addr"
.LASF272:
	.string	"cmp1"
.LASF317:
	.string	"check_watchpoint"
.LASF173:
	.string	"error_code"
.LASF322:
	.string	"subpage_writeb"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF107:
	.string	"instruction_cnt"
.LASF424:
	.string	"cpu_physical_memory_write"
.LASF131:
	.string	"regs"
.LASF264:
	.string	"readval"
.LASF363:
	.string	"stq_le_p"
.LASF354:
	.string	"argos_bytemap_ldl"
.LASF8:
	.string	"__off64_t"
.LASF235:
	.string	"mem_read"
.LASF425:
	.string	"stq_phys"
.LASF369:
	.string	"direct_jmp_count"
.LASF300:
	.string	"cpu_tlb_update_dirty"
.LASF476:
	.string	"argos_memmap"
.LASF110:
	.string	"is_system_call"
.LASF169:
	.string	"intercept_dr_write"
.LASF319:
	.string	"retaddr"
.LASF133:
	.string	"t0tag"
.LASF105:
	.string	"stop_condition"
.LASF176:
	.string	"smbase"
.LASF135:
	.string	"t2tag"
.LASF273:
	.string	"cpu_str_to_log_mask"
.LASF481:
	.string	"qemu_host_page_size"
.LASF387:
	.string	"tb_invalidate_phys_page_range"
.LASF26:
	.string	"_IO_buf_end"
.LASF250:
	.string	"env1"
.LASF227:
	.string	"spinlock_t"
.LASF223:
	.string	"name"
.LASF297:
	.string	"tb_alloc_page"
.LASF70:
	.string	"target_ulong"
.LASF441:
	.string	"do_invalidate"
.LASF167:
	.string	"intercept_cr_write"
.LASF383:
	.string	"__ldb_cmmu"
.LASF475:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"addr_write"
.LASF486:
	.string	"phys_ram_size"
.LASF197:
	.string	"cpuid_vendor2"
.LASF88:
	.string	"SegmentCache"
.LASF489:
	.string	"phys_ram_dirty"
.LASF94:
	.string	"MMXReg"
.LASF36:
	.string	"_vtable_offset"
.LASF174:
	.string	"exception_is_int"
.LASF274:
	.string	"item"
.LASF150:
	.string	"fpregs"
.LASF155:
	.string	"xmm_regs"
.LASF247:
	.string	"cpu_physical_memory_is_dirty"
.LASF301:
	.string	"tlb_update_dirty"
.LASF210:
	.string	"cs_base"
.LASF419:
	.string	"lduw_le_p"
.LASF472:
	.string	"__argos_ldq_cmmu"
.LASF371:
	.string	"cross_page"
.LASF49:
	.string	"__va_list_tag"
.LASF178:
	.string	"user_mode_only"
.LASF450:
	.string	"tmp2"
.LASF249:
	.string	"tb_flush"
.LASF163:
	.string	"vm_hsave"
.LASF186:
	.string	"nb_breakpoints"
.LASF144:
	.string	"fpip"
.LASF436:
	.string	"cpu_breakpoint_remove"
.LASF115:
	.string	"instruction_size"
.LASF199:
	.string	"cpuid_version"
.LASF282:
	.string	"tlb_entry"
.LASF251:
	.string	"page_flush_tb"
.LASF405:
	.string	"tlb_unprotect_code_phys"
.LASF255:
	.string	"m_max"
.LASF338:
	.string	"orig_size"
.LASF136:
	.string	"regtags"
.LASF275:
	.string	"cpu_abort"
.LASF234:
	.string	"subpage_t"
.LASF304:
	.string	"mmio"
.LASF293:
	.string	"ram_addr"
.LASF381:
	.string	"do_unaligned_access"
.LASF20:
	.string	"_IO_read_end"
.LASF458:
	.string	"argos_io_readw"
.LASF428:
	.string	"stb_phys"
.LASF426:
	.string	"stw_phys"
.LASF326:
	.string	"subpage_writew"
.LASF62:
	.string	"uint32_t"
.LASF403:
	.string	"tb_jmp_cache_hash_func"
.LASF230:
	.string	"PageDesc"
.LASF271:
	.string	"cpu_reset_interrupt"
.LASF32:
	.string	"_fileno"
.LASF444:
	.string	"notdirty_mem_writew"
.LASF505:
	.string	"logfilename"
.LASF392:
	.string	"saved_tb"
.LASF500:
	.string	"phys_ram_alloc_offset"
.LASF172:
	.string	"exception_index"
.LASF188:
	.string	"watchpoint"
.LASF69:
	.string	"jmp_buf"
.LASF346:
	.string	"cpu_get_io_memory_write"
.LASF310:
	.string	"unassigned_mem_readb"
.LASF435:
	.string	"breakpoint_invalidate"
.LASF368:
	.string	"max_target_code_size"
.LASF391:
	.string	"current_flags"
.LASF493:
	.string	"code_gen_ptr"
.LASF244:
	.string	"is_softmmu"
.LASF294:
	.string	"tb_link_phys"
.LASF344:
	.string	"penv"
.LASF78:
	.string	"float"
.LASF474:
	.string	"stdout"
.LASF464:
	.string	"argos_slow_ldl_cmmu"
.LASF113:
	.string	"executed_eip"
.LASF516:
	.string	"subpage_read"
.LASF90:
	.string	"base"
.LASF23:
	.string	"_IO_write_ptr"
.LASF243:
	.string	"mmu_idx"
.LASF132:
	.string	"eflags"
.LASF411:
	.string	"code_gen_size"
.LASF183:
	.string	"tlb_table"
.LASF314:
	.string	"tmptag"
.LASF12:
	.string	"int64_t"
.LASF89:
	.string	"selector"
.LASF290:
	.string	"start1"
.LASF364:
	.string	"argos_bytemap_clrq"
.LASF313:
	.string	"io_index"
.LASF184:
	.string	"tb_jmp_cache"
.LASF397:
	.string	"page_find"
.LASF440:
	.string	"offset"
.LASF462:
	.string	"io_readl"
.LASF100:
	.string	"origin"
.LASF350:
	.string	"addr1"
.LASF378:
	.string	"addr2"
.LASF463:
	.string	"__ldl_cmmu"
.LASF207:
	.string	"envmap"
.LASF13:
	.string	"__sigset_t"
.LASF195:
	.string	"cpuid_level"
.LASF390:
	.string	"current_tb_not_found"
.LASF40:
	.string	"__pad1"
.LASF262:
	.string	"interrupt_lock"
.LASF367:
	.string	"target_code_size"
.LASF283:
	.string	"tb_jmp_cache_hash_page"
.LASF128:
	.string	"argos_shellcode_context_t"
.LASF356:
	.string	"ldq_le_p"
.LASF515:
	.string	"watch_mem_write"
.LASF460:
	.string	"argos_bytemap_ldw"
.LASF156:
	.string	"xmm_t0"
.LASF278:
	.string	"tlb_flush"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
