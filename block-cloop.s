	.file	"block-cloop.c"
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
	.string	"cloop"
.globl bdrv_cloop
	.data
	.align 32
	.type	bdrv_cloop, @object
	.size	bdrv_cloop, 272
bdrv_cloop:
	.quad	.LC0
	.long	160
	.zero	4
	.quad	cloop_probe
	.quad	cloop_open
	.quad	cloop_read
	.quad	0
	.quad	cloop_close
	.zero	216
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"#!/bin/sh\n#V2.0 Format\nmodprobe cloop file=$0 && mount -r -t iso9660 /dev/cloop $1\n"
	.text
	.p2align 4,,15
	.type	cloop_probe, @function
cloop_probe:
.LFB97:
	.file 1 "block-cloop.c"
	.loc 1 41 0
	pushq	%r12
.LCFI0:
	movq	%rdi, %r12
	.loc 1 45 0
	movl	$.LC1, %edi
	.loc 1 41 0
	pushq	%rbx
.LCFI1:
	movl	%esi, %ebx
	subq	$8, %rsp
.LCFI2:
	.loc 1 45 0
	call	strlen
	.loc 1 47 0
	cmpl	%ebx, %eax
	.loc 1 48 0
	movq	%r12, %rdi
	movl	$.LC1, %esi
	.loc 1 47 0
	cmovg	%ebx, %eax
	.loc 1 48 0
	movslq	%eax,%rcx
	cld
	cmpq	%rcx, %rcx
	repz
	cmpsb
	seta	%al
	setb	%dl
	subb	%dl, %al
	movsbl	%al,%eax
	.loc 1 49 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	.loc 1 51 0
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	.loc 1 49 0
	andl	$2, %eax
	.loc 1 51 0
	ret
.LFE97:
	.size	cloop_probe, .-cloop_probe
	.section	.rodata.str1.1
.LC2:
	.string	"1.2.3.3"
	.text
	.p2align 4,,15
	.type	cloop_open, @function
cloop_open:
.LFB98:
	.loc 1 54 0
	movq	%r12, -16(%rsp)
.LCFI3:
	movq	%rdi, %r12
	movq	%r13, -8(%rsp)
.LCFI4:
	movq	%rbx, -32(%rsp)
.LCFI5:
	movq	%rbp, -24(%rsp)
.LCFI6:
	subq	$40, %rsp
.LCFI7:
	.loc 1 55 0
	movq	56(%r12), %rbx
	.loc 1 54 0
	movq	%rsi, %rdi
	.loc 1 58 0
	xorl	%eax, %eax
	xorl	%esi, %esi
	.loc 1 56 0
	movl	$1, %r13d
	.loc 1 58 0
	call	open64
	.loc 1 59 0
	testl	%eax, %eax
	.loc 1 58 0
	movl	%eax, (%rbx)
	.loc 1 59 0
	js	.L36
	.loc 1 61 0
	movl	$1, 8(%r12)
	.loc 1 64 0
	movl	(%rbx), %edi
	xorl	%edx, %edx
	movl	$128, %esi
	call	lseek64
	testq	%rax, %rax
	js	.L7
	.loc 1 69 0
	movl	(%rbx), %edi
	leaq	4(%rbx), %rsi
	movl	$4, %edx
	call	read
	cmpq	$3, %rax
	jg	.L37
.L7:
	.loc 1 66 0
	movl	(%rbx), %edi
	call	close
	.loc 1 67 0
	movl	$-1, %eax
.L4:
	.loc 1 103 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L37:
	.loc 1 72 0
	movl	(%rbx), %edi
	leaq	8(%rbx), %rsi
.LBB2:
	.file 2 "bswap.h"
	.loc 2 120 0
	movl	4(%rbx), %eax
.LBE2:
	.loc 1 72 0
	movl	$4, %edx
.LBB3:
.LBB4:
.LBB5:
.LBB6:
.LBB7:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE7:
.LBE6:
.LBE5:
.LBE4:
.LBE3:
	.loc 2 120 0
	movl	%eax, 4(%rbx)
	.loc 1 72 0
	call	read
	cmpq	$3, %rax
	jle	.L7
.LBB8:
	.loc 2 120 0
	movl	8(%rbx), %eax
.LBB9:
.LBB10:
.LBB11:
.LBB12:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE12:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 2 120 0
	movl	%eax, 8(%rbx)
	.loc 1 77 0
	sall	$3, %eax
	.loc 1 78 0
	mov	%eax, %ebp
	movq	%rbp, %rdi
	call	malloc
	testq	%rax, %rax
	movq	%rax, 16(%rbx)
	je	.L7
	.loc 1 80 0
	movl	(%rbx), %edi
	movq	%rbp, %rdx
	movq	%rax, %rsi
	call	read
	cmpq	%rbp, %rax
	jl	.L7
	.loc 1 82 0
	movl	8(%rbx), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L34
	movl	$-1, %edi
	.p2align 4,,7
