	.file	"max111x.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	max111x_iid
	.comm	max111x_iid,4,4
	.p2align 4,,15
.globl max111x_read
	.type	max111x_read, @function
max111x_read:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/max111x.c"
	.loc 1 38 0
	.loc 1 42 0
	xorl	%eax, %eax
	.loc 1 41 0
	cmpb	$0, 8(%rdi)
	je	.L1
	.loc 1 44 0
	movl	12(%rdi), %edx
	leal	1(%rdx), %eax
	cmpl	$1, %edx
	movl	%eax, 12(%rdi)
	je	.L4
	cmpl	$2, %edx
	je	.L5
	.loc 1 51 0
	xorl	%eax, %eax
.L1:
	.loc 1 52 0
	rep ; ret
	.p2align 4,,7
.L4:
	.loc 1 46 0
	movzbl	9(%rdi), %eax
	ret
	.p2align 4,,7
.L5:
	.loc 1 48 0
	movzbl	10(%rdi), %eax
	.p2align 4,,3
	ret
.LFE108:
	.size	max111x_read, .-max111x_read
	.p2align 4,,15
.globl max111x_write
	.type	max111x_write, @function
max111x_write:
.LFB109:
	.loc 1 56 0
	.loc 1 61 0
	testb	%sil, %sil
	jns	.L7
	.loc 1 66 0
	testb	$2, %sil
	.loc 1 64 0
	movl	$0, 12(%rdi)
	.loc 1 66 0
	jne	.L9
	.loc 1 67 0
	movb	$0, 8(%rdi)
	.loc 1 68 0
	ret
	.p2align 4,,7
.L7:
	rep ; ret
	.p2align 4,,7
.L9:
	.loc 1 73 0
	cmpl	$8, 48(%rdi)
	.loc 1 71 0
	movb	%sil, 8(%rdi)
	.loc 1 73 0
	je	.L18
	.loc 1 76 0
	movl	%esi, %eax
	andl	$-17, %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	shrl	$2, %eax
	andl	$2, %ecx
.L17:
	andl	$1, %eax
	orl	%eax, %ecx
	.loc 1 78 0
	testb	$4, %sil
	je	.L12
	.loc 1 79 0
	movslq	%ecx,%rax
	movl	16(%rdi,%rax,4), %edx
	subl	52(%rdi), %edx
.L13:
	.loc 1 84 0
	movl	%edx, %eax
	xorb	$-128, %al
	andl	$8, %esi
	cmove	%eax, %edx
	.loc 1 86 0
	movl	%edx, %eax
	sarl	$2, %eax
	andl	$63, %eax
	movb	%al, 9(%rdi)
	.loc 1 87 0
	movl	%edx, %eax
	sall	$6, %eax
	movb	%al, 10(%rdi)
	.loc 1 89 0
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L7
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 14 0
	movl	$1, %esi
	jmp	qemu_set_irq
.L18:
.LBE3:
.LBE2:
	.loc 1 74 0
	movl	%esi, %ecx
	movl	%esi, %eax
	shrl	$3, %ecx
	shrl	$6, %eax
	andl	$6, %ecx
	jmp	.L17
	.p2align 4,,7
.L12:
	.loc 1 81 0
	movslq	%ecx,%rdx
	xorl	$1, %ecx
	movslq	%ecx,%rax
	movl	16(%rdi,%rdx,4), %edx
	subl	16(%rdi,%rax,4), %edx
	jmp	.L13
.LFE109:
	.size	max111x_write, .-max111x_write
	.p2align 4,,15
	.type	max111x_save, @function
max111x_save:
.LFB110:
	.loc 1 94 0
	pushq	%r12
.LCFI0:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI1:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI2:
.LBB4:
.LBB5:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	8(%rsi), %esi
.LBE5:
.LBE4:
	.loc 1 103 0
	xorl	%ebx, %ebx
