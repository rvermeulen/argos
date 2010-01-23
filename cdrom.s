	.file	"cdrom.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	lba_to_msf, @function
lba_to_msf:
.LFB97:
	.file 1 "/home/remco/Projects/Argos/src/hw/cdrom.c"
	.loc 1 32 0
	.loc 1 33 0
	addl	$150, %esi
	.loc 1 34 0
	movslq	%esi,%rdx
	movl	%esi, %ecx
	imulq	$1954687339, %rdx, %rax
	sarl	$31, %ecx
	.loc 1 35 0
	imulq	$458129845, %rdx, %rdx
	.loc 1 34 0
	shrq	$32, %rax
	.loc 1 35 0
	shrq	$32, %rdx
	.loc 1 34 0
	sarl	$11, %eax
	.loc 1 35 0
	sarl	$3, %edx
	.loc 1 34 0
	subl	%ecx, %eax
	.loc 1 35 0
	subl	%ecx, %edx
	.loc 1 34 0
	movb	%al, (%rdi)
	.loc 1 35 0
	movslq	%edx,%rax
	movl	%edx, %ecx
	imulq	$-2004318071, %rax, %rax
	sarl	$31, %ecx
	shrq	$32, %rax
	leal	(%rdx,%rax), %eax
	sarl	$5, %eax
	subl	%ecx, %eax
	movl	$60, %ecx
	imull	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	.loc 1 36 0
	movl	$75, %eax
	imull	%eax, %edx
	.loc 1 35 0
	movb	%cl, 1(%rdi)
	.loc 1 36 0
	subl	%edx, %esi
	movb	%sil, 2(%rdi)
	ret
.LFE97:
	.size	lba_to_msf, .-lba_to_msf
	.p2align 4,,15
.globl cdrom_read_toc
	.type	cdrom_read_toc, @function
cdrom_read_toc:
.LFB98:
	.loc 1 42 0
	movq	%rbp, -24(%rsp)
.LCFI0:
	movq	%r12, -16(%rsp)
.LCFI1:
	movq	%rsi, %rbp
	movq	%r13, -8(%rsp)
.LCFI2:
	movq	%rbx, -32(%rsp)
.LCFI3:
	subq	$32, %rsp
.LCFI4:
	.loc 1 46 0
	cmpl	$1, %ecx
	.loc 1 42 0
	movl	%edx, %r13d
	movl	%edi, %r12d
	.loc 1 46 0
	setg	%dl
	xorl	%eax, %eax
	cmpl	$170, %ecx
	setne	%al
	.loc 1 47 0
	movl	$-1, %esi
	.loc 1 46 0
	testl	%edx, %eax
	jne	.L2
	.loc 1 51 0
	decl	%ecx
	.loc 1 49 0
	movb	$1, 2(%rbp)
	.loc 1 50 0
	movb	$1, 3(%rbp)
	leaq	4(%rbp), %rbx
	.loc 1 51 0
	jle	.L14
.L4:
	.loc 1 67 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 68 0
	movb	$22, (%rbx)
	incq	%rbx
	.loc 1 69 0
	movb	$-86, (%rbx)
	incq	%rbx
	.loc 1 70 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 71 0
	testl	%r13d, %r13d
	jne	.L15
.LBB2:
.LBB3:
	.file 2 "./bswap.h"
	.loc 2 183 0
	movl	%r12d, %eax
	.loc 2 186 0
	movb	%r12b, 3(%rbx)
	.loc 2 183 0
	shrl	$24, %eax
	movb	%al, (%rbx)
	.loc 2 184 0
	movl	%r12d, %eax
	shrl	$16, %eax
	movb	%al, 1(%rbx)
	.loc 2 185 0
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, 2(%rbx)
.LBE3:
.LBE2:
	.loc 1 77 0
	addq	$4, %rbx
.L9:
	.loc 1 79 0
	movl	%ebx, %ecx
	subl	%ebp, %ecx
.LBB4:
	.loc 2 172 0
	leal	-2(%rcx), %edx
.LBE4:
	.loc 1 81 0
	movl	%ecx, %esi
.LBB5:
.LBB6:
	.loc 2 175 0
	movl	%edx, %eax
	.loc 2 176 0
	movb	%dl, 1(%rbp)
	.loc 2 175 0
	shrw	$8, %ax
	movb	%al, (%rbp)
.L2:
.LBE6:
.LBE5:
	.loc 1 82 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%esi, %eax
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	addq	$32, %rsp
	ret
	.p2align 4,,7
.L15:
	.loc 1 72 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 73 0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	.loc 1 74 0
	addq	$3, %rbx
	.loc 1 73 0
	call	lba_to_msf
	jmp	.L9
	.p2align 4,,7
.L14:
	.loc 1 56 0
	testl	%r13d, %r13d
	.loc 1 52 0
	movb	$0, 4(%rbp)
	.loc 1 53 0
	movb	$20, 5(%rbp)
	.loc 1 54 0
	movb	$1, 6(%rbp)
	.loc 1 55 0
	movb	$0, 7(%rbp)
	leaq	8(%rbp), %rbx
	.loc 1 56 0
	jne	.L16
