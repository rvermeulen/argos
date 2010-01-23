	.file	"wavaudio.c"
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
	.string	"wav"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"WAV renderer http://wikipedia.org/wiki/WAV"
.globl wav_audio_driver
	.data
	.align 32
	.type	wav_audio_driver, @object
	.size	wav_audio_driver, 72
wav_audio_driver:
	.quad	.LC0
	.quad	.LC1
	.quad	wav_options
	.quad	wav_audio_init
	.quad	wav_audio_fini
	.quad	wav_pcm_ops
	.long	0
	.long	1
	.long	0
	.long	152
	.long	0
	.zero	4
.globl wav_pcm_ops
	.align 32
	.type	wav_pcm_ops, @object
	.size	wav_pcm_ops, 80
wav_pcm_ops:
	.quad	wav_init_out
	.quad	wav_fini_out
	.quad	wav_run_out
	.quad	wav_write_out
	.quad	wav_ctl_out
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata.str1.1
.LC2:
	.string	"FREQUENCY"
.LC3:
	.string	"Frequency"
.LC4:
	.string	"FORMAT"
.LC5:
	.string	"Format"
.LC6:
	.string	"DAC_FIXED_CHANNELS"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Number of channels (1 - mono, 2 - stereo)"
	.section	.rodata.str1.1
.LC8:
	.string	"PATH"
.LC9:
	.string	"Path to wave file"
.globl wav_options
	.data
	.align 32
	.type	wav_options, @object
	.size	wav_options, 240
wav_options:
	.quad	.LC2
	.long	0
	.zero	4
	.quad	conf
	.quad	.LC3
	.quad	0
	.long	0
	.zero	4
	.quad	.LC4
	.long	1
	.zero	4
	.quad	conf+8
	.quad	.LC5
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.long	0
	.zero	4
	.quad	conf+4
	.quad	.LC7
	.quad	0
	.long	0
	.zero	4
	.quad	.LC8
	.long	2
	.zero	4
	.quad	conf+16
	.quad	.LC9
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.section	.rodata.str1.1
.LC10:
	.string	"qemu.wav"
	.data
	.align 16
	.type	conf, @object
	.size	conf, 24
conf:
	.long	44100
	.long	2
	.long	3
	.long	0
	.quad	.LC10
	.text
	.p2align 4,,15
	.type	dolog, @function
dolog:
.LFB110:
	.file 1 "audio/audio_int.h"
	.loc 1 239 0
	subq	$216, %rsp
.LCFI0:
	.loc 1 239 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L2, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 243 0
	movq	%rdi, %rsi
	.loc 1 239 0
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	.loc 1 243 0
	movl	$.LC0, %edi
	.loc 1 239 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L2:
	.loc 1 242 0
	leaq	224(%rsp), %rax
	.loc 1 243 0
	movq	%rsp, %rdx
	.loc 1 242 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 243 0
	call	AUD_vlog
	.loc 1 244 0
	addq	$216, %rsp
	ret
.LFE110:
	.size	dolog, .-dolog
	.p2align 4,,15
	.type	wav_run_out, @function
wav_run_out:
.LFB112:
	.file 2 "audio/wavaudio.c"
	.loc 2 53 0
	pushq	%r15
.LCFI1:
	pushq	%r14
.LCFI2:
	pushq	%r13
.LCFI3:
	pushq	%r12
.LCFI4:
	pushq	%rbp
.LCFI5:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI6:
	subq	$8, %rsp
.LCFI7:
	.loc 2 58 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 2 60 0
	movslq	32(%rbp),%rdx
	.loc 2 58 0
	movq	%rax, %rbx
	.loc 2 59 0
	subq	128(%rbp), %rax
	.loc 2 60 0
	imulq	%rax, %rdx
	movq	%rdx, %rax
	cqto
	idivq	ticks_per_sec(%rip)
	.loc 2 62 0
	cmpq	$2147483647, %rax
	jle	.L4
	.loc 2 63 0
	movl	28(%rbp), %ecx
	movl	$2147483647, %r14d
	sarl	%cl, %r14d
.L5:
	.loc 2 69 0
	movq	%rbp, %rdi
	call	audio_pcm_hw_get_live_out
	.loc 2 71 0
	xorl	%edx, %edx
	.loc 2 70 0
	testl	%eax, %eax
	je	.L3
.LBB2:
	.loc 2 75 0
	cmpl	%r14d, %eax
	movl	%r14d, %r15d
.LBE2:
	.loc 2 74 0
	movq	%rbx, 128(%rbp)
.LBB3:
	.loc 2 75 0
	cmovle	%eax, %r15d
.LBE3:
	.loc 2 77 0
	movl	48(%rbp), %r13d
	.loc 2 90 0
	testl	%r15d, %r15d
	.loc 2 76 0
	movl	%r15d, %r14d
	.loc 2 90 0
	je	.L16
	movl	72(%rbp), %ecx
	.p2align 4,,7
.L14:
.LBB4:
	.loc 2 79 0
	movl	%ecx, %ebx
.LBB5:
	.file 3 "audio/audio.h"
	.loc 3 145 0
	movl	28(%rbp), %ecx
	movl	%r13d, %edx
.LBE5:
	.loc 2 79 0
	subl	%r13d, %ebx
	.loc 2 82 0
	movslq	%r13d,%rsi
.LBB6:
	.loc 2 80 0
	cmpl	%ebx, %r14d
	cmovle	%r14d, %ebx
.LBE6:
.LBB7:
	.loc 3 145 0
	sall	%cl, %edx
.LBE7:
	.loc 2 82 0
	salq	$4, %rsi
.LBB8:
.LBB9:
	.loc 3 146 0
	movslq	%edx,%r12
	addq	136(%rbp), %r12
.LBE9:
.LBE8:
	.loc 2 82 0
	addq	64(%rbp), %rsi
	.loc 2 85 0
	movl	%ebx, %edx
	movq	%r12, %rdi
	call	*40(%rbp)
	.loc 2 86 0
	movl	28(%rbp), %ecx
	movq	120(%rbp), %rdi
	movl	%ebx, %edx
	movq	%r12, %rsi
	sall	%cl, %edx
	call	qemu_put_buffer
	.loc 2 88 0
	leal	(%r13,%rbx), %eax
	movl	72(%rbp), %ecx
	.loc 2 90 0
	addl	%ebx, 144(%rbp)
	.loc 2 88 0
	cltd
	idivl	%ecx
