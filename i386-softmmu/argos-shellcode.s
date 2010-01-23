	.file	"argos-shellcode.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl get_current_instr_len
	.type	get_current_instr_len, @function
get_current_instr_len:
.LFB286:
	.file 1 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.c"
	.loc 1 7 0
	subq	$248, %rsp
.LCFI0:
	.loc 1 10 0
	xorl	%edx, %edx
	movq	%rsp, %rdi
	call	get_instruction
	.loc 1 23 0
	addq	$248, %rsp
	ret
.LFE286:
	.size	get_current_instr_len, .-get_current_instr_len
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
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI0-.LFB286
	.byte	0xe
	.uleb128 0x100
	.align 8
.LEFDE0:
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
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.byte	0x4
	.long	.LCFI0-.LFB286
	.byte	0xe
	.uleb128 0x100
	.align 8
.LEFDE1:
	.file 2 "../cpu-defs.h"
	.file 3 "/home/remco/Projects/Argos/src/target-i386/libdasm/libdasm.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "/home/remco/Projects/Argos/src/target-i386/exec.h"
	.file 6 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 7 "../argos-tag.h"
	.file 8 "../argos.h"
	.file 9 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 10 "../dyngen-exec.h"
	.file 11 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 12 "/usr/include/setjmp.h"
	.file 13 "/usr/include/bits/setjmp.h"
	.file 14 "/usr/include/bits/sigset.h"
	.file 15 "../exec-all.h"
	.file 16 "../cpu-all.h"
	.file 17 "../argos-memmap.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1518
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF338
	.byte	0x1
	.long	.LASF339
	.long	.LASF340
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF7
	.byte	0xa
	.byte	0x37
	.long	0x3b
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF8
	.byte	0xa
	.byte	0x54
	.long	0x7d
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1
	.uleb128 0x4
	.long	.LASF9
	.byte	0xd
	.byte	0x20
	.long	0x8e
	.uleb128 0x7
	.long	0x9e
	.long	0x2d
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.long	0xbc
	.byte	0x80
	.byte	0xe
	.byte	0x20
	.uleb128 0xa
	.long	.LASF11
	.byte	0xe
	.byte	0x1f
	.long	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0xcc
	.long	0x34
	.uleb128 0x8
	.long	0x9e
	.byte	0xf
	.byte	0x0
	.uleb128 0x4
	.long	.LASF10
	.byte	0xe
	.byte	0x20
	.long	0xa5
	.uleb128 0xb
	.long	0x10e
	.long	.LASF18
	.byte	0xc8
	.byte	0xc
	.byte	0x24
	.uleb128 0xa
	.long	.LASF12
	.byte	0xc
	.byte	0x29
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF13
	.byte	0xc
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF14
	.byte	0xc
	.byte	0x2b
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x4
	.long	.LASF15
	.byte	0xc
	.byte	0x31
	.long	0x119
	.uleb128 0x7
	.long	0x129
	.long	0xd7
	.uleb128 0x8
	.long	0x9e
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x31
	.long	0x50
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0x49
	.long	0x34
	.uleb128 0xb
	.long	0x184
	.long	.LASF19
	.byte	0x18
	.byte	0x2
	.byte	0x69
	.uleb128 0xa
	.long	.LASF20
	.byte	0x2
	.byte	0x70
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.byte	0x71
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.byte	0x72
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x75
	.long	0x13f
	.uleb128 0x2
	.long	.LASF24
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.long	.LASF25
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF26
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF27
	.byte	0xb
	.byte	0x3b
	.long	0x18f
	.uleb128 0x4
	.long	.LASF28
	.byte	0xb
	.byte	0x3c
	.long	0x196
	.uleb128 0x4
	.long	.LASF29
	.byte	0xb
	.byte	0x3e
	.long	0x1c5
	.uleb128 0x2
	.long	.LASF30
	.byte	0x10
	.byte	0x4
	.uleb128 0xb
	.long	0x1f5
	.long	.LASF31
	.byte	0x2
	.byte	0xb
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF32
	.byte	0xb
	.byte	0x6e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF33
	.byte	0xb
	.byte	0x70
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF31
	.byte	0xb
	.byte	0x72
	.long	0x1cc
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.value	0x198
	.long	0x1ba
	.uleb128 0xd
	.long	0x256
	.long	.LASF35
	.byte	0x10
	.byte	0x6
	.value	0x19d
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.value	0x19e
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.value	0x19f
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.value	0x1a0
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.value	0x1a1
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.value	0x1a2
	.long	0x20c
	.uleb128 0xf
	.long	0x2ae
	.byte	0x10
	.byte	0x6
	.value	0x1ab
	.uleb128 0x10
	.string	"_b"
	.byte	0x6
	.value	0x1a5
	.long	0x2ae
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.value	0x1a6
	.long	0x2be
	.uleb128 0x10
	.string	"_l"
	.byte	0x6
	.value	0x1a7
	.long	0x2ce
	.uleb128 0x10
	.string	"_q"
	.byte	0x6
	.value	0x1a8
	.long	0x2de
	.uleb128 0x10
	.string	"_s"
	.byte	0x6
	.value	0x1a9
	.long	0x2ee
	.uleb128 0x10
	.string	"_d"
	.byte	0x6
	.value	0x1aa
	.long	0x2fe
	.byte	0x0
	.uleb128 0x7
	.long	0x2be
	.long	0x42
	.uleb128 0x8
	.long	0x9e
	.byte	0xf
	.byte	0x0
	.uleb128 0x7
	.long	0x2ce
	.long	0x49
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x2de
	.long	0x50
	.uleb128 0x8
	.long	0x9e
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x2ee
	.long	0x34
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x2fe
	.long	0x1a4
	.uleb128 0x8
	.long	0x9e
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x30e
	.long	0x1af
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.value	0x1ab
	.long	0x262
	.uleb128 0xf
	.long	0x34f
	.byte	0x8
	.byte	0x6
	.value	0x1b2
	.uleb128 0x10
	.string	"_b"
	.byte	0x6
	.value	0x1ae
	.long	0x34f
	.uleb128 0x10
	.string	"_w"
	.byte	0x6
	.value	0x1af
	.long	0x35f
	.uleb128 0x10
	.string	"_l"
	.byte	0x6
	.value	0x1b0
	.long	0x36f
	.uleb128 0x10
	.string	"q"
	.byte	0x6
	.value	0x1b1
	.long	0x34
	.byte	0x0
	.uleb128 0x7
	.long	0x35f
	.long	0x42
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x36f
	.long	0x49
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x37f
	.long	0x50
	.uleb128 0x8
	.long	0x9e
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.value	0x1b2
	.long	0x31a
	.uleb128 0x4
	.long	.LASF42
	.byte	0x8
	.byte	0x2f
	.long	0x50
	.uleb128 0x4
	.long	.LASF43
	.byte	0x8
	.byte	0x34
	.long	0x50
	.uleb128 0x4
	.long	.LASF44
	.byte	0x8
	.byte	0x35
	.long	0x396
	.uleb128 0x4
	.long	.LASF45
	.byte	0x8
	.byte	0x4f
	.long	0x3a1
	.uleb128 0xb
	.long	0x3e0
	.long	.LASF46
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x38
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x39
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x7
	.byte	0x3d
	.long	0x3b7
	.uleb128 0xb
	.long	0x560
	.long	.LASF50
	.byte	0xd0
	.byte	0x9
	.byte	0x36
	.uleb128 0xa
	.long	.LASF51
	.byte	0x9
	.byte	0x38
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x9
	.byte	0x39
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"cr3"
	.byte	0x9
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF53
	.byte	0x9
	.byte	0x3f
	.long	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF54
	.byte	0x9
	.byte	0x41
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF55
	.byte	0x9
	.byte	0x43
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x45
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x47
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.long	.LASF58
	.byte	0x9
	.byte	0x4a
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF59
	.byte	0x9
	.byte	0x4b
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF60
	.byte	0x9
	.byte	0x4c
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF61
	.byte	0x9
	.byte	0x4e
	.long	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF62
	.byte	0x9
	.byte	0x50
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF63
	.byte	0x9
	.byte	0x52
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF64
	.byte	0x9
	.byte	0x54
	.long	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF65
	.byte	0x9
	.byte	0x56
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0x58
	.long	0x586
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0x5b
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x9
	.byte	0x5c
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF69
	.byte	0x9
	.byte	0x5e
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.long	.LASF70
	.byte	0x9
	.byte	0x60
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x9
	.byte	0x62
	.long	0x586
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF72
	.byte	0x9
	.byte	0x65
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF73
	.byte	0x9
	.byte	0x66
	.long	0x42
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.long	.LASF74
	.byte	0x9
	.byte	0x68
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x72
	.uleb128 0x7
	.long	0x576
	.long	0x19d
	.uleb128 0x8
	.long	0x9e
	.byte	0x10
	.byte	0x0
	.uleb128 0x7
	.long	0x586
	.long	0x396
	.uleb128 0x8
	.long	0x9e
	.byte	0x10
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x396
	.uleb128 0x4
	.long	.LASF75
	.byte	0x9
	.byte	0x69
	.long	0x3eb
	.uleb128 0xf
	.long	0x5b7
	.byte	0x10
	.byte	0x6
	.value	0x20f
	.uleb128 0x10
	.string	"d"
	.byte	0x6
	.value	0x20a
	.long	0x200
	.uleb128 0x10
	.string	"mmx"
	.byte	0x6
	.value	0x20e
	.long	0x37f
	.byte	0x0
	.uleb128 0xf
	.long	0x5ed
	.byte	0x8
	.byte	0x6
	.value	0x219
	.uleb128 0x10
	.string	"f"
	.byte	0x6
	.value	0x215
	.long	0x18f
	.uleb128 0x10
	.string	"d"
	.byte	0x6
	.value	0x216
	.long	0x196
	.uleb128 0x10
	.string	"i32"
	.byte	0x6
	.value	0x217
	.long	0x3b
	.uleb128 0x10
	.string	"i64"
	.byte	0x6
	.value	0x218
	.long	0x2d
	.byte	0x0
	.uleb128 0x13
	.long	0x615
	.byte	0x10
	.byte	0x6
	.value	0x246
	.uleb128 0xe
	.long	.LASF76
	.byte	0x6
	.value	0x246
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF23
	.byte	0x6
	.value	0x246
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	0xbb0
	.long	.LASF77
	.value	0xb820
	.byte	0x5
	.byte	0x21
	.uleb128 0xe
	.long	.LASF78
	.byte	0x6
	.value	0x1df
	.long	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"eip"
	.byte	0x6
	.value	0x1e0
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF79
	.byte	0x6
	.value	0x1e1
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.long	.LASF80
	.byte	0x6
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.long	.LASF81
	.byte	0x6
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.long	.LASF82
	.byte	0x6
	.value	0x1e6
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.long	.LASF83
	.byte	0x6
	.value	0x1e7
	.long	0xbc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.long	.LASF84
	.byte	0x6
	.value	0x1e9
	.long	0x58c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.long	.LASF85
	.byte	0x6
	.value	0x1ec
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xe
	.long	.LASF86
	.byte	0x6
	.value	0x1ed
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xe
	.long	.LASF87
	.byte	0x6
	.value	0x1ee
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x15
	.string	"df"
	.byte	0x6
	.value	0x1ef
	.long	0x65
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xe
	.long	.LASF88
	.byte	0x6
	.value	0x1f0
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xe
	.long	.LASF89
	.byte	0x6
	.value	0x1f3
	.long	0xbd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x15
	.string	"ldt"
	.byte	0x6
	.value	0x1f4
	.long	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x15
	.string	"tr"
	.byte	0x6
	.value	0x1f5
	.long	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x15
	.string	"gdt"
	.byte	0x6
	.value	0x1f6
	.long	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x15
	.string	"idt"
	.byte	0x6
	.value	0x1f7
	.long	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x15
	.string	"cr"
	.byte	0x6
	.value	0x1f9
	.long	0xbe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.long	.LASF90
	.byte	0x6
	.value	0x1fa
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.long	.LASF91
	.byte	0x6
	.value	0x201
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.long	.LASF92
	.byte	0x6
	.value	0x202
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.long	.LASF93
	.byte	0x6
	.value	0x204
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.long	.LASF94
	.byte	0x6
	.value	0x205
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.long	.LASF95
	.byte	0x6
	.value	0x206
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.long	.LASF96
	.byte	0x6
	.value	0x207
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.long	.LASF97
	.byte	0x6
	.value	0x20f
	.long	0xbf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xe
	.long	.LASF98
	.byte	0x6
	.value	0x212
	.long	0x1f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x15
	.string	"ft0"
	.byte	0x6
	.value	0x213
	.long	0x200
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xe
	.long	.LASF99
	.byte	0x6
	.value	0x219
	.long	0x5b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x6
	.value	0x21b
	.long	0x1f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xe
	.long	.LASF101
	.byte	0x6
	.value	0x21c
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xe
	.long	.LASF102
	.byte	0x6
	.value	0x21d
	.long	0xc00
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xe
	.long	.LASF103
	.byte	0x6
	.value	0x21e
	.long	0x30e
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xe
	.long	.LASF104
	.byte	0x6
	.value	0x21f
	.long	0x37f
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xe
	.long	.LASF105
	.byte	0x6
	.value	0x222
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.value	0x223
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.value	0x224
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xe
	.long	.LASF108
	.byte	0x6
	.value	0x225
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xe
	.long	.LASF109
	.byte	0x6
	.value	0x226
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xe
	.long	.LASF110
	.byte	0x6
	.value	0x228
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xe
	.long	.LASF111
	.byte	0x6
	.value	0x229
	.long	0x134
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xe
	.long	.LASF112
	.byte	0x6
	.value	0x22a
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xe
	.long	.LASF113
	.byte	0x6
	.value	0x22b
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xe
	.long	.LASF114
	.byte	0x6
	.value	0x22c
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xe
	.long	.LASF115
	.byte	0x6
	.value	0x22d
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xe
	.long	.LASF116
	.byte	0x6
	.value	0x22e
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xe
	.long	.LASF117
	.byte	0x6
	.value	0x22f
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x15
	.string	"pat"
	.byte	0x6
	.value	0x238
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xe
	.long	.LASF118
	.byte	0x6
	.value	0x23b
	.long	0x10e
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xe
	.long	.LASF119
	.byte	0x6
	.value	0x23c
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xe
	.long	.LASF120
	.byte	0x6
	.value	0x23d
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xe
	.long	.LASF121
	.byte	0x6
	.value	0x23e
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xe
	.long	.LASF122
	.byte	0x6
	.value	0x23f
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x15
	.string	"dr"
	.byte	0x6
	.value	0x240
	.long	0xbb0
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xe
	.long	.LASF123
	.byte	0x6
	.value	0x241
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xe
	.long	.LASF124
	.byte	0x6
	.value	0x242
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xe
	.long	.LASF125
	.byte	0x6
	.value	0x243
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xe
	.long	.LASF126
	.byte	0x6
	.value	0x244
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xe
	.long	.LASF127
	.byte	0x6
	.value	0x246
	.long	0xcd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xe
	.long	.LASF128
	.byte	0x6
	.value	0x246
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xe
	.long	.LASF129
	.byte	0x6
	.value	0x246
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xe
	.long	.LASF130
	.byte	0x6
	.value	0x246
	.long	0xcd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xe
	.long	.LASF131
	.byte	0x6
	.value	0x246
	.long	0xcef
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xe
	.long	.LASF132
	.byte	0x6
	.value	0x246
	.long	0xd00
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xe
	.long	.LASF133
	.byte	0x6
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xe
	.long	.LASF134
	.byte	0x6
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xe
	.long	.LASF135
	.byte	0x6
	.value	0x246
	.long	0xd10
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xe
	.long	.LASF136
	.byte	0x6
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xe
	.long	.LASF137
	.byte	0x6
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xe
	.long	.LASF138
	.byte	0x6
	.value	0x246
	.long	0x70
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xe
	.long	.LASF139
	.byte	0x6
	.value	0x246
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xe
	.long	.LASF140
	.byte	0x6
	.value	0x246
	.long	0x70
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xe
	.long	.LASF141
	.byte	0x6
	.value	0x246
	.long	0xd20
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xe
	.long	.LASF142
	.byte	0x6
	.value	0x249
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xe
	.long	.LASF143
	.byte	0x6
	.value	0x24a
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xe
	.long	.LASF144
	.byte	0x6
	.value	0x24b
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xe
	.long	.LASF145
	.byte	0x6
	.value	0x24c
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xe
	.long	.LASF146
	.byte	0x6
	.value	0x24d
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xe
	.long	.LASF147
	.byte	0x6
	.value	0x24e
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xe
	.long	.LASF148
	.byte	0x6
	.value	0x24f
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xe
	.long	.LASF149
	.byte	0x6
	.value	0x250
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xe
	.long	.LASF150
	.byte	0x6
	.value	0x251
	.long	0xd2b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xe
	.long	.LASF151
	.byte	0x6
	.value	0x252
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xe
	.long	.LASF152
	.byte	0x6
	.value	0x253
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xe
	.long	.LASF153
	.byte	0x6
	.value	0x254
	.long	0x50
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xe
	.long	.LASF154
	.byte	0x6
	.value	0x25b
	.long	0xd3b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xe
	.long	.LASF155
	.byte	0x6
	.value	0x25f
	.long	0xd47
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0x7
	.long	0xbc0
	.long	0x129
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xbd0
	.long	0x3e0
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xbe0
	.long	0x256
	.uleb128 0x8
	.long	0x9e
	.byte	0x5
	.byte	0x0
	.uleb128 0x7
	.long	0xbf0
	.long	0x129
	.uleb128 0x8
	.long	0x9e
	.byte	0x4
	.byte	0x0
	.uleb128 0x7
	.long	0xc00
	.long	0x597
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xc10
	.long	0x30e
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	0xcd3
	.long	.LASF156
	.byte	0x68
	.byte	0x6
	.value	0x246
	.uleb128 0x11
	.string	"pc"
	.byte	0xf
	.byte	0x93
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF157
	.byte	0xf
	.byte	0x94
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF39
	.byte	0xf
	.byte	0x95
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF158
	.byte	0xf
	.byte	0x96
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF159
	.byte	0xf
	.byte	0x98
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.long	.LASF160
	.byte	0xf
	.byte	0x9e
	.long	0xd5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF161
	.byte	0xf
	.byte	0xa0
	.long	0xcd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF162
	.byte	0xf
	.byte	0xa3
	.long	0xd64
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF163
	.byte	0xf
	.byte	0xa4
	.long	0xd74
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF164
	.byte	0xf
	.byte	0xa8
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF165
	.byte	0xf
	.byte	0xac
	.long	0xd84
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF166
	.byte	0xf
	.byte	0xb2
	.long	0xd64
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF167
	.byte	0xf
	.byte	0xb3
	.long	0xcd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0xc10
	.uleb128 0x7
	.long	0xcef
	.long	0x184
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.uleb128 0x8
	.long	0x9e
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.long	0xd00
	.long	0xcd3
	.uleb128 0x16
	.long	0x9e
	.value	0xfff
	.byte	0x0
	.uleb128 0x7
	.long	0xd10
	.long	0x129
	.uleb128 0x8
	.long	0x9e
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0xd20
	.long	0x5ed
	.uleb128 0x8
	.long	0x9e
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0xd26
	.uleb128 0x17
	.long	0x19d
	.uleb128 0x7
	.long	0xd3b
	.long	0x50
	.uleb128 0x8
	.long	0x9e
	.byte	0xb
	.byte	0x0
	.uleb128 0x12
	.byte	0x8
	.long	0x3a1
	.uleb128 0x6
	.long	.LASF168
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0xd41
	.uleb128 0xc
	.long	.LASF77
	.byte	0x6
	.value	0x260
	.long	0x615
	.uleb128 0x17
	.long	0x3e0
	.uleb128 0x12
	.byte	0x8
	.long	0x42
	.uleb128 0x7
	.long	0xd74
	.long	0xcd3
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0xd84
	.long	0x129
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0xd94
	.long	0x50
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0xdbd
	.long	.LASF169
	.byte	0x10
	.byte	0x5
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF170
	.byte	0x5
	.byte	0xa9
	.long	0xdc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF171
	.byte	0x5
	.byte	0xaa
	.long	0xdc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.long	0x3b
	.uleb128 0x12
	.byte	0x8
	.long	0xdbd
	.uleb128 0x4
	.long	.LASF169
	.byte	0x5
	.byte	0xab
	.long	0xd94
	.uleb128 0x2
	.long	.LASF172
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.long	.LASF173
	.byte	0x4
	.byte	0xc9
	.long	0x42
	.uleb128 0x4
	.long	.LASF174
	.byte	0x4
	.byte	0xca
	.long	0x49
	.uleb128 0x4
	.long	.LASF175
	.byte	0x4
	.byte	0xcb
	.long	0x50
	.uleb128 0x2
	.long	.LASF176
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.long	.LASF177
	.byte	0x3
	.byte	0x35
	.long	0xddb
	.uleb128 0x4
	.long	.LASF178
	.byte	0x3
	.byte	0x36
	.long	0xde6
	.uleb128 0x4
	.long	.LASF179
	.byte	0x3
	.byte	0x37
	.long	0xdf1
	.uleb128 0x19
	.long	0xe3d
	.long	.LASF182
	.byte	0x4
	.byte	0x3
	.byte	0xa3
	.uleb128 0x1a
	.long	.LASF180
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF181
	.sleb128 1
	.byte	0x0
	.uleb128 0x19
	.long	0x10fe
	.long	.LASF183
	.byte	0x4
	.byte	0x3
	.byte	0xbd
	.uleb128 0x1a
	.long	.LASF184
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF185
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF186
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF187
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF188
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF189
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF190
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF191
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF192
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF193
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF194
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF195
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF196
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF197
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF198
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF199
	.sleb128 15
	.uleb128 0x1a
	.long	.LASF200
	.sleb128 16
	.uleb128 0x1a
	.long	.LASF201
	.sleb128 17
	.uleb128 0x1a
	.long	.LASF202
	.sleb128 18
	.uleb128 0x1a
	.long	.LASF203
	.sleb128 19
	.uleb128 0x1a
	.long	.LASF204
	.sleb128 20
	.uleb128 0x1a
	.long	.LASF205
	.sleb128 21
	.uleb128 0x1a
	.long	.LASF206
	.sleb128 22
	.uleb128 0x1a
	.long	.LASF207
	.sleb128 23
	.uleb128 0x1a
	.long	.LASF208
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF209
	.sleb128 25
	.uleb128 0x1a
	.long	.LASF210
	.sleb128 26
	.uleb128 0x1a
	.long	.LASF211
	.sleb128 27
	.uleb128 0x1a
	.long	.LASF212
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF213
	.sleb128 29
	.uleb128 0x1a
	.long	.LASF214
	.sleb128 30
	.uleb128 0x1a
	.long	.LASF215
	.sleb128 31
	.uleb128 0x1a
	.long	.LASF216
	.sleb128 32
	.uleb128 0x1a
	.long	.LASF217
	.sleb128 33
	.uleb128 0x1a
	.long	.LASF218
	.sleb128 34
	.uleb128 0x1a
	.long	.LASF219
	.sleb128 35
	.uleb128 0x1a
	.long	.LASF220
	.sleb128 36
	.uleb128 0x1a
	.long	.LASF221
	.sleb128 37
	.uleb128 0x1a
	.long	.LASF222
	.sleb128 38
	.uleb128 0x1a
	.long	.LASF223
	.sleb128 39
	.uleb128 0x1a
	.long	.LASF224
	.sleb128 40
	.uleb128 0x1a
	.long	.LASF225
	.sleb128 41
	.uleb128 0x1a
	.long	.LASF226
	.sleb128 42
	.uleb128 0x1a
	.long	.LASF227
	.sleb128 43
	.uleb128 0x1a
	.long	.LASF228
	.sleb128 44
	.uleb128 0x1a
	.long	.LASF229
	.sleb128 45
	.uleb128 0x1a
	.long	.LASF230
	.sleb128 46
	.uleb128 0x1a
	.long	.LASF231
	.sleb128 47
	.uleb128 0x1a
	.long	.LASF232
	.sleb128 48
	.uleb128 0x1a
	.long	.LASF233
	.sleb128 49
	.uleb128 0x1a
	.long	.LASF234
	.sleb128 50
	.uleb128 0x1a
	.long	.LASF235
	.sleb128 51
	.uleb128 0x1a
	.long	.LASF236
	.sleb128 52
	.uleb128 0x1a
	.long	.LASF237
	.sleb128 53
	.uleb128 0x1a
	.long	.LASF238
	.sleb128 54
	.uleb128 0x1a
	.long	.LASF239
	.sleb128 55
	.uleb128 0x1a
	.long	.LASF240
	.sleb128 56
	.uleb128 0x1a
	.long	.LASF241
	.sleb128 57
	.uleb128 0x1a
	.long	.LASF242
	.sleb128 58
	.uleb128 0x1a
	.long	.LASF243
	.sleb128 59
	.uleb128 0x1a
	.long	.LASF244
	.sleb128 60
	.uleb128 0x1a
	.long	.LASF245
	.sleb128 61
	.uleb128 0x1a
	.long	.LASF246
	.sleb128 62
	.uleb128 0x1a
	.long	.LASF247
	.sleb128 63
	.uleb128 0x1a
	.long	.LASF248
	.sleb128 64
	.uleb128 0x1a
	.long	.LASF249
	.sleb128 65
	.uleb128 0x1a
	.long	.LASF250
	.sleb128 66
	.uleb128 0x1a
	.long	.LASF251
	.sleb128 67
	.uleb128 0x1a
	.long	.LASF252
	.sleb128 68
	.uleb128 0x1a
	.long	.LASF253
	.sleb128 69
	.uleb128 0x1a
	.long	.LASF254
	.sleb128 70
	.uleb128 0x1a
	.long	.LASF255
	.sleb128 71
	.uleb128 0x1a
	.long	.LASF256
	.sleb128 72
	.uleb128 0x1a
	.long	.LASF257
	.sleb128 73
	.uleb128 0x1a
	.long	.LASF258
	.sleb128 74
	.uleb128 0x1a
	.long	.LASF259
	.sleb128 75
	.uleb128 0x1a
	.long	.LASF260
	.sleb128 76
	.uleb128 0x1a
	.long	.LASF261
	.sleb128 77
	.uleb128 0x1a
	.long	.LASF262
	.sleb128 78
	.uleb128 0x1a
	.long	.LASF263
	.sleb128 79
	.uleb128 0x1a
	.long	.LASF264
	.sleb128 80
	.uleb128 0x1a
	.long	.LASF265
	.sleb128 81
	.uleb128 0x1a
	.long	.LASF266
	.sleb128 82
	.uleb128 0x1a
	.long	.LASF267
	.sleb128 83
	.uleb128 0x1a
	.long	.LASF268
	.sleb128 84
	.uleb128 0x1a
	.long	.LASF269
	.sleb128 85
	.uleb128 0x1a
	.long	.LASF270
	.sleb128 86
	.uleb128 0x1a
	.long	.LASF271
	.sleb128 87
	.uleb128 0x1a
	.long	.LASF272
	.sleb128 88
	.uleb128 0x1a
	.long	.LASF273
	.sleb128 89
	.uleb128 0x1a
	.long	.LASF274
	.sleb128 90
	.uleb128 0x1a
	.long	.LASF275
	.sleb128 91
	.uleb128 0x1a
	.long	.LASF276
	.sleb128 92
	.uleb128 0x1a
	.long	.LASF277
	.sleb128 93
	.uleb128 0x1a
	.long	.LASF278
	.sleb128 94
	.uleb128 0x1a
	.long	.LASF279
	.sleb128 95
	.uleb128 0x1a
	.long	.LASF280
	.sleb128 96
	.uleb128 0x1a
	.long	.LASF281
	.sleb128 97
	.uleb128 0x1a
	.long	.LASF282
	.sleb128 98
	.uleb128 0x1a
	.long	.LASF283
	.sleb128 99
	.uleb128 0x1a
	.long	.LASF284
	.sleb128 100
	.uleb128 0x1a
	.long	.LASF285
	.sleb128 101
	.uleb128 0x1a
	.long	.LASF286
	.sleb128 102
	.uleb128 0x1a
	.long	.LASF287
	.sleb128 103
	.uleb128 0x1a
	.long	.LASF288
	.sleb128 104
	.uleb128 0x1a
	.long	.LASF289
	.sleb128 105
	.uleb128 0x1a
	.long	.LASF290
	.sleb128 106
	.uleb128 0x1a
	.long	.LASF291
	.sleb128 107
	.byte	0x0
	.uleb128 0x1b
	.long	0x1124
	.long	.LASF292
	.byte	0x4
	.byte	0x3
	.value	0x132
	.uleb128 0x1a
	.long	.LASF293
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF294
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF295
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF296
	.sleb128 3
	.byte	0x0
	.uleb128 0xd
	.long	0x11c8
	.long	.LASF297
	.byte	0x30
	.byte	0x3
	.value	0x13c
	.uleb128 0xe
	.long	.LASF298
	.byte	0x3
	.value	0x13d
	.long	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF299
	.byte	0x3
	.value	0x13e
	.long	0xd20
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF300
	.byte	0x3
	.value	0x13f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF301
	.byte	0x3
	.value	0x140
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	.LASF302
	.byte	0x3
	.value	0x141
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	.LASF303
	.byte	0x3
	.value	0x142
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.long	.LASF304
	.byte	0x3
	.value	0x143
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF305
	.byte	0x3
	.value	0x144
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xe
	.long	.LASF306
	.byte	0x3
	.value	0x145
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.long	.LASF307
	.byte	0x3
	.value	0x146
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.long	.LASF308
	.byte	0x3
	.value	0x147
	.long	0x11d4
	.uleb128 0x12
	.byte	0x8
	.long	0x1124
	.uleb128 0xd
	.long	0x12ba
	.long	.LASF309
	.byte	0x38
	.byte	0x3
	.value	0x14a
	.uleb128 0xe
	.long	.LASF298
	.byte	0x3
	.value	0x14b
	.long	0x10fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"reg"
	.byte	0x3
	.value	0x14c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF310
	.byte	0x3
	.value	0x14d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF311
	.byte	0x3
	.value	0x14e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF312
	.byte	0x3
	.value	0x14f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF313
	.byte	0x3
	.value	0x150
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	.LASF314
	.byte	0x3
	.value	0x151
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	.LASF315
	.byte	0x3
	.value	0x152
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.long	.LASF316
	.byte	0x3
	.value	0x153
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF317
	.byte	0x3
	.value	0x154
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.long	.LASF318
	.byte	0x3
	.value	0x155
	.long	0xe0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.long	.LASF319
	.byte	0x3
	.value	0x156
	.long	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.long	.LASF320
	.byte	0x3
	.value	0x157
	.long	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.long	.LASF39
	.byte	0x3
	.value	0x158
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0xc
	.long	.LASF321
	.byte	0x3
	.value	0x159
	.long	0x11da
	.uleb128 0xd
	.long	0x1416
	.long	.LASF322
	.byte	0xe8
	.byte	0x3
	.value	0x15c
	.uleb128 0xe
	.long	.LASF323
	.byte	0x3
	.value	0x15d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF298
	.byte	0x3
	.value	0x15e
	.long	0xe3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.long	.LASF324
	.byte	0x3
	.value	0x15f
	.long	0xe24
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF325
	.byte	0x3
	.value	0x160
	.long	0xe03
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF303
	.byte	0x3
	.value	0x161
	.long	0xe03
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x15
	.string	"sib"
	.byte	0x3
	.value	0x162
	.long	0xe03
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.long	.LASF326
	.byte	0x3
	.value	0x163
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.long	.LASF327
	.byte	0x3
	.value	0x164
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.long	.LASF328
	.byte	0x3
	.value	0x165
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.long	.LASF313
	.byte	0x3
	.value	0x166
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.long	.LASF315
	.byte	0x3
	.value	0x167
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.long	.LASF317
	.byte	0x3
	.value	0x168
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.string	"op1"
	.byte	0x3
	.value	0x169
	.long	0x12ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.string	"op2"
	.byte	0x3
	.value	0x16a
	.long	0x12ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.string	"op3"
	.byte	0x3
	.value	0x16b
	.long	0x12ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.string	"ptr"
	.byte	0x3
	.value	0x16c
	.long	0x11c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x3
	.value	0x16d
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.long	.LASF304
	.byte	0x3
	.value	0x16e
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.long	.LASF305
	.byte	0x3
	.value	0x16f
	.long	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xde
	.uleb128 0xe
	.long	.LASF306
	.byte	0x3
	.value	0x170
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.long	.LASF307
	.byte	0x3
	.value	0x171
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF329
	.byte	0x3
	.value	0x172
	.long	0x12c6
	.uleb128 0x1c
	.long	0x147b
	.byte	0x1
	.long	.LASF341
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	0x3b
	.quad	.LFB286
	.quad	.LFE286
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"eip"
	.byte	0x1
	.byte	0x6
	.long	0x129
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF330
	.byte	0x1
	.byte	0x6
	.long	0x34
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF331
	.byte	0x1
	.byte	0x8
	.long	0x1416
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.byte	0xa
	.long	0x3b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.string	"env"
	.byte	0x5
	.byte	0x21
	.long	0x1488
	.byte	0x1
	.byte	0x5e
	.uleb128 0x12
	.byte	0x8
	.long	0x615
	.uleb128 0x20
	.string	"T0"
	.byte	0x5
	.byte	0x2f
	.long	0x129
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.string	"T1"
	.byte	0x5
	.byte	0x31
	.long	0x129
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"T2"
	.byte	0x5
	.byte	0x33
	.long	0x129
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF332
	.byte	0x10
	.value	0x24d
	.long	0x14c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0x3ac
	.uleb128 0x21
	.long	.LASF333
	.byte	0x10
	.value	0x24e
	.long	0xd59
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF334
	.byte	0x10
	.value	0x32c
	.long	0x14e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x8
	.long	0xd4d
	.uleb128 0x22
	.long	.LASF335
	.byte	0x11
	.byte	0x26
	.long	0xd5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF336
	.byte	0x10
	.value	0x376
	.long	0xd5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x150e
	.long	0xdc9
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x22
	.long	.LASF337
	.byte	0x5
	.byte	0xad
	.long	0x1503
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x28
	.value	0x2
	.long	.Ldebug_info0
	.long	0x151c
	.long	0x1422
	.string	"get_current_instr_len"
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
.LASF100:
	.string	"sse_status"
