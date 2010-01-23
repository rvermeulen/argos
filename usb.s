	.file	"usb.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl usb_attach
	.type	usb_attach, @function
usb_attach:
.LFB100:
	.file 1 "/home/remco/Projects/Argos/src/hw/usb.c"
	.loc 1 28 0
	.loc 1 28 0
	movq	%rdi, %rax
	.loc 1 29 0
	movq	8(%rax), %r11
	jmp	*%r11
.LFE100:
	.size	usb_attach, .-usb_attach
	.p2align 4,,15
.globl usb_generic_handle_packet
	.type	usb_generic_handle_packet, @function
usb_generic_handle_packet:
.LFB101:
	.loc 1 43 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 48 0
	movl	(%rsi), %eax
	.loc 1 44 0
	xorl	%ebp, %ebp
	.loc 1 43 0
	movq	%rdi, %rbx
	.loc 1 45 0
	movl	16(%rsi), %edx
	.loc 1 46 0
	movq	8(%rsi), %rcx
	.loc 1 48 0
	cmpl	$225, %eax
	je	.L35
	jg	.L52
	cmpl	$45, %eax
	je	.L7
	cmpl	$105, %eax
	.p2align 4,,7
	je	.L18
.L11:
	.loc 1 173 0
	movl	$-3, %ebp
.L3:
	.loc 1 176 0
	movl	%ebp, %eax
.L57:
	.loc 1 177 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L52:
	.loc 1 48 0
	cmpl	$257, %eax
	je	.L5
	jg	.L53
	cmpl	$256, %eax
	.p2align 4,,7
	jne	.L11
	.loc 1 176 0
	movl	%ebp, %eax
	.loc 1 50 0
	movl	$1, 92(%rdi)
	.p2align 4,,5
	jmp	.L57
	.p2align 4,,7
.L35:
	.loc 1 134 0
	cmpl	$2, 92(%rdi)
	.p2align 4,,3
	jle	.L37
	movzbl	56(%rdi), %eax
	cmpb	%al, 4(%rsi)
	je	.L36
.L37:
	.loc 1 135 0
	movl	$-1, %eax
.L2:
	.loc 1 177 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L53:
	.loc 1 48 0
	cmpl	$258, %eax
	jne	.L11
	.loc 1 56 0
	movl	$0, 1128(%rdi)
	.loc 1 57 0
	movb	$0, 56(%rdi)
	.loc 1 58 0
	movl	$3, 92(%rdi)
	.loc 1 59 0
	call	*32(%rbx)
	.loc 1 176 0
	movl	%ebp, %eax
	jmp	.L57
.L36:
	.loc 1 136 0
	cmpb	$0, 5(%rsi)
	jne	.L50
	.loc 1 138 0
	movl	1132(%rdi), %eax
	cmpl	$1, %eax
	je	.L44
	cmpl	$2, %eax
	jne	.L11
	.loc 1 140 0
	cmpb	$0, 96(%rdi)
	jns	.L3
	.loc 1 176 0
	movl	%ebp, %eax
	.loc 1 141 0
	movl	$0, 1132(%rdi)
	jmp	.L57
	.p2align 4,,7
.L18:
	.loc 1 89 0
	cmpl	$2, 92(%rdi)
	jle	.L37
	movzbl	56(%rdi), %eax
	cmpb	%al, 4(%rsi)
	jne	.L37
	.loc 1 91 0
	cmpb	$0, 5(%rsi)
	.p2align 4,,3
	jne	.L50
	.loc 1 93 0
	movl	1132(%rdi), %eax
	cmpl	$1, %eax
	je	.L28
	cmpl	$2, %eax
	jne	.L11
	.loc 1 95 0
	movzbl	96(%rdi), %esi
	testb	%sil, %sil
	js	.L3
	.loc 1 97 0
	movzbl	101(%rdi), %ecx
	movzbl	100(%rdi), %eax
	movzbl	%sil, %esi
	movzbl	99(%rdi), %edx
	sall	$8, %esi
	.loc 1 96 0
	movl	$0, 1132(%rdi)
	.loc 1 97 0
	leaq	104(%rdi), %r9
	movl	1136(%rdi), %r8d
	sall	$8, %ecx
	orl	%eax, %ecx
	movzbl	98(%rdi), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	97(%rdi), %eax
	orl	%eax, %esi
	call	*40(%rbx)
	.loc 1 103 0
	testl	%eax, %eax
	.loc 1 97 0
	movl	%eax, %ebp
	.loc 1 103 0
	jle	.L3
	.loc 1 104 0
	xorl	%ebp, %ebp
	.loc 1 176 0
	movl	%ebp, %eax
	jmp	.L57
	.p2align 4,,7
