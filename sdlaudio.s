	.file	"sdlaudio.c"
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
	.string	"sdl"
.LC1:
	.string	"SDL http://www.libsdl.org"
.globl sdl_audio_driver
	.data
	.align 32
	.type	sdl_audio_driver, @object
	.size	sdl_audio_driver, 72
sdl_audio_driver:
	.quad	.LC0
	.quad	.LC1
	.quad	sdl_options
	.quad	sdl_audio_init
	.quad	sdl_audio_fini
	.quad	sdl_pcm_ops
	.long	1
	.long	1
	.long	0
	.long	136
	.long	0
	.zero	4
	.align 32
	.type	sdl_pcm_ops, @object
	.size	sdl_pcm_ops, 80
sdl_pcm_ops:
	.quad	sdl_init_out
	.quad	sdl_fini_out
	.quad	sdl_run_out
	.quad	sdl_write_out
	.quad	sdl_ctl_out
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata.str1.1
.LC2:
	.string	"SAMPLES"
.LC3:
	.string	"Size of SDL buffer in samples"
	.data
	.align 32
	.type	sdl_options, @object
	.size	sdl_options, 96
sdl_options:
	.quad	.LC2
	.long	0
	.zero	4
	.quad	conf
	.quad	.LC3
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
	.align 4
	.type	conf, @object
	.size	conf, 4
conf:
	.long	1024
	.text
	.p2align 4,,15
	.type	dolog, @function
dolog:
.LFB105:
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
.LFE105:
	.size	dolog, .-dolog
	.section	.rodata.str1.1
.LC4:
	.string	"Reason: %s\n"
	.text
	.p2align 4,,15
	.type	sdl_logerr, @function
sdl_logerr:
.LFB107:
	.file 2 "audio/sdlaudio.c"
	.loc 2 61 0
	subq	$216, %rsp