.LBB7:
.LBB8:
	.loc 2 183 0
	movb	$0, 8(%rbp)
	.loc 2 184 0
	movb	$0, 1(%rbx)
	.loc 2 185 0
	movb	$0, 2(%rbx)
	.loc 2 186 0
	movb	$0, 3(%rbx)
.LBE8:
.LBE7:
	.loc 1 63 0
	leaq	12(%rbp), %rbx
	jmp	.L4
.L16:
	.loc 1 57 0
	leaq	9(%rbp), %rbx
	movb	$0, 8(%rbp)
	.loc 1 58 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	.loc 1 63 0
	leaq	12(%rbp), %rbx
	.loc 1 58 0
	call	lba_to_msf
	jmp	.L4
.LFE98:
	.size	cdrom_read_toc, .-cdrom_read_toc
	.p2align 4,,15
.globl cdrom_read_toc_raw
	.type	cdrom_read_toc_raw, @function
cdrom_read_toc_raw:
.LFB99:
	.loc 1 86 0
	pushq	%r12
.LCFI5:
	.loc 1 125 0
	testl	%edx, %edx
	.loc 1 86 0
	movl	%edx, %r12d
	pushq	%rbp
.LCFI6:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI7:
	.loc 1 91 0
	movb	$1, 2(%rsi)
	.loc 1 124 0
	leaq	33(%rsi), %rbx
	.loc 1 92 0
	movb	$1, 3(%rsi)
	.loc 1 94 0
	movb	$1, 4(%rsi)
	.loc 1 95 0
	movb	$20, 5(%rsi)
	.loc 1 96 0
	movb	$0, 6(%rsi)
	.loc 1 97 0
	movb	$-96, 7(%rsi)
	.loc 1 98 0
	movb	$0, 8(%rsi)
	.loc 1 99 0
	movb	$0, 9(%rsi)
	.loc 1 100 0
	movb	$0, 10(%rsi)
	.loc 1 101 0
	movb	$0, 11(%rsi)
	.loc 1 102 0
	movb	$1, 12(%rsi)
	.loc 1 103 0
	movb	$0, 13(%rsi)
	.loc 1 104 0
	movb	$0, 14(%rsi)
	.loc 1 106 0
	movb	$1, 15(%rsi)
	.loc 1 107 0
	movb	$20, 16(%rsi)
	.loc 1 108 0
	movb	$0, 17(%rsi)
	.loc 1 109 0
	movb	$-95, 18(%rsi)
	.loc 1 110 0
	movb	$0, 19(%rsi)
	.loc 1 111 0
	movb	$0, 20(%rsi)
	.loc 1 112 0
	movb	$0, 21(%rsi)
	.loc 1 113 0
	movb	$0, 22(%rsi)
	.loc 1 114 0
	movb	$1, 23(%rsi)
	.loc 1 115 0
	movb	$0, 24(%rsi)
	.loc 1 116 0
	movb	$0, 25(%rsi)
	.loc 1 118 0
	movb	$1, 26(%rsi)
	.loc 1 119 0
	movb	$20, 27(%rsi)
	.loc 1 120 0
	movb	$0, 28(%rsi)
	.loc 1 121 0
	movb	$-94, 29(%rsi)
	.loc 1 122 0
	movb	$0, 30(%rsi)
	.loc 1 123 0
	movb	$0, 31(%rsi)
	.loc 1 124 0
	movb	$0, 32(%rsi)
	.loc 1 125 0
	jne	.L25
.LBB9:
.LBB10:
	.loc 2 183 0
	movl	%edi, %eax
	shrl	$24, %eax
	movb	%al, 33(%rsi)
	.loc 2 184 0
	movl	%edi, %eax
	.loc 2 186 0
	movb	%dil, 3(%rbx)
	.loc 2 184 0
	shrl	$16, %eax
	movb	%al, 1(%rbx)
	.loc 2 185 0
	movl	%edi, %eax
	shrl	$8, %eax
	movb	%al, 2(%rbx)
.L24:
.LBE10:
.LBE9:
	.loc 1 131 0
	leaq	37(%rbp), %rbx
	.loc 1 134 0
	movb	$1, (%rbx)
	incq	%rbx
	.loc 1 135 0
	movb	$20, (%rbx)
	incq	%rbx
	.loc 1 136 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 137 0
	movb	$1, (%rbx)
	incq	%rbx
	.loc 1 138 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 139 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 140 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 141 0
	testl	%r12d, %r12d
	jne	.L26
	.loc 1 146 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 147 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 148 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 149 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 152 0
	movl	%ebx, %eax
	subl	%ebp, %eax
.LBB11:
	.loc 2 172 0
	leal	-2(%rax), %ecx
.LBB12:
	.loc 2 175 0
	movl	%ecx, %edx
	.loc 2 176 0
	movb	%cl, 1(%rbp)
	.loc 2 175 0
	shrw	$8, %dx
	movb	%dl, (%rbp)
.LBE12:
.LBE11:
	.loc 1 155 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L25:
	.loc 1 126 0
	leaq	34(%rsi), %rbx
	movb	$0, 33(%rsi)
	.loc 1 127 0
	movl	%edi, %esi
	movq	%rbx, %rdi
	call	lba_to_msf
	jmp	.L24
	.p2align 4,,7