.LBE4:
	.loc 2 90 0
	subl	%ebx, %r14d
.LBB10:
	.loc 2 88 0
	movl	%edx, %r13d
.LBE10:
	.loc 2 90 0
	jne	.L14
.L16:
	.loc 2 93 0
	movl	%r13d, 48(%rbp)
	.loc 2 94 0
	movl	%r15d, %edx
.L3:
	.loc 2 95 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L4:
	.loc 2 66 0
	movl	28(%rbp), %ecx
	movq	%rax, %r14
	sarq	%cl, %r14
	jmp	.L5
.LFE112:
	.size	wav_run_out, .-wav_run_out
	.p2align 4,,15
	.type	wav_write_out, @function
wav_write_out:
.LFB113:
	.loc 2 98 0
	.loc 2 99 0
	jmp	audio_pcm_sw_write
.LFE113:
	.size	wav_write_out, .-wav_write_out
	.p2align 4,,15
	.type	le_store, @function
le_store:
.LFB114:
	.loc 2 104 0
	.loc 2 106 0
	xorl	%eax, %eax
	jmp	.L26
	.p2align 4,,7
.L27:
	.loc 2 107 0
	movb	%sil, (%rdi)
	.loc 2 106 0
	incl	%eax
	.loc 2 108 0
	shrl	$8, %esi
	incq	%rdi
.L26:
	.loc 2 106 0
	cmpl	%edx, %eax
	jl	.L27
	rep ; ret
.LFE114:
	.size	le_store, .-le_store
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 13
__FUNCTION__.0:
	.string	"wav_init_out"
	.section	.rodata.str1.1
.LC13:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"WAVE files can not handle 32bit formats\n"
	.align 8
.LC12:
	.string	"Could not allocate buffer (%d bytes)\n"
	.align 8
.LC14:
	.string	"Failed to open wave file `%s'\nReason: %s\n"
	.text
	.p2align 4,,15
	.type	wav_init_out, @function
wav_init_out:
.LFB115:
	.loc 2 113 0
	pushq	%r14
.LCFI8:
	.loc 2 115 0
	xorl	%r14d, %r14d
	.loc 2 113 0
	pushq	%r13
.LCFI9:
	pushq	%r12
.LCFI10:
	pushq	%rbp
.LCFI11:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI12:
	.loc 2 126 0
	xorl	%ebx, %ebx
	.loc 2 113 0
	subq	$64, %rsp
.LCFI13:
	.loc 2 116 0
	movb	$82, 16(%rsp)
	movb	$73, 17(%rsp)
	movb	$70, 18(%rsp)
	movb	$70, 19(%rsp)
	movb	$0, 20(%rsp)
	movb	$0, 21(%rsp)
	movb	$0, 22(%rsp)
	movb	$0, 23(%rsp)
	movb	$87, 24(%rsp)
	movb	$65, 25(%rsp)
	movb	$86, 26(%rsp)
	movb	$69, 27(%rsp)
	movb	$102, 28(%rsp)
	movb	$109, 29(%rsp)
	movb	$116, 30(%rsp)
	movb	$32, 31(%rsp)
	movb	$16, 32(%rsp)
	movb	$0, 33(%rsp)
	movb	$0, 34(%rsp)
	movb	$0, 35(%rsp)
	movb	$1, 36(%rsp)
	movb	$0, 37(%rsp)
	movb	$2, 38(%rsp)
	movb	$0, 39(%rsp)
	movb	$68, 40(%rsp)
	movb	$-84, 41(%rsp)
	movb	$0, 42(%rsp)
	movb	$0, 43(%rsp)
	.loc 2 122 0
	movq	conf(%rip), %rax
	.loc 2 116 0
	movb	$16, 44(%rsp)
	movb	$-79, 45(%rsp)
	movb	$2, 46(%rsp)
	movb	$0, 47(%rsp)
	movb	$4, 48(%rsp)
	.loc 2 122 0
	movq	%rax, (%rsp)
	movq	conf+8(%rip), %rax
	.loc 2 126 0
	cmpl	$2, 4(%rsp)
	.loc 2 116 0
	movb	$0, 49(%rsp)
	movb	$0, 51(%rsp)
	movb	$100, 52(%rsp)
	.loc 2 122 0
	movq	%rax, 8(%rsp)
	.loc 2 127 0
	movl	8(%rsp), %eax
	.loc 2 116 0
	movb	$97, 53(%rsp)
	movb	$116, 54(%rsp)
	.loc 2 126 0
	sete	%bl
	.loc 2 116 0
	movb	$97, 55(%rsp)
	movb	$0, 56(%rsp)
	.loc 2 127 0
	cmpl	$5, %eax
	.loc 2 116 0
	movb	$0, 57(%rsp)
	movb	$0, 58(%rsp)
	movb	$0, 59(%rsp)
	.loc 2 127 0
	ja	.L36
	movslq	%eax,%rcx
	movl	$1, %eax
	salq	%cl, %rax
	testb	$3, %al
	je	.L44
	.p2align 4,,7
.L36:
	.loc 2 144 0
	movl	$8, %eax