.LASF226:
	.string	"INSTRUCTION_TYPE_CALL"
.LASF280:
	.string	"INSTRUCTION_TYPE_FICOM"
.LASF108:
	.string	"efer"
.LASF92:
	.string	"prev_fpip"
.LASF290:
	.string	"INSTRUCTION_TYPE_OTHER"
.LASF102:
	.string	"xmm_regs"
.LASF18:
	.string	"__jmp_buf_tag"
.LASF304:
	.string	"eflags_affected"
.LASF193:
	.string	"INSTRUCTION_TYPE_INC"
.LASF340:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF7:
	.string	"int32_t"
.LASF326:
	.string	"modrm_offset"
.LASF229:
	.string	"INSTRUCTION_TYPE_INT"
.LASF95:
	.string	"fpuc"
.LASF206:
	.string	"INSTRUCTION_TYPE_SHX"
.LASF96:
	.string	"fptags"
.LASF29:
	.string	"floatx80"
.LASF94:
	.string	"fpus"
.LASF168:
	.string	"APICState"
.LASF51:
	.string	"running"
.LASF208:
	.string	"INSTRUCTION_TYPE_MUL"
.LASF101:
	.string	"mxcsr"
.LASF197:
	.string	"INSTRUCTION_TYPE_NOT"
.LASF187:
	.string	"INSTRUCTION_TYPE_MOVSR"