.L5:
	movl	%ebp, %eax
	.loc 1 53 0
	movl	$0, 92(%rdi)
	jmp	.L57
	.p2align 4,,7
.L7:
	.loc 1 62 0
	cmpl	$2, 92(%rdi)
	jle	.L37
	movzbl	56(%rdi), %eax
	cmpb	%al, 4(%rsi)
	jne	.L37
	.loc 1 64 0
	cmpl	$8, %edx
	.p2align 4,,3
	jne	.L11
	.loc 1 66 0
	movq	(%rcx), %rax
	.loc 1 68 0
	movl	$0, 1140(%rdi)
	.loc 1 66 0
	movq	%rax, 96(%rdi)
	.loc 1 67 0
	movzbl	103(%rdi), %r8d
	movzbl	102(%rdi), %eax
	.loc 1 69 0
	movzbl	96(%rdi), %esi
	.loc 1 67 0
	sall	$8, %r8d
	orl	%eax, %r8d
	.loc 1 69 0
	testb	%sil, %sil
	.loc 1 67 0
	movl	%r8d, 1136(%rdi)
	.loc 1 69 0
	js	.L58
	.loc 1 83 0
	cmpl	$1, %r8d
	sbbl	%eax, %eax
	notl	%eax
	addl	$2, %eax
	movl	%eax, 1132(%rdi)
	.loc 1 176 0
	movl	%ebp, %eax
	jmp	.L57
.L44:
	.loc 1 148 0
	cmpb	$0, 96(%rdi)
	js	.L45
	.loc 1 149 0
	movl	1136(%rdi), %ebp
	movslq	1140(%rdi),%rdi
	.loc 1 152 0
	movq	%rcx, %rsi
	.loc 1 149 0
	subl	%edi, %ebp
	.loc 1 152 0
	leaq	104(%rdi,%rbx), %rdi
	.loc 1 151 0
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	.loc 1 152 0
	movslq	%ebp,%rdx
.L55:
	call	memcpy
	.loc 1 153 0
	movl	1140(%rbx), %eax
	addl	%ebp, %eax
	.loc 1 154 0
	cmpl	1136(%rbx), %eax
	.loc 1 153 0
	movl	%eax, 1140(%rbx)
	.loc 1 154 0
	jl	.L3
	.loc 1 176 0
	movl	%ebp, %eax
	.loc 1 155 0
	movl	$2, 1132(%rbx)
	jmp	.L57
.L50:
	.loc 1 167 0
	movq	%rbx, %rdi
	call	*48(%rbx)
	movl	%eax, %ebp
	.loc 1 176 0
	movl	%ebp, %eax
	jmp	.L57
.L45:
	.loc 1 173 0
	movl	$-3, %ebp
	.loc 1 158 0
	movl	$0, 1132(%rbx)
	jmp	.L3
.L28:
	.loc 1 110 0
	cmpb	$0, 96(%rdi)
	jns	.L45
	.loc 1 111 0
	movslq	1140(%rdi),%rsi
	movl	1136(%rdi), %ebp
	subl	%esi, %ebp
	.loc 1 114 0
	leaq	104(%rsi,%rdi), %rsi
	movq	%rcx, %rdi
	.loc 1 113 0
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	.loc 1 114 0
	movslq	%ebp,%rdx
	jmp	.L55
