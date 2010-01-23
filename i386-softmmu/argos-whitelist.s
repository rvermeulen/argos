	.file	"argos-whitelist.c"
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
	.string	"call"
.LC1:
	.string	"jmp"
.LC2:
	.string	"ret"
	.data
	.align 32
	.type	table_names, @object
	.size	table_names, 40
table_names:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.zero	16
	.text
	.p2align 4,,15
.globl init_argos_whitelist
	.type	init_argos_whitelist, @function
init_argos_whitelist:
.LFB167:
	.file 1 "/home/remco/Projects/Argos/src/argos-whitelist.c"
	.loc 1 47 0
	.loc 1 50 0
	xorl	%ecx, %ecx
.L9:
	movslq	%ecx,%rax
	movl	$15, %edx
	salq	$7, %rax
	addq	$whitelist_table, %rax
	.p2align 4,,7
.L8:
	.loc 1 52 0
	movq	$0, (%rax)
	addq	$8, %rax
	decl	%edx
	jns	.L8
	.loc 1 50 0
	incl	%ecx
	cmpl	$2, %ecx
	jle	.L9
	rep ; ret
.LFE167:
	.size	init_argos_whitelist, .-init_argos_whitelist
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 20
__PRETTY_FUNCTION__.0:
	.string	"add_argos_whitelist"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"/home/remco/Projects/Argos/src/argos-whitelist.c"
	.section	.rodata.str1.1
.LC4:
	.string	"(*bucket_p) != ((void *)0)"
	.text
	.p2align 4,,15
.globl add_argos_whitelist
	.type	add_argos_whitelist, @function
add_argos_whitelist:
.LFB168:
	.loc 1 58 0
	pushq	%r12
.LCFI0:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI1:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI2:
	.loc 1 62 0
	xorl	%ebx, %ebx
.L20:
.LBB2:
	.loc 1 63 0
	movslq	%ebx,%rax
	movq	%rbp, %rdi
	movq	table_names(,%rax,8), %rsi
	call	strcmp
.LBE2:
	testl	%eax, %eax
	je	.L17
	.loc 1 62 0
	incl	%ebx
	cmpl	$2, %ebx
	jle	.L20
.L32:
	.loc 1 82 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 67 0
	movl	$-1, %eax
	.loc 1 82 0
	ret
.L17:
	.loc 1 66 0
	cmpl	$2, %ebx
	jg	.L32
	.loc 1 69 0
	movslq	%ebx,%rax
	movq	%r12, %rdx
	salq	$4, %rax
	andl	$15, %edx
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 73 0
	cmpq	$0, whitelist_table(%rax)
	.loc 1 69 0
	leaq	whitelist_table(%rax), %rbx
	jmp	.L33
	.p2align 4,,7
.L35:
	.loc 1 71 0
	movq	(%rbx), %rax
	cmpl	%r12d, (%rax)
	je	.L34
	.loc 1 73 0
	cmpq	$0, 8(%rax)
	leaq	8(%rax), %rbx
.L33:
	jne	.L35
	.loc 1 75 0
	movl	$16, %edi
	call	qemu_malloc
	.loc 1 76 0
	testq	%rax, %rax
	.loc 1 75 0
	movq	%rax, (%rbx)
	.loc 1 76 0
	je	.L36
	.loc 1 77 0
	movl	%r12d, (%rax)
	.loc 1 78 0
	movq	(%rbx), %rax
	movq	$0, 8(%rax)
.L34:
	.loc 1 82 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 81 0
	xorl	%eax, %eax
	.loc 1 82 0
	ret
.L36:
	.loc 1 76 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$76, %edx
	movl	$.LC3, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.LFE168:
	.size	add_argos_whitelist, .-add_argos_whitelist
	.section	.rodata.str1.1
.LC5:
	.string	"r"
.LC7:
	.string	"%s %s 0x%llx"
.LC8:
	.string	"%s 0x%llx\n"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"[ARGOS] don't know what to do with whitelist line:\n%s"
	.align 8
.LC6:
	.string	"[ARGOS] whitelist file \"%s\" cannot be found or opened, no whitelist applied\n"
	.text
	.p2align 4,,15
.globl read_argos_whitelist
	.type	read_argos_whitelist, @function
read_argos_whitelist:
.LFB169:
	.loc 1 85 0
	pushq	%r15
.LCFI3:
	pushq	%r14
.LCFI4:
	pushq	%r13
.LCFI5:
	pushq	%r12
.LCFI6:
	pushq	%rbp
.LCFI7:
	pushq	%rbx
.LCFI8:
	movq	%rsi, %rbx
	.loc 1 91 0
	movl	$.LC5, %esi
	.loc 1 85 0
	subq	$264, %rsp