.LASF34:
	.string	"CPU86_LDouble"
.LASF203:
	.string	"INSTRUCTION_TYPE_MOVSX"
.LASF258:
	.string	"INSTRUCTION_TYPE_FDIVP"
.LASF118:
	.string	"jmp_env"
.LASF190:
	.string	"INSTRUCTION_TYPE_ADC"
.LASF109:
	.string	"star"
.LASF211:
	.string	"INSTRUCTION_TYPE_XOR"
.LASF218:
	.string	"INSTRUCTION_TYPE_OR"
.LASF76:
	.string	"vaddr"
.LASF199:
	.string	"INSTRUCTION_TYPE_STOS"
.LASF263:
	.string	"INSTRUCTION_TYPE_FCOM"
.LASF271:
	.string	"INSTRUCTION_TYPE_FUCOMI"
.LASF269:
	.string	"INSTRUCTION_TYPE_FUCOMP"
.LASF163:
	.string	"page_addr"
.LASF261:
	.string	"INSTRUCTION_TYPE_FIDIV"
.LASF257:
	.string	"INSTRUCTION_TYPE_FDIV"
.LASF112:
	.string	"intercept"
.LASF88:
	.string	"hflags"
.LASF63:
	.string	"logged"
.LASF239:
	.string	"INSTRUCTION_TYPE_SLDT"