.L37:
	.loc 2 147 0
	leaq	8(%rbp), %rdi
	movq	%rsp, %rsi
	.loc 2 144 0
	movb	%al, 50(%rsp)
	.loc 2 146 0
	movl	$0, 12(%rsp)
	.loc 2 150 0
	movl	$1, %r13d
	.loc 2 147 0
	call	audio_pcm_init_info
	.loc 2 150 0
	movl	28(%rbp), %ecx
	movl	%r13d, %eax
	.loc 2 149 0
	movl	$1024, 72(%rbp)
	.loc 2 150 0
	movl	$1024, %esi
	movl	$__FUNCTION__.0, %edi
	sall	%cl, %eax
	movslq	%eax,%rdx
	call	audio_calloc
	.loc 2 151 0
	testq	%rax, %rax
	.loc 2 150 0
	movq	%rax, 136(%rbp)
	.loc 2 151 0
	je	.L45
	.loc 2 157 0
	leaq	16(%rsp), %r12
	movl	20(%rbp), %esi
	movl	$2, %edx
	.loc 2 159 0
	leal	(%r14,%rbx), %ebx
	.loc 2 157 0
	leaq	22(%r12), %rdi
	call	le_store
	.loc 2 158 0
	movl	16(%rbp), %esi
	leaq	24(%r12), %rdi
	movl	$4, %edx
	call	le_store
	.loc 2 159 0
	movl	16(%rbp), %esi
	movl	%ebx, %ecx
	leaq	28(%r12), %rdi
	movl	$4, %edx
	sall	%cl, %esi
	call	le_store
	.loc 2 160 0
	movl	%ebx, %ecx
	leaq	32(%r12), %rdi
	movl	$2, %edx
	sall	%cl, %r13d
	movl	%r13d, %esi
	call	le_store
	.loc 2 162 0
	movq	conf+16(%rip), %rdi
	movl	$.LC13, %esi
	call	qemu_fopen
	.loc 2 163 0
	testq	%rax, %rax
	.loc 2 162 0
	movq	%rax, 120(%rbp)
	.loc 2 163 0
	je	.L46
	.loc 2 171 0
	movq	%rax, %rdi
	movl	$44, %edx
	movq	%r12, %rsi
	call	qemu_put_buffer
	.loc 2 172 0
	xorl	%eax, %eax
.L28:
	.loc 2 173 0
	addq	$64, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L44:
	.loc 2 127 0
	testb	$12, %al
	jne	.L33
	testb	$48, %al
	je	.L36
	.loc 2 140 0
	xorl	%eax, %eax
	movl	$.LC11, %edi
	movb	$16, 50(%rsp)
	call	dolog
	.loc 2 168 0
	movl	$-1, %eax
	jmp	.L28
	.p2align 4,,7
.L33:
	.loc 2 135 0
	movl	$1, %r14d
	.loc 2 144 0
	movl	$16, %eax
	jmp	.L37
.L45:
	.loc 2 152 0
	movl	72(%rbp), %esi
	movl	28(%rbp), %ecx
	movl	$.LC12, %edi
	sall	%cl, %esi
	call	dolog
	.loc 2 168 0
	movl	$-1, %eax
	jmp	.L28
.L46:
	.loc 2 164 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	conf+16(%rip), %rsi
	movq	%rax, %rdx
	movl	$.LC14, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 2 166 0
	movq	136(%rbp), %rdi
	call	qemu_free
	.loc 2 168 0
	movl	$-1, %eax
	.loc 2 167 0
	movq	$0, 136(%rbp)
	jmp	.L28
.LFE115:
	.size	wav_init_out, .-wav_init_out
	.p2align 4,,15
	.type	wav_fini_out, @function
wav_fini_out:
.LFB116:
	.loc 2 176 0
	movq	%rbp, -8(%rsp)
.LCFI14:
	movq	%rbx, -16(%rsp)
.LCFI15:
	subq	$24, %rsp
.LCFI16:
	.loc 2 180 0
	movl	144(%rdi), %ebx
	movl	28(%rdi), %ecx
	.loc 2 176 0
	movq	%rdi, %rbp
	.loc 2 180 0
	sall	%cl, %ebx
	.loc 2 183 0
	cmpq	$0, 120(%rdi)
	.loc 2 181 0
	leal	36(%rbx), %esi
	.loc 2 183 0
	jne	.L49
	.loc 2 201 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L49:
	.loc 2 187 0
	leaq	4(%rsp), %rdi
	movl	$4, %edx
	call	le_store
	.loc 2 188 0
	movl	%ebx, %esi
	movq	%rsp, %rdi
	movl	$4, %edx
	call	le_store
	.loc 2 190 0
	movq	120(%rbp), %rdi
	xorl	%edx, %edx
	movl	$4, %esi
	call	qemu_fseek
	.loc 2 191 0
	movq	120(%rbp), %rdi
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	call	qemu_put_buffer
	.loc 2 193 0
	movq	120(%rbp), %rdi
	movl	$1, %edx
	movl	$32, %esi
	call	qemu_fseek
	.loc 2 194 0
	movq	120(%rbp), %rdi
	movq	%rsp, %rsi
	movl	$4, %edx
	call	qemu_put_buffer
	.loc 2 196 0
	movq	120(%rbp), %rdi
	call	qemu_fclose
	.loc 2 199 0
	movq	136(%rbp), %rdi
	.loc 2 197 0
	movq	$0, 120(%rbp)
	.loc 2 199 0
	call	qemu_free
	.loc 2 200 0
	movq	$0, 136(%rbp)
	.loc 2 201 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE116:
	.size	wav_fini_out, .-wav_fini_out
	.p2align 4,,15
	.type	wav_ctl_out, @function
wav_ctl_out:
.LFB117:
	.loc 2 204 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI17:
	.loc 2 204 0
	leaq	0(,%rdx,4), %rax
	movl	$.L51, %edx
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
.L51:
	.loc 2 208 0
	xorl	%eax, %eax
	addq	$64, %rsp
	ret
.LFE117:
	.size	wav_ctl_out, .-wav_ctl_out
	.p2align 4,,15
	.type	wav_audio_init, @function
wav_audio_init:
.LFB118:
	.loc 2 211 0
	.loc 2 213 0
	movl	$conf, %eax
	ret
.LFE118:
	.size	wav_audio_init, .-wav_audio_init
	.p2align 4,,15
	.type	wav_audio_fini, @function
wav_audio_fini:
.LFB119:
	.loc 2 216 0
	.loc 1 264 0
	rep ; ret
