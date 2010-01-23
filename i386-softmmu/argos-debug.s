	.file	"argos-debug.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl argos_printf
	.type	argos_printf, @function
argos_printf:
.LFB14:
	.file 1 "/home/remco/Projects/Argos/src/argos-debug.c"
	.loc 1 36 0
	subq	$216, %rsp
.LCFI0:
	.loc 1 36 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L2, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
.LBB2:
.LBB3:
	.file 2 "/usr/include/bits/stdio.h"
	.loc 2 39 0
	movq	%rdi, %rsi
.LBE3:
.LBE2:
	.loc 1 36 0
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
.L2:
	.loc 1 40 0
	leaq	224(%rsp), %rax
.LBB4:
.LBB5:
	.loc 2 39 0
	movq	stdout(%rip), %rdi
.LBE5:
	.loc 2 38 0
	movq	%rsp, %rdx
.LBE4:
	.loc 1 40 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
.LBB6:
.LBB7:
	.loc 2 39 0
	call	vfprintf
.LBE7:
.LBE6:
	.loc 1 44 0
	addq	$216, %rsp
	ret
.LFE14:
	.size	argos_printf, .-argos_printf
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0x%08lx\n"
	.text
	.p2align 4,,15
.globl argos_printhex
	.type	argos_printhex, @function
argos_printhex:
.LFB15:
	.loc 1 47 0
	.loc 1 48 0
	movq	%rdi, %rsi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	jmp	printf
.LFE15:
	.size	argos_printhex, .-argos_printhex
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
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
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
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.align 8
.LEFDE3:
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 5 "<internal>"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x427
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x8
	.byte	0xd5
	.long	0x34
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
	.byte	0x7
	.byte	0x8d
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
	.byte	0x8e
	.long	0x65
	.uleb128 0x3
	.long	.LASF0
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x6
	.uleb128 0x7
	.long	0x264
	.long	.LASF41
	.byte	0xd8
	.byte	0x3
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF11
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x6
	.value	0x115
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x116
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x117
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x118
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x119
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x11a
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x11b
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11c
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11e
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11f
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x120
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x122
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x124
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x126
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x12a
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x12c
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x130
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x131
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x132
	.long	0x30e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x136
	.long	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x13f
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x148
	.long	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x149
	.long	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x14a
	.long	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x14b
	.long	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14c
	.long	0x29
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14e
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x150
	.long	0x324
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x4
	.byte	0x2b
	.long	0x26f
	.uleb128 0x9
	.long	0x27f
	.long	0x27f
	.uleb128 0xa
	.long	0x82
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x2c4
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0x0
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0x0
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0x0
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0x0
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0xb4
	.uleb128 0x7
	.long	0x302
	.long	.LASF48
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0xbb
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.byte	0xbc
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF51
	.byte	0x6
	.byte	0xc0
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2cb
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x9
	.long	0x31e
	.long	0x91
	.uleb128 0xa
	.long	0x82
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x9
	.long	0x334
	.long	0x91
	.uleb128 0xa
	.long	0x82
	.byte	0x13
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x33a
	.uleb128 0xd
	.long	0x91
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x50
	.long	0x264
	.uleb128 0xe
	.long	0x3b4
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x5e
	.quad	.LFB14
	.quad	.LFE14
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x23
	.long	0x334
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.uleb128 0x11
	.string	"ap"
	.byte	0x1
	.byte	0x25
	.long	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.uleb128 0x13
	.long	0x3b4
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x14
	.long	0x3c6
	.uleb128 0x15
	.long	0x3d1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x3dd
	.byte	0x1
	.long	.LASF54
	.byte	0x2
	.byte	0x26
	.byte	0x1
	.long	0x5e
	.byte	0x3
	.uleb128 0x17
	.long	.LASF56
	.byte	0x2
	.byte	0x25
	.long	0x334
	.uleb128 0x17
	.long	.LASF57
	.byte	0x2
	.byte	0x25
	.long	0x3dd
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27f
	.uleb128 0x18
	.long	0x410
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"hex"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x3
	.byte	0x91
	.long	0x308
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x3
	.byte	0x92
	.long	0x308
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.long	0x32
	.value	0x2
	.long	.Ldebug_info0
	.long	0x42b
	.long	0x34a
	.string	"argos_printf"
	.long	0x3e3
	.string	"argos_printhex"
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
.LASF19:
	.string	"_IO_buf_end"
.LASF26:
	.string	"_flags2"
.LASF27:
	.string	"_old_offset"
.LASF29:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_end"
.LASF54:
	.string	"vprintf"
.LASF7:
	.string	"size_t"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF42:
	.string	"__va_list_tag"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF28:
	.string	"_cur_column"
.LASF52:
	.string	"va_list"
.LASF39:
	.string	"_unused2"
.LASF55:
	.string	"format"
.LASF58:
	.string	"argos_printhex"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"__fmt"
.LASF44:
	.string	"fp_offset"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"gp_offset"
.LASF50:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF53:
	.string	"argos_printf"
.LASF60:
	.string	"stdout"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"__arg"
.LASF37:
	.string	"__pad5"
.LASF4:
	.string	"signed char"
.LASF30:
	.string	"_shortbuf"
.LASF3:
	.string	"unsigned int"
.LASF48:
	.string	"_IO_marker"
.LASF21:
	.string	"_IO_backup_base"
.LASF34:
	.string	"__pad2"
.LASF15:
	.string	"_IO_write_base"
.LASF51:
	.string	"_pos"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF49:
	.string	"_next"
.LASF33:
	.string	"__pad1"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF61:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF0:
	.string	"long unsigned int"
.LASF9:
	.string	"__off64_t"
.LASF45:
	.string	"overflow_arg_area"
.LASF24:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF59:
	.string	"stdin"
.LASF18:
	.string	"_IO_buf_base"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF40:
	.string	"__gnuc_va_list"
.LASF62:
	.string	"/home/remco/Projects/Argos/src/argos-debug.c"
.LASF20:
	.string	"_IO_save_base"
.LASF25:
	.string	"_fileno"
.LASF12:
	.string	"_IO_read_ptr"
.LASF46:
	.string	"reg_save_area"
.LASF32:
	.string	"_offset"
.LASF47:
	.string	"_IO_lock_t"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
