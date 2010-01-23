	.file	"sb16.c"
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
	.type	conf, @object
	.size	conf, 24
conf:
	.long	5
	.long	4
	.long	5
	.long	1
	.long	5
	.long	544
	.section	.rodata
	.align 32
	.type	e3, @object
	.size	e3, 45
e3:
	.string	"COPYRIGHT (C) CREATIVE TECHNOLOGY LTD, 1992."
	.text
	.p2align 4,,15
	.type	speaker, @function
speaker:
.LFB197:
	.file 1 "/home/remco/Projects/Argos/src/hw/sb16.c"
	.loc 1 169 0
	.loc 1 170 0
	movl	%esi, 104(%rdi)
	ret
.LFE197:
	.size	speaker, .-speaker
	.p2align 4,,15
	.type	control, @function
control:
.LFB198:
	.loc 1 175 0
	pushq	%rbx
.LCFI0:
	.loc 1 176 0
	movl	116(%rdi), %eax
	.loc 1 175 0
	movq	%rdi, %rbx
	.loc 1 176 0
	testl	%eax, %eax
	je	.L3
	.loc 1 181 0
	testl	%esi, %esi
	.loc 1 176 0
	movl	48(%rdi), %edi
	.loc 1 177 0
	movl	%esi, 476(%rbx)
	.loc 1 181 0
	je	.L5
.L9:
	.loc 1 182 0
	call	DMA_hold_DREQ
	.loc 1 183 0
	movq	496(%rbx), %rdi
	movl	$1, %esi
	.loc 1 189 0
	popq	%rbx
	.loc 1 187 0
	jmp	AUD_set_active_out
	.p2align 4,,7
.L3:
	.loc 1 181 0
	testl	%esi, %esi
	.loc 1 176 0
	movl	44(%rdi), %edi
	.loc 1 177 0
	movl	%esi, 476(%rbx)
	.loc 1 181 0
	jne	.L9
.L5:
	.loc 1 186 0
	call	DMA_release_DREQ
	.loc 1 187 0
	movq	496(%rbx), %rdi
	xorl	%esi, %esi
	.loc 1 189 0
	popq	%rbx
	.loc 1 187 0
	jmp	AUD_set_active_out
.LFE198:
	.size	control, .-control
	.p2align 4,,15
	.type	aux_timer, @function
aux_timer:
.LFB199:
	.loc 1 192 0
.LBB2:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 13 0
	movslq	40(%rdi),%rdx
	movq	32(%rdi), %rax
.LBB3:
	.loc 2 14 0
	movl	$1, %esi
.LBE3:
.LBE2:
	.loc 1 194 0
	movl	$1, 124(%rdi)
.LBB4:
	.loc 2 13 0
	movq	(%rax,%rdx,8), %rdi
.LBB5:
	.loc 2 14 0
	jmp	qemu_set_irq
.LBE5:
.LBE4:
.LFE199:
	.size	aux_timer, .-aux_timer
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sb16"
	.text
	.p2align 4,,15
	.type	continue_dma8, @function
continue_dma8:
.LFB200:
	.loc 1 202 0
	pushq	%rbx
.LCFI1:
	movq	%rdi, %rbx
	subq	$16, %rsp
.LCFI2:
	.loc 1 203 0
	movl	96(%rdi), %eax
	testl	%eax, %eax
	jle	.L13
.LBB6:
	.loc 1 206 0
	movl	$0, 488(%rdi)
	.loc 1 208 0
	movl	%eax, (%rsp)
	.loc 1 209 0
	movl	$1, %eax
	movl	68(%rdi), %ecx
	.loc 1 213 0
	movq	%rsp, %r9
	movl	$SB_audio_callback, %r8d
	movl	$.LC0, %edx
	.loc 1 209 0
	sall	%cl, %eax
	.loc 1 213 0
	movq	%rdi, %rcx
	.loc 1 209 0
	movl	%eax, 4(%rsp)
	.loc 1 210 0
	movl	80(%rdi), %eax
	.loc 1 211 0
	movl	$0, 12(%rsp)
	.loc 1 210 0
	movl	%eax, 8(%rsp)
	.loc 1 213 0
	movq	496(%rdi), %rsi
	call	AUD_open_out
	movq	%rax, 496(%rbx)
.L13:
.LBE6:
	.loc 1 223 0
	movq	%rbx, %rdi
	movl	$1, %esi
	call	control
	addq	$16, %rsp
	popq	%rbx
	ret
.LFE200:
	.size	continue_dma8, .-continue_dma8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"warning: misaligned block size %d, alignment %d\n"
	.text
	.p2align 4,,15
	.type	dma_cmd8, @function
dma_cmd8:
.LFB201:
	.loc 1 227 0
	pushq	%rbx
.LCFI3:
	.loc 1 227 0
	movq	%rdi, %rbx
	.loc 1 228 0
	movl	$0, 80(%rdi)
	.loc 1 229 0
	movl	$0, 116(%rdi)
	.loc 1 230 0
	movl	$8, 76(%rdi)
	.loc 1 227 0
	movl	%edx, %r8d
	.loc 1 231 0
	movl	$0, 72(%rdi)
	.loc 1 232 0
	movzbl	530(%rdi), %edi
	.loc 1 233 0
	movl	100(%rbx), %edx
	.loc 1 232 0
	shrl	%edi
	andl	$1, %edi
	.loc 1 233 0
	cmpl	$-1, %edx
	.loc 1 232 0
	movl	%edi, 68(%rbx)
	.loc 1 233 0
	je	.L22
.LBB7:
	.loc 1 238 0
	movl	$256, %r9d
	subl	%edx, %r9d
	.loc 1 239 0
	movl	%r9d, %ecx
	shrl	$31, %ecx
	leal	(%r9,%rcx), %edx
	sarl	%edx
	leal	1000000(%rdx), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%eax, 96(%rbx)
.L17:
.LBE7:
	.loc 1 242 0
	cmpl	$-1, %r8d
	je	.L18
	.loc 1 243 0
	movl	%r8d, %edx
	movl	%edi, %ecx
	sall	%cl, %edx
.L21:
	.loc 1 256 0
	movl	%edi, %ecx
	.loc 1 260 0
	andl	$1, %esi
	.loc 1 253 0
	movl	%edx, 88(%rbx)
	.loc 1 256 0
	sarl	%cl, %eax
	.loc 1 260 0
	movl	%esi, 84(%rbx)
	.loc 1 261 0
	movl	$1, %esi
	sall	%cl, %esi
	.loc 1 256 0
	movl	%eax, 96(%rbx)
	.loc 1 258 0
	sall	%cl, %eax
	movl	%eax, 480(%rbx)
	.loc 1 261 0
	leal	-1(%rsi), %eax
	.loc 1 257 0
	movl	%edx, 472(%rbx)
	.loc 1 263 0
	testl	%eax, %edx
	.loc 1 261 0
	movl	%eax, 484(%rbx)
	.loc 1 263 0
	jne	.L23
	.loc 1 273 0
	movq	%rbx, %rdi
	call	continue_dma8
	.loc 1 274 0
	movq	%rbx, %rdi
	movl	$1, %esi
	popq	%rbx
	jmp	speaker
	.p2align 4,,7
.L23:
	.loc 1 264 0
	movl	%esi, %ecx
	movl	$.LC0, %edi
	movl	$.LC1, %esi
	xorl	%eax, %eax
	call	AUD_log
	.loc 1 273 0
	movq	%rbx, %rdi
	call	continue_dma8
	.loc 1 274 0
	movq	%rbx, %rdi
	movl	$1, %esi
	popq	%rbx
	jmp	speaker
	.p2align 4,,7
.L18:
	.loc 1 253 0
	movl	%edi, %edx
	notl	%edx
	andl	88(%rbx), %edx
	jmp	.L21
	.p2align 4,,7
.L22:
	.loc 1 234 0
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jg	.L17
	movl	$11025, %eax
	.loc 1 235 0
	movl	$11025, 96(%rbx)
	jmp	.L17
.LFE201:
	.size	dma_cmd8, .-dma_cmd8
	.section	.rodata.str1.1
.LC2:
	.string	"buffer underflow\n"
	.text
	.p2align 4,,15
	.type	dsp_get_lohi, @function
dsp_get_lohi:
.LFB206:
	.loc 1 645 0
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI6:
.LBB8:
.LBB9:
	.loc 1 382 0
	movl	60(%rdi), %eax
	testl	%eax, %eax
	je	.L25
	.loc 1 383 0
	leal	-1(%rax), %edx
	movslq	%edx,%rax
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	.loc 1 382 0
	testl	%edx, %edx
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 383 0
	movl	%edx, 60(%rdi)
	movzbl	404(%rax,%rdi), %eax
.LBE13:
.LBE12:
	.loc 1 381 0
	movl	%eax, %ebp
.LBB14:
.LBB15:
	.loc 1 382 0
	je	.L28
.L31:
	.loc 1 383 0
	leal	-1(%rdx), %eax
	movl	%eax, 60(%rbx)
	cltq
	movzbl	404(%rax,%rbx), %edx
.LBE15:
.LBE14:
	.loc 1 649 0
	addq	$8, %rsp
	.loc 1 648 0
	movl	%ebp, %eax
	.loc 1 649 0
	popq	%rbx
	popq	%rbp
	.loc 1 648 0
	sall	$8, %eax
	orl	%edx, %eax
	movzwl	%ax, %eax
	.loc 1 649 0
	ret
	.p2align 4,,7
.L25:
.LBB16:
.LBB17:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	movl	60(%rbx), %edx
	xorl	%eax, %eax
.LBE17:
.LBE16:
	.loc 1 381 0
	movl	%eax, %ebp
.LBB18:
.LBB19:
	.loc 1 382 0
	testl	%edx, %edx
	jne	.L31
	.p2align 4,,7
.L28:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
.LBE19:
.LBE18:
	.loc 1 649 0
	addq	$8, %rsp
	.loc 1 648 0
	movl	%ebp, %eax
.LBB20:
.LBB21:
	.loc 1 386 0
	xorl	%edx, %edx
.LBE21:
.LBE20:
	.loc 1 649 0
	popq	%rbx
	popq	%rbp
	.loc 1 648 0
	sall	$8, %eax
	orl	%edx, %eax
	movzwl	%ax, %eax
	.loc 1 649 0
	ret
.LFE206:
	.size	dsp_get_lohi, .-dsp_get_lohi
	.p2align 4,,15
	.type	reset, @function
reset:
.LFB210:
	.loc 1 862 0
	pushq	%rbx
.LCFI7:
	movq	%rdi, %rbx
.LBB22:
.LBB23:
	.loc 2 19 0
	xorl	%esi, %esi
.LBE23:
.LBE22:
	.loc 1 862 0
	subq	$16, %rsp
.LCFI8:
.LBB24:
	.loc 2 18 0
	movslq	40(%rdi),%rax
	movq	32(%rdi), %rdx
	movq	(%rdx,%rax,8), %rdi
.LBB25:
	.loc 2 19 0
	call	qemu_set_irq
.LBE25:
.LBE24:
	.loc 1 864 0
	movl	84(%rbx), %edx
	testl	%edx, %edx
	jne	.L40
.L34:
	.loc 1 882 0
	movq	%rbx, %rdi
	.loc 1 869 0
	movb	$0, 646(%rbx)
	.loc 1 870 0
	movl	$0, 84(%rbx)
	.loc 1 871 0
	movl	$0, 60(%rbx)
	.loc 1 873 0
	movl	$0, 472(%rbx)
	.loc 1 882 0
	xorl	%esi, %esi
	.loc 1 874 0
	movl	$0, 108(%rbx)
	.loc 1 875 0
	movl	$-1, 88(%rbx)
	.loc 1 876 0
	movl	$0, 468(%rbx)
	.loc 1 877 0
	movl	$0, 120(%rbx)
	.loc 1 878 0
	movl	$0, 128(%rbx)
	.loc 1 879 0
	movl	$-1, 112(%rbx)
.LBB26:
.LBB27:
	.loc 1 376 0
	movb	$-86, 414(%rbx)
	movl	$1, 64(%rbx)
.LBE27:
.LBE26:
	.loc 1 882 0
	call	speaker
	.loc 1 883 0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	control
.LBB28:
.LBB29:
	.loc 1 848 0
	movq	496(%rbx), %rsi
	.loc 1 838 0
	movl	$11025, 96(%rbx)
	.loc 1 848 0
	movq	%rsp, %r9
	.loc 1 839 0
	movl	$0, 72(%rbx)
	.loc 1 840 0
	movl	$8, 76(%rbx)
	.loc 1 848 0
	movq	%rbx, %rcx
	.loc 1 841 0
	movl	$0, 68(%rbx)
	.loc 1 848 0
	movq	%rbx, %rdi
	movl	$SB_audio_callback, %r8d
	movl	$.LC0, %edx
	.loc 1 843 0
	movl	$11025, (%rsp)
	.loc 1 844 0
	movl	$1, 4(%rsp)
	.loc 1 845 0
	movl	$0, 8(%rsp)
	.loc 1 846 0
	movl	$0, 12(%rsp)
	.loc 1 848 0
	call	AUD_open_out
	movq	%rax, 496(%rbx)
.LBE29:
.LBE28:
	addq	$16, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L40:
.LBB30:
	.loc 2 13 0
	movslq	40(%rbx),%rdx
	movq	32(%rbx), %rax
.LBB31:
	.loc 2 14 0
	movl	$1, %esi
.LBE31:
	.loc 2 13 0
	movq	(%rax,%rdx,8), %rdi
.LBB32:
	.loc 2 14 0
	call	qemu_set_irq
.LBE32:
.LBE30:
.LBB33:
	.loc 2 18 0
	movslq	40(%rbx),%rdx
	movq	32(%rbx), %rax
.LBB34:
	.loc 2 19 0
	xorl	%esi, %esi
.LBE34:
	.loc 2 18 0
	movq	(%rax,%rdx,8), %rdi
.LBB35:
	.loc 2 19 0
	call	qemu_set_irq
	jmp	.L34
.LBE35:
.LBE33:
.LFE210:
	.size	reset, .-reset
	.section	.rodata.str1.1
.LC14:
	.string	"Unrecognized command %#x\n"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"ADC not yet supported (command %#x)\n"
	.align 8
.LC15:
	.string	"warning: command %#x,%d is not truly understood yet\n"
	.align 8
.LC12:
	.string	"0x7d - Autio-Initialize DMA DAC, 2.6-bit ADPCM Reference\n"
	.section	.rodata.str1.1
.LC11:
	.string	"not implemented\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"0x35 - MIDI command not implemented\n"
	.align 8
.LC8:
	.string	"0x74 - DMA DAC, 2.6-bit ADPCM not implemented\n"
	.align 8
.LC7:
	.string	"0x74 - DMA DAC, 4-bit ADPCM Reference not implemented\n"
	.align 8
.LC6:
	.string	"0x75 - DMA DAC, 4-bit ADPCM not implemented\n"
	.align 8
.LC10:
	.string	"0x7d - Autio-Initialize DMA DAC, 4-bit ADPCM Reference\n"
	.align 8
.LC9:
	.string	"0x74 - DMA DAC, 2.6-bit ADPCM Reference not implemented\n"
	.align 8
.LC13:
	.string	"Attempt to probe for ESS (0xe7)?\n"
	.section	.rodata.str1.1
.LC4:
	.string	"%#x wrong bits\n"
.LC16:
	.string	"in data overrun\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"complete: unrecognized command %#x\n"
	.align 8
.LC17:
	.string	"ADC params cmd = %#x d0 = %d, d1 = %d, d2 = %d\n"
	.section	.rodata.str1.1
.LC18:
	.string	"cmd 0x10 d0=%#x\n"
	.text
	.p2align 4,,15
	.type	dsp_write, @function
dsp_write:
.LFB211:
	.loc 1 888 0
	movq	%rbp, -24(%rsp)
.LCFI9:
	movq	%rbx, -32(%rsp)
.LCFI10:
	movq	%rdi, %rbp
	movq	%r12, -16(%rsp)
.LCFI11:
	movq	%r13, -8(%rsp)
