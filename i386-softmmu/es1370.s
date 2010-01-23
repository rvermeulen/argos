	.file	"es1370.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 32
	.type	es1370_chan_bits, @object
	.size	es1370_chan_bits, 120
es1370_chan_bits:
	.long	64
	.long	4
	.long	2048
	.long	256
	.long	3
	.long	0
	.long	8192
	.zero	4
	.quad	es1370_dac1_calc_freq
	.long	32
	.long	2
	.long	4096
	.long	512
	.long	12
	.long	2
	.long	16384
	.zero	4
	.quad	es1370_dac2_and_adc_calc_freq
	.long	16
	.long	1
	.long	0
	.long	1024
	.long	48
	.long	4
	.long	32768
	.zero	4
	.quad	es1370_dac2_and_adc_calc_freq
	.align 16
	.type	dac1_samplerate, @object
	.size	dac1_samplerate, 16
dac1_samplerate:
	.long	5512
	.long	11025
	.long	22050
	.long	44100
	.text
	.p2align 4,,15
	.type	es1370_update_status, @function
es1370_update_status:
.LFB195:
	.file 1 "/home/remco/Projects/Argos/src/hw/es1370.c"
	.loc 1 321 0
	.loc 1 324 0
	movl	%esi, %eax
	andl	$7, %eax
	je	.L2
	.loc 1 325 0
	orl	$-2147483648, %esi
.L4:
	.loc 1 328 0
	movl	%esi, 132(%rdi)
	.loc 1 330 0
	xorl	%esi, %esi
	testl	%eax, %eax
	movq	(%rdi), %rax
	setne	%sil
	movq	528(%rax), %rax
	movq	(%rax), %rdi
	jmp	qemu_set_irq
	.p2align 4,,7
.L2:
	.loc 1 328 0
	andl	$2147483647, %esi
	jmp	.L4
.LFE195:
	.size	es1370_update_status, .-es1370_update_status
	.p2align 4,,15
	.type	es1370_reset, @function
es1370_reset:
.LFB196:
	.loc 1 334 0
	movq	%rbp, -24(%rsp)
.LCFI0:
	movq	%r13, -8(%rsp)
.LCFI1:
	leaq	40(%rdi), %rbp
	leaq	8(%rdi), %r13
	movq	%rbx, -32(%rsp)
.LCFI2:
	movq	%r12, -16(%rsp)
.LCFI3:
	movq	%rdi, %rbx
	subq	$40, %rsp
.LCFI4:
	.loc 1 343 0
	xorl	%r12d, %r12d
	.loc 1 337 0
	movl	$1, 128(%rdi)
	.loc 1 338 0
	movl	$96, 132(%rdi)
	.loc 1 339 0
	movl	$0, 136(%rdi)
	.loc 1 340 0
	movl	$0, 140(%rdi)
	.loc 1 341 0
	movl	$0, 144(%rdi)
	.p2align 4,,7
.L12:
.LBB2:
	.loc 1 347 0
	cmpq	$2, %r12
	.loc 1 345 0
	movl	$0, 8(%rbp)
	.loc 1 346 0
	movl	$0, 4(%rbp)
	.loc 1 347 0
	je	.L16
	.loc 1 352 0
	movq	104(%rbx,%r12,8), %rsi
	movq	%r13, %rdi
	call	AUD_close_out
	.loc 1 353 0
	movq	$0, 104(%rbx,%r12,8)
.L9:
.LBE2:
	.loc 1 343 0
	incq	%r12
	addq	$20, %rbp
	cmpq	$2, %r12
	jbe	.L12
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 18 0
	movq	(%rbx), %rax
.LBE3:
	.loc 2 19 0
	movq	16(%rsp), %rbp
.LBB4:
.LBB5:
	xorl	%esi, %esi
.LBE5:
.LBE4:
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
.LBB6:
	.loc 2 18 0
	movq	528(%rax), %rax
	movq	(%rax), %rdi
.LBE6:
	.loc 2 19 0
	addq	$40, %rsp
.LBB7:
.LBB8:
	jmp	qemu_set_irq
	.p2align 4,,7
.L16:
.LBE8:
.LBE7:
.LBB9:
	.loc 1 348 0
	movq	120(%rbx), %rsi
	movq	%r13, %rdi
	call	AUD_close_in
	.loc 1 349 0
	movq	$0, 120(%rbx)
	jmp	.L9
.LBE9:
.LFE196:
	.size	es1370_reset, .-es1370_reset
	.p2align 4,,15
	.type	es1370_maybe_lower_irq, @function
es1370_maybe_lower_irq:
.LFB197:
	.loc 1 360 0
	.loc 1 360 0
	movl	%esi, %edx
	.loc 1 361 0
	movl	132(%rdi), %esi
	.loc 1 363 0
	testb	$1, %dh
	.loc 1 361 0
	movl	%esi, %ecx
	.loc 1 363 0
	jne	.L18
	.loc 1 364 0
	movl	%esi, %eax
	andl	$-5, %eax
	testb	$1, 145(%rdi)
	cmovne	%eax, %esi
.L18:
	.loc 1 367 0
	testb	$2, %dh
	jne	.L19
	.loc 1 368 0
	movl	%esi, %eax
	andl	$-3, %eax
	testb	$2, 145(%rdi)
	cmovne	%eax, %esi
.L19:
	.loc 1 371 0
	andb	$4, %dh
	jne	.L20
	.loc 1 372 0
	movl	%esi, %eax
	andl	$-2, %eax
	testb	$4, 145(%rdi)
	cmovne	%eax, %esi
.L20:
	.loc 1 375 0
	cmpl	%esi, %ecx
	je	.L17
	.loc 1 376 0
	jmp	es1370_update_status
	.p2align 4,,7
.L17:
	rep ; ret
.LFE197:
	.size	es1370_maybe_lower_irq, .-es1370_maybe_lower_irq
	.p2align 4,,15
	.type	es1370_dac1_calc_freq, @function
es1370_dac1_calc_freq:
.LFB198:
	.loc 1 383 0
	.loc 1 384 0
	movl	128(%rdi), %eax
	movl	$dac1_samplerate, %edi
	.loc 1 385 0
	shrq	$12, %rsi
	andl	$3, %esi
	.loc 1 384 0
	andl	$12288, %eax
	shrl	$12, %eax
	mov	%eax, %eax
	movl	(%rdi,%rax,4), %eax
	movl	%eax, (%rdx)
	.loc 1 385 0
	movl	(%rdi,%rsi,4), %eax
	movl	%eax, (%rcx)
	ret
.LFE198:
	.size	es1370_dac1_calc_freq, .-es1370_dac1_calc_freq
	.p2align 4,,15
	.type	es1370_dac2_and_adc_calc_freq, @function
es1370_dac2_and_adc_calc_freq:
.LFB199:
	.loc 1 392 0
	.loc 1 395 0
	andl	$536805376, %esi
	.loc 1 397 0
	movl	$1411200, %r10d
	.loc 1 392 0
	movq	%rdx, %r9
	.loc 1 395 0
	shrl	$16, %esi
	.loc 1 397 0
	movl	%r10d, %eax
	xorl	%edx, %edx
	addl	$2, %esi
	.loc 1 396 0
	movl	128(%rdi), %edi
	.loc 1 397 0
	divl	%esi
	.loc 1 398 0
	xorl	%edx, %edx
	.loc 1 396 0
	andl	$536805376, %edi
	shrl	$16, %edi
	.loc 1 398 0
	addl	$2, %edi
	.loc 1 397 0
	movl	%eax, (%rcx)
	.loc 1 398 0
	movl	%r10d, %eax
	divl	%edi
	movl	%eax, (%r9)
	ret
.LFE199:
	.size	es1370_dac2_and_adc_calc_freq, .-es1370_dac2_and_adc_calc_freq
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"es1370.dac2"
.LC2:
	.string	"es1370.dac1"
.LC0:
	.string	"es1370.adc"
	.text
	.p2align 4,,15
	.type	es1370_update_voices, @function
es1370_update_voices:
.LFB200:
	.loc 1 402 0
	pushq	%r15
.LCFI5:
	movl	%esi, %r15d
	pushq	%r14
.LCFI6:
	.loc 1 406 0
	xorl	%r14d, %r14d
	.loc 1 402 0
	pushq	%r13
.LCFI7:
	xorl	%r13d, %r13d
	pushq	%r12
.LCFI8:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI9:
	pushq	%rbx
.LCFI10:
	subq	$40, %rsp
.LCFI11:
	.loc 1 402 0
	movl	%edx, 4(%rsp)
	.p2align 4,,7
.L48:
.LBB10:
	.loc 1 410 0
	movl	es1370_chan_bits+16(,%r13,8), %ebx
	movl	4(%rsp), %ebp
	.loc 1 413 0
	leaq	8(%rsp), %rdx
	.loc 1 410 0
	movl	es1370_chan_bits+20(,%r13,8), %ecx
	.loc 1 413 0
	movl	%r15d, %esi
	movq	%r12, %rdi
	.loc 1 410 0
	andl	%ebx, %ebp
	.loc 1 411 0
	andl	144(%r12), %ebx
	.loc 1 410 0
	shrl	%cl, %ebp
	.loc 1 411 0
	shrl	%cl, %ebx
	.loc 1 413 0
	leaq	12(%rsp), %rcx
	call	*es1370_chan_bits+32(,%r13,8)
	.loc 1 415 0
	cmpl	%ebp, %ebx
	je	.L53
.L29:
	.loc 1 416 0
	movl	%ebp, %ecx
	movl	%ebp, %eax
	andl	$1, %ecx
	shrl	%eax
	leal	(%rcx,%rax), %eax
	movl	%eax, 40(%r12,%r13,4)
	.loc 1 423 0
	movl	12(%rsp), %eax
	testl	%eax, %eax
	je	.L28
.LBB11:
	.loc 1 426 0
	movl	%eax, 16(%rsp)
	.loc 1 428 0
	andl	$2, %ebp
	.loc 1 427 0
	movl	$1, %eax
	sall	%cl, %eax
	.loc 1 428 0
	cmpl	$1, %ebp
	.loc 1 429 0
	movl	$0, 28(%rsp)
	.loc 1 427 0
	movl	%eax, 20(%rsp)
	.loc 1 428 0
	sbbl	%eax, %eax
	notl	%eax
	andl	$3, %eax
	.loc 1 431 0
	cmpq	$2, %r14
	.loc 1 428 0
	movl	%eax, 24(%rsp)
	.loc 1 431 0
	je	.L54
	.loc 1 443 0
	testq	%r14, %r14
	movl	$es1370_dac2_callback, %eax
	movl	$.LC1, %edx
	jne	.L42
	movl	$es1370_dac1_callback, %eax
	movl	$.LC2, %edx