.LFE119:
	.size	wav_audio_fini, .-wav_audio_fini
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
	.uleb128 0xe0
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI1-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI8-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x70
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI16-.LFB116
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI17-.LFB117
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI1-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI8-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x70
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI16-.LFB116
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI17-.LFB117
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.align 8
.LEFDE17:
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 6 "<internal>"
	.file 7 "audio/mixeng.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "./qemu-common.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "./qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1432
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF201
	.byte	0x1
	.long	.LASF202
	.long	.LASF203
	.uleb128 0x2
	.long	.LASF9
	.byte	0xd
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
	.byte	0xc
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x8
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
	.byte	0x4
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF14
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF15
	.byte	0xb
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0xb
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0xb
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0xb
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0xb
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0xb
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0xb
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0xb
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0xb
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0xb
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0xb
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0xb
	.value	0x122
	.long	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0xb
	.value	0x124
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0xb
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0xb
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0xb
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0xb
	.value	0x132
	.long	0x343
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0xb
	.value	0x136
	.long	0x353
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0xb
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0xb
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0xb
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0xb
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0xb
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0xb
	.value	0x150
	.long	0x359
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x2b
	.long	0x2a4
	.uleb128 0xb
	.long	0x2b4
	.long	0x2b4
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x2f9
	.long	.LASF45
	.byte	0x18
	.byte	0x6
	.byte	0x0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x6
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF48
	.byte	0x6
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF50
	.byte	0xb
	.byte	0xb4
	.uleb128 0x9
	.long	0x337
	.long	.LASF51
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xd
	.long	.LASF52
	.byte	0xb
	.byte	0xbb
	.long	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xb
	.byte	0xbc
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xb
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x300
	.uleb128 0x5
	.byte	0x8
	.long	0xcd
	.uleb128 0xb
	.long	0x353
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2f9
	.uleb128 0xb
	.long	0x369
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x50
	.long	0x299
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.long	0x3a1
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x73
	.long	0x3ac
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x3a1
	.uleb128 0x2
	.long	.LASF60
	.byte	0xe
	.byte	0x6
	.long	0x3c3
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x395
	.uleb128 0x2
	.long	.LASF61
	.byte	0x3
	.byte	0x1e
	.long	0x3da
	.uleb128 0x5
	.byte	0x8
	.long	0x3e0
	.uleb128 0xf
	.long	0x3f1
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x41e
	.byte	0x4
	.byte	0x3
	.byte	0x20
	.uleb128 0x13
	.long	.LASF62
	.sleb128 0
	.uleb128 0x13
	.long	.LASF63
	.sleb128 1
	.uleb128 0x13
	.long	.LASF64
	.sleb128 2
	.uleb128 0x13
	.long	.LASF65
	.sleb128 3
	.uleb128 0x13
	.long	.LASF66
	.sleb128 4
	.uleb128 0x13
	.long	.LASF67
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.byte	0x27
	.long	0x3f1
	.uleb128 0x14
	.long	0x46a
	.byte	0x10
	.byte	0x3
	.byte	0x34
	.uleb128 0xd
	.long	.LASF69
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x3
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"fmt"
	.byte	0x3
	.byte	0x32
	.long	0x41e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0x3
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x3
	.byte	0x34
	.long	0x429
	.uleb128 0x12
	.long	0x48a
	.byte	0x4
	.byte	0x3
	.byte	0x36
	.uleb128 0x13
	.long	.LASF73
	.sleb128 0
	.uleb128 0x13
	.long	.LASF74
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x3
	.byte	0x39
	.long	0x475
	.uleb128 0x9
	.long	0x4cc
	.long	.LASF76
	.byte	0x18
	.byte	0x3
	.byte	0x3b
	.uleb128 0xd
	.long	.LASF77
	.byte	0x3
	.byte	0x3c
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x3
	.byte	0x3d
	.long	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF79
	.byte	0x3
	.byte	0x3e
	.long	0x3c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x4dd
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x48a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4cc
	.uleb128 0xf
	.long	0x4f9
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
	.long	0x4e3
	.uleb128 0x2
	.long	.LASF80
	.byte	0x3
	.byte	0x4c
	.long	0x50a
	.uleb128 0x9
	.long	0x5cd
	.long	.LASF80
	.byte	0x98
	.byte	0x3
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0x6b
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x1
	.byte	0x6c
	.long	0xbdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF83
	.byte	0x1
	.byte	0x6d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF84
	.byte	0x1
	.byte	0x6f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF85
	.byte	0x1
	.byte	0x70
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF86
	.byte	0x1
	.byte	0x71
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0x73
	.long	0xc19
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x74
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"vol"
	.byte	0x1
	.byte	0x75
	.long	0x70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF89
	.byte	0x1
	.byte	0x76
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x77
	.long	0xbee
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x3
	.byte	0x4d
	.long	0x5d8
	.uleb128 0x9
	.long	0x61e
	.long	.LASF91
	.byte	0x98
	.byte	0x3
	.byte	0x4d
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0xac
	.long	0xad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF92
	.byte	0x1
	.byte	0xae
	.long	0xe81
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0xaf
	.long	0xe9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x3
	.byte	0x4e
	.long	0x629
	.uleb128 0x9
	.long	0x6de
	.long	.LASF93
	.byte	0x98
	.byte	0x3
	.byte	0x4e
	.uleb128 0xd
	.long	.LASF86
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0x7c
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0x1
	.byte	0x7d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF84
	.byte	0x1
	.byte	0x7e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x81
	.long	0xa34
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0x82
	.long	0xc4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x83
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"vol"
	.byte	0x1
	.byte	0x84
	.long	0x70d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF89
	.byte	0x1
	.byte	0x85
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x86
	.long	0xc1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x14
	.long	0x70d
	.byte	0x18
	.byte	0x7
	.byte	0x20
	.uleb128 0xd
	.long	.LASF96
	.byte	0x7
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"r"
	.byte	0x7
	.byte	0x20
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"l"
	.byte	0x7
	.byte	0x20
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x7
	.byte	0x20
	.long	0x6de
	.uleb128 0x14
	.long	0x739
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.uleb128 0x15
	.string	"l"
	.byte	0x7
	.byte	0x21
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"r"
	.byte	0x7
	.byte	0x21
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x7
	.byte	0x21
	.long	0x718
	.uleb128 0x2
	.long	.LASF99
	.byte	0x7
	.byte	0x25
	.long	0x74f
	.uleb128 0xf
	.long	0x76a
	.byte	0x1
	.uleb128 0x10
	.long	0x76a
	.uleb128 0x10
	.long	0xc6
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x770
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x739
	.uleb128 0x5
	.byte	0x8
	.long	0x70d
	.uleb128 0x2
	.long	.LASF100
	.byte	0x7
	.byte	0x26
	.long	0x781
	.uleb128 0xf
	.long	0x797
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x797
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x79d
	.uleb128 0x6
	.long	0x739
	.uleb128 0x12
	.long	0x7c3
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.uleb128 0x13
	.long	.LASF101
	.sleb128 0
	.uleb128 0x13
	.long	.LASF102
	.sleb128 1
	.uleb128 0x13
	.long	.LASF103
	.sleb128 2
	.uleb128 0x13
	.long	.LASF104
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF105
	.byte	0x1
	.byte	0x28
	.long	0x7a2
	.uleb128 0x9
	.long	0x82f
	.long	.LASF106
	.byte	0x30
	.byte	0x1
	.byte	0x2a
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x2b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x2d
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF108
	.byte	0x1
	.byte	0x2e
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF109
	.byte	0x1
	.byte	0x2f
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF110
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x9
	.long	0x857
	.long	.LASF111
	.byte	0x10
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.long	.LASF112
	.byte	0x1
	.byte	0x34
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"fn"
	.byte	0x1
	.byte	0x35
	.long	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x8d4
	.long	.LASF113
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.uleb128 0xd
	.long	.LASF114
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF115
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF69
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF70
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF116
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF117
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF118
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF119
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x9
	.long	0x90c
	.long	.LASF120
	.byte	0xb0
	.byte	0x1
	.byte	0x43
	.uleb128 0x15
	.string	"sw"
	.byte	0x1
	.byte	0xb3
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"cap"
	.byte	0x1
	.byte	0xb4
	.long	0xef8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0xb5
	.long	0xecd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x9
	.long	0x927
	.long	.LASF121
	.byte	0x8
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0x52
	.long	0x927
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x50a
	.uleb128 0x9
	.long	0x948
	.long	.LASF123
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0x53
	.long	0x948
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8d4
	.uleb128 0x14
	.long	0x973
	.byte	0x10
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x55
	.long	0xa28
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0x55
	.long	0xa2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xa28
	.long	.LASF126
	.byte	0x78
	.byte	0x1
	.byte	0x45
	.uleb128 0xd
	.long	.LASF127
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF128
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0x48
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x4a
	.long	0xa34
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF130
	.byte	0x1
	.byte	0x4d
	.long	0x38a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF131
	.byte	0x1
	.byte	0x4f
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF132
	.byte	0x1
	.byte	0x51
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0x52
	.long	0x90c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF134
	.byte	0x1
	.byte	0x53
	.long	0x92d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0x54
	.long	0xad3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x55
	.long	0x94e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x973
	.uleb128 0x5
	.byte	0x8
	.long	0xa28
	.uleb128 0x5
	.byte	0x8
	.long	0x776
	.uleb128 0x9
	.long	0xad3
	.long	.LASF136
	.byte	0x50
	.byte	0x1
	.byte	0x21
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0x98
	.long	0xd24
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF138
	.byte	0x1
	.byte	0x99
	.long	0xd36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF139
	.byte	0x1
	.byte	0x9a
	.long	0xd4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF140
	.byte	0x1
	.byte	0x9b
	.long	0xd72
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF141
	.byte	0x1
	.byte	0x9c
	.long	0xd8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF142
	.byte	0x1
	.byte	0x9e
	.long	0xda9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF143
	.byte	0x1
	.byte	0x9f
	.long	0xdbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF144
	.byte	0x1
	.byte	0xa0
	.long	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF145
	.byte	0x1
	.byte	0xa1
	.long	0xdf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF146
	.byte	0x1
	.byte	0xa2
	.long	0xe13
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa3a
	.uleb128 0x2
	.long	.LASF126
	.byte	0x1
	.byte	0x56
	.long	0x973
	.uleb128 0x9
	.long	0xaff
	.long	.LASF147
	.byte	0x8
	.byte	0x1
	.byte	0x65
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0x65
	.long	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x629
	.uleb128 0x14
	.long	0xb2a
	.byte	0x10
	.byte	0x1
	.byte	0x67
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x67
	.long	0xbd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0x67
	.long	0xbd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xbd1
	.long	.LASF148
	.byte	0x70
	.byte	0x1
	.byte	0x58
	.uleb128 0xd
	.long	.LASF127
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0x5a
	.long	0x857
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF82
	.byte	0x1
	.byte	0x5c
	.long	0xbdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF149
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF150
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF130
	.byte	0x1
	.byte	0x60
	.long	0x38a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF151
	.byte	0x1
	.byte	0x62
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF132
	.byte	0x1
	.byte	0x64
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0x65
	.long	0xae4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0x66
	.long	0xad3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x67
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb2a
	.uleb128 0x5
	.byte	0x8
	.long	0xbd1
	.uleb128 0x5
	.byte	0x8
	.long	0x744
	.uleb128 0x2
	.long	.LASF148
	.byte	0x1
	.byte	0x68
	.long	0xb2a
	.uleb128 0x14
	.long	0xc13
	.byte	0x10
	.byte	0x1
	.byte	0x77
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x77
	.long	0x927
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0x77
	.long	0xc13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x927
	.uleb128 0x5
	.byte	0x8
	.long	0xad9
	.uleb128 0x14
	.long	0xc44
	.byte	0x10
	.byte	0x1
	.byte	0x86
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x86
	.long	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0x86
	.long	0xc44
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xaff
	.uleb128 0x5
	.byte	0x8
	.long	0xbe3
	.uleb128 0x9
	.long	0xcf7
	.long	.LASF152
	.byte	0x48
	.byte	0x1
	.byte	0x89
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x8a
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x1
	.byte	0x8b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF153
	.byte	0x1
	.byte	0x8c
	.long	0xcf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF154
	.byte	0x1
	.byte	0x8d
	.long	0xd03
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x8e
	.long	0x3c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0x8f
	.long	0xad3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x92
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x93
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x94
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7ce
	.uleb128 0x16
	.byte	0x1
	.long	0xac
	.uleb128 0x5
	.byte	0x8
	.long	0xcfd
	.uleb128 0x17
	.long	0xd1e
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc19
	.uleb128 0x10
	.long	0xd1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x46a
	.uleb128 0x5
	.byte	0x8
	.long	0xd09
	.uleb128 0xf
	.long	0xd36
	.byte	0x1
	.uleb128 0x10
	.long	0xc19
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd2a
	.uleb128 0x17
	.long	0xd4c
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc19
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd3c
	.uleb128 0x17
	.long	0xd6c
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xd6c
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4ff
	.uleb128 0x5
	.byte	0x8
	.long	0xd52
	.uleb128 0x17
	.long	0xd8e
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc19
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd78
	.uleb128 0x17
	.long	0xda9
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc4a
	.uleb128 0x10
	.long	0xd1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd94
	.uleb128 0xf
	.long	0xdbb
	.byte	0x1
	.uleb128 0x10
	.long	0xc4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdaf
	.uleb128 0x17
	.long	0xdd1
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdc1
	.uleb128 0x17
	.long	0xdf1
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x61e
	.uleb128 0x5
	.byte	0x8
	.long	0xdd7
	.uleb128 0x17
	.long	0xe13
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xc4a
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdfd
	.uleb128 0x14
	.long	0xe3e
	.byte	0x10
	.byte	0x1
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0xa8
	.long	0xe75
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0xa8
	.long	0xe7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xe75
	.long	.LASF161
	.byte	0x30
	.byte	0x1
	.byte	0xa5
	.uleb128 0x15
	.string	"ops"
	.byte	0x1
	.byte	0xa6
	.long	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF112
	.byte	0x1
	.byte	0xa7
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0xa8
	.long	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe3e
	.uleb128 0x5
	.byte	0x8
	.long	0xe75
	.uleb128 0x9
	.long	0xe9c
	.long	.LASF162
	.byte	0x8
	.byte	0x1
	.byte	0xae
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0xae
	.long	0xe75
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x14
	.long	0xec1
	.byte	0x10
	.byte	0x1
	.byte	0xaf
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0xaf
	.long	0xec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0xaf
	.long	0xec7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5d8
	.uleb128 0x5
	.byte	0x8
	.long	0xec1
	.uleb128 0x14
	.long	0xef2
	.byte	0x10
	.byte	0x1
	.byte	0xb5
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0xb5
	.long	0x948
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x1
	.byte	0xb5
	.long	0xef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x948
	.uleb128 0x5
	.byte	0x8
	.long	0x5cd
	.uleb128 0x9
	.long	0xf51
	.long	.LASF163
	.byte	0x98
	.byte	0x2
	.byte	0x1f
	.uleb128 0x15
	.string	"hw"
	.byte	0x2
	.byte	0x20
	.long	0xad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"f"
	.byte	0x2
	.byte	0x21
	.long	0x3b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF164
	.byte	0x2
	.byte	0x22
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF165
	.byte	0x2
	.byte	0x23
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF166
	.byte	0x2
	.byte	0x24
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x2
	.long	.LASF163
	.byte	0x2
	.byte	0x25
	.long	0xefe
	.uleb128 0x14
	.long	0xf81
	.byte	0x18
	.byte	0x2
	.byte	0x2a
	.uleb128 0xd
	.long	.LASF167
	.byte	0x2
	.byte	0x28
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x2
	.byte	0x29
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x19
	.long	0xfbb
	.long	.LASF169
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"fmt"
	.byte	0x1
	.byte	0xee
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.uleb128 0x1b
	.string	"ap"
	.byte	0x1
	.byte	0xf0
	.long	0x369
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1c
	.long	0x1105
	.long	.LASF170
	.byte	0x2
	.byte	0x35
	.byte	0x1
	.long	0x3f
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x2
	.byte	0x34
	.long	0xc19
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"wav"
	.byte	0x2
	.byte	0x36
	.long	0x1105
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF172
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.string	"dst"
	.byte	0x2
	.byte	0x38
	.long	0x110b
	.uleb128 0x1d
	.string	"src"
	.byte	0x2
	.byte	0x39
	.long	0x76a
	.uleb128 0x1b
	.string	"now"
	.byte	0x2
	.byte	0x3a
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x2
	.byte	0x3b
	.long	0xb4
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x2
	.byte	0x3c
	.long	0xb4
	.uleb128 0x20
	.long	0x107f
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1d
	.string	"ta"
	.byte	0x2
	.byte	0x4b
	.long	0x3f
	.uleb128 0x1d
	.string	"tb"
	.byte	0x2
	.byte	0x4b
	.long	0x3f
	.byte	0x0
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x2
	.byte	0x4f
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x2
	.byte	0x50
	.long	0x3f
	.uleb128 0x22
	.long	0x10c2
	.long	0x1111
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x23
	.long	0x1122
	.uleb128 0x24
	.long	0x112b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x10ec
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1d
	.string	"ta"
	.byte	0x2
	.byte	0x50
	.long	0x3f
	.uleb128 0x1d
	.string	"tb"
	.byte	0x2
	.byte	0x50
	.long	0x3f
	.byte	0x0
	.uleb128 0x26
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x27
	.long	0x1136
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf51
	.uleb128 0x5
	.byte	0x8
	.long	0x374
	.uleb128 0x28
	.long	0x1140
	.long	.LASF177
	.byte	0x3
	.byte	0x91
	.byte	0x1
	.long	0xac
	.byte	0x3
	.uleb128 0x29
	.string	"p"
	.byte	0x3
	.byte	0x90
	.long	0xac
	.uleb128 0x2a
	.long	.LASF178
	.byte	0x3
	.byte	0x90
	.long	0x3f
	.uleb128 0x1d
	.string	"d"
	.byte	0x3
	.byte	0x92
	.long	0x110b
	.byte	0x0
	.uleb128 0x1c
	.long	0x1189
	.long	.LASF179
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x3f
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"sw"
	.byte	0x2
	.byte	0x61
	.long	0xd6c
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0x61
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"len"
	.byte	0x2
	.byte	0x61
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x19
	.long	0x11da
	.long	.LASF180
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0x67
	.long	0x110b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"val"
	.byte	0x2
	.byte	0x67
	.long	0x37f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"len"
	.byte	0x2
	.byte	0x67
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.string	"i"
	.byte	0x2
	.byte	0x69
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.long	0x126c
	.long	.LASF181
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x2
	.byte	0x70
	.long	0xc19
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"as"
	.byte	0x2
	.byte	0x70
	.long	0xd1e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"wav"
	.byte	0x2
	.byte	0x72
	.long	0x1105
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x2
	.byte	0x73
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.long	.LASF183
	.byte	0x2
	.byte	0x73
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"hdr"
	.byte	0x2
	.byte	0x74
	.long	0x126c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x2
	.byte	0x7a
	.long	0x46a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF185
	.long	0x128c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.byte	0x0
	.uleb128 0xb
	.long	0x127c
	.long	0x374
	.uleb128 0xc
	.long	0x61
	.byte	0x2b
	.byte	0x0
	.uleb128 0xb
	.long	0x128c
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xc
	.byte	0x0
	.uleb128 0x6
	.long	0x127c
	.uleb128 0x19
	.long	0x12fd
	.long	.LASF186
	.byte	0x2
	.byte	0xb0
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x2
	.byte	0xaf
	.long	0xc19
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"wav"
	.byte	0x2
	.byte	0xb1
	.long	0x1105
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x2
	.byte	0xb2
	.long	0x12fd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x2
	.byte	0xb3
	.long	0x12fd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x2
	.byte	0xb4
	.long	0x37f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x2
	.byte	0xb5
	.long	0x37f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xb
	.long	0x130d
	.long	0x374
	.uleb128 0xc
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x1c
	.long	0x134a
	.long	.LASF191
	.byte	0x2
	.byte	0xcc
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"hw"
	.byte	0x2
	.byte	0xcb
	.long	0xc19
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x2
	.byte	0xcb
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x2
	.byte	0xd3
	.byte	0x1
	.long	0xac
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	0x1394
	.long	.LASF192
	.byte	0x2
	.byte	0xd8
	.byte	0x1
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.long	.LASF112
	.byte	0x2
	.byte	0xd7
	.long	0xac
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF193
	.byte	0x4
	.byte	0x91
	.long	0x33d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF194
	.byte	0x4
	.byte	0x92
	.long	0x33d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF195
	.byte	0xe
	.byte	0x12
	.long	0x13bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x3b8
	.uleb128 0x2e
	.long	.LASF196
	.byte	0xe
	.byte	0x1c
	.long	0xb4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF197
	.byte	0x2
	.byte	0xfa
	.long	0xc50
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	wav_audio_driver
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x2
	.byte	0x2a
	.long	0xf5c
	.byte	0x9
	.byte	0x3
	.quad	conf
	.uleb128 0xb
	.long	0x1409
	.long	0x7ce
	.uleb128 0xc
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF199
	.byte	0x2
	.byte	0xdd
	.long	0x13f9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	wav_options
	.uleb128 0x2f
	.long	.LASF200
	.byte	0x2
	.byte	0xec
	.long	0xa3a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	wav_pcm_ops
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.long	0x43
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1436
	.long	0x13ce
	.string	"wav_audio_driver"
	.long	0x1409
	.string	"wav_options"
	.long	0x141f
	.string	"wav_pcm_ops"
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF192:
	.string	"wav_audio_fini"
