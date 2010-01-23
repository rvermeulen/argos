	.file	"smbus_eeprom.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	eeprom_quick_cmd, @function
eeprom_quick_cmd:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/smbus_eeprom.c"
	.loc 1 38 0
	.loc 1 38 0
	rep ; ret
.LFE108:
	.size	eeprom_quick_cmd, .-eeprom_quick_cmd
	.p2align 4,,15
	.type	eeprom_send_byte, @function
eeprom_send_byte:
.LFB109:
	.loc 1 45 0
	.loc 1 50 0
	movb	%sil, 136(%rdi)
	ret
.LFE109:
	.size	eeprom_send_byte, .-eeprom_send_byte
	.p2align 4,,15
	.type	eeprom_receive_byte, @function
eeprom_receive_byte:
.LFB110:
	.loc 1 54 0
	.loc 1 56 0
	movzbl	136(%rdi), %eax
	movq	128(%rdi), %rdx
	movzbl	%al, %ecx 
	incl	%eax
	movb	%al, 136(%rdi)
	.loc 1 60 0
	movzbl	(%rdx,%rcx), %eax
	.loc 1 61 0
	ret
.LFE110:
	.size	eeprom_receive_byte, .-eeprom_receive_byte
	.p2align 4,,15
	.type	eeprom_write_data, @function
eeprom_write_data:
.LFB111:
	.loc 1 64 0
	movq	%rbp, -32(%rsp)
.LCFI0:
	movq	%r14, -8(%rsp)
.LCFI1:
	movl	%ecx, %ebp
	movq	%rdx, %r14
	.loc 1 75 0
	movzbl	%sil, %edx
	.loc 1 64 0
	movq	%rbx, -40(%rsp)
.LCFI2:
	.loc 1 75 0
	leal	(%rdx,%rbp), %eax
	.loc 1 64 0
	movq	%r13, -16(%rsp)
.LCFI3:
	movq	%r12, -24(%rsp)
.LCFI4:
	subq	$40, %rsp
.LCFI5:
	.loc 1 64 0
	movq	%rdi, %r13
	movl	%esi, %ecx
	.loc 1 75 0
	cmpl	$256, %eax
	.loc 1 78 0
	movl	%ebp, %ebx
	.loc 1 75 0
	jle	.L6
	.loc 1 76 0
	movl	$256, %ebx
	subl	%edx, %ebx
.L6:
	.loc 1 79 0
	movzbl	%cl, %edi 
	addq	128(%r13), %rdi
	movslq	%ebx,%r12
	movq	%r12, %rdx
	movq	%r14, %rsi
	call	memcpy
	.loc 1 81 0
	subl	%ebx, %ebp
	jne	.L9
	.loc 1 83 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L9:
	.loc 1 82 0
	movq	128(%r13), %rdi
	leaq	(%r12,%r14), %rsi
	movslq	%ebp,%rdx
	.loc 1 83 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	.loc 1 82 0
	jmp	memcpy
.LFE111:
	.size	eeprom_write_data, .-eeprom_write_data
	.p2align 4,,15
	.type	eeprom_read_data, @function
eeprom_read_data:
.LFB112:
	.loc 1 86 0
	.loc 1 89 0
	testl	%edx, %edx
	jne	.L11
	.loc 1 90 0
	movb	%sil, 136(%rdi)
.L11:
	.loc 1 93 0
	call	eeprom_receive_byte
	movzbl	%al, %eax
	.loc 1 94 0
	ret
.LFE112:
	.size	eeprom_read_data, .-eeprom_read_data
	.p2align 4,,15
.globl smbus_eeprom_device_init
	.type	smbus_eeprom_device_init, @function
smbus_eeprom_device_init:
.LFB113:
	.loc 1 97 0
	pushq	%rbx
.LCFI6:
	.loc 1 100 0
	movzbl	%sil, %esi
	.loc 1 97 0
	movq	%rdx, %rbx
	.loc 1 100 0
	movl	$144, %edx
	call	smbus_device_init
	.loc 1 103 0
	movq	$eeprom_quick_cmd, 40(%rax)
	.loc 1 104 0
	movq	$eeprom_send_byte, 48(%rax)
	.loc 1 105 0
	movq	$eeprom_receive_byte, 56(%rax)
	.loc 1 106 0
	movq	$eeprom_write_data, 64(%rax)
	.loc 1 107 0
	movq	$eeprom_read_data, 72(%rax)
	.loc 1 108 0
	movq	%rbx, 128(%rax)
	.loc 1 109 0
	movb	$0, 136(%rax)
	popq	%rbx
	ret
