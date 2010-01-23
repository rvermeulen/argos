	.file	"isa_mmio.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 16
	.type	isa_mmio_write, @object
	.size	isa_mmio_write, 24
isa_mmio_write:
	.quad	isa_mmio_writeb
	.quad	isa_mmio_writew
	.quad	isa_mmio_writel
	.align 16
	.type	isa_mmio_read, @object
	.size	isa_mmio_read, 24
isa_mmio_read:
	.quad	isa_mmio_readb
	.quad	isa_mmio_readw
	.quad	isa_mmio_readl
	.local	isa_mmio_iomemtype
	.comm	isa_mmio_iomemtype,4,4
	.text
	.p2align 4,,15
	.type	isa_mmio_writeb, @function
isa_mmio_writeb:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/isa_mmio.c"
	.loc 1 30 0
	.loc 1 31 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	cpu_outb
.LFE194:
	.size	isa_mmio_writeb, .-isa_mmio_writeb
	.p2align 4,,15
	.type	isa_mmio_writew, @function
isa_mmio_writew:
.LFB195:
	.loc 1 36 0
	.loc 1 40 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	cpu_outw
.LFE195:
	.size	isa_mmio_writew, .-isa_mmio_writew
	.p2align 4,,15
	.type	isa_mmio_writel, @function
isa_mmio_writel:
.LFB196:
	.loc 1 45 0
	.loc 1 49 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	cpu_outl
.LFE196:
	.size	isa_mmio_writel, .-isa_mmio_writel
	.p2align 4,,15
	.type	isa_mmio_readb, @function
isa_mmio_readb:
.LFB197:
	.loc 1 53 0
	.loc 1 56 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	argos_cpu_inb
.LFE197:
	.size	isa_mmio_readb, .-isa_mmio_readb
	.p2align 4,,15
	.type	isa_mmio_readw, @function
isa_mmio_readw:
.LFB198:
	.loc 1 61 0
	.loc 1 64 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	argos_cpu_inw
.LFE198:
	.size	isa_mmio_readw, .-isa_mmio_readw
	.p2align 4,,15
	.type	isa_mmio_readl, @function
isa_mmio_readl:
.LFB199:
	.loc 1 72 0
	.loc 1 75 0
	andl	$65535, %esi
	xorl	%edi, %edi
	jmp	argos_cpu_inl
.LFE199:
	.size	isa_mmio_readl, .-isa_mmio_readl
	.p2align 4,,15
.globl isa_mmio_init
	.type	isa_mmio_init, @function
isa_mmio_init:
.LFB200:
	.loc 1 97 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 98 0
	movl	isa_mmio_iomemtype(%rip), %eax
	.loc 1 97 0
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	.loc 1 98 0
	testl	%eax, %eax
	je	.L10
	.loc 1 102 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movslq	%eax,%rdx
	addq	$24, %rsp
	jmp	cpu_register_physical_memory
	.p2align 4,,7
.L10:
	.loc 1 99 0
	movl	$isa_mmio_write, %edx
	movl	$isa_mmio_read, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	call	cpu_register_io_memory
	.loc 1 102 0
	movq	%rbx, %rsi
	.loc 1 99 0
	movl	%eax, isa_mmio_iomemtype(%rip)
	.loc 1 102 0
	movq	%rbp, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movslq	%eax,%rdx
	addq	$24, %rsp
	jmp	cpu_register_physical_memory
