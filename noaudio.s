	.file	"noaudio.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"none"
.LC1:
	.string	"Timer based audio emulation"
.globl no_audio_driver
	.data
	.align 32
	.type	no_audio_driver, @object
	.size	no_audio_driver, 72
no_audio_driver:
	.quad	.LC0
	.quad	.LC1
	.quad	0
	.quad	no_audio_init
	.quad	no_audio_fini
	.quad	no_pcm_ops
	.long	1
	.long	2147483647
	.long	2147483647
	.long	128
	.long	120
	.zero	4
	.align 32
	.type	no_pcm_ops, @object
	.size	no_pcm_ops, 80
no_pcm_ops:
	.quad	no_init_out
	.quad	no_fini_out
	.quad	no_run_out
	.quad	no_write
	.quad	no_ctl_out
	.quad	no_init_in
	.quad	no_fini_in
	.quad	no_run_in
	.quad	no_read
	.quad	no_ctl_in
	.text
	.p2align 4,,15
	.type	no_run_out, @function
no_run_out:
.LFB101:
	.file 1 "audio/noaudio.c"
	.loc 1 42 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 42 0
	movq	%rdi, %rbx
	.loc 1 49 0
	call	audio_pcm_hw_get_live_out
	movl	%eax, %ebp
	.loc 1 51 0
	xorl	%eax, %eax
	.loc 1 50 0
	testl	%ebp, %ebp
	jne	.L7
	.loc 1 64 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L7:
	.loc 1 54 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 56 0
	movslq	32(%rbx),%rdi
	.loc 1 55 0
	movq	%rax, %rcx
	subq	120(%rbx), %rcx
	.loc 1 54 0
	movq	%rax, %rsi
	.loc 1 56 0
	imulq	%rcx, %rdi
.LBB2:
	.loc 1 57 0
	movl	$2147483647, %ecx
.LBE2:
	.loc 1 56 0
	movq	%rdi, %rax
	cqto
	idivq	ticks_per_sec(%rip)
	.loc 1 60 0
	movq	%rsi, 120(%rbx)
.LBB3:
	.loc 1 57 0
	cmpq	%rax, %rcx
	movq	%rax, %rdx
.LBE3:
	.loc 1 62 0
	movl	48(%rbx), %eax
.LBB4:
	.loc 1 57 0
	cmovle	%rcx, %rdx
.LBE4:
	.loc 1 58 0
	movl	28(%rbx), %ecx
	sarq	%cl, %rdx
.LBB5:
	.loc 1 61 0
	cmpl	%edx, %ebp
	movl	%edx, %ecx
	cmovle	%ebp, %ecx
.LBE5:
	.loc 1 62 0
	addl	%ecx, %eax
	cltd
	idivl	72(%rbx)
	.loc 1 63 0
	movl	%ecx, %eax
	.loc 1 62 0
	movl	%edx, 48(%rbx)
	.loc 1 64 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE101:
	.size	no_run_out, .-no_run_out
	.p2align 4,,15
	.type	no_write, @function
no_write:
.LFB102:
	.loc 1 67 0
	.loc 1 68 0
	jmp	audio_pcm_sw_write
.LFE102:
	.size	no_write, .-no_write
	.p2align 4,,15
	.type	no_init_out, @function
no_init_out:
.LFB103:
	.loc 1 72 0
	pushq	%rbx
.LCFI3:
	.loc 1 72 0
	movq	%rdi, %rbx
	.loc 1 73 0
	leaq	8(%rdi), %rdi
	call	audio_pcm_init_info
	.loc 1 74 0
	movl	$1024, 72(%rbx)
	.loc 1 76 0
	xorl	%eax, %eax
	popq	%rbx
	ret
.LFE103:
	.size	no_init_out, .-no_init_out
	.p2align 4,,15
	.type	no_fini_out, @function
no_fini_out:
.LFB104:
	.loc 1 79 0
	.loc 1 80 0
	rep ; ret
.LFE104:
	.size	no_fini_out, .-no_fini_out
	.p2align 4,,15
	.type	no_ctl_out, @function