.LCFI12:
	subq	$56, %rsp
.LCFI13:
	.loc 1 892 0
	subl	52(%rdi), %esi
	.loc 1 895 0
	cmpl	$6, %esi
	je	.L43
	cmpl	$12, %esi
	je	.L60
.L41:
	.loc 1 970 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L43:
	.loc 1 897 0
	cmpl	$3, %edx
	je	.L51
	ja	.L58
	testl	%edx, %edx
	.p2align 4,,7
	je	.L45
	cmpl	$1, %edx
	.p2align 4,,7
	jne	.L57
.L51:
	.loc 1 914 0
	movl	$1, 128(%rbp)
	.p2align 4,,2
	jmp	.L41
	.p2align 4,,7
.L60:
	.loc 1 941 0
	movl	108(%rdi), %ecx
	testl	%ecx, %ecx
	je	.L312
	.loc 1 950 0
	movl	60(%rdi), %esi
	cmpl	$10, %esi
	je	.L313
	.loc 1 954 0
	movslq	%esi,%rax
	movb	%dl, 404(%rax,%rdi)
	leal	1(%rsi), %edi
	.loc 1 955 0
	cmpl	%ecx, %edi
	je	.L314
	movl	%edi, 60(%rbp)
	jmp	.L41
	.p2align 4,,7
.L312:
.LBB36:
	.loc 1 392 0
	movl	%edx, %r12d
.LBB37:
	.loc 1 395 0
	leal	80(%r12), %eax
	cmpb	$31, %al
	ja	.L62
	.loc 1 396 0
	movzbl	%dl, %ebx
	testb	$8, %bl
	jne	.L315
.L63:
	.loc 1 400 0
	movl	%r12d, %eax
	shrb	$4, %al
	movzbl	%al, %eax
	subl	$11, %eax
	cmpl	$1, %eax
	ja	.L316
.L64:
	.loc 1 407 0
	movl	$3, 108(%rbp)
.L68:
.L150:
	.loc 1 624 0
	movl	108(%rbp), %eax
	.loc 1 629 0
	testl	%eax, %eax
	je	.L186
	.loc 1 633 0
	movzbl	%r12b, %eax
	movl	%eax, 112(%rbp)
	jmp	.L41
	.p2align 4,,7
.L58:
.LBE37:
.LBE36:
	.loc 1 897 0
	cmpl	$184, %edx
	je	.L53
	.p2align 4,,5
	ja	.L59
	cmpl	$57, %edx
	.p2align 4,,7
	jne	.L57
.LBB38:
.LBB39:
	.loc 1 375 0
	movl	64(%rdi), %edx
	cmpl	$49, %edx
	.p2align 4,,5
	ja	.L56
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$56, 414(%rax,%rdi)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rdi)
.L56:
.LBE39:
.LBE38:
	.loc 1 927 0
	movq	%rbp, %rdi
	call	reset
	.loc 1 928 0
	movl	$57, 128(%rbp)
	jmp	.L41
.L62:
.LBB40:
.LBB41:
	.loc 1 412 0
	movzbl	%dl, %eax
	subl	$3, %eax
	cmpl	$249, %eax
	ja	.L147
	mov	%eax, %eax
	jmp	*.L148(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L148:
	.quad	.L70
	.quad	.L140
	.quad	.L305
	.quad	.L147
	.quad	.L147
	.quad	.L294
	.quad	.L78
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L305
	.quad	.L140
	.quad	.L140
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L83
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L84
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L85
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L88
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L89
	.quad	.L90
	.quad	.L91
	.quad	.L147
	.quad	.L147
	.quad	.L92
	.quad	.L147
	.quad	.L295
	.quad	.L103
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.quad	.L100
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L101
	.quad	.L147
	.quad	.L102
	.quad	.L103
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L105
	.quad	.L105
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L110
	.quad	.L107
	.quad	.L147
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.quad	.L147
	.quad	.L147
	.quad	.L113
	.quad	.L113
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L128
	.quad	.L115
	.quad	.L140
	.quad	.L121
	.quad	.L128
	.quad	.L147
	.quad	.L147
	.quad	.L129
	.quad	.L130
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L134
	.quad	.L134
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L147
	.quad	.L140
	.quad	.L144
	.quad	.L147
	.quad	.L144
	.text
.L45:
.LBE41:
.LBE40:
	.loc 1 899 0
	cmpl	$1, 128(%rdi)
	je	.L317
.L52:
	.loc 1 918 0
	movl	$0, 128(%rbp)
	jmp	.L41
.L59:
	.loc 1 897 0
	cmpl	$198, %edx
	je	.L52
.L57:
	.loc 1 932 0
	movl	%edx, 128(%rbp)
	jmp	.L41
.L147:
	movl	$0, 108(%rbp)
.LBB42:
.LBB43:
	.loc 1 619 0
	movzbl	%r12b, %edx
	movl	$.LC14, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L68
.L315:
	.loc 1 397 0
	movl	%ebx, %edx
	movl	$.LC3, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L63
.L317:
.LBE43:
.LBE42:
	.loc 1 906 0
	call	reset
	.p2align 4,,8
	jmp	.L52
.L140:
.LBB44:
.LBB45:
	.loc 1 607 0
	movl	$1, 108(%rdi)
.L73:
	.loc 1 638 0
	movl	108(%rbp), %ecx
	movzbl	%r12b, %edx
	movl	$.LC15, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L68
.L89:
	.loc 1 463 0
	movl	$-1, 96(%rdi)
	.loc 1 464 0
	movl	$-1, 100(%rdi)
.L128:
	.loc 1 588 0
	movl	$1, 108(%rbp)
	jmp	.L68
.L90:
	.loc 1 469 0
	movl	$-1, 96(%rdi)
	.loc 1 470 0
	movl	$-1, 100(%rdi)
.L103:
	.loc 1 524 0
	movl	$2, 108(%rbp)
	jmp	.L68
.L91:
	.loc 1 475 0
	movl	$-1, 96(%rdi)
	.loc 1 476 0
	movl	$-1, 100(%rdi)
.L305:
	.loc 1 477 0
	movl	$2, 108(%rbp)
	jmp	.L73
.L144:
.LBB46:
.LBB47:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L73
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$0, 414(%rax,%rdi)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L73
.L113:
	movl	$0, 108(%rdi)
.LBE47:
.LBE46:
	.loc 1 563 0
	movl	$0, 84(%rdi)
	jmp	.L68
.L110:
	movl	$0, 108(%rdi)
	.loc 1 551 0
	xorl	%esi, %esi
.L299:
	.loc 1 555 0
	movq	%rbp, %rdi
	call	control
	jmp	.L68
.L115:
.LBB48:
.LBB49:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
.LBE49:
	.loc 1 373 0
	movl	56(%rdi), %ecx
.LBB50:
	.loc 1 375 0
	cmpl	$49, %edx
	ja	.L117
	.loc 1 376 0
	movslq	%edx,%rax
	movb	%cl, 414(%rax,%rdi)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rdi)
	movl	%eax, %edx
.L117:
.LBE50:
.LBE48:
.LBB51:
	.loc 1 373 0
	sarl	$8, %ecx
	jmp	.L311
.L111:
.LBE51:
	.loc 1 555 0
	movl	$1, %esi
	movl	$0, 108(%rdi)
	jmp	.L299
.L102:
	movl	$0, 108(%rdi)
	.loc 1 517 0
	movl	$.LC12, %esi
.L310:
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	.loc 1 520 0
	movl	$.LC11, %esi
.L301:
	.loc 1 592 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L68
.L70:
.LBB52:
.LBB53:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L73
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$16, 414(%rax,%rdi)
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L73
.L78:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L73
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$-8, 414(%rax,%rdi)
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L73
.L294:
	movl	$0, 108(%rdi)
	jmp	.L73
.L88:
.LBE59:
.LBE58:
	.loc 1 459 0
	movl	$.LC5, %esi
	movl	$0, 108(%rdi)
	jmp	.L301
.L85:
.LBB60:
.LBB61:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L73
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$-1, 414(%rax,%rdi)
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L73
.L84:
	movl	$0, 108(%rdi)
.LBE63:
.LBE62:
	.loc 1 451 0
	movl	$-1, %edx
	movl	$1, %esi
.L302:
	.loc 1 529 0
	movq	%rbp, %rdi
	call	dma_cmd8
	jmp	.L68
.L83:
	.loc 1 446 0
	movl	$2, 108(%rdi)
	.loc 1 447 0
	movl	$0, 88(%rdi)
	jmp	.L68
.L99:
	.loc 1 503 0
	movl	$.LC8, %esi
	.loc 1 502 0
	movl	$2, 108(%rdi)
	jmp	.L301
.L98:
	.loc 1 498 0
	movl	$.LC7, %esi
	.loc 1 497 0
	movl	$2, 108(%rdi)
	jmp	.L301
.L97:
	.loc 1 493 0
	movl	$.LC6, %esi
	.loc 1 492 0
	movl	$2, 108(%rdi)
	jmp	.L301
.L295:
	movl	$0, 108(%rdi)
	jmp	.L68
.L92:
.LBB64:
.LBB65:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L73
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$-86, 414(%rax,%rdi)
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L73
.L101:
.LBE67:
.LBE66:
	.loc 1 512 0
	movl	$.LC10, %esi
	movl	$0, 108(%rdi)
	jmp	.L310
.L100:
	.loc 1 508 0
	movl	$.LC9, %esi
	.loc 1 507 0
	movl	$2, 108(%rdi)
	jmp	.L301
.L109:
	movl	$0, 108(%rdi)
	.loc 1 547 0
	call	continue_dma8
	jmp	.L68
.L108:
	movl	$0, 108(%rdi)
	.loc 1 541 0
	xorl	%esi, %esi
.L300:
	movq	%rbp, %rdi
	call	speaker
	.p2align 4,,2
	jmp	.L68
.L107:
	.loc 1 537 0
	movl	$1, %esi
	movl	$0, 108(%rdi)
	jmp	.L300
.L105:
	.loc 1 529 0
	movl	%r12d, %esi
	movl	$-1, %edx
	movl	$0, 108(%rdi)
	notl	%esi
	andl	$1, %esi
	orl	$2, %esi
	jmp	.L302
.L134:
.LBB68:
.LBB69:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
	cmpl	$49, %edx
	ja	.L136
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$-86, 414(%rax,%rdi)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rdi)
.L136:
.LBE69:
.LBE68:
	.loc 1 602 0
	movzbl	646(%rbp), %eax
.LBB70:
.LBB71:
	.loc 2 14 0
	movl	$1, %esi
.LBE71:
.LBE70:
	.loc 1 602 0
	movl	%eax, %edx
	orl	$2, %eax
	orl	$1, %edx
	cmpb	$-14, %r12b
	cmovne	%eax, %edx
.LBB72:
	.loc 2 13 0
	movq	32(%rbp), %rax
.LBE72:
	.loc 1 602 0
	movb	%dl, 646(%rbp)
.LBB73:
	.loc 2 13 0
	movslq	40(%rbp),%rdx
	movq	(%rax,%rdx,8), %rdi
.LBB74:
	.loc 2 14 0
	call	qemu_set_irq
	jmp	.L68
.L121:
	movl	$0, 108(%rdi)
.LBE74:
.LBE73:
.LBB75:
	.loc 1 582 0
	movl	$44, %ecx
.L127:
.LBB76:
.LBB77:
	.loc 1 375 0
	movl	64(%rbp), %edx
.LBE77:
	.loc 1 373 0
	movslq	%ecx,%rax
	movzbl	e3(%rax), %esi
.LBB78:
	.loc 1 375 0
	cmpl	$49, %edx
	ja	.L124
	.loc 1 376 0
	movslq	%edx,%rax
	movb	%sil, 414(%rax,%rbp)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
.L124:
.LBE78:
.LBE76:
	.loc 1 582 0
	decl	%ecx
	jns	.L127
	jmp	.L68
.L130:
.LBE75:
.LBB79:
	.loc 1 373 0
	movzbl	464(%rdi), %ecx
.LBB80:
	.loc 1 375 0
	movl	64(%rdi), %edx
	movl	$0, 108(%rdi)
.L311:
	cmpl	$49, %edx
	ja	.L68
	.loc 1 376 0
	movslq	%edx,%rax
	movb	%cl, 414(%rax,%rbp)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L68
.L129:
.LBE80:
.LBE79:
	.loc 1 592 0
	movl	$.LC13, %esi
	movl	$0, 108(%rdi)
	jmp	.L301
	.p2align 4,,7
.L314:
.LBE45:
.LBE44:
.LBB81:
.LBB82:
	.loc 1 664 0
	movl	112(%rbp), %ecx
.LBE82:
.LBE81:
	.loc 1 956 0
	movl	$0, 108(%rbp)
.LBB83:
.LBB84:
	.loc 1 664 0
	leal	-176(%rcx), %eax
	cmpl	$31, %eax
	ja	.L158
.LBB85:
.LBB86:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L159
	.loc 1 383 0
	movl	%esi, %edi
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L160:
.LBE86:
.LBE85:
.LBB87:
.LBB88:
	.loc 1 382 0
	testl	%edi, %edi
.LBE88:
.LBE87:
	.loc 1 381 0
	movzbl	%al, %r12d
.LBB89:
.LBB90:
	.loc 1 382 0
	je	.L162
	.loc 1 383 0
	decl	%edi
	movslq	%edi,%rax
	movl	%edi, 60(%rbp)
	movzbl	404(%rax,%rbp), %eax
.L163:
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	.loc 1 382 0
	testl	%edi, %edi
.LBE92:
.LBE91:
	.loc 1 381 0
	movzbl	%al, %r13d
.LBB93:
.LBB94:
	.loc 1 382 0
	je	.L165
	.loc 1 383 0
	decl	%edi
	movslq	%edi,%rax
	movl	%edi, 60(%rbp)
	movzbl	404(%rax,%rbp), %eax
.L166:
.LBE94:
.LBE93:
	.loc 1 669 0
	movl	112(%rbp), %edx
	.loc 1 381 0
	movzbl	%al, %ebx
	.loc 1 669 0
	testb	$8, %dl
	jne	.L318
.LBB95:
	.loc 1 278 0
	sall	$8, %r12d
.LBB96:
	.loc 1 279 0
	xorl	%eax, %eax
	cmpb	$-65, %dl
	setbe	%al
	.loc 1 280 0
	shrb	%dl
	.loc 1 282 0
	shrl	$4, %ebx
	.loc 1 279 0
	movl	%eax, 116(%rbp)
	.loc 1 280 0
	movl	%edx, %eax
	.loc 1 281 0
	shrb	%dl
	.loc 1 280 0
	andl	$1, %eax
	.loc 1 283 0
	movl	%ebx, %r10d
	.loc 1 282 0
	movl	%ebx, %edi
	.loc 1 280 0
	movl	%eax, 92(%rbp)
	.loc 1 281 0
	movl	%edx, %eax
	.loc 1 285 0
	shrb	$2, %dl
	.loc 1 281 0
	andl	$1, %eax
	.loc 1 283 0
	shrl	%r10d
	.loc 1 282 0
	andl	$1, %edi
	.loc 1 281 0
	movl	%eax, 84(%rbp)
	.loc 1 285 0
	movzbl	%dl, %eax
	.loc 1 283 0
	andl	$1, %r10d
	.loc 1 285 0
	cmpl	$11, %eax
.LBE96:
	.loc 1 278 0
	leal	(%r12,%r13), %esi
.LBB97:
	.loc 1 282 0
	movl	%edi, 72(%rbp)
	.loc 1 283 0
	movl	%r10d, 68(%rbp)
	.loc 1 285 0
	je	.L171
	cmpl	$12, %eax
	je	.L172
.L170:
	.loc 1 295 0
	movl	100(%rbp), %edx
	cmpl	$-1, %edx
	je	.L173
.LBB98:
	.loc 1 297 0
	movl	$256, %r11d
	.loc 1 303 0
	movl	$-1, 100(%rbp)
	.loc 1 297 0
	subl	%edx, %r11d
	.loc 1 298 0
	movl	%r11d, %ecx
	shrl	$31, %ecx
	leal	(%r11,%rcx), %edx
	sarl	%edx
	leal	1000000(%rdx), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%eax, 96(%rbp)
