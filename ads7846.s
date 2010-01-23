	.file	"ads7846.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	ads7846_iid
	.comm	ads7846_iid,4,4
	.p2align 4,,15
	.type	ads7846_int_update, @function
ads7846_int_update:
.LFB110:
	.file 1 "/home/remco/Projects/Argos/src/hw/ads7846.c"
	.loc 1 50 0
	.loc 1 51 0
	movq	(%rdi), %rax
	testq	%rax, %rax
	jne	.L4
	rep ; ret
	.p2align 4,,7
.L4:
	.loc 1 52 0
	xorl	%esi, %esi
	cmpl	$0, 40(%rdi)
	movq	%rax, %rdi
	sete	%sil
	jmp	qemu_set_irq
.LFE110:
	.size	ads7846_int_update, .-ads7846_int_update
	.p2align 4,,15
.globl ads7846_read
	.type	ads7846_read, @function
ads7846_read:
.LFB111:
	.loc 1 56 0
	.loc 1 59 0
	movl	52(%rdi), %eax
	.loc 1 60 0
	ret
.LFE111:
	.size	ads7846_read, .-ads7846_read
	.p2align 4,,15
.globl ads7846_write
	.type	ads7846_write, @function
ads7846_write:
.LFB112:
	.loc 1 63 0
	.loc 1 66 0
	movl	48(%rdi), %eax
	testl	%eax, %eax
	leal	1(%rax), %edx
	je	.L8
	decl	%eax
	je	.L17
	movl	%edx, 48(%rdi)
	ret
	.p2align 4,,7
.L8:
	.loc 1 68 0
	testb	%sil, %sil
	.p2align 4,,7
	js	.L20
.L17:
	.loc 1 89 0
	movl	$0, 48(%rdi)
	.p2align 4,,6
	ret
	.p2align 4,,7
.L20:
	movl	%edx, 48(%rdi)
	.loc 1 73 0
	movl	%esi, %edx
	.loc 1 76 0
	movl	44(%rdi), %ecx
	.loc 1 73 0
	shrl	$4, %edx
	movq	%rdx, %rax
	andl	$7, %eax
	.loc 1 76 0
	addl	$3, %ecx
	.loc 1 73 0
	movl	8(%rdi,%rax,4), %r8d
	.loc 1 77 0
	movl	%edx, %eax
	.loc 1 76 0
	andl	$7, %ecx
	.loc 1 77 0
	andl	$7, %eax
	.loc 1 76 0
	movl	%ecx, 44(%rdi)
	.loc 1 77 0
	cmpl	$3, %eax
	.loc 1 73 0
	movl	%r8d, %r9d
	.loc 1 77 0
	je	.L19
	ja	.L15
	decl	%eax
	je	.L11
.L10:
	.loc 1 84 0
	andl	$8, %esi
	.p2align 4,,8
	je	.L18
.L21:
	.loc 1 85 0
	sarl	$4, %r9d
	movl	%r9d, 52(%rdi)
	.loc 1 87 0
	.p2align 4,,4
	ret
.L11:
	.loc 1 78 0
	xorl	$2, %ecx
	.p2align 4,,7
.L19:
	.loc 1 81 0
	addl	%ecx, %r8d
	.loc 1 84 0
	andl	$8, %esi
	.loc 1 81 0
	movl	%r8d, %r9d
	.loc 1 84 0
	jne	.L21
.L18:
	movl	%r8d, 52(%rdi)
	ret
.L15:
	.loc 1 77 0
	cmpl	$4, %eax
	je	.L13
	cmpl	$5, %eax
	.p2align 4,,6
	jne	.L10
	.loc 1 81 0
	xorl	$5, %ecx
	.p2align 4,,5
	jmp	.L19
.L13:
	.loc 1 80 0
	xorl	$7, %ecx
	.p2align 4,,5
	jmp	.L19
.LFE112:
	.size	ads7846_write, .-ads7846_write
	.p2align 4,,15
	.type	ads7846_ts_event, @function
ads7846_ts_event:
.LFB113:
	.loc 1 96 0
	.loc 1 99 0
	testl	%r8d, %r8d
	.loc 1 96 0
	pushq	%rbx
.LCFI0:
	.loc 1 96 0
	movl	%edx, %r9d
	movl	%r8d, %ecx
	.loc 1 99 0
	je	.L23
	.loc 1 100 0
	movl	$32767, %edx
	.loc 1 103 0
	movl	$6000, %eax
	.loc 1 102 0
	movl	$600, 20(%rdi)
	.loc 1 100 0
	subl	%esi, %edx
	.loc 1 101 0
	imull	$3470, %edx, %edx
	sarl	$15, %edx
	addl	$290, %edx
	.loc 1 103 0
	movl	%edx, %ebx
	.loc 1 101 0
	movl	%edx, 12(%rdi)
	.loc 1 103 0
	cltd
	idivl	%ebx
	addl	$600, %eax
	movl	%eax, 24(%rdi)
	.loc 1 104 0
	imull	$3450, %r9d, %eax
	sarl	$15, %eax
	addl	$200, %eax
	movl	%eax, 28(%rdi)