no_ctl_out:
.LFB105:
	.loc 1 84 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI4:
	.loc 1 84 0
	leaq	0(,%rdx,4), %rax
	movl	$.L12, %edx
	subq	%rax, %rdx
	leaq	55(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L12:
	.loc 1 88 0
	xorl	%eax, %eax
	addq	$64, %rsp
	ret
.LFE105:
	.size	no_ctl_out, .-no_ctl_out
	.p2align 4,,15
	.type	no_init_in, @function
no_init_in:
.LFB106:
	.loc 1 91 0
	pushq	%rbx
.LCFI5:
	.loc 1 91 0
	movq	%rdi, %rbx
	.loc 1 92 0
	leaq	4(%rdi), %rdi
	call	audio_pcm_init_info
	.loc 1 93 0
	movl	$1024, 72(%rbx)
	.loc 1 95 0
	xorl	%eax, %eax
	popq	%rbx
	ret
.LFE106:
	.size	no_init_in, .-no_init_in
	.p2align 4,,15
	.type	no_fini_in, @function
no_fini_in:
.LFB107:
	.loc 1 98 0
	.loc 1 99 0
	rep ; ret
.LFE107:
	.size	no_fini_in, .-no_fini_in
	.p2align 4,,15
	.type	no_run_in, @function
no_run_in:
.LFB108:
	.loc 1 103 0
	movq	%rbx, -16(%rsp)
.LCFI6:
	movq	%rbp, -8(%rsp)
.LCFI7:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI8:
	.loc 1 105 0
	call	audio_pcm_hw_get_live_in
	.loc 1 106 0
	movl	72(%rbx), %edx
	.loc 1 107 0
	xorl	%ecx, %ecx
	.loc 1 109 0
	movl	%edx, %ebp
	subl	%eax, %ebp
	jne	.L20
	.loc 1 120 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%ecx, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L20:
.LBB6:
	.loc 1 110 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 112 0
	movslq	28(%rbx),%rdi
	.loc 1 111 0
	movq	%rax, %rcx
	subq	112(%rbx), %rcx
	.loc 1 110 0
	movq	%rax, %rsi
	.loc 1 112 0
	imulq	%rcx, %rdi
	.loc 1 116 0
	movl	24(%rbx), %ecx
	.loc 1 112 0
	movq	%rdi, %rax
	cqto
	idivq	ticks_per_sec(%rip)
	.loc 1 114 0
	movq	%rsi, 112(%rbx)
.LBE6:
	.loc 1 120 0
	movq	8(%rsp), %rbx
.LBB7:
	.loc 1 112 0
	movq	%rax, %rdi
.LBB8:
	.loc 1 115 0
	movl	$2147483647, %eax
	cmpq	%rdi, %rax
	cmovg	%rdi, %rax
.LBE8:
	.loc 1 116 0
	sarq	%cl, %rax
.LBB9:
	.loc 1 117 0
	cmpl	%eax, %ebp
	movl	%eax, %ecx
	cmovl	%ebp, %ecx
.LBE9:
.LBE7:
	.loc 1 120 0
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	movl	%ecx, %eax
	ret
.LFE108:
	.size	no_run_in, .-no_run_in
	.p2align 4,,15
	.type	no_read, @function
no_read:
.LFB109:
	.loc 1 123 0
	pushq	%rbx
.LCFI9:
	.loc 1 125 0
	movq	80(%rdi), %rax
	.loc 1 124 0
	movl	24(%rdi), %ecx
	.loc 1 125 0
	movl	52(%rax), %eax
	subl	56(%rdi), %eax
	.loc 1 124 0
	sarl	%cl, %edx
.LBB10:
	.loc 1 126 0
	cmpl	%eax, %edx
	movl	%eax, %ebx
	cmovle	%edx, %ebx
.LBE10:
	.loc 1 127 0
	addq	$4, %rdi
	movl	%ebx, %edx
	call	audio_pcm_info_clear_buf
	.loc 1 129 0
	movl	%ebx, %eax
	popq	%rbx
	ret
.LFE109:
	.size	no_read, .-no_read
	.p2align 4,,15
	.type	no_ctl_in, @function
no_ctl_in:
.LFB110:
	.loc 1 132 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI10:
	.loc 1 132 0
	leaq	0(,%rdx,4), %rax
	movl	$.L25, %edx
	subq	%rax, %rdx
	leaq	55(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L25:
	.loc 1 136 0
	xorl	%eax, %eax
	addq	$64, %rsp
	ret
.LFE110:
	.size	no_ctl_in, .-no_ctl_in
	.p2align 4,,15
	.type	no_audio_init, @function
no_audio_init:
.LFB111:
	.loc 1 139 0
	.loc 1 141 0
	movl	$no_audio_init, %eax
	ret
.LFE111:
	.size	no_audio_init, .-no_audio_init
	.p2align 4,,15
	.type	no_audio_fini, @function
no_audio_fini:
.LFB112:
	.loc 1 144 0
	.loc 1 145 0
	rep ; ret
.LFE112:
	.size	no_audio_fini, .-no_audio_fini
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
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI3-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI4-.LFB105
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI5-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI7-.LFB108
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI9-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI10-.LFB110
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE22:
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
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI3-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI4-.LFB105
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI5-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI7-.LFB108
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI9-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI10-.LFB110
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE23:
	.file 2 "audio/audio_int.h"
	.file 3 "audio/mixeng.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "audio/audio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 11 "./qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x134b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF181
	.byte	0x1
	.long	.LASF182
	.long	.LASF183
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
	.uleb128 0x5
	.byte	0x8
	.long	0x3f
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
	.long	0x75
	.uleb128 0x6
	.long	0x7a
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
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0x9
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.long	0xcc
	.uleb128 0x8
	.uleb128 0x9
	.long	0x299
	.long	.LASF44
	.byte	0xd8
	.byte	0x7
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x8
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x8
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x8
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x8
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x8
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x8
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x8
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x8
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x8
	.value	0x122
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.value	0x124
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x8
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x8
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.value	0x132
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.value	0x136
	.long	0x2f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x8
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x8
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x8
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x8
	.value	0x150
	.long	0x2f9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x8
	.byte	0xb4
	.uleb128 0x9
	.long	0x2d7
	.long	.LASF45
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0xc
	.long	.LASF46
	.byte	0x8
	.byte	0xbb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x8
	.byte	0xbc
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF48
	.byte	0x8
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a0
	.uleb128 0x5
	.byte	0x8
	.long	0xcd
	.uleb128 0xd
	.long	0x2f3
	.long	0x7a
	.uleb128 0xe
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x299
	.uleb128 0xd
	.long	0x309
	.long	0x7a
	.uleb128 0xe
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.long	0x320
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x1e
	.long	0x32b
	.uleb128 0x5
	.byte	0x8
	.long	0x331
	.uleb128 0xf
	.long	0x342
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x11
	.long	0x36f
	.byte	0x4
	.byte	0x6
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
	.byte	0x6
	.byte	0x27
	.long	0x342
	.uleb128 0x13
	.long	0x3bb
	.byte	0x10
	.byte	0x6
	.byte	0x34
	.uleb128 0xc
	.long	.LASF58
	.byte	0x6
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF59
	.byte	0x6
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"fmt"
	.byte	0x6
	.byte	0x32
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF60
	.byte	0x6
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x34
	.long	0x37a
	.uleb128 0x11
	.long	0x3db
	.byte	0x4
	.byte	0x6
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
	.byte	0x6
	.byte	0x39
	.long	0x3c6
	.uleb128 0x9
	.long	0x41d
	.long	.LASF65
	.byte	0x18
	.byte	0x6
	.byte	0x3b
	.uleb128 0xc
	.long	.LASF66
	.byte	0x6
	.byte	0x3c
	.long	0x42e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x6
	.byte	0x3d
	.long	0x44a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF68
	.byte	0x6
	.byte	0x3e
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x42e
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3db
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x41d
	.uleb128 0xf
	.long	0x44a
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x434
	.uleb128 0x5
	.byte	0x8
	.long	0x314
	.uleb128 0x2
	.long	.LASF69
	.byte	0x6
	.byte	0x4c
	.long	0x461
	.uleb128 0x9
	.long	0x524
	.long	.LASF69
	.byte	0x98
	.byte	0x6
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x6b
	.long	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF71
	.byte	0x2
	.byte	0x6c
	.long	0xb45
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x6d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"buf"
	.byte	0x2
	.byte	0x6e
	.long	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0x6f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF74
	.byte	0x2
	.byte	0x70
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x71
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.long	.LASF76
	.byte	0x2
	.byte	0x72
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"hw"
	.byte	0x2
	.byte	0x73
	.long	0xb81
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0x74
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.string	"vol"
	.byte	0x2
	.byte	0x75
	.long	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.byte	0x76
	.long	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0x77
	.long	0xb56
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x6
	.byte	0x4d
	.long	0x52f
	.uleb128 0x9
	.long	0x575
	.long	.LASF80
	.byte	0x98
	.byte	0x6
	.byte	0x4d
	.uleb128 0x14
	.string	"hw"
	.byte	0x2
	.byte	0xac
	.long	0xa41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"buf"
	.byte	0x2
	.byte	0xad
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF81
	.byte	0x2
	.byte	0xae
	.long	0xde9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0xaf
	.long	0xe04
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x6
	.byte	0x4e
	.long	0x580
	.uleb128 0x9
	.long	0x635
	.long	.LASF82
	.byte	0x98
	.byte	0x6
	.byte	0x4e
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x7c
	.long	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x7d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0x7e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF83
	.byte	0x2
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"buf"
	.byte	0x2
	.byte	0x80
	.long	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF84
	.byte	0x2
	.byte	0x81
	.long	0x99c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"hw"
	.byte	0x2
	.byte	0x82
	.long	0xbb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0x83
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.string	"vol"
	.byte	0x2
	.byte	0x84
	.long	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.byte	0x85
	.long	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0x86
	.long	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xb
	.byte	0x6
	.long	0x640
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.uleb128 0x13
	.long	0x675
	.byte	0x18
	.byte	0x3
	.byte	0x20
	.uleb128 0xc
	.long	.LASF86
	.byte	0x3
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"r"
	.byte	0x3
	.byte	0x20
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"l"
	.byte	0x3
	.byte	0x20
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x3
	.byte	0x20
	.long	0x646
	.uleb128 0x13
	.long	0x6a1
	.byte	0x10
	.byte	0x3
	.byte	0x21
	.uleb128 0x14
	.string	"l"
	.byte	0x3
	.byte	0x21
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"r"
	.byte	0x3
	.byte	0x21
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF88
	.byte	0x3
	.byte	0x21
	.long	0x680
	.uleb128 0x2
	.long	.LASF89
	.byte	0x3
	.byte	0x25
	.long	0x6b7
	.uleb128 0xf
	.long	0x6d2
	.byte	0x1
	.uleb128 0x10
	.long	0x6d2
	.uleb128 0x10
	.long	0xc6
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x6d8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6a1
	.uleb128 0x5
	.byte	0x8
	.long	0x675
	.uleb128 0x2
	.long	.LASF90
	.byte	0x3
	.byte	0x26
	.long	0x6e9
	.uleb128 0xf
	.long	0x6ff
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x6ff
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x705
	.uleb128 0x6
	.long	0x6a1
	.uleb128 0x11
	.long	0x72b
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.long	.LASF91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF92
	.sleb128 1
	.uleb128 0x12
	.long	.LASF93
	.sleb128 2
	.uleb128 0x12
	.long	.LASF94
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x2
	.byte	0x28
	.long	0x70a
	.uleb128 0x9
	.long	0x797
	.long	.LASF96
	.byte	0x30
	.byte	0x2
	.byte	0x2a
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0x2b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"tag"
	.byte	0x2
	.byte	0x2c
	.long	0x72b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF97
	.byte	0x2
	.byte	0x2d
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF98
	.byte	0x2
	.byte	0x2e
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF99
	.byte	0x2
	.byte	0x2f
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF100
	.byte	0x2
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x9
	.long	0x7bf
	.long	.LASF101
	.byte	0x10
	.byte	0x2
	.byte	0x33
	.uleb128 0xc
	.long	.LASF102
	.byte	0x2
	.byte	0x34
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"fn"
	.byte	0x2
	.byte	0x35
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x83c
	.long	.LASF103
	.byte	0x20
	.byte	0x2
	.byte	0x38
	.uleb128 0xc
	.long	.LASF104
	.byte	0x2
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF105
	.byte	0x2
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF106
	.byte	0x2
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF107
	.byte	0x2
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF108
	.byte	0x2
	.byte	0x3f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF109
	.byte	0x2
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x9
	.long	0x874
	.long	.LASF110
	.byte	0xb0
	.byte	0x2
	.byte	0x43
	.uleb128 0x14
	.string	"sw"
	.byte	0x2
	.byte	0xb3
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"cap"
	.byte	0x2
	.byte	0xb4
	.long	0xe60
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0xb5
	.long	0xe35
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x9
	.long	0x88f
	.long	.LASF111
	.byte	0x8
	.byte	0x2
	.byte	0x52
	.uleb128 0xc
	.long	.LASF112
	.byte	0x2
	.byte	0x52
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x461
	.uleb128 0x9
	.long	0x8b0
	.long	.LASF113
	.byte	0x8
	.byte	0x2
	.byte	0x53
	.uleb128 0xc
	.long	.LASF112
	.byte	0x2
	.byte	0x53
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x83c
	.uleb128 0x13
	.long	0x8db
	.byte	0x10
	.byte	0x2
	.byte	0x55
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0x55
	.long	0x990
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0x55
	.long	0x996
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x990
	.long	.LASF116
	.byte	0x78
	.byte	0x2
	.byte	0x45
	.uleb128 0xc
	.long	.LASF117
	.byte	0x2
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF118
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x48
	.long	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF84
	.byte	0x2
	.byte	0x4a
	.long	0x99c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF119
	.byte	0x2
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF120
	.byte	0x2
	.byte	0x4d
	.long	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF121
	.byte	0x2
	.byte	0x4f
	.long	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF122
	.byte	0x2
	.byte	0x51
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF123
	.byte	0x2
	.byte	0x52
	.long	0x874
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF124
	.byte	0x2
	.byte	0x53
	.long	0x895
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF125
	.byte	0x2
	.byte	0x54
	.long	0xa3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0x55
	.long	0x8b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8db
	.uleb128 0x5
	.byte	0x8
	.long	0x990
	.uleb128 0x5
	.byte	0x8
	.long	0x6de
	.uleb128 0x9
	.long	0xa3b
	.long	.LASF126
	.byte	0x50
	.byte	0x2
	.byte	0x21
	.uleb128 0xc
	.long	.LASF127
	.byte	0x2
	.byte	0x98
	.long	0xc8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF128
	.byte	0x2
	.byte	0x99
	.long	0xc9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF129
	.byte	0x2
	.byte	0x9a
	.long	0xcb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF130
	.byte	0x2
	.byte	0x9b
	.long	0xcda
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF131
	.byte	0x2
	.byte	0x9c
	.long	0xcf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF132
	.byte	0x2
	.byte	0x9e
	.long	0xd11
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF133
	.byte	0x2
	.byte	0x9f
	.long	0xd23
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF134
	.byte	0x2
	.byte	0xa0
	.long	0xd39
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF135
	.byte	0x2
	.byte	0xa1
	.long	0xd5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF136
	.byte	0x2
	.byte	0xa2
	.long	0xd7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9a2
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2
	.byte	0x56
	.long	0x8db
	.uleb128 0x9
	.long	0xa67
	.long	.LASF137
	.byte	0x8
	.byte	0x2
	.byte	0x65
	.uleb128 0xc
	.long	.LASF112
	.byte	0x2
	.byte	0x65
	.long	0xa67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x580
	.uleb128 0x13
	.long	0xa92
	.byte	0x10
	.byte	0x2
	.byte	0x67
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0x67
	.long	0xb39
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0x67
	.long	0xb3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xb39
	.long	.LASF138
	.byte	0x70
	.byte	0x2
	.byte	0x58
	.uleb128 0xc
	.long	.LASF117
	.byte	0x2
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x5a
	.long	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF71
	.byte	0x2
	.byte	0x5c
	.long	0xb45
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF139
	.byte	0x2
	.byte	0x5e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF140
	.byte	0x2
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.long	.LASF120
	.byte	0x2
	.byte	0x60
	.long	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF141
	.byte	0x2
	.byte	0x62
	.long	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF122
	.byte	0x2
	.byte	0x64
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF123
	.byte	0x2
	.byte	0x65
	.long	0xa4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF125
	.byte	0x2
	.byte	0x66
	.long	0xa3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0x67
	.long	0xa6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa92
	.uleb128 0x5
	.byte	0x8
	.long	0xb39
	.uleb128 0x5
	.byte	0x8
	.long	0x6ac
	.uleb128 0x2
	.long	.LASF138
	.byte	0x2
	.byte	0x68
	.long	0xa92
	.uleb128 0x13
	.long	0xb7b
	.byte	0x10
	.byte	0x2
	.byte	0x77
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0x77
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0x77
	.long	0xb7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x88f
	.uleb128 0x5
	.byte	0x8
	.long	0xa41
	.uleb128 0x13
	.long	0xbac
	.byte	0x10
	.byte	0x2
	.byte	0x86
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0x86
	.long	0xa67
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0x86
	.long	0xbac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa67
	.uleb128 0x5
	.byte	0x8
	.long	0xb4b
	.uleb128 0x9
	.long	0xc5f
	.long	.LASF142
	.byte	0x48
	.byte	0x2
	.byte	0x89
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0x8a
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF98
	.byte	0x2
	.byte	0x8b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF143
	.byte	0x2
	.byte	0x8c
	.long	0xc5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF144
	.byte	0x2
	.byte	0x8d
	.long	0xc6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF145
	.byte	0x2
	.byte	0x8e
	.long	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF125
	.byte	0x2
	.byte	0x8f
	.long	0xa3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF146
	.byte	0x2
	.byte	0x90
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF147
	.byte	0x2
	.byte	0x91
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.long	.LASF148
	.byte	0x2
	.byte	0x92
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF149
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.long	.LASF150
	.byte	0x2
	.byte	0x94
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x736
	.uleb128 0x16
	.byte	0x1
	.long	0xac
	.uleb128 0x5
	.byte	0x8
	.long	0xc65
	.uleb128 0x17
	.long	0xc86
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xb81
	.uleb128 0x10
	.long	0xc86
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3bb
	.uleb128 0x5
	.byte	0x8
	.long	0xc71
	.uleb128 0xf
	.long	0xc9e
	.byte	0x1
	.uleb128 0x10
	.long	0xb81
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc92
	.uleb128 0x17
	.long	0xcb4
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xb81
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xca4
	.uleb128 0x17
	.long	0xcd4
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xcd4
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x456
	.uleb128 0x5
	.byte	0x8
	.long	0xcba
	.uleb128 0x17
	.long	0xcf6
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xb81
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xce0
	.uleb128 0x17
	.long	0xd11
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xbb2
	.uleb128 0x10
	.long	0xc86
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcfc
	.uleb128 0xf
	.long	0xd23
	.byte	0x1
	.uleb128 0x10
	.long	0xbb2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd17
	.uleb128 0x17
	.long	0xd39
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xbb2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd29
	.uleb128 0x17
	.long	0xd59
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xd59
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x575
	.uleb128 0x5
	.byte	0x8
	.long	0xd3f
	.uleb128 0x17
	.long	0xd7b
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xbb2
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd65
	.uleb128 0x13
	.long	0xda6
	.byte	0x10
	.byte	0x2
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0xa8
	.long	0xddd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0xa8
	.long	0xde3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xddd
	.long	.LASF151
	.byte	0x30
	.byte	0x2
	.byte	0xa5
	.uleb128 0x14
	.string	"ops"
	.byte	0x2
	.byte	0xa6
	.long	0x3e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF102
	.byte	0x2
	.byte	0xa7
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0xa8
	.long	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xda6
	.uleb128 0x5
	.byte	0x8
	.long	0xddd
	.uleb128 0x9
	.long	0xe04
	.long	.LASF152
	.byte	0x8
	.byte	0x2
	.byte	0xae
	.uleb128 0xc
	.long	.LASF112
	.byte	0x2
	.byte	0xae
	.long	0xddd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x13
	.long	0xe29
	.byte	0x10
	.byte	0x2
	.byte	0xaf
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0xaf
	.long	0xe29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0xaf
	.long	0xe2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x52f
	.uleb128 0x5
	.byte	0x8
	.long	0xe29
	.uleb128 0x13
	.long	0xe5a
	.byte	0x10
	.byte	0x2
	.byte	0xb5
	.uleb128 0xc
	.long	.LASF114
	.byte	0x2
	.byte	0xb5
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF115
	.byte	0x2
	.byte	0xb5
	.long	0xe5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8b0
	.uleb128 0x5
	.byte	0x8
	.long	0x524
	.uleb128 0x9
	.long	0xe8e
	.long	.LASF153
	.byte	0x80
	.byte	0x1
	.byte	0x1f
	.uleb128 0x14
	.string	"hw"
	.byte	0x1
	.byte	0x20
	.long	0xa41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF154
	.byte	0x1
	.byte	0x21
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x2
	.long	.LASF153
	.byte	0x1
	.byte	0x22
	.long	0xe66
	.uleb128 0x9
	.long	0xec1
	.long	.LASF155
	.byte	0x78
	.byte	0x1
	.byte	0x24
	.uleb128 0x14
	.string	"hw"
	.byte	0x1
	.byte	0x25
	.long	0xb4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF154
	.byte	0x1
	.byte	0x26
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x2
	.long	.LASF155
	.byte	0x1
	.byte	0x27
	.long	0xe99
	.uleb128 0x19
	.long	0xf91
	.long	.LASF160
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	0x3f
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x29
	.long	0xb81
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"no"
	.byte	0x1
	.byte	0x2b
	.long	0xf91
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.uleb128 0x1e
	.string	"now"
	.byte	0x1
	.byte	0x2d
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x1
	.byte	0x2e
	.long	0xb4
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x1
	.byte	0x2f
	.long	0xb4
	.uleb128 0x1f
	.long	0xf6a
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x39
	.long	0xb4
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x0
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe8e
	.uleb128 0x19
	.long	0xfe0
	.long	.LASF161
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"sw"
	.byte	0x1
	.byte	0x42
	.long	0xcd4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x42
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x19
	.long	0x101b
	.long	.LASF162
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x3f
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x47
	.long	0xb81
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"as"
	.byte	0x1
	.byte	0x47
	.long	0xc86
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x1046
	.long	.LASF163
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x4e
	.long	0xb81
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0x1083
	.long	.LASF164
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.long	0x3f
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x53
	.long	0xb81
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x53
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x19
	.long	0x10be
	.long	.LASF165
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x3f
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x5a
	.long	0xbb2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"as"
	.byte	0x1
	.byte	0x5a
	.long	0xc86
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x21
	.long	0x10e9
	.long	.LASF166
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x61
	.long	0xbb2
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0x11c8
	.long	.LASF167
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0x3f
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x66
	.long	0xbb2
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"no"
	.byte	0x1
	.byte	0x68
	.long	0x11c8
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.byte	0x69
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x1
	.byte	0x6a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x6b
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	0x1177
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1e
	.string	"now"
	.byte	0x1
	.byte	0x6e
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x1
	.byte	0x6f
	.long	0xb4
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x1
	.byte	0x70
	.long	0xb4
	.byte	0x0
	.uleb128 0x22
	.long	0x11a1
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x73
	.long	0xb4
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x73
	.long	0x3f
	.byte	0x0
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x75
	.long	0x3f
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x75
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xec1
	.uleb128 0x19
	.long	0x1262
	.long	.LASF169
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x3f
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"sw"
	.byte	0x1
	.byte	0x7a
	.long	0xd59
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x7a
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF170
	.byte	0x1
	.byte	0x7a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x7c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.long	.LASF171
	.byte	0x1
	.byte	0x7d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1b
	.string	"ta"
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.uleb128 0x1b
	.string	"tb"
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x129f
	.long	.LASF173
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x1
	.byte	0x83
	.long	0xbb2
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0xac
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	0x12e9
	.long	.LASF174
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF102
	.byte	0x1
	.byte	0x8f
	.long	0xac
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	.LASF175
	.byte	0x7
	.byte	0x91
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF176
	.byte	0x7
	.byte	0x92
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF177
	.byte	0xb
	.byte	0x12
	.long	0x1310
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x635
	.uleb128 0x25
	.long	.LASF178
	.byte	0xb
	.byte	0x1c
	.long	0xb4
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF179
	.byte	0x1
	.byte	0xa2
	.long	0xbb8
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	no_audio_driver
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x1
	.byte	0x94
	.long	0x9a2
	.byte	0x9
	.byte	0x3
	.quad	no_pcm_ops
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.long	0x22
	.value	0x2
	.long	.Ldebug_info0
	.long	0x134f
	.long	0x1323
	.string	"no_audio_driver"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"swap_endianness"
.LASF89:
	.string	"t_sample"
.LASF9:
	.string	"size_t"
.LASF67:
	.string	"capture"
.LASF139:
	.string	"wpos"
.LASF171:
	.string	"total"
.LASF25:
	.string	"_IO_save_end"
.LASF174:
	.string	"no_audio_fini"
.LASF130:
	.string	"write"
.LASF155:
	.string	"NoVoiceIn"
.LASF18:
	.string	"_IO_write_base"
.LASF105:
	.string	"sign"
.LASF101:
	.string	"audio_callback"
.LASF34:
	.string	"_lock"
.LASF153:
	.string	"NoVoiceOut"
.LASF92:
	.string	"AUD_OPT_FMT"
.LASF23:
	.string	"_IO_save_base"
.LASF78:
	.string	"callback"
.LASF167:
	.string	"no_run_in"
.LASF31:
	.string	"_cur_column"
.LASF85:
	.string	"QEMUClock"
.LASF97:
	.string	"valp"
.LASF96:
	.string	"audio_option"
.LASF74:
	.string	"total_hw_samples_mixed"
.LASF54:
	.string	"AUD_FMT_S16"
.LASF2:
	.string	"long int"
.LASF168:
	.string	"dead"
.LASF45:
	.string	"_IO_marker"
.LASF102:
	.string	"opaque"
.LASF107:
	.string	"shift"
.LASF4:
	.string	"short unsigned int"
.LASF127:
	.string	"init_out"
.LASF173:
	.string	"no_ctl_in"
.LASF95:
	.string	"audio_option_tag_e"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF56:
	.string	"AUD_FMT_S32"
.LASF184:
	.string	"no_audio_init"
.LASF6:
	.string	"unsigned char"
.LASF157:
	.string	"decr"
.LASF119:
	.string	"rpos"
.LASF52:
	.string	"AUD_FMT_S8"
.LASF182:
	.string	"audio/noaudio.c"
.LASF5:
	.string	"char"
.LASF159:
	.string	"bytes"
.LASF125:
	.string	"pcm_ops"
.LASF43:
	.string	"_IO_lock_t"
.LASF13:
	.string	"long long unsigned int"
.LASF138:
	.string	"HWVoiceIn"
.LASF51:
	.string	"AUD_FMT_U8"
.LASF15:
	.string	"_IO_read_ptr"
.LASF148:
	.string	"max_voices_in"
.LASF60:
	.string	"endianness"
.LASF164:
	.string	"no_ctl_out"
.LASF48:
	.string	"_pos"
.LASF175:
	.string	"stdin"
.LASF94:
	.string	"AUD_OPT_BOOL"
.LASF137:
	.string	"sw_in_listhead"
.LASF84:
	.string	"clip"
.LASF26:
	.string	"_markers"
.LASF122:
	.string	"samples"
.LASF64:
	.string	"audcnotification_e"
.LASF73:
	.string	"rate"
.LASF35:
	.string	"_offset"
.LASF117:
	.string	"enabled"
.LASF152:
	.string	"cb_listhead"
.LASF145:
	.string	"fini"
.LASF149:
	.string	"voice_size_out"
.LASF123:
	.string	"sw_head"
.LASF0:
	.string	"long unsigned int"
.LASF81:
	.string	"cb_head"
.LASF76:
	.string	"empty"
.LASF88:
	.string	"st_sample_t"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF172:
	.string	"to_clear"
.LASF75:
	.string	"active"
.LASF42:
	.string	"_unused2"
.LASF61:
	.string	"audsettings_t"
.LASF30:
	.string	"_old_offset"
.LASF110:
	.string	"SWVoiceCap"
.LASF90:
	.string	"f_sample"
.LASF3:
	.string	"long long int"
.LASF65:
	.string	"audio_capture_ops"
.LASF20:
	.string	"_IO_write_end"
.LASF165:
	.string	"no_init_in"
.LASF154:
	.string	"old_ticks"
.LASF161:
	.string	"no_write"
.LASF69:
	.string	"SWVoiceOut"
.LASF53:
	.string	"AUD_FMT_U16"
.LASF135:
	.string	"read"
.LASF21:
	.string	"_IO_buf_base"
.LASF86:
	.string	"mute"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF131:
	.string	"ctl_out"
.LASF181:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF98:
	.string	"descr"
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
.LASF62:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF47:
	.string	"_sbuf"
.LASF104:
	.string	"bits"
.LASF147:
	.string	"max_voices_out"
.LASF72:
	.string	"ratio"
.LASF179:
	.string	"no_audio_driver"
.LASF59:
	.string	"nchannels"
.LASF14:
	.string	"_flags"
.LASF55:
	.string	"AUD_FMT_U32"
.LASF113:
	.string	"sw_cap_listhead"
.LASF169:
	.string	"no_read"
.LASF134:
	.string	"run_in"
.LASF41:
	.string	"_mode"
.LASF128:
	.string	"fini_out"
.LASF70:
	.string	"info"
.LASF71:
	.string	"conv"
.LASF124:
	.string	"cap_head"
.LASF108:
	.string	"bytes_per_second"
.LASF66:
	.string	"notify"
.LASF170:
	.string	"size"
.LASF106:
	.string	"align"
.LASF68:
	.string	"destroy"
.LASF156:
	.string	"live"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF87:
	.string	"volume_t"
.LASF63:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF91:
	.string	"AUD_OPT_INT"
.LASF82:
	.string	"SWVoiceIn"
.LASF177:
	.string	"vm_clock"
.LASF19:
	.string	"_IO_write_ptr"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF83:
	.string	"total_hw_samples_acquired"
.LASF166:
	.string	"no_fini_in"
.LASF133:
	.string	"fini_in"
.LASF57:
	.string	"audfmt_e"
.LASF111:
	.string	"sw_out_listhead"
.LASF11:
	.string	"__off64_t"
.LASF144:
	.string	"init"
.LASF183:
	.string	"/home/remco/Projects/Argos/src"
.LASF126:
	.string	"audio_pcm_ops"
.LASF22:
	.string	"_IO_buf_end"
.LASF150:
	.string	"voice_size_in"
.LASF77:
	.string	"name"
.LASF160:
	.string	"no_run_out"
.LASF141:
	.string	"conv_buf"
.LASF180:
	.string	"no_pcm_ops"
.LASF8:
	.string	"short int"
.LASF140:
	.string	"total_samples_captured"
.LASF49:
	.string	"uint64_t"
.LASF142:
	.string	"audio_driver"
.LASF99:
	.string	"overriddenp"
.LASF162:
	.string	"no_init_out"
.LASF121:
	.string	"mix_buf"
.LASF114:
	.string	"le_next"
.LASF32:
	.string	"_vtable_offset"
.LASF100:
	.string	"overridden"
.LASF116:
	.string	"HWVoiceOut"
.LASF50:
	.string	"audio_callback_fn_t"
.LASF115:
	.string	"le_prev"
.LASF146:
	.string	"can_be_default"
.LASF158:
	.string	"ticks"
.LASF103:
	.string	"audio_pcm_info"
.LASF136:
	.string	"ctl_in"
.LASF178:
	.string	"ticks_per_sec"
.LASF16:
	.string	"_IO_read_end"
.LASF28:
	.string	"_fileno"
.LASF58:
	.string	"freq"
.LASF93:
	.string	"AUD_OPT_STR"
.LASF176:
	.string	"stdout"
.LASF118:
	.string	"pending_disable"
.LASF129:
	.string	"run_out"
.LASF120:
	.string	"ts_helper"
.LASF79:
	.string	"entries"
.LASF12:
	.string	"int64_t"
.LASF112:
	.string	"lh_first"
.LASF143:
	.string	"options"
.LASF163:
	.string	"no_fini_out"
.LASF80:
	.string	"CaptureVoiceOut"
.LASF132:
	.string	"init_in"
.LASF151:
	.string	"capture_callback"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