.L58:
	.loc 1 70 0
	movzbl	101(%rdi), %ecx
	movzbl	100(%rdi), %eax
	movzbl	%sil, %esi
	movzbl	99(%rdi), %edx
	sall	$8, %esi
	leaq	104(%rdi), %r9
	sall	$8, %ecx
	orl	%eax, %ecx
	movzbl	98(%rdi), %eax
	sall	$8, %edx
	orl	%eax, %edx
	movzbl	97(%rdi), %eax
	orl	%eax, %esi
	call	*40(%rbx)
	movl	%eax, %ebp
	.loc 1 76 0
	testl	%ebp, %ebp
	js	.L2
	.loc 1 78 0
	cmpl	%ebp, 1136(%rbx)
	jle	.L14
	.loc 1 79 0
	movl	%ebp, 1136(%rbx)
.L14:
	.loc 1 176 0
	movl	%ebp, %eax
	.loc 1 80 0
	movl	$1, 1132(%rbx)
	jmp	.L57
.LFE101:
	.size	usb_generic_handle_packet, .-usb_generic_handle_packet
	.p2align 4,,15
.globl set_usb_string
	.type	set_usb_string, @function
set_usb_string:
.LFB102:
	.loc 1 181 0
	pushq	%rbp
.LCFI3:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI4:
	movq	%rdi, %rbx
	.loc 1 186 0
	movq	%rsi, %rdi
	.loc 1 181 0
	subq	$8, %rsp
.LCFI5:
	.loc 1 186 0
	call	strlen
	.loc 1 189 0
	xorl	%ecx, %ecx
	.loc 1 186 0
	movl	%eax, %edi
	.loc 1 187 0
	leal	2(%rax,%rax), %eax
	.loc 1 189 0
	cmpl	%edi, %ecx
	.loc 1 188 0
	movb	$3, 1(%rbx)
	leaq	2(%rbx), %rdx
	.loc 1 187 0
	movb	%al, (%rbx)
	.loc 1 189 0
	jge	.L65
	movq	%rbp, %rsi
	.p2align 4,,7
.L63:
	.loc 1 190 0
	movzbl	(%rsi), %eax
	.loc 1 189 0
	incl	%ecx
	incq	%rsi
	.loc 1 190 0
	movb	%al, (%rdx)
	incq	%rdx
	.loc 1 191 0
	movb	$0, (%rdx)
	incq	%rdx
	.loc 1 189 0
	cmpl	%edi, %ecx
	jl	.L63
.L65:
	.loc 1 193 0
	movl	%edx, %eax
	.loc 1 194 0
	addq	$8, %rsp
	.loc 1 193 0
	subl	%ebx, %eax
	.loc 1 194 0
	popq	%rbx
	popq	%rbp
	ret
.LFE102:
	.size	set_usb_string, .-set_usb_string
	.p2align 4,,15
.globl usb_send_msg
	.type	usb_send_msg, @function
usb_send_msg:
.LFB103:
	.loc 1 198 0
	subq	$72, %rsp
.LCFI6:
	.loc 1 198 0
	movq	%rdi, %rdx
	.loc 1 200 0
	xorl	%eax, %eax
	cld
	movq	%rsp, %rdi
	movl	$7, %ecx
	rep
	stosq
	.loc 1 201 0
	movl	%esi, (%rsp)
	.loc 1 202 0
	movq	%rdx, %rdi
	movq	%rsp, %rsi
	call	*8(%rdx)
	addq	$72, %rsp
	ret
