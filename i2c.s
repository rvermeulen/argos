	.file	"i2c.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl i2c_init_bus
	.type	i2c_init_bus, @function
i2c_init_bus:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/i2c.c"
	.loc 1 21 0
	.loc 1 24 0
	movl	$16, %edi
	jmp	qemu_mallocz
.LFE108:
	.size	i2c_init_bus, .-i2c_init_bus
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"I2C struct too small"
	.text
	.p2align 4,,15
.globl i2c_slave_init
	.type	i2c_slave_init, @function
i2c_slave_init:
.LFB109:
	.loc 1 30 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 33 0
	cmpl	$39, %edx
	.loc 1 30 0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	.loc 1 33 0
	jbe	.L5
	.loc 1 36 0
	movslq	%edx,%rdi
	call	qemu_mallocz
	.loc 1 37 0
	movl	%ebp, 24(%rax)
	.loc 1 38 0
	movq	8(%rbx), %rdx
	movq	%rdx, 32(%rax)
	.loc 1 39 0
	movq	%rax, 8(%rbx)
	.loc 1 42 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
.L5:
	.loc 1 34 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	hw_error
.LFE109:
	.size	i2c_slave_init, .-i2c_slave_init
	.p2align 4,,15
.globl i2c_set_slave_address
	.type	i2c_set_slave_address, @function
i2c_set_slave_address:
.LFB110:
	.loc 1 45 0
	.loc 1 46 0
	movl	%esi, 24(%rdi)
	ret
.LFE110:
	.size	i2c_set_slave_address, .-i2c_set_slave_address
	.p2align 4,,15
.globl i2c_bus_busy
	.type	i2c_bus_busy, @function
i2c_bus_busy:
.LFB111:
	.loc 1 51 0
	.loc 1 52 0
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	setne	%al
	.loc 1 53 0
	ret
.LFE111:
	.size	i2c_bus_busy, .-i2c_bus_busy
	.p2align 4,,15
.globl i2c_start_transfer
	.type	i2c_start_transfer, @function
i2c_start_transfer:
.LFB112:
	.loc 1 58 0
	subq	$8, %rsp
.LCFI3:
	.loc 1 61 0
	movq	8(%rdi), %rax
	jmp	.L17
	.p2align 4,,7
.L18:
	.loc 1 62 0
	cmpl	%esi, 24(%rax)
	je	.L10
	.loc 1 61 0
	movq	32(%rax), %rax
.L17:
	testq	%rax, %rax
	jne	.L18
.L16:
	.loc 1 67 0
	movl	$1, %eax
	.loc 1 74 0
	addq	$8, %rsp
	.p2align 4,,1
	ret
.L10:
	.loc 1 66 0
	testq	%rax, %rax
	.p2align 4,,2
	je	.L16
	.loc 1 72 0
	xorl	%esi, %esi
	testl	%edx, %edx
	.loc 1 71 0
	movq	%rax, (%rdi)
	.loc 1 72 0
	sete	%sil
	movq	%rax, %rdi
	call	*(%rax)
	.loc 1 73 0
	xorl	%eax, %eax
	.loc 1 74 0
	addq	$8, %rsp
	ret
.LFE112:
	.size	i2c_start_transfer, .-i2c_start_transfer
	.p2align 4,,15
.globl i2c_end_transfer
	.type	i2c_end_transfer, @function
i2c_end_transfer:
.LFB113:
	.loc 1 77 0
	pushq	%rbx
.LCFI4:
	.loc 1 78 0
	movq	(%rdi), %rax
	.loc 1 77 0
	movq	%rdi, %rbx
	.loc 1 80 0
	testq	%rax, %rax
	je	.L19
	.loc 1 83 0
	movl	$2, %esi
	movq	%rax, %rdi
	call	*(%rax)
	.loc 1 85 0
	movq	$0, (%rbx)
.L19:
	.loc 1 86 0
	popq	%rbx
	ret
.LFE113:
	.size	i2c_end_transfer, .-i2c_end_transfer
	.p2align 4,,15
.globl i2c_send
	.type	i2c_send, @function