.L29:
	.loc 1 83 0
	movq	16(%rbx), %rdx
	mov	%esi, %ecx
.LBB13:
	.loc 2 121 0
	movq	(%rdx,%rcx,8), %rax
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE17:
.LBE16:
.LBE15:
.LBE14:
.LBE13:
	.loc 1 84 0
	testl	%esi, %esi
	.loc 2 121 0
	movq	%rax, (%rdx,%rcx,8)
	.loc 1 84 0
	je	.L22
.LBB18:
	.loc 1 85 0
	movq	16(%rbx), %rax
	movq	(%rax,%rcx,8), %rdx
	mov	%edi, %ecx
	subl	(%rax,%rcx,8), %edx
	.loc 1 87 0
	cmpl	%r13d, %edx
	cmova	%edx, %r13d
.L22:
.LBE18:
	.loc 1 82 0
	incl	%esi
	incl	%edi
	cmpl	%esi, 8(%rbx)
	ja	.L29
.L34:
	.loc 1 92 0
	leal	1(%r13), %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, 32(%rbx)
	je	.L7
	.loc 1 94 0
	mov	4(%rbx), %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, 40(%rbx)
	je	.L7
	.loc 1 96 0
	leaq	48(%rbx), %rdi
	movl	$112, %edx
	movl	$.LC2, %esi
	call	inflateInit_
	testl	%eax, %eax
	jne	.L7
	.loc 1 100 0
	movl	4(%rbx), %eax
	.loc 1 98 0
	movl	8(%rbx), %edx
	.loc 1 100 0
	shrl	$9, %eax
	.loc 1 98 0
	movl	%edx, 28(%rbx)
	.loc 1 101 0
	imull	%eax, %edx
	.loc 1 100 0
	movl	%eax, 24(%rbx)
	.loc 1 102 0
	xorl	%eax, %eax
	.loc 1 101 0
	movq	%rdx, (%r12)
	jmp	.L4
	.p2align 4,,7
.L36:
	.loc 1 60 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 103 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 60 0
	negl	%eax
	.loc 1 103 0
	ret
.LFE98:
	.size	cloop_open, .-cloop_open
	.p2align 4,,15
	.type	cloop_read, @function
cloop_read:
.LFB100:
	.loc 1 134 0
	pushq	%r15
.LCFI8:
	pushq	%r14
.LCFI9:
	.loc 1 138 0
	xorl	%r14d, %r14d
	.loc 1 134 0
	pushq	%r13
.LCFI10:
	pushq	%r12
.LCFI11:
	pushq	%rbp
.LCFI12:
	pushq	%rbx
.LCFI13:
	subq	$24, %rsp
.LCFI14:
	.loc 1 138 0
	cmpl	%ecx, %r14d
	.loc 1 134 0
	movq	%rdx, 16(%rsp)
	movl	%ecx, 12(%rsp)
	.loc 1 135 0
	movq	56(%rdi), %rbp
	.loc 1 138 0
	jge	.L51
	leaq	48(%rbp), %rax
	movq	%rsi, %r13
	movq	%rax, (%rsp)
	.p2align 4,,7
.L49:
.LBB19:
	.loc 1 139 0
	mov	24(%rbp), %edx
	movq	%r13, %rax
	movq	%rdx, %rcx
	cqto
	idivq	%rcx
.LBB20:
.LBB21:
	.loc 1 107 0
	cmpl	%eax, 28(%rbp)
.LBE21:
.LBE20:
	.loc 1 139 0
	movq	%rax, %r15
	movl	%edx, %r12d
.LBB22:
.LBB23:
	.loc 1 107 0
	je	.L43