.LFE103:
	.size	usb_send_msg, .-usb_send_msg
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI2-.LFB101
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
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI3-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI6-.LFB103
	.byte	0xe
	.uleb128 0x50
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI2-.LFB101
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
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI3-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI6-.LFB103
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE7:
	.file 2 "/home/remco/Projects/Argos/src/hw/usb.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x74f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF87
	.byte	0x1
	.long	.LASF88
	.long	.LASF89
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
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
	.byte	0x6
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
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
	.long	0xc5
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x291
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF13
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x5
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.value	0x122
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.value	0x124
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF29
	.byte	0x5
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF30
	.byte	0x5
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.value	0x132
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.value	0x136
	.long	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x5
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.value	0x150
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0xb4
	.uleb128 0xa
	.long	0x2cf
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.byte	0xbb
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.byte	0xbc
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF47
	.byte	0x5
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x298
	.uleb128 0x5
	.byte	0x8
	.long	0xc5
	.uleb128 0x8
	.long	0x2eb
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x291
	.uleb128 0x8
	.long	0x301
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x6f
	.long	0x317
	.uleb128 0xa
	.long	0x36a
	.long	.LASF49
	.byte	0x28
	.byte	0x2
	.byte	0x6f
	.uleb128 0xe
	.string	"dev"
	.byte	0x2
	.byte	0x92
	.long	0x512
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x2
	.byte	0x93
	.long	0x58c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF51
	.byte	0x2
	.byte	0x94
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF52
	.byte	0x2
	.byte	0x95
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF53
	.byte	0x2
	.byte	0x96
	.long	0x5b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x2
	.byte	0x70
	.long	0x375
	.uleb128 0xf
	.long	0x467
	.long	.LASF54
	.value	0x478
	.byte	0x2
	.byte	0x70
	.uleb128 0xd
	.long	.LASF51
	.byte	0x2
	.byte	0x75
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x2
	.byte	0x76
	.long	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF56
	.byte	0x2
	.byte	0x77
	.long	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF57
	.byte	0x2
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF58
	.byte	0x2
	.byte	0x7e
	.long	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF59
	.byte	0x2
	.byte	0x80
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF60
	.byte	0x2
	.byte	0x81
	.long	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF61
	.byte	0x2
	.byte	0x82
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF62
	.byte	0x2
	.byte	0x83
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xd
	.long	.LASF63
	.byte	0x2
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.long	.LASF64
	.byte	0x2
	.byte	0x86
	.long	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF65
	.byte	0x2
	.byte	0x87
	.long	0x57b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF66
	.byte	0x2
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xd
	.long	.LASF67
	.byte	0x2
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xd
	.long	.LASF68
	.byte	0x2
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xd
	.long	.LASF69
	.byte	0x2
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x2
	.byte	0x71
	.long	0x472
	.uleb128 0xa
	.long	0x4fd
	.long	.LASF70
	.byte	0x38
	.byte	0x2
	.byte	0x71
	.uleb128 0xe
	.string	"pid"
	.byte	0x2
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF71
	.byte	0x2
	.byte	0x9f
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF72
	.byte	0x2
	.byte	0xa0
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF73
	.byte	0x2
	.byte	0xa1
	.long	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF74
	.byte	0x2
	.byte	0xa4
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF75
	.byte	0x2
	.byte	0xa5
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF76
	.byte	0x2
	.byte	0xa6
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF77
	.byte	0x2
	.byte	0xa7
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x10
	.long	0x512
	.byte	0x1
	.long	0x3f
	.uleb128 0x11
	.long	0x512
	.uleb128 0x11
	.long	0x518
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x36a
	.uleb128 0x5
	.byte	0x8
	.long	0x467
	.uleb128 0x5
	.byte	0x8
	.long	0x4fd
	.uleb128 0x12
	.long	0x530
	.byte	0x1
	.uleb128 0x11
	.long	0x512
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x524
	.uleb128 0x10
	.long	0x55f
	.byte	0x1
	.long	0x3f
	.uleb128 0x11
	.long	0x512
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x55f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x301
	.uleb128 0x5
	.byte	0x8
	.long	0x536
	.uleb128 0x8
	.long	0x57b
	.long	0x301
	.uleb128 0x9
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.long	0x58c
	.long	0x301
	.uleb128 0x13
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x2
	.byte	0x8e
	.long	0x597
	.uleb128 0x5
	.byte	0x8
	.long	0x59d
	.uleb128 0x12
	.long	0x5ae
	.byte	0x1
	.uleb128 0x11
	.long	0x5ae
	.uleb128 0x11
	.long	0x512
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30c
	.uleb128 0x5
	.byte	0x8
	.long	0x317
	.uleb128 0x2
	.long	.LASF79
	.byte	0x2
	.byte	0x99
	.long	0x5c5
	.uleb128 0x12
	.long	0x5d6
	.byte	0x1
	.uleb128 0x11
	.long	0x518
	.uleb128 0x11
	.long	0xa6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5ba
	.uleb128 0x14
	.long	0x616
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x1b
	.long	0x5ae
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.string	"dev"
	.byte	0x1
	.byte	0x1b
	.long	0x512
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x17
	.long	0x691
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x3f
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.long	0x512
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x2a
	.long	0x518
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.byte	0x2e
	.long	0x55f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.byte	0xac
	.quad	.L11
	.byte	0x0
	.uleb128 0x17
	.long	0x6f2
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xb4
	.long	0x55f
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.string	"str"
	.byte	0x1
	.byte	0xb4
	.long	0x69
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0xb6
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.byte	0xb7
	.long	0x55f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x14
	.long	0x738
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"dev"
	.byte	0x1
	.byte	0xc5
	.long	0x512
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.byte	0xc5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0xc7
	.long	0x467
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF85
	.byte	0x4
	.byte	0x91
	.long	0x2d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x4
	.byte	0x92
	.long	0x2d5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x753
	.long	0x5dc
	.string	"usb_attach"
	.long	0x616
	.string	"usb_generic_handle_packet"
	.long	0x691
	.string	"set_usb_string"
	.long	0x6f2
	.string	"usb_send_msg"
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
.LASF56:
	.string	"handle_destroy"
