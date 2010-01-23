	.file	"pcspk.c"
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
	.string	"pcspk"
	.data
	.align 8
	.type	s_spk, @object
	.size	s_spk, 8
s_spk:
	.quad	.LC0
	.text
	.p2align 4,,15
	.type	pcspk_callback, @function
pcspk_callback:
.LFB196:
	.file 1 "/home/remco/Projects/Argos/src/hw/pcspk.c"
	.loc 1 71 0
	pushq	%rbp
.LCFI0:
	movl	%esi, %ebp
	.loc 1 75 0
	movl	$2, %esi
	.loc 1 71 0
	pushq	%rbx
.LCFI1:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI2:
	.loc 1 75 0
	movq	1832(%rdi), %rdi
	call	pit_get_mode
	cmpl	$3, %eax
	je	.L27
.L1:
	.loc 1 97 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L27:
	.loc 1 78 0
	movq	1832(%rbx), %rdi
	movl	$2, %esi
	call	pit_get_initial_count
	.loc 1 81 0
	cmpl	$74, %eax
	.loc 1 78 0
	movl	%eax, %r8d
	.loc 1 81 0
	movl	$0, %eax
	cmovbe	%eax, %r8d
	.loc 1 83 0
	cmpl	%r8d, 1840(%rbx)
	je	.L4
.LBB2:
.LBB3:
	.loc 1 55 0
	testl	%r8d, %r8d
.LBE3:
.LBE2:
	.loc 1 84 0
	movl	%r8d, 1840(%rbx)
	.loc 1 85 0
	movl	$0, 1848(%rbx)
.LBB4:
.LBB5:
	.loc 1 55 0
	je	.L5
.LBB6:
	.loc 1 56 0
	imull	$32000, %r8d, %esi
	.loc 1 57 0
	xorl	%edx, %edx
	movabsq	$5124677668175872, %rax
	mov	%esi, %ecx
	divq	%rcx
	.loc 1 60 0
	xorl	%edx, %edx
	.loc 1 61 0
	xorl	%ecx, %ecx
	.loc 1 57 0
	movl	%eax, %r8d
	.loc 1 60 0
	movl	$2138182144, %eax
	divl	%esi
	movl	$3774444827, %edx
	imull	%esi, %eax
	mov	%eax, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$19, %eax
	leal	1(%rax), %esi
	shrl	%esi
	.loc 1 61 0
	cmpl	$0, %esi
	.loc 1 60 0
	movl	%esi, 1844(%rbx)
	.loc 1 61 0
	jbe	.L4
	xorl	%edi, %edi
.L9:
	.loc 1 62 0
	movl	%edi, %eax
	mov	%ecx, %edx
	.loc 1 61 0
	incl	%ecx
	.loc 1 62 0
	shrl	$25, %eax
	addl	%r8d, %edi
	andl	$64, %eax
	subl	$32, %eax
	.loc 1 61 0
	cmpl	%ecx, %esi
	.loc 1 62 0
	movb	%al, (%rbx,%rdx)
	.loc 1 61 0
	ja	.L9
.L4:
.LBE6:
.LBE5:
.LBE4:
	.loc 1 95 0
	testl	%ebp, %ebp
	jle	.L1
	movl	1844(%rbx), %ecx
.L21:
.LBB7:
	.loc 1 90 0
	mov	1848(%rbx), %esi
	movl	%ecx, %eax
	movl	%ebp, %r8d
.LBE7:
	.loc 1 91 0
	movq	1824(%rbx), %rdi
.LBB8:
	.loc 1 90 0
	subl	%esi, %eax
	cmpl	%ebp, %eax
	cmovbe	%eax, %r8d
.LBE8:
	.loc 1 91 0
	addq	%rbx, %rsi
	movl	%r8d, %edx
	call	AUD_write
	.loc 1 92 0
	testl	%eax, %eax
	.loc 1 91 0
	movl	%eax, %r8d
	.loc 1 92 0
	je	.L1
	.loc 1 94 0
	movl	1848(%rbx), %eax
	movl	1844(%rbx), %ecx
	xorl	%edx, %edx
	.loc 1 95 0
	subl	%r8d, %ebp
	.loc 1 94 0
	addl	%r8d, %eax
	divl	%ecx
	.loc 1 95 0
	testl	%ebp, %ebp
	.loc 1 94 0
	movl	%edx, 1848(%rbx)
	.loc 1 95 0
	jg	.L21
	jmp	.L1
