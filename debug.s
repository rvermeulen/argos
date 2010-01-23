	.file	"debug.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl slirp_debug
	.bss
	.align 4
	.type	slirp_debug, @object
	.size	slirp_debug, 4
slirp_debug:
	.zero	4
.globl dostats
	.align 4
	.type	dostats, @object
	.size	dostats, 4
dostats:
	.zero	4
.globl dfd
	.align 8
	.type	dfd, @object
	.size	dfd, 8
dfd:
	.zero	8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"SLIRP statistics code not compiled.\n"
	.text
	.p2align 4,,15
.globl slirp_stats
	.type	slirp_stats, @function
slirp_stats:
.LFB47:
	.file 1 "slirp/debug.c"
	.loc 1 384 0
	.loc 1 393 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	jmp	lprint
.LFE47:
	.size	slirp_stats, .-slirp_stats
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.align 8
.LEFDE1:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x36c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x4
	.byte	0x8d
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x4
	.byte	0x8e
	.long	0x5e
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x2
	.long	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF10
	.byte	0x5
	.byte	0xd5
	.long	0x42
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF12
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x31
	.long	0xb5
	.uleb128 0x7
	.long	0x281
	.long	.LASF44
	.byte	0xd8
	.byte	0x2
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.value	0x110
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.value	0x115
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.value	0x116
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.value	0x117
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.value	0x118
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.value	0x119
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.value	0x11a
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.value	0x11b
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x3
	.value	0x11c
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.value	0x11e
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.value	0x11f
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x3
	.value	0x120
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x3
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x3
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x3
	.value	0x126
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x3
	.value	0x12a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.value	0x12c
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.value	0x130
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x3
	.value	0x131
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x3
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x3
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.value	0x13f
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.value	0x148
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.value	0x149
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x3
	.value	0x14a
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x3
	.value	0x14b
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x3
	.value	0x14c
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x3
	.value	0x14e
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x3
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x3
	.byte	0xb4
	.uleb128 0x7
	.long	0x2bf
	.long	.LASF45
	.byte	0x18
	.byte	0x3
	.byte	0xba
	.uleb128 0xa
	.long	.LASF46
	.byte	0x3
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x3
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x3
	.byte	0xc0
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x288
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x2db
	.long	0x8a
	.uleb128 0xc
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x281
	.uleb128 0xb
	.long	0x2f1
	.long	0x8a
	.uleb128 0xc
	.long	0x7b
	.byte	0x13
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.value	0x180
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0xe
	.long	.LASF49
	.byte	0x2
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	.LASF50
	.byte	0x2
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"dfd"
	.byte	0x1
	.byte	0xb
	.long	0x33d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dfd
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0xf
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dostats
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x11
	.long	0x57
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	slirp_debug
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
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.long	0x42
	.value	0x2
	.long	.Ldebug_info0
	.long	0x370
	.long	0x2f1
	.string	"slirp_stats"
	.long	0x327
	.string	"dfd"
	.long	0x343
	.string	"dostats"
	.long	0x359
	.string	"slirp_debug"
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
.LASF10:
	.string	"size_t"
.LASF55:
	.string	"/home/remco/Projects/Argos/src"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF23:
	.string	"_IO_save_base"
.LASF27:
	.string	"_chain"
.LASF31:
	.string	"_cur_column"
.LASF52:
	.string	"slirp_debug"
.LASF6:
	.string	"long int"
.LASF45:
	.string	"_IO_marker"
.LASF4:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF0:
	.string	"unsigned char"
.LASF43:
	.string	"_IO_lock_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF48:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF54:
	.string	"slirp/debug.c"
.LASF35:
	.string	"_offset"
.LASF3:
	.string	"long unsigned int"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stdin"
.LASF30:
	.string	"_old_offset"
.LASF12:
	.string	"long long int"
.LASF20:
	.string	"_IO_write_end"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF2:
	.string	"unsigned int"
.LASF53:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
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
.LASF14:
	.string	"_flags"
.LASF56:
	.string	"slirp_stats"
.LASF41:
	.string	"_mode"
.LASF9:
	.string	"char"
.LASF13:
	.string	"FILE"
.LASF11:
	.string	"long long unsigned int"
.LASF7:
	.string	"__off_t"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF8:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_buf_end"
.LASF51:
	.string	"dostats"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF16:
	.string	"_IO_read_end"
.LASF28:
	.string	"_fileno"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"stdout"
.LASF19:
	.string	"_IO_write_ptr"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
