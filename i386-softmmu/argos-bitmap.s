	.file	"argos-bitmap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 20
__PRETTY_FUNCTION__.1:
	.string	"argos_bitmap_create"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"/home/remco/Projects/Argos/src/argos-bitmap.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"(map) != ((void *)0)"
	.text
	.p2align 4,,15
.globl argos_bitmap_create
	.type	argos_bitmap_create, @function
argos_bitmap_create:
.LFB173:
	.file 1 "/home/remco/Projects/Argos/src/argos-bitmap.c"
	.loc 1 41 0
	.loc 1 44 0
	shrq	$3, %rdi
	.loc 1 41 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 44 0
	incq	%rdi
	.loc 1 45 0
	call	qemu_vmalloc
	.loc 1 46 0
	testq	%rax, %rax
	je	.L5
	.loc 1 48 0
	addq	$8, %rsp
	ret
.L5:
	.loc 1 46 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$46, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.LFE173:
	.size	argos_bitmap_create, .-argos_bitmap_create
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 21
__PRETTY_FUNCTION__.0:
	.string	"argos_bitmap_createz"
	.text
	.p2align 4,,15
.globl argos_bitmap_createz
	.type	argos_bitmap_createz, @function
argos_bitmap_createz:
.LFB174:
	.loc 1 51 0
	.loc 1 54 0
	shrq	$3, %rdi
	.loc 1 51 0
	movq	%rbp, -8(%rsp)
.LCFI1:
	movq	%rbx, -16(%rsp)
.LCFI2:
	.loc 1 54 0
	leaq	1(%rdi), %rbp
	.loc 1 51 0
	subq	$24, %rsp
.LCFI3:
	.loc 1 55 0
	movq	%rbp, %rdi
	call	qemu_vmalloc
	.loc 1 56 0
	testq	%rax, %rax
	.loc 1 55 0
	movq	%rax, %rbx
	.loc 1 56 0
	je	.L9
	.loc 1 57 0
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset
	.loc 1 59 0
	movq	%rbx, %rax
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
.L9:
	.loc 1 56 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$56, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.LFE174:
	.size	argos_bitmap_createz, .-argos_bitmap_createz
	.p2align 4,,15
.globl argos_bitmap_reset
	.type	argos_bitmap_reset, @function
argos_bitmap_reset:
.LFB175:
	.loc 1 62 0
	.loc 1 63 0
	shrq	$3, %rsi
	leaq	1(%rsi), %rdx
	.loc 1 64 0
	xorl	%esi, %esi
	jmp	memset
.LFE175:
	.size	argos_bitmap_reset, .-argos_bitmap_reset
	.p2align 4,,15
.globl argos_bitmap_destroy
	.type	argos_bitmap_destroy, @function
argos_bitmap_destroy:
.LFB176:
	.loc 1 68 0
	.loc 1 69 0
	jmp	free