.LBB24:
	.loc 1 109 0
	movslq	%eax,%rdx
	movq	16(%rbp), %rax
	.loc 1 111 0
	movl	(%rbp), %edi
	.loc 1 109 0
	movq	(%rax,%rdx,8), %rsi
	movq	8(%rax,%rdx,8), %rbx
	.loc 1 111 0
	xorl	%edx, %edx
	.loc 1 109 0
	subl	%esi, %ebx
	.loc 1 111 0
	call	lseek64
	.loc 1 112 0
	movq	32(%rbp), %rsi
	movl	(%rbp), %edi
	mov	%ebx, %edx
	call	read
	.loc 1 113 0
	cmpl	%eax, %ebx
	.loc 1 112 0
	movq	%rax, %rdx
	.loc 1 113 0
	jne	.L52
	.loc 1 116 0
	movq	32(%rbp), %rax
	.loc 1 117 0
	movl	%edx, 56(%rbp)
	.loc 1 116 0
	movq	%rax, 48(%rbp)
	.loc 1 118 0
	movq	40(%rbp), %rax
	movq	%rax, 72(%rbp)
	.loc 1 119 0
	movl	4(%rbp), %eax
	movl	%eax, 80(%rbp)
	.loc 1 120 0
	movq	(%rsp), %rdi
	call	inflateReset
	.loc 1 121 0
	testl	%eax, %eax
	jne	.L52
	.loc 1 123 0
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	inflate
	.loc 1 124 0
	decl	%eax
	jne	.L52
	mov	4(%rbp), %eax
	cmpq	%rax, 88(%rbp)
	jne	.L52
	.loc 1 127 0
	movl	%r15d, 28(%rbp)
.L43:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 143 0
	movl	%r14d, %edi
	sall	$9, %r12d
	movl	$512, %edx
	sall	$9, %edi
	mov	%r12d, %esi
	addq	40(%rbp), %rsi
	movslq	%edi,%rdi
	addq	16(%rsp), %rdi
.LBE19:
	.loc 1 138 0
	incl	%r14d
	incq	%r13
.LBB25:
	.loc 1 143 0
	call	memcpy
.LBE25:
	.loc 1 138 0
	cmpl	12(%rsp), %r14d
	jl	.L49
.L51:
	.loc 1 146 0
	addq	$24, %rsp
	.loc 1 145 0
	xorl	%eax, %eax
	.loc 1 146 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L52:
	addq	$24, %rsp
.LBB26:
	.loc 1 142 0
	movl	$-1, %eax
.LBE26:
	.loc 1 146 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE100:
	.size	cloop_read, .-cloop_read
	.p2align 4,,15
	.type	cloop_close, @function
cloop_close:
.LFB101:
	.loc 1 149 0
	pushq	%rbx
.LCFI15:
	.loc 1 150 0
	movq	56(%rdi), %rbx
	.loc 1 151 0
	movl	(%rbx), %edi
	call	close
	.loc 1 152 0
	movl	8(%rbx), %edx
	testl	%edx, %edx
	jne	.L55
	.loc 1 154 0
	movq	32(%rbx), %rdi
	call	free
	.loc 1 155 0
	movq	40(%rbx), %rdi
	call	free
	.loc 1 156 0
	leaq	48(%rbx), %rdi
	popq	%rbx
	jmp	inflateEnd
	.p2align 4,,7
.L55:
	.loc 1 153 0
	movq	16(%rbx), %rdi
	call	free
	.loc 1 154 0
	movq	32(%rbx), %rdi
	call	free
	.loc 1 155 0
	movq	40(%rbx), %rdi
	call	free
	.loc 1 156 0
	leaq	48(%rbx), %rdi
	popq	%rbx
	jmp	inflateEnd