.L26:
	.loc 1 142 0
	movb	$0, (%rbx)
	incq	%rbx
	.loc 1 143 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	.loc 1 144 0
	addq	$3, %rbx
	.loc 1 143 0
	call	lba_to_msf
	.loc 1 152 0
	movl	%ebx, %eax
	subl	%ebp, %eax
.LBB13:
	.loc 2 172 0
	leal	-2(%rax), %ecx
.LBB14:
	.loc 2 175 0
	movl	%ecx, %edx
	.loc 2 176 0
	movb	%cl, 1(%rbp)
	.loc 2 175 0
	shrw	$8, %dx
	movb	%dl, (%rbp)
.LBE14:
.LBE13:
	.loc 1 155 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE99:
	.size	cdrom_read_toc_raw, .-cdrom_read_toc_raw
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
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0xe
	.uleb128 0x28
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI5-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
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
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0xe
	.uleb128 0x28
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI5-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE5:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x5b4
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF61
	.byte	0x1
	.long	.LASF62
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
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
	.byte	0x6
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x8e
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x276
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27d
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x2d0
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xb
	.long	0x2e6
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0xd
	.long	0x346
	.long	.LASF53
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.long	0x307
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.string	"lba"
	.byte	0x1
	.byte	0x1f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x467
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x29
	.long	0x307
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.string	"msf"
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x2b
	.long	0x307
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x12
	.long	0x3f0
	.long	0x467
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x13
	.long	0x474
	.uleb128 0x13
	.long	0x47d
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x15
	.long	0x486
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x414
	.long	0x497
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x13
	.long	0x4a4
	.uleb128 0x13
	.long	0x4ad
	.byte	0x0
	.uleb128 0x16
	.long	0x42f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x15
	.long	0x4b6
	.byte	0x0
	.uleb128 0x17
	.long	0x467
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x13
	.long	0x474
	.uleb128 0x13
	.long	0x47d
	.uleb128 0x14
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x15
	.long	0x486
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x491
	.long	.LASF54
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"p"
	.byte	0x2
	.byte	0xb3
	.long	0x491
	.uleb128 0x19
	.string	"v"
	.byte	0x2
	.byte	0xb3
	.long	0x2fc
	.uleb128 0x1a
	.string	"p1"
	.byte	0x2
	.byte	0xb5
	.long	0x307
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0x18
	.long	0x4c1
	.long	.LASF55
	.byte	0x2
	.byte	0xac
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"p"
	.byte	0x2
	.byte	0xab
	.long	0x4c1
	.uleb128 0x19
	.string	"v"
	.byte	0x2
	.byte	0xab
	.long	0x2f1
	.uleb128 0x1a
	.string	"p1"
	.byte	0x2
	.byte	0xad
	.long	0x307
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0xf
	.long	0x59d
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x3f
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x55
	.long	0x307
	.byte	0x1
	.byte	0x56
	.uleb128 0xe
	.string	"msf"
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.string	"q"
	.byte	0x1
	.byte	0x57
	.long	0x307
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.long	0x571
	.long	0x467
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x13
	.long	0x474
	.uleb128 0x13
	.long	0x47d
	.uleb128 0x14
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x15
	.long	0x486
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x497
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x13
	.long	0x4a4
	.uleb128 0x13
	.long	0x4ad
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x15
	.long	0x4b6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x4
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF60
	.byte	0x4
	.byte	0x92
	.long	0x2ba
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
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x38
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5b8
	.long	0x346
	.string	"cdrom_read_toc"
	.long	0x4c7
	.string	"cdrom_read_toc_raw"
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"_shortbuf"
.LASF42:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF19:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF63:
	.string	"/home/remco/Projects/Argos/src"
.LASF13:
	.string	"_flags"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF8:
	.string	"short int"
.LASF55:
	.string	"cpu_to_be16wu"
.LASF52:
	.string	"start_track"
.LASF50:
	.string	"uint32_t"
.LASF17:
	.string	"_IO_write_base"
.LASF57:
	.string	"cdrom_read_toc_raw"
.LASF12:
	.string	"long long unsigned int"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF9:
	.string	"size_t"
.LASF31:
	.string	"_vtable_offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF47:
	.string	"_pos"
.LASF58:
	.string	"session_num"
.LASF5:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF48:
	.string	"uint8_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"cpu_to_be32wu"
.LASF44:
	.string	"_IO_marker"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF61:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF60:
	.string	"stdout"
.LASF23:
	.string	"_IO_backup_base"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF56:
	.string	"cdrom_read_toc"
.LASF49:
	.string	"uint16_t"
.LASF15:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF62:
	.string	"/home/remco/Projects/Argos/src/hw/cdrom.c"
.LASF51:
	.string	"nb_sectors"
.LASF53:
	.string	"lba_to_msf"
.LASF33:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF59:
	.string	"stdin"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF46:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF10:
	.string	"__off_t"
.LASF7:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF26:
	.string	"_chain"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF45:
	.string	"_next"
.LASF11:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