.LASF177:
	.string	"BYTE"
.LASF98:
	.string	"fp_status"
.LASF23:
	.string	"addend"
.LASF299:
	.string	"mnemonic"
.LASF330:
	.string	"phys_pc"
.LASF129:
	.string	"mem_write_vaddr"
.LASF341:
	.string	"get_current_instr_len"
.LASF8:
	.string	"FILE"
.LASF0:
	.string	"long int"
.LASF148:
	.string	"cpuid_ext_features"
.LASF221:
	.string	"INSTRUCTION_TYPE_JMPC"
.LASF296:
	.string	"OPERAND_TYPE_IMMEDIATE"
.LASF22:
	.string	"addr_code"
.LASF48:
	.string	"netidx"
.LASF140:
	.string	"opaque"
.LASF3:
	.string	"short unsigned int"
.LASF77:
	.string	"CPUX86State"
.LASF127:
	.string	"current_tb"
.LASF111:
	.string	"vm_vmcb"
.LASF55:
	.string	"instruction_stage"
.LASF311:
	.string	"indexreg"
.LASF135:
	.string	"watchpoint"
.LASF339:
	.string	"/home/remco/Projects/Argos/src/target-i386/argos-shellcode.c"
.LASF200:
	.string	"INSTRUCTION_TYPE_LODS"