.LFE101:
	.size	cloop_close, .-cloop_close
	.comm	bdrv_first,8,8
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
	.byte	0x4
	.long	.LCFI0-.LFB97
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI3-.LFB98
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI8-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI15-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
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
	.byte	0x4
	.long	.LCFI0-.LFB97
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI3-.LFB98
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI8-.LFB100
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI15-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
	.file 3 "/usr/include/stdint.h"
	.file 4 "qemu-common.h"
	.file 5 "block_int.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "block.h"
	.file 8 "/usr/include/zlib.h"
	.file 9 "/usr/include/zconf.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x114a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF183
	.byte	0x1
	.long	.LASF184
	.long	.LASF185
	.uleb128 0x2
	.long	.LASF9
	.byte	0xd
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
	.uleb128 0x5
	.byte	0x8
	.long	0x3f
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
	.long	0x75
	.uleb128 0x6
	.long	0x7a
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
	.byte	0xc
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0xd6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x2a2
	.long	.LASF44
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF14
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF15
	.byte	0xb
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0xb
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0xb
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0xb
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF19
	.byte	0xb
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF20
	.byte	0xb
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF21
	.byte	0xb
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF22
	.byte	0xb
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF23
	.byte	0xb
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF24
	.byte	0xb
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF25
	.byte	0xb
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF26
	.byte	0xb
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF27
	.byte	0xb
	.value	0x124
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF28
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF29
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF30
	.byte	0xb
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF31
	.byte	0xb
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF32
	.byte	0xb
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF33
	.byte	0xb
	.value	0x132
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF34
	.byte	0xb
	.value	0x136
	.long	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF35
	.byte	0xb
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF36
	.byte	0xb
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0xb
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF38
	.byte	0xb
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF39
	.byte	0xb
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF41
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF42
	.byte	0xb
	.value	0x150
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xb
	.byte	0xb4
	.uleb128 0xa
	.long	0x2e0
	.long	.LASF45
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xd
	.long	.LASF46
	.byte	0xb
	.byte	0xbb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0xb
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0xb
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a9
	.uleb128 0x5
	.byte	0x8
	.long	0xd6
	.uleb128 0x8
	.long	0x2fc
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a2
	.uleb128 0x8
	.long	0x312
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0xe
	.long	0x33f
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x345
	.uleb128 0x6
	.long	0x312
	.uleb128 0x2
	.long	.LASF52
	.byte	0x4
	.byte	0x6e
	.long	0x355
	.uleb128 0x10
	.long	0x509
	.long	.LASF52
	.value	0xac0
	.byte	0x4
	.byte	0x6e
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x5d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x5
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x65
	.long	0xab4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.byte	0x66
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x5
	.byte	0x68
	.long	0xaba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x69
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF62
	.byte	0x5
	.byte	0x6c
	.long	0xac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF63
	.byte	0x5
	.byte	0x6e
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.long	.LASF64
	.byte	0x5
	.byte	0x6f
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0xd
	.long	.LASF67
	.byte	0x5
	.byte	0x74
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.long	.LASF68
	.byte	0x5
	.byte	0x77
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0xd
	.long	.LASF69
	.byte	0x5
	.byte	0x7a
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0xd
	.long	.LASF70
	.byte	0x5
	.byte	0x7b
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.long	.LASF71
	.byte	0x5
	.byte	0x7c
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.long	.LASF72
	.byte	0x5
	.byte	0x7d
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xd
	.long	.LASF73
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.long	.LASF74
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.long	.LASF75
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.long	.LASF76
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xd
	.long	.LASF77
	.byte	0x5
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xd
	.long	.LASF78
	.byte	0x5
	.byte	0x83
	.long	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x84
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x7
	.byte	0x5
	.long	0x514
	.uleb128 0x10
	.long	0x710
	.long	.LASF80
	.value	0x110
	.byte	0x7
	.byte	0x5
	.uleb128 0xd
	.long	.LASF81
	.byte	0x5
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF83
	.byte	0x5
	.byte	0x24
	.long	0x85a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF84
	.byte	0x5
	.byte	0x25
	.long	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF85
	.byte	0x5
	.byte	0x27
	.long	0x8ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF86
	.byte	0x5
	.byte	0x29
	.long	0x8d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF87
	.byte	0x5
	.byte	0x2a
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF88
	.byte	0x5
	.byte	0x2c
	.long	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF89
	.byte	0x5
	.byte	0x2d
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF90
	.byte	0x5
	.byte	0x2f
	.long	0x92c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF91
	.byte	0x5
	.byte	0x30
	.long	0x947
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF92
	.byte	0x5
	.byte	0x31
	.long	0x95d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF93
	.byte	0x5
	.byte	0x35
	.long	0x998
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF94
	.byte	0x5
	.byte	0x38
	.long	0x9c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF95
	.byte	0x5
	.byte	0x39
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF96
	.byte	0x5
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF97
	.byte	0x5
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF98
	.byte	0x5
	.byte	0x3e
	.long	0x8ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF99
	.byte	0x5
	.byte	0x40
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF100
	.byte	0x5
	.byte	0x41
	.long	0x9f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF101
	.byte	0x5
	.byte	0x42
	.long	0xa0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF102
	.byte	0x5
	.byte	0x44
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF103
	.byte	0x5
	.byte	0x47
	.long	0xa2b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF104
	.byte	0x5
	.byte	0x49
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF105
	.byte	0x5
	.byte	0x4a
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x5
	.byte	0x4c
	.long	0xa4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.long	.LASF107
	.byte	0x5
	.byte	0x4d
	.long	0xa6d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x5
	.byte	0x50
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.long	.LASF109
	.byte	0x5
	.byte	0x51
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.long	.LASF110
	.byte	0x5
	.byte	0x52
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.long	.LASF111
	.byte	0x5
	.byte	0x53
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.long	.LASF112
	.byte	0x5
	.byte	0x56
	.long	0xaa8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.long	.LASF113
	.byte	0x5
	.byte	0x58
	.long	0x98c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x59
	.long	0xaae
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xa
	.long	0x739
	.long	.LASF114
	.byte	0x10
	.byte	0x7
	.byte	0x14
	.uleb128 0xd
	.long	.LASF115
	.byte	0x7
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF116
	.byte	0x7
	.byte	0x18
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x7
	.byte	0x19
	.long	0x710
	.uleb128 0x10
	.long	0x7ab
	.long	.LASF117
	.value	0x198
	.byte	0x7
	.byte	0x1b
	.uleb128 0xd
	.long	.LASF118
	.byte	0x7
	.byte	0x1c
	.long	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF119
	.byte	0x7
	.byte	0x1f
	.long	0x7bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF120
	.byte	0x7
	.byte	0x20
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.long	.LASF121
	.byte	0x7
	.byte	0x21
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.long	.LASF122
	.byte	0x7
	.byte	0x22
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.long	.LASF123
	.byte	0x7
	.byte	0x23
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x8
	.long	0x7bb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x8
	.long	0x7cb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x7
	.byte	0x24
	.long	0x744
	.uleb128 0x2
	.long	.LASF124
	.byte	0x7
	.byte	0x50
	.long	0x7e1
	.uleb128 0xa
	.long	0x824
	.long	.LASF124
	.byte	0x20
	.byte	0x7
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x5
	.byte	0x88
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x5
	.byte	0x89
	.long	0x992
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x8a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x8b
	.long	0x98c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF125
	.byte	0x7
	.byte	0x51
	.long	0x82f
	.uleb128 0xe
	.long	0x840
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x85a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x840
	.uleb128 0x12
	.long	0x87a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x34a
	.uleb128 0x5
	.byte	0x8
	.long	0x860
	.uleb128 0x12
	.long	0x8a5
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x312
	.uleb128 0x5
	.byte	0x8
	.long	0x886
	.uleb128 0x12
	.long	0x8d0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8b1
	.uleb128 0xe
	.long	0x8e2
	.byte	0x1
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8d6
	.uleb128 0x12
	.long	0x907
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8e8
	.uleb128 0x12
	.long	0x92c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x90d
	.uleb128 0x12
	.long	0x947
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x932
	.uleb128 0x12
	.long	0x95d
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x94d
	.uleb128 0x12
	.long	0x98c
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7d6
	.uleb128 0x5
	.byte	0x8
	.long	0x824
	.uleb128 0x5
	.byte	0x8
	.long	0x963
	.uleb128 0x12
	.long	0x9c7
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x99e
	.uleb128 0xe
	.long	0x9d9
	.byte	0x1
	.uleb128 0xf
	.long	0x98c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9cd
	.uleb128 0x12
	.long	0x9f4
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9df
	.uleb128 0x12
	.long	0xa0a
	.byte	0x1
	.long	0xb4
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9fa
	.uleb128 0x12
	.long	0xa25
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa25
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7cb
	.uleb128 0x5
	.byte	0x8
	.long	0xa10
	.uleb128 0x12
	.long	0xa46
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa25
	.uleb128 0x5
	.byte	0x8
	.long	0xa31
	.uleb128 0x12
	.long	0xa67
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa67
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x739
	.uleb128 0x5
	.byte	0x8
	.long	0xa52
	.uleb128 0x12
	.long	0xa88
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa73
	.uleb128 0x12
	.long	0xaa8
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa8e
	.uleb128 0x5
	.byte	0x8
	.long	0x514
	.uleb128 0x5
	.byte	0x8
	.long	0x333
	.uleb128 0x5
	.byte	0x8
	.long	0x509
	.uleb128 0x8
	.long	0xad1
	.long	0x312
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0xae2
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x14
	.long	.LASF126
	.byte	0x9
	.value	0x148
	.long	0x81
	.uleb128 0x14
	.long	.LASF127
	.byte	0x9
	.value	0x14a
	.long	0x46
	.uleb128 0x14
	.long	.LASF128
	.byte	0x9
	.value	0x14b
	.long	0x38
	.uleb128 0x14
	.long	.LASF129
	.byte	0x9
	.value	0x151
	.long	0xae2
	.uleb128 0x14
	.long	.LASF130
	.byte	0x9
	.value	0x15a
	.long	0xac
	.uleb128 0x2
	.long	.LASF131
	.byte	0x8
	.byte	0x50
	.long	0xb29
	.uleb128 0x5
	.byte	0x8
	.long	0xb2f
	.uleb128 0x12
	.long	0xb49
	.byte	0x1
	.long	0xb12
	.uleb128 0xf
	.long	0xb12
	.uleb128 0xf
	.long	0xaee
	.uleb128 0xf
	.long	0xaee
	.byte	0x0
	.uleb128 0x2
	.long	.LASF132
	.byte	0x8
	.byte	0x51
	.long	0xb54
	.uleb128 0x5
	.byte	0x8
	.long	0xb5a
	.uleb128 0xe
	.long	0xb6b
	.byte	0x1
	.uleb128 0xf
	.long	0xb12
	.uleb128 0xf
	.long	0xb12
	.byte	0x0
	.uleb128 0xa
	.long	0xc3c
	.long	.LASF133
	.byte	0x70
	.byte	0x8
	.byte	0x55
	.uleb128 0xd
	.long	.LASF134
	.byte	0x8
	.byte	0x56
	.long	0xc3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF135
	.byte	0x8
	.byte	0x57
	.long	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF136
	.byte	0x8
	.byte	0x58
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF137
	.byte	0x8
	.byte	0x5a
	.long	0xc3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF138
	.byte	0x8
	.byte	0x5b
	.long	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF139
	.byte	0x8
	.byte	0x5c
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"msg"
	.byte	0x8
	.byte	0x5e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF140
	.byte	0x8
	.byte	0x5f
	.long	0xc5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF141
	.byte	0x8
	.byte	0x61
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF142
	.byte	0x8
	.byte	0x62
	.long	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF60
	.byte	0x8
	.byte	0x63
	.long	0xb12
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF143
	.byte	0x8
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF144
	.byte	0x8
	.byte	0x66
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF145
	.byte	0x8
	.byte	0x67
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb06
	.uleb128 0xa
	.long	0xc5e
	.long	.LASF146
	.byte	0x4
	.byte	0x8
	.byte	0x53
	.uleb128 0xb
	.long	.LASF147
	.byte	0x8
	.value	0x573
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc42
	.uleb128 0x2
	.long	.LASF148
	.byte	0x8
	.byte	0x68
	.long	0xb6b
	.uleb128 0xa
	.long	0xcf9
	.long	.LASF149
	.byte	0xa0
	.byte	0x1
	.byte	0x1c
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF150
	.byte	0x1
	.byte	0x1e
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF151
	.byte	0x1
	.byte	0x1f
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0x20
	.long	0xcf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF153
	.byte	0x1
	.byte	0x21
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF154
	.byte	0x1
	.byte	0x22
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x23
	.long	0x8a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x24
	.long	0x8a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x25
	.long	0xc64
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x2
	.long	.LASF149
	.byte	0x1
	.byte	0x26
	.long	0xc6f
	.uleb128 0x15
	.long	0xd6c
	.long	.LASF161
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x28
	.long	0x33f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	.LASF158
	.byte	0x1
	.byte	0x28
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0x28
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF159
	.byte	0x1
	.byte	0x2a
	.long	0x6f
	.uleb128 0x19
	.long	.LASF160
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.long	0xf1f
	.long	.LASF162
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0x35
	.long	0x87a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0x35
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF163
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x37
	.long	0xf1f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF164
	.byte	0x1
	.byte	0x38
	.long	0x31d
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF165
	.byte	0x1
	.byte	0x38
	.long	0x31d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x31d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x1
	.byte	0x46
	.quad	.L7
	.uleb128 0x1c
	.long	0xe14
	.long	0xf25
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1d
	.long	0xf36
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.long	0xe4f
	.long	0xf40
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1e
	.long	0xf51
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x20
	.long	0xf5b
	.uleb128 0x20
	.long	0xf66
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xea7
	.long	0xf25
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1e
	.long	0xf36
	.uleb128 0x21
	.long	0xf40
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1e
	.long	0xf51
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x22
	.long	0xf5b
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0xf66
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xeff
	.long	0xf73
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1d
	.long	0xf84
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	0xf8e
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x1e
	.long	0xf9f
	.uleb128 0x1f
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x20
	.long	0xfa9
	.uleb128 0x20
	.long	0xfb4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x19
	.long	.LASF166
	.byte	0x1
	.byte	0x55
	.long	0x31d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcff
	.uleb128 0x23
	.long	0xf40
	.long	.LASF167
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x31d
	.byte	0x0
	.uleb128 0x23
	.long	0xf73
	.long	.LASF168
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0x31d
	.uleb128 0x25
	.uleb128 0x26
	.string	"__v"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.uleb128 0x26
	.string	"__x"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0xf8e
	.long	.LASF169
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x328
	.byte	0x0
	.uleb128 0x23
	.long	0xfc1
	.long	.LASF170
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.byte	0x38
	.long	0x328
	.uleb128 0x25
	.uleb128 0x26
	.string	"__v"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.uleb128 0x26
	.string	"__x"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x1093
	.long	.LASF171
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	0x3f
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0x84
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF172
	.byte	0x1
	.byte	0x84
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x85
	.long	0x8a5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF173
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x87
	.long	0xf1f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x88
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.byte	0x8b
	.long	0x31d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.long	.LASF175
	.byte	0x1
	.byte	0x8c
	.long	0x31d
	.uleb128 0x1c
	.long	0x1071
	.long	0x1093
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x1e
	.long	0x10a4
	.uleb128 0x1d
	.long	0x10ad
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x22
	.long	0x10b9
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	0x10c4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x10d1
	.long	.LASF176
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0x69
	.long	0xf1f
	.uleb128 0x28
	.long	.LASF175
	.byte	0x1
	.byte	0x69
	.long	0x3f
	.uleb128 0x25
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x6c
	.long	0x3f
	.uleb128 0x18
	.long	.LASF177
	.byte	0x1
	.byte	0x6d
	.long	0x31d
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x1107
	.long	.LASF178
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0x94
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0x96
	.long	0xf1f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF179
	.byte	0xa
	.byte	0x91
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF180
	.byte	0xa
	.byte	0x92
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF181
	.byte	0x1
	.byte	0x9f
	.long	0x509
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_cloop
	.uleb128 0x2b
	.long	.LASF182
	.byte	0x5
	.byte	0x94
	.long	0x87a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x114e
	.long	0x1121
	.string	"bdrv_cloop"
	.long	0x1137
	.string	"bdrv_first"
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
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"translation"
.LASF9:
	.string	"size_t"