.L42:
	movq	104(%r12,%r14,8), %rsi
	leaq	16(%rsp), %r9
	leaq	8(%r12), %rdi
	movq	%rax, %r8
	movq	%r12, %rcx
	call	AUD_open_out
	movq	%rax, 104(%r12,%r14,8)
.L28:
.LBE11:
	.loc 1 456 0
	movl	128(%r12), %eax
	movl	es1370_chan_bits(,%r13,8), %edx
	xorl	%r15d, %eax
	testl	%edx, %eax
	jne	.L44
	movl	4(%rsp), %eax
	xorl	144(%r12), %eax
	testl	%eax, es1370_chan_bits+8(,%r13,8)
	je	.L27
.L44:
.LBB12:
	.loc 1 458 0
	xorl	%esi, %esi
	testl	%r15d, %edx
	je	.L45
	movl	4(%rsp), %eax
	testl	%eax, es1370_chan_bits+8(,%r13,8)
	movl	$1, %eax
	cmove	%eax, %esi
.L45:
	.loc 1 460 0
	cmpq	$2, %r14
	je	.L55
	.loc 1 464 0
	movq	104(%r12,%r14,8), %rdi
	call	AUD_set_active_out
.L27:
.LBE12:
.LBE10:
	.loc 1 406 0
	incq	%r14
	addq	$5, %r13
	cmpq	$2, %r14
	jbe	.L48
	.loc 1 470 0
	movl	4(%rsp), %eax
	.loc 1 469 0
	movl	%r15d, 128(%r12)
	.loc 1 470 0
	movl	%eax, 144(%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L53:
.LBB13:
	.loc 1 415 0
	movl	12(%rsp), %eax
	cmpl	%eax, 8(%rsp)
	jne	.L29
	jmp	.L28
	.p2align 4,,7
.L55:
.LBB14:
	.loc 1 461 0
	movq	120(%r12), %rdi
	call	AUD_set_active_in
	.p2align 4,,6
	jmp	.L27
.L54:
.LBE14:
.LBB15:
	.loc 1 432 0
	movq	120(%r12), %rsi
	leaq	16(%rsp), %r9
	leaq	8(%r12), %rdi
	movl	$es1370_adc_callback, %r8d
	movq	%r12, %rcx
	movl	$.LC0, %edx
	call	AUD_open_in
	movq	%rax, 120(%r12)
	jmp	.L28
.LBE15:
.LBE13:
.LFE200:
	.size	es1370_update_voices, .-es1370_update_voices
	.p2align 4,,15
	.type	es1370_writeb, @function
es1370_writeb:
.LFB202:
	.loc 1 482 0
	movq	%rbx, -16(%rsp)
.LCFI12:
	movl	%edx, %ebx
.LBB16:
.LBB17:
	.loc 1 475 0
	movzbl	%sil, %edx
	.loc 1 476 0
	leal	-48(%rdx), %eax
.LBE17:
.LBE16:
	.loc 1 482 0
	movq	%rbp, -8(%rsp)
.LCFI13:
	subq	$24, %rsp
.LCFI14:
	.loc 1 482 0
	movq	%rdi, %rbp
.LBB18:
.LBB19:
	.loc 1 476 0
	cmpl	$15, %eax
	ja	.L57
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %edx
.L57:
.LBE19:
.LBE18:
	.loc 1 488 0
	cmpl	$35, %edx
	ja	.L56
	mov	%edx, %eax
	jmp	*.L70(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L70:
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L63
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L64
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L68
	.quad	.L68
	.quad	.L68
	.quad	.L68
	.text
	.p2align 4,,7
.L64:
	.loc 1 500 0
	movl	%ebx, 136(%rbp)
	.p2align 4,,7
.L56:
	.loc 1 517 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L68:
	.loc 1 506 0
	leal	-256(,%rdx,8), %ecx
	.loc 1 507 0
	movl	$255, %eax
	.loc 1 508 0
	andl	$255, %ebx
	.loc 1 509 0
	movq	%rbp, %rdi
	.loc 1 507 0
	sall	%cl, %eax
	.loc 1 508 0
	sall	%cl, %ebx
	notl	%eax
	andl	144(%rbp), %eax
	orl	%eax, %ebx
	.loc 1 509 0
	movl	%ebx, %esi
	call	es1370_maybe_lower_irq
	.loc 1 510 0
	movl	128(%rbp), %esi
	movl	%ebx, %edx
	movq	%rbp, %rdi
	.loc 1 517 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 510 0
	jmp	es1370_update_voices
	.p2align 4,,7
.L63:
	.loc 1 493 0
	leal	0(,%rdx,8), %ecx
	.loc 1 494 0
	movl	$255, %esi
	.loc 1 495 0
	movzbl	%bl,%eax
	.loc 1 496 0
	movl	144(%rbp), %edx
	.loc 1 510 0
	movq	%rbp, %rdi
	.loc 1 517 0
	movq	8(%rsp), %rbx
	.loc 1 494 0
	sall	%cl, %esi
	.loc 1 495 0
	sall	%cl, %eax
	notl	%esi
	andl	128(%rbp), %esi
	.loc 1 517 0
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 495 0
	orl	%eax, %esi
	.loc 1 510 0
	jmp	es1370_update_voices
.LFE202:
	.size	es1370_writeb, .-es1370_writeb
	.p2align 4,,15
	.type	es1370_writew, @function
es1370_writew:
.LFB203:
	.loc 1 520 0
.LBB20:
.LBB21:
	.loc 1 475 0
	movzbl	%sil, %ecx
	.loc 1 476 0
	leal	-48(%rcx), %eax
	cmpl	$15, %eax
	ja	.L73
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %ecx
.L73:
.LBE21:
.LBE20:
	.loc 1 526 0
	cmpl	$44, %ecx
	.loc 1 524 0
	leaq	40(%rdi), %rsi
	.loc 1 526 0
	ja	.L72
	mov	%ecx, %eax
	jmp	*.L85(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L85:
	.quad	.L78
	.quad	.L72
	.quad	.L78
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L76
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L83
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L82
	.quad	.L72
	.quad	.L72
	.quad	.L72
	.quad	.L81
	.text
.L81:
	.loc 1 543 0
	addq	$20, %rsi
.L82:
	.loc 1 545 0
	addq	$20, %rsi
.L83:
	.loc 1 547 0
	movw	%dx, 8(%rsi)
	.p2align 4,,7
.L72:
	rep ; ret
.L78:
	.loc 1 535 0
	cmpl	$1, %ecx
	.loc 1 536 0
	movl	$65535, %esi
	.loc 1 535 0
	sbbl	%ecx, %ecx
	.loc 1 537 0
	movzwl	%dx,%eax
	.loc 1 538 0
	movl	144(%rdi), %edx
	.loc 1 535 0
	notl	%ecx
	andl	$16, %ecx
	.loc 1 536 0
	sall	%cl, %esi
	.loc 1 537 0
	sall	%cl, %eax
	notl	%esi
	andl	128(%rdi), %esi
	orl	%eax, %esi
	.loc 1 538 0
	jmp	es1370_update_voices
.L76:
	.loc 1 530 0
	movl	%edx, 140(%rdi)
	.loc 1 531 0
	ret
.LFE203:
	.size	es1370_writew, .-es1370_writew
	.p2align 4,,15
	.type	es1370_writel, @function
es1370_writel:
.LFB204:
	.loc 1 557 0
	movq	%rbp, -8(%rsp)
.LCFI15:
	movl	%edx, %ebp
.LBB22:
.LBB23:
	.loc 1 475 0
	movzbl	%sil, %edx
	.loc 1 476 0
	leal	-48(%rdx), %eax
.LBE23:
.LBE22:
	.loc 1 557 0
	movq	%rbx, -16(%rsp)
.LCFI16:
	subq	$24, %rsp
.LCFI17:
	.loc 1 557 0
	movq	%rdi, %rbx
	.loc 1 559 0
	leaq	40(%rdi), %rcx
.LBB24:
.LBB25:
	.loc 1 476 0
	cmpl	$15, %eax
	ja	.L87
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %edx
.L87:
.LBE25:
.LBE24:
	.loc 1 563 0
	cmpl	$44, %edx
	je	.L93
	ja	.L105
	cmpl	$32, %edx
	je	.L92
	.p2align 4,,9
	ja	.L106
	testl	%edx, %edx
	.p2align 4,,7
	je	.L90
	cmpl	$12, %edx
	.p2align 4,,7
	jne	.L86
	.loc 1 570 0
	andl	$15, %ebp
	movl	%ebp, 136(%rbx)
	jmp	.L86
	.p2align 4,,7
.L105:
	.loc 1 563 0
	cmpl	$3128, %edx
	je	.L97
	.p2align 4,,2
	ja	.L107
	cmpl	$3120, %edx
	.p2align 4,,7
	je	.L98
	cmpl	$3124, %edx
	.p2align 4,,7
	jne	.L86
.L103:
	.loc 1 610 0
	movl	%ebp, 16(%rcx)
	.loc 1 611 0
	movl	$0, 4(%rcx)
	.p2align 4,,3
	jmp	.L86
	.p2align 4,,7
.L93:
	.loc 1 580 0
	leaq	60(%rbx), %rcx
.L94:
	.loc 1 582 0
	addq	$20, %rcx
.L95:
	.loc 1 584 0
	movw	%bp, 8(%rcx)
.L86:
	.loc 1 620 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L106:
	.loc 1 563 0
	cmpl	$36, %edx
	je	.L95
	cmpl	$40, %edx
	jne	.L86
	.p2align 4,,7
	jmp	.L94
	.p2align 4,,7
.L107:
	cmpl	$3376, %edx
	.p2align 4,,7
	je	.L96
	.p2align 4,,9
	jbe	.L110
	cmpl	$3380, %edx
	.p2align 4,,7
	jne	.L86
	.loc 1 606 0
	leaq	60(%rbx), %rcx
.L102:
	.loc 1 608 0
	addq	$20, %rcx
	.p2align 4,,5
	jmp	.L103
.L96:
	.loc 1 590 0
	leaq	60(%rbx), %rcx
	.p2align 4,,7
.L97:
	.loc 1 592 0
	addq	$20, %rcx
.L98:
	.loc 1 594 0
	movl	%ebp, 12(%rcx)
	.loc 1 620 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L92:
	.loc 1 574 0
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	es1370_maybe_lower_irq
	.loc 1 575 0
	movl	128(%rbx), %esi
	movl	%ebp, %edx
.L109:
	movq	%rbx, %rdi
	.loc 1 620 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.loc 1 575 0
	jmp	es1370_update_voices
.L90:
	.loc 1 565 0
	movl	144(%rbx), %edx
	movl	%ebp, %esi
	jmp	.L109
.L110:
	.loc 1 563 0
	cmpl	$3132, %edx
	jne	.L86
	.p2align 4,,2
	jmp	.L102
.LFE204:
	.size	es1370_writel, .-es1370_writel
	.p2align 4,,15
	.type	es1370_readb, @function
es1370_readb:
.LFB205:
	.loc 1 623 0
.LBB26:
.LBB27:
	.loc 1 475 0
	andl	$255, %esi
	.loc 1 476 0
	leal	-48(%rsi), %eax
	cmpl	$15, %eax
	ja	.L112
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %esi
.L112:
.LBE27:
.LBE26:
	.loc 1 629 0
	cmpl	$27, %esi
	ja	.L125
	mov	%esi, %eax
	jmp	*.L126(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L126:
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L120
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L116
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L115
	.text
	.p2align 4,,7
.L125:
	.loc 1 650 0
	movl	$-1, %eax
	.loc 1 655 0
	ret
.L115:
	.loc 1 632 0
	movl	$5, %eax
	.loc 1 633 0
	.p2align 4,,6
	ret
.L120:
	.loc 1 641 0
	movl	128(%rdi), %eax
	leal	0(,%rsi,8), %ecx
	.loc 1 647 0
	shrl	%cl, %eax
	.loc 1 648 0
	ret
.L124:
	.loc 1 647 0
	movl	132(%rdi), %eax
	leal	-32(,%rsi,8), %ecx
	shrl	%cl, %eax
	.loc 1 648 0
	ret
.L116:
	.loc 1 635 0
	movl	136(%rdi), %eax
	.loc 1 636 0
	ret
.LFE205:
	.size	es1370_readb, .-es1370_readb
	.p2align 4,,15
	.type	es1370_readw, @function
es1370_readw:
.LFB206:
	.loc 1 658 0
.LBB28:
.LBB29:
	.loc 1 475 0
	movzbl	%sil, %edx
.LBE29:
.LBE28:
	.loc 1 660 0
	leaq	40(%rdi), %rcx
.LBB30:
.LBB31:
	.loc 1 476 0
	leal	-48(%rdx), %eax
	cmpl	$15, %eax
	ja	.L129
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %edx
.L129:
.LBE31:
.LBE30:
	.loc 1 665 0
	cmpl	$3126, %edx
	je	.L140
	ja	.L142
	cmpl	$42, %edx
	je	.L133
	.p2align 4,,9
	jbe	.L145
	cmpl	$46, %edx
	.p2align 4,,7
	je	.L132
	cmpl	$3124, %edx
	.p2align 4,,7
	je	.L137
	.p2align 4,,7
.L141:
	.loc 1 691 0
	movl	$-1, %eax
	.loc 1 697 0
	.p2align 4,,5
	ret
	.p2align 4,,7
.L142:
	.loc 1 665 0
	cmpl	$3134, %edx
	.p2align 4,,6
	je	.L139
	.p2align 4,,8
	jbe	.L146
	cmpl	$3380, %edx
	.p2align 4,,7
	je	.L135
	cmpl	$3382, %edx
	.p2align 4,,7
	jne	.L141
	.loc 1 683 0
	leaq	60(%rdi), %rcx
	.p2align 4,,7
.L139:
	.loc 1 685 0
	addq	$20, %rcx
	.p2align 4,,7
.L140:
	.loc 1 687 0
	movzwl	18(%rcx), %eax
	.loc 1 688 0
	.p2align 4,,1
	ret
	.p2align 4,,7
.L145:
	.loc 1 665 0
	cmpl	$38, %edx
	.p2align 4,,2
	jne	.L141
	.loc 1 671 0
	movzwl	10(%rcx), %eax
	.loc 1 672 0
	.p2align 4,,2
	ret
	.p2align 4,,7
.L146:
	.loc 1 665 0
	cmpl	$3132, %edx
	.p2align 4,,6
	jne	.L141
	.loc 1 677 0
	addq	$20, %rcx
.L137:
	.loc 1 679 0
	movzwl	16(%rcx), %eax
	.loc 1 680 0
	.p2align 4,,4
	ret
.L132:
	.loc 1 667 0
	leaq	60(%rdi), %rcx
	.p2align 4,,7
.L133:
	.loc 1 669 0
	addq	$20, %rcx
	.loc 1 671 0
	movzwl	10(%rcx), %eax
	.loc 1 672 0
	ret
.L135:
	.loc 1 675 0
	leaq	60(%rdi), %rcx
	.loc 1 677 0
	addq	$20, %rcx
	jmp	.L137
.LFE206:
	.size	es1370_readw, .-es1370_readw
	.p2align 4,,15
	.type	es1370_readl, @function
es1370_readl:
.LFB207:
	.loc 1 700 0
.LBB32:
.LBB33:
	.loc 1 475 0
	movzbl	%sil, %edx
.LBE33:
.LBE32:
	.loc 1 703 0
	leaq	40(%rdi), %rcx
.LBB34:
.LBB35:
	.loc 1 476 0
	leal	-48(%rdx), %eax
	cmpl	$15, %eax
	ja	.L148
	.loc 1 477 0
	movl	136(%rdi), %eax
	sall	$8, %eax
	orl	%eax, %edx
.L148:
.LBE35:
.LBE34:
	.loc 1 707 0
	cmpl	$44, %edx
	je	.L156
	ja	.L168
	cmpl	$16, %edx
	je	.L154
	.p2align 4,,9
	ja	.L169
	cmpl	$4, %edx
	.p2align 4,,7
	je	.L152
	.p2align 4,,9
	ja	.L170
	testl	%edx, %edx
	.p2align 4,,7
	je	.L151
	.p2align 4,,7
.L167:
	.loc 1 777 0
	movl	$-1, %eax
.L150:
	.loc 1 782 0
	rep ; ret
	.p2align 4,,7
.L168:
	.loc 1 707 0
	cmpl	$3132, %edx
	.p2align 4,,4
	je	.L160
	.p2align 4,,4
	ja	.L172
	cmpl	$3124, %edx
	.p2align 4,,4
	je	.L161
	.p2align 4,,9
	ja	.L173
	cmpl	$3120, %edx
	.p2align 4,,7
	jne	.L167
	.loc 1 764 0
	movl	12(%rcx), %eax
	.loc 1 765 0
	.p2align 4,,7
	ret
	.p2align 4,,7
.L156:
	.loc 1 725 0
	leaq	60(%rdi), %rcx
.L157:
	.loc 1 727 0
	addq	$20, %rcx
.L158:
	.loc 1 729 0
	movl	8(%rcx), %eax
	.loc 1 740 0
	.p2align 4,,2
	ret
	.p2align 4,,7
.L169:
	.loc 1 707 0
	cmpl	$36, %edx
	.p2align 4,,3
	je	.L158
	.p2align 4,,4
	ja	.L171
	cmpl	$32, %edx
	.p2align 4,,7
	jne	.L167
	.loc 1 721 0
	movl	144(%rdi), %eax
	.loc 1 722 0
	.p2align 4,,4
	ret
	.p2align 4,,7
.L172:
	.loc 1 707 0
	cmpl	$3380, %edx
	.p2align 4,,3
	je	.L159
	.p2align 4,,5
	jbe	.L175
	cmpl	$3384, %edx
	.loc 1 772 0
	movl	$-1, %eax
	.loc 1 707 0
	.p2align 4,,5
	je	.L150
	cmpl	$3388, %edx
	.p2align 4,,5
	je	.L150
	.loc 1 777 0
	movl	$-1, %eax
	.p2align 4,,3
	jmp	.L150
.L159:
	.loc 1 743 0
	leaq	60(%rdi), %rcx
	.p2align 4,,7
.L160:
	.loc 1 745 0
	addq	$20, %rcx
.L161:
	.loc 1 747 0
	movl	16(%rcx), %eax
	.loc 1 757 0
	.p2align 4,,1
	ret
	.p2align 4,,7
.L154:
	.loc 1 718 0
	movl	140(%rdi), %eax
	.loc 1 719 0
	ret
.L175:
	.loc 1 707 0
	cmpl	$3376, %edx
	jne	.L167
	.loc 1 760 0
	leaq	60(%rdi), %rcx
.L163:
	.loc 1 762 0
	addq	$20, %rcx
	.loc 1 764 0
	movl	12(%rcx), %eax
	.loc 1 765 0
	ret
.L170:
	.loc 1 707 0
	cmpl	$12, %edx
	.p2align 4,,2
	jne	.L167
	.loc 1 715 0
	movl	136(%rdi), %eax
	.loc 1 716 0
	ret
.L171:
	.loc 1 707 0
	cmpl	$40, %edx
	.p2align 4,,3
	je	.L157
	.loc 1 777 0
	movl	$-1, %eax
	.p2align 4,,3
	jmp	.L150
.L173:
	.loc 1 707 0
	cmpl	$3128, %edx
	.p2align 4,,5
	je	.L163
	.loc 1 777 0
	movl	$-1, %eax
	.p2align 4,,5
	jmp	.L150
.L151:
	.loc 1 709 0
	movl	128(%rdi), %eax
	.loc 1 710 0
	.p2align 4,,2
	ret
.L152:
	.loc 1 712 0
	movl	132(%rdi), %eax
	.loc 1 713 0
	ret
.LFE207:
	.size	es1370_readl, .-es1370_readl
	.section	.rodata.str1.1
.LC3:
	.string	"non looping mode\n"
.LC4:
	.string	"es1370: warning"
	.text
	.p2align 4,,15
	.type	es1370_run_channel, @function
es1370_run_channel:
.LFB209:
	.loc 1 865 0
	.loc 1 868 0
	leaq	(%rsi,%rsi,4), %rsi
	.loc 1 865 0
	movq	%rbp, -40(%rsp)
.LCFI18:
	movq	%r14, -16(%rsp)
.LCFI19:
	movq	%rbx, -48(%rsp)
.LCFI20:
	movq	%r12, -32(%rsp)
.LCFI21:
	movq	%rdi, %rbp
	.loc 1 869 0
	leaq	0(,%rsi,8), %r8
	.loc 1 865 0
	movq	%r13, -24(%rsp)
.LCFI22:
	movq	%r15, -8(%rsp)
.LCFI23:
	subq	$4200, %rsp
.LCFI24:
	.loc 1 866 0
	movl	132(%rdi), %eax
	.loc 1 868 0
	leaq	(%rdi,%rsi,4), %rdi
	.loc 1 869 0
	leaq	es1370_chan_bits(%r8), %rcx
	.loc 1 868 0
	leaq	40(%rdi), %r14
	.loc 1 866 0
	movl	%eax, 40(%rsp)
	.loc 1 869 0
	movq	%rcx, 32(%rsp)
	.loc 1 871 0
	movl	es1370_chan_bits(%r8), %eax
	testl	%eax, 128(%rbp)
	je	.L176
	movl	es1370_chan_bits+8(%r8), %eax
	testl	%eax, 144(%rbp)
	jne	.L176
	.loc 1 876 0
	movl	40(%rdi), %esi
	movl	$-1, %eax
	.loc 1 877 0
	movl	%edx, %edi
	.loc 1 876 0
	movl	%esi, %ecx
	sall	%cl, %eax
	.loc 1 877 0
	andl	%eax, %edi
	je	.L176
.LBB36:
	.loc 1 787 0
	movl	es1370_chan_bits+24(%r8), %r8d
	movl	%r8d, 28(%rsp)
.LBB37:
	.loc 1 790 0
	movl	8(%r14), %eax
	movzwl	%ax,%edx
	.loc 1 791 0
	shrl	$16, %eax
	.loc 1 790 0
	movl	%edx, 24(%rsp)
	.loc 1 792 0
	leal	1(%rax), %r15d
	.loc 1 793 0
	movl	16(%r14), %eax
	.loc 1 792 0
	sall	%cl, %r15d
	.loc 1 793 0
	movl	%eax, %ecx
	.loc 1 794 0
	andl	$65535, %eax
	.loc 1 793 0
	shrl	$16, %ecx
	.loc 1 794 0
	movl	%eax, 16(%rsp)
	.loc 1 793 0
	movl	%ecx, 20(%rsp)
	.loc 1 795 0
	movl	4(%r14), %edx
	subl	%ecx, %eax
	.loc 1 796 0
	movl	$0, 12(%rsp)
	.loc 1 795 0
	leal	4(%rdx,%rax,4), %eax
	.loc 1 800 0
	leal	(%rdx,%rcx,4), %r13d
.LBB38:
.LBB39:
	.loc 1 797 0
	cmpl	%r15d, %eax
	cmovg	%r15d, %eax
.LBE39:
	cmpl	%eax, %edi
	movl	%eax, %r12d
.LBE38:
	.loc 1 798 0
	movq	%r14, %rax
.LBB40:
	.loc 1 797 0
	cmovle	%edi, %r12d
.LBE40:
	.loc 1 798 0
	subq	%rbp, %rax
	.loc 1 800 0
	addl	12(%r14), %r13d
	.loc 1 798 0
	subq	$40, %rax
	sarq	$2, %rax
	imull	$-858993459, %eax, %eax
	.loc 1 802 0
	cmpl	$2, %eax
	je	.L216
.LBB41:
	.loc 1 819 0
	cltq
	.loc 1 831 0
	testl	%r12d, %r12d
	.loc 1 819 0
	movq	104(%rbp,%rax,8), %rax
	movq	%rax, (%rsp)
	.loc 1 831 0
	je	.L192
	.p2align 4,,7
.L217:
.LBB42:
.LBB43:
	.loc 1 824 0
	movslq	%r12d,%rax
	movl	$4096, %ebx
.LBE43:
.LBB44:
.LBB45:
	.file 3 "../cpu-all.h"
	.loc 3 925 0
	leaq	48(%rsp), %rsi
.LBE45:
.LBE44:
.LBB46:
	.loc 1 824 0
	cmpq	$4097, %rax
.LBE46:
.LBB47:
	.loc 3 924 0
	mov	%r13d, %edi
.LBE47:
.LBB48:
	.loc 1 824 0
	cmovb	%rax, %rbx
.LBE48:
.LBB49:
.LBB50:
	.loc 3 925 0
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	call	cpu_physical_memory_rw
.LBE50:
.LBE49:
	.loc 1 826 0
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movl	%ebx, %edx
	call	AUD_write
	.loc 1 827 0
	testl	%eax, %eax
	je	.L192
	.loc 1 830 0
	addl	%eax, %r13d
	.loc 1 831 0
	addl	%eax, 12(%rsp)
.LBE42:
	subl	%eax, %r12d
	jne	.L217
.L192:
.LBE41:
	.loc 1 835 0
	cmpl	12(%rsp), %r15d
	je	.L218
	.loc 1 844 0
	subl	12(%rsp), %r15d
	.loc 1 843 0
	movl	$0, 44(%rsp)
	.loc 1 844 0
	movl	(%r14), %ecx
	leal	-1(%r15), %eax
	sarl	%cl, %eax
.L214:
	sall	$16, %eax
	orl	24(%rsp), %eax
	.loc 1 847 0
	movl	4(%r14), %edx
	.loc 1 844 0
	movl	%eax, 8(%r14)
	.loc 1 847 0
	movl	12(%rsp), %ecx
	leal	(%rdx,%rcx), %eax
	shrl	$2, %eax
	addl	%eax, 20(%rsp)
	.loc 1 849 0
	movl	28(%rsp), %eax
	testl	%eax, 144(%rbp)
	jne	.L219
	.loc 1 857 0
	movl	16(%rsp), %ecx
	cmpl	%ecx, 20(%rsp)
	ja	.L211
	.loc 1 858 0
	sall	$16, 20(%rsp)
	movl	20(%rsp), %eax
	orl	%eax, %ecx
.L215:
	movl	%ecx, 16(%r14)
.L203:
	.loc 1 861 0
	movl	12(%rsp), %ecx
	leal	(%rdx,%rcx), %eax
	andl	$3, %eax
	movl	%eax, 4(%r14)
.LBE37:
.LBE36:
	.loc 1 883 0
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L206
	.loc 1 884 0
	movq	32(%rsp), %rdx
	movl	12(%rdx), %eax
	testl	%eax, 144(%rbp)
	je	.L206
	.loc 1 885 0
	movl	4(%rdx), %ecx
	orl	%ecx, 40(%rsp)
	.p2align 4,,7
.L206:
	.loc 1 889 0
	movl	40(%rsp), %eax
	cmpl	%eax, 132(%rbp)
	je	.L176
	.loc 1 890 0
	movl	%eax, %esi
	movq	%rbp, %rdi
	call	es1370_update_status
	.p2align 4,,7
.L176:
	.loc 1 892 0
	movq	4152(%rsp), %rbx
	movq	4160(%rsp), %rbp
	movq	4168(%rsp), %r12
	movq	4176(%rsp), %r13
	movq	4184(%rsp), %r14
	movq	4192(%rsp), %r15
	addq	$4200, %rsp
	ret
.L211:
	movl	16(%rsp), %ecx
	jmp	.L215
.L219:
.LBB51:
.LBB52:
	.loc 1 852 0
	movl	$.LC3, %esi
	movl	$.LC4, %edi
	xorl	%eax, %eax
	call	AUD_log
	movl	4(%r14), %edx
	jmp	.L203
.L218:
	.loc 1 837 0
	movl	24(%rsp), %eax
	.loc 1 836 0
	movl	$1, 44(%rsp)
	jmp	.L214
.L216:
	.loc 1 815 0
	testl	%r12d, %r12d
	je	.L192
	.p2align 4,,7
.L220:
.LBB53:
.LBB54:
	.loc 1 806 0
	movslq	%r12d,%rax
.LBE54:
	.loc 1 807 0
	movq	120(%rbp), %rdi
.LBB55:
	.loc 1 806 0
	movl	$4096, %edx
	cmpq	$4097, %rax
.LBE55:
	.loc 1 807 0
	leaq	48(%rsp), %rsi
.LBB56:
	.loc 1 806 0
	cmovb	%rax, %rdx
.LBE56:
	.loc 1 807 0
	call	AUD_read
	.loc 1 808 0
	testl	%eax, %eax
	.loc 1 807 0
	movl	%eax, %ebx
	.loc 1 808 0
	je	.L192
.LBB57:
.LBB58:
	.loc 3 930 0
	leaq	48(%rsp), %rsi
.LBE58:
	.loc 3 929 0
	mov	%r13d, %edi
.LBB59:
	.loc 3 930 0
	movl	$1, %ecx
	movl	%eax, %edx
.LBE59:
.LBE57:
	.loc 1 814 0
	addl	%ebx, %r13d
.LBB60:
.LBB61:
	.loc 3 930 0
	call	cpu_physical_memory_rw
.LBE61:
.LBE60:
	.loc 1 815 0
	addl	%ebx, 12(%rsp)
.LBE53:
	subl	%ebx, %r12d
	jne	.L220
	jmp	.L192
.LBE52:
.LBE51:
.LFE209:
	.size	es1370_run_channel, .-es1370_run_channel
	.p2align 4,,15
	.type	es1370_dac1_callback, @function
es1370_dac1_callback:
.LFB210:
	.loc 1 895 0
	.loc 1 898 0
	movl	%esi, %edx
	xorl	%esi, %esi
	jmp	es1370_run_channel
.LFE210:
	.size	es1370_dac1_callback, .-es1370_dac1_callback
	.p2align 4,,15
	.type	es1370_dac2_callback, @function
es1370_dac2_callback:
.LFB211:
	.loc 1 902 0
	.loc 1 905 0
	movl	%esi, %edx
	movl	$1, %esi
	jmp	es1370_run_channel
.LFE211:
	.size	es1370_dac2_callback, .-es1370_dac2_callback
	.p2align 4,,15
	.type	es1370_adc_callback, @function
es1370_adc_callback:
.LFB212:
	.loc 1 909 0
	.loc 1 912 0
	movl	%esi, %edx
	movl	$2, %esi
	jmp	es1370_run_channel
.LFE212:
	.size	es1370_adc_callback, .-es1370_adc_callback
	.p2align 4,,15
	.type	es1370_map, @function
es1370_map:
.LFB213:
	.loc 1 917 0
	pushq	%rbp
.LCFI25:
	.loc 1 919 0
	leaq	552(%rdi), %rbp
	.loc 1 925 0
	movl	$es1370_writeb, %ecx
	movl	$256, %esi
	.loc 1 917 0
	pushq	%rbx
.LCFI26:
	movl	%edx, %ebx
	.loc 1 925 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$1, %edx
	.loc 1 917 0
	subq	$8, %rsp
.LCFI27:
	.loc 1 925 0
	call	register_ioport_write
	.loc 1 926 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$es1370_writew, %ecx
	movl	$2, %edx
	movl	$128, %esi
	call	register_ioport_write
	.loc 1 927 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$es1370_writel, %ecx
	movl	$4, %edx
	movl	$64, %esi
	call	register_ioport_write
	.loc 1 929 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$es1370_readb, %ecx
	movl	$1, %edx
	movl	$256, %esi
	call	register_ioport_read
	.loc 1 930 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$es1370_readw, %ecx
	movl	$2, %edx
	movl	$128, %esi
	call	register_ioport_read
	.loc 1 931 0
	addq	$8, %rsp
	movl	%ebx, %edi
	movq	%rbp, %r8
	popq	%rbx
	popq	%rbp
	movl	$es1370_readl, %ecx
	movl	$4, %edx
	movl	$64, %esi
	jmp	register_ioport_read
.LFE213:
	.size	es1370_map, .-es1370_map
	.p2align 4,,15
	.type	es1370_save, @function
es1370_save:
.LFB214:
	.loc 1 935 0
	pushq	%r13
.LCFI28:
	movq	%rsi, %r13
	pushq	%r12
.LCFI29:
	movl	$2, %r12d
	pushq	%rbp
.LCFI30:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI31:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI32:
	.p2align 4,,7
.L234:
.LBB62:
.LBB63:
.LBB64:
	.file 4 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 4 32 0
	movl	40(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	movl	44(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE66:
.LBE65:
.LBB67:
.LBB68:
	movl	48(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	movl	52(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	movl	56(%rbx), %esi
	movq	%rbp, %rdi
	addq	$20, %rbx
	call	qemu_put_be32
	decq	%r12
	jns	.L234
.LBE72:
.LBE71:
.LBE62:
.LBB73:
.LBB74:
	movl	128(%r13), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	movl	132(%r13), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	movl	136(%r13), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	movl	140(%r13), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	movl	144(%r13), %esi
.LBE82:
.LBE81:
	addq	$8, %rsp
.LBB83:
.LBB84:
	movq	%rbp, %rdi
.LBE84:
.LBE83:
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
.LBB85:
.LBB86:
	jmp	qemu_put_be32
.LBE86:
.LBE85:
.LFE214:
	.size	es1370_save, .-es1370_save
	.p2align 4,,15
	.type	es1370_load, @function
es1370_load:
.LFB215:
	.loc 1 955 0
	pushq	%r13
.LCFI33:
	.loc 1 961 0
	movl	$-22, %eax
	.loc 1 955 0
	pushq	%r12
.LCFI34:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI35:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI36:
	subq	$8, %rsp
.LCFI37:
	.loc 1 960 0
	decl	%edx
	jne	.L242
	.loc 1 963 0
	xorl	%r13d, %r13d
	movq	%rsi, %rbx
	.p2align 4,,7
.L256:
.LBB87:
.LBB88:
.LBB89:
	.loc 4 52 0
	movq	%rbp, %rdi
	call	qemu_get_be32
.LBE89:
.LBE88:
.LBB90:
.LBB91:
	movq	%rbp, %rdi
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	movl	%eax, 40(%rbx)
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	call	qemu_get_be32
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	movq	%rbp, %rdi
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	movl	%eax, 44(%rbx)
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	call	qemu_get_be32
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	movq	%rbp, %rdi
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movl	%eax, 48(%rbx)
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	call	qemu_get_be32
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	movq	%rbp, %rdi
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	movl	%eax, 52(%rbx)
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	call	qemu_get_be32
.LBE113:
.LBE112:
	.loc 1 970 0
	cmpq	$2, %r13
.LBB114:
.LBB115:
	.loc 4 52 0
	movl	%eax, 56(%rbx)
.LBE115:
.LBE114:
	.loc 1 970 0
	je	.L264
	.loc 1 977 0
	movq	104(%r12,%r13,8), %rsi
	testq	%rsi, %rsi
	jne	.L265
.L246:
.LBE87:
	.loc 1 963 0
	incq	%r13
	addq	$20, %rbx
	cmpq	$2, %r13
	jbe	.L256
.LBB116:
.LBB117:
	.loc 4 52 0
	movq	%rbp, %rdi
	call	qemu_get_be32
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	movq	%rbp, %rdi
.LBE119:
.LBE118:
.LBB120:
.LBB121:
	movl	%eax, %ebx
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	call	qemu_get_be32
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	movq	%rbp, %rdi
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	movl	%eax, 132(%r12)
.LBE127:
.LBE126:
.LBB128:
.LBB129:
	call	qemu_get_be32
.LBE129:
.LBE128:
.LBB130:
.LBB131:
	movq	%rbp, %rdi
.LBE131:
.LBE130:
.LBB132:
.LBB133:
	movl	%eax, 136(%r12)
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	call	qemu_get_be32
.LBE135:
.LBE134:
.LBB136:
.LBB137:
	movq	%rbp, %rdi
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	movl	%eax, 140(%r12)
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	call	qemu_get_be32
.LBE141:
.LBE140:
	.loc 1 990 0
	movl	$0, 128(%r12)
	.loc 1 992 0
	movl	%eax, %edx
	.loc 1 991 0
	movl	$0, 144(%r12)
	.loc 1 992 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	es1370_update_voices
	.loc 1 993 0
	xorl	%eax, %eax
.L242:
	.loc 1 994 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L264:
.LBB142:
	.loc 1 971 0
	movq	120(%r12), %rsi
	testq	%rsi, %rsi
	je	.L246
	.loc 1 972 0
	leaq	8(%r12), %rdi
	call	AUD_close_in
	.loc 1 973 0
	movq	$0, 120(%r12)
	jmp	.L246
	.p2align 4,,7
.L265:
	.loc 1 978 0
	leaq	8(%r12), %rdi
	call	AUD_close_out
	.loc 1 979 0
	movq	$0, 104(%r12,%r13,8)
	jmp	.L246
.LBE142:
.LFE215:
	.size	es1370_load, .-es1370_load
	.p2align 4,,15
	.type	es1370_on_reset, @function
es1370_on_reset:
.LFB216:
	.loc 1 997 0
	.loc 1 999 0
	jmp	es1370_reset
.LFE216:
	.size	es1370_on_reset, .-es1370_on_reset
	.section	.rodata.str1.1
.LC5:
	.string	"ES1370"
.LC7:
	.string	"es1370"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"Failed to register PCI device for ES1370\n"
	.text
	.p2align 4,,15
.globl es1370_init
	.type	es1370_init, @function
es1370_init:
.LFB217:
	.loc 1 1003 0
	pushq	%r12
.LCFI38:
	.loc 1 1008 0
	testq	%rdi, %rdi
	.loc 1 1003 0
	movq	%rsi, %r12
	.loc 1 1010 0
	movl	$-1, %eax
	.loc 1 1003 0
	pushq	%rbp
.LCFI39:
	pushq	%rbx
.LCFI40:
	.loc 1 1008 0
	je	.L267
	.loc 1 1013 0
	testq	%rsi, %rsi
	je	.L267
	.loc 1 1018 0
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%eax, %ecx
	movl	$704, %edx
	movl	$.LC5, %esi
	call	pci_register_device
	.loc 1 1022 0
	testq	%rax, %rax
	.loc 1 1018 0
	movq	%rax, %rbp
	.loc 1 1022 0
	je	.L271
	.loc 1 1055 0
	leaq	552(%rax), %rbx
	.loc 1 1028 0
	movb	$116, (%rax)
	.loc 1 1029 0
	movb	$18, 1(%rax)
	.loc 1 1030 0
	movb	$0, 2(%rax)
	.loc 1 1031 0
	movb	$80, 3(%rax)
	.loc 1 1058 0
	movq	%rax, %rdi
	.loc 1 1032 0
	movb	$4, 7(%rax)
	.loc 1 1033 0
	movb	$1, 10(%rax)
	.loc 1 1058 0
	movl	$es1370_map, %r8d
	.loc 1 1034 0
	movb	$4, 11(%rax)
	.loc 1 1037 0
	movb	$66, 44(%rax)
	.loc 1 1058 0
	movl	$1, %ecx
	.loc 1 1038 0
	movb	$73, 45(%rax)
	.loc 1 1039 0
	movb	$76, 46(%rax)
	.loc 1 1058 0
	movl	$256, %edx
	.loc 1 1040 0
	movb	$76, 47(%rax)
	.loc 1 1051 0
	movb	$1, 61(%rax)
	.loc 1 1058 0
	xorl	%esi, %esi
	.loc 1 1052 0
	movb	$12, 62(%rax)
	.loc 1 1053 0
	movb	$-128, 63(%rax)
	.loc 1 1056 0
	movq	%rax, 552(%rbp)
	.loc 1 1058 0
	call	pci_register_io_region
	.loc 1 1059 0
	movq	%rbx, %r9
	movl	$es1370_load, %r8d
	movl	$es1370_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC7, %edi
	call	register_savevm
	.loc 1 1060 0
	movq	%rbx, %rsi
	movl	$es1370_on_reset, %edi
	call	qemu_register_reset
	.loc 1 1062 0
	leaq	560(%rbp), %rdx
	movl	$.LC7, %esi
	movq	%r12, %rdi
	call	AUD_register_card
	.loc 1 1063 0
	movq	%rbx, %rdi
	call	es1370_reset
	.loc 1 1064 0
	xorl	%eax, %eax
.L267:
	.loc 1 1065 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L271:
	.loc 1 1023 0
	xorl	%eax, %eax
	movl	$.LC6, %esi
	xorl	%edi, %edi
	call	AUD_log
	.loc 1 1065 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 1024 0
	movl	$-1, %eax
	.loc 1 1065 0
	ret
.LFE217:
	.size	es1370_init, .-es1370_init
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI1-.LFB196
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI5-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI12-.LFB202
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI15-.LFB204
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI21-.LFB209
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x1070
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI25-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI28-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI33-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI38-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE40:
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI1-.LFB196
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI5-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI12-.LFB202
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI15-.LFB204
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI21-.LFB209
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x1070
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI25-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI28-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI33-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI38-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE41:
	.file 5 "../qemu-common.h"
	.file 6 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "../audio/audio.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "../argos-tag.h"
	.file 11 "../argos.h"
	.file 12 "../cpu-defs.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/libio.h"
	.file 15 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x19d3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF186
	.byte	0x1
	.long	.LASF187
	.long	.LASF188
	.uleb128 0x2
	.long	.LASF9
	.byte	0x9
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
	.byte	0xf
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xf
	.byte	0x8e
	.long	0x53
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x27c
	.long	.LASF43
	.byte	0xd8
	.byte	0xd
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0xe
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0xe
	.value	0x115
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0xe
	.value	0x116
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0xe
	.value	0x117
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0xe
	.value	0x118
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0xe
	.value	0x119
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0xe
	.value	0x11a
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0xe
	.value	0x11b
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0xe
	.value	0x11c
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0xe
	.value	0x11e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0xe
	.value	0x11f
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0xe
	.value	0x120
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0xe
	.value	0x122
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0xe
	.value	0x124
	.long	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0xe
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0xe
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0xe
	.value	0x12c
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0xe
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0xe
	.value	0x131
	.long	0x7d
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0xe
	.value	0x132
	.long	0x2c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0xe
	.value	0x136
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0xe
	.value	0x13f
	.long	0x96
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0xe
	.value	0x148
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0xe
	.value	0x149
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0xe
	.value	0x14a
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0xe
	.value	0x14b
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0xe
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0xe
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0xe
	.value	0x150
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xe
	.byte	0xb4
	.uleb128 0x7
	.long	0x2ba
	.long	.LASF44
	.byte	0x18
	.byte	0xe
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0xe
	.byte	0xbb
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0xe
	.byte	0xbc
	.long	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0xe
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x283
	.uleb128 0x5
	.byte	0x8
	.long	0xb0
	.uleb128 0xb
	.long	0x2d6
	.long	0x6f
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x27c
	.uleb128 0xb
	.long	0x2ec
	.long	0x6f
	.uleb128 0xc
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x31
	.long	0x76
	.uleb128 0x2
	.long	.LASF49
	.byte	0x7
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF51
	.byte	0xc
	.byte	0x49
	.long	0x302
	.uleb128 0x3
	.long	.LASF52
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF55
	.byte	0xb
	.byte	0x2f
	.long	0x2f7
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x34
	.long	0x2f7
	.uleb128 0x7
	.long	0x36c
	.long	.LASF57
	.byte	0x8
	.byte	0xa
	.byte	0x37
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x38
	.long	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x39
	.long	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x3d
	.long	0x343
	.uleb128 0x5
	.byte	0x8
	.long	0x36c
	.uleb128 0x5
	.byte	0x8
	.long	0x383
	.uleb128 0xd
	.long	0x2ec
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x6d
	.long	0x393
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x73
	.long	0x3a4
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x78
	.long	0x3b5
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.uleb128 0x2
	.long	.LASF64
	.byte	0x5
	.byte	0x79
	.long	0x3c6
	.uleb128 0xf
	.long	0x469
	.long	.LASF64
	.value	0x228
	.byte	0x5
	.byte	0x79
	.uleb128 0xa
	.long	.LASF65
	.byte	0x6
	.byte	0x2f
	.long	0x677
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"bus"
	.byte	0x6
	.byte	0x32
	.long	0x687
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.long	.LASF66
	.byte	0x6
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.long	.LASF67
	.byte	0x6
	.byte	0x34
	.long	0x68d
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.byte	0x35
	.long	0x69d
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.byte	0x38
	.long	0x6ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.byte	0x39
	.long	0x6b3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xa
	.long	.LASF71
	.byte	0x6
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x10
	.string	"irq"
	.byte	0x6
	.byte	0x3e
	.long	0x6b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.long	.LASF72
	.byte	0x6
	.byte	0x41
	.long	0x6bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x5
	.byte	0x7b
	.long	0x474
	.uleb128 0x5
	.byte	0x8
	.long	0x47a
	.uleb128 0xe
	.long	.LASF74
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x399
	.uleb128 0x11
	.long	0x4b3
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.uleb128 0x12
	.long	.LASF75
	.sleb128 0
	.uleb128 0x12
	.long	.LASF76
	.sleb128 1
	.uleb128 0x12
	.long	.LASF77
	.sleb128 2
	.uleb128 0x12
	.long	.LASF78
	.sleb128 3
	.uleb128 0x12
	.long	.LASF79
	.sleb128 4
	.uleb128 0x12
	.long	.LASF80
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x8
	.byte	0x27
	.long	0x486
	.uleb128 0x13
	.long	0x4ff
	.byte	0x10
	.byte	0x8
	.byte	0x34
	.uleb128 0xa
	.long	.LASF82
	.byte	0x8
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF83
	.byte	0x8
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"fmt"
	.byte	0x8
	.byte	0x32
	.long	0x4b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF84
	.byte	0x8
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x8
	.byte	0x34
	.long	0x4be
	.uleb128 0x2
	.long	.LASF86
	.byte	0x8
	.byte	0x4c
	.long	0x515
	.uleb128 0xe
	.long	.LASF86
	.byte	0x1
	.uleb128 0x2
	.long	.LASF87
	.byte	0x8
	.byte	0x4e
	.long	0x526
	.uleb128 0xe
	.long	.LASF87
	.byte	0x1
	.uleb128 0x13
	.long	0x551
	.byte	0x10
	.byte	0x8
	.byte	0x53
	.uleb128 0xa
	.long	.LASF88
	.byte	0x8
	.byte	0x53
	.long	0x588
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x8
	.byte	0x53
	.long	0x58e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.long	0x588
	.long	.LASF90
	.byte	0x20
	.byte	0x8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF91
	.byte	0x8
	.byte	0x51
	.long	0x594
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF67
	.byte	0x8
	.byte	0x52
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0x8
	.byte	0x53
	.long	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x551
	.uleb128 0x5
	.byte	0x8
	.long	0x588
	.uleb128 0x5
	.byte	0x8
	.long	0x388
	.uleb128 0x2
	.long	.LASF90
	.byte	0x8
	.byte	0x54
	.long	0x551
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.byte	0xc
	.long	0x5b0
	.uleb128 0x14
	.long	0x5cb
	.byte	0x1
	.uleb128 0x15
	.long	0x5cb
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3bb
	.uleb128 0x2
	.long	.LASF94
	.byte	0x6
	.byte	0xe
	.long	0x5dc
	.uleb128 0x16
	.long	0x5f6
	.byte	0x1
	.long	0x2f7
	.uleb128 0x15
	.long	0x5cb
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x6
	.byte	0x10
	.long	0x601
	.uleb128 0x14
	.long	0x621
	.byte	0x1
	.uleb128 0x15
	.long	0x5cb
	.uleb128 0x15
	.long	0x3f
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x3f
	.byte	0x0
	.uleb128 0x7
	.long	0x666
	.long	.LASF96
	.byte	0x18
	.byte	0x6
	.byte	0x16
	.uleb128 0xa
	.long	.LASF97
	.byte	0x6
	.byte	0x17
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x6
	.byte	0x18
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF99
	.byte	0x6
	.byte	0x19
	.long	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF100
	.byte	0x6
	.byte	0x1a
	.long	0x666
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5f6
	.uleb128 0x2
	.long	.LASF96
	.byte	0x6
	.byte	0x1b
	.long	0x621
	.uleb128 0xb
	.long	0x687
	.long	0x2ec
	.uleb128 0xc
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3aa
	.uleb128 0xb
	.long	0x69d
	.long	0x6f
	.uleb128 0xc
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xb
	.long	0x6ad
	.long	0x66c
	.uleb128 0xc
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5d1
	.uleb128 0x5
	.byte	0x8
	.long	0x5a5
	.uleb128 0x5
	.byte	0x8
	.long	0x469
	.uleb128 0xb
	.long	0x6cf
	.long	0x3f
	.uleb128 0xc
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.long	0x728
	.long	.LASF101
	.byte	0x14
	.byte	0x1
	.value	0x104
	.uleb128 0x8
	.long	.LASF102
	.byte	0x1
	.value	0x105
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF103
	.byte	0x1
	.value	0x106
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF104
	.byte	0x1
	.value	0x107
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF105
	.byte	0x1
	.value	0x108
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.value	0x109
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x17
	.long	0x7d1
	.long	.LASF107
	.byte	0x98
	.byte	0x1
	.value	0x10c
	.uleb128 0x8
	.long	.LASF108
	.byte	0x1
	.value	0x10d
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF109
	.byte	0x1
	.value	0x10f
	.long	0x59a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF101
	.byte	0x1
	.value	0x110
	.long	0x7d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF110
	.byte	0x1
	.value	0x111
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1
	.value	0x112
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.string	"ctl"
	.byte	0x1
	.value	0x114
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF112
	.byte	0x1
	.value	0x115
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF113
	.byte	0x1
	.value	0x116
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF114
	.byte	0x1
	.value	0x117
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF115
	.byte	0x1
	.value	0x118
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0xb
	.long	0x7e1
	.long	0x6cf
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.long	0x7f1
	.long	0x7f1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x50a
	.uleb128 0x5
	.byte	0x8
	.long	0x51b
	.uleb128 0x19
	.long	.LASF107
	.byte	0x1
	.value	0x119
	.long	0x728
	.uleb128 0x1a
	.long	0x837
	.long	.LASF116
	.value	0x2c0
	.byte	0x1
	.value	0x11b
	.uleb128 0x18
	.string	"dev"
	.byte	0x1
	.value	0x11c
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF117
	.byte	0x1
	.value	0x11d
	.long	0x7fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.byte	0x0
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.value	0x11e
	.long	0x809
	.uleb128 0x17
	.long	0x8c9
	.long	.LASF118
	.byte	0x28
	.byte	0x1
	.value	0x120
	.uleb128 0x8
	.long	.LASF119
	.byte	0x1
	.value	0x121
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF120
	.byte	0x1
	.value	0x122
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF121
	.byte	0x1
	.value	0x123
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF122
	.byte	0x1
	.value	0x124
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF123
	.byte	0x1
	.value	0x125
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF124
	.byte	0x1
	.value	0x126
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF125
	.byte	0x1
	.value	0x127
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF126
	.byte	0x1
	.value	0x129
	.long	0x8f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x14
	.long	0x8e4
	.byte	0x1
	.uleb128 0x15
	.long	0x8e4
	.uleb128 0x15
	.long	0x2f7
	.uleb128 0x15
	.long	0x8ea
	.uleb128 0x15
	.long	0x8ea
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7fd
	.uleb128 0x5
	.byte	0x8
	.long	0x2f7
	.uleb128 0x5
	.byte	0x8
	.long	0x8c9
	.uleb128 0x1b
	.long	0x93e
	.long	.LASF128
	.byte	0x1
	.value	0x141
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x140
	.long	0x8e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1
	.value	0x140
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x142
	.long	0x2f7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x9a7
	.long	.LASF129
	.byte	0x1
	.value	0x14e
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x14d
	.long	0x8e4
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x14f
	.long	0x2d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.long	0x989
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x158
	.long	0x9a7
	.byte	0x0
	.uleb128 0x22
	.long	0x9ad
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x23
	.long	0x9ba
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6cf
	.uleb128 0x24
	.long	0x9c6
	.long	.LASF131
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x469
	.byte	0x0
	.uleb128 0x1b
	.long	0xa0e
	.long	.LASF132
	.byte	0x1
	.value	0x168
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x167
	.long	0x8e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF115
	.byte	0x1
	.value	0x167
	.long	0x2f7
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x169
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1b
	.long	0xa64
	.long	.LASF133
	.byte	0x1
	.value	0x17f
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x17c
	.long	0x8e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"ctl"
	.byte	0x1
	.value	0x17c
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF134
	.byte	0x1
	.value	0x17d
	.long	0x8ea
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x1
	.value	0x17d
	.long	0x8ea
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1b
	.long	0xad2
	.long	.LASF136
	.byte	0x1
	.value	0x188
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x184
	.long	0x8e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"ctl"
	.byte	0x1
	.value	0x184
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF134
	.byte	0x1
	.value	0x185
	.long	0x8ea
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x1
	.value	0x186
	.long	0x8ea
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF137
	.byte	0x1
	.value	0x189
	.long	0x2f7
	.uleb128 0x26
	.long	.LASF138
	.byte	0x1
	.value	0x189
	.long	0x2f7
	.byte	0x0
	.uleb128 0x1b
	.long	0xba6
	.long	.LASF139
	.byte	0x1
	.value	0x192
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x191
	.long	0x8e4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"ctl"
	.byte	0x1
	.value	0x191
	.long	0x2f7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.long	.LASF115
	.byte	0x1
	.value	0x191
	.long	0x2f7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x193
	.long	0x2d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x194
	.long	0x2f7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.value	0x194
	.long	0x2f7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x1
	.value	0x194
	.long	0x2f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x1
	.value	0x194
	.long	0x2f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x197
	.long	0x9a7
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.value	0x198
	.long	0xba6
	.uleb128 0x20
	.long	0xb91
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1f
	.string	"as"
	.byte	0x1
	.value	0x1a8
	.long	0x4ff
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1f
	.string	"on"
	.byte	0x1
	.value	0x1ca
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbac
	.uleb128 0xd
	.long	0x843
	.uleb128 0x1b
	.long	0xc41
	.long	.LASF142
	.byte	0x1
	.value	0x1e2
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x1e1
	.long	0xa1
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x1e1
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"val"
	.byte	0x1
	.value	0x1e1
	.long	0x2f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x1e3
	.long	0x8e4
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x1
	.value	0x1e4
	.long	0x2f7
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF144
	.byte	0x1
	.value	0x1e4
	.long	0x2f7
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0xc6a
	.long	.LASF145
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	0x2f7
	.byte	0x3
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1d9
	.long	0x8e4
	.uleb128 0x2b
	.long	.LASF97
	.byte	0x1
	.value	0x1d9
	.long	0x2f7
	.byte	0x0
	.uleb128 0x1b
	.long	0xd06
	.long	.LASF146
	.byte	0x1
	.value	0x208
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x207
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x207
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"val"
	.byte	0x1
	.value	0x207
	.long	0x2f7
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x209
	.long	0x8e4
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x1
	.value	0x20b
	.long	0x2f7
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF144
	.byte	0x1
	.value	0x20b
	.long	0x2f7
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x20c
	.long	0x9a7
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xd88
	.long	.LASF147
	.byte	0x1
	.value	0x22d
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x22c
	.long	0xa1
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x22c
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"val"
	.byte	0x1
	.value	0x22c
	.long	0x2f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x22e
	.long	0x8e4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x22f
	.long	0x9a7
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0xe0e
	.long	.LASF148
	.byte	0x1
	.value	0x26f
	.byte	0x1
	.long	0x2f7
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x26e
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x26e
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.value	0x26e
	.long	0x377
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x270
	.long	0x8e4
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x271
	.long	0x2f7
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0xea0
	.long	.LASF149
	.byte	0x1
	.value	0x292
	.byte	0x1
	.long	0x2f7
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x291
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x291
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.value	0x291
	.long	0x377
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x293
	.long	0x8e4
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x294
	.long	0x9a7
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x295
	.long	0x2f7
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0xf32
	.long	.LASF150
	.byte	0x1
	.value	0x2bc
	.byte	0x1
	.long	0x2f7
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x2bb
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x2bb
	.long	0x2f7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.value	0x2bb
	.long	0x377
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x2bd
	.long	0x8e4
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x2be
	.long	0x2f7
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x2bf
	.long	0x9a7
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.long	0xc41
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x28
	.long	0xc53
	.uleb128 0x23
	.long	0xc5d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x114b
	.long	.LASF151
	.byte	0x1
	.value	0x361
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x360
	.long	0x8e4
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x1
	.value	0x360
	.long	0x2d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x1
	.value	0x360
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x362
	.long	0x2f7
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x1
	.value	0x363
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"irq"
	.byte	0x1
	.value	0x363
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x364
	.long	0x9a7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.value	0x365
	.long	0xba6
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	0x10ef
	.long	0x114b
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x28
	.long	0x1159
	.uleb128 0x28
	.long	0x1163
	.uleb128 0x23
	.long	0x116d
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x28
	.long	0x1179
	.uleb128 0x28
	.long	0x1185
	.uleb128 0x27
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x2e
	.long	0x1191
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2e
	.long	0x119d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.long	0x11a9
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	0x11b4
	.uleb128 0x2e
	.long	0x11c0
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	0x11cc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	0x11d8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	0x11e4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x11f0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	0x11fc
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	0x1208
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1078
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x2f
	.long	0x1219
	.uleb128 0x2f
	.long	0x1224
	.uleb128 0x30
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x2f
	.long	0x124c
	.uleb128 0x2f
	.long	0x1257
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x2e
	.long	0x129b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x2e
	.long	0x12a8
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x12b4
	.uleb128 0x20
	.long	0x10c4
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x2e
	.long	0x12c1
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x12cc
	.byte	0x0
	.uleb128 0x22
	.long	0x12ec
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x23
	.long	0x12fa
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.long	0x1306
	.uleb128 0x28
	.long	0x1312
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x2e
	.long	0x1269
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.long	0x1275
	.uleb128 0x20
	.long	0x1122
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x2e
	.long	0x1282
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x128d
	.byte	0x0
	.uleb128 0x22
	.long	0x1325
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x23
	.long	0x1333
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.long	0x133f
	.uleb128 0x28
	.long	0x134b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x12db
	.long	.LASF154
	.byte	0x1
	.value	0x313
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x311
	.long	0x8e4
	.uleb128 0x2a
	.string	"d"
	.byte	0x1
	.value	0x311
	.long	0x9a7
	.uleb128 0x2b
	.long	.LASF155
	.byte	0x1
	.value	0x311
	.long	0x3f
	.uleb128 0x2a
	.string	"max"
	.byte	0x1
	.value	0x312
	.long	0x3f
	.uleb128 0x2a
	.string	"irq"
	.byte	0x1
	.value	0x312
	.long	0x4d
	.uleb128 0x26
	.long	.LASF156
	.byte	0x1
	.value	0x314
	.long	0x12db
	.uleb128 0x26
	.long	.LASF97
	.byte	0x1
	.value	0x315
	.long	0x2f7
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x316
	.long	0x3f
	.uleb128 0x21
	.string	"csc"
	.byte	0x1
	.value	0x317
	.long	0x3f
	.uleb128 0x26
	.long	.LASF157
	.byte	0x1
	.value	0x318
	.long	0x3f
	.uleb128 0x21
	.string	"cnt"
	.byte	0x1
	.value	0x319
	.long	0x3f
	.uleb128 0x26
	.long	.LASF98
	.byte	0x1
	.value	0x31a
	.long	0x3f
	.uleb128 0x26
	.long	.LASF158
	.byte	0x1
	.value	0x31b
	.long	0x3f
	.uleb128 0x26
	.long	.LASF159
	.byte	0x1
	.value	0x31c
	.long	0x3f
	.uleb128 0x26
	.long	.LASF160
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.uleb128 0x26
	.long	.LASF161
	.byte	0x1
	.value	0x31e
	.long	0x3f
	.uleb128 0x32
	.long	0x1264
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.uleb128 0x32
	.long	0x124b
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x31d
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x129a
	.uleb128 0x26
	.long	.LASF162
	.byte	0x1
	.value	0x324
	.long	0x3f
	.uleb128 0x26
	.long	.LASF163
	.byte	0x1
	.value	0x324
	.long	0x3f
	.uleb128 0x33
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x326
	.long	0x38
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x326
	.long	0x38
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x26
	.long	.LASF164
	.byte	0x1
	.value	0x333
	.long	0x7f1
	.uleb128 0x33
	.uleb128 0x26
	.long	.LASF165
	.byte	0x1
	.value	0x336
	.long	0x3f
	.uleb128 0x26
	.long	.LASF163
	.byte	0x1
	.value	0x336
	.long	0x3f
	.uleb128 0x33
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x338
	.long	0x38
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x338
	.long	0x38
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x12ec
	.long	0x2ec
	.uleb128 0x34
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x31
	.long	0x131f
	.long	.LASF166
	.byte	0x3
	.value	0x39c
	.byte	0x1
	.byte	0x3
	.uleb128 0x2b
	.long	.LASF97
	.byte	0x3
	.value	0x39a
	.long	0x30d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x3
	.value	0x39b
	.long	0x131f
	.uleb128 0x2a
	.string	"len"
	.byte	0x3
	.value	0x39b
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2ec
	.uleb128 0x31
	.long	0x1358
	.long	.LASF167
	.byte	0x3
	.value	0x3a1
	.byte	0x1
	.byte	0x3
	.uleb128 0x2b
	.long	.LASF97
	.byte	0x3
	.value	0x39f
	.long	0x30d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x3
	.value	0x3a0
	.long	0x37d
	.uleb128 0x2a
	.string	"len"
	.byte	0x3
	.value	0x3a0
	.long	0x3f
	.byte	0x0
	.uleb128 0x1b
	.long	0x139e
	.long	.LASF168
	.byte	0x1
	.value	0x37f
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x37e
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x1
	.value	0x37e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x380
	.long	0x8e4
	.byte	0x0
	.uleb128 0x1b
	.long	0x13e4
	.long	.LASF170
	.byte	0x1
	.value	0x386
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x385
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x1
	.value	0x385
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x387
	.long	0x8e4
	.byte	0x0
	.uleb128 0x1b
	.long	0x142a
	.long	.LASF171
	.byte	0x1
	.value	0x38d
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x38c
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x1
	.value	0x38c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x38e
	.long	0x8e4
	.byte	0x0
	.uleb128 0x1b
	.long	0x14a6
	.long	.LASF173
	.byte	0x1
	.value	0x395
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x393
	.long	0x5cb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x1
	.value	0x393
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x394
	.long	0x2f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x394
	.long	0x2f7
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.long	.LASF99
	.byte	0x1
	.value	0x394
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x396
	.long	0x14a6
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x397
	.long	0x8e4
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x837
	.uleb128 0x1b
	.long	0x167e
	.long	.LASF175
	.byte	0x1
	.value	0x3a7
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x3a6
	.long	0x480
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x3a6
	.long	0xa1
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x3a8
	.long	0x8e4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x3a9
	.long	0x2d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x35
	.long	0x15cd
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x3ac
	.long	0x9a7
	.uleb128 0x2d
	.long	0x1540
	.long	0x167e
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x1564
	.long	0x167e
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x1588
	.long	0x167e
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x15ac
	.long	0x167e
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x22
	.long	0x167e
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x15f1
	.long	0x167e
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x1615
	.long	0x167e
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x1639
	.long	0x167e
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x2d
	.long	0x165d
	.long	0x167e
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.uleb128 0x22
	.long	0x167e
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x28
	.long	0x168b
	.uleb128 0x28
	.long	0x1694
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x169f
	.long	.LASF176
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"f"
	.byte	0x4
	.byte	0x1e
	.long	0x480
	.uleb128 0x25
	.string	"pv"
	.byte	0x4
	.byte	0x1e
	.long	0x169f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x16a5
	.uleb128 0xd
	.long	0x2f7
	.uleb128 0x2c
	.long	0x1898
	.long	.LASF177
	.byte	0x1
	.value	0x3bb
	.byte	0x1
	.long	0x3f
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x3ba
	.long	0x480
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x3ba
	.long	0xa1
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x1
	.value	0x3ba
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"ctl"
	.byte	0x1
	.value	0x3bc
	.long	0x2f7
	.uleb128 0x26
	.long	.LASF115
	.byte	0x1
	.value	0x3bc
	.long	0x2f7
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x3bd
	.long	0x8e4
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x3be
	.long	0x2d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.long	0x17e7
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x3c4
	.long	0x9a7
	.uleb128 0x2d
	.long	0x175a
	.long	0x1898
	.quad	.LBB88
	.quad	.LBE88
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x177e
	.long	0x1898
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x17a2
	.long	0x1898
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x17c6
	.long	0x1898
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x22
	.long	0x1898
	.quad	.LBB108
	.quad	.LBE108
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x180b
	.long	0x1898
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x182f
	.long	0x1898
	.quad	.LBB118
	.quad	.LBE118
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x1853
	.long	0x1898
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x2d
	.long	0x1877
	.long	0x1898
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.uleb128 0x22
	.long	0x1898
	.quad	.LBB136
	.quad	.LBE136
	.uleb128 0x28
	.long	0x18a5
	.uleb128 0x28
	.long	0x18ae
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x18b9
	.long	.LASF179
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"f"
	.byte	0x4
	.byte	0x32
	.long	0x480
	.uleb128 0x25
	.string	"pv"
	.byte	0x4
	.byte	0x32
	.long	0x8ea
	.byte	0x0
	.uleb128 0x1b
	.long	0x18f1
	.long	.LASF180
	.byte	0x1
	.value	0x3e5
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x3e4
	.long	0xa1
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x3e6
	.long	0x8e4
	.byte	0x0
	.uleb128 0x36
	.long	0x1954
	.byte	0x1
	.long	.LASF189
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.long	0x3f
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.string	"bus"
	.byte	0x1
	.value	0x3ea
	.long	0x687
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF91
	.byte	0x1
	.value	0x3ea
	.long	0x594
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"d"
	.byte	0x1
	.value	0x3ec
	.long	0x14a6
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x3ed
	.long	0x8e4
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.value	0x3ee
	.long	0x131f
	.byte	0x0
	.uleb128 0x37
	.long	.LASF181
	.byte	0xd
	.byte	0x91
	.long	0x2c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF182
	.byte	0xd
	.byte	0x92
	.long	0x2c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.long	.LASF183
	.byte	0x3
	.value	0x376
	.long	0x131f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x198c
	.long	0x198c
	.uleb128 0xc
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.long	0x46
	.uleb128 0x39
	.long	.LASF184
	.byte	0x1
	.byte	0x4b
	.long	0x19a6
	.byte	0x9
	.byte	0x3
	.quad	dac1_samplerate
	.uleb128 0xd
	.long	0x197c
	.uleb128 0xb
	.long	0x19bb
	.long	0xbac
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x1
	.value	0x132
	.long	0x19d1
	.byte	0x9
	.byte	0x3
	.quad	es1370_chan_bits
	.uleb128 0xd
	.long	0x19ab
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x19
	.uleb128 0x16
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
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x19d7
	.long	0x18f1
	.string	"es1370_init"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB142-.Ltext0
	.quad	.LBE142-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF115:
	.string	"sctl"
.LASF9:
	.string	"size_t"
.LASF88:
	.string	"le_next"
.LASF138:
	.string	"new_pclkdiv"
.LASF177:
	.string	"es1370_load"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF167:
	.string	"cpu_physical_memory_write"
.LASF33:
	.string	"_lock"
.LASF153:
	.string	"max_bytes"
.LASF187:
	.string	"/home/remco/Projects/Argos/src/hw/es1370.c"
.LASF140:
	.string	"old_fmt"
.LASF22:
	.string	"_IO_save_base"
.LASF174:
	.string	"region_num"
.LASF104:
	.string	"scount"
.LASF122:
	.string	"sctl_inten"
.LASF30:
	.string	"_cur_column"
.LASF121:
	.string	"sctl_pause"
.LASF151:
	.string	"es1370_run_channel"
.LASF40:
	.string	"_mode"
.LASF94:
	.string	"PCIConfigReadFunc"
.LASF164:
	.string	"voice"
.LASF78:
	.string	"AUD_FMT_S16"
.LASF124:
	.string	"sctl_sh_fmt"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF59:
	.string	"netidx"
.LASF143:
	.string	"opaque"
.LASF189:
	.string	"es1370_init"
.LASF102:
	.string	"shift"
.LASF4:
	.string	"short unsigned int"
.LASF72:
	.string	"irq_state"
.LASF178:
	.string	"version_id"
.LASF161:
	.string	"index"
.LASF74:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF142:
	.string	"es1370_writeb"
.LASF43:
	.string	"_IO_FILE"
.LASF146:
	.string	"es1370_writew"
.LASF6:
	.string	"unsigned char"
.LASF60:
	.string	"argos_rtag_t"
.LASF76:
	.string	"AUD_FMT_S8"
.LASF57:
	.string	"argos_rtag"
.LASF91:
	.string	"audio"
.LASF101:
	.string	"chan"
.LASF116:
	.string	"PCIES1370State"
.LASF66:
	.string	"devfn"
.LASF134:
	.string	"old_freq"
.LASF42:
	.string	"_IO_lock_t"
.LASF77:
	.string	"AUD_FMT_U16"
.LASF62:
	.string	"QEMUFile"
.LASF108:
	.string	"pci_dev"
.LASF65:
	.string	"config"
.LASF55:
	.string	"argos_paddr_t"
.LASF113:
	.string	"mempage"
.LASF75:
	.string	"AUD_FMT_U8"
.LASF14:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"double"
.LASF179:
	.string	"qemu_get_be32s"
.LASF84:
	.string	"endianness"
.LASF47:
	.string	"_pos"
.LASF181:
	.string	"stdin"
.LASF100:
	.string	"map_func"
.LASF64:
	.string	"PCIDevice"
.LASF93:
	.string	"PCIConfigWriteFunc"
.LASF25:
	.string	"_markers"
.LASF123:
	.string	"sctl_fmt"
.LASF135:
	.string	"new_freq"
.LASF90:
	.string	"QEMUSoundCard"
.LASF105:
	.string	"frame_addr"
.LASF158:
	.string	"left"
.LASF110:
	.string	"dac_voice"
.LASF41:
	.string	"_unused2"
.LASF159:
	.string	"transfered"
.LASF114:
	.string	"codec"
.LASF112:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF139:
	.string	"es1370_update_voices"
.LASF16:
	.string	"_IO_read_base"
.LASF149:
	.string	"es1370_readw"
.LASF166:
	.string	"cpu_physical_memory_read"
.LASF175:
	.string	"es1370_save"
.LASF136:
	.string	"es1370_dac2_and_adc_calc_freq"
.LASF29:
	.string	"_old_offset"
.LASF184:
	.string	"dac1_samplerate"
.LASF3:
	.string	"long long int"
.LASF152:
	.string	"free_or_avail"
.LASF156:
	.string	"tmpbuf"
.LASF19:
	.string	"_IO_write_end"
.LASF170:
	.string	"es1370_dac2_callback"
.LASF128:
	.string	"es1370_update_status"
.LASF188:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF86:
	.string	"SWVoiceOut"
.LASF165:
	.string	"copied"
.LASF97:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF144:
	.string	"mask"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF186:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF96:
	.string	"PCIIORegion"
.LASF129:
	.string	"es1370_reset"
.LASF56:
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
.LASF111:
	.string	"adc_voice"
.LASF71:
	.string	"irq_index"
.LASF117:
	.string	"es1370"
.LASF13:
	.string	"_flags"
.LASF80:
	.string	"AUD_FMT_S32"
.LASF79:
	.string	"AUD_FMT_U32"
.LASF185:
	.string	"es1370_chan_bits"
.LASF92:
	.string	"entries"
.LASF70:
	.string	"config_write"
.LASF69:
	.string	"config_read"
.LASF99:
	.string	"type"
.LASF51:
	.string	"target_phys_addr_t"
.LASF83:
	.string	"nchannels"
.LASF54:
	.string	"long double"
.LASF145:
	.string	"es1370_fixup"
.LASF147:
	.string	"es1370_writel"
.LASF34:
	.string	"_offset"
.LASF120:
	.string	"stat_int"
.LASF98:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF133:
	.string	"es1370_dac1_calc_freq"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF157:
	.string	"csc_bytes"
.LASF63:
	.string	"PCIBus"
.LASF87:
	.string	"SWVoiceIn"
.LASF107:
	.string	"ES1370State"
.LASF106:
	.string	"frame_cnt"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF81:
	.string	"audfmt_e"
.LASF11:
	.string	"__off64_t"
.LASF126:
	.string	"calc_freq"
.LASF85:
	.string	"audsettings_t"
.LASF125:
	.string	"sctl_loopsel"
.LASF21:
	.string	"_IO_buf_end"
.LASF168:
	.string	"es1370_dac1_callback"
.LASF148:
	.string	"es1370_readb"
.LASF141:
	.string	"new_fmt"
.LASF67:
	.string	"name"
.LASF8:
	.string	"short int"
.LASF50:
	.string	"uint64_t"
.LASF183:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF127:
	.string	"new_status"
.LASF173:
	.string	"es1370_map"
.LASF163:
	.string	"to_copy"
.LASF15:
	.string	"_IO_read_end"
.LASF131:
	.string	"qemu_irq_lower"
.LASF89:
	.string	"le_prev"
.LASF137:
	.string	"old_pclkdiv"
.LASF132:
	.string	"es1370_maybe_lower_irq"
.LASF68:
	.string	"io_regions"
.LASF109:
	.string	"card"
.LASF49:
	.string	"uint32_t"
.LASF150:
	.string	"es1370_readl"
.LASF27:
	.string	"_fileno"
.LASF130:
	.string	"level"
.LASF155:
	.string	"loop_sel"
.LASF61:
	.string	"AudioState"
.LASF95:
	.string	"PCIMapIORegionFunc"
.LASF169:
	.string	"free"
.LASF82:
	.string	"freq"
.LASF52:
	.string	"float"
.LASF182:
	.string	"stdout"
.LASF180:
	.string	"es1370_on_reset"
.LASF118:
	.string	"chan_bits"
.LASF18:
	.string	"_IO_write_ptr"
.LASF154:
	.string	"es1370_transfer_audio"
.LASF162:
	.string	"acquired"
.LASF160:
	.string	"temp"
.LASF119:
	.string	"ctl_en"
.LASF103:
	.string	"leftover"
.LASF58:
	.string	"origin"
.LASF172:
	.string	"avail"
.LASF176:
	.string	"qemu_put_be32s"
.LASF171:
	.string	"es1370_adc_callback"
.LASF73:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
