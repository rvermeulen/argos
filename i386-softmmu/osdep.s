	.file	"osdep.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl get_mmap_addr
	.type	get_mmap_addr, @function
get_mmap_addr:
.LFB183:
	.file 1 "/home/remco/Projects/Argos/src/osdep.c"
	.loc 1 49 0
	.loc 1 51 0
	xorl	%eax, %eax
	ret
.LFE183:
	.size	get_mmap_addr, .-get_mmap_addr
	.p2align 4,,15
.globl qemu_free
	.type	qemu_free, @function
qemu_free:
.LFB184:
	.loc 1 54 0
	.loc 1 55 0
	jmp	free
.LFE184:
	.size	qemu_free, .-qemu_free
	.p2align 4,,15
.globl qemu_malloc
	.type	qemu_malloc, @function
qemu_malloc:
.LFB185:
	.loc 1 59 0
	.loc 1 60 0
	jmp	malloc
.LFE185:
	.size	qemu_malloc, .-qemu_malloc
	.p2align 4,,15
.globl qemu_memalign
	.type	qemu_memalign, @function
qemu_memalign:
.LFB186:
	.loc 1 180 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 184 0
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rsp, %rdi
	call	posix_memalign
	movl	%eax, %edx
	.loc 1 186 0
	xorl	%eax, %eax
	testl	%edx, %edx
	cmove	(%rsp), %rax
	.loc 1 193 0
	addq	$8, %rsp
	ret
.LFE186:
	.size	qemu_memalign, .-qemu_memalign
	.p2align 4,,15
.globl qemu_vmalloc
	.type	qemu_vmalloc, @function
qemu_vmalloc:
.LFB187:
	.loc 1 197 0
	.loc 1 205 0
	movq	%rdi, %rsi
	movl	$4096, %edi
	jmp	memalign
.LFE187:
	.size	qemu_vmalloc, .-qemu_vmalloc
	.p2align 4,,15
.globl qemu_vfree
	.type	qemu_vfree, @function
qemu_vfree:
.LFB188:
	.loc 1 210 0
	.loc 1 215 0
	jmp	free
.LFE188:
	.size	qemu_vfree, .-qemu_vfree
	.p2align 4,,15
.globl qemu_mallocz
	.type	qemu_mallocz, @function
qemu_mallocz:
.LFB189:
	.loc 1 221 0
	movq	%rbx, -16(%rsp)