.LASF144:
	.string	"cpuid_vendor2"
.LASF145:
	.string	"cpuid_vendor3"
.LASF156:
	.string	"TranslationBlock"
.LASF73:
	.string	"store_addr_type"
.LASF5:
	.string	"signed char"
.LASF279:
	.string	"INSTRUCTION_TYPE_FILD"
.LASF297:
	.string	"_INST"
.LASF201:
	.string	"INSTRUCTION_TYPE_SCAS"
.LASF259:
	.string	"INSTRUCTION_TYPE_FDIVR"
.LASF289:
	.string	"INSTRUCTION_TYPE_SSE"
.LASF327:
	.string	"extindex"
.LASF65:
	.string	"load_value"
.LASF122:
	.string	"exception_next_eip"
.LASF2:
	.string	"unsigned char"
.LASF223:
	.string	"INSTRUCTION_TYPE_SETC"
.LASF66:
	.string	"load_value_netidx"
.LASF268:
	.string	"INSTRUCTION_TYPE_FUCOM"
.LASF49:
	.string	"argos_rtag_t"
.LASF150:
	.string	"cpuid_model"
.LASF334:
	.string	"cpu_single_env"
.LASF46:
	.string	"argos_rtag"
.LASF70:
	.string	"store_value"
.LASF61:
	.string	"instruction"