.LASF53:
	.string	"total_sectors"
.LASF91:
	.string	"bdrv_set_key"
.LASF164:
	.string	"offsets_size"
.LASF122:
	.string	"date_nsec"
.LASF136:
	.string	"total_in"
.LASF25:
	.string	"_IO_save_end"
.LASF98:
	.string	"bdrv_pread"
.LASF73:
	.string	"cyls"
.LASF105:
	.string	"bdrv_snapshot_delete"
.LASF18:
	.string	"_IO_write_base"
.LASF140:
	.string	"state"
.LASF34:
	.string	"_lock"
.LASF23:
	.string	"_IO_save_base"
.LASF83:
	.string	"bdrv_probe"
.LASF148:
	.string	"z_stream"
.LASF114:
	.string	"BlockDriverInfo"
.LASF31:
	.string	"_cur_column"
.LASF99:
	.string	"bdrv_pwrite"
.LASF41:
	.string	"_mode"
.LASF75:
	.string	"secs"
.LASF55:
	.string	"removable"
.LASF123:
	.string	"vm_clock_nsec"
.LASF2:
	.string	"long int"
.LASF64:
	.string	"backing_file"
.LASF149:
	.string	"BDRVCloopState"
.LASF139:
	.string	"total_out"
.LASF45:
	.string	"_IO_marker"