.LASF119:
	.string	"swap_endianness"
.LASF99:
	.string	"t_sample"
.LASF9:
	.string	"size_t"
.LASF78:
	.string	"capture"
.LASF149:
	.string	"wpos"
.LASF175:
	.string	"left_till_end_samples"
.LASF25:
	.string	"_IO_save_end"
.LASF140:
	.string	"write"
.LASF167:
	.string	"settings"
.LASF18:
	.string	"_IO_write_base"
.LASF115:
	.string	"sign"
.LASF111:
	.string	"audio_callback"
.LASF34:
	.string	"_lock"
.LASF102:
	.string	"AUD_OPT_FMT"
.LASF23:
	.string	"_IO_save_base"
.LASF187:
	.string	"rlen"
.LASF89:
	.string	"callback"
.LASF31:
	.string	"_cur_column"
.LASF60:
	.string	"QEMUClock"
.LASF178:
	.string	"incr"
.LASF199:
	.string	"wav_options"
.LASF114:
	.string	"bits"
.LASF107:
	.string	"valp"
.LASF106:
	.string	"audio_option"
.LASF85:
	.string	"total_hw_samples_mixed"
.LASF197:
	.string	"wav_audio_driver"
.LASF65:
	.string	"AUD_FMT_S16"
.LASF2:
	.string	"long int"
