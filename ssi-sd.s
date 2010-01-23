	.file	"ssi-sd.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"ssi_sd: error: Unexpected response to cmd %d\n"
	.text
	.p2align 4,,15
.globl ssi_sd_xfer
	.type	ssi_sd_xfer, @function
ssi_sd_xfer:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/ssi-sd.c"
	.loc 1 63 0
	pushq	%rbp
.LCFI0:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI1:
	movl	%esi, %ebx
	subq	$40, %rsp
.LCFI2:
	.loc 1 67 0
	movl	(%rdi), %ecx
	cmpl	$4, %ecx
	sete	%dl
	xorl	%eax, %eax
	cmpl	$77, %esi
	sete	%al
	testl	%edx, %eax
	je	.L2
	.loc 1 68 0
	movl	$0, (%rdi)
	.loc 1 70 0
	movl	$1, 28(%rdi)
	xorl	%ecx, %ecx
.L52:
	.loc 1 73 0
	mov	%ecx, %eax
	jmp	*.L51(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L51:
	.quad	.L4
	.quad	.L7
	.quad	.L38
	.quad	.L47
	.quad	.L48
	.text
	.p2align 4,,7
.L2:
	cmpl	$4, %ecx
	.loc 1 190 0
	movl	$255, %eax
	.loc 1 73 0
	jbe	.L52
.L1:
	.loc 1 191 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L48:
	.loc 1 182 0
	movq	32(%rbp), %rdi
	call	sd_read_data
	.loc 1 183 0
	movq	32(%rbp), %rdi
	.loc 1 182 0
	movzbl	%al, %ebx
	.loc 1 183 0
	call	sd_data_ready
	testl	%eax, %eax
	jne	.L49
	.loc 1 185 0
	movl	$0, (%rbp)
.L49:
	.loc 1 187 0
	movl	%ebx, %eax
	.loc 1 191 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L4:
	.loc 1 75 0
	cmpl	$255, %ebx
	.loc 1 77 0
	movl	$255, %eax
	.loc 1 75 0
	je	.L1
	.loc 1 79 0
	andl	$63, %ebx
	.loc 1 80 0
	movl	$1, (%rbp)
	.loc 1 81 0
	movl	$0, 20(%rbp)
	.loc 1 79 0
	movl	%ebx, 4(%rbp)
	.loc 1 191 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L38:
	.loc 1 161 0
	movl	28(%rbp), %eax
	testl	%eax, %eax
	jne	.L56
	.loc 1 165 0
	movl	24(%rbp), %ecx
	cmpl	20(%rbp), %ecx
	jge	.L40
	.loc 1 167 0
	movslq	%ecx,%rax
	movzbl	12(%rbp,%rax), %edx
	leal	1(%rcx), %eax
	movl	%eax, 24(%rbp)
	.loc 1 191 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 167 0
	movl	%edx, %eax
	.loc 1 191 0
	ret
	.p2align 4,,7
.L47:
	.loc 1 179 0
	movl	$4, (%rbp)
	.loc 1 191 0
	addq	$40, %rsp
	.loc 1 180 0
	movl	$254, %eax
	.loc 1 191 0
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L7:
	.loc 1 84 0
	movl	20(%rbp), %edx
	cmpl	$4, %edx
	je	.L57
	.loc 1 157 0
	movslq	%edx,%rax
	movb	%bl, 8(%rbp,%rax)
	leal	1(%rdx), %eax
	movl	%eax, 20(%rbp)
	.loc 1 176 0
	movl	$255, %eax
.L59:
	.loc 1 191 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L57:
.LBB2:
	.loc 1 88 0
	movl	4(%rbp), %eax
	.loc 1 92 0
	leaq	16(%rsp), %rsi
	.loc 1 88 0
	movb	%al, 16(%rsp)
	.loc 1 89 0
	movzbl	8(%rbp), %edx
	movzbl	9(%rbp), %eax
	sall	$24, %edx
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	10(%rbp), %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	11(%rbp), %eax
	orl	%eax, %edx
	movl	%edx, 20(%rsp)
	.loc 1 92 0
	movq	32(%rbp), %rdi
	movq	%rsp, %rdx
	call	sd_do_command
	.loc 1 93 0
	testl	%eax, %eax
	jle	.L53
	.loc 1 97 0
	movl	4(%rbp), %edx
	cmpl	$58, %edx
	je	.L58
	.loc 1 103 0
	cmpl	$4, %eax
	.p2align 4,,3
	je	.L16
	movl	%eax, 20(%rbp)
	.loc 1 104 0
	movq	stderr(%rip), %rdi
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	fprintf
.L53:
	.loc 1 106 0
	movl	$1, 20(%rbp)
	.loc 1 107 0
	movb	$4, 12(%rbp)
.L12:
.LBE2:
	.loc 1 176 0
	movl	$255, %eax
.LBB3:
	.loc 1 154 0
	movl	$2, (%rbp)
	.loc 1 155 0
	movl	$0, 24(%rbp)
	jmp	.L59
.L56:
.LBE3:
	.loc 1 176 0
	movl	$255, %eax
	.loc 1 162 0
	movl	$0, 28(%rbp)
	jmp	.L59
.L16:
.LBB4:
.LBB5:
	.loc 1 114 0
	xorl	%eax, %eax
	cmpl	$13, %edx
	sete	%al
	incl	%eax
	movl	%eax, 20(%rbp)
	.loc 1 115 0
	movzbl	(%rsp), %ecx
	movzbl	1(%rsp), %eax
	sall	$24, %ecx
	sall	$16, %eax
	orl	%eax, %ecx
	movzbl	2(%rsp), %eax
	sall	$8, %eax
	orl	%eax, %ecx
	movzbl	3(%rsp), %eax
	orl	%eax, %ecx
	.loc 1 117 0
	xorl	%eax, %eax
	.loc 1 118 0
	movl	%ecx, %edx
	shrl	$9, %edx
	andl	$15, %edx
	.loc 1 119 0
	cmpl	$3, %edx
	movl	$256, %edx
	cmovbe	%edx, %eax
	.loc 1 121 0
	movl	%eax, %edx
	orb	$2, %dh
	testb	$32, %ch
	cmovne	%edx, %eax
	.loc 1 123 0
	movl	%eax, %edx
	orb	$4, %dh
	testl	$4194304, %ecx
	cmovne	%edx, %eax
	.loc 1 125 0
	movl	%eax, %edx
	orb	$8, %dh
	testl	$8388608, %ecx
	cmovne	%edx, %eax
	.loc 1 127 0
	movl	%eax, %edx
	orb	$16, %dh
	testl	$268435456, %ecx
	cmovne	%edx, %eax
	.loc 1 129 0
	movl	%eax, %edx
	orb	$32, %dh
	testl	$1073741824, %ecx
	cmovne	%edx, %eax
	.loc 1 131 0
	movl	%eax, %edx
	orl	$1, %edx
	testl	$33554432, %ecx
	cmovne	%edx, %eax
	.loc 1 133 0
	movl	%eax, %edx
	orl	$2, %edx
	testl	$16809984, %ecx
	cmovne	%edx, %eax
	.loc 1 135 0
	movl	%eax, %edx
	orl	$4, %edx
	testl	$524288, %ecx
	cmovne	%edx, %eax
	.loc 1 137 0
	movl	%eax, %edx
	orl	$8, %edx
	testl	$1048576, %ecx
	cmovne	%edx, %eax
	.loc 1 139 0
	movl	%eax, %edx
	orl	$16, %edx
	testl	$2097152, %ecx
	cmovne	%edx, %eax
	.loc 1 141 0
	movl	%eax, %edx
	orl	$32, %edx
	testl	$67108864, %ecx
	cmovne	%edx, %eax
	.loc 1 143 0
	movl	%eax, %edx
	orl	$64, %edx
	testl	$134217728, %ecx
	cmovne	%edx, %eax
	.loc 1 145 0
	movl	%eax, %edx
	orb	$-128, %dl
	andl	$-2147418112, %ecx
	cmovne	%edx, %eax
	.loc 1 149 0
	movl	%eax, %edx
	orb	$64, %dh
	testb	%al, %al
	cmovne	%edx, %eax
	.loc 1 150 0
	movl	%eax, %edx
	.loc 1 151 0
	movb	%al, 13(%rbp)
	.loc 1 150 0
	shrw	$8, %dx
	movb	%dl, 12(%rbp)
	jmp	.L12
.L58:
.LBE5:
	.loc 1 100 0
	movl	$5, 20(%rbp)
	.loc 1 101 0
	movb	$1, 12(%rbp)
	.loc 1 102 0
	movl	(%rsp), %eax
	movl	%eax, 13(%rbp)
	jmp	.L12
.L40:
.LBE4:
	.loc 1 169 0
	movq	32(%rbp), %rdi
	call	sd_data_ready
	.loc 1 171 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	andl	$3, %eax
	movl	%eax, (%rbp)
	.loc 1 176 0
	movl	$255, %eax
	jmp	.L59
.LFE108:
	.size	ssi_sd_xfer, .-ssi_sd_xfer
	.p2align 4,,15
.globl ssi_sd_init
	.type	ssi_sd_init, @function
ssi_sd_init:
.LFB109:
	.loc 1 194 0
	movq	%rbx, -16(%rsp)
.LCFI3:
	movq	%r12, -8(%rsp)
.LCFI4:
	subq	$24, %rsp
.LCFI5:
	.loc 1 194 0
	movq	%rdi, %r12
	.loc 1 197 0
	movl	$40, %edi
	call	qemu_mallocz
	.loc 1 199 0
	movq	%r12, %rdi
	.loc 1 197 0
	movq	%rax, %rbx
	.loc 1 198 0
	movl	$0, (%rax)
	.loc 1 199 0
	movl	$1, %esi
	call	sd_init
	movq	%rax, 32(%rbx)
	.loc 1 201 0
	movq	%rbx, %rax
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
.LFE109:
	.size	ssi_sd_init, .-ssi_sd_init
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI0-.LFB108
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
	.uleb128 0x40
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI5-.LFB109
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE2:
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI0-.LFB108
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
	.uleb128 0x40
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI5-.LFB109
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE3:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/sd.h"
	.file 4 "./qemu-common.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x54f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF77
	.byte	0x1
	.long	.LASF78
	.long	.LASF79
	.uleb128 0x2
	.long	.LASF9
	.byte	0x8
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
	.byte	0x7
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
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
	.byte	0x5
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
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
	.byte	0x2
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x6e
	.long	0x312
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.uleb128 0x7
	.long	0x34f
	.long	.LASF52
	.byte	0xc
	.byte	0x3
	.byte	0x3e
	.uleb128 0xe
	.string	"cmd"
	.byte	0x3
	.byte	0x3f
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg"
	.byte	0x3
	.byte	0x40
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"crc"
	.byte	0x3
	.byte	0x41
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.byte	0x44
	.long	0x35a
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.uleb128 0xf
	.long	0x387
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.uleb128 0x10
	.long	.LASF54
	.sleb128 0
	.uleb128 0x10
	.long	.LASF55
	.sleb128 1
	.uleb128 0x10
	.long	.LASF56
	.sleb128 2
	.uleb128 0x10
	.long	.LASF57
	.sleb128 3
	.uleb128 0x10
	.long	.LASF58
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.byte	0x20
	.long	0x360
	.uleb128 0x11
	.long	0x40a
	.byte	0x28
	.byte	0x1
	.byte	0x2b
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.byte	0x23
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"cmd"
	.byte	0x1
	.byte	0x24
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.byte	0x25
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0x1
	.byte	0x26
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF63
	.byte	0x1
	.byte	0x27
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF64
	.byte	0x1
	.byte	0x28
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF65
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"sd"
	.byte	0x1
	.byte	0x2a
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xb
	.long	0x41a
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x42a
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x34f
	.uleb128 0x2
	.long	.LASF66
	.byte	0x1
	.byte	0x2b
	.long	0x392
	.uleb128 0x12
	.long	0x4d4
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x3f
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x3e
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x40
	.long	0x4d4
	.uleb128 0x16
	.long	0x4a7
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0x55
	.long	0x318
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x56
	.long	0x4da
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.byte	0x6e
	.long	0x2fc
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.byte	0x6f
	.long	0x2f1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x430
	.uleb128 0xb
	.long	0x4ea
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.long	0x525
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x9b
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"bs"
	.byte	0x1
	.byte	0xc1
	.long	0x525
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xc3
	.long	0x4d4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x5
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x5
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x5
	.byte	0x93
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x4
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x8
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x2e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x553
	.long	0x43b
	.string	"ssi_sd_xfer"
	.long	0x4ea
	.string	"ssi_sd_init"
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"request"
.LASF62:
	.string	"response"
.LASF32:
	.string	"_shortbuf"
.LASF42:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF60:
	.string	"mode"
.LASF19:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF79:
	.string	"/home/remco/Projects/Argos/src"
.LASF13:
	.string	"_flags"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF8:
	.string	"short int"
.LASF61:
	.string	"cmdarg"
.LASF58:
	.string	"SSI_SD_DATA_READ"
.LASF53:
	.string	"SDState"
.LASF50:
	.string	"uint32_t"
.LASF67:
	.string	"opaque"
.LASF17:
	.string	"_IO_write_base"
.LASF12:
	.string	"long long unsigned int"
.LASF63:
	.string	"arglen"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF57:
	.string	"SSI_SD_DATA_START"
.LASF9:
	.string	"size_t"
.LASF76:
	.string	"stderr"
.LASF31:
	.string	"_vtable_offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF47:
	.string	"_pos"
.LASF5:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF48:
	.string	"uint8_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF78:
	.string	"/home/remco/Projects/Argos/src/hw/ssi-sd.c"
.LASF71:
	.string	"status"
.LASF44:
	.string	"_IO_marker"
.LASF70:
	.string	"cardstatus"
.LASF55:
	.string	"SSI_SD_CMDARG"
.LASF3:
	.string	"long long int"
.LASF73:
	.string	"ssi_sd_init"
.LASF22:
	.string	"_IO_save_base"
.LASF52:
	.string	"sd_request_s"
.LASF77:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF75:
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
.LASF59:
	.string	"ssi_sd_mode"
.LASF51:
	.string	"BlockDriverState"
.LASF49:
	.string	"uint16_t"
.LASF64:
	.string	"response_pos"
.LASF15:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF69:
	.string	"longresp"
.LASF56:
	.string	"SSI_SD_RESPONSE"
.LASF72:
	.string	"ssi_sd_xfer"
.LASF33:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF74:
	.string	"stdin"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF54:
	.string	"SSI_SD_CMD"
.LASF46:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"stopping"
.LASF10:
	.string	"__off_t"
.LASF7:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF26:
	.string	"_chain"
.LASF66:
	.string	"ssi_sd_state"
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
