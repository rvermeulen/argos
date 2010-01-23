	.file	"wavcapture.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 16
	.type	wav_capture_ops, @object
	.size	wav_capture_ops, 16
wav_capture_ops:
	.quad	wav_capture_info
	.quad	wav_capture_destroy
	.text
	.p2align 4,,15
	.type	le_store, @function
le_store:
.LFB111:
	.file 1 "audio/wavcapture.c"
	.loc 1 17 0
	.loc 1 19 0
	xorl	%eax, %eax
	jmp	.L8
	.p2align 4,,7
.L10:
	.loc 1 20 0
	movb	%sil, (%rdi)
	.loc 1 19 0
	incl	%eax
	.loc 1 21 0
	shrl	$8, %esi
	incq	%rdi
.L8:
	.loc 1 19 0
	cmpl	%edx, %eax
	jl	.L10
	rep ; ret
.LFE111:
	.size	le_store, .-le_store
	.p2align 4,,15
	.type	wav_notify, @function
wav_notify:
.LFB112:
	.loc 1 26 0
	.loc 1 28 0
	rep ; ret
.LFE112:
	.size	wav_notify, .-wav_notify
	.p2align 4,,15
	.type	wav_destroy, @function
wav_destroy:
.LFB113:
	.loc 1 32 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 39 0
	cmpq	$0, (%rdi)
	.loc 1 36 0
	movl	8(%rdi), %ebp
	.loc 1 32 0
	movq	%rdi, %rbx
	.loc 1 37 0
	leal	36(%rbp), %esi
	.loc 1 39 0
	jne	.L14
	.loc 1 51 0
	movq	16(%rbx), %rdi
	call	qemu_free
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L14:
	.loc 1 40 0
	leaq	4(%rsp), %rdi
	movl	$4, %edx
	call	le_store
	.loc 1 41 0
	movl	%ebp, %esi
	movq	%rsp, %rdi
	movl	$4, %edx
	call	le_store
	.loc 1 43 0
	movq	(%rbx), %rdi
	xorl	%edx, %edx
	movl	$4, %esi
	call	qemu_fseek
	.loc 1 44 0
	movq	(%rbx), %rdi
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	call	qemu_put_buffer
	.loc 1 46 0
	movq	(%rbx), %rdi
	movl	$1, %edx
	movl	$32, %esi
	call	qemu_fseek
	.loc 1 47 0
	movq	(%rbx), %rdi
	movq	%rsp, %rsi
	movl	$4, %edx
	call	qemu_put_buffer
	.loc 1 48 0
	movq	(%rbx), %rdi
	call	qemu_fclose
	.loc 1 51 0
	movq	16(%rbx), %rdi
	call	qemu_free
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE113:
	.size	wav_destroy, .-wav_destroy
	.p2align 4,,15
	.type	wav_capture, @function
wav_capture:
.LFB114:
	.loc 1 55 0
	movq	%rbx, -16(%rsp)
.LCFI3:
	movq	%r12, -8(%rsp)