.LASF170:
	.string	"compute_all"
.LASF157:
	.string	"cs_base"
.LASF291:
	.string	"INSTRUCTION_TYPE_PRIV"
.LASF89:
	.string	"segs"
.LASF152:
	.string	"cpuid_ext3_features"
.LASF26:
	.string	"char"
.LASF85:
	.string	"cc_src"
.LASF149:
	.string	"cpuid_xlevel"
.LASF126:
	.string	"old_exception"
.LASF191:
	.string	"INSTRUCTION_TYPE_SUB"
.LASF81:
	.string	"t1tag"
.LASF224:
	.string	"INSTRUCTION_TYPE_MOVC"
.LASF277:
	.string	"INSTRUCTION_TYPE_FISTTP"
.LASF86:
	.string	"cc_dst"
.LASF68:
	.string	"load_addr_type"
.LASF110:
	.string	"vm_hsave"
.LASF160:
	.string	"tc_ptr"
.LASF39:
	.string	"flags"
.LASF25:
	.string	"double"
.LASF57:
	.string	"is_system_call"
.LASF132:
	.string	"breakpoints"
.LASF204:
	.string	"INSTRUCTION_TYPE_MOVZX"
.LASF320:
	.string	"immediate"
.LASF130:
	.string	"tlb_table"