.L23:
	.loc 1 107 0
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	cmpl	%eax, 40(%rdi)
	je	.L25
	.loc 1 112 0
	popq	%rbx
	ret
	.p2align 4,,7
.L25:
	popq	%rbx
	.loc 1 108 0
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	%eax, 40(%rdi)
	.loc 1 110 0
	jmp	ads7846_int_update
.LFE113:
	.size	ads7846_ts_event, .-ads7846_ts_event
	.p2align 4,,15
	.type	ads7846_save, @function
ads7846_save:
.LFB114:
	.loc 1 115 0
	pushq	%r12
.LCFI1:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI2:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI3:
	.loc 1 119 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L30:
	.loc 1 120 0
	movslq	%ebx,%rax
	movq	%r12, %rdi
	.loc 1 119 0
	incl	%ebx
	.loc 1 120 0
	movl	8(%rbp,%rax,4), %esi
	call	qemu_put_be32
	.loc 1 119 0
	cmpl	$7, %ebx
	jle	.L30
	.loc 1 121 0
	movl	44(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 122 0
	movl	48(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 123 0
	popq	%rbx
	movl	52(%rbp), %esi
	movq	%r12, %rdi
	popq	%rbp
	popq	%r12
	jmp	qemu_put_be32
.LFE114:
	.size	ads7846_save, .-ads7846_save
	.p2align 4,,15
	.type	ads7846_load, @function
ads7846_load:
.LFB115:
	.loc 1 127 0
	pushq	%r13
.LCFI4:
	movq	%rsi, %r13
	pushq	%r12
.LCFI5:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI6:
	.loc 1 131 0
	xorl	%ebp, %ebp
	.loc 1 127 0
	pushq	%rbx
.LCFI7:
	subq	$8, %rsp
.LCFI8:
	.p2align 4,,7
.L37:
	.loc 1 132 0
	movslq	%ebp,%rbx
	movq	%r12, %rdi
	.loc 1 131 0
	incl	%ebp
	.loc 1 132 0
	call	qemu_get_be32
	.loc 1 131 0
	cmpl	$7, %ebp
	.loc 1 132 0
	movl	%eax, 8(%r13,%rbx,4)
	.loc 1 131 0
	jle	.L37
	.loc 1 133 0
	movq	%r12, %rdi
	call	qemu_get_be32
	.loc 1 134 0
	movq	%r12, %rdi
	.loc 1 133 0
	movl	%eax, 44(%r13)
	.loc 1 134 0
	call	qemu_get_be32
	.loc 1 135 0
	movq	%r12, %rdi
	.loc 1 134 0
	movl	%eax, 48(%r13)
	.loc 1 135 0
	call	qemu_get_be32
	.loc 1 137 0
	movl	$0, 40(%r13)
	.loc 1 135 0
	movl	%eax, 52(%r13)
	.loc 1 138 0
	movq	%r13, %rdi
	call	ads7846_int_update
	.loc 1 141 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE115:
	.size	ads7846_load, .-ads7846_load
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"QEMU ADS7846-driven Touchscreen"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"ads7846"
	.text
	.p2align 4,,15
.globl ads7846_init
	.type	ads7846_init, @function
ads7846_init:
.LFB116:
	.loc 1 146 0
	pushq	%r12
.LCFI9:
	movq	%rdi, %r12
	.loc 1 148 0
	movl	$56, %edi
	.loc 1 146 0
	pushq	%rbx
.LCFI10:
	subq	$8, %rsp
.LCFI11:
	.loc 1 148 0
	call	qemu_mallocz
	.loc 1 150 0
	cld
	.loc 1 148 0
	movq	%rax, %rbx
	.loc 1 150 0
	movl	$7, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	.loc 1 160 0
	movq	%rbx, %rsi
	movl	$1, %edx
	.loc 1 150 0
	rep
	stosq
	.loc 1 152 0
	movq	%r12, (%rbx)
	.loc 1 160 0
	movl	$.LC0, %ecx
	.loc 1 154 0
	movl	$2000, 8(%rbx)
	.loc 1 155 0
	movl	$2000, 16(%rbx)
	.loc 1 156 0
	movl	$2000, 32(%rbx)
	.loc 1 160 0
	movl	$ads7846_ts_event, %edi
	.loc 1 157 0
	movl	$3000, 36(%rbx)
	.loc 1 160 0
	call	qemu_add_mouse_event_handler
	.loc 1 163 0
	movq	%rbx, %rdi
	call	ads7846_int_update
	.loc 1 165 0
	movl	ads7846_iid(%rip), %esi
	movq	%rbx, %r9
	movl	$ads7846_load, %r8d
	movl	$ads7846_save, %ecx
	xorl	%edx, %edx
	movl	$.LC1, %edi
	leal	1(%rsi), %eax
	movl	%eax, ads7846_iid(%rip)
	call	register_savevm
	.loc 1 169 0
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE116:
	.size	ads7846_init, .-ads7846_init
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
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI0-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI1-.LFB114
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI4-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI9-.LFB116
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI0-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI1-.LFB114
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI4-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI9-.LFB116
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE13:
	.file 2 "/home/remco/Projects/Argos/src/hw/devices.h"
	.file 3 "./qemu-common.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x5b3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
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
	.byte	0x5
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
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
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x73
	.long	0x2fc
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x7b
	.long	0x30d
	.uleb128 0x6
	.byte	0x8
	.long	0x313
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0x7
	.long	0x380
	.long	.LASF52
	.byte	0x38
	.byte	0x2
	.byte	0xe
	.uleb128 0xa
	.long	.LASF53
	.byte	0x1
	.byte	0xf
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.byte	0x11
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.byte	0x13
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF57
	.byte	0x1
	.byte	0x15
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0xb
	.long	0x390
	.long	0x3f
	.uleb128 0xc
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	0x3ba
	.long	.LASF63
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x31
	.long	0x3ba
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x31f
	.uleb128 0x10
	.long	0x3fa
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0x2e6
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x37
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x39
	.long	0x3ba
	.byte	0x0
	.uleb128 0x13
	.long	0x43d
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x3e
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0x3e
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x40
	.long	0x3ba
	.byte	0x0
	.uleb128 0xe
	.long	0x4a0
	.long	.LASF64
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x5e
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0xf
	.string	"z"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x61
	.long	0x3ba
	.byte	0x0
	.uleb128 0xe
	.long	0x4ed
	.long	.LASF66
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x72
	.long	0x319
	.byte	0x1
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x72
	.long	0x9b
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x74
	.long	0x3ba
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x75
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x15
	.long	0x54b
	.long	.LASF67
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x7e
	.long	0x319
	.byte	0x1
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x7e
	.long	0x9b
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x80
	.long	0x3ba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x10
	.long	0x587
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x3ba
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.byte	0x91
	.long	0x302
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x93
	.long	0x3ba
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.long	.LASF71
	.byte	0x5
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	.LASF72
	.byte	0x5
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.byte	0x8f
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	ads7846_iid
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
	.uleb128 0x11
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x42
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5b7
	.long	0x3c0
	.string	"ads7846_read"
	.long	0x3fa
	.string	"ads7846_write"
	.long	0x54b
	.string	"ads7846_init"
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
.LASF67:
	.string	"ads7846_load"
.LASF75:
	.string	"/home/remco/Projects/Argos/src/hw/ads7846.c"
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
.LASF59:
	.string	"opaque"
.LASF63:
	.string	"ads7846_int_update"
.LASF61:
	.string	"ads7846_write"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF62:
	.string	"value"
.LASF55:
	.string	"pressure"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_IO_lock_t"
.LASF49:
	.string	"QEMUFile"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF71:
	.string	"stdin"
.LASF54:
	.string	"input"
.LASF25:
	.string	"_markers"
.LASF69:
	.string	"ads7846_init"
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
.LASF68:
	.string	"version_id"
.LASF3:
	.string	"long long int"
.LASF51:
	.string	"IRQState"
.LASF19:
	.string	"_IO_write_end"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF74:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF64:
	.string	"ads7846_ts_event"
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
.LASF66:
	.string	"ads7846_save"
.LASF52:
	.string	"ads7846_state_s"
.LASF12:
	.string	"long long unsigned int"
.LASF58:
	.string	"output"
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
.LASF76:
	.string	"/home/remco/Projects/Argos/src"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF70:
	.string	"penirq"
.LASF60:
	.string	"ads7846_read"
.LASF31:
	.string	"_vtable_offset"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"_IO_read_end"
.LASF56:
	.string	"noise"
.LASF57:
	.string	"cycle"
.LASF65:
	.string	"buttons_state"
.LASF48:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF53:
	.string	"interrupt"
.LASF4:
	.string	"short unsigned int"
.LASF72:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF73:
	.string	"ads7846_iid"
.LASF50:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
