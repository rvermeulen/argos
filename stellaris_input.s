	.file	"stellaris_input.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	stellaris_gamepad_put_key, @function
stellaris_gamepad_put_key:
.LFB110:
	.file 1 "/home/remco/Projects/Argos/src/hw/stellaris_input.c"
	.loc 1 26 0
	pushq	%r13
.LCFI0:
	pushq	%r12
.LCFI1:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI2:
	movl	%esi, %ebp
	pushq	%rbx
.LCFI3:
	subq	$8, %rsp
.LCFI4:
	.loc 1 31 0
	cmpl	$224, %esi
	je	.L13
	movl	12(%rdi), %eax
.L2:
	.loc 1 36 0
	movl	%ebp, %r13d
	.loc 1 39 0
	movl	8(%r12), %ecx
	.loc 1 37 0
	andl	$127, %ebp
	.loc 1 36 0
	shrl	$7, %r13d
	.loc 1 37 0
	orl	%eax, %ebp
	.loc 1 39 0
	xorl	%ebx, %ebx
	.loc 1 36 0
	xorl	$1, %r13d
	andl	$1, %r13d
	.loc 1 39 0
	cmpl	$0, %ecx
	jle	.L9
	.p2align 4,,7
.L15:
	.loc 1 40 0
	movq	(%r12), %rax
	movslq	%ebx,%rdx
	salq	$4, %rdx
	cmpl	%ebp, 8(%rdx,%rax)
	je	.L14
.L5:
	.loc 1 39 0
	incl	%ebx
	cmpl	%ebx, %ecx
.L16:
	jg	.L15
.L9:
	.loc 1 47 0
	movl	$0, 12(%r12)
	.loc 1 48 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L14:
	.loc 1 40 0
	cmpl	%r13d, 12(%rdx,%rax)
	je	.L5
	.loc 1 42 0
	movl	%r13d, 12(%rdx,%rax)
	.loc 1 43 0
	movq	(%r12), %rax
	movl	%r13d, %esi
	.loc 1 39 0
	incl	%ebx
	.loc 1 43 0
	movq	(%rdx,%rax), %rdi
	call	qemu_set_irq
	movl	8(%r12), %ecx
	.loc 1 39 0
	cmpl	%ebx, %ecx
	jmp	.L16
.L13:
	.loc 1 31 0
	movl	12(%rdi), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 32 0
	movl	$128, 12(%rdi)
	.loc 1 48 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE110:
	.size	stellaris_gamepad_put_key, .-stellaris_gamepad_put_key
	.p2align 4,,15
.globl stellaris_gamepad_init
	.type	stellaris_gamepad_init, @function
stellaris_gamepad_init:
.LFB111:
	.loc 1 52 0
	pushq	%r13
.LCFI5:
	movq	%rsi, %r13
	pushq	%r12
.LCFI6:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI7:
	movl	%edi, %ebp
	.loc 1 56 0
	movl	$16, %edi
	.loc 1 52 0
	pushq	%rbx
.LCFI8:
	subq	$8, %rsp
.LCFI9:
	.loc 1 56 0
	call	qemu_mallocz
	.loc 1 57 0
	movslq	%ebp,%rdi
	.loc 1 56 0
	movq	%rax, %rbx
	.loc 1 57 0
	salq	$4, %rdi
	call	qemu_mallocz
	.loc 1 58 0
	xorl	%edi, %edi
	.loc 1 57 0
	movq	%rax, %rcx
	movq	%rax, (%rbx)
	.loc 1 58 0
	cmpl	%ebp, %edi
	jl	.L21
	jmp	.L23
	.p2align 4,,7
.L24:
	movq	(%rbx), %rcx
.L21:
	.loc 1 59 0
	movslq	%edi,%rdx
	.loc 1 58 0
	incl	%edi
	.loc 1 59 0
	movq	(%r13,%rdx,8), %rax
	movq	%rdx, %rsi
	salq	$4, %rsi
	.loc 1 58 0
	cmpl	%ebp, %edi
	.loc 1 59 0
	movq	%rax, (%rsi,%rcx)
	.loc 1 60 0
	movq	(%rbx), %rcx
	movl	(%r12,%rdx,4), %eax
	movl	%eax, 8(%rsi,%rcx)
	.loc 1 58 0
	jl	.L24
.L23:
	.loc 1 62 0
	movl	%ebp, 8(%rbx)
	.loc 1 63 0
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	movl	$stellaris_gamepad_put_key, %edi
	jmp	qemu_add_kbd_event_handler
.LFE111:
	.size	stellaris_gamepad_init, .-stellaris_gamepad_init
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI5-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI5-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE3:
	.file 2 "./qemu-common.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x462
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF60
	.byte	0x1
	.long	.LASF61
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
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
	.long	0x3f
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
	.byte	0x2
	.byte	0x7b
	.long	0x2fc
	.uleb128 0x5
	.byte	0x8
	.long	0x302
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.uleb128 0xf
	.long	0x33b
	.byte	0x10
	.byte	0x1
	.byte	0x11
	.uleb128 0x10
	.string	"irq"
	.byte	0x1
	.byte	0xe
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x1
	.byte	0x11
	.long	0x308
	.uleb128 0xf
	.long	0x379
	.byte	0x10
	.byte	0x1
	.byte	0x17
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1
	.byte	0x14
	.long	0x379
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.byte	0x15
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x33b
	.uleb128 0x2
	.long	.LASF55
	.byte	0x1
	.byte	0x17
	.long	0x346
	.uleb128 0x11
	.long	0x3e4
	.long	.LASF64
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x19
	.long	0xa6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.byte	0x19
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x1b
	.long	0x3e4
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x37f
	.uleb128 0x16
	.long	0x445
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.string	"irq"
	.byte	0x1
	.byte	0x33
	.long	0x445
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.byte	0x33
	.long	0x69
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x35
	.long	0x3e4
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2f1
	.uleb128 0x18
	.long	.LASF58
	.byte	0x3
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF59
	.byte	0x3
	.byte	0x92
	.long	0x2c5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.long	0x29
	.value	0x2
	.long	.Ldebug_info0
	.long	0x466
	.long	0x3ea
	.string	"stellaris_gamepad_init"
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
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF56:
	.string	"opaque"
.LASF55:
	.string	"gamepad_state"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF51:
	.string	"gamepad_button"
.LASF52:
	.string	"buttons"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_IO_lock_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF58:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF64:
	.string	"stellaris_gamepad_put_key"
.LASF54:
	.string	"extension"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF50:
	.string	"pressed"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF63:
	.string	"IRQState"
.LASF19:
	.string	"_IO_write_end"
.LASF49:
	.string	"keycode"
.LASF65:
	.string	"stellaris_gamepad_init"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF60:
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
.LASF13:
	.string	"_flags"
.LASF34:
	.string	"_offset"
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
.LASF61:
	.string	"/home/remco/Projects/Argos/src/hw/stellaris_input.c"
.LASF11:
	.string	"__off64_t"
.LASF62:
	.string	"/home/remco/Projects/Argos/src"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"_IO_read_end"
.LASF57:
	.string	"down"
.LASF27:
	.string	"_fileno"
.LASF4:
	.string	"short unsigned int"
.LASF59:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF53:
	.string	"num_buttons"
.LASF48:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