.LCFI1:
	movq	%rbp, -8(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 1 221 0
	movq	%rdi, %rbp
	.loc 1 223 0
	call	qemu_malloc
	movq	%rax, %rbx
	.loc 1 225 0
	xorl	%eax, %eax
	.loc 1 224 0
	testq	%rbx, %rbx
	je	.L8
	.loc 1 226 0
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset
	.loc 1 227 0
	movq	%rbx, %rax
.L8:
	.loc 1 228 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE189:
	.size	qemu_mallocz, .-qemu_mallocz
	.p2align 4,,15
.globl qemu_strdup
	.type	qemu_strdup, @function
qemu_strdup:
.LFB190:
	.loc 1 231 0
	movq	%rbx, -16(%rsp)
.LCFI4:
	movq	%rbp, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 1 231 0
	movq	%rdi, %rbp
	.loc 1 233 0
	call	strlen
	leaq	1(%rax), %rdi
	call	qemu_malloc
	movq	%rax, %rbx
	.loc 1 235 0
	xorl	%eax, %eax
	.loc 1 234 0
	testq	%rbx, %rbx
	je	.L11
	.loc 1 236 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	strcpy
	.loc 1 237 0
	movq	%rbx, %rax
.L11:
	.loc 1 238 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE190:
	.size	qemu_strdup, .-qemu_strdup
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld\n"
	.text
	.p2align 4,,15
.globl qemu_create_pidfile
	.type	qemu_create_pidfile, @function
qemu_create_pidfile:
.LFB191:
	.loc 1 241 0
	movq	%r12, -8(%rsp)
.LCFI7:
	movq	%rbx, -24(%rsp)
.LCFI8:
	.loc 1 247 0
	xorl	%eax, %eax
	.loc 1 241 0
	movq	%rbp, -16(%rsp)
.LCFI9:
	.loc 1 247 0
	movl	$384, %edx
	.loc 1 241 0
	subq	$152, %rsp
.LCFI10:
	.loc 1 247 0
	movl	$66, %esi
	call	open64
	movl	%eax, %r12d
	.loc 1 248 0
	cmpl	$-1, %r12d
	je	.L13
	.loc 1 251 0
	xorl	%edx, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	lockf64
	cmpl	$-1, %eax
	je	.L13
	.loc 1 254 0
	call	getpid
	movl	$.LC0, %edx
	movslq	%eax,%rcx
	movl	$128, %esi
	movq	%rsp, %rdi
	xorl	%eax, %eax
	call	snprintf
	.loc 1 255 0
	movslq	%eax,%rbp
	movq	%rsp, %rsi
	movl	%r12d, %edi
	movq	%rbp, %rdx
	call	write
	.loc 1 256 0
	cmpq	%rbp, %rax
	sete	%al
	movzbl	%al, %eax
	decl	%eax
.L13:
	.loc 1 285 0
	movq	128(%rsp), %rbx
	movq	136(%rsp), %rbp
	movq	144(%rsp), %r12
	addq	$152, %rsp
	ret
.LFE191:
	.size	qemu_create_pidfile, .-qemu_create_pidfile
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
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
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB186
	.quad	.LFE186-.LFB186
	.byte	0x4
	.long	.LCFI0-.LFB186
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB187
	.quad	.LFE187-.LFB187
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB189
	.quad	.LFE189-.LFB189
	.byte	0x4
	.long	.LCFI3-.LFB189
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB190
	.quad	.LFE190-.LFB190
	.byte	0x4
	.long	.LCFI6-.LFB190
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.byte	0x4
	.long	.LCFI10-.LFB191
	.byte	0xe
	.uleb128 0xa0
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE16:
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
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB186
	.quad	.LFE186-.LFB186
	.byte	0x4
	.long	.LCFI0-.LFB186
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB187
	.quad	.LFE187-.LFB187
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB189
	.quad	.LFE189-.LFB189
	.byte	0x4
	.long	.LCFI3-.LFB189
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB190
	.quad	.LFE190-.LFB190
	.byte	0x4
	.long	.LCFI6-.LFB190
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.byte	0x4
	.long	.LCFI10-.LFB191
	.byte	0xe
	.uleb128 0xa0
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE17:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "../cpu-all.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "/home/remco/Projects/Argos/src/sysemu.h"
	.file 9 "/home/remco/Projects/Argos/src/qemu-common.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x641
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF82
	.byte	0x1
	.long	.LASF83
	.long	.LASF84
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
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
	.byte	0x8
	.long	0x6f
	.uleb128 0x6
	.long	0x74
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
	.byte	0x5
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x281
	.long	.LASF43
	.byte	0xd8
	.byte	0x3
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x4
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x4
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x288
	.uleb128 0x5
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0x2db
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.long	0x2f1
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x31
	.long	0x7b
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
	.byte	0x9
	.byte	0x6e
	.long	0x31c
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.uleb128 0xf
	.long	0x34f
	.byte	0x4
	.byte	0x8
	.byte	0x77
	.uleb128 0x10
	.long	.LASF53
	.sleb128 0
	.uleb128 0x10
	.long	.LASF54
	.sleb128 1
	.uleb128 0x10
	.long	.LASF55
	.sleb128 2
	.uleb128 0x10
	.long	.LASF56
	.sleb128 3
	.uleb128 0x10
	.long	.LASF57
	.sleb128 4
	.uleb128 0x10
	.long	.LASF58
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x8
	.byte	0x79
	.long	0x322
	.uleb128 0x8
	.long	0x39f
	.long	.LASF60
	.byte	0x18
	.byte	0x8
	.byte	0x7b
	.uleb128 0xb
	.long	.LASF61
	.byte	0x8
	.byte	0x7c
	.long	0x39f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x8
	.byte	0x7d
	.long	0x34f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"bus"
	.byte	0x8
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF63
	.byte	0x8
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x311
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x80
	.long	0x35a
	.uleb128 0x12
	.long	0x3e1
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	0xa6
	.quad	.LFB183
	.quad	.LFE183
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x30
	.long	0x38
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x14
	.long	0x40e
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.quad	.LFB184
	.quad	.LFE184
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x35
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x12
	.long	0x43f
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	0xa6
	.quad	.LFB185
	.quad	.LFE185
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x12
	.long	0x498
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0xa6
	.quad	.LFB186
	.quad	.LFE186
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0xb3
	.long	0x2d
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0xb3
	.long	0x2d
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xb6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xb7
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0x4c9
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0xa6
	.quad	.LFB187
	.quad	.LFE187
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0xc4
	.long	0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x14
	.long	0x4f6
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.quad	.LFB188
	.quad	.LFE188
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0xd1
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x12
	.long	0x534
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0xa6
	.quad	.LFB189
	.quad	.LFE189
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xde
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x12
	.long	0x572
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.long	0xa8
	.quad	.LFB190
	.quad	.LFE190
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"str"
	.byte	0x1
	.byte	0xe6
	.long	0x69
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xe8
	.long	0xa8
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x12
	.long	0x5ca
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	0x3f
	.quad	.LFB191
	.quad	.LFE191
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0xf0
	.long	0x69
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.byte	0xf2
	.long	0x5ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xf3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0xc
	.long	0x5da
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x18
	.long	.LASF77
	.byte	0x3
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF78
	.byte	0x3
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF79
	.byte	0x6
	.value	0x376
	.long	0x602
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x2f1
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x8
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xc
	.long	0x62e
	.long	0x3a5
	.uleb128 0xd
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x8
	.byte	0x87
	.long	0x61e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xc8
	.value	0x2
	.long	.Ldebug_info0
	.long	0x645
	.long	0x3b0
	.string	"get_mmap_addr"
	.long	0x3e1
	.string	"qemu_free"
	.long	0x40e
	.string	"qemu_malloc"
	.long	0x43f
	.string	"qemu_memalign"
	.long	0x498
	.string	"qemu_vmalloc"
	.long	0x4c9
	.string	"qemu_vfree"
	.long	0x4f6
	.string	"qemu_mallocz"
	.long	0x534
	.string	"qemu_strdup"
	.long	0x572
	.string	"qemu_create_pidfile"
	.long	0x608
	.string	"nb_drives"
	.long	0x62e
	.string	"drives_table"
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
.LASF69:
	.string	"alignment"
.LASF73:
	.string	"qemu_strdup"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF68:
	.string	"qemu_memalign"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF4:
	.string	"short unsigned int"
.LASF52:
	.string	"BlockDriverState"
.LASF7:
	.string	"signed char"
.LASF48:
	.string	"uint8_t"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF81:
	.string	"drives_table"
.LASF42:
	.string	"_IO_lock_t"
.LASF75:
	.string	"filename"
.LASF14:
	.string	"_IO_read_ptr"
.LASF50:
	.string	"double"
.LASF64:
	.string	"get_mmap_addr"
.LASF47:
	.string	"_pos"
.LASF77:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF60:
	.string	"DriveInfo"
.LASF41:
	.string	"_unused2"
.LASF0:
	.string	"long unsigned int"
.LASF59:
	.string	"BlockInterfaceType"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF61:
	.string	"bdrv"
.LASF29:
	.string	"_old_offset"
.LASF72:
	.string	"qemu_mallocz"
.LASF3:
	.string	"long long int"
.LASF57:
	.string	"IF_MTD"
.LASF19:
	.string	"_IO_write_end"
.LASF84:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF83:
	.string	"/home/remco/Projects/Argos/src/osdep.c"
.LASF20:
	.string	"_IO_buf_base"
.LASF80:
	.string	"nb_drives"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF82:
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
.LASF46:
	.string	"_sbuf"
.LASF65:
	.string	"qemu_free"
.LASF13:
	.string	"_flags"
.LASF62:
	.string	"type"
.LASF51:
	.string	"long double"
.LASF34:
	.string	"_offset"
.LASF66:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF55:
	.string	"IF_FLOPPY"
.LASF11:
	.string	"__off64_t"
.LASF58:
	.string	"IF_SD"
.LASF21:
	.string	"_IO_buf_end"
.LASF70:
	.string	"qemu_vmalloc"
.LASF76:
	.string	"buffer"
.LASF74:
	.string	"qemu_create_pidfile"
.LASF8:
	.string	"short int"
.LASF79:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF53:
	.string	"IF_IDE"
.LASF63:
	.string	"unit"
.LASF15:
	.string	"_IO_read_end"
.LASF56:
	.string	"IF_PFLASH"
.LASF27:
	.string	"_fileno"
.LASF49:
	.string	"float"
.LASF78:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF71:
	.string	"qemu_vfree"
.LASF67:
	.string	"qemu_malloc"
.LASF54:
	.string	"IF_SCSI"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