.LFE113:
	.size	smbus_eeprom_device_init, .-smbus_eeprom_device_init
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
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0x8e
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI6-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE10:
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
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0x8e
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI6-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE11:
	.file 2 "./qemu-common.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/smbus.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x75c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF86
	.byte	0x1
	.long	.LASF87
	.long	.LASF88
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
	.byte	0x5
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x74
	.long	0x2fc
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.byte	0x75
	.long	0x30d
	.uleb128 0x7
	.long	0x360
	.long	.LASF50
	.byte	0x28
	.byte	0x2
	.byte	0x75
	.uleb128 0xa
	.long	.LASF51
	.byte	0x4
	.byte	0x1a
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x4
	.byte	0x1b
	.long	0x455
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.byte	0x1c
	.long	0x429
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF54
	.byte	0x4
	.byte	0x1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF55
	.byte	0x4
	.byte	0x20
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x2
	.byte	0x76
	.long	0x36b
	.uleb128 0x7
	.long	0x404
	.long	.LASF56
	.byte	0x80
	.byte	0x2
	.byte	0x76
	.uleb128 0xe
	.string	"i2c"
	.byte	0x3
	.byte	0x1d
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x3
	.byte	0x20
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF58
	.byte	0x3
	.byte	0x21
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF59
	.byte	0x3
	.byte	0x22
	.long	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF60
	.byte	0x3
	.byte	0x27
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF61
	.byte	0x3
	.byte	0x2c
	.long	0x50c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF62
	.byte	0x3
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.long	.LASF64
	.byte	0x3
	.byte	0x31
	.long	0x512
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF65
	.byte	0x3
	.byte	0x32
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7a
	.byte	0x0
	.uleb128 0xf
	.long	0x429
	.long	.LASF89
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.uleb128 0x10
	.long	.LASF66
	.sleb128 0
	.uleb128 0x10
	.long	.LASF67
	.sleb128 1
	.uleb128 0x10
	.long	.LASF68
	.sleb128 2
	.uleb128 0x10
	.long	.LASF69
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x4
	.byte	0x11
	.long	0x434
	.uleb128 0x6
	.byte	0x8
	.long	0x43a
	.uleb128 0x11
	.long	0x44f
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x44f
	.uleb128 0x12
	.long	0x2e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x302
	.uleb128 0x2
	.long	.LASF71
	.byte	0x4
	.byte	0x13
	.long	0x460
	.uleb128 0x6
	.byte	0x8
	.long	0x466
	.uleb128 0x11
	.long	0x476
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x44f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.byte	0x15
	.long	0x481
	.uleb128 0x6
	.byte	0x8
	.long	0x487
	.uleb128 0x13
	.long	0x498
	.byte	0x1
	.uleb128 0x12
	.long	0x44f
	.uleb128 0x12
	.long	0x404
	.byte	0x0
	.uleb128 0x13
	.long	0x4a9
	.byte	0x1
	.uleb128 0x12
	.long	0x4a9
	.uleb128 0x12
	.long	0x2e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x6
	.byte	0x8
	.long	0x498
	.uleb128 0x11
	.long	0x4c5
	.byte	0x1
	.long	0x2e6
	.uleb128 0x12
	.long	0x4a9
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b5
	.uleb128 0x13
	.long	0x4e6
	.byte	0x1
	.uleb128 0x12
	.long	0x4a9
	.uleb128 0x12
	.long	0x2e6
	.uleb128 0x12
	.long	0x4e6
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x6
	.byte	0x8
	.long	0x4cb
	.uleb128 0x11
	.long	0x50c
	.byte	0x1
	.long	0x2e6
	.uleb128 0x12
	.long	0x4a9
	.uleb128 0x12
	.long	0x2e6
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f2
	.uleb128 0xb
	.long	0x522
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x7
	.long	0x55b
	.long	.LASF73
	.byte	0x90
	.byte	0x1
	.byte	0x1f
	.uleb128 0xe
	.string	"dev"
	.byte	0x1
	.byte	0x20
	.long	0x360
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x21
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x22
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x1
	.byte	0x23
	.long	0x522
	.uleb128 0x14
	.long	0x59f
	.long	.LASF77
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x25
	.long	0x4a9
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x25
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x14
	.long	0x5e3
	.long	.LASF78
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x2c
	.long	0x4a9
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.byte	0x2c
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x2e
	.long	0x5e3
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x55b
	.uleb128 0x18
	.long	0x62f
	.long	.LASF79
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x2e6
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x35
	.long	0x4a9
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x37
	.long	0x5e3
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0x38
	.long	0x2e6
	.byte	0x0
	.uleb128 0x14
	.long	0x698
	.long	.LASF81
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x3f
	.long	0x4a9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x15
	.string	"cmd"
	.byte	0x1
	.byte	0x3f
	.long	0x2e6
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x3f
	.long	0x4e6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x41
	.long	0x5e3
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x18
	.long	0x6eb
	.long	.LASF82
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x2e6
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x55
	.long	0x4a9
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"cmd"
	.byte	0x1
	.byte	0x55
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x57
	.long	0x5e3
	.byte	0x0
	.uleb128 0x1b
	.long	0x73f
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0x60
	.long	0x73f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x60
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x60
	.long	0x4e6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.byte	0x62
	.long	0x5e3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0x1d
	.long	.LASF84
	.byte	0x6
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x6
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.long	0x2b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x760
	.long	0x6eb
	.string	"smbus_eeprom_device_init"
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
.LASF9:
	.string	"size_t"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF57:
	.string	"quick_cmd"