.LASF163:
	.string	"WAVVoiceOut"
.LASF51:
	.string	"_IO_marker"
.LASF112:
	.string	"opaque"
.LASF117:
	.string	"shift"
.LASF182:
	.string	"bits16"
.LASF137:
	.string	"init_out"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF67:
	.string	"AUD_FMT_S32"
.LASF100:
	.string	"f_sample"
.LASF116:
	.string	"align"
.LASF6:
	.string	"unsigned char"
.LASF172:
	.string	"decr"
.LASF179:
	.string	"wav_write_out"
.LASF129:
	.string	"rpos"
.LASF63:
	.string	"AUD_FMT_S8"
.LASF185:
	.string	"__FUNCTION__"
.LASF43:
	.string	"__gnuc_va_list"
.LASF170:
	.string	"wav_run_out"
.LASF5:
	.string	"char"
.LASF174:
	.string	"bytes"
.LASF135:
	.string	"pcm_ops"
.LASF50:
	.string	"_IO_lock_t"
.LASF59:
	.string	"QEMUFile"
.LASF191:
	.string	"wav_ctl_out"
.LASF148:
	.string	"HWVoiceIn"
.LASF62:
	.string	"AUD_FMT_U8"
.LASF15:
	.string	"_IO_read_ptr"
.LASF158:
	.string	"max_voices_in"