.LCFI1:
	.loc 2 61 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 56(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L4, %edx
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	movq	%rsi, 40(%rsp)
	.loc 2 65 0
	movq	%rdi, %rsi
	.loc 2 61 0
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	.loc 2 65 0
	movl	$.LC0, %edi
	.loc 2 61 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L4:
	.loc 2 64 0
	leaq	224(%rsp), %rax
	.loc 2 65 0
	movq	%rsp, %rdx
	.loc 2 64 0
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 2 65 0
	call	AUD_vlog
	.loc 2 68 0
	call	SDL_GetError
	movl	$.LC4, %esi
	movq	%rax, %rdx
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	addq	$216, %rsp
	ret
.LFE107:
	.size	sdl_logerr, .-sdl_logerr
	.section	.rodata.str1.1
.LC5:
	.string	"SDL_LockMutex for %s failed\n"
	.text
	.p2align 4,,15
	.type	sdl_lock, @function
sdl_lock:
.LFB108:
	.loc 2 72 0
	pushq	%rbx
.LCFI2:
	.loc 2 73 0
	movq	8(%rdi), %rdi
	.loc 2 72 0
	movq	%rsi, %rbx
	.loc 2 73 0
	call	SDL_mutexP
	.loc 2 77 0
	xorl	%edx, %edx
	.loc 2 73 0
	testl	%eax, %eax
	jne	.L8
	.loc 2 78 0
	popq	%rbx
	movl	%edx, %eax
	ret
.L8:
	.loc 2 74 0
	movq	%rbx, %rsi
	xorl	%eax, %eax
	movl	$.LC5, %edi
	call	sdl_logerr
	.loc 2 78 0
	popq	%rbx
	.loc 2 75 0
	movl	$-1, %edx
	.loc 2 78 0
	movl	%edx, %eax
	ret
.LFE108:
	.size	sdl_lock, .-sdl_lock
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"SDL_UnlockMutex for %s failed\n"
	.text
	.p2align 4,,15
	.type	sdl_unlock, @function
sdl_unlock:
.LFB109:
	.loc 2 81 0
	pushq	%rbx
.LCFI3:
	.loc 2 82 0
	movq	8(%rdi), %rdi
	.loc 2 81 0
	movq	%rsi, %rbx
	.loc 2 82 0
	call	SDL_mutexV
	.loc 2 86 0
	xorl	%edx, %edx
	.loc 2 82 0
	testl	%eax, %eax
	jne	.L11
	.loc 2 87 0
	popq	%rbx
	movl	%edx, %eax
	ret
.L11:
	.loc 2 83 0
	movq	%rbx, %rsi
	xorl	%eax, %eax
	movl	$.LC6, %edi
	call	sdl_logerr
	.loc 2 87 0
	popq	%rbx
	.loc 2 84 0
	movl	$-1, %edx
	.loc 2 87 0
	movl	%edx, %eax
	ret
.LFE109:
	.size	sdl_unlock, .-sdl_unlock
	.section	.rodata.str1.1
.LC7:
	.string	"SDL_SemPost for %s failed\n"
	.text
	.p2align 4,,15
	.type	sdl_unlock_and_post, @function
sdl_unlock_and_post:
.LFB112:
	.loc 2 108 0
	movq	%rbx, -16(%rsp)
.LCFI4:
	movq	%rbp, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 2 108 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 2 109 0
	call	sdl_unlock
	testl	%eax, %eax
	.loc 2 110 0
	movl	$-1, %edx
	.loc 2 109 0
	jne	.L12
.LBB2:
.LBB3:
	.loc 2 91 0
	movq	16(%rbx), %rdi
	call	SDL_SemPost
	.loc 2 94 0
	xorl	%edx, %edx
	.loc 2 91 0
	testl	%eax, %eax
	jne	.L16
.L12:
.LBE3:
.LBE2:
	.loc 2 114 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L16:
.LBB4:
.LBB5:
	.loc 2 92 0
	movq	%rbp, %rsi
	xorl	%eax, %eax
	movl	$.LC7, %edi
	call	sdl_logerr
.LBE5:
.LBE4:
	.loc 2 114 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
.LBB6:
.LBB7:
	.loc 2 92 0
	movl	$-1, %edx
.LBE7:
.LBE6:
	.loc 2 114 0
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.LFE112:
	.size	sdl_unlock_and_post, .-sdl_unlock_and_post
	.section	.rodata.str1.1
.LC8:
	.string	"sdl_close"
	.text
	.p2align 4,,15
	.type	sdl_close, @function
sdl_close:
.LFB116:
	.loc 2 208 0
	pushq	%rbx
.LCFI7:
	.loc 2 209 0
	movl	24(%rdi), %eax
	.loc 2 208 0
	movq	%rdi, %rbx
	.loc 2 209 0
	testl	%eax, %eax
	jne	.L19
	.loc 2 217 0
	popq	%rbx
	ret
	.p2align 4,,7
.L19:
	.loc 2 210 0
	movl	$.LC8, %esi
	call	sdl_lock
	.loc 2 212 0
	movl	$.LC8, %esi
	movq	%rbx, %rdi
	.loc 2 211 0
	movl	$1, (%rbx)
	.loc 2 212 0
	call	sdl_unlock_and_post
	.loc 2 213 0
	movl	$1, %edi
	call	SDL_PauseAudio
	.loc 2 214 0
	call	SDL_CloseAudio
	.loc 2 215 0
	movl	$0, 24(%rbx)
	.loc 2 217 0
	popq	%rbx
	ret
.LFE116:
	.size	sdl_close, .-sdl_close
	.section	.rodata
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 13
__FUNCTION__.0:
	.string	"sdl_callback"
	.section	.rodata.str1.1
.LC9:
	.string	"sdl_callback"
.LC10:
	.string	"SDL_SemWait for %s failed\n"
.LC11:
	.string	"sdl->live=%d hw->samples=%d\n"
	.text
	.p2align 4,,15
	.type	sdl_callback, @function
sdl_callback:
.LFB117:
	.loc 2 220 0
	pushq	%r15
.LCFI8:
	movl	%edx, %r15d
	pushq	%r14
.LCFI9:
	pushq	%r13
.LCFI10:
	movq	%rsi, %r13
	pushq	%r12
.LCFI11:
	pushq	%rbp
.LCFI12:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI13:
	subq	$8, %rsp
.LCFI14:
	.loc 2 224 0
	movl	28(%rdi), %ecx
	sarl	%cl, %r15d
	.loc 2 226 0
	movl	glob_sdl(%rip), %ecx
	testl	%ecx, %ecx
.LBB8:
	.loc 2 271 0
	jne	.L20
.L47:
.LBE8:
	.loc 2 272 0
	testl	%r15d, %r15d
	je	.L20
.LBB9:
.LBB10:
.LBB11:
	.loc 2 100 0
	movq	glob_sdl+16(%rip), %rdi
	call	SDL_SemWait
	testl	%eax, %eax
	jne	.L49
.L25:
.LBE11:
.LBE10:
	.loc 2 235 0
	movl	glob_sdl(%rip), %edx
	testl	%edx, %edx
	jne	.L20
	.loc 2 239 0
	movl	$.LC9, %esi
	movl	$glob_sdl, %edi
	call	sdl_lock
	testl	%eax, %eax
	jne	.L20
	.loc 2 243 0
	movl	120(%rbp), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	js	.L32
	cmpl	72(%rbp), %eax
	jg	.L32
.L31:
	movl	$__FUNCTION__.0, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L50
	.loc 2 249 0
	movl	120(%rbp), %eax
	testl	%eax, %eax
	je	.L34
.LBB12:
	.loc 2 254 0
	cmpl	%eax, %r15d
	movl	%eax, %r14d
	cmovle	%r15d, %r14d
.LBE12:
	.loc 2 264 0
	testl	%r14d, %r14d
	.loc 2 255 0
	movl	%r14d, %r12d
	.loc 2 264 0
	je	.L46
	movl	72(%rbp), %edi
	.p2align 4,,7
.L41:
.LBB13:
.LBB14:
	.loc 2 257 0
	movslq	48(%rbp),%rsi
	movl	%edi, %ebx
.LBE14:
	.loc 2 261 0
	movq	%r13, %rdi
.LBB15:
	.loc 2 257 0
	subl	%esi, %ebx
	cmpl	%ebx, %r12d
	cmovle	%r12d, %ebx
.LBE15:
	.loc 2 258 0
	salq	$4, %rsi
	addq	64(%rbp), %rsi
	.loc 2 261 0
	movl	%ebx, %edx
	call	*40(%rbp)
	.loc 2 262 0
	movl	124(%rbp), %eax
	movl	72(%rbp), %edi
	.loc 2 264 0
	movl	28(%rbp), %ecx
	.loc 2 262 0
	addl	%ebx, %eax
	cltd
	idivl	%edi
	.loc 2 264 0
	movl	%ebx, %eax
	sall	%cl, %eax
	movslq	%eax,%rcx
	addq	%rcx, %r13
.LBE13:
	subl	%ebx, %r12d
.LBB16:
	.loc 2 262 0
	movl	%edx, 124(%rbp)
.LBE16:
	.loc 2 264 0
	jne	.L41
	movl	120(%rbp), %eax
.L46:
	.loc 2 268 0
	addl	%r14d, 128(%rbp)
	.loc 2 267 0
	subl	%r14d, %eax
	.loc 2 266 0
	subl	%r14d, %r15d
	.loc 2 267 0
	movl	%eax, 120(%rbp)
.L34:
	.loc 2 271 0
	movl	$.LC9, %esi
	movl	$glob_sdl, %edi
	call	sdl_unlock
	testl	%eax, %eax
	je	.L47
	.p2align 4,,7
.L20:
.LBE9:
	.loc 2 276 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L32:
.LBB17:
	.loc 2 243 0
	movl	$1, %esi
	jmp	.L31
.L49:
.LBB18:
.LBB19:
	.loc 2 101 0
	movl	$.LC9, %esi
	movl	$.LC10, %edi
	xorl	%eax, %eax
	call	sdl_logerr
	jmp	.L25
.L50:
.LBE19:
.LBE18:
	.loc 2 244 0
	movl	72(%rbp), %edx
	movl	120(%rbp), %esi
.LBE17:
	.loc 2 276 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
.LBB20:
	.loc 2 244 0
	movl	$.LC11, %edi
	xorl	%eax, %eax
	jmp	dolog
.LBE20:
.LFE117:
	.size	sdl_callback, .-sdl_callback
	.p2align 4,,15
	.type	sdl_write_out, @function
sdl_write_out:
.LFB118:
	.loc 2 279 0
	.loc 2 280 0
	jmp	audio_pcm_sw_write
.LFE118:
	.size	sdl_write_out, .-sdl_write_out
	.p2align 4,,15
	.type	sdl_run_out, @function
sdl_run_out:
.LFB119:
	.loc 2 284 0
	movq	%rbx, -16(%rsp)
.LCFI15:
	movq	%rbp, -8(%rsp)
.LCFI16:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI17:
	.loc 2 289 0
	movl	$.LC9, %esi
	movl	$glob_sdl, %edi
	call	sdl_lock
	.loc 2 290 0
	xorl	%edx, %edx
	.loc 2 289 0
	testl	%eax, %eax
	je	.L60
	.loc 2 315 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L60:
	.loc 2 293 0
	movq	%rbx, %rdi
	call	audio_pcm_hw_get_live_out
	.loc 2 295 0
	movl	128(%rbx), %edx
.LBB21:
	.loc 2 302 0
	movl	%eax, %ebp
	cmpl	%eax, %edx
	cmovle	%edx, %ebp
.LBE21:
	.loc 2 303 0
	subl	%ebp, %edx
	.loc 2 305 0
	subl	%ebp, %eax
	.loc 2 303 0
	movl	%edx, 128(%rbx)
	.loc 2 306 0
	movl	124(%rbx), %edx
	.loc 2 308 0
	testl	%eax, %eax
	.loc 2 305 0
	movl	%eax, 120(%rbx)
	.loc 2 306 0
	movl	%edx, 48(%rbx)
	.loc 2 308 0
	jle	.L58
	.loc 2 309 0
	movl	$.LC9, %esi
	movl	$glob_sdl, %edi
	call	sdl_unlock_and_post
	.loc 2 314 0
	movl	%ebp, %edx
.L61:
	.loc 2 315 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.L58:
	.loc 2 312 0
	movl	$.LC9, %esi
	movl	$glob_sdl, %edi
	call	sdl_unlock
	.loc 2 314 0
	movl	%ebp, %edx
	jmp	.L61
.LFE119:
	.size	sdl_run_out, .-sdl_run_out
	.p2align 4,,15
	.type	sdl_fini_out, @function
sdl_fini_out:
.LFB120:
	.loc 2 318 0
	.loc 2 321 0
	movl	$glob_sdl, %edi
	jmp	sdl_close
.LFE120:
	.size	sdl_fini_out, .-sdl_fini_out
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Unrecognized SDL audio format %d\n"
	.align 8
.LC13:
	.string	"Internal logic error: Bad audio format %d\n"
	.section	.rodata.str1.1
.LC14:
	.string	"SDL_OpenAudio failed\n"
	.text
	.p2align 4,,15
	.type	sdl_init_out, @function
sdl_init_out:
.LFB121:
	.loc 2 325 0
	movq	%rbx, -40(%rsp)
.LCFI18:
	movq	%r14, -8(%rsp)
.LCFI19:
	movq	%rsi, %rbx
	movq	%rbp, -32(%rsp)
.LCFI20:
	movq	%r12, -24(%rsp)
.LCFI21:
	movq	%rdi, %r14
	movq	%r13, -16(%rsp)
.LCFI22:
	subq	$376, %rsp
.LCFI23:
	.loc 2 337 0
	movl	(%rsi), %eax
	.loc 2 335 0
	movl	4(%rsi), %edx
	.loc 2 337 0
	movl	%eax, 304(%rsp)
.LBB22:
	.loc 2 117 0
	movl	8(%rsi), %esi
.LBB23:
	.loc 2 120 0
	movl	$32776, %eax
	.loc 2 118 0
	cmpl	$1, %esi
	je	.L67
	jae	.L90
	.loc 2 124 0
	movl	$8, %eax
.L67:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 2 192 0
	leaq	128(%rsp), %rbx
.LBE25:
.LBE24:
	.loc 2 117 0
	movw	%ax, 308(%rsp)
	.loc 2 340 0
	movl	conf(%rip), %eax
.LBB26:
	.loc 2 186 0
	leaq	304(%rsp), %r13
	leaq	272(%rsp), %r12
.LBE26:
	.loc 2 339 0
	movb	%dl, 310(%rsp)
.LBB27:
.LBB28:
	.loc 2 192 0
	movq	%rbx, %rdi
.LBE28:
.LBE27:
	.loc 2 341 0
	movq	$sdl_callback, 320(%rsp)
	.loc 2 342 0
	movq	%r14, 328(%rsp)
	.loc 2 340 0
	movw	%ax, 312(%rsp)
.LBB29:
.LBB30:
	.loc 2 193 0
	movq	%rsp, %rbp
	.loc 2 192 0
	call	sigfillset
	.loc 2 193 0
	movq	%rbx, %rsi
	xorl	%edi, %edi
	movq	%rsp, %rdx
	call	pthread_sigmask
	.loc 2 196 0
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	SDL_OpenAudio
	.loc 2 197 0
	testl	%eax, %eax
	.loc 2 196 0
	movl	%eax, %ebx
	.loc 2 197 0
	jne	.L91
.L73:
	.loc 2 202 0
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movl	$2, %edi
	call	pthread_sigmask
.LBE30:
.LBE29:
	.loc 2 186 0
	testl	%ebx, %ebx
	.loc 2 345 0
	movl	$-1, %eax
	.loc 2 186 0
	jne	.L63
.LBB31:
	.loc 2 145 0
	movzwl	276(%rsp), %esi
.LBB32:
	.loc 2 146 0
	cmpl	$4112, %esi
	je	.L81
	jg	.L84
	cmpl	$8, %esi
	je	.L77
	cmpl	$16, %esi
	.p2align 4,,7
	je	.L79
.L82:
	.loc 2 178 0
	xorl	%eax, %eax
	movl	$.LC15, %edi
	call	dolog
.LBE32:
.LBE31:
	.loc 2 350 0
	movl	$glob_sdl, %edi
	call	sdl_close
	.loc 2 351 0
	movl	$-1, %eax
	jmp	.L63
	.p2align 4,,7
.L90:
.LBB33:
.LBB34:
	.loc 2 118 0
	cmpl	$2, %esi
	.loc 2 132 0
	movw	$16, %ax
	.loc 2 118 0
	je	.L67
	cmpl	$3, %esi
	.loc 2 128 0
	movw	$-32752, %ax
	.loc 2 118 0
	je	.L67
	.loc 2 136 0
	xorl	%eax, %eax
	movl	$.LC13, %edi
	call	dolog
	movl	4(%rbx), %edx
	movl	$8, %eax
	jmp	.L67
	.p2align 4,,7
.L84:
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 2 146 0
	cmpl	$32784, %esi
	je	.L78
	.p2align 4,,5
	jg	.L85
	cmpl	$32776, %esi
	.p2align 4,,7
	jne	.L82
	.loc 2 148 0
	xorl	%ecx, %ecx
	.loc 2 149 0
	movl	$1, %edx
	.p2align 4,,5
	jmp	.L75
	.p2align 4,,7
.L91:
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	.loc 2 198 0
	movl	$.LC14, %edi
	xorl	%eax, %eax
	call	sdl_logerr
	jmp	.L73
	.p2align 4,,7
.L81:
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	.loc 2 173 0
	movl	$1, %ecx
.L88:
	.loc 2 174 0
	movl	$2, %edx
.L75:
.LBE40:
.LBE39:
	.loc 2 354 0
	movl	272(%rsp), %eax
	.loc 2 359 0
	leaq	256(%rsp), %rsi
	leaq	8(%r14), %rdi
	.loc 2 356 0
	movl	%edx, 264(%rsp)
	.loc 2 357 0
	movl	%ecx, 268(%rsp)
	.loc 2 354 0
	movl	%eax, 256(%rsp)
	.loc 2 355 0
	movzbl	278(%rsp), %eax
	movl	%eax, 260(%rsp)
	.loc 2 359 0
	call	audio_pcm_init_info
	.loc 2 360 0
	movzwl	280(%rsp), %eax
	.loc 2 364 0
	xorl	%edi, %edi
	.loc 2 360 0
	movl	%eax, 72(%r14)
	.loc 2 362 0
	movl	$glob_sdl, %eax
	.loc 2 363 0
	movl	$0, glob_sdl(%rip)
	.loc 2 362 0
	movl	$1, 24(%rax)
	.loc 2 364 0
	call	SDL_PauseAudio
	.loc 2 365 0
	xorl	%eax, %eax
.L63:
	.loc 2 366 0
	movq	336(%rsp), %rbx
	movq	344(%rsp), %rbp
	movq	352(%rsp), %r12
	movq	360(%rsp), %r13
	movq	368(%rsp), %r14
	addq	$376, %rsp
	ret
	.p2align 4,,7
.L85:
.LBB41:
.LBB42:
	.loc 2 146 0
	cmpl	$36880, %esi
	jne	.L82
	.loc 2 168 0
	movl	$1, %ecx
	.loc 2 169 0
	movl	$3, %edx
	jmp	.L75
.L79:
	.loc 2 163 0
	xorl	%ecx, %ecx
	.p2align 4,,3
	jmp	.L88
.L77:
	.loc 2 153 0
	xorl	%ecx, %ecx
	.loc 2 154 0
	xorl	%edx, %edx
	jmp	.L75
.L78:
	.loc 2 158 0
	xorl	%ecx, %ecx
	.loc 2 169 0
	movl	$3, %edx
	jmp	.L75
.LBE42:
.LBE41:
.LFE121:
	.size	sdl_init_out, .-sdl_init_out
	.p2align 4,,15
	.type	sdl_ctl_out, @function
sdl_ctl_out:
.LFB122:
	.loc 2 369 0
	subq	$184, %rsp
.LCFI24:
	.loc 2 369 0
	movq	%rdx, 16(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 24(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L93, %edx
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	subq	%rax, %rdx
	leaq	175(%rsp), %rax
	.loc 2 372 0
	cmpl	$1, %esi
	.loc 2 369 0
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L93:
	.loc 2 372 0
	je	.L95
	cmpl	$2, %esi
	je	.L96
	.loc 2 382 0
	xorl	%eax, %eax
	addq	$184, %rsp
	ret
	.p2align 4,,7
.L95:
	.loc 2 374 0
	xorl	%edi, %edi
	.loc 2 378 0
	call	SDL_PauseAudio
.L98:
	.loc 2 382 0
	xorl	%eax, %eax
	addq	$184, %rsp
	ret
	.p2align 4,,7
.L96:
	.loc 2 378 0
	movl	$1, %edi
	call	SDL_PauseAudio
	.p2align 4,,3
	jmp	.L98
.LFE122:
	.size	sdl_ctl_out, .-sdl_ctl_out
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"SDL failed to initialize audio subsystem\n"
	.section	.rodata.str1.1
.LC17:
	.string	"Failed to create SDL mutex\n"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Failed to create SDL semaphore\n"
	.text
	.p2align 4,,15
	.type	sdl_audio_init, @function
sdl_audio_init:
.LFB123:
	.loc 2 385 0
	subq	$8, %rsp
.LCFI25:
	.loc 2 388 0
	movl	$16, %edi
	call	SDL_InitSubSystem
	testl	%eax, %eax
	jne	.L105
	.loc 2 393 0
	call	SDL_CreateMutex
	.loc 2 394 0
	testq	%rax, %rax
	.loc 2 393 0
	movq	%rax, glob_sdl+8(%rip)
	.loc 2 394 0
	je	.L106
	.loc 2 400 0
	xorl	%edi, %edi
	call	SDL_CreateSemaphore
	.loc 2 401 0
	testq	%rax, %rax
	.loc 2 400 0
	movq	%rax, glob_sdl+16(%rip)
	.loc 2 408 0
	movl	$glob_sdl, %edx
	.loc 2 401 0
	je	.L107
	.loc 2 409 0
	movq	%rdx, %rax
	addq	$8, %rsp
	ret
.L105:
	.loc 2 389 0
	movl	$.LC16, %edi
	xorl	%eax, %eax
	call	sdl_logerr
	.loc 2 405 0
	xorl	%edx, %edx
.L108:
	.loc 2 409 0
	movq	%rdx, %rax
	addq	$8, %rsp
	ret
.L106:
	.loc 2 395 0
	movl	$.LC17, %edi
	call	sdl_logerr
.L103:
	.loc 2 404 0
	movl	$16, %edi
	call	SDL_QuitSubSystem
	.loc 2 405 0
	xorl	%edx, %edx
	jmp	.L108
.L107:
	.loc 2 402 0
	movl	$.LC18, %edi
	call	sdl_logerr
	.loc 2 403 0
	movq	glob_sdl+8(%rip), %rdi
	call	SDL_DestroyMutex
	jmp	.L103
.LFE123:
	.size	sdl_audio_init, .-sdl_audio_init
	.p2align 4,,15
	.type	sdl_audio_fini, @function
sdl_audio_fini:
.LFB124:
	.loc 2 412 0
	pushq	%rbx
.LCFI26:
	.loc 2 412 0
	movq	%rdi, %rbx
	.loc 2 414 0
	call	sdl_close
	.loc 2 415 0
	movq	16(%rbx), %rdi
	call	SDL_DestroySemaphore
	.loc 2 416 0
	movq	8(%rbx), %rdi
	call	SDL_DestroyMutex
	.loc 2 417 0
	popq	%rbx
	movl	$16, %edi
	jmp	SDL_QuitSubSystem
.LFE124:
	.size	sdl_audio_fini, .-sdl_audio_fini
	.comm	glob_sdl,32,32
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
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI0-.LFB105
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI1-.LFB107
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI2-.LFB108
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI3-.LFB109
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI6-.LFB112
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI7-.LFB116
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
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI8-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
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
	.byte	0x4
	.long	.LCFI16-.LFB119
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI19-.LFB121
	.byte	0x8e
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x180
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI24-.LFB122
	.byte	0xe
	.uleb128 0xc0
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI25-.LFB123
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI26-.LFB124
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE26:
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
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI0-.LFB105
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI1-.LFB107
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI2-.LFB108
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI3-.LFB109
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI6-.LFB112
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI7-.LFB116
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
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI8-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
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
	.byte	0x4
	.long	.LCFI16-.LFB119
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI19-.LFB121
	.byte	0x8e
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x180
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI24-.LFB122
	.byte	0xe
	.uleb128 0xc0
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI25-.LFB123
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI26-.LFB124
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE27:
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 5 "<internal>"
	.file 6 "/usr/include/SDL/SDL_mutex.h"
	.file 7 "/usr/include/SDL/SDL_stdinc.h"
	.file 8 "/usr/include/stdint.h"
	.file 9 "audio/mixeng.h"
	.file 10 "/usr/include/sys/types.h"
	.file 11 "audio/audio.h"
	.file 12 "/usr/include/SDL/SDL_audio.h"
	.file 13 "/usr/include/sys/select.h"
	.file 14 "/usr/include/bits/sigset.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x183d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF222
	.byte	0x1
	.long	.LASF223
	.long	.LASF224
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
	.byte	0x10
	.byte	0x8d
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x10
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
	.byte	0x11
	.byte	0xd5
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0xa
	.byte	0xc6
	.long	0x5e
	.uleb128 0x7
	.long	0xbe
	.byte	0x80
	.byte	0xe
	.byte	0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0xe
	.byte	0x1f
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0xce
	.long	0x42
	.uleb128 0xa
	.long	0x7b
	.byte	0xf
	.byte	0x0
	.uleb128 0x4
	.long	.LASF12
	.byte	0xe
	.byte	0x20
	.long	0xa7
	.uleb128 0x4
	.long	.LASF13
	.byte	0xd
	.byte	0x26
	.long	0xce
	.uleb128 0x2
	.long	.LASF14
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF15
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.long	0x2be
	.long	.LASF47
	.byte	0xd8
	.byte	0x3
	.byte	0x2d
	.uleb128 0xc
	.long	.LASF17
	.byte	0xf
	.value	0x110
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF18
	.byte	0xf
	.value	0x115
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF19
	.byte	0xf
	.value	0x116
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF20
	.byte	0xf
	.value	0x117
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF21
	.byte	0xf
	.value	0x118
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF22
	.byte	0xf
	.value	0x119
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF23
	.byte	0xf
	.value	0x11a
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF24
	.byte	0xf
	.value	0x11b
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF25
	.byte	0xf
	.value	0x11c
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF26
	.byte	0xf
	.value	0x11e
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF27
	.byte	0xf
	.value	0x11f
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF28
	.byte	0xf
	.value	0x120
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF29
	.byte	0xf
	.value	0x122
	.long	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF30
	.byte	0xf
	.value	0x124
	.long	0x362
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF31
	.byte	0xf
	.value	0x126
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.long	.LASF32
	.byte	0xf
	.value	0x12a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.long	.LASF33
	.byte	0xf
	.value	0x12c
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF34
	.byte	0xf
	.value	0x130
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF35
	.byte	0xf
	.value	0x131
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.long	.LASF36
	.byte	0xf
	.value	0x132
	.long	0x368
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xc
	.long	.LASF37
	.byte	0xf
	.value	0x136
	.long	0x378
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.long	.LASF38
	.byte	0xf
	.value	0x13f
	.long	0x70
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.long	.LASF39
	.byte	0xf
	.value	0x148
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF40
	.byte	0xf
	.value	0x149
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.long	.LASF41
	.byte	0xf
	.value	0x14a
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.long	.LASF42
	.byte	0xf
	.value	0x14b
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xf
	.value	0x14c
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.long	.LASF44
	.byte	0xf
	.value	0x14e
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.long	.LASF45
	.byte	0xf
	.value	0x150
	.long	0x37e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x4
	.byte	0x2b
	.long	0x2c9
	.uleb128 0x9
	.long	0x2d9
	.long	0x2d9
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x31e
	.long	.LASF48
	.byte	0x18
	.byte	0x5
	.byte	0x0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0x0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x0
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x0
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xf
	.byte	0xb4
	.uleb128 0xb
	.long	0x35c
	.long	.LASF54
	.byte	0x18
	.byte	0xf
	.byte	0xba
	.uleb128 0x8
	.long	.LASF55
	.byte	0xf
	.byte	0xbb
	.long	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF56
	.byte	0xf
	.byte	0xbc
	.long	0x362
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0xf
	.byte	0xc0
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x325
	.uleb128 0x6
	.byte	0x8
	.long	0xf2
	.uleb128 0x9
	.long	0x378
	.long	0x8a
	.uleb128 0xa
	.long	0x7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x31e
	.uleb128 0x9
	.long	0x38e
	.long	0x8a
	.uleb128 0xa
	.long	0x7b
	.byte	0x13
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x394
	.uleb128 0xe
	.long	0x8a
	.uleb128 0x4
	.long	.LASF58
	.byte	0x3
	.byte	0x50
	.long	0x2be
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0x3b0
	.uleb128 0xf
	.uleb128 0x4
	.long	.LASF59
	.byte	0x8
	.byte	0x31
	.long	0x2d
	.uleb128 0x4
	.long	.LASF60
	.byte	0x8
	.byte	0x32
	.long	0x34
	.uleb128 0x4
	.long	.LASF61
	.byte	0x8
	.byte	0x34
	.long	0x3b
	.uleb128 0x4
	.long	.LASF62
	.byte	0x8
	.byte	0x38
	.long	0x42
	.uleb128 0x4
	.long	.LASF63
	.byte	0x7
	.byte	0x56
	.long	0x3b1
	.uleb128 0x4
	.long	.LASF64
	.byte	0x7
	.byte	0x58
	.long	0x3bc
	.uleb128 0x4
	.long	.LASF65
	.byte	0x7
	.byte	0x5a
	.long	0x3c7
	.uleb128 0x4
	.long	.LASF66
	.byte	0x6
	.byte	0x37
	.long	0x409
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.uleb128 0x4
	.long	.LASF67
	.byte	0x6
	.byte	0x51
	.long	0x41a
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x3dd
	.uleb128 0xb
	.long	0x4b1
	.long	.LASF69
	.byte	0x20
	.byte	0xc
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF70
	.byte	0xc
	.byte	0x2b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF71
	.byte	0xc
	.byte	0x2c
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF72
	.byte	0xc
	.byte	0x2d
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF73
	.byte	0xc
	.byte	0x2e
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF74
	.byte	0xc
	.byte	0x2f
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF75
	.byte	0xc
	.byte	0x30
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF76
	.byte	0xc
	.byte	0x31
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF77
	.byte	0xc
	.byte	0x38
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF78
	.byte	0xc
	.byte	0x39
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x11
	.long	0x4c7
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x420
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b1
	.uleb128 0x4
	.long	.LASF69
	.byte	0xc
	.byte	0x3a
	.long	0x426
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.byte	0x4
	.uleb128 0x11
	.long	0x4eb
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.byte	0x0
	.uleb128 0x4
	.long	.LASF80
	.byte	0xb
	.byte	0x1e
	.long	0x4f6
	.uleb128 0x6
	.byte	0x8
	.long	0x4fc
	.uleb128 0x11
	.long	0x50d
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x13
	.long	0x53a
	.byte	0x4
	.byte	0xb
	.byte	0x20
	.uleb128 0x14
	.long	.LASF81
	.sleb128 0
	.uleb128 0x14
	.long	.LASF82
	.sleb128 1
	.uleb128 0x14
	.long	.LASF83
	.sleb128 2
	.uleb128 0x14
	.long	.LASF84
	.sleb128 3
	.uleb128 0x14
	.long	.LASF85
	.sleb128 4
	.uleb128 0x14
	.long	.LASF86
	.sleb128 5
	.byte	0x0
	.uleb128 0x4
	.long	.LASF87
	.byte	0xb
	.byte	0x27
	.long	0x50d
	.uleb128 0x7
	.long	0x586
	.byte	0x10
	.byte	0xb
	.byte	0x34
	.uleb128 0x8
	.long	.LASF70
	.byte	0xb
	.byte	0x30
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x31
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"fmt"
	.byte	0xb
	.byte	0x32
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x33
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	.LASF90
	.byte	0xb
	.byte	0x34
	.long	0x545
	.uleb128 0x13
	.long	0x5a6
	.byte	0x4
	.byte	0xb
	.byte	0x36
	.uleb128 0x14
	.long	.LASF91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF92
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF93
	.byte	0xb
	.byte	0x39
	.long	0x591
	.uleb128 0xb
	.long	0x5e8
	.long	.LASF94
	.byte	0x18
	.byte	0xb
	.byte	0x3b
	.uleb128 0x8
	.long	.LASF95
	.byte	0xb
	.byte	0x3c
	.long	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF96
	.byte	0xb
	.byte	0x3d
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0xb
	.byte	0x3e
	.long	0x61b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.long	0x5f9
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x5a6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e8
	.uleb128 0x11
	.long	0x615
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ff
	.uleb128 0x6
	.byte	0x8
	.long	0x4df
	.uleb128 0x4
	.long	.LASF98
	.byte	0xb
	.byte	0x4c
	.long	0x62c
	.uleb128 0xb
	.long	0x6ef
	.long	.LASF98
	.byte	0x98
	.byte	0xb
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF99
	.byte	0x1
	.byte	0x6b
	.long	0x979
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x1
	.byte	0x6c
	.long	0xcff
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF101
	.byte	0x1
	.byte	0x6d
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF102
	.byte	0x1
	.byte	0x6f
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF103
	.byte	0x1
	.byte	0x70
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF104
	.byte	0x1
	.byte	0x71
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF105
	.byte	0x1
	.byte	0x72
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0x73
	.long	0xd3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0x74
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"vol"
	.byte	0x1
	.byte	0x75
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF77
	.byte	0x1
	.byte	0x76
	.long	0x951
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0x77
	.long	0xd10
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x4
	.long	.LASF108
	.byte	0xb
	.byte	0x4d
	.long	0x6fa
	.uleb128 0xb
	.long	0x740
	.long	.LASF108
	.byte	0x98
	.byte	0xb
	.byte	0x4d
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0xac
	.long	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF109
	.byte	0x1
	.byte	0xae
	.long	0xfa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0xaf
	.long	0xfbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x4
	.long	.LASF110
	.byte	0xb
	.byte	0x4e
	.long	0x74b
	.uleb128 0xb
	.long	0x800
	.long	.LASF110
	.byte	0x98
	.byte	0xb
	.byte	0x4e
	.uleb128 0x8
	.long	.LASF104
	.byte	0x1
	.byte	0x7b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF99
	.byte	0x1
	.byte	0x7c
	.long	0x979
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF101
	.byte	0x1
	.byte	0x7d
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF102
	.byte	0x1
	.byte	0x7e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1
	.byte	0x7f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF112
	.byte	0x1
	.byte	0x81
	.long	0xb56
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.string	"hw"
	.byte	0x1
	.byte	0x82
	.long	0xd6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0x83
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.string	"vol"
	.byte	0x1
	.byte	0x84
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF77
	.byte	0x1
	.byte	0x85
	.long	0x951
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0x86
	.long	0xd41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x7
	.long	0x82f
	.byte	0x18
	.byte	0x9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0x20
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"r"
	.byte	0x9
	.byte	0x20
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"l"
	.byte	0x9
	.byte	0x20
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF114
	.byte	0x9
	.byte	0x20
	.long	0x800
	.uleb128 0x7
	.long	0x85b
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.uleb128 0x15
	.string	"l"
	.byte	0x9
	.byte	0x21
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"r"
	.byte	0x9
	.byte	0x21
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	.LASF115
	.byte	0x9
	.byte	0x21
	.long	0x83a
	.uleb128 0x4
	.long	.LASF116
	.byte	0x9
	.byte	0x25
	.long	0x871
	.uleb128 0x11
	.long	0x88c
	.byte	0x1
	.uleb128 0x12
	.long	0x88c
	.uleb128 0x12
	.long	0x3aa
	.uleb128 0x12
	.long	0x57
	.uleb128 0x12
	.long	0x892
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x85b
	.uleb128 0x6
	.byte	0x8
	.long	0x82f
	.uleb128 0x4
	.long	.LASF117
	.byte	0x9
	.byte	0x26
	.long	0x8a3
	.uleb128 0x11
	.long	0x8b9
	.byte	0x1
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x8b9
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x8bf
	.uleb128 0xe
	.long	0x85b
	.uleb128 0x13
	.long	0x8e5
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.uleb128 0x14
	.long	.LASF118
	.sleb128 0
	.uleb128 0x14
	.long	.LASF119
	.sleb128 1
	.uleb128 0x14
	.long	.LASF120
	.sleb128 2
	.uleb128 0x14
	.long	.LASF121
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	.LASF122
	.byte	0x1
	.byte	0x28
	.long	0x8c4
	.uleb128 0xb
	.long	0x951
	.long	.LASF123
	.byte	0x30
	.byte	0x1
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0x2b
	.long	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x8e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0x1
	.byte	0x2d
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0x1
	.byte	0x2e
	.long	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF126
	.byte	0x1
	.byte	0x2f
	.long	0x3a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF127
	.byte	0x1
	.byte	0x30
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xb
	.long	0x979
	.long	.LASF128
	.byte	0x10
	.byte	0x1
	.byte	0x33
	.uleb128 0x8
	.long	.LASF129
	.byte	0x1
	.byte	0x34
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"fn"
	.byte	0x1
	.byte	0x35
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xb
	.long	0x9f6
	.long	.LASF130
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF131
	.byte	0x1
	.byte	0x39
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x1
	.byte	0x3a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF70
	.byte	0x1
	.byte	0x3b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF133
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF134
	.byte	0x1
	.byte	0x3e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF135
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF136
	.byte	0x1
	.byte	0x40
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0xa2e
	.long	.LASF137
	.byte	0xb0
	.byte	0x1
	.byte	0x43
	.uleb128 0x15
	.string	"sw"
	.byte	0x1
	.byte	0xb3
	.long	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.string	"cap"
	.byte	0x1
	.byte	0xb4
	.long	0x101a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0xb5
	.long	0xfef
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0xb
	.long	0xa49
	.long	.LASF138
	.byte	0x8
	.byte	0x1
	.byte	0x52
	.uleb128 0x8
	.long	.LASF139
	.byte	0x1
	.byte	0x52
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x62c
	.uleb128 0xb
	.long	0xa6a
	.long	.LASF140
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.uleb128 0x8
	.long	.LASF139
	.byte	0x1
	.byte	0x53
	.long	0xa6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x9f6
	.uleb128 0x7
	.long	0xa95
	.byte	0x10
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0x55
	.long	0xb4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0x55
	.long	0xb50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xb
	.long	0xb4a
	.long	.LASF143
	.byte	0x78
	.byte	0x1
	.byte	0x45
	.uleb128 0x8
	.long	.LASF144
	.byte	0x1
	.byte	0x46
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF145
	.byte	0x1
	.byte	0x47
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF99
	.byte	0x1
	.byte	0x48
	.long	0x979
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF112
	.byte	0x1
	.byte	0x4a
	.long	0xb56
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF146
	.byte	0x1
	.byte	0x4c
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF147
	.byte	0x1
	.byte	0x4d
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF148
	.byte	0x1
	.byte	0x4f
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x1
	.byte	0x51
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF149
	.byte	0x1
	.byte	0x52
	.long	0xa2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF150
	.byte	0x1
	.byte	0x53
	.long	0xa4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF151
	.byte	0x1
	.byte	0x54
	.long	0xbf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0x55
	.long	0xa70
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa95
	.uleb128 0x6
	.byte	0x8
	.long	0xb4a
	.uleb128 0x6
	.byte	0x8
	.long	0x898
	.uleb128 0xb
	.long	0xbf5
	.long	.LASF152
	.byte	0x50
	.byte	0x1
	.byte	0x21
	.uleb128 0x8
	.long	.LASF153
	.byte	0x1
	.byte	0x98
	.long	0xe46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF154
	.byte	0x1
	.byte	0x99
	.long	0xe58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF155
	.byte	0x1
	.byte	0x9a
	.long	0xe6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF156
	.byte	0x1
	.byte	0x9b
	.long	0xe94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF157
	.byte	0x1
	.byte	0x9c
	.long	0xeb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF158
	.byte	0x1
	.byte	0x9e
	.long	0xecb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF159
	.byte	0x1
	.byte	0x9f
	.long	0xedd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF160
	.byte	0x1
	.byte	0xa0
	.long	0xef3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF161
	.byte	0x1
	.byte	0xa1
	.long	0xf19
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF162
	.byte	0x1
	.byte	0xa2
	.long	0xf35
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5c
	.uleb128 0x4
	.long	.LASF143
	.byte	0x1
	.byte	0x56
	.long	0xa95
	.uleb128 0xb
	.long	0xc21
	.long	.LASF163
	.byte	0x8
	.byte	0x1
	.byte	0x65
	.uleb128 0x8
	.long	.LASF139
	.byte	0x1
	.byte	0x65
	.long	0xc21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x74b
	.uleb128 0x7
	.long	0xc4c
	.byte	0x10
	.byte	0x1
	.byte	0x67
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0x67
	.long	0xcf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0x67
	.long	0xcf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xb
	.long	0xcf3
	.long	.LASF164
	.byte	0x70
	.byte	0x1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF144
	.byte	0x1
	.byte	0x59
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF99
	.byte	0x1
	.byte	0x5a
	.long	0x979
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF100
	.byte	0x1
	.byte	0x5c
	.long	0xcff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF165
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF166
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF147
	.byte	0x1
	.byte	0x60
	.long	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF167
	.byte	0x1
	.byte	0x62
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x1
	.byte	0x64
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF149
	.byte	0x1
	.byte	0x65
	.long	0xc06
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF151
	.byte	0x1
	.byte	0x66
	.long	0xbf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0x67
	.long	0xc27
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4c
	.uleb128 0x6
	.byte	0x8
	.long	0xcf3
	.uleb128 0x6
	.byte	0x8
	.long	0x866
	.uleb128 0x4
	.long	.LASF164
	.byte	0x1
	.byte	0x68
	.long	0xc4c
	.uleb128 0x7
	.long	0xd35
	.byte	0x10
	.byte	0x1
	.byte	0x77
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0x77
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0x77
	.long	0xd35
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa49
	.uleb128 0x6
	.byte	0x8
	.long	0xbfb
	.uleb128 0x7
	.long	0xd66
	.byte	0x10
	.byte	0x1
	.byte	0x86
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0x86
	.long	0xc21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0x86
	.long	0xd66
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc21
	.uleb128 0x6
	.byte	0x8
	.long	0xd05
	.uleb128 0xb
	.long	0xe19
	.long	.LASF168
	.byte	0x48
	.byte	0x1
	.byte	0x89
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0x8a
	.long	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF125
	.byte	0x1
	.byte	0x8b
	.long	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF169
	.byte	0x1
	.byte	0x8c
	.long	0xe19
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF170
	.byte	0x1
	.byte	0x8d
	.long	0xe25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF171
	.byte	0x1
	.byte	0x8e
	.long	0x61b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF151
	.byte	0x1
	.byte	0x8f
	.long	0xbf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF172
	.byte	0x1
	.byte	0x90
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF173
	.byte	0x1
	.byte	0x91
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF174
	.byte	0x1
	.byte	0x92
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF175
	.byte	0x1
	.byte	0x93
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF176
	.byte	0x1
	.byte	0x94
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f0
	.uleb128 0x16
	.byte	0x1
	.long	0x82
	.uleb128 0x6
	.byte	0x8
	.long	0xe1f
	.uleb128 0x17
	.long	0xe40
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd3b
	.uleb128 0x12
	.long	0xe40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x586
	.uleb128 0x6
	.byte	0x8
	.long	0xe2b
	.uleb128 0x11
	.long	0xe58
	.byte	0x1
	.uleb128 0x12
	.long	0xd3b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xe4c
	.uleb128 0x17
	.long	0xe6e
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd3b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xe5e
	.uleb128 0x17
	.long	0xe8e
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xe8e
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x621
	.uleb128 0x6
	.byte	0x8
	.long	0xe74
	.uleb128 0x17
	.long	0xeb0
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd3b
	.uleb128 0x12
	.long	0x57
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xe9a
	.uleb128 0x17
	.long	0xecb
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd6c
	.uleb128 0x12
	.long	0xe40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xeb6
	.uleb128 0x11
	.long	0xedd
	.byte	0x1
	.uleb128 0x12
	.long	0xd6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xed1
	.uleb128 0x17
	.long	0xef3
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xee3
	.uleb128 0x17
	.long	0xf13
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xf13
	.uleb128 0x12
	.long	0x82
	.uleb128 0x12
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x740
	.uleb128 0x6
	.byte	0x8
	.long	0xef9
	.uleb128 0x17
	.long	0xf35
	.byte	0x1
	.long	0x57
	.uleb128 0x12
	.long	0xd6c
	.uleb128 0x12
	.long	0x57
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf1f
	.uleb128 0x7
	.long	0xf60
	.byte	0x10
	.byte	0x1
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0xa8
	.long	0xf97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0xa8
	.long	0xf9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xb
	.long	0xf97
	.long	.LASF177
	.byte	0x30
	.byte	0x1
	.byte	0xa5
	.uleb128 0x15
	.string	"ops"
	.byte	0x1
	.byte	0xa6
	.long	0x5b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF129
	.byte	0x1
	.byte	0xa7
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0xa8
	.long	0xf3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf60
	.uleb128 0x6
	.byte	0x8
	.long	0xf97
	.uleb128 0xb
	.long	0xfbe
	.long	.LASF178
	.byte	0x8
	.byte	0x1
	.byte	0xae
	.uleb128 0x8
	.long	.LASF139
	.byte	0x1
	.byte	0xae
	.long	0xf97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0xfe3
	.byte	0x10
	.byte	0x1
	.byte	0xaf
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0xaf
	.long	0xfe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0xaf
	.long	0xfe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6fa
	.uleb128 0x6
	.byte	0x8
	.long	0xfe3
	.uleb128 0x7
	.long	0x1014
	.byte	0x10
	.byte	0x1
	.byte	0xb5
	.uleb128 0x8
	.long	.LASF141
	.byte	0x1
	.byte	0xb5
	.long	0xa6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x1
	.byte	0xb5
	.long	0x1014
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6a
	.uleb128 0x6
	.byte	0x8
	.long	0x6ef
	.uleb128 0xb
	.long	0x1065
	.long	.LASF179
	.byte	0x88
	.byte	0x2
	.byte	0x27
	.uleb128 0x15
	.string	"hw"
	.byte	0x2
	.byte	0x28
	.long	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF180
	.byte	0x2
	.byte	0x29
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF146
	.byte	0x2
	.byte	0x2a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF181
	.byte	0x2
	.byte	0x2b
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0x0
	.uleb128 0x4
	.long	.LASF179
	.byte	0x2
	.byte	0x2c
	.long	0x1020
	.uleb128 0x7
	.long	0x1087
	.byte	0x4
	.byte	0x2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF182
	.byte	0x2
	.byte	0x2f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x10cc
	.long	.LASF183
	.byte	0x20
	.byte	0x2
	.byte	0x34
	.uleb128 0x8
	.long	.LASF184
	.byte	0x2
	.byte	0x35
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF185
	.byte	0x2
	.byte	0x36
	.long	0x10cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"sem"
	.byte	0x2
	.byte	0x37
	.long	0x10d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x2
	.byte	0x38
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3fe
	.uleb128 0x6
	.byte	0x8
	.long	0x40f
	.uleb128 0x4
	.long	.LASF183
	.byte	0x2
	.byte	0x3a
	.long	0x1087
	.uleb128 0x19
	.long	0x111d
	.long	.LASF187
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"fmt"
	.byte	0x1
	.byte	0xee
	.long	0x38e
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.uleb128 0x1b
	.string	"ap"
	.byte	0x1
	.byte	0xf0
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0x1157
	.long	.LASF188
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"fmt"
	.byte	0x2
	.byte	0x3c
	.long	0x38e
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.uleb128 0x1b
	.string	"ap"
	.byte	0x2
	.byte	0x3e
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1c
	.long	0x1192
	.long	.LASF189
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.long	0x57
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x2
	.byte	0x47
	.long	0x1192
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF190
	.byte	0x2
	.byte	0x47
	.long	0x38e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x10d8
	.uleb128 0x1c
	.long	0x11d3
	.long	.LASF191
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.long	0x57
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x2
	.byte	0x50
	.long	0x1192
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF190
	.byte	0x2
	.byte	0x50
	.long	0x38e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1c
	.long	0x122e
	.long	.LASF192
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x57
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x2
	.byte	0x6b
	.long	0x1192
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF190
	.byte	0x2
	.byte	0x6b
	.long	0x38e
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	0x122e
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	0x123f
	.uleb128 0x1f
	.long	0x1248
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x1254
	.long	.LASF193
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x21
	.string	"s"
	.byte	0x2
	.byte	0x59
	.long	0x1192
	.uleb128 0x22
	.long	.LASF190
	.byte	0x2
	.byte	0x59
	.long	0x38e
	.byte	0x0
	.uleb128 0x19
	.long	0x127e
	.long	.LASF194
	.byte	0x2
	.byte	0xd0
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x2
	.byte	0xcf
	.long	0x1192
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x19
	.long	0x13bf
	.long	.LASF195
	.byte	0x2
	.byte	0xdc
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.byte	0xdb
	.long	0x82
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0xdb
	.long	0x420
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"len"
	.byte	0x2
	.byte	0xdb
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.string	"sdl"
	.byte	0x2
	.byte	0xdd
	.long	0x13bf
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.byte	0xde
	.long	0x1192
	.uleb128 0x23
	.string	"hw"
	.byte	0x2
	.byte	0xdf
	.long	0xd3b
	.uleb128 0x24
	.long	.LASF74
	.byte	0x2
	.byte	0xe0
	.long	0x57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF196
	.long	0x13d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.uleb128 0x26
	.long	.LASF225
	.byte	0x2
	.value	0x10e
	.quad	.L34
	.uleb128 0x27
	.long	0x1334
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x24
	.long	.LASF197
	.byte	0x2
	.byte	0xe7
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF181
	.byte	0x2
	.byte	0xe7
	.long	0x57
	.byte	0x0
	.uleb128 0x29
	.long	0x1358
	.long	0x13da
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1f
	.long	0x13eb
	.uleb128 0x1f
	.long	0x13f4
	.byte	0x0
	.uleb128 0x2a
	.long	0x1382
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x23
	.string	"ta"
	.byte	0x2
	.byte	0xfe
	.long	0x57
	.uleb128 0x23
	.string	"tb"
	.byte	0x2
	.byte	0xfe
	.long	0x57
	.byte	0x0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x2c
	.long	.LASF198
	.byte	0x2
	.value	0x101
	.long	0x57
	.uleb128 0x2d
	.string	"src"
	.byte	0x2
	.value	0x102
	.long	0x88c
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x2d
	.string	"ta"
	.byte	0x2
	.value	0x101
	.long	0x57
	.uleb128 0x2e
	.string	"tb"
	.byte	0x2
	.value	0x101
	.long	0x57
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1065
	.uleb128 0x9
	.long	0x13d5
	.long	0x394
	.uleb128 0xa
	.long	0x7b
	.byte	0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x13c5
	.uleb128 0x20
	.long	0x1400
	.long	.LASF199
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x21
	.string	"s"
	.byte	0x2
	.byte	0x62
	.long	0x1192
	.uleb128 0x22
	.long	.LASF190
	.byte	0x2
	.byte	0x62
	.long	0x38e
	.byte	0x0
	.uleb128 0x2f
	.long	0x144d
	.long	.LASF200
	.byte	0x2
	.value	0x117
	.byte	0x1
	.long	0x57
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"sw"
	.byte	0x2
	.value	0x116
	.long	0xe8e
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"buf"
	.byte	0x2
	.value	0x116
	.long	0x82
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x116
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2f
	.long	0x14d8
	.long	.LASF201
	.byte	0x2
	.value	0x11c
	.byte	0x1
	.long	0x57
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"hw"
	.byte	0x2
	.value	0x11b
	.long	0xd3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF181
	.byte	0x2
	.value	0x11d
	.long	0x57
	.uleb128 0x31
	.long	.LASF180
	.byte	0x2
	.value	0x11d
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.string	"sdl"
	.byte	0x2
	.value	0x11e
	.long	0x13bf
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x11f
	.long	0x1192
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x2d
	.string	"ta"
	.byte	0x2
	.value	0x12e
	.long	0x57
	.uleb128 0x2d
	.string	"tb"
	.byte	0x2
	.value	0x12e
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x1505
	.long	.LASF202
	.byte	0x2
	.value	0x13e
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"hw"
	.byte	0x2
	.value	0x13d
	.long	0xd3b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2f
	.long	0x1652
	.long	.LASF203
	.byte	0x2
	.value	0x145
	.byte	0x1
	.long	0x57
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"hw"
	.byte	0x2
	.value	0x144
	.long	0xd3b
	.byte	0x1
	.byte	0x5e
	.uleb128 0x30
	.string	"as"
	.byte	0x2
	.value	0x144
	.long	0xe40
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"sdl"
	.byte	0x2
	.value	0x146
	.long	0x13bf
	.uleb128 0x2e
	.string	"s"
	.byte	0x2
	.value	0x147
	.long	0x1192
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.string	"req"
	.byte	0x2
	.value	0x148
	.long	0x4cd
	.byte	0x3
	.byte	0x91
	.sleb128 304
	.uleb128 0x2e
	.string	"obt"
	.byte	0x2
	.value	0x148
	.long	0x4cd
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x2c
	.long	.LASF134
	.byte	0x2
	.value	0x149
	.long	0x57
	.uleb128 0x31
	.long	.LASF204
	.byte	0x2
	.value	0x14a
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"err"
	.byte	0x2
	.value	0x14b
	.long	0x57
	.uleb128 0x31
	.long	.LASF205
	.byte	0x2
	.value	0x14c
	.long	0x53a
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF206
	.byte	0x2
	.value	0x14d
	.long	0x586
	.byte	0x3
	.byte	0x91
	.sleb128 256
	.uleb128 0x29
	.long	0x15e4
	.long	0x1652
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x34
	.long	0x1663
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0x166e
	.byte	0x0
	.uleb128 0x29
	.long	0x162a
	.long	0x167a
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x34
	.long	0x168b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.long	0x1696
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x35
	.long	0x16a1
	.byte	0x1
	.byte	0x53
	.uleb128 0x35
	.long	0x16ac
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x35
	.long	0x16b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x16c9
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x34
	.long	0x16da
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0x16e5
	.uleb128 0x1f
	.long	0x16f0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x167a
	.long	.LASF207
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x21
	.string	"fmt"
	.byte	0x2
	.byte	0x74
	.long	0x53a
	.uleb128 0x22
	.long	.LASF134
	.byte	0x2
	.byte	0x74
	.long	0x3a4
	.byte	0x0
	.uleb128 0x20
	.long	0x16c3
	.long	.LASF208
	.byte	0x2
	.byte	0xba
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x21
	.string	"req"
	.byte	0x2
	.byte	0xb9
	.long	0x16c3
	.uleb128 0x21
	.string	"obt"
	.byte	0x2
	.byte	0xb9
	.long	0x16c3
	.uleb128 0x28
	.long	.LASF209
	.byte	0x2
	.byte	0xbb
	.long	0x57
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.byte	0xbd
	.long	0xd9
	.uleb128 0x23
	.string	"old"
	.byte	0x2
	.byte	0xbd
	.long	0xd9
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cd
	.uleb128 0x20
	.long	0x16fc
	.long	.LASF210
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x22
	.long	.LASF211
	.byte	0x2
	.byte	0x90
	.long	0x57
	.uleb128 0x21
	.string	"fmt"
	.byte	0x2
	.byte	0x90
	.long	0x16fc
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.byte	0x90
	.long	0x3a4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x53a
	.uleb128 0x2f
	.long	0x1742
	.long	.LASF212
	.byte	0x2
	.value	0x171
	.byte	0x1
	.long	0x57
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"hw"
	.byte	0x2
	.value	0x170
	.long	0xd3b
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"cmd"
	.byte	0x2
	.value	0x170
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2f
	.long	0x1770
	.long	.LASF213
	.byte	0x2
	.value	0x181
	.byte	0x1
	.long	0x82
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x182
	.long	0x1192
	.byte	0x0
	.uleb128 0x33
	.long	0x17a8
	.long	.LASF214
	.byte	0x2
	.value	0x19c
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	.LASF129
	.byte	0x2
	.value	0x19b
	.long	0x82
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x19d
	.long	0x1192
	.byte	0x0
	.uleb128 0x37
	.long	.LASF215
	.byte	0x3
	.byte	0x91
	.long	0x362
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF216
	.byte	0x3
	.byte	0x92
	.long	0x362
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.long	.LASF217
	.byte	0x2
	.value	0x1b8
	.long	0xd72
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	sdl_audio_driver
	.uleb128 0x24
	.long	.LASF218
	.byte	0x2
	.byte	0x30
	.long	0x1070
	.byte	0x9
	.byte	0x3
	.quad	conf
	.uleb128 0x39
	.long	.LASF219
	.byte	0x2
	.byte	0x39
	.long	0x1087
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	glob_sdl
	.uleb128 0x9
	.long	0x1814
	.long	0x8f0
	.uleb128 0xa
	.long	0x7b
	.byte	0x1
	.byte	0x0
	.uleb128 0x31
	.long	.LASF220
	.byte	0x2
	.value	0x1a4
	.long	0x1804
	.byte	0x9
	.byte	0x3
	.quad	sdl_options
	.uleb128 0x31
	.long	.LASF221
	.byte	0x2
	.value	0x1aa
	.long	0xb5c
	.byte	0x9
	.byte	0x3
	.quad	sdl_pcm_ops
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.long	0x30
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1841
	.long	0x17c2
	.string	"sdl_audio_driver"
	.long	0x17ee
	.string	"glob_sdl"
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF187:
	.string	"dolog"
.LASF45:
	.string	"_unused2"
.LASF118:
	.string	"AUD_OPT_INT"
.LASF31:
	.string	"_fileno"
.LASF115:
	.string	"st_sample_t"
.LASF177:
	.string	"capture_callback"
.LASF132:
	.string	"sign"
.LASF126:
	.string	"overriddenp"
.LASF25:
	.string	"_IO_buf_end"
.LASF225:
	.string	"again"
.LASF161:
	.string	"read"
.LASF74:
	.string	"samples"
.LASF60:
	.string	"uint16_t"
.LASF107:
	.string	"entries"
.LASF135:
	.string	"bytes_per_second"
.LASF17:
	.string	"_flags"
.LASF52:
	.string	"reg_save_area"
.LASF120:
	.string	"AUD_OPT_STR"
.LASF7:
	.string	"__off_t"
.LASF140:
	.string	"sw_cap_listhead"
.LASF148:
	.string	"mix_buf"
.LASF35:
	.string	"_vtable_offset"
.LASF37:
	.string	"_lock"
.LASF12:
	.string	"__sigset_t"
.LASF200:
	.string	"sdl_write_out"
.LASF174:
	.string	"max_voices_in"
.LASF188:
	.string	"sdl_logerr"
.LASF214:
	.string	"sdl_audio_fini"
.LASF82:
	.string	"AUD_FMT_S8"
.LASF80:
	.string	"audio_callback_fn_t"
.LASF197:
	.string	"to_mix"
.LASF194:
	.string	"sdl_close"
.LASF208:
	.string	"sdl_open"
.LASF23:
	.string	"_IO_write_end"
.LASF128:
	.string	"audio_callback"
.LASF81:
	.string	"AUD_FMT_U8"
.LASF70:
	.string	"freq"
.LASF93:
	.string	"audcnotification_e"
.LASF198:
	.string	"chunk"
.LASF99:
	.string	"info"
.LASF145:
	.string	"pending_disable"
.LASF112:
	.string	"clip"
.LASF142:
	.string	"le_prev"
.LASF86:
	.string	"AUD_FMT_S32"
.LASF224:
	.string	"/home/remco/Projects/Argos/src"
.LASF213:
	.string	"sdl_audio_init"
.LASF184:
	.string	"exit"
.LASF75:
	.string	"padding"
.LASF73:
	.string	"silence"
.LASF46:
	.string	"__gnuc_va_list"
.LASF191:
	.string	"sdl_unlock"
.LASF30:
	.string	"_chain"
.LASF0:
	.string	"unsigned char"
.LASF186:
	.string	"initialized"
.LASF53:
	.string	"_IO_lock_t"
.LASF15:
	.string	"long long int"
.LASF109:
	.string	"cb_head"
.LASF69:
	.string	"SDL_AudioSpec"
.LASF106:
	.string	"name"
.LASF62:
	.string	"uint64_t"
.LASF215:
	.string	"stdin"
.LASF170:
	.string	"init"
.LASF212:
	.string	"sdl_ctl_out"
.LASF150:
	.string	"cap_head"
.LASF217:
	.string	"sdl_audio_driver"
.LASF193:
	.string	"sdl_post"
.LASF22:
	.string	"_IO_write_ptr"
.LASF152:
	.string	"audio_pcm_ops"
.LASF58:
	.string	"va_list"
.LASF122:
	.string	"audio_option_tag_e"
.LASF134:
	.string	"shift"
.LASF130:
	.string	"audio_pcm_info"
.LASF181:
	.string	"decr"
.LASF185:
	.string	"mutex"
.LASF76:
	.string	"size"
.LASF206:
	.string	"obt_as"
.LASF108:
	.string	"CaptureVoiceOut"
.LASF173:
	.string	"max_voices_out"
.LASF90:
	.string	"audsettings_t"
.LASF10:
	.string	"size_t"
.LASF159:
	.string	"fini_in"
.LASF146:
	.string	"rpos"
.LASF59:
	.string	"uint8_t"
.LASF97:
	.string	"destroy"
.LASF211:
	.string	"sdlfmt"
.LASF96:
	.string	"capture"
.LASF175:
	.string	"voice_size_out"
.LASF149:
	.string	"sw_head"
.LASF26:
	.string	"_IO_save_base"
.LASF83:
	.string	"AUD_FMT_U16"
.LASF68:
	.string	"SDL_semaphore"
.LASF36:
	.string	"_shortbuf"
.LASF40:
	.string	"__pad2"
.LASF41:
	.string	"__pad3"
.LASF42:
	.string	"__pad4"
.LASF85:
	.string	"AUD_FMT_U32"
.LASF92:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF55:
	.string	"_next"
.LASF180:
	.string	"live"
.LASF163:
	.string	"sw_in_listhead"
.LASF16:
	.string	"__val"
.LASF154:
	.string	"fini_out"
.LASF98:
	.string	"SWVoiceOut"
.LASF171:
	.string	"fini"
.LASF95:
	.string	"notify"
.LASF78:
	.string	"userdata"
.LASF167:
	.string	"conv_buf"
.LASF89:
	.string	"endianness"
.LASF56:
	.string	"_sbuf"
.LASF28:
	.string	"_IO_save_end"
.LASF103:
	.string	"total_hw_samples_mixed"
.LASF216:
	.string	"stdout"
.LASF49:
	.string	"gp_offset"
.LASF210:
	.string	"sdl_to_audfmt"
.LASF48:
	.string	"__va_list_tag"
.LASF201:
	.string	"sdl_run_out"
.LASF158:
	.string	"init_in"
.LASF179:
	.string	"SDLVoiceOut"
.LASF4:
	.string	"signed char"
.LASF209:
	.string	"status"
.LASF67:
	.string	"SDL_sem"
.LASF1:
	.string	"short unsigned int"
.LASF8:
	.string	"__off64_t"
.LASF189:
	.string	"sdl_lock"
.LASF183:
	.string	"SDLAudioState"
.LASF20:
	.string	"_IO_read_base"
.LASF38:
	.string	"_offset"
.LASF13:
	.string	"sigset_t"
.LASF202:
	.string	"sdl_fini_out"
.LASF77:
	.string	"callback"
.LASF21:
	.string	"_IO_write_base"
.LASF131:
	.string	"bits"
.LASF160:
	.string	"run_in"
.LASF6:
	.string	"long int"
.LASF199:
	.string	"sdl_wait"
.LASF71:
	.string	"format"
.LASF54:
	.string	"_IO_marker"
.LASF207:
	.string	"aud_to_sdlfmt"
.LASF129:
	.string	"opaque"
.LASF19:
	.string	"_IO_read_end"
.LASF218:
	.string	"conf"
.LASF156:
	.string	"write"
.LASF100:
	.string	"conv"
.LASF61:
	.string	"uint32_t"
.LASF116:
	.string	"t_sample"
.LASF178:
	.string	"cb_listhead"
.LASF127:
	.string	"overridden"
.LASF151:
	.string	"pcm_ops"
.LASF3:
	.string	"long unsigned int"
.LASF94:
	.string	"audio_capture_ops"
.LASF166:
	.string	"total_samples_captured"
.LASF125:
	.string	"descr"
.LASF162:
	.string	"ctl_in"
.LASF222:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF182:
	.string	"nb_samples"
.LASF87:
	.string	"audfmt_e"
.LASF9:
	.string	"char"
.LASF153:
	.string	"init_out"
.LASF63:
	.string	"Uint8"
.LASF144:
	.string	"enabled"
.LASF138:
	.string	"sw_out_listhead"
.LASF190:
	.string	"forfn"
.LASF33:
	.string	"_old_offset"
.LASF111:
	.string	"total_hw_samples_acquired"
.LASF24:
	.string	"_IO_buf_base"
.LASF147:
	.string	"ts_helper"
.LASF195:
	.string	"sdl_callback"
.LASF119:
	.string	"AUD_OPT_FMT"
.LASF47:
	.string	"_IO_FILE"
.LASF133:
	.string	"align"
.LASF223:
	.string	"audio/sdlaudio.c"
.LASF157:
	.string	"ctl_out"
.LASF169:
	.string	"options"
.LASF124:
	.string	"valp"
.LASF39:
	.string	"__pad1"
.LASF43:
	.string	"__pad5"
.LASF165:
	.string	"wpos"
.LASF84:
	.string	"AUD_FMT_S16"
.LASF64:
	.string	"Uint16"
.LASF29:
	.string	"_markers"
.LASF57:
	.string	"_pos"
.LASF114:
	.string	"volume_t"
.LASF11:
	.string	"int64_t"
.LASF101:
	.string	"ratio"
.LASF79:
	.string	"double"
.LASF51:
	.string	"overflow_arg_area"
.LASF65:
	.string	"Uint32"
.LASF221:
	.string	"sdl_pcm_ops"
.LASF203:
	.string	"sdl_init_out"
.LASF141:
	.string	"le_next"
.LASF123:
	.string	"audio_option"
.LASF136:
	.string	"swap_endianness"
.LASF50:
	.string	"fp_offset"
.LASF220:
	.string	"sdl_options"
.LASF172:
	.string	"can_be_default"
.LASF44:
	.string	"_mode"
.LASF105:
	.string	"empty"
.LASF14:
	.string	"long long unsigned int"
.LASF34:
	.string	"_cur_column"
.LASF155:
	.string	"run_out"
.LASF176:
	.string	"voice_size_in"
.LASF137:
	.string	"SWVoiceCap"
.LASF219:
	.string	"glob_sdl"
.LASF168:
	.string	"audio_driver"
.LASF27:
	.string	"_IO_backup_base"
.LASF88:
	.string	"nchannels"
.LASF18:
	.string	"_IO_read_ptr"
.LASF72:
	.string	"channels"
.LASF164:
	.string	"HWVoiceIn"
.LASF117:
	.string	"f_sample"
.LASF32:
	.string	"_flags2"
.LASF204:
	.string	"endianess"
.LASF110:
	.string	"SWVoiceIn"
.LASF113:
	.string	"mute"
.LASF91:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF205:
	.string	"effective_fmt"
.LASF66:
	.string	"SDL_mutex"
.LASF121:
	.string	"AUD_OPT_BOOL"
.LASF196:
	.string	"__FUNCTION__"
.LASF143:
	.string	"HWVoiceOut"
.LASF192:
	.string	"sdl_unlock_and_post"
.LASF2:
	.string	"unsigned int"
.LASF104:
	.string	"active"
.LASF5:
	.string	"short int"
.LASF102:
	.string	"rate"
.LASF139:
	.string	"lh_first"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