.LBB6:
.LBB7:
	.loc 3 42 0
	call	qemu_put_byte
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	movzbl	9(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	movzbl	10(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE11:
.LBE10:
	.loc 1 101 0
	movl	48(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 102 0
	movl	52(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 103 0
	movl	48(%rbp), %eax
	testl	%eax, %eax
	jle	.L28
	.p2align 4,,7
.L26:
	.loc 1 104 0
	movslq	%ebx,%rax
	movq	%r12, %rdi
	.loc 1 103 0
	incl	%ebx
	.loc 1 104 0
	movl	16(%rbp,%rax,4), %esi
	call	qemu_put_byte
	.loc 1 103 0
	cmpl	%ebx, 48(%rbp)
	jg	.L26
.L28:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE110:
	.size	max111x_save, .-max111x_save
	.p2align 4,,15
	.type	max111x_load, @function
max111x_load:
.LFB111:
	.loc 1 108 0
	pushq	%r13
.LCFI3:
	movq	%rdi, %r13
	pushq	%r12
.LCFI4:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI5:
	pushq	%rbx
.LCFI6:
	subq	$8, %rsp
.LCFI7:
.LBB12:
.LBB13:
	.loc 3 62 0
	call	qemu_get_byte
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	movq	%r13, %rdi
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	movb	%al, 8(%r12)
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	call	qemu_get_byte
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	movq	%r13, %rdi
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movb	%al, 9(%r12)
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	call	qemu_get_byte
.LBE25:
.LBE24:
	.loc 1 115 0
	movq	%r13, %rdi
.LBB26:
.LBB27:
	.loc 3 62 0
	movb	%al, 10(%r12)
.LBE27:
.LBE26:
	.loc 1 115 0
	call	qemu_get_be32
	cmpl	%eax, 48(%r12)
	.loc 1 116 0
	movl	$-22, %edx
	.loc 1 115 0
	jne	.L29
	.loc 1 117 0
	movq	%r13, %rdi
	.loc 1 118 0
	xorl	%ebp, %ebp
	.loc 1 117 0
	call	qemu_get_be32
	.loc 1 118 0
	movl	48(%r12), %edx
	.loc 1 117 0
	movl	%eax, 52(%r12)
	.loc 1 118 0
	testl	%edx, %edx
	jle	.L39
	.p2align 4,,7
.L37:
	.loc 1 119 0
	movq	%r13, %rdi
	movslq	%ebp,%rbx
	.loc 1 118 0
	incl	%ebp
	.loc 1 119 0
	call	qemu_get_byte
	.loc 1 118 0
	cmpl	%ebp, 48(%r12)
	.loc 1 119 0
	movl	%eax, 16(%r12,%rbx,4)
	.loc 1 118 0
	jg	.L37
.L39:
	.loc 1 121 0
	xorl	%edx, %edx
.L29:
	.loc 1 122 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE111:
	.size	max111x_load, .-max111x_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"max111x"
	.text
	.p2align 4,,15
	.type	max111x_init, @function
max111x_init:
.LFB112:
	.loc 1 127 0
	pushq	%r12
.LCFI8:
	movq	%rdi, %r12
	.loc 1 129 0
	movl	$56, %edi
	.loc 1 127 0
	pushq	%rbx
.LCFI9:
	subq	$8, %rsp
.LCFI10:
	.loc 1 129 0
	call	qemu_mallocz
	.loc 1 131 0
	cld
	.loc 1 129 0
	movq	%rax, %rbx
	.loc 1 131 0
	movl	$7, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	.loc 1 146 0
	movq	%rbx, %r9
	movl	$max111x_load, %r8d
	.loc 1 131 0
	rep
	stosq
	.loc 1 133 0
	movq	%r12, (%rbx)
	.loc 1 136 0
	movl	$240, 16(%rbx)
	.loc 1 146 0
	movl	$max111x_save, %ecx
	.loc 1 137 0
	movl	$224, 20(%rbx)
	.loc 1 138 0
	movl	$208, 24(%rbx)
	.loc 1 146 0
	xorl	%edx, %edx
	.loc 1 139 0
	movl	$192, 28(%rbx)
	.loc 1 140 0
	movl	$176, 32(%rbx)
	.loc 1 146 0
	movl	$.LC0, %edi
	.loc 1 141 0
	movl	$160, 36(%rbx)
	.loc 1 142 0
	movl	$144, 40(%rbx)
	.loc 1 143 0
	movl	$128, 44(%rbx)
	.loc 1 144 0
	movl	$0, 52(%rbx)
	.loc 1 146 0
	movl	max111x_iid(%rip), %esi
	leal	1(%rsi), %eax
	movl	%eax, max111x_iid(%rip)
	call	register_savevm
	.loc 1 150 0
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE112:
	.size	max111x_init, .-max111x_init
	.p2align 4,,15
.globl max1110_init
	.type	max1110_init, @function
max1110_init:
.LFB113:
	.loc 1 153 0
	subq	$8, %rsp
.LCFI11:
	.loc 1 154 0
	call	max111x_init
	.loc 1 155 0
	movl	$8, 48(%rax)
	.loc 1 157 0
	addq	$8, %rsp
	ret
.LFE113:
	.size	max1110_init, .-max1110_init
	.p2align 4,,15
.globl max1111_init
	.type	max1111_init, @function
max1111_init:
.LFB114:
	.loc 1 160 0
	subq	$8, %rsp
.LCFI12:
	.loc 1 161 0
	call	max111x_init
	.loc 1 162 0
	movl	$4, 48(%rax)
	.loc 1 164 0
	addq	$8, %rsp
	ret
.LFE114:
	.size	max1111_init, .-max1111_init
	.section	.rodata
	.align 16
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 18
__FUNCTION__.0:
	.string	"max111x_set_input"
	.section	.rodata.str1.1
.LC1:
	.string	"%s: There's no input %i\n"
	.text
	.p2align 4,,15
.globl max111x_set_input
	.type	max111x_set_input, @function
max111x_set_input:
.LFB115:
	.loc 1 167 0
	.loc 1 168 0
	cmpl	%esi, 48(%rdi)
	.loc 1 167 0
	movl	%edx, %eax
	.loc 1 168 0
	jle	.L45
	.loc 1 173 0
	movslq	%esi,%rdx
	movzbl	%al, %eax
	movl	%eax, 16(%rdi,%rdx,4)
	.loc 1 174 0
	ret
	.p2align 4,,7
.L45:
	.loc 1 169 0
	movl	%esi, %edx
	movl	$.LC1, %edi
	movl	$__FUNCTION__.0, %esi
	xorl	%eax, %eax
	jmp	printf
.LFE115:
	.size	max111x_set_input, .-max111x_set_input
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
	.byte	0x4
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI3-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI8-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI11-.LFB113
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI12-.LFB114
	.byte	0xe
	.uleb128 0x10
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
	.byte	0x4
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI3-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI8-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI11-.LFB113
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI12-.LFB114
	.byte	0xe
	.uleb128 0x10
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
	.file 4 "/usr/include/stdint.h"
	.file 5 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 6 "./qemu-common.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x7a7
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
	.byte	0xa
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
	.byte	0x9
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x9
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
	.byte	0x7
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x8
	.value	0x115
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x8
	.value	0x116
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x8
	.value	0x117
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x8
	.value	0x118
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x8
	.value	0x119
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x8
	.value	0x11a
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x8
	.value	0x11b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.value	0x11c
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x8
	.value	0x11e
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.value	0x11f
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.value	0x120
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.value	0x122
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.value	0x124
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.value	0x12c
	.long	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x8
	.value	0x131
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.value	0x132
	.long	0x2c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.value	0x136
	.long	0x2d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.value	0x13f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.value	0x148
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.value	0x14a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.value	0x14b
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.value	0x150
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x8
	.byte	0xb4
	.uleb128 0x8
	.long	0x2b9
	.long	.LASF44
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x8
	.byte	0xbb
	.long	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x8
	.byte	0xbc
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x8
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
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x7
	.byte	0x8
	.long	0x307
	.uleb128 0x5
	.long	0x2eb
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x73
	.long	0x317
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7b
	.long	0x328
	.uleb128 0x7
	.byte	0x8
	.long	0x32e
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.long	0x30c
	.uleb128 0x8
	.long	0x3b7
	.long	.LASF53
	.byte	0x38
	.byte	0x5
	.byte	0x32
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0xe
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"tb1"
	.byte	0x1
	.byte	0xf
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"rb2"
	.byte	0x1
	.byte	0xf
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.string	"rb3"
	.byte	0x1
	.byte	0xf
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF55
	.byte	0x1
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0x12
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0x13
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"com"
	.byte	0x1
	.byte	0x13
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0xc
	.long	0x3c7
	.long	0x3f
	.uleb128 0xd
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0x403
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x2f6
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x25
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x27
	.long	0x403
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x33a
	.uleb128 0x13
	.long	0x481
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x37
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x37
	.long	0x2f6
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x39
	.long	0x403
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.long	0x481
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.long	0x48e
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x49a
	.long	.LASF64
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x31d
	.byte	0x0
	.uleb128 0x1a
	.long	0x54f
	.long	.LASF65
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x5d
	.long	0x334
	.byte	0x1
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x5d
	.long	0xa0
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x5f
	.long	0x403
	.byte	0x1
	.byte	0x56
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x50a
	.long	0x54f
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x17
	.long	0x55c
	.uleb128 0x17
	.long	0x565
	.byte	0x0
	.uleb128 0x1c
	.long	0x52e
	.long	0x54f
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x17
	.long	0x55c
	.uleb128 0x17
	.long	0x565
	.byte	0x0
	.uleb128 0x16
	.long	0x54f
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x17
	.long	0x55c
	.uleb128 0x17
	.long	0x565
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x570
	.long	.LASF66
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x334
	.uleb128 0x19
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x301
	.byte	0x0
	.uleb128 0x1d
	.long	0x636
	.long	.LASF67
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x6b
	.long	0x334
	.byte	0x1
	.byte	0x5d
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x6b
	.long	0xa0
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0x6b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x6d
	.long	0x403
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	0x5f1
	.long	0x636
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x17
	.long	0x643
	.uleb128 0x17
	.long	0x64c
	.byte	0x0
	.uleb128 0x1c
	.long	0x615
	.long	0x636
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x17
	.long	0x643
	.uleb128 0x17
	.long	0x64c
	.byte	0x0
	.uleb128 0x16
	.long	0x636
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x17
	.long	0x643
	.uleb128 0x17
	.long	0x64c
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x657
	.long	.LASF69
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x334
	.uleb128 0x19
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0x657
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x2eb
	.uleb128 0x1d
	.long	0x697
	.long	.LASF70
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	0x403
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"cb"
	.byte	0x1
	.byte	0x7e
	.long	0x31d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x80
	.long	0x403
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x10
	.long	0x6d2
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x403
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"cb"
	.byte	0x1
	.byte	0x98
	.long	0x31d
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x9a
	.long	0x403
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x10
	.long	0x70d
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x403
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"cb"
	.byte	0x1
	.byte	0x9f
	.long	0x31d
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xa1
	.long	0x403
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x13
	.long	0x766
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0xa6
	.long	0x403
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.byte	0xa6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0xa6
	.long	0x2eb
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF75
	.long	0x776
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0x0
	.uleb128 0xc
	.long	0x776
	.long	0x69
	.uleb128 0xd
	.long	0x5b
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.long	0x766
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x7
	.byte	0x91
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x7
	.byte	0x92
	.long	0x2bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.byte	0x7c
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	max111x_iid
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x69
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7ab
	.long	0x3c7
	.string	"max111x_read"
	.long	0x409
	.string	"max111x_write"
	.long	0x697
	.string	"max1110_init"
	.long	0x6d2
	.string	"max1111_init"
	.long	0x70d
	.string	"max111x_set_input"
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
.LASF58:
	.string	"max111x_read"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF62:
	.string	"measure"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF64:
	.string	"qemu_irq_raise"
.LASF71:
	.string	"max1110_init"
.LASF57:
	.string	"inputs"
.LASF44:
	.string	"_IO_marker"
.LASF60:
	.string	"opaque"
.LASF68:
	.string	"version_id"
.LASF48:
	.string	"uint8_t"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF75:
	.string	"__FUNCTION__"
.LASF61:
	.string	"value"
.LASF63:
	.string	"chan"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_IO_lock_t"
.LASF50:
	.string	"QEMUFile"
.LASF66:
	.string	"qemu_put_8s"
.LASF73:
	.string	"max111x_set_input"
.LASF14:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"max111x_s"
.LASF47:
	.string	"_pos"
.LASF76:
	.string	"stdin"
.LASF56:
	.string	"input"
.LASF25:
	.string	"_markers"
.LASF34:
	.string	"_offset"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF74:
	.string	"line"
.LASF41:
	.string	"_unused2"
.LASF65:
	.string	"max111x_save"
.LASF29:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF52:
	.string	"IRQState"
.LASF19:
	.string	"_IO_write_end"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF79:
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
.LASF80:
	.string	"/home/remco/Projects/Argos/src/hw/max111x.c"
.LASF13:
	.string	"_flags"
.LASF70:
	.string	"max111x_init"
.LASF69:
	.string	"qemu_get_8s"
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
.LASF11:
	.string	"__off64_t"
.LASF72:
	.string	"max1111_init"
.LASF81:
	.string	"/home/remco/Projects/Argos/src"
.LASF78:
	.string	"max111x_iid"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF55:
	.string	"cycle"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF54:
	.string	"interrupt"
.LASF4:
	.string	"short unsigned int"
.LASF77:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"max111x_write"
.LASF67:
	.string	"max111x_load"
.LASF51:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