.LASF22:
	.string	"_IO_save_base"
.LASF63:
	.string	"data_len"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF49:
	.string	"i2c_bus"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF69:
	.string	"I2C_NACK"
.LASF6:
	.string	"unsigned char"
.LASF90:
	.string	"smbus_eeprom_device_init"
.LASF73:
	.string	"SMBusEEPROMDevice"
.LASF5:
	.string	"char"
.LASF79:
	.string	"eeprom_receive_byte"
.LASF42:
	.string	"_IO_lock_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF81:
	.string	"eeprom_write_data"
.LASF47:
	.string	"_pos"
.LASF84:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF72:
	.string	"i2c_event_cb"
.LASF89:
	.string	"i2c_event"
.LASF34:
	.string	"_offset"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF82:
	.string	"eeprom_read_data"
.LASF53:
	.string	"send"
.LASF78:
	.string	"eeprom_send_byte"
.LASF3:
	.string	"long long int"
.LASF70:
	.string	"i2c_send_cb"
.LASF19:
	.string	"_IO_write_end"
.LASF51:
	.string	"event"
.LASF83:
	.string	"addr"
.LASF76:
	.string	"read"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF86:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
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
.LASF87:
	.string	"/home/remco/Projects/Argos/src/hw/smbus_eeprom.c"
.LASF46:
	.string	"_sbuf"
.LASF68:
	.string	"I2C_FINISH"
.LASF13:
	.string	"_flags"
.LASF75:
	.string	"offset"
.LASF54:
	.string	"address"
.LASF61:
	.string	"read_data"
.LASF50:
	.string	"i2c_slave"
.LASF64:
	.string	"data_buf"
.LASF52:
	.string	"recv"
.LASF58:
	.string	"send_byte"
.LASF55:
	.string	"next"
.LASF59:
	.string	"receive_byte"
.LASF77:
	.string	"eeprom_quick_cmd"
.LASF12:
	.string	"long long unsigned int"
.LASF65:
	.string	"command"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF88:
	.string	"/home/remco/Projects/Argos/src"
.LASF56:
	.string	"SMBusDevice"
.LASF21:
	.string	"_IO_buf_end"
.LASF80:
	.string	"eeprom"
.LASF8:
	.string	"short int"
.LASF62:
	.string	"mode"
.LASF67:
	.string	"I2C_START_SEND"
.LASF31:
	.string	"_vtable_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF27:
	.string	"_fileno"
.LASF4:
	.string	"short unsigned int"
.LASF85:
	.string	"stdout"
.LASF71:
	.string	"i2c_recv_cb"
.LASF18:
	.string	"_IO_write_ptr"
.LASF60:
	.string	"write_data"
.LASF66:
	.string	"I2C_START_RECV"
.LASF74:
	.string	"data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