.L5:
.LBB9:
.LBB10:
	.loc 1 64 0
	movl	$1792, 1844(%rbx)
	.loc 1 65 0
	xorl	%ecx, %ecx
	.p2align 4,,7
.L14:
	.loc 1 66 0
	mov	%ecx, %eax
	.loc 1 65 0
	incl	%ecx
	cmpl	$1791, %ecx
	.loc 1 66 0
	movb	$-128, (%rbx,%rax)
	.loc 1 65 0
	jbe	.L14
	jmp	.L4
.LBE10:
.LBE9:
.LFE196:
	.size	pcspk_callback, .-pcspk_callback
	.section	.rodata.str1.1
.LC2:
	.string	"Could not open voice\n"
.LC1:
	.string	"No audio state\n"
	.text
	.p2align 4,,15
.globl pcspk_audio_init
	.type	pcspk_audio_init, @function
pcspk_audio_init:
.LFB197:
	.loc 1 100 0
	subq	$24, %rsp
.LCFI3:
	.loc 1 104 0
	testq	%rdi, %rdi
	.loc 1 102 0
	movl	$32000, (%rsp)
	movl	$1, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	.loc 1 104 0
	je	.L32
	.loc 1 108 0
	movq	s_spk(%rip), %rsi
	movq	$pcspk_state+1792, %rdx
	call	AUD_register_card
	.loc 1 110 0
	movq	s_spk(%rip), %rdx
	movq	pcspk_state+1824(%rip), %rsi
	movq	%rsp, %r9
	movl	$pcspk_callback, %r8d
	movl	$pcspk_state, %ecx
	movq	$pcspk_state+1792, %rdi
	call	AUD_open_out
	.loc 1 116 0
	xorl	%edx, %edx
	.loc 1 111 0
	testq	%rax, %rax
	.loc 1 110 0
	movq	%rax, pcspk_state+1824(%rip)
	.loc 1 111 0
	je	.L33
.L28:
	.loc 1 117 0
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.L33:
	.loc 1 112 0
	movq	s_spk(%rip), %rdi
	movl	$.LC2, %esi
.L31:
	call	AUD_log
	.loc 1 113 0
	movl	$-1, %edx
	jmp	.L28
.L32:
	.loc 1 105 0
	movq	s_spk(%rip), %rdi
	movl	$.LC1, %esi
	xorl	%eax, %eax
	jmp	.L31
.LFE197:
	.size	pcspk_audio_init, .-pcspk_audio_init
	.p2align 4,,15
	.type	pcspk_ioport_read, @function
pcspk_ioport_read:
.LFB198:
	.loc 1 120 0
	pushq	%r12
.LCFI4:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI5:
	subq	$8, %rsp
.LCFI6:
	.loc 1 124 0
	xorl	$16, 1856(%rdi)
	.loc 1 125 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	1832(%r12), %rdi
	movq	%rax, %rdx
	movl	$2, %esi
	call	pit_get_out
	.loc 1 127 0
	movq	1832(%r12), %rdi
	movl	$2, %esi
	.loc 1 125 0
	movl	%eax, %ebx
	sall	$5, %ebx
	.loc 1 127 0
	call	pit_get_gate
	movl	1852(%r12), %edx
	addl	%edx, %edx
	orl	%edx, %eax
	orl	1856(%r12), %eax
	.loc 1 128 0
	addq	$8, %rsp
	.loc 1 127 0
	orl	%eax, %ebx
	.loc 1 128 0
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	ret
.LFE198:
	.size	pcspk_ioport_read, .-pcspk_ioport_read
	.p2align 4,,15
	.type	pcspk_ioport_write, @function
pcspk_ioport_write:
.LFB199:
	.loc 1 131 0
	movq	%rbp, -8(%rsp)
.LCFI7:
	.loc 1 133 0
	movl	%edx, %ebp
	.loc 1 135 0
	shrl	%edx
	andl	$1, %edx
	.loc 1 131 0
	movq	%rbx, -16(%rsp)
.LCFI8:
	subq	$24, %rsp