i2c_send:
.LFB114:
	.loc 1 89 0
	.loc 1 90 0
	movq	(%rdi), %rax
	.loc 1 92 0
	testq	%rax, %rax
	je	.L23
	.loc 1 95 0
	movzbl	%sil, %esi
	movq	%rax, %rdi
	movq	16(%rax), %r11
	jmp	*%r11
.L23:
	.loc 1 96 0
	movl	$-1, %eax
	ret
.LFE114:
	.size	i2c_send, .-i2c_send
	.p2align 4,,15
.globl i2c_recv
	.type	i2c_recv, @function
i2c_recv:
.LFB115:
	.loc 1 99 0
	.loc 1 100 0
	movq	(%rdi), %rax
	.loc 1 102 0
	testq	%rax, %rax
	je	.L26
	.loc 1 105 0
	movq	%rax, %rdi
	movq	8(%rax), %r11
	jmp	*%r11
.L26:
	.loc 1 106 0
	movl	$-1, %eax
	ret
.LFE115:
	.size	i2c_recv, .-i2c_recv
	.p2align 4,,15
.globl i2c_nack
	.type	i2c_nack, @function
i2c_nack:
.LFB116:
	.loc 1 109 0
	.loc 1 110 0
	movq	(%rdi), %rax
	.loc 1 112 0
	testq	%rax, %rax
	je	.L27
	.loc 1 115 0
	movl	$3, %esi
	movq	%rax, %rdi
	movq	(%rax), %r11
	jmp	*%r11
	.p2align 4,,7
.L27:
	rep ; ret
.LFE116:
	.size	i2c_nack, .-i2c_nack
	.p2align 4,,15
.globl i2c_bus_save
	.type	i2c_bus_save, @function
i2c_bus_save:
.LFB117:
	.loc 1 119 0
	.loc 1 120 0
	movq	(%rsi), %rax
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.L31
	movl	24(%rax), %esi
.L31:
	jmp	qemu_put_byte
.LFE117:
	.size	i2c_bus_save, .-i2c_bus_save
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 13
__FUNCTION__.0:
	.string	"i2c_bus_load"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"%s: I2C slave with address %02x disappeared\n"
	.text
	.p2align 4,,15
.globl i2c_bus_load
	.type	i2c_bus_load, @function
i2c_bus_load:
.LFB118:
	.loc 1 124 0
	pushq	%rbx
.LCFI5:
	.loc 1 124 0
	movq	%rsi, %rbx
	.loc 1 126 0
	call	qemu_get_byte
	.loc 1 128 0
	testb	%al, %al
	je	.L34
	.loc 1 129 0
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L42
	movzbl	%al, %esi
	.p2align 4,,7
.L40:
	.loc 1 130 0
	cmpl	%esi, 24(%rdx)
	je	.L43
	.loc 1 129 0
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.L40
.L42:
	.loc 1 138 0
	popq	%rbx
	.loc 1 135 0
	movq	stderr(%rip), %rdi
	movzbl	%al, %ecx
	movl	$__FUNCTION__.0, %edx
	movl	$.LC1, %esi
	xorl	%eax, %eax
	jmp	fprintf
.L43:
	.loc 1 131 0
	movq	%rdx, (%rbx)
	.p2align 4,,7
.L34:
	.loc 1 138 0
	popq	%rbx
	ret
.LFE118:
	.size	i2c_bus_load, .-i2c_bus_load
	.p2align 4,,15
.globl i2c_slave_save
	.type	i2c_slave_save, @function
i2c_slave_save:
.LFB119:
	.loc 1 141 0
	.loc 1 142 0
	movl	24(%rsi), %esi
	jmp	qemu_put_byte
.LFE119:
	.size	i2c_slave_save, .-i2c_slave_save
	.p2align 4,,15
.globl i2c_slave_load
	.type	i2c_slave_load, @function
i2c_slave_load:
.LFB120:
	.loc 1 146 0
	pushq	%rbx
.LCFI6:
	.loc 1 146 0
	movq	%rsi, %rbx
	.loc 1 147 0
	call	qemu_get_byte
	movl	%eax, 24(%rbx)
	popq	%rbx
	ret