.L173:
.LBE98:
	.loc 1 307 0
	leal	1(%rsi), %edx
	movl	76(%rbp), %r8d
	.loc 1 308 0
	movl	84(%rbp), %ecx
	.loc 1 307 0
	leal	(%rdx,%rdx), %eax
	cmpl	$16, %r8d
	cmove	%eax, %edx
	.loc 1 308 0
	testl	%ecx, %ecx
	jne	.L297
	.loc 1 313 0
	movl	%r10d, %ecx
	sall	%cl, %edx
.L297:
	.loc 1 321 0
	cmpl	$16, %r8d
	movl	%edx, 88(%rbp)
	je	.L319
	.loc 1 331 0
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
.L306:
	.loc 1 340 0
	movl	96(%rbp), %esi
	movl	%r10d, %ecx
	.loc 1 331 0
	movl	%eax, 80(%rbp)
	.loc 1 342 0
	movl	$1, %ebx
	.loc 1 338 0
	movl	88(%rbp), %edi
	.loc 1 341 0
	movl	$0, 120(%rbp)
	.loc 1 340 0
	movl	%esi, %eax
	sall	%cl, %eax
	cmpl	$16, %r8d
	.loc 1 338 0
	movl	%edi, 472(%rbp)
	.loc 1 340 0
	leal	(%rax,%rax), %edx
	.loc 1 342 0
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 340 0
	cmove	%edx, %eax
	.loc 1 342 0
	addl	%r10d, %ecx
	.loc 1 340 0
	movl	%eax, 480(%rbp)
	.loc 1 342 0
	movl	%ebx, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	leal	-1(%rcx), %eax
	.loc 1 343 0
	testl	%eax, %edi
	.loc 1 342 0
	movl	%eax, 484(%rbp)
	.loc 1 343 0
	jne	.L320
.L183:
	.loc 1 348 0
	testl	%esi, %esi
	jne	.L321
.L184:
	.loc 1 368 0
	movl	$1, %esi
	movq	%rbp, %rdi
	call	control
	.loc 1 369 0
	movl	$1, %esi
	movq	%rbp, %rdi
	call	speaker
.L186:
.LBE97:
.LBE95:
	.loc 1 830 0
	movl	$-1, 112(%rbp)
	jmp	.L41
.L316:
.LBE84:
.LBE83:
.LBB99:
.LBB100:
	.loc 1 405 0
	movl	%ebx, %edx
	movl	$.LC4, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L64
.L313:
.LBE100:
.LBE99:
	.loc 1 951 0
	movl	$.LC16, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L41
.L53:
	.loc 1 922 0
	call	reset
	.p2align 4,,8
	jmp	.L41
.L158:
.LBB101:
.LBB102:
	.loc 1 680 0
	cmpl	$66, %ecx
	.p2align 4,,6
	jg	.L285
	cmpl	$65, %ecx
	.p2align 4,,7
	jge	.L230
	cmpl	$15, %ecx
	.p2align 4,,5
	je	.L209
	.p2align 4,,7
	jg	.L286
	cmpl	$5, %ecx
	.p2align 4,,7
	je	.L192
	.p2align 4,,9
	jg	.L287
	cmpl	$4, %ecx
	.p2align 4,,7
	je	.L188
.L307:
	movl	%edi, 60(%rbp)
.L283:
	.loc 1 824 0
	movl	%ecx, %edx
	movl	$.LC19, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L41
.L188:
.LBB103:
.LBB104:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L189
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L190:
.LBE104:
.LBE103:
	.loc 1 381 0
	movb	%al, 134(%rbp)
	.loc 1 683 0
	movl	$0, 396(%rbp)
	.loc 1 684 0
	movl	$0, 400(%rbp)
	jmp	.L186
	.p2align 4,,7
.L285:
	.loc 1 680 0
	cmpl	$128, %ecx
	je	.L243
	jg	.L289
	cmpl	$72, %ecx
	movl	%edi, 60(%rbp)
	.p2align 4,,5
	je	.L238
	.p2align 4,,7
	jl	.L283
	leal	-116(%rcx), %eax
	cmpl	$3, %eax
	.p2align 4,,3
	ja	.L283
	.p2align 4,,7
	jmp	.L186
.L318:
	.loc 1 670 0
	movl	%r12d, %r9d
	movl	%r13d, %r8d
	movl	%ebx, %ecx
	movl	$.LC17, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L186