.LCFI9:
	.loc 1 131 0
	movq	%rdi, %rbx
	.loc 1 135 0
	movl	%edx, 1852(%rdi)
	.loc 1 136 0
	movq	1832(%rdi), %rdi
	.loc 1 133 0
	andl	$1, %ebp
	.loc 1 136 0
	movl	$2, %esi
	movl	%ebp, %edx
	call	pit_set_gate
	.loc 1 137 0
	movq	1824(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L35
	.loc 1 138 0
	testl	%ebp, %ebp
	jne	.L38
	.loc 1 140 0
	andl	1852(%rbx), %ebp
	.loc 1 142 0
	movq	8(%rsp), %rbx
	.loc 1 140 0
	movl	%ebp, %esi
	.loc 1 142 0
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 140 0
	jmp	AUD_set_active_out
	.p2align 4,,7
.L35:
	.loc 1 142 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L38:
	.loc 1 140 0
	andl	1852(%rbx), %ebp
	.loc 1 139 0
	movl	$0, 1848(%rbx)
	.loc 1 142 0
	movq	8(%rsp), %rbx
	.loc 1 140 0
	movl	%ebp, %esi
	.loc 1 142 0
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 140 0
	jmp	AUD_set_active_out
.LFE199:
	.size	pcspk_ioport_write, .-pcspk_ioport_write
	.p2align 4,,15
.globl pcspk_init
	.type	pcspk_init, @function
pcspk_init:
.LFB200:
	.loc 1 145 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 149 0
	movl	$pcspk_state, %r8d
	.loc 1 148 0
	movq	%rdi, pcspk_state+1832(%rip)
	.loc 1 149 0
	movl	$pcspk_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$97, %edi
	call	register_ioport_read
	.loc 1 150 0
	movl	$pcspk_state, %r8d
	movl	$pcspk_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$97, %edi
	addq	$8, %rsp
	jmp	register_ioport_write
.LFE200:
	.size	pcspk_init, .-pcspk_init
	.local	pcspk_state
	.comm	pcspk_state,1864,32
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI3-.LFB197
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI4-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI7-.LFB199
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI10-.LFB200
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE8:
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI3-.LFB197
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI4-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI7-.LFB199
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI10-.LFB200
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE9:
	.file 2 "/usr/include/stdint.h"
	.file 3 "../audio/audio.h"
	.file 4 "../qemu-common.h"
	.file 5 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "../cpu-all.h"
	.file 13 "../qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x82b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF107
	.byte	0x1
	.long	.LASF108
	.long	.LASF109
	.uleb128 0x2
	.long	.LASF9
	.byte	0xb
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
	.long	0x3f
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x5
	.long	0x79
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
	.byte	0xa
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x286
	.long	.LASF43
	.byte	0xd8
	.byte	0x8
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x9
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x9
	.value	0x115
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x9
	.value	0x116
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x9
	.value	0x117
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x9
	.value	0x118
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x9
	.value	0x119
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x9
	.value	0x11a
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x9
	.value	0x11b
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x9
	.value	0x11c
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x9
	.value	0x11e
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x9
	.value	0x11f
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x9
	.value	0x120
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x9
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.value	0x12c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.value	0x131
	.long	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.value	0x13f
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.value	0x148
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.value	0x149
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x9
	.value	0x14a
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x9
	.value	0x14b
	.long	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x9
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x9
	.byte	0xb4
	.uleb128 0x8
	.long	0x2c4
	.long	.LASF44
	.byte	0x18
	.byte	0x9
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x9
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x9
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x9
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0xc
	.long	0x2e0
	.long	0x79
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0xc
	.long	0x2f6
	.long	0x79
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x2
	.byte	0x31
	.long	0x80
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x34
	.long	0x46
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x2f
	.long	0x301
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x34
	.long	0x301
	.uleb128 0x8
	.long	0x360
	.long	.LASF55
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.byte	0x38
	.long	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.byte	0x39
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x3d
	.long	0x337
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x2
	.long	.LASF59
	.byte	0x4
	.byte	0x6d
	.long	0x37c
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.uleb128 0x2
	.long	.LASF60
	.byte	0x4
	.byte	0x7b
	.long	0x38d
	.uleb128 0x6
	.byte	0x8
	.long	0x393
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x34
	.long	0x3a4
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.uleb128 0xf
	.long	0x3d7
	.byte	0x4
	.byte	0x3
	.byte	0x20
	.uleb128 0x10
	.long	.LASF63
	.sleb128 0
	.uleb128 0x10
	.long	.LASF64
	.sleb128 1
	.uleb128 0x10
	.long	.LASF65
	.sleb128 2
	.uleb128 0x10
	.long	.LASF66
	.sleb128 3
	.uleb128 0x10
	.long	.LASF67
	.sleb128 4
	.uleb128 0x10
	.long	.LASF68
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x3
	.byte	0x27
	.long	0x3aa
	.uleb128 0x11
	.long	0x423
	.byte	0x10
	.byte	0x3
	.byte	0x34
	.uleb128 0xb
	.long	.LASF70
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF71
	.byte	0x3
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"fmt"
	.byte	0x3
	.byte	0x32
	.long	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF72
	.byte	0x3
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x3
	.byte	0x34
	.long	0x3e2
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.byte	0x4c
	.long	0x439
	.uleb128 0xe
	.long	.LASF74
	.byte	0x1
	.uleb128 0x11
	.long	0x464
	.byte	0x10
	.byte	0x3
	.byte	0x53
	.uleb128 0xb
	.long	.LASF75
	.byte	0x3
	.byte	0x53
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x3
	.byte	0x53
	.long	0x4a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x49b
	.long	.LASF77
	.byte	0x20
	.byte	0x3
	.byte	0x50
	.uleb128 0xb
	.long	.LASF78
	.byte	0x3
	.byte	0x51
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF79
	.byte	0x3
	.byte	0x52
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF80
	.byte	0x3
	.byte	0x53
	.long	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x464
	.uleb128 0x6
	.byte	0x8
	.long	0x49b
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x2
	.long	.LASF77
	.byte	0x3
	.byte	0x54
	.long	0x464
	.uleb128 0x2
	.long	.LASF81
	.byte	0xd
	.byte	0x6
	.long	0x4c3
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.uleb128 0x13
	.long	0x559
	.value	0x748
	.byte	0x1
	.byte	0x2e
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x25
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF83
	.byte	0x1
	.byte	0x26
	.long	0x4ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x700
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.byte	0x27
	.long	0x56a
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0x12
	.string	"pit"
	.byte	0x1
	.byte	0x28
	.long	0x570
	.byte	0x3
	.byte	0x23
	.uleb128 0x728
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1
	.byte	0x29
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x730
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1
	.byte	0x2a
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x734
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.byte	0x2b
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x738
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x73c
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x740
	.byte	0x0
	.uleb128 0xc
	.long	0x56a
	.long	0x2f6
	.uleb128 0x14
	.long	0x5b
	.value	0x6ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x399
	.uleb128 0x2
	.long	.LASF90
	.byte	0x1
	.byte	0x2e
	.long	0x4c9
	.uleb128 0x15
	.long	0x63a
	.long	.LASF93
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x46
	.long	0xab
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x48
	.long	0x63a
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x49
	.long	0x46
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.long	0x5f9
	.long	0x640
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.long	0x64d
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1c
	.long	0x656
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x61d
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1c
	.long	0x660
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	0x669
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x18
	.string	"ta"
	.byte	0x1
	.byte	0x5a
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"tb"
	.byte	0x1
	.byte	0x5a
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x576
	.uleb128 0x1e
	.long	0x674
	.long	.LASF94
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x33
	.long	0x63a
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x46
	.uleb128 0x20
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x38
	.long	0x674
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x39
	.long	0x674
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.long	0x301
	.uleb128 0x21
	.long	0x6cd
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x3f
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.byte	0x63
	.long	0x4a7
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"pic"
	.byte	0x1
	.byte	0x63
	.long	0x6cd
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x65
	.long	0x63a
	.uleb128 0x18
	.string	"as"
	.byte	0x1
	.byte	0x66
	.long	0x423
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x382
	.uleb128 0x23
	.long	0x731
	.long	.LASF95
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	0x301
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x77
	.long	0xab
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0x77
	.long	0x301
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0x77
	.long	0x36b
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x79
	.long	0x63a
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x7a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x15
	.long	0x78d
	.long	.LASF97
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x82
	.long	0xab
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0x82
	.long	0x301
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.byte	0x82
	.long	0x301
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x84
	.long	0x63a
	.uleb128 0x24
	.long	.LASF98
	.byte	0x1
	.byte	0x85
	.long	0x69
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x25
	.long	0x7c3
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"pit"
	.byte	0x1
	.byte	0x90
	.long	0x570
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x92
	.long	0x63a
	.byte	0x0
	.uleb128 0x26
	.long	.LASF101
	.byte	0x8
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF102
	.byte	0x8
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF103
	.byte	0xc
	.value	0x376
	.long	0x7eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x26
	.long	.LASF104
	.byte	0xd
	.byte	0x12
	.long	0x7fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x4b8
	.uleb128 0x24
	.long	.LASF105
	.byte	0x1
	.byte	0x30
	.long	0x6e
	.byte	0x9
	.byte	0x3
	.quad	s_spk
	.uleb128 0x24
	.long	.LASF106
	.byte	0x1
	.byte	0x31
	.long	0x576
	.byte	0x9
	.byte	0x3
	.quad	pcspk_state
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.long	0x32
	.value	0x2
	.long	.Ldebug_info0
	.long	0x82f
	.long	0x679
	.string	"pcspk_audio_init"
	.long	0x78d
	.string	"pcspk_init"
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF62:
	.string	"PITState"
.LASF9:
	.string	"size_t"
.LASF75:
	.string	"le_next"
.LASF24:
	.string	"_IO_save_end"
.LASF99:
	.string	"pcspk_audio_init"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF106:
	.string	"pcspk_state"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF84:
	.string	"voice"
.LASF66:
	.string	"AUD_FMT_S16"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF57:
	.string	"netidx"
.LASF91:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF61:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF58:
	.string	"argos_rtag_t"
.LASF64:
	.string	"AUD_FMT_S8"
.LASF55:
	.string	"argos_rtag"
.LASF78:
	.string	"audio"
.LASF42:
	.string	"_IO_lock_t"
.LASF65:
	.string	"AUD_FMT_U16"
.LASF53:
	.string	"argos_paddr_t"
.LASF63:
	.string	"AUD_FMT_U8"
.LASF14:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"double"
.LASF72:
	.string	"endianness"
.LASF88:
	.string	"data_on"
.LASF82:
	.string	"sample_buf"
.LASF47:
	.string	"_pos"
.LASF101:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF86:
	.string	"samples"
.LASF77:
	.string	"QEMUSoundCard"
.LASF41:
	.string	"_unused2"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF29:
	.string	"_old_offset"
.LASF97:
	.string	"pcspk_ioport_write"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF109:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF74:
	.string	"SWVoiceOut"
.LASF96:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF107:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF54:
	.string	"argos_netidx_t"
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
.LASF68:
	.string	"AUD_FMT_S32"
.LASF67:
	.string	"AUD_FMT_U32"
.LASF95:
	.string	"pcspk_ioport_read"
.LASF80:
	.string	"entries"
.LASF71:
	.string	"nchannels"
.LASF52:
	.string	"long double"
.LASF98:
	.string	"gate"
.LASF34:
	.string	"_offset"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF81:
	.string	"QEMUClock"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF87:
	.string	"play_pos"
.LASF104:
	.string	"vm_clock"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF69:
	.string	"audfmt_e"
.LASF11:
	.string	"__off64_t"
.LASF73:
	.string	"audsettings_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF79:
	.string	"name"
.LASF8:
	.string	"short int"
.LASF103:
	.string	"phys_ram_dirty"
.LASF94:
	.string	"generate_samples"
.LASF31:
	.string	"_vtable_offset"
.LASF93:
	.string	"pcspk_callback"
.LASF15:
	.string	"_IO_read_end"
.LASF76:
	.string	"le_prev"
.LASF90:
	.string	"PCSpkState"
.LASF83:
	.string	"card"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF59:
	.string	"AudioState"
.LASF108:
	.string	"/home/remco/Projects/Argos/src/hw/pcspk.c"
.LASF92:
	.string	"free"
.LASF70:
	.string	"freq"
.LASF50:
	.string	"float"
.LASF102:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF100:
	.string	"pcspk_init"
.LASF105:
	.string	"s_spk"
.LASF56:
	.string	"origin"
.LASF89:
	.string	"dummy_refresh_clock"
.LASF85:
	.string	"pit_count"
.LASF60:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