.LASF60:
	.string	"opaque"
.LASF182:
	.string	"bdrv_first"
.LASF120:
	.string	"vm_state_size"
.LASF160:
	.string	"length"
.LASF128:
	.string	"uLong"
.LASF113:
	.string	"free_aiocb"
.LASF181:
	.string	"bdrv_cloop"
.LASF150:
	.string	"block_size"
.LASF175:
	.string	"block_num"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF129:
	.string	"Bytef"
.LASF69:
	.string	"rd_bytes"
.LASF67:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF152:
	.string	"offsets"
.LASF154:
	.string	"current_block"
.LASF109:
	.string	"bdrv_media_changed"
.LASF52:
	.string	"BlockDriverState"
.LASF100:
	.string	"bdrv_truncate"
.LASF66:
	.string	"media_changed"
.LASF5:
	.string	"char"
.LASF88:
	.string	"bdrv_create"
.LASF177:
	.string	"bytes"
.LASF97:
	.string	"protocol_name"
.LASF43:
	.string	"_IO_lock_t"
.LASF95:
	.string	"bdrv_aio_cancel"
.LASF63:
	.string	"filename"
.LASF137:
	.string	"next_out"
.LASF169:
	.string	"be64_to_cpu"
.LASF163:
	.string	"flags"
.LASF104:
	.string	"bdrv_snapshot_goto"