.LFE200:
	.size	isa_mmio_init, .-isa_mmio_init
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI2-.LFB200
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE12:
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI2-.LFB200
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE13:
	.file 2 "../cpu-defs.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "../argos-tag.h"
	.file 5 "../argos.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x697
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF79
	.byte	0x1
	.long	.LASF80
	.long	.LASF81
	.uleb128 0x2
	.long	.LASF9
	.byte	0x9
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
	.byte	0x8
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
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
	.byte	0x6
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
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
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF51
	.byte	0x2
	.byte	0x49
	.long	0x2fc
	.uleb128 0x3
	.long	.LASF52
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x2f
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0x34
	.long	0x2f1
	.uleb128 0x7
	.long	0x366
	.long	.LASF57
	.byte	0x8
	.byte	0x4
	.byte	0x37
	.uleb128 0xa
	.long	.LASF58
	.byte	0x4
	.byte	0x38
	.long	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x4
	.byte	0x39
	.long	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x4
	.byte	0x3d
	.long	0x33d
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.value	0x388
	.long	0x37d
	.uleb128 0xe
	.long	0x398
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x307
	.uleb128 0xf
	.long	0x2f1
	.uleb128 0xf
	.long	0x398
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x39e
	.uleb128 0x10
	.long	0x366
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.value	0x389
	.long	0x3af
	.uleb128 0x11
	.long	0x3c9
	.byte	0x1
	.long	0x2f1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x307
	.uleb128 0xf
	.long	0x3c9
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x12
	.long	0x422
	.long	.LASF65
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x1c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x1c
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x1d
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x1d
	.long	0x398
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x12
	.long	0x475
	.long	.LASF66
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x22
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x22
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x23
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x23
	.long	0x398
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x12
	.long	0x4c8
	.long	.LASF67
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x2b
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x2b
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x2c
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x398
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x15
	.long	0x51d
	.long	.LASF68
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	0x2f1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x34
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x34
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x34
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x36
	.long	0x2f1
	.byte	0x0
	.uleb128 0x15
	.long	0x572
	.long	.LASF69
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0x2f1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x3c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x3c
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x3c
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x3e
	.long	0x2f1
	.byte	0x0
	.uleb128 0x15
	.long	0x5c7
	.long	.LASF70
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x2f1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x47
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x47
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"tag"
	.byte	0x1
	.byte	0x47
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x49
	.long	0x2f1
	.byte	0x0
	.uleb128 0x17
	.long	0x601
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x60
	.long	0x307
	.byte	0x1
	.byte	0x56
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x60
	.long	0x307
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x18
	.long	.LASF73
	.byte	0x6
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF74
	.byte	0x6
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF75
	.byte	0xa
	.value	0x376
	.long	0x629
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0xb
	.long	0x63f
	.long	0x63f
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.byte	0x52
	.long	0x62f
	.byte	0x9
	.byte	0x3
	.quad	isa_mmio_write
	.uleb128 0xb
	.long	0x66a
	.long	0x66a
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a3
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0x58
	.long	0x65a
	.byte	0x9
	.byte	0x3
	.quad	isa_mmio_read
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	isa_mmio_iomemtype
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x20
	.value	0x2
	.long	.Ldebug_info0
	.long	0x69b
	.long	0x5c7
	.string	"isa_mmio_init"
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
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF65:
	.string	"isa_mmio_writeb"
.LASF67:
	.string	"isa_mmio_writel"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF59:
	.string	"netidx"
.LASF63:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF7:
	.string	"signed char"
.LASF82:
	.string	"isa_mmio_init"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF60:
	.string	"argos_rtag_t"
.LASF62:
	.string	"CPUReadMemoryFunc"
.LASF57:
	.string	"argos_rtag"
.LASF42:
	.string	"_IO_lock_t"
.LASF55:
	.string	"argos_paddr_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"double"
.LASF47:
	.string	"_pos"
.LASF73:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF41:
	.string	"_unused2"
.LASF77:
	.string	"isa_mmio_read"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF70:
	.string	"isa_mmio_readl"
.LASF80:
	.string	"/home/remco/Projects/Argos/src/hw/isa_mmio.c"
.LASF29:
	.string	"_old_offset"
.LASF76:
	.string	"isa_mmio_write"
.LASF68:
	.string	"isa_mmio_readb"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF81:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF69:
	.string	"isa_mmio_readw"
.LASF64:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF79:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF56:
	.string	"argos_netidx_t"
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
.LASF61:
	.string	"CPUWriteMemoryFunc"
.LASF46:
	.string	"_sbuf"
.LASF13:
	.string	"_flags"
.LASF51:
	.string	"target_phys_addr_t"
.LASF54:
	.string	"long double"
.LASF34:
	.string	"_offset"
.LASF72:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF50:
	.string	"uint64_t"
.LASF75:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF66:
	.string	"isa_mmio_writew"
.LASF15:
	.string	"_IO_read_end"
.LASF78:
	.string	"isa_mmio_iomemtype"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF52:
	.string	"float"
.LASF74:
	.string	"stdout"
.LASF71:
	.string	"base"
.LASF18:
	.string	"_IO_write_ptr"
.LASF58:
	.string	"origin"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