.LCFI9:
	.loc 1 85 0
	movq	%rdi, (%rsp)
	.loc 1 91 0
	movq	%rbx, %rdi
	call	fopen64
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L61
	leaq	176(%rsp), %r12
	leaq	16(%rsp), %r15
	leaq	96(%rsp), %r14
	.p2align 4,,7
.L60:
	.loc 1 107 0
	movq	%r13, %rdx
	movl	$80, %esi
	movq	%r12, %rdi
	call	fgets
	testq	%rax, %rax
	je	.L62
.L54:
	.loc 1 98 0
	leaq	8(%rsp), %r8
	xorl	%eax, %eax
	movq	%r15, %rcx
	movq	%r14, %rdx
	movl	$.LC7, %esi
	movq	%r12, %rdi
	call	sscanf
	cmpl	$3, %eax
	jne	.L41
	.loc 1 99 0
	movq	%r14, %rcx
	.p2align 4,,7
.L42:
	movl	(%rcx), %eax
	addq	$4, %rcx
	leal	-16843009(%rax), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$-2139062144, %edx
	je	.L42
	movl	%edx, %eax
.LBB3:
	.loc 1 100 0
	movq	%r14, %rdi
.LBE3:
	.loc 1 99 0
	shrl	$16, %eax
	testl	$32896, %edx
	cmove	%eax, %edx
	leaq	2(%rcx), %rax
	cmove	%rax, %rcx
	addb	%dl, %dl
	sbbq	$3, %rcx
	subq	%r14, %rcx
	movb	$0, 95(%rsp,%rcx)
.LBB4:
	.loc 1 100 0
	movq	(%rsp), %rsi
	call	strcmp
.LBE4:
	testl	%eax, %eax
	jne	.L60
.L45:
	.loc 1 105 0
	movl	8(%rsp), %esi
	movq	%r15, %rdi
	call	add_argos_whitelist
	.loc 1 107 0
	movq	%r13, %rdx
	movl	$80, %esi
	movq	%r12, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L54
.L62:
	.loc 1 119 0
	movq	%r13, %rdi
	call	fclose
	.loc 1 120 0
	xorl	%eax, %eax
.L37:
	.loc 1 121 0
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L41:
	.loc 1 103 0
	leaq	8(%rsp), %rcx
	xorl	%eax, %eax
	movq	%r15, %rdx
	movl	$.LC8, %esi
	movq	%r12, %rdi
	call	sscanf
	cmpl	$2, %eax
	je	.L45
	.loc 1 107 0
	xorl	%ebp, %ebp
	cmpb	$0, 176(%rsp)
	je	.L60
	call	__ctype_b_loc
	movq	(%rax), %rdx
	xorl	%ebx, %ebx
	jmp	.L53
	.p2align 4,,7
.L63:
	incl	%ebp
	movslq	%ebp,%rbx
	cmpb	$0, 176(%rsp,%rbx)
	je	.L60
.L53:
	.loc 1 108 0
	movsbq	176(%rsp,%rbx),%rax
	testb	$32, 1(%rdx,%rax,2)
	jne	.L63
	.loc 1 109 0
	movq	stderr(%rip), %rdi
	movq	%r12, %rdx
	movl	$.LC9, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L60
.L61:
	.loc 1 92 0
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movl	$.LC6, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 94 0
	movl	$-1, %eax
	jmp	.L37
.LFE169:
	.size	read_argos_whitelist, .-read_argos_whitelist
	.comm	whitelist_table,384,32
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
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI0-.LFB168
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.byte	0x4
	.long	.LCFI3-.LFB169
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x140
	.align 8
.LEFDE4:
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
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI0-.LFB168
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.byte	0x4
	.long	.LCFI3-.LFB169
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x140
	.align 8