.LASF15:
	.string	"_IO_read_ptr"
.LASF161:
	.string	"cloop_probe"
.LASF87:
	.string	"bdrv_close"
.LASF48:
	.string	"_pos"
.LASF179:
	.string	"stdin"
.LASF180:
	.string	"stdout"
.LASF26:
	.string	"_markers"
.LASF72:
	.string	"wr_ops"
.LASF78:
	.string	"device_name"
.LASF138:
	.string	"avail_out"
.LASF74:
	.string	"heads"
.LASF165:
	.string	"max_compressed_block_size"
.LASF35:
	.string	"_offset"
.LASF89:
	.string	"bdrv_flush"
.LASF155:
	.string	"compressed_block"
.LASF86:
	.string	"bdrv_write"
.LASF178:
	.string	"cloop_close"
.LASF111:
	.string	"bdrv_set_locked"
.LASF125:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF158:
	.string	"buf_size"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF151:
	.string	"n_blocks"
.LASF42:
	.string	"_unused2"
.LASF62:
	.string	"boot_sector_data"
.LASF176:
	.string	"cloop_read_block"
.LASF82:
	.string	"instance_size"
.LASF116:
	.string	"vm_state_offset"
.LASF30:
	.string	"_old_offset"
.LASF146:
	.string	"internal_state"