.LFE120:
	.size	i2c_slave_load, .-i2c_slave_load
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
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI2-.LFB109
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI3-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI4-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI5-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI6-.LFB120
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE24:
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
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI2-.LFB109
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI3-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI4-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI5-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI6-.LFB120
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
	.file 2 "./qemu-common.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x7c7
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF84
	.byte	0x1
	.long	.LASF85
	.long	.LASF86
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
	.uleb128 0x5
	.long	0x6e
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
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x6e
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x27b
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x8
	.long	0x2b9
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x282
	.uleb128 0x7
	.byte	0x8
	.long	0xaf
	.uleb128 0xc
	.long	0x2d5
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x27b
	.uleb128 0xc
	.long	0x2eb
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x4
	.byte	0x31
	.long	0x75
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x73
	.long	0x301
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.byte	0x74
	.long	0x312
	.uleb128 0x8
	.long	0x33b
	.long	.LASF50
	.byte	0x10
	.byte	0x2
	.byte	0x74
	.uleb128 0xb
	.long	.LASF51
	.byte	0x1
	.byte	0xf
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"dev"
	.byte	0x1
	.byte	0x10
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.byte	0x75
	.long	0x346
	.uleb128 0x8
	.long	0x399
	.long	.LASF52
	.byte	0x28
	.byte	0x2
	.byte	0x75
	.uleb128 0xb
	.long	.LASF53
	.byte	0x3
	.byte	0x1a
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x3
	.byte	0x1b
	.long	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF55
	.byte	0x3
	.byte	0x1c
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF56
	.byte	0x3
	.byte	0x1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF57
	.byte	0x3
	.byte	0x20
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x2f6
	.uleb128 0x10
	.long	0x3c4
	.long	.LASF87
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.uleb128 0x11
	.long	.LASF58
	.sleb128 0
	.uleb128 0x11
	.long	.LASF59
	.sleb128 1
	.uleb128 0x11
	.long	.LASF60
	.sleb128 2
	.uleb128 0x11
	.long	.LASF61
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x3
	.byte	0x11
	.long	0x3cf
	.uleb128 0x7
	.byte	0x8
	.long	0x3d5
	.uleb128 0x12
	.long	0x3ea
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0x3ea
	.uleb128 0x13
	.long	0x2eb
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x33b
	.uleb128 0x2
	.long	.LASF63
	.byte	0x3
	.byte	0x13
	.long	0x3fb
	.uleb128 0x7
	.byte	0x8
	.long	0x401
	.uleb128 0x12
	.long	0x411
	.byte	0x1
	.long	0x3f
	.uleb128 0x13
	.long	0x3ea
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x3
	.byte	0x15
	.long	0x41c
	.uleb128 0x7
	.byte	0x8
	.long	0x422
	.uleb128 0x14
	.long	0x433
	.byte	0x1
	.uleb128 0x13
	.long	0x3ea
	.uleb128 0x13
	.long	0x39f
	.byte	0x0
	.uleb128 0x15
	.long	0x462
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	0x462
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bus"
	.byte	0x1
	.byte	0x16
	.long	0x462
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x307
	.uleb128 0x15
	.long	0x4c0
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	0x3ea
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x1d
	.long	0x462
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x1f
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0x4fa
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0x2c
	.long	0x3ea
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x15
	.long	0x52b
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x32
	.long	0x462
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x15
	.long	0x583
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x3f
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x39
	.long	0x462
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x3b
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0x5bd
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x4c
	.long	0x462
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x4e
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.long	0x608
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x3f
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x58
	.long	0x462
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.byte	0x58
	.long	0x2eb
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x5a
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.long	0x646
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x62
	.long	0x462
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x64
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0x680
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x6c
	.long	0x462
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x6e
	.long	0x3ea
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0x6b8
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x76
	.long	0x399
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x76
	.long	0x462
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1a
	.long	0x71e
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x7b
	.long	0x399
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"bus"
	.byte	0x1
	.byte	0x7b
	.long	0x462
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x7d
	.long	0x3ea
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0x7e
	.long	0x2eb
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF78
	.long	0x72e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0x0
	.uleb128 0xc
	.long	0x72e
	.long	0x69
	.uleb128 0xd
	.long	0x5b
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.long	0x71e
	.uleb128 0x1a
	.long	0x76b
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x8c
	.long	0x399
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0x8c
	.long	0x3ea
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1a
	.long	0x7a3
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x91
	.long	0x399
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0x91
	.long	0x3ea
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1d
	.long	.LASF81
	.byte	0x5
	.byte	0x91
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF82
	.byte	0x5
	.byte	0x92
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF83
	.byte	0x5
	.byte	0x93
	.long	0x2bf
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.long	0xf8
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7cb
	.long	0x433
	.string	"i2c_init_bus"
	.long	0x468
	.string	"i2c_slave_init"
	.long	0x4c0
	.string	"i2c_set_slave_address"
	.long	0x4fa
	.string	"i2c_bus_busy"
	.long	0x52b
	.string	"i2c_start_transfer"
	.long	0x583
	.string	"i2c_end_transfer"
	.long	0x5bd
	.string	"i2c_send"
	.long	0x608
	.string	"i2c_recv"
	.long	0x646
	.string	"i2c_nack"
	.long	0x680
	.string	"i2c_bus_save"
	.long	0x6b8
	.string	"i2c_bus_load"
	.long	0x733
	.string	"i2c_slave_save"
	.long	0x76b
	.string	"i2c_slave_load"
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
.LASF58:
	.string	"I2C_START_RECV"