.LASF321:
	.string	"OPERAND"
.LASF71:
	.string	"store_value_netidx"
.LASF173:
	.string	"u_int8_t"
.LASF245:
	.string	"INSTRUCTION_TYPE_FADD"
.LASF43:
	.string	"argos_netidx_t"
.LASF124:
	.string	"interrupt_request"
.LASF212:
	.string	"INSTRUCTION_TYPE_LEA"
.LASF285:
	.string	"INSTRUCTION_TYPE_SYSENTER"
.LASF153:
	.string	"cpuid_apic_id"
.LASF38:
	.string	"limit"
.LASF260:
	.string	"INSTRUCTION_TYPE_FDIVRP"
.LASF282:
	.string	"INSTRUCTION_TYPE_FFREE"
.LASF270:
	.string	"INSTRUCTION_TYPE_FUCOMPP"
.LASF69:
	.string	"load_size"
.LASF278:
	.string	"INSTRUCTION_TYPE_FLD"
.LASF184:
	.string	"INSTRUCTION_TYPE_ASC"
.LASF286:
	.string	"INSTRUCTION_TYPE_FPU_CTRL"
.LASF47:
	.string	"origin"
.LASF171:
	.string	"compute_c"
.LASF64:
	.string	"instruction_netidx"
.LASF188:
	.string	"INSTRUCTION_TYPE_ADD"
.LASF240:
	.string	"INSTRUCTION_TYPE_LFP"
.LASF93:
	.string	"fpstt"
.LASF165:
	.string	"tb_next"
.LASF256:
	.string	"INSTRUCTION_TYPE_FIMUL"
.LASF128:
	.string	"mem_write_pc"
.LASF159:
	.string	"cflags"
.LASF247:
	.string	"INSTRUCTION_TYPE_FIADD"
.LASF53:
	.string	"logfile"
.LASF1:
	.string	"long unsigned int"
.LASF58:
	.string	"loadedby_eip"
.LASF236:
	.string	"INSTRUCTION_TYPE_BSWAP"
.LASF217:
	.string	"INSTRUCTION_TYPE_AND"
.LASF318:
	.string	"section"
.LASF267:
	.string	"INSTRUCTION_TYPE_FCOMIP"
.LASF319:
	.string	"displacement"
.LASF249:
	.string	"INSTRUCTION_TYPE_FSUBP"
.LASF251:
	.string	"INSTRUCTION_TYPE_FSUBR"
.LASF202:
	.string	"INSTRUCTION_TYPE_MOVS"
.LASF306:
	.string	"iop_written"
.LASF167:
	.string	"jmp_first"
.LASF40:
	.string	"XMMReg"
.LASF275:
	.string	"INSTRUCTION_TYPE_FIST"
.LASF105:
	.string	"sysenter_cs"
.LASF151:
	.string	"cpuid_ext2_features"
.LASF123:
	.string	"smbase"
.LASF117:
	.string	"intercept_exceptions"
.LASF33:
	.string	"floatx80_rounding_precision"
.LASF313:
	.string	"dispbytes"
.LASF13:
	.string	"__mask_was_saved"
.LASF84:
	.string	"shellcode_context"
.LASF125:
	.string	"user_mode_only"
.LASF254:
	.string	"INSTRUCTION_TYPE_FMUL"
.LASF161:
	.string	"phys_hash_next"
.LASF294:
	.string	"OPERAND_TYPE_MEMORY"
.LASF50:
	.string	"argos_shellcode_context_s"
.LASF219:
	.string	"INSTRUCTION_TYPE_POP"
.LASF104:
	.string	"mmx_t0"
.LASF274:
	.string	"INSTRUCTION_TYPE_FSTP"
.LASF266:
	.string	"INSTRUCTION_TYPE_FCOMI"
.LASF176:
	.string	"long long int"
.LASF264:
	.string	"INSTRUCTION_TYPE_FCOMP"
.LASF287:
	.string	"INSTRUCTION_TYPE_FPU"
.LASF196:
	.string	"INSTRUCTION_TYPE_IDIV"
.LASF79:
	.string	"eflags"
.LASF248:
	.string	"INSTRUCTION_TYPE_FSUB"
.LASF238:
	.string	"INSTRUCTION_TYPE_SIDT"
.LASF90:
	.string	"a20_mask"
.LASF20:
	.string	"addr_read"
.LASF308:
	.string	"PINST"
.LASF162:
	.string	"page_next"
.LASF67:
	.string	"load_addr"
.LASF210:
	.string	"INSTRUCTION_TYPE_EIMUL"
.LASF32:
	.string	"float_rounding_mode"
.LASF295:
	.string	"OPERAND_TYPE_REGISTER"
.LASF141:
	.string	"cpu_model_str"
.LASF243:
	.string	"INSTRUCTION_TYPE_XLAT"
.LASF225:
	.string	"INSTRUCTION_TYPE_LOOP"
.LASF74:
	.string	"store_size"
.LASF227:
	.string	"INSTRUCTION_TYPE_RET"
.LASF262:
	.string	"INSTRUCTION_TYPE_FIDIVR"
.LASF338:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF276:
	.string	"INSTRUCTION_TYPE_FISTP"
.LASF28:
	.string	"float64"
.LASF137:
	.string	"watchpoint_hit"
.LASF131:
	.string	"tb_jmp_cache"
.LASF6:
	.string	"short int"
.LASF4:
	.string	"unsigned int"
.LASF59:
	.string	"storedby_eip"
.LASF273:
	.string	"INSTRUCTION_TYPE_FST"
.LASF155:
	.string	"apic_state"
.LASF336:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"float_status"
.LASF178:
	.string	"WORD"
.LASF14:
	.string	"__saved_mask"
.LASF174:
	.string	"u_int16_t"
.LASF12:
	.string	"__jmpbuf"
.LASF139:
	.string	"cpu_index"
.LASF9:
	.string	"__jmp_buf"
.LASF44:
	.string	"argos_bytemap_t"
.LASF179:
	.string	"DWORD"
.LASF220:
	.string	"INSTRUCTION_TYPE_JMP"
.LASF298:
	.string	"type"
.LASF181:
	.string	"MODE_16"
.LASF136:
	.string	"nb_watchpoints"