.LASF71:
	.string	"endianness"
.LASF47:
	.string	"fp_offset"
.LASF54:
	.string	"_pos"
.LASF193:
	.string	"stdin"
.LASF104:
	.string	"AUD_OPT_BOOL"
.LASF147:
	.string	"sw_in_listhead"
.LASF95:
	.string	"clip"
.LASF26:
	.string	"_markers"
.LASF165:
	.string	"pcm_buf"
.LASF132:
	.string	"samples"
.LASF75:
	.string	"audcnotification_e"
.LASF84:
	.string	"rate"
.LASF35:
	.string	"_offset"
.LASF166:
	.string	"total_samples"
.LASF127:
	.string	"enabled"
.LASF162:
	.string	"cb_listhead"
.LASF155:
	.string	"fini"
.LASF159:
	.string	"voice_size_out"
.LASF133:
	.string	"sw_head"
.LASF0:
	.string	"long unsigned int"
.LASF92:
	.string	"cb_head"
.LASF87:
	.string	"empty"
.LASF98:
	.string	"st_sample_t"
.LASF29:
	.string	"_flags2"
.LASF103:
	.string	"AUD_OPT_STR"
.LASF17:
	.string	"_IO_read_base"
.LASF186:
	.string	"wav_fini_out"
.LASF49:
	.string	"reg_save_area"
