	.file	"irq.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl qemu_set_irq
	.type	qemu_set_irq, @function
qemu_set_irq:
.LFB100:
	.file 1 "/home/remco/Projects/Argos/src/hw/irq.c"
	.loc 1 34 0
	.loc 1 35 0
	testq	%rdi, %rdi
	.loc 1 34 0
	movq	%rdi, %rax
	movl	%esi, %edx
	.loc 1 35 0
	je	.L1
	.loc 1 38 0
	movl	16(%rdi), %esi
	movq	(%rax), %r11
	movq	8(%rdi), %rdi
	jmp	*%r11
	.p2align 4,,7
.L1:
	rep ; ret
.LFE100:
	.size	qemu_set_irq, .-qemu_set_irq
	.p2align 4,,15
.globl qemu_allocate_irqs
	.type	qemu_allocate_irqs, @function
qemu_allocate_irqs:
.LFB101:
	.loc 1 42 0
	movq	%rbx, -40(%rsp)
.LCFI0:
	.loc 1 47 0
	movslq	%edx,%rbx
	.loc 1 42 0
	movq	%r13, -16(%rsp)
.LCFI1:
	movq	%rdi, %r13
	.loc 1 47 0
	leaq	0(,%rbx,8), %rdi
	.loc 1 42 0
	movq	%rbp, -32(%rsp)
.LCFI2:
	movq	%r12, -24(%rsp)
.LCFI3:
	movq	%r14, -8(%rsp)
.LCFI4:
	subq	$40, %rsp
.LCFI5:
	.loc 1 42 0
	movl	%edx, %ebp
	movq	%rsi, %r12
	.loc 1 47 0
	call	qemu_mallocz
	movq	%rax, %r14
	.loc 1 48 0
	leaq	(%rbx,%rbx,2), %rax
	leaq	0(,%rax,8), %rdi
	call	qemu_mallocz
	.loc 1 49 0
	xorl	%ecx, %ecx
	cmpl	%ebp, %ecx
	jge	.L10
	movq	%r14, %rdx
	.p2align 4,,7
.L8:
	.loc 1 52 0
	movl	%ecx, 16(%rax)
	.loc 1 49 0
	incl	%ecx
	.loc 1 50 0
	movq	%r13, (%rax)
	.loc 1 51 0
	movq	%r12, 8(%rax)
	.loc 1 53 0
	movq	%rax, (%rdx)
	.loc 1 54 0
	addq	$24, %rax
	addq	$8, %rdx
	.loc 1 49 0
	cmpl	%ebp, %ecx
	jl	.L8
.L10:
	.loc 1 57 0
	movq	%r14, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE101:
	.size	qemu_allocate_irqs, .-qemu_allocate_irqs
	.p2align 4,,15
	.type	qemu_notirq, @function
qemu_notirq:
.LFB102:
	.loc 1 60 0
	.loc 1 63 0
	testl	%edx, %edx
	.loc 1 60 0
	movq	%rdi, %rax
	.loc 1 63 0
	movl	16(%rdi), %esi
	sete	%dl
	movq	8(%rdi), %rdi
	movq	(%rax), %r11
	movzbl	%dl, %edx
	jmp	*%r11
.LFE102:
	.size	qemu_notirq, .-qemu_notirq
	.p2align 4,,15
.globl qemu_irq_invert
	.type	qemu_irq_invert, @function
qemu_irq_invert:
.LFB103:
	.loc 1 67 0
	pushq	%rbx
.LCFI6:
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 14 0
	movl	$1, %esi
.LBE3:
.LBE2:
	.loc 1 67 0
	movq	%rdi, %rbx
.LBB4:
.LBB5:
	.loc 2 14 0
	call	qemu_set_irq
.LBE5:
.LBE4:
	.loc 1 70 0
	movq	%rbx, %rsi
	movl	$1, %edx
	movl	$qemu_notirq, %edi
	call	qemu_allocate_irqs
	.loc 1 71 0
	popq	%rbx
	.loc 1 70 0
	movq	(%rax), %rax
	.loc 1 71 0
	ret
.LFE103:
	.size	qemu_irq_invert, .-qemu_irq_invert
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI0-.LFB101
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI6-.LFB103
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI0-.LFB101
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI6-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
	.file 3 "./qemu-common.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x4ca
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF62
	.byte	0x1
	.long	.LASF63
	.long	.LASF64
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
	.byte	0x7b
	.long	0x2f1
	.uleb128 0x6
	.byte	0x8
	.long	0x2f7
	.uleb128 0x7
	.long	0x32c
	.long	.LASF49
	.byte	0x18
	.byte	0x3
	.byte	0x7b
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.byte	0x1c
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x1
	.byte	0x1d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x1e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.byte	0x7
	.long	0x337
	.uleb128 0x6
	.byte	0x8
	.long	0x33d
	.uleb128 0xe
	.long	0x353
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x10
	.long	0x38d
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"irq"
	.byte	0x1
	.byte	0x21
	.long	0x2e6
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x13
	.long	0x3f7
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	0x3f7
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x29
	.long	0x32c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0x29
	.long	0x9b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x2b
	.long	0x3f7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x2c
	.long	0x2f1
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x15
	.long	0x44e
	.long	.LASF58
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0x3b
	.long	0x9b
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"irq"
	.byte	0x1
	.byte	0x3d
	.long	0x2f1
	.byte	0x0
	.uleb128 0x13
	.long	0x49a
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x2e6
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"irq"
	.byte	0x1
	.byte	0x42
	.long	0x2e6
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	0x49a
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x18
	.long	0x4a7
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x4b3
	.long	.LASF59
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x2e6
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x4
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF61
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.long	0x4a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4ce
	.long	0x353
	.string	"qemu_set_irq"
	.long	0x38d
	.string	"qemu_allocate_irqs"
	.long	0x44e
	.string	"qemu_irq_invert"
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
.LASF48:
	.string	"qemu_irq"
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
.LASF64:
	.string	"/home/remco/Projects/Argos/src"
.LASF13:
	.string	"_flags"
.LASF56:
	.string	"line"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF55:
	.string	"qemu_allocate_irqs"
.LASF8:
	.string	"short int"
.LASF50:
	.string	"handler"
.LASF54:
	.string	"qemu_set_irq"
.LASF51:
	.string	"opaque"
.LASF17:
	.string	"_IO_write_base"
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
.LASF52:
	.string	"qemu_irq_handler"
.LASF5:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_ptr"
.LASF44:
	.string	"_IO_marker"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF57:
	.string	"qemu_irq_invert"
.LASF62:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF58:
	.string	"qemu_notirq"
.LASF61:
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
.LASF53:
	.string	"level"
.LASF15:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF49:
	.string	"IRQState"
.LASF33:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF60:
	.string	"stdin"
.LASF43:
	.string	"_IO_FILE"
.LASF63:
	.string	"/home/remco/Projects/Argos/src/hw/irq.c"
.LASF6:
	.string	"unsigned char"
.LASF46:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"qemu_irq_raise"
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