.LASF17:
	.string	"target_phys_addr_t"
.LASF205:
	.string	"INSTRUCTION_TYPE_CMPS"
.LASF107:
	.string	"sysenter_eip"
.LASF30:
	.string	"long double"
.LASF192:
	.string	"INSTRUCTION_TYPE_SBB"
.LASF230:
	.string	"INSTRUCTION_TYPE_BT"
.LASF265:
	.string	"INSTRUCTION_TYPE_FCOMPP"
.LASF182:
	.string	"Mode"
.LASF337:
	.string	"cc_table"
.LASF185:
	.string	"INSTRUCTION_TYPE_DCL"
.LASF183:
	.string	"Instruction"
.LASF300:
	.string	"flags1"
.LASF302:
	.string	"flags3"
.LASF147:
	.string	"cpuid_features"
.LASF332:
	.string	"argos_memmap"
.LASF113:
	.string	"intercept_cr_read"
.LASF164:
	.string	"tb_next_offset"
.LASF158:
	.string	"size"
.LASF56:
	.string	"trace_stage"
.LASF172:
	.string	"long long unsigned int"
.LASF325:
	.string	"opcode"
.LASF301:
	.string	"flags2"
.LASF323:
	.string	"length"
.LASF303:
	.string	"modrm"
.LASF99:
	.string	"fp_convert"
.LASF15:
	.string	"jmp_buf"
.LASF305:
	.string	"eflags_used"
.LASF215:
	.string	"INSTRUCTION_TYPE_TEST"
.LASF198:
	.string	"INSTRUCTION_TYPE_NEG"
.LASF87:
	.string	"cc_op"
.LASF138:
	.string	"next_cpu"
.LASF27:
	.string	"float32"
.LASF19:
	.string	"CPUTLBEntry"
.LASF242:
	.string	"INSTRUCTION_TYPE_STD"
.LASF255:
	.string	"INSTRUCTION_TYPE_FMULP"
.LASF314:
	.string	"dispoffset"
.LASF194:
	.string	"INSTRUCTION_TYPE_DEC"
.LASF283:
	.string	"INSTRUCTION_TYPE_FFREEP"
.LASF115:
	.string	"intercept_dr_read"
.LASF72:
	.string	"store_addr"
.LASF120:
	.string	"error_code"
.LASF54:
	.string	"instruction_cnt"
.LASF292:
	.string	"Operand"
.LASF241:
	.string	"INSTRUCTION_TYPE_CLD"
.LASF78:
	.string	"regs"
.LASF316:
	.string	"immoffset"
.LASF333:
	.string	"argos_clean_tag"
.LASF116:
	.string	"intercept_dr_write"
.LASF80:
	.string	"t0tag"
.LASF169:
	.string	"CCTable"
.LASF52:
	.string	"stop_condition"
.LASF82:
	.string	"t2tag"
.LASF234:
	.string	"INSTRUCTION_TYPE_BSF"
.LASF312:
	.string	"scale"
.LASF235:
	.string	"INSTRUCTION_TYPE_BSR"
.LASF180:
	.string	"MODE_32"
.LASF214:
	.string	"INSTRUCTION_TYPE_CMP"
.LASF16:
	.string	"target_ulong"
.LASF288:
	.string	"INSTRUCTION_TYPE_MMX"
.LASF114:
	.string	"intercept_cr_write"
.LASF233:
	.string	"INSTRUCTION_TYPE_BTC"
.LASF21:
	.string	"addr_write"
.LASF175:
	.string	"u_int32_t"
.LASF324:
	.string	"mode"
.LASF232:
	.string	"INSTRUCTION_TYPE_BTR"
.LASF209:
	.string	"INSTRUCTION_TYPE_IMUL"
.LASF143:
	.string	"cpuid_vendor1"
.LASF35:
	.string	"SegmentCache"
.LASF222:
	.string	"INSTRUCTION_TYPE_JECXZ"
.LASF328:
	.string	"fpuindex"
.LASF41:
	.string	"MMXReg"
.LASF121:
	.string	"exception_is_int"
.LASF335:
	.string	"phys_ram_base"
.LASF97:
	.string	"fpregs"
.LASF231:
	.string	"INSTRUCTION_TYPE_BTS"
.LASF45:
	.string	"argos_memmap_t"
.LASF315:
	.string	"immbytes"
.LASF11:
	.string	"__val"
.LASF293:
	.string	"OPERAND_TYPE_NONE"
.LASF133:
	.string	"nb_breakpoints"
.LASF91:
	.string	"fpip"
.LASF195:
	.string	"INSTRUCTION_TYPE_DIV"
.LASF307:
	.string	"iop_read"
.LASF62:
	.string	"instruction_size"
.LASF146:
	.string	"cpuid_version"
.LASF186:
	.string	"INSTRUCTION_TYPE_MOV"
.LASF83:
	.string	"regtags"
.LASF207:
	.string	"INSTRUCTION_TYPE_ROX"
.LASF310:
	.string	"basereg"
.LASF272:
	.string	"INSTRUCTION_TYPE_FUCOMIP"
.LASF317:
	.string	"sectionbytes"
.LASF253:
	.string	"INSTRUCTION_TYPE_FISUBR"
.LASF331:
	.string	"instr"
.LASF329:
	.string	"INSTRUCTION"
.LASF216:
	.string	"INSTRUCTION_TYPE_PUSH"
.LASF119:
	.string	"exception_index"
.LASF24:
	.string	"float"
.LASF244:
	.string	"INSTRUCTION_TYPE_FCMOVC"
.LASF60:
	.string	"executed_eip"
.LASF37:
	.string	"base"
.LASF284:
	.string	"INSTRUCTION_TYPE_FXCH"
.LASF237:
	.string	"INSTRUCTION_TYPE_SGDT"
.LASF252:
	.string	"INSTRUCTION_TYPE_FSUBRP"
.LASF189:
	.string	"INSTRUCTION_TYPE_XADD"
.LASF36:
	.string	"selector"
.LASF228:
	.string	"INSTRUCTION_TYPE_ENTER"
.LASF42:
	.string	"argos_paddr_t"
.LASF250:
	.string	"INSTRUCTION_TYPE_FISUB"
.LASF213:
	.string	"INSTRUCTION_TYPE_XCHG"
.LASF322:
	.string	"_INSTRUCTION"
.LASF75:
	.string	"argos_shellcode_context_t"
.LASF281:
	.string	"INSTRUCTION_TYPE_FICOMP"
.LASF106:
	.string	"sysenter_esp"
.LASF142:
	.string	"cpuid_level"
.LASF246:
	.string	"INSTRUCTION_TYPE_FADDP"
.LASF154:
	.string	"envmap"
.LASF10:
	.string	"__sigset_t"
.LASF166:
	.string	"jmp_next"
.LASF134:
	.string	"singlestep_enabled"
.LASF309:
	.string	"_OPERAND"
.LASF103:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