.LFE176:
	.size	argos_bitmap_destroy, .-argos_bitmap_destroy
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
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.byte	0x4
	.long	.LCFI0-.LFB173
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.byte	0x4
	.long	.LCFI2-.LFB174
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB175
	.quad	.LFE175-.LFB175
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB176
	.quad	.LFE176-.LFB176
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
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.byte	0x4
	.long	.LCFI0-.LFB173
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.byte	0x4
	.long	.LCFI2-.LFB174
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB175
	.quad	.LFE175-.LFB175
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.align 8
.LEFDE7:
	.file 2 "../argos.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../cpu-all.h"
	.file 8 "/usr/include/stdint.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x489
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
	.long	.LASF7
	.byte	0x3
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
	.byte	0x6
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
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
	.uleb128 0x7
	.long	0x268
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF11
	.byte	0x5
	.value	0x110
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.value	0x115
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x116
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x117
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x118
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x119
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x11a
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x11b
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x11c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11e
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x11f
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x120
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x122
	.long	0x2a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x124
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x126
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x12a
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x12c
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x130
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x131
	.long	0x54
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x132
	.long	0x2b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x136
	.long	0x2c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x13f
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x148
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x149
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x14a
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x14b
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14e
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x150
	.long	0x2c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0xb4
	.uleb128 0x7
	.long	0x2a6
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0xbb
	.long	0x2a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0xbc
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0xc0
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x26f
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x2c2
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x268
	.uleb128 0xb
	.long	0x2d8
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.long	.LASF46
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF47
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF48
	.byte	0x8
	.byte	0x31
	.long	0x3f
	.uleb128 0x3
	.long	.LASF49
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.byte	0x4b
	.long	0x3f
	.uleb128 0xe
	.long	0x368
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	0x368
	.quad	.LFB173
	.quad	.LFE173
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x28
	.long	0x2d
	.byte	0x1
	.byte	0x55
	.uleb128 0x10
	.string	"map"
	.byte	0x1
	.byte	0x2a
	.long	0x368
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.long	.LASF53
	.long	0x37e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.1
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x30b
	.uleb128 0xb
	.long	0x37e
	.long	0x2d8
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0x0
	.uleb128 0xd
	.long	0x36e
	.uleb128 0xe
	.long	0x3d5
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x368
	.quad	.LFB174
	.quad	.LFE174
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x32
	.long	0x2d
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.string	"map"
	.byte	0x1
	.byte	0x34
	.long	0x368
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.long	.LASF53
	.long	0x3e5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.byte	0x0
	.uleb128 0xb
	.long	0x3e5
	.long	0x2d8
	.uleb128 0xc
	.long	0x86
	.byte	0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3d5
	.uleb128 0x12
	.long	0x424
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.quad	.LFB175
	.quad	.LFE175
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"map"
	.byte	0x1
	.byte	0x3d
	.long	0x368
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.long	0x2d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x12
	.long	0x45e
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.quad	.LFB176
	.quad	.LFE176
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"map"
	.byte	0x1
	.byte	0x43
	.long	0x368
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x43
	.long	0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x4
	.byte	0x91
	.long	0x2ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF59
	.byte	0x4
	.byte	0x92
	.long	0x2ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF60
	.byte	0x7
	.value	0x376
	.long	0x486
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2eb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x6f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x48d
	.long	0x316
	.string	"argos_bitmap_create"
	.long	0x383
	.string	"argos_bitmap_createz"
	.long	0x3ea
	.string	"argos_bitmap_reset"
	.long	0x424
	.string	"argos_bitmap_destroy"
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
.LASF30:
	.string	"_shortbuf"
.LASF40:
	.string	"_IO_lock_t"
.LASF19:
	.string	"_IO_buf_end"
.LASF56:
	.string	"argos_bitmap_reset"
.LASF17:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"_flags"
.LASF23:
	.string	"_markers"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"_IO_write_base"
.LASF45:
	.string	"_pos"
.LASF59:
	.string	"stdout"
.LASF57:
	.string	"argos_bitmap_destroy"
.LASF49:
	.string	"float"
.LASF47:
	.string	"long long unsigned int"
.LASF32:
	.string	"_offset"
.LASF25:
	.string	"_fileno"
.LASF7:
	.string	"size_t"
.LASF29:
	.string	"_vtable_offset"
.LASF14:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_save_end"
.LASF43:
	.string	"_next"
.LASF10:
	.string	"char"
.LASF38:
	.string	"_mode"
.LASF48:
	.string	"uint8_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF63:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF42:
	.string	"_IO_marker"
.LASF46:
	.string	"long long int"
.LASF20:
	.string	"_IO_save_base"
.LASF21:
	.string	"_IO_backup_base"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF62:
	.string	"/home/remco/Projects/Argos/src/argos-bitmap.c"
.LASF60:
	.string	"phys_ram_dirty"
.LASF2:
	.string	"short unsigned int"
.LASF51:
	.string	"long double"
.LASF52:
	.string	"argos_bitmap_t"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF31:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF27:
	.string	"_old_offset"
.LASF58:
	.string	"stdin"
.LASF41:
	.string	"_IO_FILE"
.LASF55:
	.string	"argos_bitmap_createz"
.LASF44:
	.string	"_sbuf"
.LASF16:
	.string	"_IO_write_ptr"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF54:
	.string	"argos_bitmap_create"
.LASF53:
	.string	"__PRETTY_FUNCTION__"
.LASF50:
	.string	"double"
.LASF61:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF24:
	.string	"_chain"
.LASF26:
	.string	"_flags2"
.LASF28:
	.string	"_cur_column"
.LASF39:
	.string	"_unused2"
.LASF18:
	.string	"_IO_buf_base"
.LASF9:
	.string	"__off64_t"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