.LASF32:
	.string	"_shortbuf"
.LASF42:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF78:
	.string	"__FUNCTION__"
.LASF19:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF86:
	.string	"/home/remco/Projects/Argos/src"
.LASF13:
	.string	"_flags"
.LASF64:
	.string	"i2c_event_cb"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF8:
	.string	"short int"
.LASF80:
	.string	"i2c_slave_load"
.LASF66:
	.string	"i2c_slave_init"
.LASF59:
	.string	"I2C_START_SEND"
.LASF55:
	.string	"send"
.LASF65:
	.string	"i2c_init_bus"
.LASF77:
	.string	"i2c_bus_load"
.LASF17:
	.string	"_IO_write_base"
.LASF53:
	.string	"event"
.LASF51:
	.string	"current_dev"
.LASF12:
	.string	"long long unsigned int"
.LASF61:
	.string	"I2C_NACK"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF70:
	.string	"i2c_start_transfer"
.LASF9:
	.string	"size_t"
.LASF83:
	.string	"stderr"
.LASF31:
	.string	"_vtable_offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF47:
	.string	"_pos"
.LASF87:
	.string	"i2c_event"
.LASF5:
	.string	"char"
.LASF62:
	.string	"i2c_send_cb"
.LASF40:
	.string	"_mode"
.LASF48:
	.string	"uint8_t"
.LASF63:
	.string	"i2c_recv_cb"
.LASF14:
	.string	"_IO_read_ptr"
.LASF73:
	.string	"data"
.LASF44:
	.string	"_IO_marker"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF84:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF82:
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
.LASF72:
	.string	"i2c_send"
.LASF49:
	.string	"QEMUFile"
.LASF79:
	.string	"i2c_slave_save"
.LASF85:
	.string	"/home/remco/Projects/Argos/src/hw/i2c.c"
.LASF52:
	.string	"i2c_slave"
.LASF15:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF57:
	.string	"next"
.LASF60:
	.string	"I2C_FINISH"
.LASF76:
	.string	"i2c_bus_save"
.LASF33:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF56:
	.string	"address"
.LASF69:
	.string	"i2c_bus_busy"
.LASF81:
	.string	"stdin"
.LASF43:
	.string	"_IO_FILE"
.LASF67:
	.string	"size"
.LASF68:
	.string	"i2c_set_slave_address"
.LASF6:
	.string	"unsigned char"
.LASF74:
	.string	"i2c_recv"
.LASF46:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"i2c_nack"
.LASF71:
	.string	"i2c_end_transfer"
.LASF10:
	.string	"__off_t"
.LASF54:
	.string	"recv"
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
.LASF50:
	.string	"i2c_bus"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
