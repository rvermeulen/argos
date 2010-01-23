	.file	"cutils.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl pstrcpy
	.type	pstrcpy, @function
pstrcpy:
.LFB97:
	.file 1 "cutils.c"
	.loc 1 27 0
	.loc 1 31 0
	testl	%esi, %esi
	jle	.L1
	movslq	%esi,%rax
	leaq	-1(%rax,%rdi), %rax
	jmp	.L3
	.p2align 4,,7
.L8:
	.loc 1 36 0
	cmpq	%rdi, %rax
	jbe	.L4
	.loc 1 38 0
	movb	%cl, (%rdi)
	incq	%rdi
.L3:
	.loc 1 35 0
	movsbl	(%rdx),%ecx
	incq	%rdx
	.loc 1 36 0
	testl	%ecx, %ecx
	jne	.L8
.L4:
	.loc 1 40 0
	movb	$0, (%rdi)
.L1:
	rep ; ret
.LFE97:
	.size	pstrcpy, .-pstrcpy
	.p2align 4,,15
.globl pstrcat
	.type	pstrcat, @function
pstrcat:
.LFB98:
	.loc 1 45 0
	movq	%rbx, -24(%rsp)
.LCFI0:
	movq	%rbp, -16(%rsp)
.LCFI1:
	movl	%esi, %ebx
	movq	%r12, -8(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 1 45 0
	movq	%rdi, %rbp
	movq	%rdx, %r12
	.loc 1 47 0
	call	strlen
	.loc 1 48 0
	cmpl	%ebx, %eax
	jl	.L11
	.loc 1 51 0
	movq	%rbp, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L11:
	.loc 1 49 0
	subl	%eax, %ebx
	movslq	%eax,%rdi
	movq	%r12, %rdx
	addq	%rbp, %rdi
	movl	%ebx, %esi
	call	pstrcpy
	.loc 1 51 0
	movq	%rbp, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE98:
	.size	pstrcat, .-pstrcat
	.p2align 4,,15
.globl strstart
	.type	strstart, @function
strstart:
.LFB99:
	.loc 1 54 0
	.loc 1 62 0
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	.L19
	.p2align 4,,7
.L22:
	.loc 1 59 0
	cmpb	%al, (%rdi)
	jne	.L21
	.loc 1 61 0
	incq	%rdi
	.loc 1 62 0
	incq	%rsi
	movzbl	(%rsi), %eax
	testb	%al, %al
	jne	.L22
.L19:
	.loc 1 64 0
	testq	%rdx, %rdx
	je	.L17
	.loc 1 65 0
	movq	%rdi, (%rdx)
.L17:
	.loc 1 66 0
	movl	$1, %eax
	.loc 1 67 0
	ret
.L21:
	.loc 1 60 0
	xorl	%eax, %eax
	.p2align 4,,4
	ret
.LFE99:
	.size	strstart, .-strstart
	.p2align 4,,15
.globl stristart
	.type	stristart, @function
stristart:
.LFB100:
	.loc 1 70 0
	movq	%rbp, -24(%rsp)
.LCFI4:
	movq	%r12, -16(%rsp)
.LCFI5:
	.loc 1 73 0
	movq	%rsi, %rbp
	.loc 1 70 0
	movq	%r13, -8(%rsp)
.LCFI6:
	movq	%rbx, -32(%rsp)
.LCFI7:
	subq	$40, %rsp
.LCFI8:
	.loc 1 78 0
	movzbl	(%rsi), %eax
	.loc 1 70 0
	movq	%rdx, %r13
	.loc 1 72 0
	movq	%rdi, %r12
	.loc 1 78 0
	testb	%al, %al
	jne	.L47
.L46:
	.loc 1 80 0
	testq	%r13, %r13
	je	.L44
	.loc 1 81 0
	movq	%r12, (%r13)
.L44:
	.loc 1 83 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 82 0
	movl	$1, %eax
	.loc 1 83 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L47:
	movl	%eax, %ebx
	call	__ctype_toupper_loc
	movq	(%rax), %rcx
	jmp	.L43
	.p2align 4,,7
.L26:
	.loc 1 78 0
	incq	%rbp
	.loc 1 77 0
	incq	%r12
	.loc 1 78 0
	movzbl	(%rbp), %ebx
	testb	%bl, %bl
	je	.L46
.L43:
.LBB2:
	.loc 1 75 0
	movsbq	(%r12),%rax
.LBE2:
.LBB3:
	movsbq	%bl,%rdx
	movl	(%rcx,%rdx,4), %edx
.LBE3:
	cmpl	%edx, (%rcx,%rax,4)
	je	.L26
	.loc 1 83 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 76 0
	xorl	%eax, %eax
	.loc 1 83 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE100:
	.size	stristart, .-stristart
	.p2align 4,,15
.globl mktimegm
	.type	mktimegm, @function
mktimegm:
.LFB101:
	.loc 1 86 0
	.loc 1 88 0
	movl	16(%rdi), %edx
	movl	20(%rdi), %ecx
	movl	12(%rdi), %r8d
	leal	1(%rdx), %eax
	leal	1900(%rcx), %esi
	.loc 1 89 0
	cmpl	$2, %eax
	jg	.L49
	.loc 1 90 0
	leal	13(%rdx), %eax
	.loc 1 91 0
	leal	1899(%rcx), %esi
.L49:
	.loc 1 93 0
	imull	$153, %eax, %edx
	subl	$457, %edx
	movslq	%edx,%rax
	sarl	$31, %edx
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	%eax
	subl	%edx, %eax
	imull	$365, %esi, %edx
	addl	%r8d, %eax
	.loc 1 95 0
	movl	8(%rdi), %r8d
	.loc 1 93 0
	addl	%edx, %eax
	leal	3(%rsi), %edx
	cmpl	$-1, %esi
	cmovg	%esi, %edx
	sarl	$2, %edx
	addl	%edx, %eax
	movslq	%esi,%rdx
	sarl	$31, %esi
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$7, %edx
	sarl	$5, %ecx
	subl	%esi, %edx
	subl	%esi, %ecx
	.loc 1 95 0
	movl	$60, %esi
	.loc 1 93 0
	subl	%ecx, %eax
	.loc 1 95 0
	movl	4(%rdi), %ecx
	.loc 1 93 0
	leal	-719469(%rax,%rdx), %eax
	.loc 1 95 0
	imull	$3600, %r8d, %edx
	imull	%esi, %ecx
	addl	%ecx, %edx
	addl	(%rdi), %edx
	.loc 1 93 0
	imull	$86400, %eax, %eax
	.loc 1 95 0
	movslq	%edx,%rdx
	.loc 1 93 0
	cltq
	.loc 1 95 0
	addq	%rdx, %rax
	.loc 1 97 0
	ret
.LFE101:
	.size	mktimegm, .-mktimegm
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI5-.LFB100
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE8:
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI5-.LFB100
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE9:
	.file 2 "/usr/include/time.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x5e1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF70
	.byte	0x1
	.long	.LASF71
	.long	.LASF72
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
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
	.byte	0x3
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8e
	.long	0x4d
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x95
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF13
	.byte	0x2
	.byte	0x4c
	.long	0xa6
	.uleb128 0x3
	.long	.LASF14
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x297
	.long	.LASF45
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.value	0x115
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.value	0x116
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x117
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x118
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x119
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x11a
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x11b
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x11c
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x11e
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x11f
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x120
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x122
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x124
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x132
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x136
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x148
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x149
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x14a
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x14b
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x150
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0xb4
	.uleb128 0x8
	.long	0x2d5
	.long	.LASF46
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xbb
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xbc
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF49
	.byte	0x5
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x29e
	.uleb128 0x5
	.byte	0x8
	.long	0xcb
	.uleb128 0xc
	.long	0x2f1
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x297
	.uleb128 0xc
	.long	0x307
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xe
	.long	0x3ad
	.string	"tm"
	.byte	0x38
	.byte	0x2
	.byte	0x86
	.uleb128 0xb
	.long	.LASF50
	.byte	0x2
	.byte	0x87
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x2
	.byte	0x88
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF52
	.byte	0x2
	.byte	0x89
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF53
	.byte	0x2
	.byte	0x8a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF54
	.byte	0x2
	.byte	0x8b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF55
	.byte	0x2
	.byte	0x8c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF56
	.byte	0x2
	.byte	0x8d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF57
	.byte	0x2
	.byte	0x8e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF58
	.byte	0x2
	.byte	0x8f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF59
	.byte	0x2
	.byte	0x92
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF60
	.byte	0x2
	.byte	0x93
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0xf
	.long	0x40a
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x1a
	.long	0xb3
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x1a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"str"
	.byte	0x1
	.byte	0x1a
	.long	0x69
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x1d
	.long	0xb3
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x13
	.long	0x460
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0xb3
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x2c
	.long	0xb3
	.byte	0x1
	.byte	0x56
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x2c
	.long	0x69
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x13
	.long	0x4c1
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x3f
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"str"
	.byte	0x1
	.byte	0x35
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0x35
	.long	0x69
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x35
	.long	0x4c1
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x37
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x37
	.long	0x69
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x69
	.uleb128 0x13
	.long	0x568
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	0x3f
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"str"
	.byte	0x1
	.byte	0x45
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0x45
	.long	0x69
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x45
	.long	0x4c1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x47
	.long	0x69
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x47
	.long	0x69
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.long	0x548
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x0
	.uleb128 0x16
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.long	0x5c4
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0xb9
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.string	"tm"
	.byte	0x1
	.byte	0x55
	.long	0x5c4
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0x57
	.long	0xb9
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"m"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x307
	.uleb128 0x18
	.long	.LASF68
	.byte	0x4
	.byte	0x91
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF69
	.byte	0x4
	.byte	0x92
	.long	0x2db
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x4e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5e5
	.long	0x3ad
	.string	"pstrcpy"
	.long	0x40a
	.string	"pstrcat"
	.long	0x460
	.string	"strstart"
	.long	0x4c7
	.string	"stristart"
	.long	0x568
	.string	"mktimegm"
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
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"_shortbuf"
.LASF44:
	.string	"_IO_lock_t"
.LASF57:
	.string	"tm_yday"
.LASF23:
	.string	"_IO_buf_end"
.LASF21:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF72:
	.string	"/home/remco/Projects/Argos/src"
.LASF15:
	.string	"_flags"
.LASF31:
	.string	"_old_offset"
.LASF27:
	.string	"_markers"
.LASF53:
	.string	"tm_mday"
.LASF8:
	.string	"short int"
.LASF54:
	.string	"tm_mon"
.LASF19:
	.string	"_IO_write_base"
.LASF66:
	.string	"__res"
.LASF14:
	.string	"long long unsigned int"
.LASF65:
	.string	"stristart"
.LASF36:
	.string	"_offset"
.LASF29:
	.string	"_fileno"
.LASF71:
	.string	"cutils.c"
.LASF9:
	.string	"size_t"
.LASF33:
	.string	"_vtable_offset"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF49:
	.string	"_pos"
.LASF52:
	.string	"tm_hour"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_mode"
.LASF55:
	.string	"tm_year"
.LASF16:
	.string	"_IO_read_ptr"
.LASF13:
	.string	"time_t"
.LASF46:
	.string	"_IO_marker"
.LASF3:
	.string	"long long int"
.LASF24:
	.string	"_IO_save_base"
.LASF63:
	.string	"pstrcat"
.LASF70:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF67:
	.string	"mktimegm"
.LASF69:
	.string	"stdout"
.LASF25:
	.string	"_IO_backup_base"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF62:
	.string	"pstrcpy"
.LASF17:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF61:
	.string	"buf_size"
.LASF35:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF68:
	.string	"stdin"
.LASF45:
	.string	"_IO_FILE"
.LASF51:
	.string	"tm_min"
.LASF60:
	.string	"tm_zone"
.LASF6:
	.string	"unsigned char"
.LASF64:
	.string	"strstart"
.LASF48:
	.string	"_sbuf"
.LASF20:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"__time_t"
.LASF56:
	.string	"tm_wday"
.LASF10:
	.string	"__off_t"
.LASF7:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF50:
	.string	"tm_sec"
.LASF58:
	.string	"tm_isdst"
.LASF59:
	.string	"tm_gmtoff"
.LASF28:
	.string	"_chain"
.LASF30:
	.string	"_flags2"
.LASF32:
	.string	"_cur_column"
.LASF47:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF43:
	.string	"_unused2"
.LASF22:
	.string	"_IO_buf_base"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