.LCFI4:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI5:
	.loc 1 58 0
	movq	(%rdi), %rdi
	.loc 1 55 0
	movl	%edx, %r12d
	.loc 1 58 0
	call	qemu_put_buffer
	.loc 1 59 0
	addl	%r12d, 8(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE114:
	.size	wav_capture, .-wav_capture
	.p2align 4,,15
	.type	wav_capture_destroy, @function
wav_capture_destroy:
.LFB115:
	.loc 1 63 0
	.loc 1 63 0
	movq	%rdi, %rax
	.loc 1 66 0
	movq	40(%rdi), %rdi
	movq	%rax, %rsi
	jmp	AUD_del_capture
.LFE115:
	.size	wav_capture_destroy, .-wav_capture_destroy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"<not available>"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Capturing audio(%d,%d,%d) to %s: %d bytes\n"
	.text
	.p2align 4,,15
	.type	wav_capture_info, @function
wav_capture_info:
.LFB116:
	.loc 1 70 0
	.loc 1 72 0
	movq	16(%rdi), %rax
	.loc 1 74 0
	movl	32(%rdi), %ecx
	movl	$.LC0, %r8d
	movl	28(%rdi), %edx
	movl	24(%rdi), %esi
	movl	8(%rdi), %r9d
	movl	$.LC1, %edi
	testq	%rax, %rax
	cmovne	%rax, %r8
	xorl	%eax, %eax
	jmp	term_printf
.LFE116:
	.size	wav_capture_info, .-wav_capture_info
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"incorrect bit count %d, must be 8 or 16\n"
	.section	.rodata.str1.1
.LC5:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Failed to open wave file `%s'\nReason: %s\n"
	.align 8
.LC3:
	.string	"incorrect channel count %d, must be 1 or 2\n"
	.align 8
.LC4:
	.string	"Could not allocate memory for wav capture (%zu bytes)"
	.section	.rodata.str1.1
.LC7:
	.string	"Failed to add audio capture\n"
	.text
	.p2align 4,,15
.globl wav_start_capture
	.type	wav_start_capture, @function
wav_start_capture:
.LFB117:
	.loc 1 86 0
	pushq	%r15
.LCFI6:
	movl	%edx, %r15d
	pushq	%r14
.LCFI7:
	movl	%ecx, %r14d
	pushq	%r13
.LCFI8:
	pushq	%r12
.LCFI9:
	pushq	%rbp
.LCFI10:
	pushq	%rbx
.LCFI11:
	subq	$136, %rsp
.LCFI12:
	.loc 1 99 0
	cmpl	$8, %ecx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$16, %ecx
	setne	%al
	.loc 1 86 0
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	.loc 1 99 0
	testl	%edx, %eax
	.loc 1 86 0
	movl	%r8d, 12(%rsp)
	.loc 1 88 0
	movb	$82, 80(%rsp)
	movb	$73, 81(%rsp)
	movb	$70, 82(%rsp)
	.loc 1 100 0
	movl	%ecx, %esi
	.loc 1 88 0
	movb	$70, 83(%rsp)
	movb	$0, 84(%rsp)
	.loc 1 100 0
	movl	$.LC2, %edi
	.loc 1 88 0
	movb	$0, 85(%rsp)
	movb	$0, 86(%rsp)
	movb	$0, 87(%rsp)
	movb	$87, 88(%rsp)
	movb	$65, 89(%rsp)
	movb	$86, 90(%rsp)
	movb	$69, 91(%rsp)
	movb	$102, 92(%rsp)
	movb	$109, 93(%rsp)
	movb	$116, 94(%rsp)
	movb	$32, 95(%rsp)
	movb	$16, 96(%rsp)
	movb	$0, 97(%rsp)
	movb	$0, 98(%rsp)
	movb	$0, 99(%rsp)
	movb	$1, 100(%rsp)
	movb	$0, 101(%rsp)
	movb	$2, 102(%rsp)
	movb	$0, 103(%rsp)
	movb	$68, 104(%rsp)
	movb	$-84, 105(%rsp)
	movb	$0, 106(%rsp)
	movb	$0, 107(%rsp)
	movb	$16, 108(%rsp)
	movb	$-79, 109(%rsp)
	movb	$2, 110(%rsp)
	movb	$0, 111(%rsp)
	movb	$4, 112(%rsp)
	movb	$0, 113(%rsp)
	movb	$16, 114(%rsp)
	movb	$0, 115(%rsp)
	movb	$100, 116(%rsp)
	movb	$97, 117(%rsp)
	movb	$116, 118(%rsp)
	movb	$97, 119(%rsp)
	movb	$0, 120(%rsp)
	movb	$0, 121(%rsp)
	movb	$0, 122(%rsp)
	movb	$0, 123(%rsp)
	.loc 1 99 0
	jne	.L32
	.loc 1 104 0
	movl	12(%rsp), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.L33
	.loc 1 110 0
	xorl	%ebx, %ebx
	cmpl	$2, 12(%rsp)
	.loc 1 114 0
	movl	$1, %r13d
	movl	%r13d, %eax
	.loc 1 122 0
	movl	$48, %edi
	.loc 1 113 0
	movl	%r15d, 64(%rsp)
	.loc 1 116 0
	movl	$0, 76(%rsp)
	.loc 1 118 0
	movq	$wav_notify, 32(%rsp)
	.loc 1 119 0
	movq	$wav_capture, 40(%rsp)
	.loc 1 120 0
	movq	$wav_destroy, 48(%rsp)
	.loc 1 110 0
	sete	%bl
	.loc 1 111 0
	xorl	%r12d, %r12d
	cmpl	$16, %ecx
	sete	%r12b
	.loc 1 114 0
	movl	%ebx, %ecx
	sall	%cl, %eax
	.loc 1 115 0
	cmpl	$1, %r12d
	.loc 1 114 0
	movl	%eax, 68(%rsp)
	.loc 1 115 0
	sbbl	%eax, %eax
	notl	%eax
	andl	$3, %eax
	movl	%eax, 72(%rsp)
	.loc 1 122 0
	call	qemu_mallocz
	.loc 1 123 0
	testq	%rax, %rax
	.loc 1 122 0
	movq	%rax, %rbp
	.loc 1 123 0
	je	.L34
	.loc 1 130 0
	cmpl	$1, %r12d
	.loc 1 129 0
	leal	(%r12,%rbx), %ebx
	.loc 1 132 0
	leaq	80(%rsp), %r12
	.loc 1 130 0
	sbbl	%eax, %eax
	.loc 1 132 0
	movl	68(%rsp), %esi
	movl	$2, %edx
	.loc 1 130 0
	andl	$-8, %eax
	.loc 1 132 0
	leaq	22(%r12), %rdi
	.loc 1 130 0
	addl	$16, %eax
	movb	%al, 114(%rsp)
	.loc 1 132 0
	call	le_store
	.loc 1 133 0
	leaq	24(%r12), %rdi
	movl	$4, %edx
	movl	%r15d, %esi
	call	le_store
	.loc 1 134 0
	movl	%ebx, %ecx
	leaq	28(%r12), %rdi
	movl	%r15d, %esi
	sall	%cl, %esi
	movl	$4, %edx
	call	le_store
	.loc 1 135 0
	movl	%ebx, %ecx
	leaq	32(%r12), %rdi
	movl	$2, %edx
	sall	%cl, %r13d
	movl	%r13d, %esi
	call	le_store
	.loc 1 137 0
	movq	16(%rsp), %rdi
	movl	$.LC5, %esi
	call	qemu_fopen
	.loc 1 138 0
	testq	%rax, %rax
	.loc 1 137 0
	movq	%rax, (%rbp)
	.loc 1 138 0
	je	.L35
	.loc 1 145 0
	movq	16(%rsp), %rdi
	call	qemu_strdup
	.loc 1 146 0
	movl	%r14d, 28(%rbp)
	.loc 1 145 0
	movq	%rax, 16(%rbp)
	.loc 1 150 0
	movl	$44, %edx
	.loc 1 147 0
	movl	12(%rsp), %eax
	.loc 1 150 0
	movq	(%rbp), %rdi
	movq	%r12, %rsi
	.loc 1 148 0
	movl	%r15d, 24(%rbp)
	.loc 1 147 0
	movl	%eax, 32(%rbp)
	.loc 1 150 0
	call	qemu_put_buffer
	.loc 1 152 0
	leaq	32(%rsp), %rdx
	leaq	64(%rsp), %rsi
	xorl	%edi, %edi
	movq	%rbp, %rcx
	call	AUD_add_capture
	.loc 1 153 0
	testq	%rax, %rax
	je	.L36
	.loc 1 161 0
	movq	%rax, 40(%rbp)
	.loc 1 162 0
	movq	24(%rsp), %rdx
	movq	%rbp, (%rdx)
	.loc 1 163 0
	movq	wav_capture_ops(%rip), %rax
	movq	%rax, 8(%rdx)
	movq	wav_capture_ops+8(%rip), %rax
	movq	%rax, 16(%rdx)
	.loc 1 164 0
	xorl	%eax, %eax
.L20:
	.loc 1 165 0
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L35:
	.loc 1 139 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	16(%rsp), %rsi
	movq	%rax, %rdx
	movl	$.LC6, %edi
	xorl	%eax, %eax
	call	term_printf
.L30:
	.loc 1 157 0
	movq	%rbp, %rdi
	call	qemu_free
	.loc 1 158 0
	movl	$-1, %eax
	jmp	.L20
.L33:
	.loc 1 105 0
	movl	12(%rsp), %esi
	movl	$.LC3, %edi
.L32:
	xorl	%eax, %eax
	call	term_printf
	.loc 1 158 0
	movl	$-1, %eax
	jmp	.L20
.L34:
	.loc 1 124 0
	xorl	%eax, %eax
	movl	$48, %esi
	movl	$.LC4, %edi
	call	term_printf
	.loc 1 158 0
	movl	$-1, %eax
	jmp	.L20
.L36:
	.loc 1 154 0
	movl	$.LC7, %edi
	call	term_printf
	.loc 1 155 0
	movq	16(%rbp), %rdi
	call	qemu_free
	.loc 1 156 0
	movq	(%rbp), %rdi
	call	qemu_fclose
	jmp	.L30
.LFE117:
	.size	wav_start_capture, .-wav_start_capture
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI4-.LFB114
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI6-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0xc0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI4-.LFB114
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI6-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0xc0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE13:
	.file 2 "/usr/include/stdint.h"
	.file 3 "audio/audio.h"
	.file 4 "./qemu-common.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x85c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF98
	.byte	0x1
	.long	.LASF99
	.long	.LASF100
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
	.byte	0x7
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
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
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2c5
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
	.long	0x90
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
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0xa6
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
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2c5
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
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x34
	.long	0x46
	.uleb128 0xe
	.long	0x313
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x73
	.long	0x31e
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x313
	.uleb128 0x5
	.byte	0x8
	.long	0x2f1
	.uleb128 0x5
	.byte	0x8
	.long	0x307
	.uleb128 0x11
	.long	0x363
	.byte	0x4
	.byte	0x3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF51
	.sleb128 0
	.uleb128 0x12
	.long	.LASF52
	.sleb128 1
	.uleb128 0x12
	.long	.LASF53
	.sleb128 2
	.uleb128 0x12
	.long	.LASF54
	.sleb128 3
	.uleb128 0x12
	.long	.LASF55
	.sleb128 4
	.uleb128 0x12
	.long	.LASF56
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x3
	.byte	0x27
	.long	0x336
	.uleb128 0x13
	.long	0x3af
	.byte	0x10
	.byte	0x3
	.byte	0x34
	.uleb128 0xb
	.long	.LASF58
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x3
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"fmt"
	.byte	0x3
	.byte	0x32
	.long	0x363
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x3
	.byte	0x34
	.long	0x36e
	.uleb128 0x11
	.long	0x3cf
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.uleb128 0x12
	.long	.LASF62
	.sleb128 0
	.uleb128 0x12
	.long	.LASF63
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x3
	.byte	0x39
	.long	0x3ba
	.uleb128 0x8
	.long	0x411
	.long	.LASF65
	.byte	0x18
	.byte	0x3
	.byte	0x3b
	.uleb128 0xb
	.long	.LASF66
	.byte	0x3
	.byte	0x3c
	.long	0x422
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x3
	.byte	0x3d
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF68
	.byte	0x3
	.byte	0x3e
	.long	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	0x422
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x3cf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x411
	.uleb128 0xe
	.long	0x43e
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x428
	.uleb128 0x8
	.long	0x46d
	.long	.LASF69
	.byte	0x10
	.byte	0x3
	.byte	0x41
	.uleb128 0xb
	.long	.LASF70
	.byte	0x3
	.byte	0x42
	.long	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF68
	.byte	0x3
	.byte	0x43
	.long	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.long	0x492
	.byte	0x10
	.byte	0x3
	.byte	0x49
	.uleb128 0xb
	.long	.LASF71
	.byte	0x3
	.byte	0x49
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x3
	.byte	0x49
	.long	0x4cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x4c9
	.long	.LASF73
	.byte	0x28
	.byte	0x3
	.byte	0x46
	.uleb128 0xb
	.long	.LASF74
	.byte	0x3
	.byte	0x47
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"ops"
	.byte	0x3
	.byte	0x48
	.long	0x444
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF75
	.byte	0x3
	.byte	0x49
	.long	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x492
	.uleb128 0x5
	.byte	0x8
	.long	0x4c9
	.uleb128 0x2
	.long	.LASF73
	.byte	0x3
	.byte	0x4a
	.long	0x492
	.uleb128 0x2
	.long	.LASF76
	.byte	0x3
	.byte	0x4d
	.long	0x4eb
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.uleb128 0x13
	.long	0x55a
	.byte	0x30
	.byte	0x1
	.byte	0xd
	.uleb128 0x14
	.string	"f"
	.byte	0x1
	.byte	0x6
	.long	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.byte	0x7
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.byte	0x8
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0x9
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.byte	0xa
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1
	.byte	0xb
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"cap"
	.byte	0x1
	.byte	0xc
	.long	0x55a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4e0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x1
	.byte	0xd
	.long	0x4f1
	.uleb128 0x15
	.long	0x5bc
	.long	.LASF81
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x10
	.long	0x32a
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x10
	.long	0x2fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x10
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.long	0x5f5
	.long	.LASF82
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x19
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"cmd"
	.byte	0x1
	.byte	0x19
	.long	0x3cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x15
	.long	0x664
	.long	.LASF83
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x1f
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"wav"
	.byte	0x1
	.byte	0x21
	.long	0x664
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x22
	.long	0x66a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x23
	.long	0x66a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.byte	0x24
	.long	0x2fc
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.byte	0x25
	.long	0x2fc
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x560
	.uleb128 0xc
	.long	0x67a
	.long	0x2f1
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x15
	.long	0x6cb
	.long	.LASF88
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x36
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"wav"
	.byte	0x1
	.byte	0x38
	.long	0x664
	.byte	0x0
	.uleb128 0x15
	.long	0x702
	.long	.LASF90
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x3e
	.long	0xa6
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.string	"wav"
	.byte	0x1
	.byte	0x40
	.long	0x664
	.byte	0x0
	.uleb128 0x15
	.long	0x748
	.long	.LASF91
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x45
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"wav"
	.byte	0x1
	.byte	0x47
	.long	0x664
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF78
	.byte	0x1
	.byte	0x48
	.long	0xa8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x81a
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x54
	.long	0x81a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.byte	0x54
	.long	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.byte	0x54
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.string	"wav"
	.byte	0x1
	.byte	0x57
	.long	0x664
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.string	"hdr"
	.byte	0x1
	.byte	0x58
	.long	0x820
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x17
	.string	"as"
	.byte	0x1
	.byte	0x5e
	.long	0x3af
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x17
	.string	"ops"
	.byte	0x1
	.byte	0x5f
	.long	0x3da
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"cap"
	.byte	0x1
	.byte	0x61
	.long	0x55a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4d5
	.uleb128 0xc
	.long	0x830
	.long	0x2f1
	.uleb128 0xd
	.long	0x5b
	.byte	0x2b
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x5
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x5
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.byte	0x4f
	.long	0x444
	.byte	0x9
	.byte	0x3
	.quad	wav_capture_ops
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.long	0x860
	.long	0x748
	.string	"wav_start_capture"
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
.LASF67:
	.string	"capture"
.LASF99:
	.string	"audio/wavcapture.c"
.LASF69:
	.string	"capture_ops"
.LASF24:
	.string	"_IO_save_end"
.LASF78:
	.string	"path"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF84:
	.string	"rlen"
.LASF97:
	.string	"wav_capture_ops"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF79:
	.string	"bits"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF74:
	.string	"opaque"
.LASF94:
	.string	"shift"
.LASF93:
	.string	"bits16"
.LASF43:
	.string	"_IO_FILE"
.LASF56:
	.string	"AUD_FMT_S32"
.LASF6:
	.string	"unsigned char"
.LASF52:
	.string	"AUD_FMT_S8"
.LASF5:
	.string	"char"
.LASF77:
	.string	"bytes"
.LASF42:
	.string	"_IO_lock_t"
.LASF50:
	.string	"QEMUFile"
.LASF51:
	.string	"AUD_FMT_U8"
.LASF14:
	.string	"_IO_read_ptr"
.LASF60:
	.string	"endianness"
.LASF47:
	.string	"_pos"
.LASF95:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF64:
	.string	"audcnotification_e"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF83:
	.string	"wav_destroy"
.LASF16:
	.string	"_IO_read_base"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF54:
	.string	"AUD_FMT_S16"
.LASF73:
	.string	"CaptureState"
.LASF3:
	.string	"long long int"
.LASF92:
	.string	"stereo"
.LASF65:
	.string	"audio_capture_ops"
.LASF19:
	.string	"_IO_write_end"
.LASF53:
	.string	"AUD_FMT_U16"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF98:
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
.LASF62:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF46:
	.string	"_sbuf"
.LASF59:
	.string	"nchannels"
.LASF13:
	.string	"_flags"
.LASF55:
	.string	"AUD_FMT_U32"
.LASF80:
	.string	"WAVState"
.LASF90:
	.string	"wav_capture_destroy"
.LASF75:
	.string	"entries"
.LASF34:
	.string	"_offset"
.LASF70:
	.string	"info"
.LASF66:
	.string	"notify"
.LASF89:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF68:
	.string	"destroy"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF81:
	.string	"le_store"
.LASF26:
	.string	"_chain"
.LASF85:
	.string	"dlen"
.LASF63:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF88:
	.string	"wav_capture"
.LASF57:
	.string	"audfmt_e"
.LASF11:
	.string	"__off64_t"
.LASF100:
	.string	"/home/remco/Projects/Argos/src"
.LASF61:
	.string	"audsettings_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF71:
	.string	"le_next"
.LASF31:
	.string	"_vtable_offset"
.LASF91:
	.string	"wav_capture_info"
.LASF7:
	.string	"signed char"
.LASF72:
	.string	"le_prev"
.LASF82:
	.string	"wav_notify"
.LASF86:
	.string	"datalen"
.LASF15:
	.string	"_IO_read_end"
.LASF87:
	.string	"rifflen"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF58:
	.string	"freq"
.LASF4:
	.string	"short unsigned int"
.LASF96:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF101:
	.string	"wav_start_capture"
.LASF76:
	.string	"CaptureVoiceOut"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