.LASF167:
	.string	"be32_to_cpu"
.LASF57:
	.string	"encrypted"
.LASF133:
	.string	"z_stream_s"
.LASF171:
	.string	"cloop_read"
.LASF3:
	.string	"long long int"
.LASF172:
	.string	"sector_num"
.LASF20:
	.string	"_IO_write_end"
.LASF54:
	.string	"read_only"
.LASF92:
	.string	"bdrv_make_empty"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF102:
	.string	"bdrv_write_compressed"
.LASF101:
	.string	"bdrv_getlength"
.LASF183:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF85:
	.string	"bdrv_read"
.LASF59:
	.string	"change_opaque"
.LASF144:
	.string	"adler"
.LASF71:
	.string	"rd_ops"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF47:
	.string	"_sbuf"
.LASF107:
	.string	"bdrv_get_info"
.LASF106:
	.string	"bdrv_snapshot_list"
.LASF14:
	.string	"_flags"
.LASF162:
	.string	"cloop_open"
.LASF77:
	.string	"type"
.LASF79:
	.string	"next"
.LASF126:
	.string	"Byte"
.LASF70:
	.string	"wr_bytes"
.LASF130:
	.string	"voidpf"
.LASF90:
	.string	"bdrv_is_allocated"
.LASF166:
	.string	"size"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF174:
	.string	"sector_offset_in_block"
.LASF10:
	.string	"__off_t"
.LASF168:
	.string	"bswap32"
.LASF27:
	.string	"_chain"
.LASF134:
	.string	"next_in"
.LASF84:
	.string	"bdrv_open"
.LASF156:
	.string	"uncompressed_block"
.LASF58:
	.string	"change_cb"
.LASF108:
	.string	"bdrv_is_inserted"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF117:
	.string	"QEMUSnapshotInfo"
.LASF11:
	.string	"__off64_t"
.LASF96:
	.string	"aiocb_size"
.LASF118:
	.string	"id_str"
.LASF185:
	.string	"/home/remco/Projects/Argos/src"
.LASF135:
	.string	"avail_in"
.LASF147:
	.string	"dummy"
.LASF110:
	.string	"bdrv_eject"
.LASF22:
	.string	"_IO_buf_end"
.LASF119:
	.string	"name"
.LASF93:
	.string	"bdrv_aio_read"
.LASF159:
	.string	"magic_version_2_0"
.LASF61:
	.string	"boot_sector_enabled"
.LASF153:
	.string	"sectors_per_block"
.LASF8:
	.string	"short int"
.LASF68:
	.string	"sync_aiocb"
.LASF51:
	.string	"uint64_t"
.LASF32:
	.string	"_vtable_offset"
.LASF112:
	.string	"bdrv_ioctl"
.LASF142:
	.string	"zfree"
.LASF143:
	.string	"data_type"
.LASF127:
	.string	"uInt"
.LASF94:
	.string	"bdrv_aio_write"
.LASF16:
	.string	"_IO_read_end"
.LASF80:
	.string	"BlockDriver"
.LASF103:
	.string	"bdrv_snapshot_create"
.LASF121:
	.string	"date_sec"
.LASF50:
	.string	"uint32_t"
.LASF56:
	.string	"locked"
.LASF28:
	.string	"_fileno"
.LASF65:
	.string	"is_temporary"
.LASF145:
	.string	"reserved"
.LASF81:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF115:
	.string	"cluster_size"
.LASF157:
	.string	"zstream"
.LASF124:
	.string	"BlockDriverAIOCB"
.LASF132:
	.string	"free_func"
.LASF184:
	.string	"block-cloop.c"
.LASF19:
	.string	"_IO_write_ptr"
.LASF173:
	.string	"nb_sectors"
.LASF131:
	.string	"alloc_func"
.LASF12:
	.string	"int64_t"
.LASF141:
	.string	"zalloc"
.LASF170:
	.string	"bswap64"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