.L162:
.LBB105:
.LBB106:
	.loc 1 386 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$.LC2, %esi
	call	AUD_log
	movl	60(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L163
.L159:
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	call	AUD_log
	movl	60(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L160
.L165:
.LBE108:
.LBE107:
.LBB109:
.LBB110:
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L166
.L230:
.LBE110:
.LBE109:
.LBB111:
.LBB112:
.LBB113:
.LBB114:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L231
	.loc 1 383 0
	movl	%esi, %edi
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L232:
.LBE114:
.LBE113:
.LBB115:
.LBB116:
	.loc 1 382 0
	testl	%edi, %edi
.LBE116:
.LBE115:
	.loc 1 381 0
	movl	%eax, %ebx
.LBB117:
.LBB118:
	.loc 1 382 0
	je	.L234
	.loc 1 383 0
	decl	%edi
	movslq	%edi,%rax
	movl	%edi, 60(%rbp)
	movzbl	404(%rax,%rbp), %edx
.L235:
.LBE118:
.LBE117:
	.loc 1 654 0
	sall	$8, %edx
	movzbl	%bl, %eax
.LBE112:
.LBE111:
	.loc 1 652 0
	orl	%edx, %eax
	movl	%eax, 96(%rbp)
	jmp	.L186
.L321:
.LBB119:
.LBB120:
.LBB121:
	.loc 1 351 0
	movl	$0, 488(%rbp)
	.loc 1 353 0
	movl	%esi, (%rsp)
	.loc 1 358 0
	movq	%rsp, %r9
	.loc 1 354 0
	movl	68(%rbp), %ecx
	.loc 1 358 0
	movl	$SB_audio_callback, %r8d
	movl	$.LC0, %edx
	movq	%rbp, %rdi
	.loc 1 354 0
	sall	%cl, %ebx
	.loc 1 358 0
	movq	%rbp, %rcx
	.loc 1 354 0
	movl	%ebx, 4(%rsp)
	.loc 1 355 0
	movl	80(%rbp), %eax
	.loc 1 356 0
	movl	$0, 12(%rsp)
	.loc 1 355 0
	movl	%eax, 8(%rsp)
	.loc 1 358 0
	movq	496(%rbp), %rsi
	call	AUD_open_out
	movq	%rax, 496(%rbp)
	jmp	.L184
.L320:
.LBE121:
	.loc 1 344 0
	movl	%edi, %edx
	movl	$.LC1, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	movl	96(%rbp), %esi
	jmp	.L183
.L319:
	.loc 1 323 0
	cmpl	$1, %edi
	sbbl	%eax, %eax
	addl	$3, %eax
	jmp	.L306
.L171:
	.loc 1 287 0
	movl	$16, 76(%rbp)
	jmp	.L170
.L289:
.LBE120:
.LBE119:
	.loc 1 680 0
	cmpl	$226, %ecx
	je	.L257
	.p2align 4,,7
	jg	.L290
	cmpl	$224, %ecx
	.p2align 4,,7
	jne	.L307
.LBB122:
.LBB123:
	.loc 1 382 0
	testl	%edi, %edi
	.p2align 4,,7
	je	.L252
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L253:
.LBE123:
.LBE122:
.LBB124:
	.loc 1 373 0
	notl	%eax
.LBB125:
	.loc 1 376 0
	movl	$1, 64(%rbp)
	movb	%al, 414(%rbp)
	jmp	.L186
.L172:
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	.loc 1 291 0
	movl	$8, 76(%rbp)
	jmp	.L170
.L243:
.LBE127:
.LBE126:
.LBB128:
	.loc 1 766 0
	movl	96(%rbp), %ebx
	movl	%edi, 60(%rbp)
	movl	$11025, %eax
	.loc 1 767 0
	movq	%rbp, %rdi
	.loc 1 766 0
	testl	%ebx, %ebx
	cmovle	%eax, %ebx
	.loc 1 767 0
	call	dsp_get_lohi
	.loc 1 768 0
	movl	68(%rbp), %ecx
	.loc 1 767 0
	movzwl	%ax, %eax
	.loc 1 769 0
	movq	ticks_per_sec(%rip), %rsi
	.loc 1 767 0
	incl	%eax
	.loc 1 769 0
	movslq	%ebx,%rbx
	.loc 1 768 0
	sall	%cl, %eax
	cmpl	$16, 76(%rbp)
	leal	(%rax,%rax), %edx
	cmove	%edx, %eax
	.loc 1 769 0
	movslq	%eax,%rcx
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rbx
	.loc 1 770 0
	cmpq	$-1, %rsi
	.loc 1 769 0
	movq	%rax, %rbx
	.loc 1 770 0
	leaq	1023(%rsi), %rax
	cmovle	%rax, %rsi
	sarq	$10, %rsi
	cmpq	%rbx, %rsi
	jg	.L322
	.loc 1 774 0
	cmpq	$0, 504(%rbp)
	je	.L186
	.loc 1 775 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	504(%rbp), %rdi
	leaq	(%rax,%rbx), %rsi
	call	qemu_mod_timer
	jmp	.L186
.L286:
.LBE128:
	.loc 1 680 0
	cmpl	$20, %ecx
	je	.L224
	.p2align 4,,9
	jg	.L288
	cmpl	$16, %ecx
	.p2align 4,,7
	jne	.L307
.LBB129:
.LBB130:
	.loc 1 382 0
	testl	%edi, %edi
	.p2align 4,,7
	je	.L221
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L222:
.LBE130:
.LBE129:
	.loc 1 381 0
	movzbl	%al, %ebx
	.loc 1 728 0
	movl	$.LC18, %esi
	movl	$.LC0, %edi
	movl	%ebx, %edx
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L186
.L234:
.LBB131:
.LBB132:
.LBB133:
.LBB134:
	.loc 1 386 0
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	xorl	%edx, %edx
	jmp	.L235
.L231:
.LBE134:
.LBE133:
.LBB135:
.LBB136:
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	call	AUD_log
	movl	60(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L232
.L209:
.LBE136:
.LBE135:
.LBE132:
.LBE131:
.LBB137:
.LBB138:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L210
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L211:
.LBE138:
.LBE137:
	.loc 1 381 0
	movzbl	%al, %ebx
	.loc 1 714 0
	cmpl	$131, %ebx
	je	.L323
.LBB139:
.LBB140:
	.loc 1 375 0
	movl	64(%rbp), %edi
.LBE140:
	.loc 1 373 0
	movslq	%ebx,%rax
	movzbl	135(%rax,%rbp), %edx
.LBB141:
	.loc 1 375 0
	cmpl	$49, %edi
	ja	.L186
	.loc 1 376 0
	movslq	%edi,%rax
	movb	%dl, 414(%rax,%rbp)
	leal	1(%rdi), %eax
.LBE141:
.LBE139:
.LBB142:
.LBB143:
	movl	%eax, 64(%rbp)
	jmp	.L186
.L290:
.LBE143:
.LBE142:
	.loc 1 680 0
	cmpl	$228, %ecx
	je	.L261
	cmpl	$249, %ecx
	jne	.L307
.LBB144:
.LBB145:
	.loc 1 382 0
	testl	%edi, %edi
	.p2align 4,,5
	je	.L266
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L267:
.LBE145:
.LBE144:
	.loc 1 381 0
	movzbl	%al, %ebx
	.loc 1 804 0
	cmpl	$15, %ebx
	je	.L273
	jg	.L282
	cmpl	$14, %ebx
	je	.L270
.L279:
.LBB146:
.LBB147:
	.loc 1 375 0
	movl	64(%rbp), %edx
	cmpl	$49, %edx
	.p2align 4,,5
	ja	.L186
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$0, 414(%rax,%rbp)
.L308:
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
	jmp	.L186
	.p2align 4,,7
.L257:
.LBE147:
.LBE146:
.LBB148:
.LBB149:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L258
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	jmp	.L186
.L322:
.LBE149:
.LBE148:
.LBB150:
.LBB151:
	.loc 2 13 0
	movslq	40(%rbp),%rax
	movq	32(%rbp), %rdx
.LBB152:
	.loc 2 14 0
	movl	$1, %esi
.LBE152:
	.loc 2 13 0
	movq	(%rdx,%rax,8), %rdi
.LBB153:
	.loc 2 14 0
	call	qemu_set_irq
	jmp	.L186
.L288:
.LBE153:
.LBE151:
.LBE150:
	.loc 1 680 0
	cmpl	$64, %ecx
	jne	.L307
.LBB154:
.LBB155:
	.loc 1 382 0
	testl	%edi, %edi
	.p2align 4,,7
	je	.L226
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L227:
.LBE155:
.LBE154:
	.loc 1 381 0
	movzbl	%al, %eax
	movl	%eax, 100(%rbp)
	jmp	.L186
.L287:
	.loc 1 680 0
	cmpl	$14, %ecx
	jne	.L307
.LBB156:
.LBB157:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L200
	.loc 1 383 0
	movl	%esi, %edi
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L201:
.LBE157:
.LBE156:
.LBB158:
.LBB159:
	.loc 1 382 0
	testl	%edi, %edi
.LBE159:
.LBE158:
	.loc 1 381 0
	movzbl	%al, %ebx
.LBB160:
.LBB161:
	.loc 1 382 0
	je	.L203
	.loc 1 383 0
	decl	%edi
	movslq	%edi,%rax
	movl	%edi, 60(%rbp)
	movzbl	404(%rax,%rbp), %eax
.L204:
.LBE161:
.LBE160:
	.loc 1 381 0
	movzbl	%al, %r13d
	.loc 1 700 0
	cmpl	$131, %r13d
	je	.L324
	.loc 1 706 0
	movslq	%r13d,%rax
	movb	%bl, 135(%rax,%rbp)
	jmp	.L186
.L210:
.LBB162:
.LBB163:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L211
.L192:
.LBE163:
.LBE162:
.LBB164:
.LBB165:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L193
	.loc 1 383 0
	movl	%esi, %edi
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L194:
.LBE165:
.LBE164:
.LBB166:
.LBB167:
	.loc 1 382 0
	testl	%edi, %edi
.LBE167:
.LBE166:
	.loc 1 381 0
	movb	%al, 132(%rbp)
.LBB168:
.LBB169:
	.loc 1 382 0
	je	.L196
	.loc 1 383 0
	decl	%edi
	movslq	%edi,%rax
	movl	%edi, 60(%rbp)
	movzbl	404(%rax,%rbp), %eax
.L197:
.LBE169:
.LBE168:
	.loc 1 381 0
	movb	%al, 133(%rbp)
	jmp	.L186
.L238:
	.loc 1 750 0
	movq	%rbp, %rdi
	call	dsp_get_lohi
	movzwl	%ax, %eax
	incl	%eax
	movl	%eax, 88(%rbp)
	jmp	.L186
.L323:
.LBB170:
	.loc 1 373 0
	movl	400(%rbp), %ecx
	leal	3(%rcx), %eax
	cmpl	$-1, %ecx
	movl	%ecx, %edx
	cmovg	%ecx, %eax
	andl	$-4, %eax
	subl	%eax, %edx
	movl	%edx, %eax
.LBB171:
	.loc 1 375 0
	movl	64(%rbp), %edx
.LBE171:
	.loc 1 373 0
	cltq
	movzbl	392(%rax,%rbp), %esi
.LBB172:
	.loc 1 375 0
	cmpl	$49, %edx
	ja	.L216
	.loc 1 376 0
	movslq	%edx,%rax
	movb	%sil, 414(%rax,%rbp)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbp)
.L216:
.LBE172:
.LBE170:
	.loc 1 719 0
	leal	1(%rcx), %eax
	movl	%eax, 400(%rbp)
	jmp	.L186
.L261:
.LBB173:
.LBB174:
	.loc 1 382 0
	testl	%edi, %edi
	je	.L262
	.loc 1 383 0
	movl	%esi, 60(%rbp)
	movzbl	%dl, %eax
.L263:
.LBE174:
.LBE173:
	.loc 1 381 0
	movb	%al, 464(%rbp)
	jmp	.L186
.L224:
	movl	%edi, 60(%rbp)
	.loc 1 732 0
	movq	%rbp, %rdi
	call	dsp_get_lohi
	movzwl	%ax, %eax
	xorl	%esi, %esi
	movq	%rbp, %rdi
	leal	1(%rax), %edx
	call	dma_cmd8
	jmp	.L186
.L258:
	movl	$0, 60(%rbp)
.LBB175:
.LBB176:
	.loc 1 386 0
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L186
.L282:
.LBE176:
.LBE175:
	.loc 1 804 0
	cmpl	$55, %ebx
	jne	.L279
.LBB177:
.LBB178:
	.loc 1 375 0
	movl	64(%rbp), %edx
	cmpl	$49, %edx
	.p2align 4,,5
	ja	.L186
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$56, 414(%rax,%rbp)
	jmp	.L308
	.p2align 4,,7
.L196:
.LBE178:
.LBE177:
.LBB179:
.LBB180:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L197
.L193:
.LBE180:
.LBE179:
.LBB181:
.LBB182:
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	call	AUD_log
	movl	60(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L194
.L252:
.LBE182:
.LBE181:
.LBB183:
.LBB184:
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L253
.L262:
.LBE184:
.LBE183:
.LBB185:
.LBB186:
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L263
.L226:
.LBE186:
.LBE185:
.LBB187:
.LBB188:
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L227
.L189:
.LBE188:
.LBE187:
.LBB189:
.LBB190:
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L190
.L270:
.LBE190:
.LBE189:
.LBB191:
.LBB192:
	.loc 1 375 0
	movl	64(%rbp), %edx
	cmpl	$49, %edx
	ja	.L186
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$-1, 414(%rax,%rbp)
	jmp	.L308
.L273:
.LBE192:
.LBE191:
.LBB193:
.LBB194:
	.loc 1 375 0
	movl	64(%rbp), %edx
	cmpl	$49, %edx
	ja	.L186
	.loc 1 376 0
	movslq	%edx,%rax
	movb	$7, 414(%rax,%rbp)
	jmp	.L308
.L221:
.LBE194:
.LBE193:
.LBB195:
.LBB196:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L222
.L266:
.LBE196:
.LBE195:
.LBB197:
.LBB198:
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L267
.L324:
.LBE198:
.LBE197:
	.loc 1 702 0
	movl	396(%rbp), %edx
	leal	3(%rdx), %eax
	cmpl	$-1, %edx
	movl	%edx, %ecx
	cmovg	%edx, %eax
	.loc 1 703 0
	incl	%edx
	.loc 1 702 0
	andl	$-4, %eax
	.loc 1 703 0
	movl	%edx, 396(%rbp)
	.loc 1 702 0
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	movb	%bl, 392(%rax,%rbp)
	jmp	.L186
.L203:
.LBB199:
.LBB200:
	.loc 1 386 0
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$.LC0, %edi
	call	AUD_log
	xorl	%eax, %eax
	jmp	.L204
.L200:
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	$0, 60(%rbp)
	movl	$.LC2, %esi
	call	AUD_log
	movl	60(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L201
.LBE202:
.LBE201:
.LBE102:
.LBE101:
.LFE211:
	.size	dsp_write, .-dsp_write
	.section	.rodata.str1.1
.LC21:
	.string	"warning: dsp_read %#x error\n"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"empty output buffer for command %#x\n"
	.text
	.p2align 4,,15
	.type	dsp_read, @function
dsp_read:
.LFB212:
	.loc 1 973 0
	movq	%rbx, -16(%rsp)
.LCFI14:
	movq	%rbp, -8(%rsp)
.LCFI15:
	.loc 1 977 0
	movl	%esi, %eax
	.loc 1 973 0
	subq	$24, %rsp
.LCFI16:
	.loc 1 977 0
	subl	52(%rdi), %eax
	.loc 1 973 0
	movq	%rdi, %rbx
	.loc 1 979 0
	subl	$6, %eax
	cmpl	$9, %eax
	ja	.L346
	mov	%eax, %eax
	jmp	*.L347(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L347:
	.quad	.L327
	.quad	.L346
	.quad	.L346
	.quad	.L346
	.quad	.L328
	.quad	.L346
	.quad	.L332
	.quad	.L335
	.quad	.L336
	.quad	.L342
	.text
	.p2align 4,,7
.L346:
	.loc 1 1037 0
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	$.LC21, %esi
	movl	$.LC0, %edi
	call	AUD_log
	.loc 1 1039 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 1038 0
	movl	$255, %eax
	.loc 1 1039 0
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L327:
	.loc 1 981 0
	movl	$255, %ebp
.L326:
	.loc 1 1034 0
	movl	%ebp, %eax
.L350:
	.loc 1 1039 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L328:
	.loc 1 985 0
	movl	64(%rdi), %eax
	testl	%eax, %eax
	je	.L329
	.loc 1 986 0
	decl	%eax
	movl	%eax, 64(%rdi)
	cltq
	movzbl	414(%rax,%rdi), %ebp
	.loc 1 1034 0
	movl	%ebp, %eax
	.loc 1 987 0
	movb	%bpl, 465(%rdi)
	jmp	.L350
	.p2align 4,,7
.L332:
	.loc 1 1000 0
	movl	124(%rdi), %eax
	cmpl	$1, %eax
	sbbl	%ebp, %ebp
	andl	$128, %ebp
	.loc 1 1034 0
	movl	%ebp, %eax
	jmp	.L350
	.p2align 4,,7
.L336:
	.loc 1 1009 0
	movl	64(%rdi), %edi
	testl	%edi, %edi
	je	.L339
	movl	120(%rbx), %esi
	movl	$128, %ebp
	testl	%esi, %esi
	je	.L338
.L339:
	xorl	%ebp, %ebp
.L338:
	.loc 1 1010 0
	movzbl	646(%rbx), %eax
	testb	$1, %al
	je	.L326
	.loc 1 1012 0
	andl	$1, %eax
.L349:
	.loc 1 1021 0
	movb	%al, 646(%rbx)
.LBB203:
	.loc 2 18 0
	movslq	40(%rbx),%rax
.LBB204:
	.loc 2 19 0
	xorl	%esi, %esi
.LBE204:
	.loc 2 18 0
	movq	32(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdi
.LBB205:
	.loc 2 19 0
	call	qemu_set_irq
.LBE205:
.LBE203:
	.loc 1 1034 0
	movl	%ebp, %eax
	jmp	.L350
	.p2align 4,,7
.L342:
	.loc 1 1019 0
	movzbl	646(%rdi), %eax
	.loc 1 1018 0
	movl	$255, %ebp
	.loc 1 1019 0
	testb	$2, %al
	je	.L326
	.loc 1 1021 0
	andl	$2, %eax
	jmp	.L349
	.p2align 4,,7
.L335:
	.loc 1 1005 0
	xorl	%ebp, %ebp
	.loc 1 1034 0
	movl	%ebp, %eax
	jmp	.L350
.L329:
	.loc 1 990 0
	movl	112(%rdi), %edx
	cmpl	$-1, %edx
	je	.L331
	.loc 1 991 0
	movl	$.LC20, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
.L331:
	.loc 1 994 0
	movzbl	465(%rbx), %ebp
	.loc 1 1034 0
	movl	%ebp, %eax
	jmp	.L350
.LFE212:
	.size	dsp_read, .-dsp_read
	.p2align 4,,15
	.type	reset_mixer, @function
reset_mixer:
.LFB213:
	.loc 1 1042 0
	pushq	%rbx
.LCFI17:
	.loc 1 1042 0
	movq	%rdi, %rbx
	.loc 1 1045 0
	leaq	516(%rdi), %rdi
	movl	$127, %edx
	movl	$255, %esi
	call	memset
	.loc 1 1046 0
	leaq	647(%rbx), %rdi
	movl	$125, %edx
	movl	$255, %esi
	call	memset
	.loc 1 1048 0
	movb	$4, 518(%rbx)
	.loc 1 1049 0
	movb	$4, 522(%rbx)
	.loc 1 1066 0
	movl	$48, %edx
	.loc 1 1050 0
	movb	$0, 524(%rbx)
	.loc 1 1051 0
	movb	$0, 526(%rbx)
	.loc 1 1054 0
	movb	$0, 528(%rbx)
	.loc 1 1057 0
	movb	$0, 530(%rbx)
	.loc 1 1060 0
	movb	$-120, 520(%rbx)
	.loc 1 1062 0
	movb	$-120, 550(%rbx)
	.loc 1 1064 0
	movb	$-120, 554(%rbx)
	.p2align 4,,7
.L355:
	.loc 1 1067 0
	movslq	%edx,%rax
	.loc 1 1066 0
	incl	%edx
	cmpl	$71, %edx
	.loc 1 1067 0
	movb	$32, 516(%rax,%rbx)
	.loc 1 1066 0
	jle	.L355
	popq	%rbx
	ret
.LFE213:
	.size	reset_mixer, .-reset_mixer
	.p2align 4,,15
	.type	mixer_write_indexb, @function
mixer_write_indexb:
.LFB214:
	.loc 1 1072 0
	.loc 1 1075 0
	movl	%edx, 512(%rdi)
	ret
.LFE214:
	.size	mixer_write_indexb, .-mixer_write_indexb
	.section	.rodata.str1.1
.LC22:
	.string	"bad irq magic %d\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"attempt to write into IRQ status register (val=%#x)\n"
	.align 8
.LC23:
	.string	"attempt to change DMA 8bit %d(%d), 16bit %d(%d) (val=%#x)\n"
	.text
	.p2align 4,,15
	.type	mixer_write_datab, @function
mixer_write_datab:
.LFB215:
	.loc 1 1079 0
	movq	%rbx, -24(%rsp)
.LCFI18:
	movq	%rbp, -16(%rsp)
.LCFI19:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI20:
	subq	$40, %rsp
.LCFI21:
	.loc 1 1085 0
	movl	512(%rdi), %eax
	.loc 1 1079 0
	movl	%edx, %ebp
	.loc 1 1085 0
	cmpl	$128, %eax
	je	.L362
	jle	.L382
	cmpl	$129, %eax
	je	.L372
	cmpl	$130, %eax
	.p2align 4,,7
	je	.L375
.L360:
	.loc 1 1131 0
	cltq
	movb	%bpl, 516(%rax,%rbx)
	.loc 1 1132 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L382:
	.loc 1 1085 0
	testl	%eax, %eax
	jne	.L360
	.loc 1 1087 0
	call	reset_mixer
.L380:
	movl	512(%rbx), %eax
	.loc 1 1131 0
	cltq
	movb	%bpl, 516(%rax,%rbx)
	.loc 1 1132 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L362:
.LBB206:
.LBB207:
.LBB208:
	.loc 1 138 0
	cmpl	$2, %edx
	je	.L366
	jle	.L383
	cmpl	$4, %edx
	.p2align 4,,7
	je	.L367
	cmpl	$8, %edx
	.p2align 4,,7
	je	.L368
.L369:
	.loc 1 148 0
	movl	%ebp, %edx
	movl	$.LC22, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L380
	.p2align 4,,7
.L383:
	.loc 1 138 0
	cmpl	$1, %edx
	jne	.L369
	.loc 1 139 0
	movl	$9, %edx
.LBE208:
.LBE207:
	.loc 1 1095 0
	movl	%edx, 40(%rbx)
	.p2align 4,,7
.L384:
.LBE206:
	.loc 1 1131 0
	cltq
	movb	%bpl, 516(%rax,%rbx)
	.loc 1 1132 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	addq	$40, %rsp
	ret
.L366:
.LBB209:
.LBB210:
.LBB211:
	.loc 1 141 0
	movl	$5, %edx
.LBE211:
.LBE210:
	.loc 1 1095 0
	movl	%edx, 40(%rbx)
	jmp	.L384
.L375:
.LBE209:
	.loc 1 1132 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	.loc 1 1120 0
	movl	$.LC24, %esi
	.loc 1 1132 0
	movq	32(%rsp), %r12
	.loc 1 1120 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	.loc 1 1132 0
	addq	$40, %rsp
	.loc 1 1120 0
	jmp	AUD_log
.L372:
.LBB212:
	.loc 1 1104 0
	movl	%edx, %edi
	andl	$15, %edi
	call	lsbindex
	.loc 1 1105 0
	movl	%ebp, %edi
	.loc 1 1104 0
	movl	%eax, %r12d
	.loc 1 1105 0
	andl	$240, %edi
	call	lsbindex
	.loc 1 1106 0
	movl	44(%rbx), %ecx
	cmpl	%r12d, %ecx
	je	.L385
	movl	48(%rbx), %edx
.L374:
	.loc 1 1107 0
	movl	%edx, %r9d
	movl	%eax, %r8d
	movl	%r12d, %edx
	movl	$.LC23, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	movl	%ebp, (%rsp)
	call	AUD_log
	jmp	.L380
.L385:
	.loc 1 1106 0
	movl	48(%rbx), %edx
	cmpl	%eax, %edx
	jne	.L374
	.p2align 4,,7
	jmp	.L380
.L367:
.LBE212:
.LBB213:
.LBB214:
.LBB215:
	.loc 1 143 0
	movl	$7, %edx
.LBE215:
.LBE214:
	.loc 1 1095 0
	movl	%edx, 40(%rbx)
	.p2align 4,,3
	jmp	.L384
.L368:
.LBB216:
.LBB217:
	.loc 1 145 0
	movl	$10, %edx
.LBE217:
.LBE216:
	.loc 1 1095 0
	movl	%edx, 40(%rbx)
	.p2align 4,,3
	jmp	.L384
.LBE213:
.LFE215:
	.size	mixer_write_datab, .-mixer_write_datab
	.p2align 4,,15
	.type	mixer_write_indexw, @function
mixer_write_indexw:
.LFB216:
	.loc 1 1135 0
	movq	%rbx, -24(%rsp)
.LCFI22:
	movl	%edx, %ebx
	movq	%r12, -16(%rsp)
.LCFI23:
	movq	%r13, -8(%rsp)
.LCFI24:
	movl	%esi, %r12d
	subq	$24, %rsp
.LCFI25:
	.loc 1 1135 0
	movq	%rdi, %r13
	.loc 1 1136 0
	andl	$255, %edx
	.loc 1 1137 0
	movzbl	%bh, %ebx
	.loc 1 1136 0
	call	mixer_write_indexb
	.loc 1 1137 0
	movl	%ebx, %edx
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	jmp	mixer_write_datab
.LFE216:
	.size	mixer_write_indexw, .-mixer_write_indexw
	.p2align 4,,15
	.type	mixer_read, @function
mixer_read:
.LFB217:
	.loc 1 1141 0
	.loc 1 1154 0
	movslq	512(%rdi),%rax
	movzbl	516(%rax,%rdi), %eax
	.loc 1 1155 0
	ret
.LFE217:
	.size	mixer_read, .-mixer_read
	.p2align 4,,15
	.type	SB_read_DMA, @function
SB_read_DMA:
.LFB219:
	.loc 1 1192 0
	pushq	%r15
.LCFI26:
	pushq	%r14
.LCFI27:
	pushq	%r13
.LCFI28:
	movq	%rdi, %r13
	pushq	%r12
.LCFI29:
	movl	%ecx, %r12d
	pushq	%rbp
.LCFI30:
	pushq	%rbx
.LCFI31:
	subq	$4120, %rsp
.LCFI32:
	.loc 1 1192 0
	movl	%esi, 12(%rsp)
	movl	%edx, 8(%rsp)
	.loc 1 1196 0
	movl	472(%rdi), %ecx
	testl	%ecx, %ecx
	js	.L417
.L390:
	.loc 1 1200 0
	cmpq	$0, 496(%r13)
	.loc 1 1207 0
	movl	%r12d, %esi
	.loc 1 1200 0
	je	.L393
	.loc 1 1201 0
	movl	484(%r13), %eax
	.loc 1 1202 0
	movl	488(%r13), %esi
	.loc 1 1201 0
	notl	%eax
	.loc 1 1202 0
	andl	%eax, %esi
	setle	%dl
	testl	%r12d, %r12d
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L393
	.p2align 4,,7
.L389:
	.loc 1 1248 0
	movl	8(%rsp), %eax
	addq	$4120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L393:
	.loc 1 1218 0
	cmpl	%esi, %ecx
	.loc 1 1210 0
	movl	%esi, %eax
	.loc 1 1218 0
	jle	.L418
.L394:
.LBB218:
.LBB219:
	.loc 1 1164 0
	xorl	%r14d, %r14d
	.loc 1 1184 0
	testl	%eax, %eax
.LBE219:
	.loc 1 1159 0
	movl	8(%rsp), %ebp
.LBB220:
	.loc 1 1163 0
	movl	%eax, %ebx
	.loc 1 1184 0
	je	.L397
	leaq	16(%rsp), %r15
	.p2align 4,,7
.L402:
.LBB221:
	.loc 1 1167 0
	movl	%r12d, %ecx
	.loc 1 1176 0
	movl	12(%rsp), %edi
	.loc 1 1173 0
	movl	$4096, %eax
	.loc 1 1167 0
	subl	%ebp, %ecx
	.loc 1 1176 0
	movl	%ebp, %edx
	movq	%r15, %rsi
.LBB222:
	.loc 1 1171 0
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
.LBE222:
	movslq	%ecx,%rcx
	.loc 1 1173 0
	cmpq	$4097, %rcx
	cmovae	%rax, %rcx
	.loc 1 1176 0
	call	DMA_read_memory
	.loc 1 1177 0
	movq	496(%r13), %rdi
	movl	%eax, %edx
	movq	%r15, %rsi
	call	AUD_write
	movl	%eax, %ecx
	.loc 1 1179 0
	subl	%eax, %ebx
	.loc 1 1180 0
	leal	(%rbp,%rcx), %eax
	.loc 1 1181 0
	addl	%ecx, %r14d
	.loc 1 1180 0
	cltd
	idivl	%r12d
	.loc 1 1183 0
	testl	%ecx, %ecx
	.loc 1 1180 0
	movl	%edx, %ebp
	.loc 1 1183 0
	je	.L415
.LBE221:
	.loc 1 1184 0
	testl	%ebx, %ebx
	jne	.L402
.L415:
	movl	472(%r13), %ecx
.L397:
.LBE220:
.LBE218:
	.loc 1 1225 0
	movl	8(%rsp), %eax
	.loc 1 1226 0
	subl	%r14d, %ecx
	.loc 1 1225 0
	addl	%r14d, %eax
	cltd
	idivl	%r12d
	.loc 1 1228 0
	testl	%ecx, %ecx
	.loc 1 1225 0
	movl	%edx, 8(%rsp)
	.loc 1 1226 0
	movl	%ecx, 472(%r13)
	.loc 1 1228 0
	jle	.L419
.L404:
	.loc 1 1244 0
	testl	%ecx, %ecx
	movl	%ecx, %edx
	jg	.L389
	movl	88(%r13), %ecx
	.p2align 4,,7
.L411:
	leal	(%rcx,%rdx), %eax
	testl	%eax, %eax
	movl	%eax, %edx
	jle	.L411
	movl	%eax, 472(%r13)
	.loc 1 1248 0
	movl	8(%rsp), %eax
	addq	$4120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L418:
	.loc 1 1220 0
	movl	84(%r13), %r9d
	testl	%r9d, %r9d
	cmove	%ecx, %eax
	jmp	.L394
.L417:
	.loc 1 1197 0
	movl	88(%rdi), %ecx
	movl	%ecx, 472(%rdi)
	jmp	.L390
.L419:
	.loc 1 1229 0
	testb	$4, 12(%rsp)
	movzbl	646(%r13), %eax
	je	.L405
	orl	$2, %eax
.L406:
	movb	%al, 646(%r13)
.LBB223:
	.loc 2 13 0
	movslq	40(%r13),%rax
.LBB224:
	.loc 2 14 0
	movl	$1, %esi
.LBE224:
	.loc 2 13 0
	movq	32(%r13), %rdx
	movq	(%rdx,%rax,8), %rdi
.LBB225:
	.loc 2 14 0
	call	qemu_set_irq
.LBE225:
.LBE223:
	.loc 1 1231 0
	movl	84(%r13), %r8d
	testl	%r8d, %r8d
	je	.L420
.L416:
	movl	472(%r13), %ecx
	jmp	.L404
.L405:
	.loc 1 1229 0
	orl	$1, %eax
	jmp	.L406
.L420:
	.loc 1 1232 0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	control
	.loc 1 1233 0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	speaker
	jmp	.L416
.LFE219:
	.size	SB_read_DMA, .-SB_read_DMA
	.p2align 4,,15
	.type	SB_audio_callback, @function
SB_audio_callback:
.LFB220:
	.loc 1 1251 0
	.loc 1 1253 0
	movl	%esi, 488(%rdi)
	ret
.LFE220:
	.size	SB_audio_callback, .-SB_audio_callback
	.p2align 4,,15
	.type	SB_save, @function
SB_save:
.LFB221:
	.loc 1 1257 0
	pushq	%r12
.LCFI33:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI34:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI35:
	.loc 1 1260 0
	movl	40(%rsi), %esi
	call	qemu_put_be32
	.loc 1 1261 0
	movl	44(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1262 0
	movl	48(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1263 0
	movl	52(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1264 0
	movl	56(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1265 0
	movl	60(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1266 0
	movl	64(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1267 0
	movl	68(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1268 0
	movl	72(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1269 0
	movl	76(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB226:
.LBB227:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 32 0
	movl	80(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE227:
.LBE226:
	.loc 1 1271 0
	movl	84(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1272 0
	movl	88(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1273 0
	movl	92(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1274 0
	movl	96(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1275 0
	movl	100(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1276 0
	movl	104(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1277 0
	movl	108(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1278 0
	movl	112(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1279 0
	movl	116(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1280 0
	movl	120(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1281 0
	movl	124(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1282 0
	movl	128(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB228:
.LBB229:
	.loc 3 42 0
	movzbl	132(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE229:
.LBE228:
.LBB230:
.LBB231:
	movzbl	133(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE231:
.LBE230:
.LBB232:
.LBB233:
	movzbl	134(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE233:
.LBE232:
.LBB234:
.LBB235:
	movzbl	132(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE235:
.LBE234:
	.loc 1 1288 0
	leaq	135(%rbx), %rsi
	movl	$256, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
.LBB236:
.LBB237:
	.loc 3 42 0
	movzbl	391(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE237:
.LBE236:
	.loc 1 1290 0
	leaq	392(%rbx), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
	.loc 1 1291 0
	movl	396(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1292 0
	movl	400(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1294 0
	leaq	404(%rbx), %rsi
	movq	%r12, %rdi
	movl	$10, %edx
	call	qemu_put_buffer
	.loc 1 1295 0
	leaq	414(%rbx), %rsi
	movl	$50, %edx
	movq	%r12, %rdi
	call	qemu_put_buffer
.LBB238:
.LBB239:
	.loc 3 42 0
	movzbl	464(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE239:
.LBE238:
.LBB240:
.LBB241:
	movzbl	465(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE241:
.LBE240:
	.loc 1 1299 0
	movl	468(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1300 0
	movl	472(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1301 0
	movl	476(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1302 0
	movl	480(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1303 0
	movl	484(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 1305 0
	movl	512(%rbx), %esi
	movq	%r12, %rdi
	.loc 1 1306 0
	addq	$516, %rbx
	.loc 1 1305 0
	call	qemu_put_be32
	.loc 1 1306 0
	addq	$8, %rsp
	movq	%rbx, %rsi
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	movl	$256, %edx
	jmp	qemu_put_buffer
.LFE221:
	.size	SB_save, .-SB_save
	.p2align 4,,15
	.type	SB_load, @function
SB_load:
.LFB222:
	.loc 1 1310 0
	pushq	%r12
.LCFI36:
	.loc 1 1314 0
	movl	$-22, %eax
	.loc 1 1310 0
	movl	%edx, %r12d
	pushq	%rbp
.LCFI37:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI38:
	movq	%rdi, %rbx
	subq	$16, %rsp
.LCFI39:
	.loc 1 1313 0
	cmpl	$1, %edx
	jne	.L431
	.loc 1 1317 0
	call	qemu_get_be32
	.loc 1 1318 0
	movq	%rbx, %rdi
	.loc 1 1317 0
	movl	%eax, 40(%rbp)
	.loc 1 1318 0
	call	qemu_get_be32
	.loc 1 1319 0
	movq	%rbx, %rdi
	.loc 1 1318 0
	movl	%eax, 44(%rbp)
	.loc 1 1319 0
	call	qemu_get_be32
	.loc 1 1320 0
	movq	%rbx, %rdi
	.loc 1 1319 0
	movl	%eax, 48(%rbp)
	.loc 1 1320 0
	call	qemu_get_be32
	.loc 1 1321 0
	movq	%rbx, %rdi
	.loc 1 1320 0
	movl	%eax, 52(%rbp)
	.loc 1 1321 0
	call	qemu_get_be32
	.loc 1 1322 0
	movq	%rbx, %rdi
	.loc 1 1321 0
	movl	%eax, 56(%rbp)
	.loc 1 1322 0
	call	qemu_get_be32
	.loc 1 1323 0
	movq	%rbx, %rdi
	.loc 1 1322 0
	movl	%eax, 60(%rbp)
	.loc 1 1323 0
	call	qemu_get_be32
	.loc 1 1324 0
	movq	%rbx, %rdi
	.loc 1 1323 0
	movl	%eax, 64(%rbp)
	.loc 1 1324 0
	call	qemu_get_be32
	.loc 1 1325 0
	movq	%rbx, %rdi
	.loc 1 1324 0
	movl	%eax, 68(%rbp)
	.loc 1 1325 0
	call	qemu_get_be32
	.loc 1 1326 0
	movq	%rbx, %rdi
	.loc 1 1325 0
	movl	%eax, 72(%rbp)
	.loc 1 1326 0
	call	qemu_get_be32
.LBB242:
.LBB243:
	.loc 3 52 0
	movq	%rbx, %rdi
.LBE243:
.LBE242:
	.loc 1 1326 0
	movl	%eax, 76(%rbp)
.LBB244:
.LBB245:
	.loc 3 52 0
	call	qemu_get_be32
.LBE245:
.LBE244:
	.loc 1 1328 0
	movq	%rbx, %rdi
.LBB246:
.LBB247:
	.loc 3 52 0
	movl	%eax, 80(%rbp)
.LBE247:
.LBE246:
	.loc 1 1328 0
	call	qemu_get_be32
	.loc 1 1329 0
	movq	%rbx, %rdi
	.loc 1 1328 0
	movl	%eax, 84(%rbp)
	.loc 1 1329 0
	call	qemu_get_be32
	.loc 1 1330 0
	movq	%rbx, %rdi
	.loc 1 1329 0
	movl	%eax, 88(%rbp)
	.loc 1 1330 0
	call	qemu_get_be32
	.loc 1 1331 0
	movq	%rbx, %rdi
	.loc 1 1330 0
	movl	%eax, 92(%rbp)
	.loc 1 1331 0
	call	qemu_get_be32
	.loc 1 1332 0
	movq	%rbx, %rdi
	.loc 1 1331 0
	movl	%eax, 96(%rbp)
	.loc 1 1332 0
	call	qemu_get_be32
	.loc 1 1333 0
	movq	%rbx, %rdi
	.loc 1 1332 0
	movl	%eax, 100(%rbp)
	.loc 1 1333 0
	call	qemu_get_be32
	.loc 1 1334 0
	movq	%rbx, %rdi
	.loc 1 1333 0
	movl	%eax, 104(%rbp)
	.loc 1 1334 0
	call	qemu_get_be32
	.loc 1 1335 0
	movq	%rbx, %rdi
	.loc 1 1334 0
	movl	%eax, 108(%rbp)
	.loc 1 1335 0
	call	qemu_get_be32
	.loc 1 1336 0
	movq	%rbx, %rdi
	.loc 1 1335 0
	movl	%eax, 112(%rbp)
	.loc 1 1336 0
	call	qemu_get_be32
	.loc 1 1337 0
	movq	%rbx, %rdi
	.loc 1 1336 0
	movl	%eax, 116(%rbp)
	.loc 1 1337 0
	call	qemu_get_be32
	.loc 1 1338 0
	movq	%rbx, %rdi
	.loc 1 1337 0
	movl	%eax, 120(%rbp)
	.loc 1 1338 0
	call	qemu_get_be32
	.loc 1 1339 0
	movq	%rbx, %rdi
	.loc 1 1338 0
	movl	%eax, 124(%rbp)
	.loc 1 1339 0
	call	qemu_get_be32
.LBB248:
.LBB249:
	.loc 3 62 0
	movq	%rbx, %rdi
.LBE249:
.LBE248:
	.loc 1 1339 0
	movl	%eax, 128(%rbp)
.LBB250:
.LBB251:
	.loc 3 62 0
	call	qemu_get_byte
.LBE251:
.LBE250:
.LBB252:
.LBB253:
	movq	%rbx, %rdi
.LBE253:
.LBE252:
.LBB254:
.LBB255:
	movb	%al, 132(%rbp)
.LBE255:
.LBE254:
.LBB256:
.LBB257:
	call	qemu_get_byte
.LBE257:
.LBE256:
.LBB258:
.LBB259:
	movq	%rbx, %rdi
.LBE259:
.LBE258:
.LBB260:
.LBB261:
	movb	%al, 133(%rbp)
.LBE261:
.LBE260:
.LBB262:
.LBB263:
	call	qemu_get_byte
.LBE263:
.LBE262:
.LBB264:
.LBB265:
	movq	%rbx, %rdi
.LBE265:
.LBE264:
.LBB266:
.LBB267:
	movb	%al, 134(%rbp)
.LBE267:
.LBE266:
.LBB268:
.LBB269:
	call	qemu_get_byte
.LBE269:
.LBE268:
	.loc 1 1345 0
	leaq	135(%rbp), %rsi
	movl	$256, %edx
	movq	%rbx, %rdi
.LBB270:
.LBB271:
	.loc 3 62 0
	movb	%al, 132(%rbp)
.LBE271:
.LBE270:
	.loc 1 1345 0
	call	qemu_get_buffer
.LBB272:
.LBB273:
	.loc 3 62 0
	movq	%rbx, %rdi
	call	qemu_get_byte
.LBE273:
.LBE272:
	.loc 1 1347 0
	leaq	392(%rbp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
.LBB274:
.LBB275:
	.loc 3 62 0
	movb	%al, 391(%rbp)
.LBE275:
.LBE274:
	.loc 1 1347 0
	call	qemu_get_buffer
	.loc 1 1348 0
	movq	%rbx, %rdi
	call	qemu_get_be32
	.loc 1 1349 0
	movq	%rbx, %rdi
	.loc 1 1348 0
	movl	%eax, 396(%rbp)
	.loc 1 1349 0
	call	qemu_get_be32
	.loc 1 1351 0
	leaq	404(%rbp), %rsi
	movl	$10, %edx
	movq	%rbx, %rdi
	.loc 1 1349 0
	movl	%eax, 400(%rbp)
	.loc 1 1351 0
	call	qemu_get_buffer
	.loc 1 1352 0
	leaq	414(%rbp), %rsi
	movl	$50, %edx
	movq	%rbx, %rdi
	call	qemu_get_buffer
.LBB276:
.LBB277:
	.loc 3 62 0
	movq	%rbx, %rdi
	call	qemu_get_byte
.LBE277:
.LBE276:
.LBB278:
.LBB279:
	movq	%rbx, %rdi
.LBE279:
.LBE278:
.LBB280:
.LBB281:
	movb	%al, 464(%rbp)
.LBE281:
.LBE280:
.LBB282:
.LBB283:
	call	qemu_get_byte
.LBE283:
.LBE282:
	.loc 1 1356 0
	movq	%rbx, %rdi
.LBB284:
.LBB285:
	.loc 3 62 0
	movb	%al, 465(%rbp)
.LBE285:
.LBE284:
	.loc 1 1356 0
	call	qemu_get_be32
	.loc 1 1357 0
	movq	%rbx, %rdi
	.loc 1 1356 0
	movl	%eax, 468(%rbp)
	.loc 1 1357 0
	call	qemu_get_be32
	.loc 1 1358 0
	movq	%rbx, %rdi
	.loc 1 1357 0
	movl	%eax, 472(%rbp)
	.loc 1 1358 0
	call	qemu_get_be32
	.loc 1 1359 0
	movq	%rbx, %rdi
	.loc 1 1358 0
	movl	%eax, 476(%rbp)
	.loc 1 1359 0
	call	qemu_get_be32
	.loc 1 1360 0
	movq	%rbx, %rdi
	.loc 1 1359 0
	movl	%eax, 480(%rbp)
	.loc 1 1360 0
	call	qemu_get_be32
	.loc 1 1362 0
	movq	%rbx, %rdi
	.loc 1 1360 0
	movl	%eax, 484(%rbp)
	.loc 1 1362 0
	call	qemu_get_be32
	.loc 1 1363 0
	leaq	516(%rbp), %rsi
	.loc 1 1362 0
	movl	%eax, 512(%rbp)
	.loc 1 1363 0
	movl	$256, %edx
	movq	%rbx, %rdi
	call	qemu_get_buffer
	.loc 1 1365 0
	movq	496(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.L444
.L441:
	.loc 1 1370 0
	movl	476(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L442
	.loc 1 1371 0
	movl	96(%rbp), %eax
	testl	%eax, %eax
	jne	.L445
.L443:
	.loc 1 1391 0
	movl	$1, %esi
	movq	%rbp, %rdi
	call	control
	.loc 1 1392 0
	movl	104(%rbp), %esi
	movq	%rbp, %rdi
	call	speaker
.L442:
	.loc 1 1394 0
	xorl	%eax, %eax
.L431:
	.loc 1 1395 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L444:
	.loc 1 1366 0
	movq	%rbp, %rdi
	call	AUD_close_out
	.loc 1 1367 0
	movq	$0, 496(%rbp)
	jmp	.L441
	.p2align 4,,7
.L445:
.LBB286:
	.loc 1 1374 0
	movl	$0, 488(%rbp)
	.loc 1 1376 0
	movl	%eax, (%rsp)
	.loc 1 1381 0
	movq	%rsp, %r9
	.loc 1 1377 0
	movl	68(%rbp), %ecx
	.loc 1 1381 0
	movl	$SB_audio_callback, %r8d
	movl	$.LC0, %edx
	movq	%rbp, %rdi
	.loc 1 1377 0
	sall	%cl, %r12d
	.loc 1 1381 0
	movq	%rbp, %rcx
	.loc 1 1377 0
	movl	%r12d, 4(%rsp)
	.loc 1 1378 0
	movl	80(%rbp), %eax
	.loc 1 1379 0
	movl	$0, 12(%rsp)
	.loc 1 1378 0
	movl	%eax, 8(%rsp)
	.loc 1 1381 0
	movq	496(%rbp), %rsi
	call	AUD_open_out
	movq	%rax, 496(%rbp)
	jmp	.L443
.LBE286:
.LFE222:
	.size	SB_load, .-SB_load
	.section	.rodata
	.type	dsp_write_ports.0, @object
	.size	dsp_write_ports.0, 2
dsp_write_ports.0:
	.byte	6
	.byte	12
	.type	dsp_read_ports.1, @object
	.size	dsp_read_ports.1, 6
dsp_read_ports.1:
	.byte	6
	.byte	10
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.section	.rodata.str1.1
.LC27:
	.string	"bad irq %d\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"warning: Could not create auxiliary timer\n"
	.section	.rodata.str1.1
.LC25:
	.string	"No audio state\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"Could not allocate memory for SB16 (%zu bytes)\n"
	.text
	.p2align 4,,15
.globl SB16_init
	.type	SB16_init, @function
SB16_init:
.LFB223:
	.loc 1 1398 0
	pushq	%r12
.LCFI40:
	.loc 1 1404 0
	testq	%rdi, %rdi
	.loc 1 1398 0
	movq	%rdi, %r12
	pushq	%rbp
.LCFI41:
	pushq	%rbx
.LCFI42:
	.loc 1 1398 0
	movq	%rsi, %rbx
	.loc 1 1404 0
	je	.L472
	.loc 1 1409 0
	movl	$776, %edi
	call	qemu_mallocz
	.loc 1 1410 0
	testq	%rax, %rax
	.loc 1 1409 0
	movq	%rax, %rbp
	.loc 1 1410 0
	je	.L473
	.loc 1 1416 0
	movl	$-1, 112(%rax)
	.loc 1 1417 0
	movq	%rbx, 32(%rax)
	.loc 1 1418 0
	movl	conf+8(%rip), %edx
	movl	%edx, 40(%rax)
	.loc 1 1419 0
	movl	conf+12(%rip), %esi
	movl	%esi, 44(%rax)
	.loc 1 1420 0
	movl	conf+16(%rip), %edi
	movl	%edi, 48(%rax)
	.loc 1 1421 0
	movl	conf+20(%rip), %eax
	movl	%eax, 52(%rbp)
	.loc 1 1422 0
	movl	conf+4(%rip), %eax
	sall	$8, %eax
	orl	conf(%rip), %eax
.LBB287:
.LBB288:
	.loc 1 121 0
	cmpl	$7, %edx
.LBE288:
.LBE287:
	.loc 1 1422 0
	movl	%eax, 56(%rbp)
.LBB289:
.LBB290:
	.loc 1 124 0
	movl	$4, %eax
	.loc 1 121 0
	je	.L451
	jle	.L474
	cmpl	$9, %edx
	.loc 1 126 0
	movl	$1, %eax
	.loc 1 121 0
	je	.L451
	.loc 1 128 0
	movb	$8, %al
	.loc 1 121 0
	cmpl	$10, %edx
.L470:
	.p2align 4,,3
	je	.L451
	.loc 1 131 0
	movl	$.LC27, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	AUD_log
	movl	44(%rbp), %esi
	movl	48(%rbp), %edi
	movl	$2, %eax
.L451:
.LBE290:
.LBE289:
	.loc 1 120 0
	movb	%al, 644(%rbp)
	.loc 1 1425 0
	movl	$1, %eax
	movl	%esi, %ecx
	movl	%eax, %edx
	.loc 1 1426 0
	movb	$64, 646(%rbp)
	.loc 1 1428 0
	movb	$1, 140(%rbp)
	.loc 1 1425 0
	sall	%cl, %edx
	movl	%edi, %ecx
	.loc 1 1429 0
	movb	$-8, 144(%rbp)
	.loc 1 1425 0
	sall	%cl, %eax
	.loc 1 1431 0
	movq	%rbp, %rdi
	.loc 1 1425 0
	orl	%eax, %edx
	movb	%dl, 645(%rbp)
	.loc 1 1431 0
	call	reset_mixer
	.loc 1 1432 0
	movq	vm_clock(%rip), %rdi
	movq	%rbp, %rdx
	movl	$aux_timer, %esi
	call	qemu_new_timer
	.loc 1 1433 0
	testq	%rax, %rax
	.loc 1 1432 0
	movq	%rax, 504(%rbp)
	.loc 1 1433 0
	je	.L475
.L457:
	.loc 1 1437 0
	xorl	%ebx, %ebx
.L461:
	.loc 1 1438 0
	movslq	%ebx,%rax
	movq	%rbp, %r8
	movl	$dsp_write, %ecx
	movzbl	dsp_write_ports.0(%rax), %edi
	movl	$1, %edx
	movl	$1, %esi
	addl	52(%rbp), %edi
	.loc 1 1437 0
	incl	%ebx
	.loc 1 1438 0
	call	register_ioport_write
	.loc 1 1437 0
	cmpl	$1, %ebx
	jle	.L461
	.loc 1 1441 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L465:
	.loc 1 1442 0
	movslq	%ebx,%rax
	movq	%rbp, %r8
	movl	$dsp_read, %ecx
	movzbl	dsp_read_ports.1(%rax), %edi
	movl	$1, %edx
	movl	$1, %esi
	addl	52(%rbp), %edi
	.loc 1 1441 0
	incl	%ebx
	.loc 1 1442 0
	call	register_ioport_read
	.loc 1 1441 0
	cmpl	$5, %ebx
	jle	.L465
	.loc 1 1445 0
	movl	52(%rbp), %edi
	movq	%rbp, %r8
	movl	$mixer_write_indexb, %ecx
	movl	$1, %edx
	movl	$1, %esi
	addl	$4, %edi
	call	register_ioport_write
	.loc 1 1446 0
	movl	52(%rbp), %edi
	movq	%rbp, %r8
	movl	$mixer_write_indexw, %ecx
	movl	$2, %edx
	movl	$1, %esi
	addl	$4, %edi
	call	register_ioport_write
	.loc 1 1447 0
	movl	52(%rbp), %edi
	movq	%rbp, %r8
	movl	$mixer_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	addl	$5, %edi
	call	register_ioport_read
	.loc 1 1448 0
	movl	52(%rbp), %edi
	movq	%rbp, %r8
	movl	$mixer_write_datab, %ecx
	movl	$1, %edx
	movl	$1, %esi
	addl	$5, %edi
	call	register_ioport_write
	.loc 1 1450 0
	movl	48(%rbp), %edi
	movq	%rbp, %rdx
	movl	$SB_read_DMA, %esi
	call	DMA_register_channel
	.loc 1 1451 0
	movl	44(%rbp), %edi
	movq	%rbp, %rdx
	movl	$SB_read_DMA, %esi
	call	DMA_register_channel
	.loc 1 1454 0
	movq	%rbp, %r9
	.loc 1 1452 0
	movl	$1, 124(%rbp)
	.loc 1 1454 0
	movl	$SB_load, %r8d
	movl	$SB_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 1455 0
	movq	%rbp, %rdx
	movq	%r12, %rdi
	movl	$.LC0, %esi
	call	AUD_register_card
	.loc 1 1457 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 1456 0
	xorl	%eax, %eax
	.loc 1 1457 0
	ret
.L474:
.LBB291:
.LBB292:
	.loc 1 122 0
	movb	$2, %al
	.loc 1 121 0
	cmpl	$5, %edx
	jmp	.L470
.L475:
.LBE292:
.LBE291:
	.loc 1 1434 0
	movl	$.LC28, %esi
	movl	$.LC0, %edi
	call	AUD_log
	jmp	.L457
.L472:
	.loc 1 1405 0
	xorl	%eax, %eax
	movl	$.LC25, %esi
	movl	$.LC0, %edi
	call	AUD_log
	.loc 1 1413 0
	movl	$-1, %eax
.L476:
	.loc 1 1457 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L473:
	.loc 1 1411 0
	xorl	%eax, %eax
	movl	$776, %edx
	movl	$.LC26, %esi
	movl	$.LC0, %edi
	call	AUD_log
	.loc 1 1413 0
	movl	$-1, %eax
	jmp	.L476
.LFE223:
	.size	SB16_init, .-SB16_init
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI0-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI1-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI3-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI4-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI7-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI10-.LFB211
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI16-.LFB212
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI17-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI19-.LFB215
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI22-.LFB216
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI24-.LCFI22
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI26-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x1050
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI33-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI36-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI40-.LFB223
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE36:
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI0-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI1-.LFB200
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI3-.LFB201
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI4-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI7-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI10-.LFB211
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI16-.LFB212
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI17-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI19-.LFB215
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI22-.LFB216
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI24-.LCFI22
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.byte	0x4
	.long	.LCFI26-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x1050
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI33-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI36-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI40-.LFB223
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE37:
	.file 4 "../audio/audio.h"
	.file 5 "../qemu-common.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "../argos-tag.h"
	.file 9 "../argos.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "../cpu-all.h"
	.file 15 "../qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1da9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF195
	.byte	0x1
	.long	.LASF196
	.long	.LASF197
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
	.byte	0xd
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xd
	.byte	0x8e
	.long	0x4d
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x6e
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0xc6
	.long	0x4d
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x286
	.long	.LASF44
	.byte	0xd8
	.byte	0xb
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF14
	.byte	0xc
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF15
	.byte	0xc
	.value	0x115
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0xc
	.value	0x116
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0xc
	.value	0x117
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0xc
	.value	0x118
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0xc
	.value	0x119
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0xc
	.value	0x11a
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0xc
	.value	0x11b
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0xc
	.value	0x11c
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0xc
	.value	0x11e
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0xc
	.value	0x11f
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0xc
	.value	0x120
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0xc
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0xc
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0xc
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0xc
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0xc
	.value	0x12c
	.long	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0xc
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0xc
	.value	0x131
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0xc
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0xc
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0xc
	.value	0x13f
	.long	0x95
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0xc
	.value	0x148
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0xc
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xc
	.value	0x14a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0xc
	.value	0x14b
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xc
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xc
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xc
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0xb4
	.uleb128 0x8
	.long	0x2c4
	.long	.LASF45
	.byte	0x18
	.byte	0xc
	.byte	0xba
	.uleb128 0xb
	.long	.LASF46
	.byte	0xc
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0xc
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0xc
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x28d
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xc
	.long	0x2e0
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x286
	.uleb128 0xc
	.long	0x2f6
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x31
	.long	0x75
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x34
	.long	0x46
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
	.byte	0x9
	.byte	0x2f
	.long	0x30c
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x34
	.long	0x30c
	.uleb128 0x8
	.long	0x36b
	.long	.LASF57
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.uleb128 0xb
	.long	.LASF58
	.byte	0x8
	.byte	0x38
	.long	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.byte	0x39
	.long	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x3d
	.long	0x342
	.uleb128 0x7
	.byte	0x8
	.long	0x36b
	.uleb128 0xc
	.long	0x38c
	.long	0x2f6
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x392
	.uleb128 0x5
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x6d
	.long	0x3a2
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x73
	.long	0x3b3
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x77
	.long	0x3c4
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.uleb128 0x2
	.long	.LASF64
	.byte	0x5
	.byte	0x7b
	.long	0x3d5
	.uleb128 0x7
	.byte	0x8
	.long	0x3db
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.long	0x3a8
	.uleb128 0xf
	.long	0x414
	.byte	0x4
	.byte	0x4
	.byte	0x20
	.uleb128 0x10
	.long	.LASF66
	.sleb128 0
	.uleb128 0x10
	.long	.LASF67
	.sleb128 1
	.uleb128 0x10
	.long	.LASF68
	.sleb128 2
	.uleb128 0x10
	.long	.LASF69
	.sleb128 3
	.uleb128 0x10
	.long	.LASF70
	.sleb128 4
	.uleb128 0x10
	.long	.LASF71
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.byte	0x27
	.long	0x3e7
	.uleb128 0x11
	.long	0x460
	.byte	0x10
	.byte	0x4
	.byte	0x34
	.uleb128 0xb
	.long	.LASF73
	.byte	0x4
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF74
	.byte	0x4
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"fmt"
	.byte	0x4
	.byte	0x32
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF75
	.byte	0x4
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x4
	.byte	0x34
	.long	0x41f
	.uleb128 0x2
	.long	.LASF77
	.byte	0x4
	.byte	0x4c
	.long	0x476
	.uleb128 0xe
	.long	.LASF77
	.byte	0x1
	.uleb128 0x11
	.long	0x4a1
	.byte	0x10
	.byte	0x4
	.byte	0x53
	.uleb128 0xb
	.long	.LASF78
	.byte	0x4
	.byte	0x53
	.long	0x4d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF79
	.byte	0x4
	.byte	0x53
	.long	0x4de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x4d8
	.long	.LASF80
	.byte	0x20
	.byte	0x4
	.byte	0x50
	.uleb128 0xb
	.long	.LASF81
	.byte	0x4
	.byte	0x51
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x4
	.byte	0x52
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF83
	.byte	0x4
	.byte	0x53
	.long	0x47c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x4a1
	.uleb128 0x7
	.byte	0x8
	.long	0x4d8
	.uleb128 0x7
	.byte	0x8
	.long	0x397
	.uleb128 0x2
	.long	.LASF80
	.byte	0x4
	.byte	0x54
	.long	0x4a1
	.uleb128 0x2
	.long	.LASF84
	.byte	0xf
	.byte	0x6
	.long	0x500
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.uleb128 0x11
	.long	0x563
	.byte	0x18
	.byte	0x1
	.byte	0x39
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"irq"
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"dma"
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.byte	0x37
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x81a
	.long	.LASF89
	.value	0x308
	.byte	0x1
	.byte	0x3b
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1
	.byte	0x3c
	.long	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"pic"
	.byte	0x1
	.byte	0x3d
	.long	0x81a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"irq"
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"dma"
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.byte	0x41
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"ver"
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF92
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"fmt"
	.byte	0x1
	.byte	0x49
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1
	.byte	0x4a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.long	.LASF97
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF98
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.byte	0x4d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.long	.LASF100
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF101
	.byte	0x1
	.byte	0x50
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.string	"cmd"
	.byte	0x1
	.byte	0x51
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF102
	.byte	0x1
	.byte	0x52
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF103
	.byte	0x1
	.byte	0x53
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.byte	0x54
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.long	.LASF105
	.byte	0x1
	.byte	0x56
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1
	.byte	0x58
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.long	.LASF107
	.byte	0x1
	.byte	0x59
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.byte	0x5a
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x86
	.uleb128 0xb
	.long	.LASF109
	.byte	0x1
	.byte	0x5b
	.long	0x820
	.byte	0x3
	.byte	0x23
	.uleb128 0x87
	.uleb128 0xb
	.long	.LASF110
	.byte	0x1
	.byte	0x5c
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x187
	.uleb128 0xb
	.long	.LASF111
	.byte	0x1
	.byte	0x5d
	.long	0x37c
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xb
	.long	.LASF112
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xb
	.long	.LASF113
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xb
	.long	.LASF114
	.byte	0x1
	.byte	0x61
	.long	0x830
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xb
	.long	.LASF115
	.byte	0x1
	.byte	0x62
	.long	0x840
	.byte	0x3
	.byte	0x23
	.uleb128 0x19e
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.byte	0x63
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0xb
	.long	.LASF117
	.byte	0x1
	.byte	0x64
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d1
	.uleb128 0xb
	.long	.LASF118
	.byte	0x1
	.byte	0x65
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0xb
	.long	.LASF119
	.byte	0x1
	.byte	0x67
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d8
	.uleb128 0xb
	.long	.LASF120
	.byte	0x1
	.byte	0x69
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0xb
	.long	.LASF121
	.byte	0x1
	.byte	0x6a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.long	.LASF122
	.byte	0x1
	.byte	0x6b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0xb
	.long	.LASF123
	.byte	0x1
	.byte	0x6c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0xb
	.long	.LASF124
	.byte	0x1
	.byte	0x6d
	.long	0x850
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x1
	.byte	0x6f
	.long	0x856
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF126
	.byte	0x1
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF127
	.byte	0x1
	.byte	0x72
	.long	0x820
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x3ca
	.uleb128 0xc
	.long	0x830
	.long	0x2f6
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.long	0x840
	.long	0x2f6
	.uleb128 0xd
	.long	0x5b
	.byte	0x9
	.byte	0x0
	.uleb128 0xc
	.long	0x850
	.long	0x2f6
	.uleb128 0xd
	.long	0x5b
	.byte	0x31
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x46b
	.uleb128 0x7
	.byte	0x8
	.long	0x3b9
	.uleb128 0x2
	.long	.LASF89
	.byte	0x1
	.byte	0x73
	.long	0x563
	.uleb128 0x14
	.long	0x89d
	.long	.LASF100
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xa8
	.long	0x89d
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"on"
	.byte	0x1
	.byte	0xa8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x85c
	.uleb128 0x14
	.long	0x8e7
	.long	.LASF128
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF129
	.byte	0x1
	.byte	0xae
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"dma"
	.byte	0x1
	.byte	0xb0
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x14
	.long	0x939
	.long	.LASF130
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF131
	.byte	0x1
	.byte	0xbf
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xc1
	.long	0x89d
	.uleb128 0x19
	.long	0x939
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.long	0x946
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x952
	.long	.LASF132
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x3ca
	.byte	0x0
	.uleb128 0x14
	.long	0x99b
	.long	.LASF133
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xc9
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x17
	.string	"as"
	.byte	0x1
	.byte	0xcc
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x9fe
	.long	.LASF134
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xe2
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF135
	.byte	0x1
	.byte	0xe2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF136
	.byte	0x1
	.byte	0xe2
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.byte	0xee
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xa80
	.long	.LASF137
	.byte	0x1
	.value	0x285
	.byte	0x1
	.long	0x301
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x284
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"hi"
	.byte	0x1
	.value	0x286
	.long	0x2f6
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"lo"
	.byte	0x1
	.value	0x287
	.long	0x2f6
	.uleb128 0x22
	.long	0xa64
	.long	0xa80
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x19
	.long	0xa80
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0xa9d
	.long	.LASF138
	.byte	0x1
	.value	0x17d
	.byte	0x1
	.long	0x2f6
	.byte	0x3
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x17c
	.long	0x89d
	.byte	0x0
	.uleb128 0x26
	.long	0xb85
	.long	.LASF139
	.byte	0x1
	.value	0x35e
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x35d
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	0xae9
	.long	0xb85
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1a
	.long	0xb92
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0xb0d
	.long	0xb9e
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xb46
	.long	0xbc3
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x23
	.long	0xbd1
	.uleb128 0x1d
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x27
	.long	0xbdb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xb67
	.long	0x939
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x1a
	.long	0x946
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0xb85
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x1a
	.long	0xb92
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xb9e
	.long	.LASF140
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x3ca
	.byte	0x0
	.uleb128 0x28
	.long	0xbc3
	.long	.LASF141
	.byte	0x1
	.value	0x175
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x174
	.long	0x89d
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0x174
	.long	0x2f6
	.byte	0x0
	.uleb128 0x28
	.long	0xbe7
	.long	.LASF142
	.byte	0x1
	.value	0x343
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x342
	.long	0x89d
	.uleb128 0x21
	.string	"as"
	.byte	0x1
	.value	0x344
	.long	0x460
	.byte	0x0
	.uleb128 0x26
	.long	0x1275
	.long	.LASF143
	.byte	0x1
	.value	0x378
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x377
	.long	0xa0
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x377
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x377
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x379
	.long	0x89d
	.uleb128 0x2a
	.long	.LASF145
	.byte	0x1
	.value	0x37a
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	0xc8e
	.long	0x1275
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x23
	.long	0x1283
	.uleb128 0x1a
	.long	0x128d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2c
	.long	0x1299
	.quad	.L73
	.uleb128 0x2c
	.long	0x12a1
	.quad	.L150
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xcb2
	.long	0xb9e
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xcd6
	.long	0xb9e
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xcfa
	.long	0xb9e
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xd1e
	.long	0xb9e
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xd42
	.long	0xb9e
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xd66
	.long	0xb9e
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xd8a
	.long	0xb9e
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xdae
	.long	0xb9e
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xdd2
	.long	0xb9e
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0xdf3
	.long	0x939
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x1a
	.long	0x946
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2d
	.long	0xe32
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x27
	.long	0x12aa
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.long	0xb9e
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x1a
	.long	0xbb6
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xe58
	.long	0xb9e
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x1a
	.long	0xbb6
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0xe92
	.long	0x12b6
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x23
	.long	0x12c4
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x27
	.long	0x12ce
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	0x12d9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.long	0x12e4
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xeb1
	.long	0xa80
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0xed0
	.long	0xa80
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0xeef
	.long	0xa80
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0xf3a
	.long	0x1322
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x23
	.long	0x1330
	.uleb128 0x1a
	.long	0x133a
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	0x1346
	.uleb128 0x1a
	.long	0x1351
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x27
	.long	0x1362
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xf59
	.long	0xa80
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0xfc4
	.long	0x137d
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x23
	.long	0x138f
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x27
	.long	0x1399
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x13a4
	.uleb128 0x22
	.long	0xfa7
	.long	0xa80
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x19
	.long	0xa80
	.quad	.LBB115
	.quad	.LBE115
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xfe2
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x27
	.long	0x1370
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1001
	.long	0xa80
	.quad	.LBB122
	.quad	.LBE122
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x1025
	.long	0xb9e
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x2f
	.long	0x1045
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x27
	.long	0x12f0
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x12fc
	.uleb128 0x2e
	.long	0x1308
	.uleb128 0x2e
	.long	0x1314
	.byte	0x0
	.uleb128 0x22
	.long	0x1064
	.long	0xa80
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x1083
	.long	0xa80
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x10a9
	.long	0xb9e
	.quad	.LBB139
	.quad	.LBE139
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x1a
	.long	0xbb6
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x10cd
	.long	0xb9e
	.quad	.LBB142
	.quad	.LBE142
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0x10ec
	.long	0xa80
	.quad	.LBB144
	.quad	.LBE144
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x110b
	.long	0xa80
	.quad	.LBB148
	.quad	.LBE148
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x112c
	.long	0x939
	.quad	.LBB151
	.quad	.LBE151
	.uleb128 0x1a
	.long	0x946
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x114b
	.long	0xa80
	.quad	.LBB154
	.quad	.LBE154
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x116a
	.long	0xa80
	.quad	.LBB156
	.quad	.LBE156
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x1189
	.long	0xa80
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x11a8
	.long	0xa80
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x11c7
	.long	0xa80
	.quad	.LBB166
	.quad	.LBE166
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x11ed
	.long	0xb9e
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x1a
	.long	0xbb6
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x22
	.long	0x120c
	.long	0xa80
	.quad	.LBB173
	.quad	.LBE173
	.uleb128 0x23
	.long	0xa92
	.byte	0x0
	.uleb128 0x22
	.long	0x1230
	.long	0xb9e
	.quad	.LBB177
	.quad	.LBE177
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x22
	.long	0x1254
	.long	0xb9e
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.uleb128 0x19
	.long	0xb9e
	.quad	.LBB193
	.quad	.LBE193
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x23
	.long	0xbb6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x12b6
	.long	.LASF146
	.byte	0x1
	.value	0x188
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x187
	.long	0x89d
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.value	0x187
	.long	0x2f6
	.uleb128 0x30
	.long	.LASF147
	.byte	0x1
	.value	0x27d
	.uleb128 0x30
	.long	.LASF148
	.byte	0x1
	.value	0x280
	.uleb128 0x31
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x245
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x1322
	.long	.LASF149
	.byte	0x1
	.value	0x293
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x292
	.long	0x89d
	.uleb128 0x21
	.string	"d0"
	.byte	0x1
	.value	0x294
	.long	0x3f
	.uleb128 0x21
	.string	"d1"
	.byte	0x1
	.value	0x294
	.long	0x3f
	.uleb128 0x21
	.string	"d2"
	.byte	0x1
	.value	0x294
	.long	0x3f
	.uleb128 0x31
	.uleb128 0x32
	.long	.LASF73
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x32
	.long	.LASF150
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x32
	.long	.LASF151
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x32
	.long	.LASF152
	.byte	0x1
	.value	0x2fc
	.long	0xa8
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x137d
	.long	.LASF153
	.byte	0x1
	.value	0x116
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x115
	.long	0x89d
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.value	0x115
	.long	0x2f6
	.uleb128 0x25
	.string	"d0"
	.byte	0x1
	.value	0x115
	.long	0x2f6
	.uleb128 0x33
	.long	.LASF136
	.byte	0x1
	.value	0x115
	.long	0x3f
	.uleb128 0x34
	.long	0x136f
	.uleb128 0x21
	.string	"tmp"
	.byte	0x1
	.value	0x129
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x21
	.string	"as"
	.byte	0x1
	.value	0x15d
	.long	0x460
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x13b0
	.long	.LASF154
	.byte	0x1
	.value	0x28c
	.byte	0x1
	.long	0x301
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x28b
	.long	0x89d
	.uleb128 0x21
	.string	"lo"
	.byte	0x1
	.value	0x28d
	.long	0x2f6
	.uleb128 0x21
	.string	"hi"
	.byte	0x1
	.value	0x28e
	.long	0x2f6
	.byte	0x0
	.uleb128 0x1e
	.long	0x145b
	.long	.LASF155
	.byte	0x1
	.value	0x3cd
	.byte	0x1
	.long	0x30c
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x3cc
	.long	0xa0
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x3cc
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x3cc
	.long	0x376
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x3ce
	.long	0x89d
	.uleb128 0x2a
	.long	.LASF145
	.byte	0x1
	.value	0x3cf
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.long	.LASF156
	.byte	0x1
	.value	0x3cf
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"ack"
	.byte	0x1
	.value	0x3cf
	.long	0x3f
	.uleb128 0x35
	.long	.LASF157
	.byte	0x1
	.value	0x40c
	.quad	.L346
	.uleb128 0x19
	.long	0xb85
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x1a
	.long	0xb92
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x1493
	.long	.LASF158
	.byte	0x1
	.value	0x412
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x411
	.long	0x89d
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x413
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x26
	.long	0x14e7
	.long	.LASF159
	.byte	0x1
	.value	0x430
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x42f
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x42f
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x42f
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x431
	.long	0x89d
	.byte	0x0
	.uleb128 0x26
	.long	0x159a
	.long	.LASF160
	.byte	0x1
	.value	0x437
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x436
	.long	0xa0
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x436
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x436
	.long	0x30c
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x438
	.long	0x89d
	.uleb128 0x2f
	.long	0x156b
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x21
	.string	"irq"
	.byte	0x1
	.value	0x444
	.long	0x3f
	.uleb128 0x19
	.long	0x159a
	.quad	.LBB207
	.quad	.LBE207
	.uleb128 0x23
	.long	0x15ab
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x20
	.string	"dma"
	.byte	0x1
	.value	0x44e
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF87
	.byte	0x1
	.value	0x44e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x15b7
	.long	.LASF161
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x37
	.long	.LASF162
	.byte	0x1
	.byte	0x88
	.long	0x3f
	.byte	0x0
	.uleb128 0x26
	.long	0x1601
	.long	.LASF163
	.byte	0x1
	.value	0x46f
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x46e
	.long	0xa0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x46e
	.long	0x30c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x46e
	.long	0x30c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1e
	.long	0x1657
	.long	.LASF164
	.byte	0x1
	.value	0x475
	.byte	0x1
	.long	0x30c
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x474
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.value	0x474
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x474
	.long	0x376
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x476
	.long	0x89d
	.byte	0x0
	.uleb128 0x1e
	.long	0x17a8
	.long	.LASF165
	.byte	0x1
	.value	0x4a8
	.byte	0x1
	.long	0x3f
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x4a7
	.long	0xa0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF166
	.byte	0x1
	.value	0x4a7
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF167
	.byte	0x1
	.value	0x4a7
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF136
	.byte	0x1
	.value	0x4a7
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x4a9
	.long	0x89d
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.value	0x4aa
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF169
	.byte	0x1
	.value	0x4aa
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.value	0x4aa
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF171
	.byte	0x1
	.value	0x4aa
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	0x178a
	.long	0x17a8
	.quad	.LBB218
	.quad	.LBE218
	.uleb128 0x23
	.long	0x17ba
	.uleb128 0x23
	.long	0x17c4
	.uleb128 0x1a
	.long	0x17d0
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.long	0x17dc
	.uleb128 0x23
	.long	0x17e8
	.uleb128 0x2f
	.long	0x1746
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x27
	.long	0x17f4
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	0x1800
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.long	0x180c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x1d
	.quad	.LBB221
	.quad	.LBE221
	.uleb128 0x27
	.long	0x1819
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x1825
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x1831
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.quad	.LBB222
	.quad	.LBE222
	.uleb128 0x2e
	.long	0x183e
	.uleb128 0x2e
	.long	0x1849
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x939
	.quad	.LBB223
	.quad	.LBE223
	.uleb128 0x1a
	.long	0x946
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1857
	.long	.LASF172
	.byte	0x1
	.value	0x487
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x485
	.long	0x89d
	.uleb128 0x33
	.long	.LASF166
	.byte	0x1
	.value	0x485
	.long	0x3f
	.uleb128 0x33
	.long	.LASF167
	.byte	0x1
	.value	0x485
	.long	0x3f
	.uleb128 0x33
	.long	.LASF136
	.byte	0x1
	.value	0x486
	.long	0x3f
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x486
	.long	0x3f
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.value	0x488
	.long	0x3f
	.uleb128 0x21
	.string	"net"
	.byte	0x1
	.value	0x488
	.long	0x3f
	.uleb128 0x32
	.long	.LASF174
	.byte	0x1
	.value	0x489
	.long	0x1857
	.uleb128 0x31
	.uleb128 0x32
	.long	.LASF175
	.byte	0x1
	.value	0x48f
	.long	0x3f
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.value	0x490
	.long	0x3f
	.uleb128 0x32
	.long	.LASF177
	.byte	0x1
	.value	0x491
	.long	0x2d
	.uleb128 0x31
	.uleb128 0x21
	.string	"ta"
	.byte	0x1
	.value	0x493
	.long	0x3f
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x493
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1868
	.long	0x2f6
	.uleb128 0x38
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0x26
	.long	0x18ae
	.long	.LASF178
	.byte	0x1
	.value	0x4e3
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x4e2
	.long	0xa0
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF171
	.byte	0x1
	.value	0x4e2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x4e4
	.long	0x89d
	.byte	0x0
	.uleb128 0x26
	.long	0x1a0e
	.long	.LASF179
	.byte	0x1
	.value	0x4e9
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x4e8
	.long	0x3e1
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x4e8
	.long	0xa0
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x4ea
	.long	0x89d
	.uleb128 0x22
	.long	0x1915
	.long	0x1a0e
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x23
	.long	0x1a1b
	.uleb128 0x23
	.long	0x1a24
	.byte	0x0
	.uleb128 0x22
	.long	0x1939
	.long	0x1a3a
	.quad	.LBB228
	.quad	.LBE228
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x22
	.long	0x195d
	.long	0x1a3a
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x22
	.long	0x1981
	.long	0x1a3a
	.quad	.LBB232
	.quad	.LBE232
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x22
	.long	0x19a5
	.long	0x1a3a
	.quad	.LBB234
	.quad	.LBE234
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x22
	.long	0x19c9
	.long	0x1a3a
	.quad	.LBB236
	.quad	.LBE236
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x22
	.long	0x19ed
	.long	0x1a3a
	.quad	.LBB238
	.quad	.LBE238
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.uleb128 0x19
	.long	0x1a3a
	.quad	.LBB240
	.quad	.LBE240
	.uleb128 0x23
	.long	0x1a47
	.uleb128 0x23
	.long	0x1a50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1a2f
	.long	.LASF180
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"f"
	.byte	0x3
	.byte	0x1e
	.long	0x3e1
	.uleb128 0x1c
	.string	"pv"
	.byte	0x3
	.byte	0x1e
	.long	0x1a2f
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x1a35
	.uleb128 0x5
	.long	0x30c
	.uleb128 0x1b
	.long	0x1a5b
	.long	.LASF181
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x3e1
	.uleb128 0x1c
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x38c
	.byte	0x0
	.uleb128 0x1e
	.long	0x1bf1
	.long	.LASF182
	.byte	0x1
	.value	0x51e
	.byte	0x1
	.long	0x3f
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x51d
	.long	0x3e1
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF131
	.byte	0x1
	.value	0x51d
	.long	0xa0
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF183
	.byte	0x1
	.value	0x51d
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x51f
	.long	0x89d
	.uleb128 0x22
	.long	0x1ad4
	.long	0x1bf1
	.quad	.LBB242
	.quad	.LBE242
	.uleb128 0x23
	.long	0x1bfe
	.uleb128 0x23
	.long	0x1c07
	.byte	0x0
	.uleb128 0x22
	.long	0x1af8
	.long	0x1c18
	.quad	.LBB248
	.quad	.LBE248
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1b1c
	.long	0x1c18
	.quad	.LBB252
	.quad	.LBE252
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1b40
	.long	0x1c18
	.quad	.LBB258
	.quad	.LBE258
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1b64
	.long	0x1c18
	.quad	.LBB264
	.quad	.LBE264
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1b88
	.long	0x1c18
	.quad	.LBB272
	.quad	.LBE272
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1bac
	.long	0x1c18
	.quad	.LBB276
	.quad	.LBE276
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x22
	.long	0x1bd0
	.long	0x1c18
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x23
	.long	0x1c25
	.uleb128 0x23
	.long	0x1c2e
	.byte	0x0
	.uleb128 0x1d
	.quad	.LBB286
	.quad	.LBE286
	.uleb128 0x20
	.string	"as"
	.byte	0x1
	.value	0x55c
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c12
	.long	.LASF184
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"f"
	.byte	0x3
	.byte	0x32
	.long	0x3e1
	.uleb128 0x1c
	.string	"pv"
	.byte	0x3
	.byte	0x32
	.long	0x1c12
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x30c
	.uleb128 0x1b
	.long	0x1c39
	.long	.LASF185
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x3e1
	.uleb128 0x1c
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0x1c39
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x2f6
	.uleb128 0x39
	.long	0x1cdf
	.byte	0x1
	.long	.LASF198
	.byte	0x1
	.value	0x576
	.byte	0x1
	.long	0x3f
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF81
	.byte	0x1
	.value	0x575
	.long	0x4e4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"pic"
	.byte	0x1
	.value	0x575
	.long	0x81a
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x577
	.long	0x89d
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x578
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF186
	.byte	0x1
	.value	0x579
	.long	0x1cef
	.byte	0x9
	.byte	0x3
	.quad	dsp_write_ports.0
	.uleb128 0x2a
	.long	.LASF187
	.byte	0x1
	.value	0x57a
	.long	0x1d04
	.byte	0x9
	.byte	0x3
	.quad	dsp_read_ports.1
	.uleb128 0x19
	.long	0x1d09
	.quad	.LBB287
	.quad	.LBE287
	.uleb128 0x23
	.long	0x1d1a
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x1cef
	.long	0x392
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.long	0x1cdf
	.uleb128 0xc
	.long	0x1d04
	.long	0x392
	.uleb128 0xd
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x5
	.long	0x1cf4
	.uleb128 0x36
	.long	0x1d26
	.long	.LASF188
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x1c
	.string	"irq"
	.byte	0x1
	.byte	0x77
	.long	0x3f
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF189
	.byte	0xb
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF190
	.byte	0xb
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF191
	.byte	0xe
	.value	0x376
	.long	0x1c39
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF192
	.byte	0xf
	.byte	0x12
	.long	0x1d5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.long	0x4f5
	.uleb128 0x3a
	.long	.LASF193
	.byte	0xf
	.byte	0x1c
	.long	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x1d7e
	.long	0x69
	.uleb128 0xd
	.long	0x5b
	.byte	0x2c
	.byte	0x0
	.uleb128 0x17
	.string	"e3"
	.byte	0x1
	.byte	0x30
	.long	0x1d92
	.byte	0x9
	.byte	0x3
	.quad	e3
	.uleb128 0x5
	.long	0x1d6e
	.uleb128 0x3c
	.long	.LASF194
	.byte	0x1
	.byte	0x39
	.long	0x506
	.byte	0x9
	.byte	0x3
	.quad	conf
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1dad
	.long	0x1c3f
	.string	"SB16_init"
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
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	.LBB102-.Ltext0
	.quad	.LBE102-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB112-.Ltext0
	.quad	.LBE112-.Ltext0
	.quad	.LBB132-.Ltext0
	.quad	.LBE132-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB128-.Ltext0
	.quad	.LBE128-.Ltext0
	.quad	.LBB150-.Ltext0
	.quad	.LBE150-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB206-.Ltext0
	.quad	.LBE206-.Ltext0
	.quad	.LBB213-.Ltext0
	.quad	.LBE213-.Ltext0
	.quad	.LBB209-.Ltext0
	.quad	.LBE209-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB219-.Ltext0
	.quad	.LBE219-.Ltext0
	.quad	.LBB220-.Ltext0
	.quad	.LBE220-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF78:
	.string	"le_next"
.LASF96:
	.string	"dma_auto"
.LASF120:
	.string	"dma_running"
.LASF167:
	.string	"dma_pos"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF114:
	.string	"in2_data"
.LASF23:
	.string	"_IO_save_base"
.LASF194:
	.string	"conf"
.LASF148:
	.string	"exit"
.LASF31:
	.string	"_cur_column"
.LASF41:
	.string	"_mode"
.LASF124:
	.string	"voice"
.LASF69:
	.string	"AUD_FMT_S16"
.LASF2:
	.string	"long int"
.LASF132:
	.string	"qemu_irq_raise"
.LASF129:
	.string	"hold"
.LASF138:
	.string	"dsp_get_data"
.LASF161:
	.string	"irq_of_magic"
.LASF45:
	.string	"_IO_marker"
.LASF59:
	.string	"netidx"
.LASF131:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF169:
	.string	"copy"
.LASF183:
	.string	"version_id"
.LASF149:
	.string	"complete"
.LASF97:
	.string	"block_size"
.LASF65:
	.string	"IRQState"
.LASF153:
	.string	"dma_cmd"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF88:
	.string	"port"
.LASF157:
	.string	"error"
.LASF122:
	.string	"align"
.LASF186:
	.string	"dsp_write_ports"
.LASF6:
	.string	"unsigned char"
.LASF60:
	.string	"argos_rtag_t"
.LASF100:
	.string	"speaker"
.LASF67:
	.string	"AUD_FMT_S8"
.LASF57:
	.string	"argos_rtag"
.LASF160:
	.string	"mixer_write_datab"
.LASF81:
	.string	"audio"
.LASF144:
	.string	"nport"
.LASF116:
	.string	"test_reg"
.LASF43:
	.string	"_IO_lock_t"
.LASF68:
	.string	"AUD_FMT_U16"
.LASF62:
	.string	"QEMUFile"
.LASF115:
	.string	"out_data"
.LASF55:
	.string	"argos_paddr_t"
.LASF66:
	.string	"AUD_FMT_U8"
.LASF15:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"double"
.LASF109:
	.string	"csp_regs"
.LASF108:
	.string	"csp_mode"
.LASF75:
	.string	"endianness"
.LASF48:
	.string	"_pos"
.LASF189:
	.string	"stdin"
.LASF113:
	.string	"csp_reg83w"
.LASF26:
	.string	"_markers"
.LASF150:
	.string	"samples"
.LASF151:
	.string	"bytes"
.LASF80:
	.string	"QEMUSoundCard"
.LASF188:
	.string	"magic_of_irq"
.LASF107:
	.string	"csp_value"
.LASF154:
	.string	"dsp_get_hilo"
.LASF87:
	.string	"hdma"
.LASF175:
	.string	"left"
.LASF42:
	.string	"_unused2"
.LASF95:
	.string	"fmt_bits"
.LASF99:
	.string	"time_const"
.LASF196:
	.string	"/home/remco/Projects/Argos/src/hw/sb16.c"
.LASF178:
	.string	"SB_audio_callback"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF102:
	.string	"use_hdma"
.LASF166:
	.string	"nchan"
.LASF181:
	.string	"qemu_put_8s"
.LASF30:
	.string	"_old_offset"
.LASF184:
	.string	"qemu_get_be32s"
.LASF156:
	.string	"retval"
.LASF182:
	.string	"SB_load"
.LASF105:
	.string	"v2x6"
.LASF159:
	.string	"mixer_write_indexb"
.LASF3:
	.string	"long long int"
.LASF126:
	.string	"mixer_nreg"
.LASF163:
	.string	"mixer_write_indexw"
.LASF20:
	.string	"_IO_write_end"
.LASF94:
	.string	"fmt_signed"
.LASF128:
	.string	"control"
.LASF118:
	.string	"nzero"
.LASF106:
	.string	"csp_param"
.LASF197:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF77:
	.string	"SWVoiceOut"
.LASF176:
	.string	"copied"
.LASF21:
	.string	"_IO_buf_base"
.LASF135:
	.string	"mask"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF195:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF133:
	.string	"continue_dma8"
.LASF185:
	.string	"qemu_get_8s"
.LASF112:
	.string	"csp_reg83r"
.LASF56:
	.string	"argos_netidx_t"
.LASF91:
	.string	"in_index"
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
.LASF47:
	.string	"_sbuf"
.LASF89:
	.string	"SB16State"
.LASF125:
	.string	"aux_ts"
.LASF14:
	.string	"_flags"
.LASF71:
	.string	"AUD_FMT_S32"
.LASF70:
	.string	"AUD_FMT_U32"
.LASF83:
	.string	"entries"
.LASF98:
	.string	"fifo"
.LASF93:
	.string	"fmt_stereo"
.LASF103:
	.string	"highspeed"
.LASF74:
	.string	"nchannels"
.LASF63:
	.string	"QEMUTimer"
.LASF54:
	.string	"long double"
.LASF119:
	.string	"left_till_irq"
.LASF137:
	.string	"dsp_get_lohi"
.LASF35:
	.string	"_offset"
.LASF121:
	.string	"bytes_per_second"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF50:
	.string	"uint16_t"
.LASF141:
	.string	"dsp_out_data"
.LASF10:
	.string	"__off_t"
.LASF84:
	.string	"QEMUClock"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF190:
	.string	"stdout"
.LASF168:
	.string	"till"
.LASF192:
	.string	"vm_clock"
.LASF111:
	.string	"csp_reg83"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF72:
	.string	"audfmt_e"
.LASF11:
	.string	"__off64_t"
.LASF164:
	.string	"mixer_read"
.LASF76:
	.string	"audsettings_t"
.LASF22:
	.string	"_IO_buf_end"
.LASF139:
	.string	"reset"
.LASF179:
	.string	"SB_save"
.LASF82:
	.string	"name"
.LASF86:
	.string	"ver_hi"
.LASF110:
	.string	"csp_index"
.LASF146:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF142:
	.string	"legacy_reset"
.LASF191:
	.string	"phys_ram_dirty"
.LASF123:
	.string	"audio_free"
.LASF32:
	.string	"_vtable_offset"
.LASF147:
	.string	"warn"
.LASF174:
	.string	"tmpbuf"
.LASF134:
	.string	"dma_cmd8"
.LASF143:
	.string	"dsp_write"
.LASF152:
	.string	"ticks"
.LASF187:
	.string	"dsp_read_ports"
.LASF145:
	.string	"iport"
.LASF170:
	.string	"written"
.LASF177:
	.string	"to_copy"
.LASF193:
	.string	"ticks_per_sec"
.LASF158:
	.string	"reset_mixer"
.LASF16:
	.string	"_IO_read_end"
.LASF101:
	.string	"needed_bytes"
.LASF140:
	.string	"qemu_irq_lower"
.LASF79:
	.string	"le_prev"
.LASF90:
	.string	"card"
.LASF51:
	.string	"uint32_t"
.LASF136:
	.string	"dma_len"
.LASF28:
	.string	"_fileno"
.LASF155:
	.string	"dsp_read"
.LASF61:
	.string	"AudioState"
.LASF171:
	.string	"free"
.LASF73:
	.string	"freq"
.LASF52:
	.string	"float"
.LASF162:
	.string	"magic"
.LASF172:
	.string	"write_audio"
.LASF19:
	.string	"_IO_write_ptr"
.LASF198:
	.string	"SB16_init"
.LASF130:
	.string	"aux_timer"
.LASF12:
	.string	"int64_t"
.LASF104:
	.string	"can_write"
.LASF173:
	.string	"temp"
.LASF117:
	.string	"last_read_byte"
.LASF58:
	.string	"origin"
.LASF92:
	.string	"out_data_len"
.LASF127:
	.string	"mixer_regs"
.LASF85:
	.string	"ver_lo"
.LASF165:
	.string	"SB_read_DMA"
.LASF180:
	.string	"qemu_put_be32s"
.LASF64:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