.LASF86:
	.string	"active"
.LASF42:
	.string	"_unused2"
.LASF72:
	.string	"audsettings_t"
.LASF61:
	.string	"audio_callback_fn_t"
.LASF30:
	.string	"_old_offset"
.LASF120:
	.string	"SWVoiceCap"
.LASF204:
	.string	"wav_audio_init"
.LASF181:
	.string	"wav_init_out"
.LASF3:
	.string	"long long int"
.LASF183:
	.string	"stereo"
.LASF76:
	.string	"audio_capture_ops"
.LASF20:
	.string	"_IO_write_end"
.LASF105:
	.string	"audio_option_tag_e"
.LASF164:
	.string	"old_ticks"
.LASF46:
	.string	"gp_offset"
.LASF200:
	.string	"wav_pcm_ops"
.LASF80:
	.string	"SWVoiceOut"
.LASF64:
	.string	"AUD_FMT_U16"
.LASF145:
	.string	"read"
.LASF21:
	.string	"_IO_buf_base"
.LASF96:
	.string	"mute"
.LASF52:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF141:
	.string	"ctl_out"
.LASF176:
	.string	"convert_samples"
.LASF201:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF108:
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
.LASF73:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF53:
	.string	"_sbuf"
.LASF157:
	.string	"max_voices_out"
.LASF48:
	.string	"overflow_arg_area"
.LASF83:
	.string	"ratio"
.LASF70:
	.string	"nchannels"
.LASF14:
	.string	"_flags"
.LASF169:
	.string	"dolog"
.LASF66:
	.string	"AUD_FMT_U32"
.LASF123:
	.string	"sw_cap_listhead"
.LASF177:
	.string	"advance"
.LASF144:
	.string	"run_in"
.LASF41:
	.string	"_mode"
.LASF202:
	.string	"audio/wavaudio.c"
.LASF138:
	.string	"fini_out"
.LASF81:
	.string	"info"
.LASF82:
	.string	"conv"
.LASF134:
	.string	"cap_head"
.LASF118:
	.string	"bytes_per_second"
.LASF77:
	.string	"notify"
.LASF13:
	.string	"long long unsigned int"
.LASF79:
	.string	"destroy"
.LASF56:
	.string	"uint8_t"
.LASF171:
	.string	"live"
.LASF168:
	.string	"wav_path"
.LASF10:
	.string	"__off_t"
.LASF180:
	.string	"le_store"
.LASF27:
	.string	"_chain"
.LASF188:
	.string	"dlen"
.LASF97:
	.string	"volume_t"
.LASF74:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF101:
	.string	"AUD_OPT_INT"
.LASF93:
	.string	"SWVoiceIn"
.LASF195:
	.string	"vm_clock"
.LASF19:
	.string	"_IO_write_ptr"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF94:
	.string	"total_hw_samples_acquired"
.LASF143:
	.string	"fini_in"
.LASF68:
	.string	"audfmt_e"
.LASF121:
	.string	"sw_out_listhead"
.LASF11:
	.string	"__off64_t"
.LASF184:
	.string	"wav_as"
.LASF154:
	.string	"init"
.LASF203:
	.string	"/home/remco/Projects/Argos/src"
.LASF136:
	.string	"audio_pcm_ops"
.LASF22:
	.string	"_IO_buf_end"
.LASF55:
	.string	"va_list"
.LASF160:
	.string	"voice_size_in"
.LASF88:
	.string	"name"
.LASF151:
	.string	"conv_buf"
.LASF8:
	.string	"short int"
.LASF150:
	.string	"total_samples_captured"
.LASF58:
	.string	"uint64_t"
.LASF152:
	.string	"audio_driver"
.LASF109:
	.string	"overriddenp"
.LASF131:
	.string	"mix_buf"
.LASF124:
	.string	"le_next"
.LASF32:
	.string	"_vtable_offset"
.LASF126:
	.string	"HWVoiceOut"
.LASF45:
	.string	"__va_list_tag"
.LASF125:
	.string	"le_prev"
.LASF110:
	.string	"overridden"
.LASF156:
	.string	"can_be_default"
.LASF173:
	.string	"ticks"
.LASF189:
	.string	"datalen"
.LASF113:
	.string	"audio_pcm_info"
.LASF146:
	.string	"ctl_in"
.LASF196:
	.string	"ticks_per_sec"
.LASF16:
	.string	"_IO_read_end"
.LASF190:
	.string	"rifflen"
.LASF57:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF69:
	.string	"freq"
.LASF4:
	.string	"short unsigned int"
.LASF194:
	.string	"stdout"
.LASF128:
	.string	"pending_disable"
.LASF139:
	.string	"run_out"
.LASF130:
	.string	"ts_helper"
.LASF90:
	.string	"entries"
.LASF12:
	.string	"int64_t"
.LASF122:
	.string	"lh_first"
.LASF153:
	.string	"options"
.LASF198:
	.string	"conf"
.LASF91:
	.string	"CaptureVoiceOut"
.LASF142:
	.string	"init_in"
.LASF161:
	.string	"capture_callback"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