.LASF71:
	.string	"devaddr"
.LASF32:
	.string	"_shortbuf"
.LASF42:
	.string	"_IO_lock_t"
.LASF88:
	.string	"/home/remco/Projects/Argos/src/hw/usb.c"
.LASF21:
	.string	"_IO_buf_end"
.LASF75:
	.string	"complete_opaque"
.LASF79:
	.string	"USBCallback"
.LASF81:
	.string	"usb_attach"
.LASF19:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF89:
	.string	"/home/remco/Projects/Argos/src"
.LASF13:
	.string	"_flags"
.LASF52:
	.string	"index"
.LASF29:
	.string	"_old_offset"
.LASF25:
	.string	"_markers"
.LASF8:
	.string	"short int"
.LASF78:
	.string	"usb_attachfn"
.LASF49:
	.string	"USBPort"
.LASF57:
	.string	"speed"
.LASF60:
	.string	"handle_data"
.LASF51:
	.string	"opaque"
.LASF17:
	.string	"_IO_write_base"
.LASF12:
	.string	"long long unsigned int"
.LASF70:
	.string	"USBPacket"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF83:
	.string	"set_usb_string"
.LASF76:
	.string	"cancel_cb"
.LASF9:
	.string	"size_t"
.LASF31:
	.string	"_vtable_offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"devep"
.LASF55:
	.string	"handle_packet"
.LASF47:
	.string	"_pos"
.LASF54:
	.string	"USBDevice"
.LASF82:
	.string	"usb_generic_handle_packet"
.LASF5:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF58:
	.string	"handle_reset"
.LASF48:
	.string	"uint8_t"
.LASF62:
	.string	"devname"
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
.LASF68:
	.string	"setup_len"
.LASF87:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF84:
	.string	"usb_send_msg"
.LASF65:
	.string	"data_buf"
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
.LASF64:
	.string	"setup_buf"
.LASF67:
	.string	"setup_state"
.LASF86:
	.string	"stdout"
.LASF90:
	.string	"fail"
.LASF15:
	.string	"_IO_read_end"
.LASF2:
	.string	"long int"
.LASF53:
	.string	"next"
.LASF66:
	.string	"remote_wakeup"
.LASF61:
	.string	"addr"
.LASF74:
	.string	"complete_cb"
.LASF77:
	.string	"cancel_opaque"
.LASF33:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF85:
	.string	"stdin"
.LASF43:
	.string	"_IO_FILE"
.LASF80:
	.string	"port"
.LASF50:
	.string	"attach"
.LASF6:
	.string	"unsigned char"
.LASF46:
	.string	"_sbuf"
.LASF69:
	.string	"setup_index"
.LASF18:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"state"
.LASF10:
	.string	"__off_t"
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
.LASF59:
	.string	"handle_control"
.LASF11:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