.LEFDE5:
	.file 2 "../cpu-defs.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/home/remco/Projects/Argos/src/argos-whitelist.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x596
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
	.byte	0xd5
	.long	0x38
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF8
	.byte	0x8
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x8
	.byte	0x8e
	.long	0x69
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x31
	.long	0xa7
	.uleb128 0x7
	.long	0x273
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x7
	.value	0x110
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x7
	.value	0x115
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x116
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x117
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x118
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x119
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x11a
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11b
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11e
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11f
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x120
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x122
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x124
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x126
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x12a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x12c
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x130
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x131
	.long	0x54
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x132
	.long	0x2bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x136
	.long	0x2cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x13f
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x148
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x149
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x14a
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14b
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x150
	.long	0x2d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b1
	.long	.LASF43
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0xbb
	.long	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0xbc
	.long	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0xc0
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27a
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x2cd
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x273
	.uleb128 0xb
	.long	0x2e3
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e9
	.uleb128 0xd
	.long	0x95
	.uleb128 0x2
	.long	.LASF47
	.byte	0x3
	.byte	0x31
	.long	0x3f
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x34
	.long	0x4d
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x31
	.long	0x2f9
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x10
	.byte	0x4
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x7
	.long	0x353
	.long	.LASF53
	.byte	0x10
	.byte	0x4
	.byte	0x2b
	.uleb128 0xe
	.string	"key"
	.byte	0x4
	.byte	0x2c
	.long	0x304
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x4
	.byte	0x2d
	.long	0x353
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x32a
	.uleb128 0xf
	.long	0x390
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x2f
	.quad	.LFB167
	.quad	.LFE167
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x62
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x30
	.long	0x62
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x12
	.long	0x421
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x62
	.quad	.LFB168
	.quad	.LFE168
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x39
	.long	0x2e3
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"pc"
	.byte	0x1
	.byte	0x39
	.long	0x304
	.byte	0x1
	.byte	0x5c
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.long	0x62
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x3c
	.long	0x421
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.long	.LASF60
	.long	0x437
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x16
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x3f
	.long	0x2d
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x3f
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x353
	.uleb128 0xb
	.long	0x437
	.long	0x2e9
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x427
	.uleb128 0x12
	.long	0x4f6
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x62
	.quad	.LFB169
	.quad	.LFE169
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x54
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x54
	.long	0x2e3
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0x56
	.long	0x324
	.byte	0x1
	.byte	0x5d
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x57
	.long	0x4f6
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x10
	.string	"os"
	.byte	0x1
	.byte	0x57
	.long	0x4f6
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.byte	0x57
	.long	0x4f6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x58
	.long	0x506
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x59
	.long	0x62
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.byte	0x68
	.quad	.L45
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x506
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x4f
	.byte	0x0
	.uleb128 0x3
	.long	.LASF67
	.byte	0x8
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x6
	.byte	0x91
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x6
	.byte	0x92
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x6
	.byte	0x93
	.long	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x9
	.value	0x376
	.long	0x542
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2ee
	.uleb128 0xb
	.long	0x55e
	.long	0x353
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x1
	.byte	0x29
	.long	0x548
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	whitelist_table
	.uleb128 0xb
	.long	0x584
	.long	0x2e3
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.byte	0x0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.byte	0x2b
	.long	0x574
	.byte	0x9
	.byte	0x3
	.quad	table_names
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x59a
	.long	0x359
	.string	"init_argos_whitelist"
	.long	0x390
	.string	"add_argos_whitelist"
	.long	0x43c
	.string	"read_argos_whitelist"
	.long	0x55e
	.string	"whitelist_table"
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long int"
.LASF31:
	.string	"_shortbuf"
.LASF41:
	.string	"_IO_lock_t"
.LASF70:
	.string	"stderr"
.LASF57:
	.string	"add_argos_whitelist"
.LASF20:
	.string	"_IO_buf_end"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF54:
	.string	"next"
.LASF48:
	.string	"uint32_t"
.LASF12:
	.string	"_flags"
.LASF24:
	.string	"_markers"
.LASF63:
	.string	"read_argos_whitelist"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"hashtable_node"
.LASF56:
	.string	"init_argos_whitelist"
.LASF46:
	.string	"_pos"
.LASF69:
	.string	"stdout"
.LASF50:
	.string	"float"
.LASF67:
	.string	"long long unsigned int"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF26:
	.string	"_fileno"
.LASF55:
	.string	"bucket"
.LASF7:
	.string	"size_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF44:
	.string	"_next"
.LASF74:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF47:
	.string	"uint8_t"
.LASF49:
	.string	"target_ulong"
.LASF62:
	.string	"__s2_len"
.LASF61:
	.string	"__s1_len"
.LASF10:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF16:
	.string	"_IO_write_base"
.LASF13:
	.string	"_IO_read_ptr"
.LASF73:
	.string	"table_names"
.LASF58:
	.string	"tname"
.LASF43:
	.string	"_IO_marker"
.LASF60:
	.string	"__PRETTY_FUNCTION__"
.LASF72:
	.string	"whitelist_table"
.LASF59:
	.string	"bucket_p"
.LASF21:
	.string	"_IO_save_base"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF66:
	.string	"llpc"
.LASF30:
	.string	"_vtable_offset"
.LASF52:
	.string	"long double"
.LASF75:
	.string	"/home/remco/Projects/Argos/src/argos-whitelist.c"
.LASF14:
	.string	"_IO_read_end"
.LASF71:
	.string	"phys_ram_dirty"
.LASF64:
	.string	"osname"
.LASF65:
	.string	"filename"
.LASF76:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF32:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF68:
	.string	"stdin"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF17:
	.string	"_IO_write_ptr"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF51:
	.string	"double"
.LASF77:
	.string	"add_pc"
.LASF25:
	.string	"_chain"
.LASF11:
	.string	"FILE"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
.LASF9:
	.string	"__off64_t"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
