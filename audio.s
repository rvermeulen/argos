	.file	"audio.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl nominal_volume
	.data
	.align 16
	.type	nominal_volume, @object
	.size	nominal_volume, 24
nominal_volume:
	.long	0
	.zero	4
	.quad	4294967295
	.quad	4294967295
	.align 32
	.type	drvtab, @object
	.size	drvtab, 32
drvtab:
	.quad	oss_audio_driver
	.quad	sdl_audio_driver
	.quad	no_audio_driver
	.quad	wav_audio_driver
	.align 32
	.type	conf, @object
	.size	conf, 72
conf:
	.long	1
	.long	1
	.long	1
	.long	44100
	.long	2
	.long	3
	.long	0
	.long	1
	.long	1
	.long	1
	.long	44100
	.long	2
	.long	3
	.long	0
	.long	0
	.zero	4
	.long	0
	.long	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"DAC_FIXED_SETTINGS"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Use fixed settings for host DAC"
	.section	.rodata.str1.1
.LC2:
	.string	"DAC_FIXED_FREQ"
.LC3:
	.string	"Frequency for fixed host DAC"
.LC4:
	.string	"DAC_FIXED_FMT"
.LC5:
	.string	"Format for fixed host DAC"
.LC6:
	.string	"DAC_FIXED_CHANNELS"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Number of channels for fixed DAC (1 - mono, 2 - stereo)"
	.section	.rodata.str1.1
.LC8:
	.string	"DAC_VOICES"
.LC9:
	.string	"Number of voices for DAC"
.LC10:
	.string	"ADC_FIXED_SETTINGS"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"Use fixed settings for host ADC"
	.section	.rodata.str1.1
.LC12:
	.string	"ADC_FIXED_FREQ"
.LC13:
	.string	"Frequency for fixed host ADC"
.LC14:
	.string	"ADC_FIXED_FMT"
.LC15:
	.string	"Format for fixed host ADC"
.LC16:
	.string	"ADC_FIXED_CHANNELS"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"Number of channels for fixed ADC (1 - mono, 2 - stereo)"
	.section	.rodata.str1.1
.LC18:
	.string	"ADC_VOICES"
.LC19:
	.string	"Number of voices for ADC"
.LC20:
	.string	"TIMER_PERIOD"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Timer period in HZ (0 - use lowest possible)"
	.section	.rodata.str1.1
.LC22:
	.string	"PLIVE"
.LC23:
	.string	"(undocumented)"
.LC24:
	.string	"LOG_TO_MONITOR"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"print logging messages to montior instead of stderr"
	.data
	.align 32
	.type	audio_options, @object
	.size	audio_options, 672
audio_options:
	.quad	.LC0
	.long	3
	.zero	4
	.quad	conf
	.quad	.LC1
	.quad	0
	.long	0
	.zero	4
	.quad	.LC2
	.long	0
	.zero	4
	.quad	conf+12
	.quad	.LC3
	.quad	0
	.long	0
	.zero	4
	.quad	.LC4
	.long	1
	.zero	4
	.quad	conf+20
	.quad	.LC5
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.long	0
	.zero	4
	.quad	conf+16
	.quad	.LC7
	.quad	0
	.long	0
	.zero	4
	.quad	.LC8
	.long	0
	.zero	4
	.quad	conf+4
	.quad	.LC9
	.quad	0
	.long	0
	.zero	4
	.quad	.LC10
	.long	3
	.zero	4
	.quad	conf+28
	.quad	.LC11
	.quad	0
	.long	0
	.zero	4
	.quad	.LC12
	.long	0
	.zero	4
	.quad	conf+40
	.quad	.LC13
	.quad	0
	.long	0
	.zero	4
	.quad	.LC14
	.long	1
	.zero	4
	.quad	conf+48
	.quad	.LC15
	.quad	0
	.long	0
	.zero	4
	.quad	.LC16
	.long	0
	.zero	4
	.quad	conf+44
	.quad	.LC17
	.quad	0
	.long	0
	.zero	4
	.quad	.LC18
	.long	0
	.zero	4
	.quad	conf+32
	.quad	.LC19
	.quad	0
	.long	0
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	conf+56
	.quad	.LC21
	.quad	0
	.long	0
	.zero	4
	.quad	.LC22
	.long	3
	.zero	4
	.quad	conf+64
	.quad	.LC23
	.quad	0
	.long	0
	.zero	4
	.quad	.LC24
	.long	3
	.zero	4
	.quad	conf+68
	.quad	.LC25
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
	.text
	.p2align 4,,15
	.type	ldebug, @function
ldebug:
.LFB113:
	.file 1 "audio/audio_int.h"
	.loc 1 263 0
	movzbl	%al, %edx 
	subq	$64, %rsp
.LCFI0:
	.loc 1 263 0
	leaq	0(,%rdx,4), %rax
	movl	$.L2, %edx
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
.L2:
	.loc 1 264 0
	addq	$64, %rsp
	ret
.LFE113:
	.size	ldebug, .-ldebug
	.p2align 4,,15
.globl popcount
	.type	popcount, @function
popcount:
.LFB114:
	.file 2 "audio/audio.c"
	.loc 2 125 0
	.loc 2 126 0
	movl	%edi, %eax
	movl	%edi, %edx
	shrl	%eax
	andl	$1431655765, %edx
	andl	$1431655765, %eax
	leal	(%rdx,%rax), %edi
	.loc 2 127 0
	movl	%edi, %eax
	movl	%edi, %edx
	shrl	$2, %eax
	andl	$858993459, %edx
	andl	$858993459, %eax
	leal	(%rdx,%rax), %edi
	.loc 2 128 0
	movl	%edi, %eax
	movl	%edi, %edx
	shrl	$4, %eax
	andl	$252645135, %edx
	andl	$252645135, %eax
	leal	(%rdx,%rax), %edi
	.loc 2 129 0
	movl	%edi, %eax
	movl	%edi, %edx
	shrl	$8, %eax
	andl	$16711935, %edx
	andl	$16711935, %eax
	leal	(%rdx,%rax), %edi
	.loc 2 130 0
	movl	%edi, %eax
	movzwl	%di,%edx
	shrl	$16, %eax
	leal	(%rdx,%rax), %edi
	.loc 2 132 0
	movl	%edi, %eax
	ret
.LFE114:
	.size	popcount, .-popcount
	.p2align 4,,15
.globl lsbindex
	.type	lsbindex, @function
lsbindex:
.LFB115:
	.loc 2 135 0
	.loc 2 135 0
	movl	%edi, %eax
	.loc 2 136 0
	negl	%edi
	andl	%eax, %edi
	decl	%edi
	jmp	popcount
.LFE115:
	.size	lsbindex, .-lsbindex
	.p2align 4,,15
	.type	audio_get_conf_str, @function
audio_get_conf_str:
.LFB124:
	.loc 2 334 0
	movq	%rbx, -16(%rsp)
.LCFI1:
	movq	%rbp, -8(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 2 334 0
	movq	%rsi, %rbp
	movq	%rdx, %rbx
	.loc 2 335 0
	call	getenv
	.loc 2 336 0
	testq	%rax, %rax
	je	.L9
	.loc 2 341 0
	movl	$0, (%rbx)
	.loc 2 344 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L9:
	.loc 2 337 0
	movl	$1, (%rbx)
	.loc 2 338 0
	movq	%rbp, %rax
	.loc 2 344 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE124:
	.size	audio_get_conf_str, .-audio_get_conf_str
	.section	.rodata.str1.1
.LC26:
	.string	"%s: "
	.text
	.p2align 4,,15
.globl AUD_vlog
	.type	AUD_vlog, @function
AUD_vlog:
.LFB125:
	.loc 2 347 0
	movq	%rbx, -16(%rsp)
.LCFI4:
	movq	%rbp, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 2 348 0
	movl	conf+68(%rip), %eax
	.loc 2 347 0
	movq	%rsi, %rbp
	movq	%rdx, %rbx
	.loc 2 348 0
	testl	%eax, %eax
	je	.L11
	.loc 2 349 0
	testq	%rdi, %rdi
	jne	.L15
	.loc 2 353 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	.loc 2 362 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 2 353 0
	jmp	term_vprintf
	.p2align 4,,7
.L11:
	.loc 2 356 0
	testq	%rdi, %rdi
	je	.L14
	.loc 2 357 0
	movq	%rdi, %rdx
	movq	stderr(%rip), %rdi
	movl	$.LC26, %esi
	xorl	%eax, %eax
	call	fprintf
.L14:
	.loc 2 360 0
	movq	stderr(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	.loc 2 362 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 2 360 0
	jmp	vfprintf
	.p2align 4,,7
.L15:
	.loc 2 350 0
	movq	%rdi, %rsi
	xorl	%eax, %eax
	movl	$.LC26, %edi
	call	term_printf
	.loc 2 353 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	.loc 2 362 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 2 353 0
	jmp	term_vprintf
.LFE125:
	.size	AUD_vlog, .-AUD_vlog
	.section	.rodata.str1.1
.LC27:
	.string	"audio"
	.text
	.p2align 4,,15
	.type	dolog, @function
dolog:
.LFB112:
	.loc 1 239 0
	subq	$216, %rsp
.LCFI7:
	.loc 1 239 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L17, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 243 0
	movq	%rdi, %rsi
	.loc 1 239 0
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	.loc 1 243 0
	movl	$.LC27, %edi
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
.L17:
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
.LFE112:
	.size	dolog, .-dolog
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"Bogus audfmt %d returning S16\n"
	.section	.rodata.str1.1
.LC31:
	.string	"S16"
.LC29:
	.string	"U16"
.LC32:
	.string	"U32"
.LC33:
	.string	"S32"
.LC28:
	.string	"U8"
.LC30:
	.string	"S8"
	.text
	.p2align 4,,15
	.type	audio_audfmt_to_string, @function
audio_audfmt_to_string:
.LFB120:
	.loc 2 242 0
	subq	$8, %rsp
.LCFI8:
	.loc 2 243 0
	cmpl	$5, %edi
	ja	.L19
	mov	%edi, %eax
	jmp	*.L26(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L26:
	.quad	.L20
	.quad	.L22
	.quad	.L21
	.quad	.L27
	.quad	.L24
	.quad	.L25
	.text
	.p2align 4,,7
.L19:
	.loc 2 263 0
	movl	%edi, %esi
	xorl	%eax, %eax
	movl	$.LC34, %edi
	call	dolog
.L27:
	.loc 2 264 0
	movl	$.LC31, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L21:
	.loc 2 248 0
	movl	$.LC29, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L24:
	.loc 2 257 0
	movl	$.LC32, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L25:
	.loc 2 260 0
	movl	$.LC33, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L20:
	.loc 2 245 0
	movl	$.LC28, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L22:
	.loc 2 251 0
	movl	$.LC30, %eax
	.loc 2 265 0
	addq	$8, %rsp
	ret
.LFE120:
	.size	audio_audfmt_to_string, .-audio_audfmt_to_string
	.p2align 4,,15
.globl AUD_log
	.type	AUD_log, @function
AUD_log:
.LFB126:
	.loc 2 365 0
	subq	$216, %rsp
.LCFI9:
	.loc 2 365 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rcx, 56(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L29, %edx
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	subq	%rax, %rdx
	leaq	207(%rsp), %rax
	jmp	*%rdx
	movaps	%xmm7, -15(%rax)
	movaps	%xmm6, -31(%rax)
	movaps	%xmm5, -47(%rax)
	movaps	%xmm4, -63(%rax)
	movaps	%xmm3, -79(%rax)
	movaps	%xmm2, -95(%rax)
	movaps	%xmm1, -111(%rax)
	movaps	%xmm0, -127(%rax)
.L29:
	.loc 2 368 0
	leaq	224(%rsp), %rax
	.loc 2 369 0
	movq	%rsp, %rdx
	.loc 2 368 0
	movl	$16, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 2 369 0
	call	AUD_vlog
	.loc 2 370 0
	addq	$216, %rsp
	ret
.LFE126:
	.size	AUD_log, .-AUD_log
	.local	shown.27
	.comm	shown.27,4,4
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"A bug was just triggered in %s\n"
	.section	.rodata.str1.1
.LC39:
	.string	"Context:\n"
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"Save all your work and restart without audio\n"
	.align 8
.LC37:
	.string	"Please send bug report to malc@pulsesoft.com\n"
	.section	.rodata.str1.1
.LC38:
	.string	"I am sorry\n"
	.text
	.p2align 4,,15
.globl audio_bug
	.type	audio_bug, @function
audio_bug:
.LFB116:
	.loc 2 143 0
	.loc 2 144 0
	testl	%esi, %esi
	.loc 2 143 0
	pushq	%rbx
.LCFI10:
	.loc 2 143 0
	movl	%esi, %ebx
	.loc 2 144 0
	jne	.L33
	.loc 2 172 0
	movl	%ebx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L33:
.LBB2:
	.loc 2 147 0
	movq	%rdi, %rdx
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	$.LC35, %esi
	call	AUD_log
	.loc 2 148 0
	movl	shown.27(%rip), %edx
	testl	%edx, %edx
	je	.L34
.L32:
	.loc 2 154 0
	xorl	%eax, %eax
	movl	$.LC39, %esi
	xorl	%edi, %edi
	call	AUD_log
.LBE2:
	.loc 2 172 0
	movl	%ebx, %eax
	popq	%rbx
	ret
.L34:
.LBB3:
	.loc 2 150 0
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	$.LC36, %esi
	.loc 2 149 0
	movl	$1, shown.27(%rip)
	.loc 2 150 0
	call	AUD_log
	.loc 2 151 0
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	$.LC37, %esi
	call	AUD_log
	.loc 2 152 0
	movl	$.LC38, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L32
.LBE3:
.LFE116:
	.size	audio_bug, .-audio_bug
	.section	.rodata.str1.1
.LC40:
	.string	"audio_calloc"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"%s passed invalid arguments to audio_calloc\n"
	.section	.rodata.str1.1
.LC42:
	.string	"nmemb=%d size=%zu (len=%zu)\n"
	.text
	.p2align 4,,15
.globl audio_calloc
	.type	audio_calloc, @function
audio_calloc:
.LFB118:
	.loc 2 195 0
	movq	%rbx, -32(%rsp)
.LCFI11:
	.loc 2 199 0
	movslq	%esi,%rbx
	.loc 2 195 0
	movq	%rbp, -24(%rsp)
.LCFI12:
	movq	%r12, -16(%rsp)
.LCFI13:
	movq	%r13, -8(%rsp)
.LCFI14:
	subq	$40, %rsp
.LCFI15:
	.loc 2 199 0
	imulq	%rdx, %rbx
	.loc 2 200 0
	testl	%esi, %esi
	.loc 2 195 0
	movl	%esi, %r12d
	.loc 2 200 0
	sete	%al
	testq	%rdx, %rdx
	.loc 2 195 0
	movq	%rdi, %r13
	.loc 2 200 0
	sete	%sil
	.loc 2 204 0
	movl	$.LC40, %edi
	.loc 2 195 0
	movq	%rdx, %rbp
	.loc 2 200 0
	orl	%eax, %esi
	.loc 2 201 0
	movl	%r12d, %eax
	shrl	$31, %eax
	.loc 2 200 0
	andl	$1, %esi
	.loc 2 201 0
	orl	%eax, %esi
	.loc 2 202 0
	xorl	%eax, %eax
	cmpq	%rdx, %rbx
	setb	%al
	orl	%eax, %esi
	.loc 2 204 0
	call	audio_bug
	testl	%eax, %eax
	jne	.L37
	.loc 2 211 0
	movq	%rbx, %rdi
	.loc 2 212 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 2 211 0
	jmp	qemu_mallocz
.L37:
	.loc 2 205 0
	movq	%r13, %rdx
	movl	$.LC41, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
	.loc 2 207 0
	movq	%rbx, %r8
	movq	%rbp, %rcx
	movl	%r12d, %edx
	xorl	%eax, %eax
	movl	$.LC42, %esi
	xorl	%edi, %edi
	call	AUD_log
	.loc 2 212 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	xorl	%eax, %eax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE118:
	.size	audio_calloc, .-audio_calloc
	.section	.rodata.str1.1
.LC43:
	.string	"No prefix specified\n"
.LC45:
	.string	"QEMU_"
.LC47:
	.string	"  %s_%s: "
.LC46:
	.string	"default"
.LC48:
	.string	"current"
.LC54:
	.string	"???"
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"Bad value tag for option %s_%s %d\n"
	.section	.rodata.str1.1
.LC56:
	.string	"    %s\n"
.LC50:
	.string	"integer, %s = %d\n"
.LC53:
	.string	"string, %s = %s\n"
.LC52:
	.string	"(not set)"
.LC49:
	.string	"boolean, %s = %d\n"
.LC44:
	.string	"No options\n"
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"format, %s = %s, (one of: U8 S8 U16 S16)\n"
	.text
	.p2align 4,,15
	.type	audio_print_options, @function
audio_print_options:
.LFB127:
	.loc 2 375 0
	pushq	%r14
.LCFI16:
	pushq	%r13
.LCFI17:
	pushq	%r12
.LCFI18:
	pushq	%rbp
.LCFI19:
	movq	%rdi, %rbp
	.loc 2 379 0
	movl	$.LC43, %edi
	.loc 2 375 0
	pushq	%rbx
.LCFI20:
	movq	%rsi, %rbx
	subq	$16, %rsp
.LCFI21:
	.loc 2 378 0
	testq	%rbp, %rbp
	je	.L74
	.loc 2 383 0
	testq	%rsi, %rsi
	je	.L75
.LBB4:
.LBB5:
	.loc 2 216 0
	movl	.LC45(%rip), %eax
	.loc 2 224 0
	movq	%rbp, %rdi
	.loc 2 216 0
	movl	%eax, (%rsp)
	movzwl	.LC45+4(%rip), %eax
	movw	%ax, 4(%rsp)
	.loc 2 224 0
	call	strlen
	.loc 2 225 0
	leaq	6(%rax), %rdi
	.loc 2 224 0
	movq	%rax, %r12
	.loc 2 225 0
	call	qemu_malloc
	.loc 2 227 0
	testq	%rax, %rax
	.loc 2 225 0
	movq	%rax, %r13
	.loc 2 227 0
	je	.L43
.LBB6:
	.loc 2 231 0
	movq	%rsp, %rsi
	movq	%rax, %rdi
	.loc 2 229 0
	leaq	5(%rax), %r14
	.loc 2 231 0
	call	strcpy
	.loc 2 232 0
	movq	%rbp, %rsi
	movq	%r13, %rdi
	.loc 2 234 0
	xorl	%ebp, %ebp
	.loc 2 232 0
	call	strcat
	.loc 2 234 0
	cmpq	%r12, %rbp
	jae	.L43
	call	__ctype_toupper_loc
	movq	%rax, %rcx
	.p2align 4,,7
.L55:
.LBB7:
	.loc 2 235 0
	movsbq	(%r14,%rbp),%rax
	movq	(%rcx), %rdx
	movl	(%rdx,%rax,4), %eax
.LBE7:
	movb	%al, (%r14,%rbp)
	.loc 2 234 0
	incq	%rbp
	cmpq	%r12, %rbp
	jb	.L55
	.p2align 4,,7
.L43:
.LBE6:
.LBE5:
.LBE4:
	.loc 2 390 0
	cmpq	$0, (%rbx)
	je	.L71
	.p2align 4,,7
.L77:
.LBB8:
	.loc 2 392 0
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	movq	%r13, %rsi
	movl	$.LC47, %edi
	.loc 2 391 0
	movl	$.LC46, %ebp
	.loc 2 392 0
	call	printf
	.loc 2 394 0
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L59
	.loc 2 395 0
	movl	(%rax), %ecx
	movl	$.LC48, %eax
	testl	%ecx, %ecx
	cmovne	%rax, %rbp
.L59:
	.loc 2 398 0
	movl	8(%rbx), %eax
	cmpl	$1, %eax
	je	.L63
	jb	.L62
	cmpl	$2, %eax
	je	.L64
	cmpl	$3, %eax
	.p2align 4,,7
	je	.L76
	.loc 2 434 0
	movl	$.LC54, %edi
	call	puts
	.loc 2 435 0
	movl	8(%rbx), %ecx
	movq	(%rbx), %rdx
	movq	%r13, %rsi
	movl	$.LC55, %edi
	xorl	%eax, %eax
	call	dolog
	.p2align 4,,7
.L60:
	.loc 2 439 0
	movq	24(%rbx), %rsi
	movl	$.LC56, %edi
	xorl	%eax, %eax
.LBE8:
	.loc 2 390 0
	addq	$48, %rbx
.LBB9:
	.loc 2 439 0
	call	printf
.LBE9:
	.loc 2 390 0
	cmpq	$0, (%rbx)
	jne	.L77
.L71:
	.loc 2 442 0
	movq	%r13, %rdi
	call	qemu_free
	.loc 2 443 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L62:
.LBB10:
.LBB11:
	.loc 2 408 0
	movq	16(%rbx), %rax
	.loc 2 409 0
	movq	%rbp, %rsi
	movl	$.LC50, %edi
	movl	(%rax), %edx
.L73:
	xorl	%eax, %eax
	call	printf
	jmp	.L60
	.p2align 4,,7
.L64:
.LBE11:
.LBB12:
	.loc 2 426 0
	movq	16(%rbx), %rax
	.loc 2 427 0
	movq	%rbp, %rsi
	movl	$.LC53, %edi
	movq	(%rax), %rdx
	movl	$.LC52, %eax
	testq	%rdx, %rdx
	cmove	%rax, %rdx
.L72:
	xorl	%eax, %eax
	call	printf
	jmp	.L60
	.p2align 4,,7
.L76:
.LBE12:
.LBB13:
	.loc 2 401 0
	movq	16(%rbx), %rax
	.loc 2 402 0
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movl	$.LC49, %edi
	cmpl	$0, (%rax)
	setne	%dl
	jmp	.L73
.L75:
.LBE13:
.LBE10:
	.loc 2 384 0
	movl	$.LC44, %edi
.L74:
	xorl	%eax, %eax
	call	dolog
	.loc 2 443 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L63:
.LBB14:
.LBB15:
	.loc 2 415 0
	movq	16(%rbx), %rax
	.loc 2 416 0
	movl	(%rax), %edi
	call	audio_audfmt_to_string
	movq	%rbp, %rsi
	movq	%rax, %rdx
	movl	$.LC51, %edi
	jmp	.L72
.LBE15:
.LBE14:
.LFE127:
	.size	audio_print_options, .-audio_print_options
	.section	.rodata
	.align 16
	.type	__FUNCTION__.2, @object
	.size	__FUNCTION__.2, 22
__FUNCTION__.2:
	.string	"audio_process_options"
	.section	.rodata.str1.1
.LC57:
	.string	"prefix = NULL\n"
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"Option value pointer for `%s' is not set\n"
	.section	.rodata.str1.1
.LC58:
	.string	"opt = NULL\n"
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"Could not allocate memory for option name `%s'\n"
	.align 8
.LC68:
	.string	"Bad value tag for option `%s' - %d\n"
	.section	.rodata.str1.1
.LC61:
	.string	"u8"
.LC62:
	.string	"u16"
.LC63:
	.string	"u32"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"Bogus audio format `%s' using %s\n"
	.section	.rodata.str1.1
.LC64:
	.string	"s8"
.LC65:
	.string	"s16"
.LC66:
	.string	"s32"
	.text
	.p2align 4,,15
	.type	audio_process_options, @function
audio_process_options:
.LFB128:
	.loc 2 447 0
	pushq	%r15
.LCFI22:
	pushq	%r14
.LCFI23:
	pushq	%r13
.LCFI24:
	movq	%rdi, %r13
	pushq	%r12
.LCFI25:
	pushq	%rbp
.LCFI26:
	movq	%rsi, %rbp
	.loc 2 452 0
	xorl	%esi, %esi
	.loc 2 447 0
	pushq	%rbx
.LCFI27:
	subq	$40, %rsp
.LCFI28:
	.loc 2 449 0
	movl	.LC45(%rip), %eax
	.loc 2 452 0
	testq	%rdi, %rdi
	sete	%sil
	movl	$__FUNCTION__.2, %edi
	.loc 2 449 0
	movl	%eax, 16(%rsp)
	movzwl	.LC45+4(%rip), %eax
	movw	%ax, 20(%rsp)
	.loc 2 452 0
	call	audio_bug
	testl	%eax, %eax
	.loc 2 453 0
	movl	$.LC57, %edi
	.loc 2 452 0
	jne	.L131
	.loc 2 457 0
	xorl	%esi, %esi
	testq	%rbp, %rbp
	movl	$__FUNCTION__.2, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L132
	.loc 2 462 0
	movq	%r13, %rdi
	call	strlen
	movq	%rax, %r15
	.p2align 4,,7
.L128:
	.loc 2 464 0
	cmpq	$0, (%rbp)
	je	.L78
.LBB16:
	.loc 2 468 0
	cmpq	$0, 16(%rbp)
	jne	.L84
	.loc 2 469 0
	movq	(%rbp), %rsi
	movl	$.LC59, %edi
.L130:
	.loc 2 480 0
	xorl	%eax, %eax
.LBE16:
	.loc 2 464 0
	addq	$48, %rbp
.LBB17:
	.loc 2 480 0
	call	dolog
	jmp	.L128
.L132:
.LBE17:
	.loc 2 458 0
	movl	$.LC58, %edi
	.p2align 4,,7
.L131:
	xorl	%eax, %eax
	call	dolog
.L78:
	.loc 2 530 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L84:
.LBB18:
	.loc 2 474 0
	movq	(%rbp), %rdi
	call	strlen
	.loc 2 478 0
	leaq	7(%rax,%r15), %rdi
	call	qemu_malloc
	.loc 2 479 0
	testq	%rax, %rax
	.loc 2 478 0
	movq	%rax, %r12
	.loc 2 479 0
	je	.L133
	.loc 2 485 0
	leaq	16(%rsp), %rsi
	movq	%rax, %rdi
	.loc 2 488 0
	xorl	%ebx, %ebx
	.loc 2 485 0
	call	strcpy
	call	__ctype_toupper_loc
	movq	%rax, %rcx
	.p2align 4,,7
.L97:
.LBB19:
	.loc 2 489 0
	movsbq	(%r13,%rbx),%rax
	movq	(%rcx), %rdx
	movl	(%rdx,%rax,4), %eax
.LBE19:
	movb	%al, 5(%r12,%rbx)
	.loc 2 488 0
	incq	%rbx
	cmpq	%r15, %rbx
	jbe	.L97
	.loc 2 491 0
	movq	%r12, %rdi
	call	strlen
	movw	$95, (%r12,%rax)
	.loc 2 492 0
	movq	(%rbp), %rsi
	movq	%r12, %rdi
	call	strcat
	.loc 2 494 0
	movl	$1, 12(%rsp)
	.loc 2 495 0
	movl	8(%rbp), %edx
	cmpl	$1, %edx
	je	.L105
	jb	.L100
	cmpl	$2, %edx
	.p2align 4,,2
	je	.L121
	cmpl	$3, %edx
	.p2align 4,,7
	jne	.L122
.L100:
.LBB20:
	.loc 2 499 0
	movq	16(%rbp), %r14
.LBB21:
.LBB22:
	.loc 2 319 0
	movq	%r12, %rdi
.LBE22:
	.loc 2 315 0
	movl	(%r14), %ebx
.LBB23:
	.loc 2 319 0
	call	getenv
	.loc 2 320 0
	testq	%rax, %rax
	je	.L101
.LBB24:
.LBB25:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
.LBE25:
.LBE24:
	.loc 2 321 0
	movl	$0, 12(%rsp)
.LBB26:
.LBB27:
	.loc 3 286 0
	call	strtol
.L103:
.LBE27:
.LBE26:
.LBE23:
.LBE21:
	.loc 2 315 0
	movl	%eax, (%r14)
.L98:
.LBE20:
	.loc 2 524 0
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L123
	.loc 2 525 0
	leaq	40(%rbp), %rdx
	movq	%rdx, 32(%rbp)
.L123:
	.loc 2 527 0
	xorl	%eax, %eax
	cmpl	$0, 12(%rsp)
	.loc 2 528 0
	movq	%r12, %rdi
	.loc 2 527 0
	sete	%al
.LBE18:
	.loc 2 464 0
	addq	$48, %rbp
.LBB28:
	.loc 2 527 0
	movl	%eax, (%rdx)
	.loc 2 528 0
	call	qemu_free
	jmp	.L128
.L133:
	.loc 2 480 0
	movq	(%rbp), %rsi
	movl	$.LC60, %edi
	jmp	.L130
.L122:
	.loc 2 519 0
	movq	%r12, %rsi
	movl	$.LC68, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L98
.L101:
.LBB29:
.LBB30:
.LBB31:
	.loc 2 326 0
	movl	%ebx, %eax
	movl	$1, 12(%rsp)
	jmp	.L103
.L105:
.LBE31:
.LBE30:
.LBE29:
.LBB32:
	.loc 2 506 0
	movq	16(%rbp), %rax
.LBB33:
.LBB34:
	.loc 2 306 0
	movq	%r12, %rdi
.LBE34:
.LBE33:
	.loc 2 506 0
	movq	%rax, (%rsp)
.LBB35:
	.loc 2 305 0
	movl	(%rax), %r14d
.LBB36:
	.loc 2 306 0
	call	getenv
	.loc 2 307 0
	testq	%rax, %rax
	.loc 2 306 0
	movq	%rax, %rbx
	.loc 2 307 0
	je	.L129
.LBB37:
.LBB38:
	.loc 2 270 0
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L134
	.loc 2 274 0
	movl	$.LC62, %esi
	movq	%rbx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L111
	.loc 2 275 0
	movl	$0, 12(%rsp)
	movb	$2, %al
.L107:
.LBE38:
.LBE37:
.LBE36:
.LBE35:
	.loc 2 305 0
	movq	(%rsp), %rdx
	movl	%eax, (%rdx)
	jmp	.L98
.L121:
.LBE32:
.LBB39:
	.loc 2 513 0
	movq	16(%rbp), %rbx
	.loc 2 514 0
	leaq	12(%rsp), %rdx
	movq	%r12, %rdi
	movq	(%rbx), %rsi
	call	audio_get_conf_str
	movq	%rax, (%rbx)
	jmp	.L98
.L134:
.LBE39:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
.LBB44:
	.loc 2 271 0
	movl	$0, 12(%rsp)
	jmp	.L107
.L111:
	.loc 2 278 0
	movl	$.LC63, %esi
	movq	%rbx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L113
	.loc 2 279 0
	movb	$4, %al
	movl	$0, 12(%rsp)
	jmp	.L107
.L119:
	.loc 2 295 0
	movl	%r14d, %edi
	call	audio_audfmt_to_string
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$.LC67, %edi
	xorl	%eax, %eax
	call	dolog
.L129:
	.loc 2 297 0
	movl	%r14d, %eax
	movl	$1, 12(%rsp)
	jmp	.L107
.L113:
	.loc 2 282 0
	movl	$.LC64, %esi
	movq	%rbx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L115
	.loc 2 283 0
	movb	$1, %al
	movl	$0, 12(%rsp)
	jmp	.L107
.L115:
	.loc 2 286 0
	movl	$.LC65, %esi
	movq	%rbx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L117
	.loc 2 287 0
	movb	$3, %al
	movl	$0, 12(%rsp)
	jmp	.L107
.L117:
	.loc 2 290 0
	movl	$.LC66, %esi
	movq	%rbx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L119
	.loc 2 291 0
	movb	$5, %al
	movl	$0, 12(%rsp)
	jmp	.L107
.LBE44:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBE28:
.LFE128:
	.size	audio_process_options, .-audio_process_options
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"frequency=%d nchannels=%d fmt="
	.section	.rodata.str1.1
.LC70:
	.string	"invalid(%d)"
.LC71:
	.string	" endianness="
.LC72:
	.string	"little"
.LC74:
	.string	"invalid"
.LC75:
	.string	"\n"
.LC73:
	.string	"big"
	.text
	.p2align 4,,15
	.type	audio_print_settings, @function
audio_print_settings:
.LFB129:
	.loc 2 533 0
	pushq	%rbx
.LCFI29:
	.loc 2 534 0
	movl	4(%rdi), %edx
	.loc 2 533 0
	movq	%rdi, %rbx
	.loc 2 534 0
	movl	(%rdi), %esi
	xorl	%eax, %eax
	movl	$.LC69, %edi
	call	dolog
	.loc 2 536 0
	movl	8(%rbx), %edx
	cmpl	$1, %edx
	je	.L137
	jb	.L138
	cmpl	$2, %edx
	.p2align 4,,5
	je	.L140
	cmpl	$3, %edx
	.p2align 4,,7
	je	.L139
	.loc 2 550 0
	movl	$.LC70, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
.L136:
	.loc 2 554 0
	xorl	%eax, %eax
	movl	$.LC71, %esi
	xorl	%edi, %edi
	call	AUD_log
	.loc 2 555 0
	movl	12(%rbx), %eax
	.loc 2 557 0
	movl	$.LC72, %esi
	.loc 2 555 0
	testl	%eax, %eax
	je	.L147
	decl	%eax
	je	.L148
	.loc 2 563 0
	movl	$.LC74, %esi
.L147:
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
	.loc 2 566 0
	popq	%rbx
	movl	$.LC75, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	AUD_log
	.p2align 4,,7
.L138:
	.loc 2 541 0
	movl	$.LC28, %esi
.L146:
	.loc 2 547 0
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
	jmp	.L136
.L139:
	.loc 2 544 0
	movl	$.LC31, %esi
	jmp	.L146
	.p2align 4,,7
.L137:
	.loc 2 538 0
	movl	$.LC30, %esi
	jmp	.L146
	.p2align 4,,7
.L148:
	.loc 2 560 0
	movl	$.LC73, %esi
	.loc 2 563 0
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	AUD_log
	.loc 2 566 0
	popq	%rbx
	movl	$.LC75, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	AUD_log
.L140:
	.loc 2 547 0
	movl	$.LC29, %esi
	jmp	.L146
.LFE129:
	.size	audio_print_settings, .-audio_print_settings
	.p2align 4,,15
	.type	audio_validate_settings, @function
audio_validate_settings:
.LFB130:
	.loc 2 570 0
	.loc 2 573 0
	movl	4(%rdi), %eax
	decl	%eax
	cmpl	$1, %eax
	seta	%al
	.loc 2 574 0
	cmpl	$1, 12(%rdi)
	seta	%dl
	orl	%eax, %edx
	.loc 2 585 0
	movl	$1, %eax
	.loc 2 574 0
	andl	$1, %edx
	.loc 2 585 0
	cmpl	$5, 8(%rdi)
	cmova	%eax, %edx
	.loc 2 589 0
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	setle	%al
	orl	%eax, %edx
	.loc 2 590 0
	cmpl	$1, %edx
	sbbl	%eax, %eax
	notl	%eax
	.loc 2 591 0
	ret
.LFE130:
	.size	audio_validate_settings, .-audio_validate_settings
	.p2align 4,,15
	.type	audio_pcm_info_eq, @function
audio_pcm_info_eq:
.LFB131:
	.loc 2 594 0
	.loc 2 597 0
	movl	8(%rsi), %eax
	.loc 2 595 0
	xorl	%ecx, %ecx
	movl	$8, %r8d
	.loc 2 597 0
	cmpl	$5, %eax
	ja	.L161
	mov	%eax, %eax
	jmp	*.L168(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L168:
	.quad	.L161
	.quad	.L162
	.quad	.L165
	.quad	.L164
	.quad	.L167
	.quad	.L166
	.text
.L166:
	.loc 2 610 0
	movl	$1, %ecx
.L167:
	.loc 2 612 0
	movl	$32, %r8d
	.p2align 4,,7
.L161:
	.loc 2 615 0
	xorl	%edx, %edx
	movl	(%rsi), %eax
	cmpl	%eax, 8(%rdi)
	je	.L170
.L169:
	.loc 2 620 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L170:
	.loc 2 615 0
	movl	4(%rsi), %eax
	cmpl	%eax, 12(%rdi)
	jne	.L169
	cmpl	%ecx, 4(%rdi)
	.p2align 4,,4
	jne	.L169
	cmpl	%r8d, (%rdi)
	.p2align 4,,3
	jne	.L169
	xorl	%eax, %eax
	cmpl	$0, 12(%rsi)
	setne	%al
	cmpl	%eax, 28(%rdi)
	movl	$1, %eax
	cmove	%eax, %edx
	.loc 2 620 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L164:
	.loc 2 604 0
	movl	$1, %ecx
.L165:
	.loc 2 615 0
	xorl	%edx, %edx
	movl	(%rsi), %eax
	cmpl	%eax, 8(%rdi)
	.loc 2 606 0
	movl	$16, %r8d
	.loc 2 615 0
	jne	.L169
	jmp	.L170
.L162:
	.loc 2 599 0
	movl	$1, %ecx
	jmp	.L161
.LFE131:
	.size	audio_pcm_info_eq, .-audio_pcm_info_eq
	.p2align 4,,15
.globl audio_pcm_init_info
	.type	audio_pcm_init_info, @function
audio_pcm_init_info:
.LFB132:
	.loc 2 623 0
	.loc 2 626 0
	movl	8(%rsi), %eax
	.loc 2 624 0
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	$8, %ecx
	.loc 2 626 0
	cmpl	$5, %eax
	ja	.L172
	mov	%eax, %eax
	jmp	*.L179(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L179:
	.quad	.L172
	.quad	.L173
	.quad	.L176
	.quad	.L175
	.quad	.L178
	.quad	.L177
	.text
.L177:
	.loc 2 640 0
	movl	$1, %r8d
.L178:
	.loc 2 642 0
	movl	$32, %ecx
	.loc 2 643 0
	movl	$2, %r9d
	.p2align 4,,7
.L172:
	.loc 2 647 0
	movl	(%rsi), %edx
	.loc 2 648 0
	movl	%ecx, (%rdi)
	.loc 2 651 0
	xorl	%ecx, %ecx
	.loc 2 649 0
	movl	%r8d, 4(%rdi)
	.loc 2 647 0
	movl	%edx, 8(%rdi)
	.loc 2 650 0
	movl	4(%rsi), %eax
	movl	%eax, 12(%rdi)
	.loc 2 651 0
	cmpl	$2, 4(%rsi)
	.loc 2 652 0
	movl	$1, %eax
	.loc 2 651 0
	sete	%cl
	addl	%r9d, %ecx
	.loc 2 652 0
	sall	%cl, %eax
	.loc 2 653 0
	sall	%cl, %edx
	.loc 2 651 0
	movl	%ecx, 20(%rdi)
	.loc 2 652 0
	decl	%eax
	.loc 2 653 0
	movl	%edx, 24(%rdi)
	.loc 2 652 0
	movl	%eax, 16(%rdi)
	.loc 2 654 0
	xorl	%eax, %eax
	cmpl	$0, 12(%rsi)
	setne	%al
	movl	%eax, 28(%rdi)
	ret
.L175:
	.loc 2 633 0
	movl	$1, %r8d
.L176:
	.loc 2 635 0
	movl	$16, %ecx
	.loc 2 636 0
	movl	$1, %r9d
	jmp	.L172
.L173:
	.loc 2 628 0
	movl	$1, %r8d
	jmp	.L172
.LFE132:
	.size	audio_pcm_init_info, .-audio_pcm_init_info
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"audio_pcm_info_clear_buf: invalid bits %d\n"
	.text
	.p2align 4,,15
.globl audio_pcm_info_clear_buf
	.type	audio_pcm_info_clear_buf, @function
audio_pcm_info_clear_buf:
.LFB133:
	.loc 2 658 0
	.loc 2 659 0
	testl	%edx, %edx
	.loc 2 658 0
	movq	%rsi, %r8
	.loc 2 659 0
	je	.L180
	.loc 2 663 0
	movl	4(%rdi), %esi
	testl	%esi, %esi
	jne	.L211
	.loc 2 667 0
	movl	(%rdi), %eax
	cmpl	$16, %eax
	je	.L186
	.p2align 4,,3
	jg	.L205
	cmpl	$8, %eax
	.p2align 4,,5
	je	.L185
.L204:
	.loc 2 707 0
	movl	(%rdi), %edx
	movl	$.LC76, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	AUD_log
	.p2align 4,,7
.L180:
	rep ; ret
	.p2align 4,,7
.L211:
	.loc 2 664 0
	movl	20(%rdi), %ecx
	xorl	%esi, %esi
	sall	%cl, %edx
	movslq	%edx,%rdx
.L210:
	.loc 2 669 0
	movq	%r8, %rdi
	jmp	memset
.L186:
.LBB45:
	.file 4 "./bswap.h"
	.loc 4 47 0
	movl	28(%rdi), %eax
	.loc 2 676 0
	movl	12(%rdi), %ecx
	decl	%ecx
	.loc 4 47 0
	cmpl	$1, %eax
	sbbl	%edi, %edi
	.loc 2 683 0
	sall	%cl, %edx
	xorl	%eax, %eax
	.loc 4 47 0
	andw	$-32640, %di
	subw	$129, %di
	.loc 2 683 0
	cmpl	$0, %edx
	jle	.L180
	movq	%r8, %rsi
	.p2align 4,,7
.L194:
	incl	%eax
	.loc 2 684 0
	movw	%di, (%rsi)
	addq	$2, %rsi
	.loc 2 683 0
	cmpl	%eax, %edx
	jg	.L194
.LBE45:
	.loc 2 687 0
	rep ; ret
.L205:
	.loc 2 667 0
	cmpl	$32, %eax
	jne	.L204
.LBB46:
	.loc 4 52 0
	movl	28(%rdi), %eax
	.loc 2 693 0
	movl	12(%rdi), %ecx
	decl	%ecx
	.loc 4 52 0
	cmpl	$1, %eax
	sbbl	%edi, %edi
	.loc 2 700 0
	sall	%cl, %edx
	xorl	%eax, %eax
	.loc 4 52 0
	andl	$-2147483520, %edi
	subl	$129, %edi
	.loc 2 700 0
	cmpl	$0, %edx
	jle	.L180
	movq	%r8, %rsi
	.p2align 4,,7
.L203:
	incl	%eax
	.loc 2 701 0
	movl	%edi, (%rsi)
	addq	$4, %rsi
	.loc 2 700 0
	cmpl	%eax, %edx
	jg	.L203
.LBE46:
	.loc 2 704 0
	rep ; ret
.L185:
	.loc 2 669 0
	movl	20(%rdi), %ecx
	movl	$128, %esi
	sall	%cl, %edx
	movslq	%edx,%rdx
	jmp	.L210
.LFE133:
	.size	audio_pcm_info_clear_buf, .-audio_pcm_info_clear_buf
	.p2align 4,,15
	.type	noop_conv, @function
noop_conv:
.LFB134:
	.loc 2 719 0
	.loc 2 723 0
	rep ; ret
.LFE134:
	.size	noop_conv, .-noop_conv
	.p2align 4,,15
	.type	audio_capture_maybe_changed, @function
audio_capture_maybe_changed:
.LFB137:
	.loc 2 754 0
	pushq	%rbp
.LCFI30:
	pushq	%rbx
.LCFI31:
	subq	$8, %rsp
.LCFI32:
	.loc 2 755 0
	cmpl	%esi, (%rdi)
	je	.L213
.LBB47:
.LBB48:
.LBB49:
	.loc 2 748 0
	movq	128(%rdi), %rbx
.LBE49:
.LBE48:
	.loc 2 758 0
	xorl	%ebp, %ebp
	testl	%esi, %esi
	sete	%bpl
	.loc 2 757 0
	movl	%esi, (%rdi)
	jmp	.L221
	.p2align 4,,7
.L222:
.LBB50:
.LBB51:
	.loc 2 749 0
	movq	24(%rbx), %rdi
	movl	%ebp, %esi
	call	*(%rbx)
	.loc 2 748 0
	movq	32(%rbx), %rbx
.L221:
	testq	%rbx, %rbx
	jne	.L222
.L213:
.LBE51:
.LBE50:
.LBE47:
	.loc 2 761 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE137:
	.size	audio_capture_maybe_changed, .-audio_capture_maybe_changed
	.p2align 4,,15
	.type	audio_recalc_and_notify_capture, @function
audio_recalc_and_notify_capture:
.LFB138:
	.loc 2 764 0
	.loc 2 769 0
	movq	80(%rdi), %rax
	.loc 2 767 0
	xorl	%esi, %esi
	jmp	.L231
	.p2align 4,,7
.L232:
	.loc 2 770 0
	movl	68(%rax), %r8d
	testl	%r8d, %r8d
	jne	.L230
	.loc 2 769 0
	movq	136(%rax), %rax
.L231:
	testq	%rax, %rax
	jne	.L232
	.loc 2 775 0
	jmp	audio_capture_maybe_changed
.L230:
	.loc 2 771 0
	movl	$1, %esi
	.loc 2 775 0
	jmp	audio_capture_maybe_changed
.LFE138:
	.size	audio_recalc_and_notify_capture, .-audio_recalc_and_notify_capture
	.p2align 4,,15
	.type	audio_detach_capture, @function
audio_detach_capture:
.LFB139:
	.loc 2 779 0
	pushq	%r13
.LCFI33:
	pushq	%r12
.LCFI34:
	pushq	%rbp
.LCFI35:
	pushq	%rbx
.LCFI36:
	subq	$8, %rsp
.LCFI37:
	.loc 2 780 0
	movq	88(%rdi), %rbx
	jmp	.L243
	.p2align 4,,7
.L236:
.LBB52:
	.loc 2 793 0
	movq	136(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L237
	movq	144(%rbx), %rax
	movq	%rax, 144(%rdx)
.L237:
	movq	144(%rbx), %rax
	movq	%rdx, (%rax)
	.loc 2 794 0
	movq	160(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L238
	movq	168(%rbx), %rax
	movq	%rax, 168(%rdx)
.L238:
	movq	168(%rbx), %rax
	.loc 2 795 0
	movq	%rbx, %rdi
	.loc 2 794 0
	movq	%rdx, (%rax)
	.loc 2 795 0
	call	qemu_free
	.loc 2 796 0
	testl	%ebp, %ebp
	jne	.L244
.L239:
	.loc 2 802 0
	movq	%r12, %rbx
.L243:
.LBE52:
	testq	%rbx, %rbx
	je	.L242
.LBB53:
	.loc 2 788 0
	movq	56(%rbx), %rdi
	.loc 2 783 0
	movq	160(%rbx), %r12
	.loc 2 785 0
	movq	152(%rbx), %r13
	.loc 2 786 0
	movl	68(%rbx), %ebp
	.loc 2 788 0
	testq	%rdi, %rdi
	je	.L236
	.loc 2 789 0
	call	st_rate_stop
	.loc 2 790 0
	movq	$0, 56(%rbx)
	jmp	.L236
	.p2align 4,,7
.L244:
	.loc 2 800 0
	movq	%r13, %rdi
	call	audio_recalc_and_notify_capture
	.p2align 4,,4
	jmp	.L239
	.p2align 4,,7
.L242:
.LBE53:
	.loc 2 802 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE139:
	.size	audio_detach_capture, .-audio_detach_capture
	.section	.rodata
	.align 16
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 21
__FUNCTION__.1:
	.string	"audio_attach_capture"
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"Could not allocate soft capture voice (%zu bytes)\n"
	.section	.rodata.str1.1
.LC78:
	.string	"unknown"
	.section	.rodata.str1.8
	.align 8
.LC79:
	.string	"Could not start rate conversion for `%s'\n"
	.text
	.p2align 4,,15
	.type	audio_attach_capture, @function
audio_attach_capture:
.LFB140:
	.loc 2 807 0
	pushq	%r12
.LCFI38:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI39:
	pushq	%rbx
.LCFI40:
	.loc 2 807 0
	movq	%rdi, %rbx
	.loc 2 810 0
	movq	%rsi, %rdi
	call	audio_detach_capture
	.loc 2 811 0
	movq	48(%rbx), %rbp
	jmp	.L259
	.p2align 4,,7
.L248:
	movq	136(%rbp), %rbp
.L259:
	testq	%rbp, %rbp
	je	.L258
.LBB54:
	.loc 2 816 0
	movl	$176, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.1, %edi
	call	audio_calloc
	.loc 2 817 0
	testq	%rax, %rax
	.loc 2 816 0
	movq	%rax, %rbx
	.loc 2 817 0
	je	.L261
	.loc 2 823 0
	movq	%rbp, 152(%rax)
	.loc 2 825 0
	movq	%rbp, 80(%rax)
	.loc 2 826 0
	movq	8(%r12), %rax
	movq	%rax, (%rbx)
	movq	16(%r12), %rax
	movq	%rax, 8(%rbx)
	movq	24(%r12), %rax
	.loc 2 830 0
	movl	8(%rbx), %edi
	.loc 2 826 0
	movq	%rax, 16(%rbx)
	movq	32(%r12), %rax
	.loc 2 827 0
	movl	$1, 72(%rbx)
	.loc 2 830 0
	movslq	%edi,%rsi
	.loc 2 826 0
	movq	%rax, 24(%rbx)
	.loc 2 828 0
	movl	(%r12), %eax
	.loc 2 829 0
	movq	$noop_conv, 32(%rbx)
	.loc 2 828 0
	movl	%eax, 68(%rbx)
	.loc 2 830 0
	movslq	16(%rbp),%rcx
	salq	$32, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	movq	%rax, 40(%rbx)
	.loc 2 831 0
	movl	16(%rbp), %esi
	call	st_rate_start
	.loc 2 832 0
	testq	%rax, %rax
	.loc 2 831 0
	movq	%rax, 56(%rbx)
	.loc 2 832 0
	je	.L262
	.loc 2 837 0
	movq	80(%rbp), %rax
	testq	%rax, %rax
	movq	%rax, 136(%rbx)
	je	.L253
	movq	80(%rbp), %rdx
	leaq	136(%rbx), %rax
	movq	%rax, 144(%rdx)
.L253:
	leaq	80(%rbp), %rax
	movq	%rbx, 80(%rbp)
	movq	%rax, 144(%rbx)
	.loc 2 838 0
	movq	88(%r12), %rax
	testq	%rax, %rax
	movq	%rax, 160(%rbx)
	je	.L254
	movq	88(%r12), %rdx
	leaq	160(%rbx), %rax
	movq	%rax, 168(%rdx)
.L254:
	movq	%rbx, 88(%r12)
	.loc 2 844 0
	movl	68(%rbx), %r9d
	.loc 2 838 0
	leaq	88(%r12), %rax
	movq	%rax, 168(%rbx)
	.loc 2 844 0
	testl	%r9d, %r9d
	je	.L248
	.loc 2 845 0
	movl	$1, %esi
	movq	%rbp, %rdi
	call	audio_capture_maybe_changed
	jmp	.L248
	.p2align 4,,7
.L258:
.LBE54:
	.loc 2 849 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 2 848 0
	xorl	%eax, %eax
	.loc 2 849 0
	ret
.L261:
.LBB55:
	.loc 2 818 0
	xorl	%eax, %eax
	movl	$176, %esi
	movl	$.LC77, %edi
	call	dolog
	.loc 2 835 0
	movl	$-1, %eax
.L263:
.LBE55:
	.loc 2 849 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L262:
.LBB56:
	.loc 2 833 0
	movq	88(%rbx), %rsi
	movl	$.LC78, %eax
	movl	$.LC79, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	dolog
	.loc 2 834 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 2 835 0
	movl	$-1, %eax
	jmp	.L263
.LBE56:
.LFE140:
	.size	audio_attach_capture, .-audio_attach_capture
	.p2align 4,,15
	.type	audio_pcm_hw_find_min_in, @function
audio_pcm_hw_find_min_in:
.LFB141:
	.loc 2 855 0
	.loc 2 857 0
	movl	52(%rdi), %ecx
	.loc 2 859 0
	movq	80(%rdi), %rdx
	jmp	.L274
	.p2align 4,,7
.L275:
	.loc 2 860 0
	movl	(%rdx), %r10d
	testl	%r10d, %r10d
	je	.L267
.LBB57:
	.loc 2 861 0
	movl	56(%rdx), %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
.L267:
.LBE57:
	.loc 2 859 0
	movq	136(%rdx), %rdx
.L274:
	testq	%rdx, %rdx
	jne	.L275
	.loc 2 865 0
	movl	%ecx, %eax
	ret
.LFE141:
	.size	audio_pcm_hw_find_min_in, .-audio_pcm_hw_find_min_in
	.section	.rodata
	.align 16
	.type	__FUNCTION__.26, @object
	.size	__FUNCTION__.26, 25
__FUNCTION__.26:
	.string	"audio_pcm_hw_get_live_in"
	.section	.rodata.str1.1
.LC80:
	.string	"live=%d hw->samples=%d\n"
	.text
	.p2align 4,,15
.globl audio_pcm_hw_get_live_in
	.type	audio_pcm_hw_get_live_in, @function
audio_pcm_hw_get_live_in:
.LFB142:
	.loc 2 868 0
	pushq	%rbp
.LCFI41:
	pushq	%rbx
.LCFI42:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI43:
	.loc 2 869 0
	call	audio_pcm_hw_find_min_in
	movl	52(%rbx), %edx
	.loc 2 870 0
	xorl	%esi, %esi
	movl	%edx, %ebp
	subl	%eax, %ebp
	js	.L281
	cmpl	%ebp, 72(%rbx)
	jl	.L281
	movl	$__FUNCTION__.26, %edi
	call	audio_bug
	testl	%eax, %eax
	.loc 2 874 0
	movl	%ebp, %edx
	.loc 2 870 0
	jne	.L282
.L276:
	.loc 2 875 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L281:
	.loc 2 870 0
	movl	$1, %esi
	movl	$__FUNCTION__.26, %edi
	call	audio_bug
	testl	%eax, %eax
	.loc 2 874 0
	movl	%ebp, %edx
	.loc 2 870 0
	je	.L276
.L282:
	.loc 2 871 0
	movl	72(%rbx), %edx
	movl	%ebp, %esi
	xorl	%eax, %eax
	movl	$.LC80, %edi
	call	dolog
	.loc 2 875 0
	addq	$8, %rsp
	.loc 2 872 0
	xorl	%edx, %edx
	.loc 2 875 0
	popq	%rbx
	popq	%rbp
	movl	%edx, %eax
	ret
.LFE142:
	.size	audio_pcm_hw_get_live_in, .-audio_pcm_hw_get_live_in
	.section	.rodata
	.align 16
	.type	__FUNCTION__.24, @object
	.size	__FUNCTION__.24, 18
__FUNCTION__.24:
	.string	"audio_pcm_sw_read"
	.align 16
	.type	__FUNCTION__.25, @object
	.size	__FUNCTION__.25, 25
__FUNCTION__.25:
	.string	"audio_pcm_sw_get_rpos_in"
	.section	.rodata.str1.1
.LC81:
	.string	"live_in=%d hw->samples=%d\n"
.LC82:
	.string	"osamp=%d\n"
	.text
	.p2align 4,,15
.globl audio_pcm_sw_read
	.type	audio_pcm_sw_read, @function
audio_pcm_sw_read:
.LFB144:
	.loc 2 901 0
	pushq	%r15
.LCFI44:
	pushq	%r14
.LCFI45:
	pushq	%r13
.LCFI46:
	movq	%rdi, %r13
	pushq	%r12
.LCFI47:
	pushq	%rbp
.LCFI48:
	movl	%edx, %ebp
	pushq	%rbx
.LCFI49:
	subq	$24, %rsp
.LCFI50:
	.loc 2 901 0
	movq	%rsi, 8(%rsp)
	.loc 2 902 0
	movq	80(%rdi), %r12
.LBB58:
.LBB59:
	.loc 2 886 0
	xorl	%esi, %esi
.LBE59:
.LBE58:
	.loc 2 903 0
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)
	.loc 2 904 0
	movq	64(%rdi), %r15
.LBB60:
.LBB61:
	.loc 2 883 0
	movl	52(%r12), %eax
	.loc 2 886 0
	movl	%eax, %ebx
	subl	56(%rdi), %ebx
	js	.L288
	cmpl	%ebx, 72(%r12)
	jl	.L288
	movl	$__FUNCTION__.25, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L311
.L284:
	.loc 2 891 0
	movl	48(%r12), %eax
	.loc 2 892 0
	subl	%ebx, %eax
	js	.L290
.L308:
	movl	72(%r12), %ecx
.L289:
.LBE61:
.LBE60:
	.loc 2 881 0
	cltd
	.loc 2 909 0
	xorl	%esi, %esi
	.loc 2 881 0
	idivl	%ecx
	.loc 2 908 0
	movl	52(%r12), %eax
	.loc 2 909 0
	movl	%eax, %ebx
	subl	56(%r13), %ebx
	.loc 2 881 0
	movl	%edx, %r14d
	.loc 2 909 0
	js	.L296
	cmpl	%ebx, %ecx
	jl	.L296
	movl	$__FUNCTION__.24, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L312
.L292:
	.loc 2 914 0
	movl	24(%r13), %ecx
	movl	%ebp, %edx
	.loc 2 916 0
	xorl	%eax, %eax
	.loc 2 914 0
	sarl	%cl, %edx
	.loc 2 915 0
	testl	%ebx, %ebx
	je	.L283
	.loc 2 919 0
	movslq	%ebx,%rax
	imulq	40(%r13), %rax
	sarq	$32, %rax
.LBB62:
	.loc 2 920 0
	cmpl	%eax, %edx
	jge	.L313
.L299:
.LBE62:
	movl	%edx, %ebp
	.loc 2 945 0
	testl	%edx, %edx
	jmp	.L309
	.p2align 4,,7
.L302:
	.loc 2 930 0
	testl	%ecx, %ecx
	je	.L301
	.loc 2 935 0
	movl	%ebp, %esi
	movl	$__FUNCTION__.24, %edi
	.loc 2 933 0
	movl	%ebp, 20(%rsp)
	.loc 2 935 0
	shrl	$31, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L307
	.loc 2 940 0
	movq	48(%r13), %rdi
	leaq	16(%rsp), %rcx
	leaq	20(%rsp), %r8
	movq	%r15, %rdx
	movq	%rbx, %rsi
	call	st_rate_flow
	.loc 2 942 0
	movl	16(%rsp), %ecx
	.loc 2 941 0
	movl	20(%rsp), %esi
	.loc 2 942 0
	leal	(%r14,%rcx), %eax
	cltd
	idivl	72(%r12)
	.loc 2 943 0
	movslq	%esi,%rax
	.loc 2 944 0
	addl	%esi, 4(%rsp)
	.loc 2 945 0
	addl	%ecx, (%rsp)
	.loc 2 943 0
	salq	$4, %rax
	addq	%rax, %r15
	.loc 2 945 0
	subl	%esi, %ebp
	.loc 2 942 0
	movl	%edx, %r14d
.L309:
	.loc 2 945 0
	je	.L301
	.loc 2 924 0
	movl	48(%r12), %ecx
	.loc 2 923 0
	movslq	%r14d,%rbx
	salq	$4, %rbx
	addq	64(%r12), %rbx
	.loc 2 924 0
	subl	%r14d, %ecx
	.loc 2 926 0
	testl	%ecx, %ecx
	.loc 2 924 0
	movl	%ecx, 16(%rsp)
	.loc 2 926 0
	jg	.L302
	.loc 2 927 0
	movl	72(%r12), %ecx
	subl	%r14d, %ecx
	movl	%ecx, 16(%rsp)
	jmp	.L302
	.p2align 4,,7
.L296:
	.loc 2 909 0
	movl	$1, %esi
	movl	$__FUNCTION__.24, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L292
.L312:
	.loc 2 910 0
	movl	72(%r12), %edx
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	$.LC81, %edi
	call	dolog
	.loc 2 937 0
	xorl	%eax, %eax
.L283:
	.loc 2 951 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L288:
.LBB63:
.LBB64:
	.loc 2 886 0
	movl	$1, %esi
	movl	$__FUNCTION__.25, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L284
.L311:
	.loc 2 887 0
	movl	72(%r12), %edx
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	$.LC80, %edi
	call	dolog
	xorl	%eax, %eax
	jmp	.L308
	.p2align 4,,7
.L313:
.LBE64:
.LBE63:
.LBB65:
	.loc 2 920 0
	movl	%eax, %edx
	jmp	.L299
.L290:
.LBE65:
.LBB66:
.LBB67:
	.loc 2 896 0
	movl	72(%r12), %ecx
	leal	(%rcx,%rax), %eax
	.p2align 4,,3
	jmp	.L289
	.p2align 4,,7
.L301:
.LBE67:
.LBE66:
	.loc 2 948 0
	movq	64(%r13), %rsi
	movl	4(%rsp), %edx
	movq	8(%rsp), %rdi
	call	*72(%r13)
	.loc 2 949 0
	movl	(%rsp), %eax
	addl	%eax, 56(%r13)
	.loc 2 950 0
	movl	24(%r13), %ecx
	movl	4(%rsp), %eax
	.loc 2 951 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 2 950 0
	sall	%cl, %eax
	.loc 2 951 0
	ret
.L307:
	.loc 2 936 0
	movl	20(%rsp), %esi
	xorl	%eax, %eax
	movl	$.LC82, %edi
	call	dolog
	.loc 2 937 0
	xorl	%eax, %eax
	jmp	.L283
.LFE144:
	.size	audio_pcm_sw_read, .-audio_pcm_sw_read
	.section	.rodata
	.align 16
	.type	__FUNCTION__.23, @object
	.size	__FUNCTION__.23, 27
__FUNCTION__.23:
	.string	"audio_pcm_hw_get_live_out2"
	.text
	.p2align 4,,15
.globl audio_pcm_hw_get_live_out2
	.type	audio_pcm_hw_get_live_out2, @function
audio_pcm_hw_get_live_out2:
.LFB146:
	.loc 2 974 0
	pushq	%rbp
.LCFI51:
.LBB68:
.LBB69:
	.loc 2 960 0
	xorl	%ecx, %ecx
.LBE69:
.LBE68:
	.loc 2 974 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI52:
.LBB70:
.LBB71:
	.loc 2 959 0
	movl	$2147483647, %ebx
.LBE71:
.LBE70:
	.loc 2 974 0
	subq	$8, %rsp
.LCFI53:
.LBB72:
.LBB73:
	.loc 2 962 0
	movq	80(%rdi), %rdx
	jmp	.L333
	.p2align 4,,7
.L334:
	.loc 2 963 0
	movl	68(%rdx), %eax
	testl	%eax, %eax
	jne	.L319
	movl	72(%rdx), %r11d
	testl	%r11d, %r11d
	jne	.L317
.L319:
.LBB74:
	.loc 2 964 0
	movl	64(%rdx), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
.LBE74:
	.loc 2 965 0
	incl	%ecx
.L317:
	.loc 2 962 0
	movq	136(%rdx), %rdx
.L333:
	testq	%rdx, %rdx
	jne	.L334
.LBE73:
.LBE72:
	.loc 2 980 0
	xorl	%edx, %edx
	.loc 2 979 0
	testl	%ecx, %ecx
.LBB75:
.LBB76:
	.loc 2 969 0
	movl	%ecx, (%rsi)
.LBE76:
.LBE75:
	.loc 2 979 0
	je	.L314
.LBB77:
	.loc 2 985 0
	xorl	%esi, %esi
	testl	%ebx, %ebx
	js	.L330
	cmpl	%ebx, 72(%rbp)
	jl	.L330
.L329:
	movl	$__FUNCTION__.23, %edi
	call	audio_bug
	testl	%eax, %eax
	.loc 2 989 0
	movl	%ebx, %edx
	.loc 2 985 0
	je	.L314
	.loc 2 986 0
	movl	72(%rbp), %edx
	movl	%ebx, %esi
	movl	$.LC80, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 2 987 0
	xorl	%edx, %edx
	.p2align 4,,7
.L314:
.LBE77:
	.loc 2 991 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
.L330:
.LBB78:
	.loc 2 985 0
	movl	$1, %esi
	jmp	.L329
.LBE78:
.LFE146:
	.size	audio_pcm_hw_get_live_out2, .-audio_pcm_hw_get_live_out2
	.section	.rodata
	.align 16
	.type	__FUNCTION__.22, @object
	.size	__FUNCTION__.22, 26
__FUNCTION__.22:
	.string	"audio_pcm_hw_get_live_out"
	.text
	.p2align 4,,15
.globl audio_pcm_hw_get_live_out
	.type	audio_pcm_hw_get_live_out, @function
audio_pcm_hw_get_live_out:
.LFB147:
	.loc 2 994 0
	pushq	%rbp
.LCFI54:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI55:
	subq	$8, %rsp
.LCFI56:
	.loc 2 998 0
	leaq	4(%rsp), %rsi
	call	audio_pcm_hw_get_live_out2
	.loc 2 999 0
	xorl	%esi, %esi
	testl	%eax, %eax
	.loc 2 998 0
	movl	%eax, %ebx
	.loc 2 999 0
	js	.L340
	cmpl	%eax, 72(%rbp)
	jl	.L340
	movl	$__FUNCTION__.22, %edi
	call	audio_bug
	testl	%eax, %eax
	.loc 2 1003 0
	movl	%ebx, %edx
	.loc 2 999 0
	jne	.L341
.L335:
	.loc 2 1004 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L340:
	.loc 2 999 0
	movl	$1, %esi
	movl	$__FUNCTION__.22, %edi
	call	audio_bug
	testl	%eax, %eax
	.loc 2 1003 0
	movl	%ebx, %edx
	.loc 2 999 0
	je	.L335
.L341:
	.loc 2 1000 0
	movl	72(%rbp), %edx
	movl	%ebx, %esi
	xorl	%eax, %eax
	movl	$.LC80, %edi
	call	dolog
	.loc 2 1004 0
	addq	$8, %rsp
	.loc 2 1001 0
	xorl	%edx, %edx
	.loc 2 1004 0
	popq	%rbx
	popq	%rbp
	movl	%edx, %eax
	ret
.LFE147:
	.size	audio_pcm_hw_get_live_out, .-audio_pcm_hw_get_live_out
	.section	.rodata
	.align 16
	.type	__FUNCTION__.21, @object
	.size	__FUNCTION__.21, 19
__FUNCTION__.21:
	.string	"audio_pcm_sw_write"
	.text
	.p2align 4,,15
.globl audio_pcm_sw_write
	.type	audio_pcm_sw_write, @function
audio_pcm_sw_write:
.LFB148:
	.loc 2 1010 0
	movq	%rbx, -48(%rsp)
.LCFI57:
	movq	%r13, -24(%rsp)
.LCFI58:
	movq	%rdi, %rbx
	movq	%r15, -8(%rsp)
.LCFI59:
	movq	%rbp, -40(%rsp)
.LCFI60:
	.loc 2 1012 0
	xorl	%r15d, %r15d
	.loc 2 1010 0
	movq	%r12, -32(%rsp)
.LCFI61:
	movq	%r14, -16(%rsp)
.LCFI62:
	subq	$72, %rsp
.LCFI63:
	.loc 2 1014 0
	testq	%rdi, %rdi
	.loc 2 1010 0
	movq	%rsi, 8(%rsp)
	movl	%edx, %r13d
	.loc 2 1012 0
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)
	.loc 2 1015 0
	movl	%edx, %eax
	.loc 2 1014 0
	je	.L342
	.loc 2 1018 0
	movq	80(%rdi), %rax
	.loc 2 1020 0
	movl	64(%rdi), %r12d
	.loc 2 1021 0
	movl	$__FUNCTION__.21, %edi
	.loc 2 1018 0
	movl	72(%rax), %ebp
	.loc 2 1021 0
	movl	%r12d, %esi
	xorl	%eax, %eax
	shrl	$31, %esi
	cmpl	%ebp, %r12d
	setg	%al
	orl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L356
	.loc 2 1030 0
	xorl	%eax, %eax
	.loc 2 1026 0
	cmpl	%ebp, %r12d
	je	.L342
	.loc 2 1033 0
	movq	80(%rbx), %rax
	.loc 2 1034 0
	movl	20(%rbx), %ecx
	movl	%r13d, %esi
	.loc 2 1033 0
	movl	48(%rax), %eax
	.loc 2 1034 0
	sarl	%cl, %esi
	.loc 2 1036 0
	movl	%ebp, %ecx
	subl	%r12d, %ecx
	.loc 2 1033 0
	addl	%r12d, %eax
	cltd
	idivl	%ebp
	.loc 2 1037 0
	movq	%rcx, %rax
	salq	$32, %rax
	.loc 2 1033 0
	movl	%edx, %r14d
	.loc 2 1037 0
	cqto
	idivq	40(%rbx)
.LBB79:
	.loc 2 1038 0
	cmpl	%eax, %esi
	movl	%eax, %r13d
	cmovl	%esi, %r13d
.LBE79:
	.loc 2 1039 0
	testl	%r13d, %r13d
	jne	.L357
.L350:
	.loc 2 1067 0
	movl	(%rsp), %eax
	addl	64(%rbx), %eax
	.loc 2 1080 0
	movl	20(%rbx), %ecx
	.loc 2 1068 0
	testl	%eax, %eax
	.loc 2 1067 0
	movl	%eax, 64(%rbx)
	.loc 2 1068 0
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 72(%rbx)
	.loc 2 1080 0
	movl	4(%rsp), %eax
	sall	%cl, %eax
	.p2align 4,,7
.L342:
	.loc 2 1081 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L356:
	.loc 2 1022 0
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%r12d, %esi
	movl	$.LC80, %edi
	call	dolog
	.loc 2 1023 0
	xorl	%eax, %eax
	jmp	.L342
.L357:
	.loc 2 1040 0
	leaq	96(%rbx), %rcx
	movq	48(%rbx), %rdi
	movl	%r13d, %edx
	movq	8(%rsp), %rsi
	call	*32(%rbx)
	.p2align 4,,7
.L354:
	.loc 2 1044 0
	movl	%ebp, %ecx
	.loc 2 1045 0
	movl	%ebp, %eax
	.loc 2 1044 0
	subl	%r12d, %ecx
	.loc 2 1045 0
	subl	%r14d, %eax
.LBB80:
	.loc 2 1046 0
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
.LBE80:
	.loc 2 1047 0
	testl	%eax, %eax
	je	.L350
	.loc 2 1051 0
	movl	%eax, 20(%rsp)
	.loc 2 1052 0
	movq	80(%rbx), %rax
	movslq	%r14d,%rdx
	movslq	%r15d,%rsi
	.loc 2 1050 0
	movl	%r13d, 16(%rsp)
	.loc 2 1052 0
	salq	$4, %rdx
	salq	$4, %rsi
	addq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	addq	64(%rax), %rdx
	leaq	16(%rsp), %rcx
	leaq	20(%rsp), %r8
	call	st_rate_flow_mix
	.loc 2 1062 0
	movl	20(%rsp), %esi
	.loc 2 1059 0
	movl	16(%rsp), %ecx
	.loc 2 1064 0
	addl	%esi, (%rsp)
	.loc 2 1059 0
	addl	%ecx, 4(%rsp)
	.loc 2 1063 0
	leal	(%r14,%rsi), %eax
	.loc 2 1061 0
	addl	%ecx, %r15d
	.loc 2 1062 0
	addl	%esi, %r12d
	.loc 2 1063 0
	cltd
	idivl	%ebp
	.loc 2 1064 0
	subl	%ecx, %r13d
	.loc 2 1063 0
	movl	%edx, %r14d
	.loc 2 1064 0
	jne	.L354
	jmp	.L350
.LFE148:
	.size	audio_pcm_sw_write, .-audio_pcm_sw_write
	.section	.rodata
	.align 32
	.type	__FUNCTION__.16, @object
	.size	__FUNCTION__.16, 33
__FUNCTION__.16:
	.string	"audio_pcm_sw_alloc_resources_out"
	.section	.rodata.str1.1
.LC83:
	.string	"bits_to_index"
.LC84:
	.string	"invalid bits %d\n"
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"Could not allocate buffer for `%s' (%d samples)\n"
	.text
	.p2align 4,,15
	.type	audio_pcm_sw_init_out, @function
audio_pcm_sw_init_out:
.LFB154:
	.file 5 "audio/audio_template.h"
	.loc 5 145 0
	movq	%rbx, -40(%rsp)
.LCFI64:
	movq	%rbp, -32(%rsp)
.LCFI65:
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	%r12, -24(%rsp)
.LCFI66:
	movq	%r13, -16(%rsp)
.LCFI67:
	movq	%r14, -8(%rsp)
.LCFI68:
	movq	%rcx, %rsi
	subq	$40, %rsp
.LCFI69:
	.loc 5 145 0
	movq	%rdx, %r14
	.loc 5 148 0
	call	audio_pcm_init_info
	.loc 5 149 0
	movq	%rbx, 80(%rbp)
	.loc 5 150 0
	movl	$0, 68(%rbp)
	.loc 5 152 0
	movslq	16(%rbx),%rax
	movslq	8(%rbp),%rdx
.LBB81:
	.loc 2 176 0
	movl	(%rbp), %ebx
.LBE81:
	.loc 5 153 0
	movl	$0, 64(%rbp)
	.loc 5 154 0
	movl	$1, 72(%rbp)
	.loc 5 160 0
	movslq	28(%rbp),%r12
	movslq	4(%rbp),%r13
	.loc 5 152 0
	salq	$32, %rax
	movq	%rdx, %rcx
	cqto
	idivq	%rcx
.LBB82:
.LBB83:
	.loc 2 177 0
	cmpl	$16, %ebx
.LBE83:
.LBE82:
	.loc 5 152 0
	movq	%rax, 40(%rbp)
.LBB84:
.LBB85:
	.loc 2 181 0
	movl	$1, %eax
	.loc 2 177 0
	je	.L361
	jle	.L377
	.loc 2 184 0
	movl	$2, %eax
	.loc 2 177 0
	cmpl	$32, %ebx
.L375:
	je	.L361
	.loc 2 188 0
	movl	$1, %esi
	movl	$.LC83, %edi
	call	audio_bug
	.loc 2 189 0
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$.LC84, %esi
	xorl	%edi, %edi
	call	AUD_log
	xorl	%eax, %eax
.L361:
.LBE85:
.LBE84:
	.loc 2 176 0
	movslq	%eax,%rdx
	leaq	(%r13,%r13,2), %rcx
	leaq	(%r12,%r12,2), %rax
	.loc 5 169 0
	movq	%r14, %rdi
	.loc 2 176 0
	leaq	(%rax,%rcx,2), %rcx
	movl	$96, %eax
	addq	%rdx, %rcx
	cmpl	$2, 12(%rbp)
	movl	$0, %edx
	cmovne	%rdx, %rax
	movq	mixeng_conv(%rax,%rcx,8), %rax
	movq	%rax, 32(%rbp)
	.loc 5 169 0
	call	qemu_strdup
	movq	%rax, 88(%rbp)
.LBB86:
.LBB87:
	.loc 5 114 0
	movq	80(%rbp), %rax
	.loc 5 119 0
	movl	$16, %edx
	movl	$__FUNCTION__.16, %edi
	.loc 5 114 0
	movl	72(%rax), %ebx
	.loc 5 119 0
	movl	%ebx, %esi
	call	audio_calloc
	.loc 5 120 0
	testq	%rax, %rax
	.loc 5 119 0
	movq	%rax, 48(%rbp)
	.loc 5 120 0
	jne	.L368
	.loc 5 121 0
	movq	88(%rbp), %rsi
	movl	$.LC78, %eax
	movl	%ebx, %edx
	movl	$.LC85, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	dolog
.L376:
.LBE87:
.LBE86:
	.loc 5 172 0
	movq	88(%rbp), %rdi
.LBB88:
.LBB89:
	.loc 5 133 0
	movl	$-1, %ebx
.LBE89:
.LBE88:
	.loc 5 172 0
	call	qemu_free
	.loc 5 173 0
	movq	$0, 88(%rbp)
.L373:
	.loc 5 176 0
	movl	%ebx, %eax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L377:
.LBB90:
.LBB91:
	.loc 2 178 0
	xorb	%al, %al
	.loc 2 177 0
	cmpl	$8, %ebx
	jmp	.L375
	.p2align 4,,7
.L368:
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	.loc 5 127 0
	movq	80(%rbp), %rax
	movl	8(%rbp), %edi
	.loc 5 135 0
	xorl	%ebx, %ebx
	.loc 5 127 0
	movl	16(%rax), %esi
	call	st_rate_start
	.loc 5 131 0
	testq	%rax, %rax
	.loc 5 127 0
	movq	%rax, 56(%rbp)
	.loc 5 131 0
	jne	.L373
	.loc 5 132 0
	movq	48(%rbp), %rdi
	call	qemu_free
	.loc 5 133 0
	movq	$0, 48(%rbp)
	jmp	.L376
.LBE93:
.LBE92:
.LFE154:
	.size	audio_pcm_sw_init_out, .-audio_pcm_sw_init_out
	.p2align 4,,15
	.type	audio_pcm_sw_fini_out, @function
audio_pcm_sw_fini_out:
.LFB155:
	.loc 5 179 0
	pushq	%rbx
.LCFI70:
	.loc 5 179 0
	movq	%rdi, %rbx
.LBB94:
.LBB95:
	.loc 5 97 0
	movq	48(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L383
.L379:
	.loc 5 101 0
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L384
.L380:
.LBE95:
.LBE94:
	.loc 5 181 0
	movq	88(%rbx), %rdi
.LBB96:
.LBB97:
	.loc 5 105 0
	movq	$0, 48(%rbx)
	.loc 5 106 0
	movq	$0, 56(%rbx)
.LBE97:
.LBE96:
	.loc 5 181 0
	testq	%rdi, %rdi
	jne	.L385
	.loc 5 185 0
	popq	%rbx
	ret
	.p2align 4,,7
.L385:
	.loc 5 182 0
	call	qemu_free
	.loc 5 183 0
	movq	$0, 88(%rbx)
	.loc 5 185 0
	popq	%rbx
	.p2align 4,,5
	ret
	.p2align 4,,7
.L384:
.LBB98:
.LBB99:
	.loc 5 102 0
	.p2align 4,,6
	call	st_rate_stop
	.p2align 4,,6
	jmp	.L380
	.p2align 4,,7
.L383:
	.loc 5 98 0
	.p2align 4,,8
	call	qemu_free
	.p2align 4,,8
	jmp	.L379
.LBE99:
.LBE98:
.LFE155:
	.size	audio_pcm_sw_fini_out, .-audio_pcm_sw_fini_out
	.p2align 4,,15
	.type	audio_pcm_hw_del_sw_out, @function
audio_pcm_hw_del_sw_out:
.LFB157:
	.loc 5 193 0
	.loc 5 194 0
	movq	136(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L387
	movq	144(%rdi), %rax
	movq	%rax, 144(%rdx)
.L387:
	movq	144(%rdi), %rax
	movq	%rdx, (%rax)
	ret
.LFE157:
	.size	audio_pcm_hw_del_sw_out, .-audio_pcm_hw_del_sw_out
	.p2align 4,,15
	.type	audio_pcm_hw_gc_out, @function
audio_pcm_hw_gc_out:
.LFB158:
	.loc 5 198 0
	movq	%rbx, -24(%rsp)
.LCFI71:
	movq	%rbp, -16(%rsp)
.LCFI72:
	movq	%rdi, %rbp
	movq	%r12, -8(%rsp)
.LCFI73:
	subq	$24, %rsp
.LCFI74:
	.loc 5 199 0
	movq	(%rsi), %rbx
	.loc 5 198 0
	movq	%rsi, %r12
	.loc 5 201 0
	cmpq	$0, 80(%rbx)
	je	.L393
	.loc 5 212 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L393:
	.loc 5 203 0
	movq	%rbx, %rdi
	call	audio_detach_capture
	.loc 5 205 0
	movq	104(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L394
.L390:
	movq	112(%rbx), %rax
	movq	%rdx, (%rax)
	.loc 5 206 0
	incl	56(%rbp)
.LBB100:
.LBB101:
	.loc 5 76 0
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L395
.L391:
.LBE101:
.LBE100:
	.loc 5 208 0
	movq	96(%rbx), %rax
	movq	%rbx, %rdi
.LBB102:
.LBB103:
	.loc 5 80 0
	movq	$0, 64(%rbx)
.LBE103:
.LBE102:
	.loc 5 208 0
	call	*8(%rax)
	.loc 5 209 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 5 210 0
	movq	$0, (%r12)
	.loc 5 212 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L394:
	.loc 5 205 0
	movq	112(%rbx), %rax
	movq	%rax, 112(%rdx)
	jmp	.L390
.L395:
.LBB104:
.LBB105:
	.loc 5 77 0
	call	qemu_free
	.p2align 4,,4
	jmp	.L391
.LBE105:
.LBE104:
.LFE158:
	.size	audio_pcm_hw_gc_out, .-audio_pcm_hw_gc_out
	.p2align 4,,15
	.type	audio_pcm_hw_find_any_out, @function
audio_pcm_hw_find_any_out:
.LFB159:
	.loc 5 215 0
	.loc 5 216 0
	testq	%rsi, %rsi
	je	.L397
	movq	104(%rsi), %rax
	ret
	.p2align 4,,7
.L397:
	movq	40(%rdi), %rax
	.loc 5 217 0
	ret
.LFE159:
	.size	audio_pcm_hw_find_any_out, .-audio_pcm_hw_find_any_out
	.p2align 4,,15
	.type	audio_pcm_hw_find_any_enabled_out, @function
audio_pcm_hw_find_any_enabled_out:
.LFB160:
	.loc 5 220 0
	pushq	%rbx
.LCFI75:
	movq	%rdi, %rbx
	.p2align 4,,7
.L400:
	.loc 5 223 0
	movq	%rbx, %rdi
	call	audio_pcm_hw_find_any_out
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L404
	.loc 5 222 0
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.L400
	.loc 5 227 0
	popq	%rbx
	.loc 5 223 0
	movq	%rsi, %rax
	.loc 5 227 0
	ret
.L404:
	popq	%rbx
	.loc 5 226 0
	xorl	%eax, %eax
	.loc 5 227 0
	.p2align 4,,2
	ret
.LFE160:
	.size	audio_pcm_hw_find_any_enabled_out, .-audio_pcm_hw_find_any_enabled_out
	.section	.rodata
	.align 16
	.type	__FUNCTION__.18, @object
	.size	__FUNCTION__.18, 25
__FUNCTION__.18:
	.string	"audio_pcm_hw_add_new_out"
	.align 32
	.type	__FUNCTION__.19, @object
	.size	__FUNCTION__.19, 33
__FUNCTION__.19:
	.string	"audio_pcm_hw_alloc_resources_out"
	.section	.rodata.str1.1
.LC86:
	.string	"No host audio driver\n"
	.section	.rodata.str1.8
	.align 8
.LC90:
	.string	"Could not allocate playback buffer (%d samples)\n"
	.align 8
.LC87:
	.string	"Host audio driver without pcm_ops\n"
	.section	.rodata.str1.1
.LC89:
	.string	"hw->samples=%d\n"
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"Can not allocate voice `%s' size %d\n"
	.text
	.p2align 4,,15
	.type	audio_pcm_hw_add_new_out, @function
audio_pcm_hw_add_new_out:
.LFB162:
	.loc 5 244 0
	movq	%r12, -24(%rsp)
.LCFI76:
	movq	%r13, -16(%rsp)
.LCFI77:
	.loc 5 249 0
	xorl	%eax, %eax
	.loc 5 244 0
	movq	%rbx, -40(%rsp)
.LCFI78:
	movq	%rbp, -32(%rsp)
.LCFI79:
	movq	%rdi, %r12
	movq	%r14, -8(%rsp)
.LCFI80:
	subq	$40, %rsp
.LCFI81:
	.loc 5 248 0
	movl	56(%rdi), %edx
	.loc 5 244 0
	movq	%rsi, %r13
	.loc 5 246 0
	movq	(%rdi), %rbp
	.loc 5 248 0
	testl	%edx, %edx
	je	.L405
	.loc 5 252 0
	xorl	%esi, %esi
	testq	%rbp, %rbp
	movl	$__FUNCTION__.18, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	.loc 5 253 0
	movl	$.LC86, %edi
	.loc 5 252 0
	jne	.L431
	.loc 5 257 0
	xorl	%esi, %esi
	cmpq	$0, 40(%rbp)
	movl	$__FUNCTION__.18, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L432
	.loc 5 262 0
	movslq	60(%rbp),%rdx
	movl	$1, %esi
	movl	$__FUNCTION__.18, %edi
	call	audio_calloc
	.loc 5 263 0
	testq	%rax, %rax
	.loc 5 262 0
	movq	%rax, %rbx
	.loc 5 263 0
	je	.L433
	.loc 5 269 0
	movq	40(%rbp), %rax
	.loc 5 274 0
	movq	%r13, %rsi
	.loc 5 270 0
	movq	$0, 80(%rbx)
	.loc 5 272 0
	movq	$0, 88(%rbx)
	.loc 5 274 0
	movq	%rbx, %rdi
	.loc 5 269 0
	movq	%rax, 96(%rbx)
	.loc 5 274 0
	call	*(%rax)
	testl	%eax, %eax
	jne	.L411
	.loc 5 278 0
	xorl	%esi, %esi
	cmpl	$0, 72(%rbx)
	movl	$__FUNCTION__.18, %edi
	setle	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L434
.LBB106:
	.loc 2 176 0
	movl	8(%rbx), %ebp
.LBE106:
	.loc 5 284 0
	movslq	36(%rbx),%r13
.LBB107:
.LBB108:
	.loc 2 181 0
	movl	$1, %eax
.LBE108:
.LBE107:
	.loc 5 284 0
	movslq	12(%rbx),%r14
.LBB109:
.LBB110:
	.loc 2 177 0
	cmpl	$16, %ebp
	je	.L416
	jle	.L435
	.loc 2 184 0
	movl	$2, %eax
	.loc 2 177 0
	cmpl	$32, %ebp
.L428:
	je	.L416
	.loc 2 188 0
	movl	$1, %esi
	movl	$.LC83, %edi
	call	audio_bug
	.loc 2 189 0
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	$.LC84, %esi
	xorl	%edi, %edi
	call	AUD_log
	xorl	%eax, %eax
.L416:
.LBE110:
.LBE109:
	.loc 2 176 0
	movslq	%eax,%rdx
	leaq	(%r14,%r14,2), %rcx
	leaq	(%r13,%r13,2), %rax
.LBB111:
.LBB112:
	.loc 5 85 0
	movl	72(%rbx), %esi
	movl	$__FUNCTION__.19, %edi
.LBE112:
.LBE111:
	.loc 2 176 0
	leaq	(%rax,%rcx,2), %rcx
	movl	$96, %eax
	addq	%rdx, %rcx
	cmpl	$2, 20(%rbx)
	movl	$0, %edx
	cmovne	%rdx, %rax
.LBB113:
.LBB114:
	.loc 5 85 0
	movb	$16, %dl
.LBE114:
.LBE113:
	.loc 2 176 0
	movq	mixeng_clip(%rax,%rcx,8), %rax
	movq	%rax, 40(%rbx)
.LBB115:
.LBB116:
	.loc 5 85 0
	call	audio_calloc
	.loc 5 86 0
	testq	%rax, %rax
	.loc 5 85 0
	movq	%rax, 64(%rbx)
	.loc 5 86 0
	je	.L436
.LBE116:
.LBE115:
	.loc 5 297 0
	movq	40(%r12), %rax
	testq	%rax, %rax
	movq	%rax, 104(%rbx)
	je	.L426
	movq	40(%r12), %rdx
	leaq	104(%rbx), %rax
	movq	%rax, 112(%rdx)
.L426:
	leaq	40(%r12), %rax
	movq	%rbx, 40(%r12)
	.loc 5 300 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	.loc 5 297 0
	movq	%rax, 112(%rbx)
	.loc 5 298 0
	decl	56(%r12)
	.loc 5 300 0
	call	audio_attach_capture
	.loc 5 302 0
	movq	%rbx, %rax
.L405:
	.loc 5 309 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L436:
.LBB117:
.LBB118:
	.loc 5 87 0
	movl	72(%rbx), %esi
	movl	$.LC90, %edi
.L429:
.L413:
	call	dolog
.LBE118:
.LBE117:
	.loc 5 305 0
	movq	96(%rbx), %rax
	movq	%rbx, %rdi
	call	*8(%rax)
.L411:
	.loc 5 307 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L405
	.p2align 4,,7
.L435:
.LBB119:
.LBB120:
	.loc 2 178 0
	xorb	%al, %al
	.loc 2 177 0
	cmpl	$8, %ebp
	jmp	.L428
.L432:
.LBE120:
.LBE119:
	.loc 5 258 0
	movl	$.LC87, %edi
.L431:
	xorl	%eax, %eax
	call	dolog
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L405
.L434:
	.loc 5 279 0
	movl	72(%rbx), %esi
	movl	$.LC89, %edi
	xorl	%eax, %eax
	jmp	.L429
.L433:
	.loc 5 264 0
	movl	60(%rbp), %edx
	movq	(%rbp), %rsi
	xorl	%eax, %eax
	movl	$.LC88, %edi
	call	dolog
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L405
.LFE162:
	.size	audio_pcm_hw_add_new_out, .-audio_pcm_hw_add_new_out
	.p2align 4,,15
	.type	audio_close_out, @function
audio_close_out:
.LFB165:
	.loc 5 382 0
	movq	%rbx, -16(%rsp)
.LCFI82:
	movq	%r12, -8(%rsp)
.LCFI83:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI84:
	.loc 5 382 0
	movq	%rdi, %r12
	.loc 5 383 0
	movq	%rsi, %rdi
	call	audio_pcm_sw_fini_out
	.loc 5 384 0
	movq	%rbx, %rdi
	call	audio_pcm_hw_del_sw_out
	.loc 5 385 0
	leaq	80(%rbx), %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_gc_out
	.loc 5 386 0
	movq	%rbx, %rdi
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	jmp	qemu_free
.LFE165:
	.size	audio_close_out, .-audio_close_out
	.section	.rodata
	.type	__FUNCTION__.20, @object
	.size	__FUNCTION__.20, 14
__FUNCTION__.20:
	.string	"AUD_close_out"
	.section	.rodata.str1.1
.LC91:
	.string	"card=%p card->audio=%p\n"
	.text
	.p2align 4,,15
.globl AUD_close_out
	.type	AUD_close_out, @function
AUD_close_out:
.LFB166:
	.loc 5 390 0
	movq	%rbx, -16(%rsp)
.LCFI85:
	movq	%rbp, -8(%rsp)
.LCFI86:
	subq	$24, %rsp
.LCFI87:
	.loc 5 391 0
	testq	%rsi, %rsi
	.loc 5 390 0
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 5 391 0
	je	.L438
	.loc 5 392 0
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.L444
	cmpq	$0, (%rdi)
	je	.L444
	movl	$__FUNCTION__.20, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L440
.L449:
	.loc 5 393 0
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	.L446
	movq	(%rbx), %rdx
.L446:
	movq	%rbx, %rsi
	.loc 5 400 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	.loc 5 393 0
	movl	$.LC91, %edi
	xorl	%eax, %eax
	.loc 5 400 0
	addq	$24, %rsp
	.loc 5 393 0
	jmp	dolog
	.p2align 4,,7
.L444:
	.loc 5 392 0
	movl	$1, %esi
	movl	$__FUNCTION__.20, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L449
.L440:
	.loc 5 398 0
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	.loc 5 400 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 5 398 0
	jmp	audio_close_out
	.p2align 4,,7
.L438:
	.loc 5 400 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE166:
	.size	AUD_close_out, .-AUD_close_out
	.section	.rodata
	.type	__FUNCTION__.15, @object
	.size	__FUNCTION__.15, 13
__FUNCTION__.15:
	.string	"AUD_open_out"
	.align 32
	.type	__FUNCTION__.17, @object
	.size	__FUNCTION__.17, 32
__FUNCTION__.17:
	.string	"audio_pcm_create_voice_pair_out"
	.section	.rodata.str1.8
	.align 8
.LC93:
	.string	"Can not open `%s' (no host audio driver)\n"
	.align 8
.LC92:
	.string	"card=%p card->audio=%p name=%p callback_fn=%p as=%p\n"
	.align 8
.LC94:
	.string	"Internal logic error voice `%s' has no hardware store\n"
	.section	.rodata.str1.1
.LC96:
	.string	"Failed to create voice `%s'\n"
	.section	.rodata.str1.8
	.align 8
.LC95:
	.string	"Could not allocate soft voice `%s' (%zu bytes)\n"
	.text
	.p2align 4,,15
.globl AUD_open_out
	.type	AUD_open_out, @function
AUD_open_out:
.LFB167:
	.loc 5 410 0
	movq	%rbx, -48(%rsp)
.LCFI88:
	movq	%rbp, -40(%rsp)
.LCFI89:
	movq	%rsi, %rbx
	movq	%r13, -24(%rsp)
.LCFI90:
	movq	%r14, -16(%rsp)
.LCFI91:
	.loc 5 420 0
	xorl	%esi, %esi
	.loc 5 410 0
	movq	%r12, -32(%rsp)
.LCFI92:
	movq	%r15, -8(%rsp)
.LCFI93:
	subq	$120, %rsp
.LCFI94:
	.loc 5 420 0
	testq	%rdi, %rdi
	.loc 5 410 0
	movq	%rdi, %rbp
	movq	%rdx, %r14
	movq	%rcx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, %r13
	.loc 5 413 0
	movl	$0, 20(%rsp)
	.loc 5 414 0
	movq	$0, 8(%rsp)
	.loc 5 420 0
	je	.L455
	cmpq	$0, (%rdi)
	sete	%dl
	testq	%r14, %r14
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L505
.L455:
	movl	$1, %esi
	movl	$__FUNCTION__.15, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L506
.L451:
	.loc 5 429 0
	movq	%r13, %rdi
	.loc 5 427 0
	movq	(%rbp), %r12
	.loc 5 429 0
	call	audio_validate_settings
	movl	$__FUNCTION__.15, %edi
	movl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L507
	.loc 5 434 0
	xorl	%esi, %esi
	cmpq	$0, (%r12)
	movl	$__FUNCTION__.15, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	.loc 5 435 0
	movq	%r14, %rsi
	movl	$.LC93, %edi
	.loc 5 434 0
	jne	.L502
	.loc 5 439 0
	testq	%rbx, %rbx
	je	.L463
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	audio_pcm_info_eq
	testl	%eax, %eax
	.loc 5 440 0
	movq	%rbx, %rdx
	.loc 5 439 0
	jne	.L450
.L463:
	.loc 5 444 0
	movl	conf+64(%rip), %r15d
	testl	%r15d, %r15d
	setne	%dl
	xorl	%eax, %eax
	testq	%rbx, %rbx
	setne	%al
	testl	%edx, %eax
	jne	.L508
.L464:
	.loc 5 466 0
	movl	conf(%rip), %r9d
	testl	%r9d, %r9d
	sete	%dl
	xorl	%eax, %eax
	testq	%rbx, %rbx
	setne	%al
	testl	%edx, %eax
	jne	.L509
	.loc 5 471 0
	testq	%rbx, %rbx
	je	.L467
.LBB121:
	.loc 5 472 0
	movq	80(%rbx), %r12
	.loc 5 474 0
	testq	%r12, %r12
	je	.L510
	.loc 5 480 0
	movq	%rbx, %rdi
	call	audio_pcm_sw_fini_out
	.loc 5 481 0
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	audio_pcm_sw_init_out
	testl	%eax, %eax
	jne	.L460
.L499:
.LBE121:
	.loc 5 494 0
	movq	nominal_volume(%rip), %rax
	movq	%rax, 96(%rbx)
	movq	nominal_volume+8(%rip), %rax
	movq	%rax, 104(%rbx)
	movq	nominal_volume+16(%rip), %rax
	movq	%rax, 112(%rbx)
	.loc 5 495 0
	movq	24(%rsp), %rdx
	movq	%rdx, 128(%rbx)
	.loc 5 496 0
	movq	32(%rsp), %rax
	movq	%rax, 120(%rbx)
	.loc 5 499 0
	movl	20(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L497
.LBB122:
	.loc 5 500 0
	movq	8(%rsp), %rdx
	movl	20(%rdx), %ecx
	sall	%cl, 20(%rsp)
	movl	20(%rsp), %eax
	imull	24(%rdx), %eax
	movl	%eax, 20(%rsp)
	cltd
	idivl	24(%rbx)
	.loc 5 508 0
	addl	%eax, 64(%rbx)
.L497:
.LBE122:
	.loc 5 519 0
	movq	%rbx, %rdx
	.p2align 4,,7
.L450:
	.loc 5 524 0
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rbp
	movq	%rdx, %rax
	movq	88(%rsp), %r12
	movq	96(%rsp), %r13
	movq	104(%rsp), %r14
	movq	112(%rsp), %r15
	addq	$120, %rsp
	ret
	.p2align 4,,7
.L505:
	.loc 5 420 0
	testq	%r8, %r8
	sete	%dl
	testq	%r9, %r9
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L455
	movl	$__FUNCTION__.15, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L451
	.p2align 4,,7
.L506:
	.loc 5 422 0
	xorl	%edx, %edx
	testq	%rbp, %rbp
	je	.L459
	movq	(%rbp), %rdx
.L459:
	movq	24(%rsp), %r8
	movq	%r13, %r9
	movq	%r14, %rcx
	movq	%rbp, %rsi
	movl	$.LC92, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 522 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_out
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L450
	.p2align 4,,7
.L507:
	.loc 5 430 0
	movq	%r13, %rdi
	call	audio_print_settings
.L460:
	.loc 5 522 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_out
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L450
	.p2align 4,,7
.L508:
	.loc 5 444 0
	movl	68(%rbx), %r11d
	testl	%r11d, %r11d
	jne	.L464
	movl	72(%rbx), %r10d
	testl	%r10d, %r10d
	jne	.L464
	.loc 5 445 0
	movl	64(%rbx), %eax
	.loc 5 458 0
	testl	%eax, %eax
	.loc 5 445 0
	movl	%eax, 20(%rsp)
	.loc 5 458 0
	je	.L464
	.loc 5 459 0
	movq	%rbx, 8(%rsp)
	.loc 5 460 0
	movq	$0, 128(%rbx)
	.loc 5 461 0
	xorl	%ebx, %ebx
	jmp	.L464
.L510:
.LBB123:
	.loc 5 475 0
	movq	88(%rbx), %rsi
	movl	$.LC78, %eax
	movl	$.LC94, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	.p2align 4,,7
.L502:
	xorl	%eax, %eax
	call	dolog
	jmp	.L460
.L509:
.LBE123:
	.loc 5 467 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_out
.L467:
.LBB124:
.LBB125:
	.loc 5 345 0
	movl	conf(%rip), %r8d
	testl	%r8d, %r8d
	je	.L473
	.loc 5 346 0
	movq	conf+12(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	conf+20(%rip), %rax
.L501:
	.loc 5 352 0
	movl	$152, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.17, %edi
	.loc 5 349 0
	movq	%rax, 56(%rsp)
	.loc 5 352 0
	call	audio_calloc
	.loc 5 353 0
	testq	%rax, %rax
	.loc 5 352 0
	movq	%rax, %rbp
	.loc 5 353 0
	je	.L511
.LBB126:
.LBB127:
	.loc 5 315 0
	movl	conf(%rip), %edi
.LBE127:
	.loc 5 312 0
	leaq	48(%rsp), %r15
.LBB128:
	.loc 5 315 0
	testl	%edi, %edi
	je	.L479
	movl	conf+8(%rip), %esi
	testl	%esi, %esi
	jne	.L512
.L479:
.LBB129:
	.loc 5 234 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L482:
.LBB130:
	.loc 5 237 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_find_any_out
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L513
	.loc 5 236 0
	leaq	8(%rbx), %rdi
	movq	%r15, %rsi
	call	audio_pcm_info_eq
	testl	%eax, %eax
	je	.L482
	.loc 5 237 0
	movq	%rbx, %rax
.L485:
.LBE130:
.LBE129:
	.loc 5 323 0
	testq	%rax, %rax
	.loc 5 324 0
	movq	%rax, %rcx
	.loc 5 323 0
	je	.L514
.L481:
.LBE128:
.LBE126:
	.loc 5 360 0
	testq	%rcx, %rcx
	.loc 5 312 0
	movq	%rcx, 40(%rsp)
	.loc 5 360 0
	je	.L490
.LBB131:
.LBB132:
	.loc 5 189 0
	movq	80(%rcx), %rax
	testq	%rax, %rax
	movq	%rax, 136(%rbp)
	je	.L491
	movq	80(%rcx), %rdx
	leaq	136(%rbp), %rax
	movq	%rax, 144(%rdx)
.L491:
	leaq	80(%rcx), %rax
	movq	%rbp, 80(%rcx)
.LBE132:
.LBE131:
	.loc 5 366 0
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%rbp, %rdi
.LBB133:
.LBB134:
	.loc 5 189 0
	movq	%rax, 144(%rbp)
.LBE134:
.LBE133:
	.loc 5 366 0
	movq	40(%rsp), %rsi
	call	audio_pcm_sw_init_out
	testl	%eax, %eax
	.loc 5 368 0
	movq	%rbp, %rsi
	.loc 5 366 0
	jne	.L515
.L495:
.LBE125:
.LBE124:
	.loc 5 487 0
	testq	%rsi, %rsi
	.loc 5 340 0
	movq	%rsi, %rbx
	.loc 5 487 0
	jne	.L499
	.loc 5 488 0
	movq	%r14, %rsi
	movl	$.LC96, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L450
	.p2align 4,,7
.L473:
.LBB135:
.LBB136:
	.loc 5 349 0
	movq	(%r13), %rax
	movq	%rax, 48(%rsp)
	movq	8(%r13), %rax
	jmp	.L501
.L512:
.LBB137:
.LBB138:
	.loc 5 316 0
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_add_new_out
	.loc 5 317 0
	testq	%rax, %rax
	.loc 5 318 0
	movq	%rax, %rcx
	.loc 5 317 0
	jne	.L481
	jmp	.L479
.L513:
.LBB139:
.LBB140:
	.loc 5 239 0
	xorl	%eax, %eax
	.p2align 4,,5
	jmp	.L485
.L515:
.L494:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
	.loc 5 373 0
	movq	%rbp, %rdi
	.p2align 4,,7
	call	audio_pcm_hw_del_sw_out
	.loc 5 374 0
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_gc_out
.L490:
.L478:
	.loc 5 376 0
	movq	%rbp, %rdi
	call	qemu_free
	.loc 5 377 0
	xorl	%esi, %esi
	jmp	.L495
.L511:
	.loc 5 354 0
	testq	%r14, %r14
	movl	$.LC78, %esi
	movl	$152, %edx
	cmovne	%r14, %rsi
	movl	$.LC95, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 377 0
	xorl	%esi, %esi
	jmp	.L495
.L514:
.LBB141:
.LBB142:
	.loc 5 327 0
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_add_new_out
	.loc 5 328 0
	testq	%rax, %rax
	.loc 5 329 0
	movq	%rax, %rcx
	.loc 5 328 0
	jne	.L481
	.loc 5 330 0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	audio_pcm_hw_find_any_out
	movq	%rax, %rcx
	jmp	.L481
.LBE142:
.LBE141:
.LBE136:
.LBE135:
.LFE167:
	.size	AUD_open_out, .-AUD_open_out
	.p2align 4,,15
.globl AUD_is_active_out
	.type	AUD_is_active_out, @function
AUD_is_active_out:
.LFB168:
	.loc 5 527 0
	.loc 5 528 0
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L518
	movl	68(%rdi), %eax
.L518:
	.loc 5 529 0
	rep ; ret
.LFE168:
	.size	AUD_is_active_out, .-AUD_is_active_out
	.p2align 4,,15
.globl AUD_init_time_stamp_out
	.type	AUD_init_time_stamp_out, @function
AUD_init_time_stamp_out:
.LFB169:
	.loc 5 532 0
	.loc 5 533 0
	testq	%rdi, %rdi
	je	.L519
	.loc 5 537 0
	movq	80(%rdi), %rax
	movq	56(%rax), %rax
	movq	%rax, (%rsi)
.L519:
	rep ; ret
.LFE169:
	.size	AUD_init_time_stamp_out, .-AUD_init_time_stamp_out
	.p2align 4,,15
.globl AUD_get_elapsed_usec_out
	.type	AUD_get_elapsed_usec_out, @function
AUD_get_elapsed_usec_out:
.LFB170:
	.loc 5 541 0
	.loc 5 545 0
	xorl	%r8d, %r8d
	.loc 5 544 0
	testq	%rdi, %rdi
	je	.L521
	.loc 5 548 0
	movq	80(%rdi), %rcx
	.loc 5 549 0
	movq	(%rsi), %rax
	.loc 5 548 0
	movq	56(%rcx), %rdx
	.loc 5 552 0
	cmpq	%rax, %rdx
	jae	.L526
	.loc 5 556 0
	subq	%rax, %rdx
	decq	%rdx
.L524:
	.loc 5 560 0
	xorl	%r8d, %r8d
	.loc 5 559 0
	testq	%rdx, %rdx
	je	.L521
	.loc 5 563 0
	movslq	16(%rcx),%rcx
	movabsq	$4835703278458516699, %rsi
	imulq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	movq	%rdx, %r8
	shrq	$18, %r8
.L521:
	.loc 5 564 0
	movq	%r8, %rax
	ret
	.p2align 4,,7
.L526:
	.loc 5 553 0
	subq	%rax, %rdx
	jmp	.L524
.LFE170:
	.size	AUD_get_elapsed_usec_out, .-AUD_get_elapsed_usec_out
	.section	.rodata
	.align 32
	.type	__FUNCTION__.10, @object
	.size	__FUNCTION__.10, 32
__FUNCTION__.10:
	.string	"audio_pcm_sw_alloc_resources_in"
	.text
	.p2align 4,,15
	.type	audio_pcm_sw_init_in, @function
audio_pcm_sw_init_in:
.LFB176:
	.loc 5 145 0
	movq	%rbp, -32(%rsp)
.LCFI95:
	movq	%rdi, %rbp
	.loc 5 148 0
	leaq	4(%rdi), %rdi
	.loc 5 145 0
	movq	%rbx, -40(%rsp)
.LCFI96:
	movq	%r12, -24(%rsp)
.LCFI97:
	movq	%rsi, %rbx
	movq	%r13, -16(%rsp)
.LCFI98:
	movq	%r14, -8(%rsp)
.LCFI99:
	movq	%rcx, %rsi
	subq	$40, %rsp
.LCFI100:
	.loc 5 145 0
	movq	%rdx, %r14
	.loc 5 148 0
	call	audio_pcm_init_info
	.loc 5 156 0
	movslq	12(%rbp),%rax
	.loc 5 149 0
	movq	%rbx, 80(%rbp)
	.loc 5 150 0
	movl	$0, (%rbp)
	.loc 5 156 0
	movslq	12(%rbx),%rdx
.LBB143:
	.loc 2 176 0
	movl	4(%rbp), %ebx
.LBE143:
	.loc 5 162 0
	movslq	32(%rbp),%r12
	movslq	8(%rbp),%r13
	.loc 5 156 0
	salq	$32, %rax
	movq	%rdx, %rcx
	cqto
	idivq	%rcx
.LBB144:
.LBB145:
	.loc 2 177 0
	cmpl	$16, %ebx
.LBE145:
.LBE144:
	.loc 5 156 0
	movq	%rax, 40(%rbp)
.LBB146:
.LBB147:
	.loc 2 181 0
	movl	$1, %eax
	.loc 2 177 0
	je	.L530
	jle	.L546
	.loc 2 184 0
	movl	$2, %eax
	.loc 2 177 0
	cmpl	$32, %ebx
.L544:
	je	.L530
	.loc 2 188 0
	movl	$1, %esi
	movl	$.LC83, %edi
	call	audio_bug
	.loc 2 189 0
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$.LC84, %esi
	xorl	%edi, %edi
	call	AUD_log
	xorl	%eax, %eax
.L530:
.LBE147:
.LBE146:
	.loc 2 176 0
	movslq	%eax,%rdx
	leaq	(%r13,%r13,2), %rcx
	leaq	(%r12,%r12,2), %rax
	.loc 5 169 0
	movq	%r14, %rdi
	.loc 2 176 0
	leaq	(%rax,%rcx,2), %rcx
	movl	$96, %eax
	addq	%rdx, %rcx
	cmpl	$2, 16(%rbp)
	movl	$0, %edx
	cmovne	%rdx, %rax
	movq	mixeng_clip(%rax,%rcx,8), %rax
	movq	%rax, 72(%rbp)
	.loc 5 169 0
	call	qemu_strdup
	movq	%rax, 88(%rbp)
.LBB148:
.LBB149:
	.loc 5 116 0
	movq	80(%rbp), %rax
	.loc 5 119 0
	movl	$__FUNCTION__.10, %edi
	.loc 5 116 0
	movslq	72(%rax),%rdx
	salq	$32, %rdx
	movq	%rdx, %rax
	cqto
	idivq	40(%rbp)
	.loc 5 119 0
	movl	$16, %edx
	movl	%eax, %esi
	.loc 5 116 0
	movq	%rax, %rbx
	.loc 5 119 0
	call	audio_calloc
	.loc 5 120 0
	testq	%rax, %rax
	.loc 5 119 0
	movq	%rax, 64(%rbp)
	.loc 5 120 0
	jne	.L537
	.loc 5 121 0
	movq	88(%rbp), %rsi
	movl	$.LC78, %eax
	movl	%ebx, %edx
	movl	$.LC85, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	dolog
.L545:
.LBE149:
.LBE148:
	.loc 5 172 0
	movq	88(%rbp), %rdi
.LBB150:
.LBB151:
	.loc 5 133 0
	movl	$-1, %ebx
.LBE151:
.LBE150:
	.loc 5 172 0
	call	qemu_free
	.loc 5 173 0
	movq	$0, 88(%rbp)
.L542:
	.loc 5 176 0
	movl	%ebx, %eax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L546:
.LBB152:
.LBB153:
	.loc 2 178 0
	xorb	%al, %al
	.loc 2 177 0
	cmpl	$8, %ebx
	jmp	.L544
	.p2align 4,,7
.L537:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	.loc 5 129 0
	movq	80(%rbp), %rax
	movl	12(%rbp), %esi
	.loc 5 135 0
	xorl	%ebx, %ebx
	.loc 5 129 0
	movl	12(%rax), %edi
	call	st_rate_start
	.loc 5 131 0
	testq	%rax, %rax
	.loc 5 129 0
	movq	%rax, 48(%rbp)
	.loc 5 131 0
	jne	.L542
	.loc 5 132 0
	movq	64(%rbp), %rdi
	call	qemu_free
	.loc 5 133 0
	movq	$0, 64(%rbp)
	jmp	.L545
.LBE155:
.LBE154:
.LFE176:
	.size	audio_pcm_sw_init_in, .-audio_pcm_sw_init_in
	.p2align 4,,15
	.type	audio_pcm_sw_fini_in, @function
audio_pcm_sw_fini_in:
.LFB177:
	.loc 5 179 0
	pushq	%rbx
.LCFI101:
	.loc 5 179 0
	movq	%rdi, %rbx
.LBB156:
.LBB157:
	.loc 5 97 0
	movq	64(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L552
.L548:
	.loc 5 101 0
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L553
.L549:
.LBE157:
.LBE156:
	.loc 5 181 0
	movq	88(%rbx), %rdi
.LBB158:
.LBB159:
	.loc 5 105 0
	movq	$0, 64(%rbx)
	.loc 5 106 0
	movq	$0, 48(%rbx)
.LBE159:
.LBE158:
	.loc 5 181 0
	testq	%rdi, %rdi
	jne	.L554
	.loc 5 185 0
	popq	%rbx
	ret
	.p2align 4,,7
.L554:
	.loc 5 182 0
	call	qemu_free
	.loc 5 183 0
	movq	$0, 88(%rbx)
	.loc 5 185 0
	popq	%rbx
	.p2align 4,,5
	ret
	.p2align 4,,7
.L553:
.LBB160:
.LBB161:
	.loc 5 102 0
	.p2align 4,,6
	call	st_rate_stop
	.p2align 4,,6
	jmp	.L549
	.p2align 4,,7
.L552:
	.loc 5 98 0
	.p2align 4,,8
	call	qemu_free
	.p2align 4,,8
	jmp	.L548
.LBE161:
.LBE160:
.LFE177:
	.size	audio_pcm_sw_fini_in, .-audio_pcm_sw_fini_in
	.p2align 4,,15
	.type	audio_pcm_hw_del_sw_in, @function
audio_pcm_hw_del_sw_in:
.LFB179:
	.loc 5 193 0
	.loc 5 194 0
	movq	136(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L556
	movq	144(%rdi), %rax
	movq	%rax, 144(%rdx)
.L556:
	movq	144(%rdi), %rax
	movq	%rdx, (%rax)
	ret
.LFE179:
	.size	audio_pcm_hw_del_sw_in, .-audio_pcm_hw_del_sw_in
	.p2align 4,,15
	.type	audio_pcm_hw_gc_in, @function
audio_pcm_hw_gc_in:
.LFB180:
	.loc 5 198 0
	movq	%rbx, -16(%rsp)
.LCFI102:
	movq	%rbp, -8(%rsp)
.LCFI103:
	subq	$24, %rsp
.LCFI104:
	.loc 5 199 0
	movq	(%rsi), %rbx
	.loc 5 198 0
	movq	%rsi, %rbp
	.loc 5 201 0
	cmpq	$0, 80(%rbx)
	jne	.L557
	.loc 5 205 0
	movq	96(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L562
	movq	104(%rbx), %rax
	movq	%rdx, (%rax)
	.loc 5 206 0
	incl	60(%rdi)
.LBB162:
.LBB163:
	.loc 5 76 0
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L563
.L560:
.LBE163:
.LBE162:
	.loc 5 208 0
	movq	88(%rbx), %rax
	movq	%rbx, %rdi
.LBB164:
.LBB165:
	.loc 5 80 0
	movq	$0, 64(%rbx)
.LBE165:
.LBE164:
	.loc 5 208 0
	call	*48(%rax)
	.loc 5 209 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 5 210 0
	movq	$0, (%rbp)
.L557:
	.loc 5 212 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L562:
	.loc 5 205 0
	movq	104(%rbx), %rax
	movq	%rax, 104(%rdx)
	movq	104(%rbx), %rax
	movq	%rdx, (%rax)
	.loc 5 206 0
	incl	60(%rdi)
.LBB166:
.LBB167:
	.loc 5 76 0
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L560
.L563:
	.loc 5 77 0
	call	qemu_free
	jmp	.L560
.LBE167:
.LBE166:
.LFE180:
	.size	audio_pcm_hw_gc_in, .-audio_pcm_hw_gc_in
	.p2align 4,,15
	.type	audio_pcm_hw_find_any_in, @function
audio_pcm_hw_find_any_in:
.LFB181:
	.loc 5 215 0
	.loc 5 216 0
	testq	%rsi, %rsi
	je	.L565
	movq	96(%rsi), %rax
	ret
	.p2align 4,,7
.L565:
	movq	32(%rdi), %rax
	.loc 5 217 0
	ret
.LFE181:
	.size	audio_pcm_hw_find_any_in, .-audio_pcm_hw_find_any_in
	.p2align 4,,15
	.type	audio_pcm_hw_find_any_enabled_in, @function
audio_pcm_hw_find_any_enabled_in:
.LFB182:
	.loc 5 220 0
	pushq	%rbx
.LCFI105:
	movq	%rdi, %rbx
	.p2align 4,,7
.L568:
	.loc 5 223 0
	movq	%rbx, %rdi
	call	audio_pcm_hw_find_any_in
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L572
	.loc 5 222 0
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.L568
	.loc 5 227 0
	popq	%rbx
	.loc 5 223 0
	movq	%rsi, %rax
	.loc 5 227 0
	ret
.L572:
	popq	%rbx
	.loc 5 226 0
	xorl	%eax, %eax
	.loc 5 227 0
	.p2align 4,,2
	ret
.LFE182:
	.size	audio_pcm_hw_find_any_enabled_in, .-audio_pcm_hw_find_any_enabled_in
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12, @object
	.size	__FUNCTION__.12, 24
__FUNCTION__.12:
	.string	"audio_pcm_hw_add_new_in"
	.align 32
	.type	__FUNCTION__.13, @object
	.size	__FUNCTION__.13, 32
__FUNCTION__.13:
	.string	"audio_pcm_hw_alloc_resources_in"
	.section	.rodata.str1.8
	.align 8
.LC97:
	.string	"Could not allocate capture buffer (%d samples)\n"
	.text
	.p2align 4,,15
	.type	audio_pcm_hw_add_new_in, @function
audio_pcm_hw_add_new_in:
.LFB184:
	.loc 5 244 0
	movq	%r12, -24(%rsp)
.LCFI106:
	movq	%r13, -16(%rsp)
.LCFI107:
	.loc 5 249 0
	xorl	%eax, %eax
	.loc 5 244 0
	movq	%rbx, -40(%rsp)
.LCFI108:
	movq	%rbp, -32(%rsp)
.LCFI109:
	movq	%rdi, %r12
	movq	%r14, -8(%rsp)
.LCFI110:
	subq	$40, %rsp
.LCFI111:
	.loc 5 248 0
	movl	60(%rdi), %edx
	.loc 5 244 0
	movq	%rsi, %r13
	.loc 5 246 0
	movq	(%rdi), %rbp
	.loc 5 248 0
	testl	%edx, %edx
	je	.L573
	.loc 5 252 0
	xorl	%esi, %esi
	testq	%rbp, %rbp
	movl	$__FUNCTION__.12, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	.loc 5 253 0
	movl	$.LC86, %edi
	.loc 5 252 0
	jne	.L599
	.loc 5 257 0
	xorl	%esi, %esi
	cmpq	$0, 40(%rbp)
	movl	$__FUNCTION__.12, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L600
	.loc 5 262 0
	movslq	64(%rbp),%rdx
	movl	$1, %esi
	movl	$__FUNCTION__.12, %edi
	call	audio_calloc
	.loc 5 263 0
	testq	%rax, %rax
	.loc 5 262 0
	movq	%rax, %rbx
	.loc 5 263 0
	je	.L601
	.loc 5 269 0
	movq	40(%rbp), %rax
	.loc 5 274 0
	movq	%r13, %rsi
	.loc 5 270 0
	movq	$0, 80(%rbx)
	.loc 5 274 0
	movq	%rbx, %rdi
	.loc 5 269 0
	movq	%rax, 88(%rbx)
	.loc 5 274 0
	call	*40(%rax)
	testl	%eax, %eax
	jne	.L579
	.loc 5 278 0
	xorl	%esi, %esi
	cmpl	$0, 72(%rbx)
	movl	$__FUNCTION__.12, %edi
	setle	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L602
.LBB168:
	.loc 2 176 0
	movl	4(%rbx), %ebp
.LBE168:
	.loc 5 286 0
	movslq	32(%rbx),%r13
.LBB169:
.LBB170:
	.loc 2 181 0
	movl	$1, %eax
.LBE170:
.LBE169:
	.loc 5 286 0
	movslq	8(%rbx),%r14
.LBB171:
.LBB172:
	.loc 2 177 0
	cmpl	$16, %ebp
	je	.L584
	jle	.L603
	.loc 2 184 0
	movl	$2, %eax
	.loc 2 177 0
	cmpl	$32, %ebp
.L596:
	je	.L584
	.loc 2 188 0
	movl	$1, %esi
	movl	$.LC83, %edi
	call	audio_bug
	.loc 2 189 0
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	$.LC84, %esi
	xorl	%edi, %edi
	call	AUD_log
	xorl	%eax, %eax
.L584:
.LBE172:
.LBE171:
	.loc 2 176 0
	movslq	%eax,%rdx
	leaq	(%r14,%r14,2), %rcx
	leaq	(%r13,%r13,2), %rax
.LBB173:
.LBB174:
	.loc 5 85 0
	movl	72(%rbx), %esi
	movl	$__FUNCTION__.13, %edi
.LBE174:
.LBE173:
	.loc 2 176 0
	leaq	(%rax,%rcx,2), %rcx
	movl	$96, %eax
	addq	%rdx, %rcx
	cmpl	$2, 16(%rbx)
	movl	$0, %edx
	cmovne	%rdx, %rax
.LBB175:
.LBB176:
	.loc 5 85 0
	movb	$16, %dl
.LBE176:
.LBE175:
	.loc 2 176 0
	movq	mixeng_conv(%rax,%rcx,8), %rax
	movq	%rax, 40(%rbx)
.LBB177:
.LBB178:
	.loc 5 85 0
	call	audio_calloc
	.loc 5 86 0
	testq	%rax, %rax
	.loc 5 85 0
	movq	%rax, 64(%rbx)
	.loc 5 86 0
	je	.L604
.LBE178:
.LBE177:
	.loc 5 297 0
	movq	32(%r12), %rax
	testq	%rax, %rax
	movq	%rax, 96(%rbx)
	je	.L594
	movq	32(%r12), %rdx
	leaq	96(%rbx), %rax
	movq	%rax, 104(%rdx)
.L594:
	leaq	32(%r12), %rax
	movq	%rbx, 32(%r12)
	movq	%rax, 104(%rbx)
	.loc 5 298 0
	decl	60(%r12)
	.loc 5 302 0
	movq	%rbx, %rax
.L573:
	.loc 5 309 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L604:
.LBB179:
.LBB180:
	.loc 5 87 0
	movl	72(%rbx), %esi
	movl	$.LC97, %edi
.L597:
.L581:
	call	dolog
.LBE180:
.LBE179:
	.loc 5 305 0
	movq	88(%rbx), %rax
	movq	%rbx, %rdi
	call	*48(%rax)
.L579:
	.loc 5 307 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L573
	.p2align 4,,7
.L603:
.LBB181:
.LBB182:
	.loc 2 178 0
	xorb	%al, %al
	.loc 2 177 0
	cmpl	$8, %ebp
	jmp	.L596
.L600:
.LBE182:
.LBE181:
	.loc 5 258 0
	movl	$.LC87, %edi
.L599:
	xorl	%eax, %eax
	call	dolog
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L573
.L602:
	.loc 5 279 0
	movl	72(%rbx), %esi
	movl	$.LC89, %edi
	xorl	%eax, %eax
	jmp	.L597
.L601:
	.loc 5 264 0
	movl	64(%rbp), %edx
	movq	(%rbp), %rsi
	xorl	%eax, %eax
	movl	$.LC88, %edi
	call	dolog
	.loc 5 308 0
	xorl	%eax, %eax
	jmp	.L573
.LFE184:
	.size	audio_pcm_hw_add_new_in, .-audio_pcm_hw_add_new_in
	.section	.rodata
	.type	__FUNCTION__.14, @object
	.size	__FUNCTION__.14, 13
__FUNCTION__.14:
	.string	"AUD_close_in"
	.text
	.p2align 4,,15
.globl AUD_close_in
	.type	AUD_close_in, @function
AUD_close_in:
.LFB188:
	.loc 5 390 0
	pushq	%rbp
.LCFI112:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI113:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI114:
	.loc 5 391 0
	testq	%rsi, %rsi
	je	.L605
	.loc 5 392 0
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.L611
	cmpq	$0, (%rdi)
	je	.L611
	movl	$__FUNCTION__.14, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L607
.L617:
	.loc 5 393 0
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	.L613
	movq	(%rbx), %rdx
.L613:
	.loc 5 400 0
	addq	$8, %rsp
	.loc 5 393 0
	movq	%rbx, %rsi
	movl	$.LC91, %edi
	.loc 5 400 0
	popq	%rbx
	popq	%rbp
	.loc 5 393 0
	xorl	%eax, %eax
	jmp	dolog
	.p2align 4,,7
.L611:
	.loc 5 392 0
	movl	$1, %esi
	movl	$__FUNCTION__.14, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L617
.L607:
.LBB183:
	.loc 5 382 0
	movq	(%rbx), %rbx
.LBB184:
	.loc 5 383 0
	movq	%rbp, %rdi
	call	audio_pcm_sw_fini_in
	.loc 5 384 0
	movq	%rbp, %rdi
	call	audio_pcm_hw_del_sw_in
	.loc 5 385 0
	leaq	80(%rbp), %rsi
	movq	%rbx, %rdi
	call	audio_pcm_hw_gc_in
.LBE184:
.LBE183:
	.loc 5 400 0
	addq	$8, %rsp
.LBB185:
.LBB186:
	.loc 5 386 0
	movq	%rbp, %rdi
.LBE186:
.LBE185:
	.loc 5 400 0
	popq	%rbx
	popq	%rbp
.LBB187:
.LBB188:
	.loc 5 386 0
	jmp	qemu_free
	.p2align 4,,7
.L605:
.LBE188:
.LBE187:
	.loc 5 400 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE188:
	.size	AUD_close_in, .-AUD_close_in
	.section	.rodata
	.type	__FUNCTION__.9, @object
	.size	__FUNCTION__.9, 12
__FUNCTION__.9:
	.string	"AUD_open_in"
	.align 16
	.type	__FUNCTION__.11, @object
	.size	__FUNCTION__.11, 31
__FUNCTION__.11:
	.string	"audio_pcm_create_voice_pair_in"
	.text
	.p2align 4,,15
.globl AUD_open_in
	.type	AUD_open_in, @function
AUD_open_in:
.LFB189:
	.loc 5 410 0
	movq	%rbx, -48(%rsp)
.LCFI115:
	movq	%rbp, -40(%rsp)
.LCFI116:
	movq	%rsi, %rbx
	movq	%r12, -32(%rsp)
.LCFI117:
	movq	%r14, -16(%rsp)
.LCFI118:
	.loc 5 420 0
	xorl	%esi, %esi
	.loc 5 410 0
	movq	%r13, -24(%rsp)
.LCFI119:
	movq	%r15, -8(%rsp)
.LCFI120:
	subq	$104, %rsp
.LCFI121:
	.loc 5 420 0
	testq	%rdi, %rdi
	.loc 5 410 0
	movq	%rdi, %rbp
	movq	%rdx, %r14
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, %r12
	.loc 5 420 0
	je	.L623
	cmpq	$0, (%rdi)
	sete	%dl
	testq	%r14, %r14
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L670
.L623:
	movl	$1, %esi
	movl	$__FUNCTION__.9, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L671
.L619:
	.loc 5 429 0
	movq	%r12, %rdi
	.loc 5 427 0
	movq	(%rbp), %r13
	.loc 5 429 0
	call	audio_validate_settings
	movl	$__FUNCTION__.9, %edi
	movl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L672
	.loc 5 434 0
	xorl	%esi, %esi
	cmpq	$0, (%r13)
	movl	$__FUNCTION__.9, %edi
	sete	%sil
	call	audio_bug
	testl	%eax, %eax
	.loc 5 435 0
	movq	%r14, %rsi
	movl	$.LC93, %edi
	.loc 5 434 0
	jne	.L667
	.loc 5 439 0
	testq	%rbx, %rbx
	je	.L631
	leaq	4(%rbx), %rdi
	movq	%r12, %rsi
	call	audio_pcm_info_eq
	testl	%eax, %eax
	.loc 5 440 0
	movq	%rbx, %rdx
	.loc 5 439 0
	jne	.L618
.L631:
	.loc 5 466 0
	movl	conf+28(%rip), %r8d
	testl	%r8d, %r8d
	sete	%dl
	xorl	%eax, %eax
	testq	%rbx, %rbx
	setne	%al
	testl	%edx, %eax
	jne	.L673
	.loc 5 471 0
	testq	%rbx, %rbx
	je	.L633
.LBB189:
	.loc 5 472 0
	movq	80(%rbx), %r13
	.loc 5 474 0
	testq	%r13, %r13
	je	.L674
	.loc 5 480 0
	movq	%rbx, %rdi
	call	audio_pcm_sw_fini_in
	.loc 5 481 0
	movq	%r12, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	audio_pcm_sw_init_in
	testl	%eax, %eax
	jne	.L628
.L664:
.LBE189:
	.loc 5 494 0
	movq	nominal_volume(%rip), %rax
	.loc 5 519 0
	movq	%rbx, %rdx
	.loc 5 494 0
	movq	%rax, 96(%rbx)
	movq	nominal_volume+8(%rip), %rax
	movq	%rax, 104(%rbx)
	movq	nominal_volume+16(%rip), %rax
	movq	%rax, 112(%rbx)
	.loc 5 495 0
	movq	8(%rsp), %rax
	movq	%rax, 128(%rbx)
	.loc 5 496 0
	movq	16(%rsp), %rax
	movq	%rax, 120(%rbx)
	.p2align 4,,7
.L618:
	.loc 5 524 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	%rdx, %rax
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
	.p2align 4,,7
.L670:
	.loc 5 420 0
	testq	%r8, %r8
	sete	%dl
	testq	%r9, %r9
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L623
	movl	$__FUNCTION__.9, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L619
	.p2align 4,,7
.L671:
	.loc 5 422 0
	xorl	%edx, %edx
	testq	%rbp, %rbp
	je	.L627
	movq	(%rbp), %rdx
.L627:
	movq	8(%rsp), %r8
	movq	%r12, %r9
	movq	%r14, %rcx
	movq	%rbp, %rsi
	movl	$.LC92, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 522 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_in
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L618
	.p2align 4,,7
.L672:
	.loc 5 430 0
	movq	%r12, %rdi
	call	audio_print_settings
.L628:
	.loc 5 522 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_in
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L618
.L673:
	.loc 5 467 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	AUD_close_in
.L633:
.LBB190:
.LBB191:
	.loc 5 345 0
	movl	conf+28(%rip), %edi
	testl	%edi, %edi
	je	.L639
	.loc 5 346 0
	movq	conf+40(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	conf+48(%rip), %rax
.L666:
	.loc 5 352 0
	movl	$152, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.11, %edi
	.loc 5 349 0
	movq	%rax, 40(%rsp)
	.loc 5 352 0
	call	audio_calloc
	.loc 5 353 0
	testq	%rax, %rax
	.loc 5 352 0
	movq	%rax, %rbp
	.loc 5 353 0
	je	.L675
.LBB192:
.LBB193:
	.loc 5 315 0
	movl	conf+28(%rip), %esi
.LBE193:
	.loc 5 312 0
	leaq	32(%rsp), %r15
.LBB194:
	.loc 5 315 0
	testl	%esi, %esi
	je	.L645
	movl	conf+36(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L676
.L645:
.LBB195:
	.loc 5 234 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L648:
.LBB196:
	.loc 5 237 0
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_find_any_in
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L677
	.loc 5 236 0
	leaq	4(%rbx), %rdi
	movq	%r15, %rsi
	call	audio_pcm_info_eq
	testl	%eax, %eax
	je	.L648
	.loc 5 237 0
	movq	%rbx, %rax
.L651:
.LBE196:
.LBE195:
	.loc 5 323 0
	testq	%rax, %rax
	.loc 5 324 0
	movq	%rax, %rcx
	.loc 5 323 0
	je	.L678
.L647:
.LBE194:
.LBE192:
	.loc 5 360 0
	testq	%rcx, %rcx
	.loc 5 312 0
	movq	%rcx, 24(%rsp)
	.loc 5 360 0
	je	.L656
.LBB197:
.LBB198:
	.loc 5 189 0
	movq	80(%rcx), %rax
	testq	%rax, %rax
	movq	%rax, 136(%rbp)
	je	.L657
	movq	80(%rcx), %rdx
	leaq	136(%rbp), %rax
	movq	%rax, 144(%rdx)
.L657:
	leaq	80(%rcx), %rax
	movq	%rbp, 80(%rcx)
.LBE198:
.LBE197:
	.loc 5 366 0
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%rbp, %rdi
.LBB199:
.LBB200:
	.loc 5 189 0
	movq	%rax, 144(%rbp)
.LBE200:
.LBE199:
	.loc 5 366 0
	movq	24(%rsp), %rsi
	call	audio_pcm_sw_init_in
	testl	%eax, %eax
	.loc 5 368 0
	movq	%rbp, %rsi
	.loc 5 366 0
	jne	.L679
.L661:
.LBE191:
.LBE190:
	.loc 5 487 0
	testq	%rsi, %rsi
	.loc 5 340 0
	movq	%rsi, %rbx
	.loc 5 487 0
	jne	.L664
	.loc 5 488 0
	movq	%r14, %rsi
	movl	$.LC96, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 523 0
	xorl	%edx, %edx
	jmp	.L618
	.p2align 4,,7
.L674:
.LBB201:
	.loc 5 475 0
	movq	88(%rbx), %rsi
	movl	$.LC78, %eax
	movl	$.LC94, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	.p2align 4,,7
.L667:
	xorl	%eax, %eax
	call	dolog
	jmp	.L628
.L639:
.LBE201:
.LBB202:
.LBB203:
	.loc 5 349 0
	movq	(%r12), %rax
	movq	%rax, 32(%rsp)
	movq	8(%r12), %rax
	jmp	.L666
.L676:
.LBB204:
.LBB205:
	.loc 5 316 0
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_add_new_in
	.loc 5 317 0
	testq	%rax, %rax
	.loc 5 318 0
	movq	%rax, %rcx
	.loc 5 317 0
	jne	.L647
	jmp	.L645
.L677:
.LBB206:
.LBB207:
	.loc 5 239 0
	xorl	%eax, %eax
	.p2align 4,,5
	jmp	.L651
.L679:
.L660:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
	.loc 5 373 0
	movq	%rbp, %rdi
	.p2align 4,,7
	call	audio_pcm_hw_del_sw_in
	.loc 5 374 0
	leaq	24(%rsp), %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_gc_in
.L656:
.L644:
	.loc 5 376 0
	movq	%rbp, %rdi
	call	qemu_free
	.loc 5 377 0
	xorl	%esi, %esi
	jmp	.L661
.L675:
	.loc 5 354 0
	testq	%r14, %r14
	movl	$.LC78, %esi
	movl	$152, %edx
	cmovne	%r14, %rsi
	movl	$.LC95, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 377 0
	xorl	%esi, %esi
	jmp	.L661
.L678:
.LBB208:
.LBB209:
	.loc 5 327 0
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_add_new_in
	.loc 5 328 0
	testq	%rax, %rax
	.loc 5 329 0
	movq	%rax, %rcx
	.loc 5 328 0
	jne	.L647
	.loc 5 330 0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	audio_pcm_hw_find_any_in
	movq	%rax, %rcx
	jmp	.L647
.LBE209:
.LBE208:
.LBE203:
.LBE202:
.LFE189:
	.size	AUD_open_in, .-AUD_open_in
	.p2align 4,,15
.globl AUD_is_active_in
	.type	AUD_is_active_in, @function
AUD_is_active_in:
.LFB190:
	.loc 5 527 0
	.loc 5 528 0
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L682
	movl	(%rdi), %eax
.L682:
	.loc 5 529 0
	rep ; ret
.LFE190:
	.size	AUD_is_active_in, .-AUD_is_active_in
	.p2align 4,,15
.globl AUD_init_time_stamp_in
	.type	AUD_init_time_stamp_in, @function
AUD_init_time_stamp_in:
.LFB191:
	.loc 5 532 0
	.loc 5 533 0
	testq	%rdi, %rdi
	je	.L683
	.loc 5 537 0
	movq	80(%rdi), %rax
	movq	56(%rax), %rax
	movq	%rax, (%rsi)
.L683:
	rep ; ret
.LFE191:
	.size	AUD_init_time_stamp_in, .-AUD_init_time_stamp_in
	.p2align 4,,15
.globl AUD_get_elapsed_usec_in
	.type	AUD_get_elapsed_usec_in, @function
AUD_get_elapsed_usec_in:
.LFB192:
	.loc 5 541 0
	.loc 5 545 0
	xorl	%r8d, %r8d
	.loc 5 544 0
	testq	%rdi, %rdi
	je	.L685
	.loc 5 548 0
	movq	80(%rdi), %rcx
	.loc 5 549 0
	movq	(%rsi), %rax
	.loc 5 548 0
	movq	56(%rcx), %rdx
	.loc 5 552 0
	cmpq	%rax, %rdx
	jae	.L690
	.loc 5 556 0
	subq	%rax, %rdx
	decq	%rdx
.L688:
	.loc 5 560 0
	xorl	%r8d, %r8d
	.loc 5 559 0
	testq	%rdx, %rdx
	je	.L685
	.loc 5 563 0
	movslq	12(%rcx),%rcx
	movabsq	$4835703278458516699, %rsi
	imulq	%rdx, %rcx
	movq	%rcx, %rax
	mulq	%rsi
	movq	%rdx, %r8
	shrq	$18, %r8
.L685:
	.loc 5 564 0
	movq	%r8, %rax
	ret
	.p2align 4,,7
.L690:
	.loc 5 553 0
	subq	%rax, %rdx
	jmp	.L688
.LFE192:
	.size	AUD_get_elapsed_usec_in, .-AUD_get_elapsed_usec_in
	.section	.rodata.str1.1
.LC98:
	.string	"Writing to disabled voice %s\n"
	.text
	.p2align 4,,15
.globl AUD_write
	.type	AUD_write, @function
AUD_write:
.LFB193:
	.loc 2 1097 0
	subq	$8, %rsp
.LCFI122:
	.loc 2 1100 0
	testq	%rdi, %rdi
	.loc 2 1102 0
	movl	%edx, %eax
	.loc 2 1100 0
	je	.L691
	.loc 2 1105 0
	movq	80(%rdi), %rax
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	jne	.L693
	.loc 2 1106 0
	movq	88(%rdi), %rsi
	movl	$.LC78, %eax
	movl	$.LC98, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	dolog
	.loc 2 1107 0
	xorl	%eax, %eax
.L691:
	.loc 2 1112 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L693:
	.loc 2 1110 0
	movq	96(%rax), %rax
	movq	24(%rax), %r11
	.loc 2 1112 0
	addq	$8, %rsp
	.loc 2 1110 0
	jmp	*%r11
.LFE193:
	.size	AUD_write, .-AUD_write
	.section	.rodata.str1.8
	.align 8
.LC99:
	.string	"Reading from disabled voice %s\n"
	.text
	.p2align 4,,15
.globl AUD_read
	.type	AUD_read, @function
AUD_read:
.LFB194:
	.loc 2 1115 0
	subq	$8, %rsp
.LCFI123:
	.loc 2 1118 0
	testq	%rdi, %rdi
	.loc 2 1120 0
	movl	%edx, %eax
	.loc 2 1118 0
	je	.L696
	.loc 2 1123 0
	movq	80(%rdi), %rax
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	jne	.L698
	.loc 2 1124 0
	movq	88(%rdi), %rsi
	movl	$.LC78, %eax
	movl	$.LC99, %edi
	testq	%rsi, %rsi
	cmove	%rax, %rsi
	xorl	%eax, %eax
	call	dolog
	.loc 2 1125 0
	xorl	%eax, %eax
.L696:
	.loc 2 1130 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L698:
	.loc 2 1128 0
	movq	88(%rax), %rax
	movq	64(%rax), %r11
	.loc 2 1130 0
	addq	$8, %rsp
	.loc 2 1128 0
	jmp	*%r11
.LFE194:
	.size	AUD_read, .-AUD_read
	.p2align 4,,15
.globl AUD_get_buffer_size_out
	.type	AUD_get_buffer_size_out, @function
AUD_get_buffer_size_out:
.LFB195:
	.loc 2 1133 0
	.loc 2 1134 0
	movq	80(%rdi), %rdx
	movl	72(%rdx), %eax
	movl	28(%rdx), %ecx
	sall	%cl, %eax
	.loc 2 1135 0
	ret
.LFE195:
	.size	AUD_get_buffer_size_out, .-AUD_get_buffer_size_out
	.p2align 4,,15
.globl AUD_set_active_out
	.type	AUD_set_active_out, @function
AUD_set_active_out:
.LFB196:
	.loc 2 1138 0
	movq	%r12, -16(%rsp)
.LCFI124:
	movq	%r13, -8(%rsp)
.LCFI125:
	movq	%rdi, %r12
	movq	%rbx, -32(%rsp)
.LCFI126:
	movq	%rbp, -24(%rsp)
.LCFI127:
	subq	$40, %rsp
.LCFI128:
	.loc 2 1141 0
	testq	%rdi, %rdi
	.loc 2 1138 0
	movl	%esi, %r13d
	.loc 2 1141 0
	je	.L702
	.loc 2 1146 0
	cmpl	%esi, 68(%rdi)
	.loc 2 1145 0
	movq	80(%rdi), %rbp
	.loc 2 1146 0
	je	.L702
.LBB210:
	.loc 2 1150 0
	testl	%esi, %esi
	je	.L705
	.loc 2 1152 0
	movl	(%rbp), %eax
	.loc 2 1151 0
	movl	$0, 4(%rbp)
	.loc 2 1152 0
	testl	%eax, %eax
	je	.L724
.L707:
	.loc 2 1170 0
	movq	88(%rbp), %rbx
	jmp	.L723
	.p2align 4,,7
.L715:
	movq	160(%rbx), %rbx
.L723:
	testq	%rbx, %rbx
	je	.L721
	.loc 2 1171 0
	movl	(%rbp), %eax
	movl	%eax, 68(%rbx)
	.loc 2 1172 0
	movl	(%rbp), %r11d
	testl	%r11d, %r11d
	je	.L715
	.loc 2 1173 0
	movq	152(%rbx), %rdi
	movl	$1, %esi
	call	audio_capture_maybe_changed
	jmp	.L715
.L705:
	.loc 2 1158 0
	movl	(%rbp), %ebx
	testl	%ebx, %ebx
	je	.L707
.LBB211:
	.loc 2 1161 0
	movq	80(%rbp), %rdx
	.loc 2 1159 0
	xorl	%ecx, %ecx
	.p2align 4,,3
	jmp	.L722
	.p2align 4,,7
.L725:
	.loc 2 1163 0
	xorl	%eax, %eax
	cmpl	$0, 68(%rdx)
	.loc 2 1161 0
	movq	136(%rdx), %rdx
	.loc 2 1163 0
	setne	%al
	addl	%eax, %ecx
.L722:
	.loc 2 1161 0
	testq	%rdx, %rdx
	jne	.L725
	.loc 2 1166 0
	xorl	%eax, %eax
	cmpl	$1, %ecx
	sete	%al
	movl	%eax, 4(%rbp)
	jmp	.L707
	.p2align 4,,7
.L721:
.LBE211:
	.loc 2 1176 0
	movl	%r13d, 68(%r12)
.L702:
.LBE210:
	.loc 2 1178 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L724:
.LBB212:
	.loc 2 1154 0
	movq	96(%rbp), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	.loc 2 1153 0
	movl	$1, (%rbp)
	.loc 2 1154 0
	call	*32(%rdx)
	jmp	.L707
.LBE212:
.LFE196:
	.size	AUD_set_active_out, .-AUD_set_active_out
	.p2align 4,,15
.globl AUD_set_active_in
	.type	AUD_set_active_in, @function
AUD_set_active_in:
.LFB197:
	.loc 2 1181 0
	movq	%rbx, -24(%rsp)
.LCFI129:
	movq	%r12, -8(%rsp)
.LCFI130:
	movq	%rdi, %rbx
	movq	%rbp, -16(%rsp)
.LCFI131:
	subq	$24, %rsp
.LCFI132:
	.loc 2 1184 0
	testq	%rdi, %rdi
	.loc 2 1181 0
	movl	%esi, %r12d
	.loc 2 1184 0
	je	.L726
	.loc 2 1189 0
	cmpl	%esi, (%rdi)
	.loc 2 1188 0
	movq	80(%rdi), %rbp
	.loc 2 1189 0
	je	.L726
.LBB213:
	.loc 2 1192 0
	testl	%esi, %esi
	je	.L729
	.loc 2 1193 0
	movl	(%rbp), %eax
	testl	%eax, %eax
	je	.L741
.L730:
	.loc 2 1197 0
	movl	52(%rbp), %eax
	movl	%eax, 56(%rbx)
.L731:
	.loc 2 1214 0
	movl	%r12d, (%rbx)
.L726:
.LBE213:
	.loc 2 1216 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L729:
.LBB214:
	.loc 2 1200 0
	movl	(%rbp), %eax
	testl	%eax, %eax
	je	.L731
.LBB215:
	.loc 2 1203 0
	movq	80(%rbp), %rdx
	.loc 2 1201 0
	xorl	%ecx, %ecx
	.loc 2 1203 0
	testq	%rdx, %rdx
	je	.L731
	.p2align 4,,7
.L736:
	.loc 2 1205 0
	xorl	%eax, %eax
	cmpl	$0, (%rdx)
	.loc 2 1203 0
	movq	136(%rdx), %rdx
	.loc 2 1205 0
	setne	%al
	addl	%eax, %ecx
	.loc 2 1203 0
	testq	%rdx, %rdx
	jne	.L736
	.loc 2 1208 0
	decl	%ecx
	jne	.L731
	.loc 2 1210 0
	movq	88(%rbp), %rdx
	movl	$2, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	.loc 2 1209 0
	movl	$0, (%rbp)
	.loc 2 1210 0
	call	*72(%rdx)
.LBE215:
	.loc 2 1214 0
	movl	%r12d, (%rbx)
	jmp	.L726
.L741:
	.loc 2 1195 0
	movq	88(%rbp), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	.loc 2 1194 0
	movl	$1, (%rbp)
	.loc 2 1195 0
	call	*72(%rdx)
	jmp	.L730
.LBE214:
.LFE197:
	.size	AUD_set_active_in, .-AUD_set_active_in
	.section	.rodata
	.type	__FUNCTION__.6, @object
	.size	__FUNCTION__.6, 15
__FUNCTION__.6:
	.string	"audio_get_free"
	.section	.rodata.str1.1
.LC100:
	.string	"live=%d sw->hw->samples=%d\n"
	.text
	.p2align 4,,15
	.type	audio_get_free, @function
audio_get_free:
.LFB199:
	.loc 2 1242 0
	pushq	%rbp
.LCFI133:
	.loc 2 1246 0
	xorl	%eax, %eax
	.loc 2 1242 0
	pushq	%rbx
.LCFI134:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI135:
	.loc 2 1245 0
	testq	%rdi, %rdi
	je	.L742
	.loc 2 1249 0
	movl	64(%rdi), %ebp
	.loc 2 1251 0
	xorl	%esi, %esi
	testl	%ebp, %ebp
	js	.L748
	movq	80(%rdi), %rax
	cmpl	%ebp, 72(%rax)
	jl	.L748
	movl	$__FUNCTION__.6, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L749
.L744:
	.loc 2 1256 0
	movq	80(%rbx), %rax
	.loc 2 1264 0
	movl	20(%rbx), %ecx
	.loc 2 1256 0
	movl	72(%rax), %eax
	subl	%ebp, %eax
	.loc 2 1264 0
	salq	$32, %rax
	cqto
	idivq	40(%rbx)
	salq	%cl, %rax
.L742:
	.loc 2 1265 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L748:
	.loc 2 1251 0
	movl	$1, %esi
	movl	$__FUNCTION__.6, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L744
.L749:
	.loc 2 1252 0
	movq	80(%rbx), %rax
	movl	%ebp, %esi
	movl	$.LC100, %edi
	movl	72(%rax), %edx
	xorl	%eax, %eax
	call	dolog
	.loc 2 1265 0
	addq	$8, %rsp
	.loc 2 1253 0
	xorl	%eax, %eax
	.loc 2 1265 0
	popq	%rbx
	popq	%rbp
	ret
.LFE199:
	.size	audio_get_free, .-audio_get_free
	.section	.rodata
	.type	__FUNCTION__.5, @object
	.size	__FUNCTION__.5, 14
__FUNCTION__.5:
	.string	"audio_run_out"
	.align 16
	.type	__FUNCTION__.7, @object
	.size	__FUNCTION__.7, 16
__FUNCTION__.7:
	.string	"audio_get_avail"
	.align 16
	.type	__FUNCTION__.8, @object
	.size	__FUNCTION__.8, 18
__FUNCTION__.8:
	.string	"audio_run_capture"
	.section	.rodata.str1.8
	.align 8
.LC103:
	.string	"played=%d sw->total_hw_samples_mixed=%d\n"
	.align 8
.LC101:
	.string	"hw->rpos=%d hw->samples=%d played=%d\n"
	.align 8
.LC104:
	.string	"captured=%d sw->total_hw_samples_mixed=%d\n"
	.align 8
.LC102:
	.string	"Could not mix %d bytes into a capture buffer, mixed %d\n"
	.text
	.p2align 4,,15
	.type	audio_timer, @function
audio_timer:
.LFB204:
	.loc 2 1489 0
	pushq	%r15
.LCFI136:
.LBB216:
.LBB217:
	.loc 2 1306 0
	xorl	%r15d, %r15d
.LBE217:
.LBE216:
	.loc 2 1489 0
	pushq	%r14
.LCFI137:
	pushq	%r13
.LCFI138:
	pushq	%r12
.LCFI139:
	pushq	%rbp
.LCFI140:
	pushq	%rbx
.LCFI141:
	subq	$24, %rsp
.LCFI142:
	.loc 2 1489 0
	movq	%rdi, 8(%rsp)
.L880:
.LBB218:
.LBB219:
	.loc 2 1406 0
	movq	8(%rsp), %rdi
	movq	%r15, %rsi
	call	audio_pcm_hw_find_any_enabled_out
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L881
.L802:
.LBB220:
	.loc 2 1313 0
	leaq	20(%rsp), %rsi
	movq	%r15, %rdi
	call	audio_pcm_hw_get_live_out2
	.loc 2 1315 0
	movl	20(%rsp), %ebp
	.loc 2 1313 0
	movl	%eax, %ebx
	.loc 2 1315 0
	movl	$0, %eax
	testl	%ebp, %ebp
	cmove	%eax, %ebx
	.loc 2 1318 0
	xorl	%esi, %esi
	testl	%ebx, %ebx
	js	.L758
	cmpl	%ebx, 72(%r15)
	jl	.L758
	movl	$__FUNCTION__.5, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L882
.L754:
	.loc 2 1323 0
	movl	4(%r15), %r11d
	testl	%r11d, %r11d
	je	.L759
	movl	20(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L883
.L759:
	.loc 2 1338 0
	testl	%ebx, %ebx
	jne	.L764
	.loc 2 1339 0
	movq	80(%r15), %rbx
	.p2align 4,,2
	jmp	.L873
	.p2align 4,,7
.L767:
	movq	136(%rbx), %rbx
.L873:
	testq	%rbx, %rbx
	je	.L880
	.loc 2 1340 0
	movl	68(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L767
	.loc 2 1341 0
	movq	%rbx, %rdi
	call	audio_get_free
	.loc 2 1342 0
	testl	%eax, %eax
	jle	.L767
	.loc 2 1343 0
	movq	120(%rbx), %rdi
	movl	%eax, %esi
	call	*128(%rbx)
	.p2align 4,,2
	jmp	.L767
.L758:
	.loc 2 1318 0
	movl	$1, %esi
	movl	$__FUNCTION__.5, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L754
.L882:
	.loc 2 1319 0
	movl	72(%r15), %edx
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	$.LC80, %edi
	call	dolog
.LBE220:
	.loc 2 1406 0
	movq	8(%rsp), %rdi
	movq	%r15, %rsi
	call	audio_pcm_hw_find_any_enabled_out
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L802
.L881:
.LBE219:
.LBE218:
.LBB221:
.LBB222:
	.loc 2 1414 0
	xorl	%r12d, %r12d
.L871:
	.loc 2 1426 0
	movq	8(%rsp), %rdi
	movq	%r12, %rsi
	call	audio_pcm_hw_find_any_enabled_in
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L884
.LBB223:
	.loc 2 1420 0
	movq	88(%r12), %rax
	movq	%r12, %rdi
	call	*56(%rax)
	.loc 2 1422 0
	movq	%r12, %rdi
	.loc 2 1420 0
	movl	%eax, %ebx
	.loc 2 1422 0
	call	audio_pcm_hw_find_min_in
	movl	%eax, %r13d
	.loc 2 1423 0
	movl	%ebx, %eax
	subl	%r13d, %eax
	addl	%eax, 52(%r12)
	.loc 2 1424 0
	movslq	%ebx,%rax
	addq	%rax, 56(%r12)
	.loc 2 1426 0
	movq	80(%r12), %rbx
	.p2align 4,,7
.L876:
	testq	%rbx, %rbx
	je	.L871
	.loc 2 1427 0
	movl	56(%rbx), %edx
	.loc 2 1429 0
	movl	(%rbx), %eax
	.loc 2 1427 0
	subl	%r13d, %edx
	.loc 2 1429 0
	testl	%eax, %eax
	.loc 2 1427 0
	movl	%edx, 56(%rbx)
	.loc 2 1429 0
	je	.L808
.LBB224:
.LBB225:
.LBB226:
	.loc 2 1226 0
	movq	80(%rbx), %rcx
	.loc 2 1227 0
	xorl	%esi, %esi
	.loc 2 1226 0
	movl	52(%rcx), %eax
	.loc 2 1227 0
	movl	%eax, %ebp
	subl	%edx, %ebp
	js	.L816
	cmpl	%ebp, 72(%rcx)
	jl	.L816
	movl	$__FUNCTION__.7, %edi
	call	audio_bug
	testl	%eax, %eax
	jne	.L885
.L812:
	.loc 2 1232 0
	movq	%rbp, %rax
	movl	24(%rbx), %ecx
	salq	$32, %rax
	cqto
	idivq	40(%rbx)
	salq	%cl, %rax
.LBE226:
.LBE225:
	.loc 2 1433 0
	testl	%eax, %eax
	jle	.L808
	.loc 2 1434 0
	movq	120(%rbx), %rdi
	movl	%eax, %esi
	call	*128(%rbx)
	.p2align 4,,7
.L808:
.LBE224:
	.loc 2 1426 0
	movq	136(%rbx), %rbx
	jmp	.L876
.L764:
.LBE223:
.LBE222:
.LBE221:
.LBB227:
.LBB228:
.LBB229:
	.loc 2 1350 0
	movl	48(%r15), %eax
	.loc 2 1351 0
	movq	%r15, %rdi
	.loc 2 1350 0
	movl	%eax, (%rsp)
	.loc 2 1351 0
	movq	96(%r15), %rax
	call	*16(%rax)
	.loc 2 1352 0
	xorl	%esi, %esi
	.loc 2 1351 0
	movl	%eax, 4(%rsp)
	.loc 2 1352 0
	movl	72(%r15), %eax
	cmpl	%eax, 48(%r15)
	movl	$__FUNCTION__.5, %edi
	setge	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L886
.L771:
	.loc 2 1362 0
	movl	4(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L772
.LBB230:
.LBB231:
	.loc 2 1271 0
	movl	(%r15), %edi
.LBE231:
.LBE230:
	.loc 2 1363 0
	movslq	4(%rsp),%rax
	addq	%rax, 56(%r15)
.LBB232:
.LBB233:
	.loc 2 1271 0
	testl	%edi, %edi
	je	.L860
.LBB234:
	.loc 2 1274 0
	movq	88(%r15), %r14
	testq	%r14, %r14
	je	.L860
	movl	72(%r15), %ecx
.L783:
.LBB235:
	.loc 2 1278 0
	movl	4(%rsp), %r12d
	.loc 2 1276 0
	movl	(%rsp), %r13d
	.loc 2 1294 0
	testl	%r12d, %r12d
	je	.L778
.L887:
.LBB236:
	.loc 2 1280 0
	movl	%ecx, %eax
.LBB237:
	.loc 2 1281 0
	movl	%r12d, %ebx
.LBE237:
	.loc 2 1282 0
	movl	28(%r15), %ecx
	.loc 2 1280 0
	subl	%r13d, %eax
	.loc 2 1286 0
	movq	%r14, %rdi
.LBB238:
	.loc 2 1281 0
	cmpl	%r12d, %eax
	cmovle	%eax, %ebx
.LBE238:
	.loc 2 1285 0
	movslq	%r13d,%rax
	.loc 2 1286 0
	xorl	%esi, %esi
	.loc 2 1285 0
	salq	$4, %rax
	addq	64(%r15), %rax
	.loc 2 1282 0
	movl	%ebx, %ebp
	sall	%cl, %ebp
	.loc 2 1286 0
	movl	%ebp, %edx
	.loc 2 1285 0
	movq	%rax, 48(%r14)
	.loc 2 1286 0
	call	audio_pcm_sw_write
	.loc 2 1287 0
	cmpl	%ebp, %eax
	jne	.L864
	.loc 2 1294 0
	leal	(%r13,%rbx), %eax
	movl	72(%r15), %ecx
	cltd
	idivl	%ecx
.LBE236:
	subl	%ebx, %r12d
.LBB239:
	movl	%edx, %r13d
.LBE239:
	jne	.L887
.L778:
.LBE235:
	.loc 2 1274 0
	movq	160(%r14), %r14
	testq	%r14, %r14
	jne	.L783
	jmp	.L773
.L860:
	movl	72(%r15), %ecx
.L773:
.LBE234:
	.loc 2 1300 0
	movslq	(%rsp),%rdi
.LBB240:
	.loc 2 1299 0
	movl	%ecx, %ebx
	subl	(%rsp), %ebx
	cmpl	%ebx, 4(%rsp)
	cmovle	4(%rsp), %ebx
.LBE240:
	.loc 2 1300 0
	salq	$4, %rdi
	addq	64(%r15), %rdi
	movl	%ebx, %esi
	call	mixeng_clear
	.loc 2 1301 0
	movl	4(%rsp), %esi
	movq	64(%r15), %rdi
	subl	%ebx, %esi
	call	mixeng_clear
.L772:
.LBE233:
.LBE232:
	.loc 2 1368 0
	movq	80(%r15), %rbx
	.loc 2 1367 0
	xorl	%ebp, %ebp
	.loc 2 1368 0
	testq	%rbx, %rbx
	jne	.L796
	jmp	.L880
	.p2align 4,,7
.L789:
	movq	136(%rbx), %rbx
	testq	%rbx, %rbx
	je	.L888
.L796:
	.loc 2 1369 0
	movl	68(%rbx), %esi
	testl	%esi, %esi
	jne	.L790
	movl	72(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L789
.L790:
	.loc 2 1373 0
	movl	4(%rsp), %eax
	xorl	%esi, %esi
	cmpl	%eax, 64(%rbx)
	movl	$__FUNCTION__.5, %edi
	setl	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L889
	movl	64(%rbx), %eax
.L791:
	.loc 2 1379 0
	subl	4(%rsp), %eax
	.loc 2 1381 0
	testl	%eax, %eax
	.loc 2 1379 0
	movl	%eax, 64(%rbx)
	.loc 2 1381 0
	jne	.L862
	.loc 2 1383 0
	movl	68(%rbx), %eax
	xorl	%edx, %edx
	.loc 2 1382 0
	movl	$1, 72(%rbx)
	.loc 2 1383 0
	testl	%eax, %eax
	jne	.L793
	cmpq	$0, 128(%rbx)
	movb	$1, %dl
	cmovne	%eax, %edx
.L793:
	orl	%edx, %ebp
.L792:
	.loc 2 1386 0
	testl	%eax, %eax
	je	.L789
	.loc 2 1387 0
	movq	%rbx, %rdi
	call	audio_get_free
	.loc 2 1388 0
	testl	%eax, %eax
	jle	.L789
	.loc 2 1389 0
	movq	120(%rbx), %rdi
	movl	%eax, %esi
	call	*128(%rbx)
	.loc 2 1368 0
	movq	136(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L796
.L888:
	.loc 2 1394 0
	testl	%ebp, %ebp
	je	.L880
.LBB241:
	.loc 2 1397 0
	movq	80(%r15), %rbx
	jmp	.L875
.L800:
	.loc 2 1406 0
	movq	%rbp, %rbx
.L875:
	testq	%rbx, %rbx
	.p2align 4,,3
	je	.L880
	.loc 2 1400 0
	movl	68(%rbx), %edx
	.loc 2 1399 0
	movq	136(%rbx), %rbp
	.loc 2 1400 0
	testl	%edx, %edx
	jne	.L800
	cmpq	$0, 128(%rbx)
	jne	.L800
	.loc 2 1404 0
	movq	8(%rsp), %rdi
	movq	%rbx, %rsi
	call	audio_close_out
	jmp	.L800
.L862:
	movl	68(%rbx), %eax
	jmp	.L792
.L889:
.LBE241:
	.loc 2 1374 0
	movl	64(%rbx), %edx
	movl	4(%rsp), %esi
	xorl	%eax, %eax
	movl	$.LC103, %edi
	call	dolog
	.loc 2 1376 0
	movl	64(%rbx), %eax
	movl	%eax, 4(%rsp)
	jmp	.L791
.L883:
.LBB242:
	.loc 2 1330 0
	movq	96(%r15), %rdx
	.loc 2 1328 0
	movl	$0, (%r15)
	.loc 2 1330 0
	movl	$2, %esi
	.loc 2 1329 0
	movl	$0, 4(%r15)
	.loc 2 1330 0
	movq	%r15, %rdi
	xorl	%eax, %eax
	call	*32(%rdx)
	.loc 2 1331 0
	movq	88(%r15), %rbx
	jmp	.L872
.L890:
	.loc 2 1333 0
	movq	152(%rbx), %rdi
	.loc 2 1332 0
	movl	$0, 68(%rbx)
	.loc 2 1333 0
	call	audio_recalc_and_notify_capture
	.loc 2 1331 0
	movq	160(%rbx), %rbx
.L872:
	testq	%rbx, %rbx
	jne	.L890
	jmp	.L880
.L816:
.LBE242:
.LBE229:
.LBE228:
.LBE227:
.LBB243:
.LBB244:
.LBB245:
.LBB246:
.LBB247:
.LBB248:
	.loc 2 1227 0
	movl	$1, %esi
	movl	$__FUNCTION__.7, %edi
	call	audio_bug
	testl	%eax, %eax
	je	.L812
.L885:
	.loc 2 1228 0
	movq	80(%rbx), %rax
	movl	%ebp, %esi
	movl	$.LC100, %edi
	movl	72(%rax), %edx
	xorl	%eax, %eax
	call	dolog
	jmp	.L808
.L886:
.LBE248:
.LBE247:
.LBE246:
.LBE245:
.LBE244:
.LBE243:
.LBB249:
.LBB250:
.LBB251:
	.loc 2 1353 0
	movl	72(%r15), %edx
	movl	48(%r15), %esi
	movl	$.LC101, %edi
	movl	4(%rsp), %ecx
	xorl	%eax, %eax
	call	dolog
	.loc 2 1355 0
	movl	$0, 48(%r15)
	jmp	.L771
.L884:
.LBE251:
.LBE250:
.LBE249:
.LBB252:
.LBB253:
	.loc 2 1445 0
	movq	8(%rsp), %rdx
	movq	48(%rdx), %rbp
	testq	%rbp, %rbp
	je	.L852
.L893:
.LBB254:
	.loc 2 1450 0
	movq	%rbp, %rdi
	call	audio_pcm_hw_get_live_out
	.loc 2 1467 0
	testl	%eax, %eax
	.loc 2 1450 0
	movl	%eax, %r15d
	movl	%eax, %r13d
	.loc 2 1451 0
	movl	48(%rbp), %r14d
	.loc 2 1467 0
	je	.L854
	movl	72(%rbp), %ecx
	.p2align 4,,7
.L832:
.LBB255:
	.loc 2 1453 0
	movl	%ecx, %eax
	.loc 2 1458 0
	movslq	%r14d,%rbx
	.loc 2 1459 0
	movq	120(%rbp), %rdi
	.loc 2 1453 0
	subl	%r14d, %eax
.LBB256:
	.loc 2 1454 0
	cmpl	%eax, %r13d
	movl	%eax, %r12d
	cmovle	%r13d, %r12d
.LBE256:
	.loc 2 1458 0
	salq	$4, %rbx
	addq	64(%rbp), %rbx
	.loc 2 1459 0
	movl	%r12d, %edx
	movq	%rbx, %rsi
	call	*40(%rbp)
	.loc 2 1460 0
	movq	%rbx, %rdi
	movl	%r12d, %esi
	call	mixeng_clear
	.loc 2 1462 0
	movq	128(%rbp), %rbx
	jmp	.L878
	.p2align 4,,7
.L891:
	.loc 2 1463 0
	movl	28(%rbp), %ecx
	movl	%r12d, %edx
	movq	24(%rbx), %rdi
	movq	120(%rbp), %rsi
	sall	%cl, %edx
	call	*8(%rbx)
	.loc 2 1462 0
	movq	32(%rbx), %rbx
.L878:
	testq	%rbx, %rbx
	jne	.L891
	.loc 2 1466 0
	leal	(%r14,%r12), %eax
	movl	72(%rbp), %ecx
	cltd
	idivl	%ecx
.LBE255:
	.loc 2 1467 0
	subl	%r12d, %r13d
.LBB257:
	.loc 2 1466 0
	movl	%edx, %r14d
.LBE257:
	.loc 2 1467 0
	jne	.L832
.L854:
	.loc 2 1471 0
	movq	80(%rbp), %rbx
	.loc 2 1469 0
	movl	%r14d, 48(%rbp)
	jmp	.L879
	.p2align 4,,7
.L835:
	.loc 2 1471 0
	movq	136(%rbx), %rbx
.L879:
	testq	%rbx, %rbx
	je	.L858
	.loc 2 1472 0
	movl	68(%rbx), %eax
	testl	%eax, %eax
	jne	.L836
	movl	72(%rbx), %eax
	testl	%eax, %eax
	jne	.L835
.L836:
	.loc 2 1476 0
	xorl	%esi, %esi
	cmpl	%r15d, 64(%rbx)
	movl	$__FUNCTION__.8, %edi
	setl	%sil
	call	audio_bug
	testl	%eax, %eax
	jne	.L892
	movl	64(%rbx), %eax
.L837:
	.loc 2 1482 0
	subl	%r15d, %eax
	.loc 2 1483 0
	testl	%eax, %eax
	.loc 2 1482 0
	movl	%eax, 64(%rbx)
	.loc 2 1483 0
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 72(%rbx)
	jmp	.L835
.L892:
	.loc 2 1477 0
	movl	64(%rbx), %edx
	movl	%r15d, %esi
	xorl	%eax, %eax
	movl	$.LC104, %edi
	call	dolog
	.loc 2 1479 0
	movl	64(%rbx), %eax
	movl	%eax, %r15d
	jmp	.L837
.L858:
.LBE254:
	.loc 2 1445 0
	movq	136(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.L893
.L852:
.LBE253:
.LBE252:
	.loc 2 1496 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %rsi
	movq	8(%rsp), %rax
	addq	conf+56(%rip), %rsi
	movq	16(%rax), %rdi
	call	qemu_mod_timer
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L864:
.LBB258:
.LBB259:
.LBB260:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
	.loc 2 1288 0
	movl	%eax, %edx
	movl	%ebp, %esi
	movl	$.LC102, %edi
	xorl	%eax, %eax
	call	dolog
	movl	72(%r15), %ecx
.LBE265:
.LBE264:
	.loc 2 1274 0
	movq	160(%r14), %r14
	testq	%r14, %r14
	jne	.L783
	jmp	.L773
.LBE263:
.LBE262:
.LBE261:
.LBE260:
.LBE259:
.LBE258:
.LFE204:
	.size	audio_timer, .-audio_timer
	.section	.rodata.str1.8
	.align 8
.LC108:
	.string	"Theoretically supports upto %d %s voices\n"
	.section	.rodata.str1.1
.LC106:
	.string	"One %s voice\n"
	.section	.rodata.str1.8
	.align 8
.LC107:
	.string	"Theoretically supports many %s voices\n"
	.section	.rodata.str1.1
.LC105:
	.string	"Does not support %s\n"
	.text
	.p2align 4,,15
	.type	audio_pp_nb_voices, @function
audio_pp_nb_voices:
.LFB205:
	.loc 2 1546 0
	.loc 2 1547 0
	cmpl	$1, %esi
	je	.L897
	jle	.L902
	cmpl	$2147483647, %esi
	je	.L898
.L899:
	.loc 2 1558 0
	movq	%rdi, %rdx
	xorl	%eax, %eax
	movl	$.LC108, %edi
	jmp	printf
	.p2align 4,,7
.L897:
	.loc 2 1552 0
	movq	%rdi, %rsi
	movl	$.LC106, %edi
.L901:
	.loc 2 1555 0
	xorl	%eax, %eax
	jmp	printf
	.p2align 4,,7
.L898:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	movl	$.LC107, %edi
	jmp	printf
	.p2align 4,,7
.L902:
	.loc 2 1547 0
	testl	%esi, %esi
	jne	.L899
	.loc 2 1549 0
	movq	%rdi, %rsi
	movl	$.LC105, %edi
	jmp	.L901
.LFE205:
	.size	audio_pp_nb_voices, .-audio_pp_nb_voices
	.section	.rodata.str1.1
.LC109:
	.string	"AUDIO"
.LC110:
	.string	"Audio options:"
.LC111:
	.string	"Available drivers:"
.LC112:
	.string	"Name: %s\n"
.LC113:
	.string	"Description: %s\n"
.LC114:
	.string	"playback"
.LC115:
	.string	"capture"
.LC116:
	.string	"Options:"
	.section	.rodata.str1.8
	.align 8
.LC118:
	.string	"Options are settable through environment variables.\nExample:\n  export QEMU_AUDIO_DRV=wav\n  export QEMU_WAV_PATH=$HOME/tune.wav\n(for csh replace export with setenv in the above)\n  qemu ...\n"
	.section	.rodata.str1.1
.LC117:
	.string	"No options"
	.text
	.p2align 4,,15
.globl AUD_help
	.type	AUD_help, @function
AUD_help:
.LFB206:
	.loc 2 1565 0
	pushq	%rbp
.LCFI143:
	.loc 2 1568 0
	movl	$audio_options, %esi
	movl	$.LC109, %edi
	.loc 2 1569 0
	xorl	%ebp, %ebp
	.loc 2 1565 0
	pushq	%rbx
.LCFI144:
	subq	$8, %rsp
.LCFI145:
	.loc 2 1568 0
	call	audio_process_options
	.p2align 4,,7
.L908:
.LBB266:
	.loc 2 1570 0
	movq	drvtab(,%rbp,8), %rax
	.loc 2 1571 0
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	jne	.L919
.L906:
.LBE266:
	.loc 2 1569 0
	incq	%rbp
	cmpq	$3, %rbp
	jbe	.L908
	.loc 2 1576 0
	movl	$.LC110, %edi
	.loc 2 1582 0
	xorl	%ebp, %ebp
	.loc 2 1576 0
	call	puts
	.loc 2 1577 0
	movl	$audio_options, %esi
	movl	$.LC109, %edi
	call	audio_print_options
	.loc 2 1578 0
	movl	$10, %edi
	call	putchar
	.loc 2 1580 0
	movl	$.LC111, %edi
	call	puts
	.p2align 4,,7
.L914:
.LBB267:
	.loc 2 1583 0
	movq	drvtab(,%rbp,8), %rbx
	.loc 2 1585 0
	movl	$.LC112, %edi
	xorl	%eax, %eax
	movq	(%rbx), %rsi
	call	printf
	.loc 2 1586 0
	movq	8(%rbx), %rsi
	movl	$.LC113, %edi
	xorl	%eax, %eax
	call	printf
	.loc 2 1588 0
	movl	52(%rbx), %esi
	movl	$.LC114, %edi
	call	audio_pp_nb_voices
	.loc 2 1589 0
	movl	56(%rbx), %esi
	movl	$.LC115, %edi
	call	audio_pp_nb_voices
	.loc 2 1591 0
	cmpq	$0, 16(%rbx)
	je	.L912
	.loc 2 1592 0
	movl	$.LC116, %edi
	call	puts
	.loc 2 1593 0
	movq	16(%rbx), %rsi
	movq	(%rbx), %rdi
	call	audio_print_options
.L913:
	.loc 2 1598 0
	movl	$10, %edi
.LBE267:
	.loc 2 1582 0
	incq	%rbp
.LBB268:
	.loc 2 1598 0
	call	putchar
.LBE268:
	.loc 2 1582 0
	cmpq	$3, %rbp
	jbe	.L914
	.loc 2 1601 0
	addq	$8, %rsp
	movl	$.LC118, %edi
	popq	%rbx
	popq	%rbp
	jmp	puts
	.p2align 4,,7
.L912:
.LBB269:
	.loc 2 1596 0
	movl	$.LC117, %edi
	call	puts
	jmp	.L913
	.p2align 4,,7
.L919:
.LBE269:
.LBB270:
	.loc 2 1572 0
	movq	(%rax), %rdi
	call	audio_process_options
	.p2align 4,,6
	jmp	.L906
.LBE270:
.LFE206:
	.size	AUD_help, .-AUD_help
	.section	.rodata
	.align 16
	.type	__FUNCTION__.3, @object
	.size	__FUNCTION__.3, 25
__FUNCTION__.3:
	.string	"audio_init_nb_voices_out"
	.align 16
	.type	__FUNCTION__.4, @object
	.size	__FUNCTION__.4, 24
__FUNCTION__.4:
	.string	"audio_init_nb_voices_in"
	.section	.rodata.str1.8
	.align 8
.LC119:
	.string	"Driver `%s' does not support playback\n"
	.align 8
.LC121:
	.string	"drv=`%s' voice_size=0 max_voices=%d\n"
	.align 8
.LC122:
	.string	"drv=`%s' voice_size=%d max_voices=0\n"
	.align 8
.LC120:
	.string	"Driver `%s' does not support %d playback voices, max %d\n"
	.align 8
.LC123:
	.string	"Driver `%s' does not support %d capture voices, max %d\n"
	.align 8
.LC124:
	.string	"Could not init `%s' audio driver\n"
	.text
	.p2align 4,,15
	.type	audio_driver_init, @function
audio_driver_init:
.LFB207:
	.loc 2 1617 0
	pushq	%r13
.LCFI146:
	pushq	%r12
.LCFI147:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI148:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI149:
	subq	$8, %rsp
.LCFI150:
	.loc 2 1618 0
	movq	16(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.L936
.L921:
	.loc 2 1621 0
	call	*24(%rbp)
	.loc 2 1623 0
	testq	%rax, %rax
	.loc 2 1621 0
	movq	%rax, 8(%r12)
	.loc 2 1623 0
	je	.L922
.LBB271:
.LBB272:
	.loc 5 44 0
	movl	52(%rbp), %ebx
	.loc 5 47 0
	movl	56(%r12), %edx
	.loc 5 45 0
	movl	60(%rbp), %r13d
	.loc 5 47 0
	cmpl	%ebx, %edx
	jg	.L937
	.loc 5 62 0
	testl	%r13d, %r13d
	movl	$__FUNCTION__.3, %edi
	sete	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	setne	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L938
.L926:
	.loc 5 68 0
	testl	%r13d, %r13d
	movl	$__FUNCTION__.3, %edi
	setne	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	sete	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L939
.L928:
.LBE272:
.LBE271:
.LBB273:
.LBB274:
	.loc 5 44 0
	movl	56(%rbp), %ebx
	.loc 5 47 0
	movl	60(%r12), %edx
	.loc 5 45 0
	movl	64(%rbp), %r13d
	.loc 5 47 0
	cmpl	%ebx, %edx
	jle	.L929
	.loc 5 48 0
	testl	%ebx, %ebx
	jne	.L940
.L931:
	.loc 5 59 0
	movl	%ebx, 60(%r12)
.L929:
	.loc 5 62 0
	testl	%r13d, %r13d
	movl	$__FUNCTION__.4, %edi
	sete	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	setne	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L941
.L932:
	.loc 5 68 0
	testl	%r13d, %r13d
	movl	$__FUNCTION__.4, %edi
	setne	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	sete	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	jne	.L942
.L934:
.LBE274:
.LBE273:
	.loc 2 1626 0
	movq	%rbp, (%r12)
	.loc 2 1627 0
	xorl	%eax, %eax
.L920:
	.loc 2 1633 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L937:
.LBB275:
.LBB276:
	.loc 5 48 0
	testl	%ebx, %ebx
	jne	.L924
	.loc 5 50 0
	movq	(%rbp), %rsi
	movl	$.LC119, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 59 0
	movl	%ebx, 56(%r12)
.L943:
	.loc 5 62 0
	testl	%r13d, %r13d
	movl	$__FUNCTION__.3, %edi
	sete	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	setne	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	je	.L926
.L938:
	.loc 5 63 0
	movq	(%rbp), %rsi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$.LC121, %edi
	call	dolog
	.loc 5 68 0
	testl	%r13d, %r13d
	.loc 5 65 0
	movl	$0, 56(%r12)
	.loc 5 68 0
	movl	$__FUNCTION__.3, %edi
	setne	%al
	xorl	%esi, %esi
	testl	%ebx, %ebx
	sete	%sil
	andl	%eax, %esi
	call	audio_bug
	testl	%eax, %eax
	je	.L928
	.p2align 4,,7
.L939:
	.loc 5 69 0
	movq	(%rbp), %rsi
	movl	%r13d, %edx
	movl	$.LC122, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L928
	.p2align 4,,7
.L942:
.LBE276:
.LBE275:
.LBB277:
.LBB278:
	movq	(%rbp), %rsi
	movl	%r13d, %edx
	movl	$.LC122, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L934
	.p2align 4,,7
.L936:
.LBE278:
.LBE277:
	.loc 2 1619 0
	movq	(%rbp), %rdi
	call	audio_process_options
	.p2align 4,,6
	jmp	.L921
	.p2align 4,,7
.L941:
.LBB279:
.LBB280:
	.loc 5 63 0
	movq	(%rbp), %rsi
	movl	%ebx, %edx
	movl	$.LC121, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 65 0
	movl	$0, 60(%r12)
	jmp	.L932
	.p2align 4,,7
.L924:
.LBE280:
.LBE279:
.LBB281:
.LBB282:
	.loc 5 54 0
	movq	(%rbp), %rsi
	movl	%ebx, %ecx
	movl	$.LC120, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 5 59 0
	movl	%ebx, 56(%r12)
	jmp	.L943
	.p2align 4,,7
.L940:
.LBE282:
.LBE281:
.LBB283:
.LBB284:
	.loc 5 54 0
	movq	(%rbp), %rsi
	movl	%ebx, %ecx
	movl	$.LC123, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L931
.L922:
.LBE284:
.LBE283:
	.loc 2 1630 0
	movq	(%rbp), %rsi
	xorl	%eax, %eax
	movl	$.LC124, %edi
	call	dolog
	.loc 2 1631 0
	movl	$-1, %eax
	jmp	.L920
.LFE207:
	.size	audio_driver_init, .-audio_driver_init
	.p2align 4,,15
	.type	audio_vm_change_state_handler, @function
audio_vm_change_state_handler:
.LFB208:
	.loc 2 1636 0
	pushq	%r13
.LCFI151:
	movq	%rdi, %r13
	pushq	%r12
.LCFI152:
	pushq	%rbp
.LCFI153:
	.loc 2 1639 0
	xorl	%ebp, %ebp
	.loc 2 1636 0
	pushq	%rbx
.LCFI154:
	.loc 2 1638 0
	xorl	%ebx, %ebx
	.loc 2 1636 0
	subq	$8, %rsp
.LCFI155:
	.loc 2 1640 0
	cmpl	$1, %esi
	sbbl	%r12d, %r12d
	notl	%r12d
	addl	$2, %r12d
	jmp	.L947
	.p2align 4,,7
.L949:
	.loc 2 1643 0
	movq	96(%rbx), %rdx
	movl	%r12d, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	*32(%rdx)
.L947:
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_find_any_enabled_out
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L949
	.loc 2 1647 0
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_find_any_enabled_in
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L953
	.p2align 4,,7
.L952:
	movq	88(%rbp), %rdx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	*72(%rdx)
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	audio_pcm_hw_find_any_enabled_in
	testq	%rax, %rax
	movq	%rax, %rbp
	jne	.L952
.L953:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE208:
	.size	audio_vm_change_state_handler, .-audio_vm_change_state_handler
	.p2align 4,,15
	.type	audio_atexit, @function
audio_atexit:
.LFB209:
	.loc 2 1652 0
	pushq	%r13
.LCFI156:
	.loc 2 1655 0
	xorl	%r13d, %r13d
	.loc 2 1652 0
	pushq	%r12
.LCFI157:
	.loc 2 1654 0
	xorl	%r12d, %r12d
	.loc 2 1652 0
	pushq	%rbp
.LCFI158:
	pushq	%rbx
.LCFI159:
	subq	$8, %rsp
.LCFI160:
.L975:
	.loc 2 1663 0
	movq	%r12, %rsi
	movl	$glob_audio_state, %edi
	call	audio_pcm_hw_find_any_enabled_out
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L966
.LBB285:
	.loc 2 1660 0
	movq	96(%r12), %rdx
	movl	$2, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	*32(%rdx)
	.loc 2 1661 0
	movq	96(%r12), %rax
	movq	%r12, %rdi
	call	*8(%rax)
	.loc 2 1663 0
	movq	88(%r12), %rbp
	.p2align 4,,7
.L976:
	testq	%rbp, %rbp
	je	.L975
.LBB286:
	.loc 2 1664 0
	movq	152(%rbp), %rax
	.loc 2 1667 0
	movq	128(%rax), %rbx
	jmp	.L977
	.p2align 4,,7
.L978:
	.loc 2 1668 0
	movq	24(%rbx), %rdi
	call	*16(%rbx)
	.loc 2 1667 0
	movq	32(%rbx), %rbx
.L977:
	testq	%rbx, %rbx
	jne	.L978
.LBE286:
	.loc 2 1663 0
	movq	160(%rbp), %rbp
	jmp	.L976
.L968:
.LBE285:
	.loc 2 1674 0
	movq	88(%r13), %rdx
	movq	%r13, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	call	*72(%rdx)
	.loc 2 1675 0
	movq	88(%r13), %rax
	movq	%r13, %rdi
	call	*48(%rax)
.L966:
	movq	%r13, %rsi
	movl	$glob_audio_state, %edi
	call	audio_pcm_hw_find_any_enabled_in
	testq	%rax, %rax
	movq	%rax, %r13
	jne	.L968
	.loc 2 1678 0
	movq	glob_audio_state(%rip), %rax
	testq	%rax, %rax
	jne	.L979
	.loc 2 1681 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L979:
	.loc 2 1679 0
	movq	glob_audio_state+8(%rip), %rdi
	movq	32(%rax), %r11
	.loc 2 1681 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	.loc 2 1679 0
	jmp	*%r11
.LFE209:
	.size	audio_atexit, .-audio_atexit
	.p2align 4,,15
	.type	audio_save, @function
audio_save:
.LFB210:
	.loc 2 1684 0
	.loc 2 1686 0
	rep ; ret
.LFE210:
	.size	audio_save, .-audio_save
	.p2align 4,,15
	.type	audio_load, @function
audio_load:
.LFB211:
	.loc 2 1690 0
	.loc 2 1695 0
	decl	%edx
	movl	$-22, %eax
	movl	$0, %edx
	cmove	%edx, %eax
	.loc 2 1699 0
	ret
.LFE211:
	.size	audio_load, .-audio_load
	.p2align 4,,15
.globl AUD_register_card
	.type	AUD_register_card, @function
AUD_register_card:
.LFB212:
	.loc 2 1702 0
	movq	%rbp, -8(%rsp)
.LCFI161:
	movq	%rdi, %rbp
	movq	%rbx, -16(%rsp)
.LCFI162:
	movq	%rsi, %rdi
	movq	%rdx, %rbx
	subq	$24, %rsp
.LCFI163:
	.loc 2 1703 0
	movq	%rbp, (%rdx)
	.loc 2 1704 0
	call	qemu_strdup
	.loc 2 1705 0
	movq	$0, 16(%rbx)
	.loc 2 1704 0
	movq	%rax, 8(%rbx)
	.loc 2 1705 0
	movq	$0, 24(%rbx)
	.loc 2 1706 0
	movq	24(%rbp), %rax
	testq	%rax, %rax
	movq	%rax, 16(%rbx)
	je	.L984
	movq	24(%rbp), %rdx
	leaq	16(%rbx), %rax
	movq	%rax, 24(%rdx)
.L984:
	leaq	24(%rbp), %rax
	movq	%rbx, 24(%rbp)
	movq	16(%rsp), %rbp
	movq	%rax, 24(%rbx)
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	ret
.LFE212:
	.size	AUD_register_card, .-AUD_register_card
	.p2align 4,,15
.globl AUD_remove_card
	.type	AUD_remove_card, @function
AUD_remove_card:
.LFB213:
	.loc 2 1710 0
	.loc 2 1711 0
	movq	16(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L986
	movq	24(%rdi), %rax
	movq	%rax, 24(%rdx)
.L986:
	movq	24(%rdi), %rax
	movq	%rdx, (%rax)
	.loc 2 1712 0
	movq	$0, (%rdi)
	.loc 2 1713 0
	movq	8(%rdi), %rdi
	jmp	qemu_free
.LFE213:
	.size	AUD_remove_card, .-AUD_remove_card
	.section	.rodata.str1.1
.LC128:
	.string	"QEMU_AUDIO_DRV"
.LC129:
	.string	"Unknown audio driver `%s'\n"
	.section	.rodata.str1.8
	.align 8
.LC130:
	.string	"Run with -audio-help to list available drivers\n"
	.align 8
.LC131:
	.string	"Could not initialize audio subsystem\n"
	.section	.rodata.str1.1
.LC125:
	.string	"Could not create audio timer\n"
	.section	.rodata.str1.8
	.align 8
.LC126:
	.string	"Bogus number of playback voices %d, setting to 1\n"
	.align 8
.LC127:
	.string	"Bogus number of capture voices %d, setting to 0\n"
	.align 8
.LC132:
	.string	"warning: Using timer based audio emulation\n"
	.align 8
.LC134:
	.string	"warning: Could not register change state handler\n(Audio can continue looping even after stopping the VM)\n"
	.align 8
.LC133:
	.string	"warning: Timer period is negative - %d treating as zero\n"
	.text
	.p2align 4,,15
.globl AUD_init
	.type	AUD_init, @function
AUD_init:
.LFB214:
	.loc 2 1717 0
	pushq	%r13
.LCFI164:
	.loc 2 1726 0
	movl	$audio_atexit, %edi
	.loc 2 1719 0
	xorl	%r13d, %r13d
	.loc 2 1717 0
	pushq	%r12
.LCFI165:
	pushq	%rbp
.LCFI166:
	pushq	%rbx
.LCFI167:
	subq	$8, %rsp
.LCFI168:
	.loc 2 1723 0
	movq	$0, glob_audio_state+40(%rip)
	.loc 2 1724 0
	movq	$0, glob_audio_state+32(%rip)
	.loc 2 1725 0
	movq	$0, glob_audio_state+48(%rip)
	.loc 2 1726 0
	call	atexit
	.loc 2 1728 0
	movq	vm_clock(%rip), %rdi
	movl	$glob_audio_state, %edx
	movl	$audio_timer, %esi
	call	qemu_new_timer
	.loc 2 1729 0
	testq	%rax, %rax
	.loc 2 1728 0
	movq	%rax, glob_audio_state+16(%rip)
	.loc 2 1729 0
	je	.L1022
	.loc 2 1734 0
	movl	$audio_options, %esi
	movl	$.LC109, %edi
	call	audio_process_options
	.loc 2 1736 0
	movl	conf+4(%rip), %esi
	.loc 2 1737 0
	movl	conf+32(%rip), %eax
	.loc 2 1739 0
	testl	%esi, %esi
	.loc 2 1736 0
	movl	%esi, glob_audio_state+56(%rip)
	.loc 2 1737 0
	movl	%eax, glob_audio_state+60(%rip)
	.loc 2 1739 0
	jle	.L1023
.L989:
	.loc 2 1745 0
	movl	glob_audio_state+60(%rip), %esi
	testl	%esi, %esi
	jle	.L1024
.L990:
.LBB287:
	.loc 2 1753 0
	leaq	4(%rsp), %rdx
	xorl	%esi, %esi
	movl	$.LC128, %edi
	call	audio_get_conf_str
.LBE287:
	.loc 2 1756 0
	testq	%rax, %rax
.LBB288:
	.loc 2 1753 0
	movq	%rax, %rbp
.LBE288:
	.loc 2 1756 0
	je	.L1019
.LBB289:
	.loc 2 1759 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L996:
.LBB290:
	.loc 2 1760 0
	movq	drvtab(,%rbx,8), %r12
	movq	%rbp, %rdi
	movq	(%r12), %rsi
	call	strcmp
.LBE290:
	testl	%eax, %eax
	je	.L1017
	.loc 2 1759 0
	incq	%rbx
	cmpq	$3, %rbx
	jbe	.L996
	.loc 2 1768 0
	movl	$.LC129, %edi
	xorl	%eax, %eax
	movq	%rbp, %rsi
	call	dolog
	.loc 2 1769 0
	movl	$.LC130, %edi
	xorl	%eax, %eax
	call	dolog
.L991:
.LBE289:
	.loc 2 1773 0
	testl	%r13d, %r13d
	je	.L1019
.L1013:
.LBB291:
	.loc 2 1794 0
	movl	conf+56(%rip), %esi
	testl	%esi, %esi
	jle	.L1025
	.loc 2 1803 0
	movq	ticks_per_sec(%rip), %rdi
	movslq	%esi,%rcx
	movq	%rdi, %rax
	cqto
	idivq	%rcx
	movq	%rax, conf+56(%rip)
.L1010:
	.loc 2 1806 0
	movl	$glob_audio_state, %esi
	movl	$audio_vm_change_state_handler, %edi
	call	qemu_add_vm_change_state_handler
	.loc 2 1807 0
	testq	%rax, %rax
	je	.L1026
.L1012:
.LBE291:
	.loc 2 1817 0
	movl	$glob_audio_state, %eax
	.loc 2 1818 0
	movl	$glob_audio_state, %r9d
	movl	$audio_load, %r8d
	movl	$audio_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC27, %edi
	.loc 2 1817 0
	movq	$0, 24(%rax)
	.loc 2 1818 0
	call	register_savevm
	.loc 2 1819 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %rsi
	addq	conf+56(%rip), %rsi
	movq	glob_audio_state+16(%rip), %rdi
	call	qemu_mod_timer
	.loc 2 1821 0
	addq	$8, %rsp
	.loc 2 1820 0
	movl	$glob_audio_state, %eax
	.loc 2 1821 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L1019:
	.loc 2 1774 0
	xorl	%ebx, %ebx
	jmp	.L1003
	.p2align 4,,7
.L1001:
	incq	%rbx
	testl	%r13d, %r13d
	sete	%dl
	xorl	%eax, %eax
	cmpq	$3, %rbx
	setbe	%al
	testl	%edx, %eax
	je	.L1027
.L1003:
	.loc 2 1775 0
	movq	drvtab(,%rbx,8), %rsi
	movl	48(%rsi), %r12d
	testl	%r12d, %r12d
	je	.L1001
	.loc 2 1776 0
	movl	$glob_audio_state, %edi
	xorl	%r13d, %r13d
	call	audio_driver_init
	testl	%eax, %eax
	sete	%r13b
	.loc 2 1774 0
	incq	%rbx
	testl	%r13d, %r13d
	sete	%dl
	xorl	%eax, %eax
	cmpq	$3, %rbx
	setbe	%al
	testl	%edx, %eax
	jne	.L1003
	.p2align 4,,7
.L1027:
	.loc 2 1781 0
	testl	%r13d, %r13d
	jne	.L1013
	.loc 2 1782 0
	movl	$no_audio_driver, %esi
	movl	$glob_audio_state, %edi
	call	audio_driver_init
	.loc 2 1783 0
	testl	%eax, %eax
	je	.L1005
	.loc 2 1784 0
	xorl	%eax, %eax
	movl	$.LC131, %edi
	call	dolog
	.loc 2 1813 0
	movq	glob_audio_state+16(%rip), %rdi
	call	qemu_del_timer
	.loc 2 1814 0
	xorl	%eax, %eax
.L1029:
	.loc 2 1821 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1025:
.LBB292:
	.loc 2 1795 0
	jl	.L1028
.L1009:
	.loc 2 1800 0
	movq	$1, conf+56(%rip)
	jmp	.L1010
.L1017:
.LBE292:
.LBB293:
	.loc 2 1761 0
	movq	%r12, %rsi
	movl	$glob_audio_state, %edi
	xorl	%r13d, %r13d
	call	audio_driver_init
	testl	%eax, %eax
	sete	%r13b
	jmp	.L991
.L1022:
.LBE293:
	.loc 2 1730 0
	movl	$.LC125, %edi
	call	dolog
	.loc 2 1814 0
	xorl	%eax, %eax
	jmp	.L1029
.L1023:
	.loc 2 1740 0
	movl	$.LC126, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 2 1742 0
	movl	$1, glob_audio_state+56(%rip)
	jmp	.L989
.L1024:
	.loc 2 1746 0
	movl	$.LC127, %edi
	xorl	%eax, %eax
	call	dolog
	.loc 2 1748 0
	movl	$0, glob_audio_state+60(%rip)
	jmp	.L990
.L1005:
	.loc 2 1787 0
	movl	$.LC132, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L1013
.L1026:
.LBB294:
	.loc 2 1808 0
	movl	$.LC134, %edi
	call	dolog
	.p2align 4,,3
	jmp	.L1012
.L1028:
	.loc 2 1796 0
	movl	$.LC133, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L1009
.LBE294:
.LFE214:
	.size	AUD_init, .-AUD_init
	.section	.rodata
	.align 16
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 16
__FUNCTION__.0:
	.string	"AUD_add_capture"
	.section	.rodata.str1.8
	.align 8
.LC138:
	.string	"Could not allocate capture mix buffer (%d samples)\n"
	.align 8
.LC139:
	.string	"Could not allocate capture buffer (%d samples, each %d bytes)\n"
	.align 8
.LC137:
	.string	"Could not allocate capture voice, size %zu\n"
	.align 8
.LC135:
	.string	"Invalid settings were passed when trying to add capture\n"
	.align 8
.LC136:
	.string	"Could not allocate capture callback information, size %zu\n"
	.text
	.p2align 4,,15
.globl AUD_add_capture
	.type	AUD_add_capture, @function
AUD_add_capture:
.LFB215:
	.loc 2 1829 0
	pushq	%r15
.LCFI169:
	.loc 2 1835 0
	movl	$glob_audio_state, %eax
	.loc 2 1829 0
	pushq	%r14
.LCFI170:
	pushq	%r13
.LCFI171:
	movq	%rsi, %r13
	pushq	%r12
.LCFI172:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI173:
	movq	%rcx, %rbp
	pushq	%rbx
.LCFI174:
	movq	%rdx, %rbx
	subq	$8, %rsp
.LCFI175:
	.loc 2 1835 0
	testq	%rdi, %rdi
	.loc 2 1838 0
	movq	%rsi, %rdi
	.loc 2 1835 0
	cmove	%rax, %r12
	.loc 2 1838 0
	call	audio_validate_settings
	testl	%eax, %eax
	jne	.L1070
	.loc 2 1844 0
	movl	$48, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.0, %edi
	call	audio_calloc
	.loc 2 1845 0
	testq	%rax, %rax
	.loc 2 1844 0
	movq	%rax, %r14
	.loc 2 1845 0
	je	.L1071
	.loc 2 1850 0
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r14)
	movq	16(%rbx), %rax
	.loc 2 1851 0
	movq	%rbp, 24(%r14)
	.loc 2 1850 0
	movq	%rax, 16(%r14)
.LBB295:
.LBB296:
	.loc 2 733 0
	movq	48(%r12), %rbx
	jmp	.L1068
	.p2align 4,,7
.L1072:
	.loc 2 734 0
	leaq	8(%rbx), %rdi
	movq	%r13, %rsi
	call	audio_pcm_info_eq
	testl	%eax, %eax
	jne	.L1067
	.loc 2 733 0
	movq	136(%rbx), %rbx
.L1068:
	testq	%rbx, %rbx
	jne	.L1072
.L1041:
.LBE296:
.LBE295:
.LBB297:
	.loc 2 1862 0
	movl	$152, %edx
	movl	$1, %esi
	movl	$__FUNCTION__.0, %edi
	call	audio_calloc
	.loc 2 1863 0
	testq	%rax, %rax
	.loc 2 1862 0
	movq	%rax, %rbp
	.loc 2 1863 0
	je	.L1073
	.loc 2 1870 0
	movq	$0, 80(%rax)
	.loc 2 1871 0
	movq	$0, 128(%rax)
	.loc 2 1875 0
	movl	$16, %edx
	.loc 2 1874 0
	movl	$16384, 72(%rax)
	.loc 2 1875 0
	movl	$16384, %esi
	movl	$__FUNCTION__.0, %edi
	call	audio_calloc
	.loc 2 1877 0
	testq	%rax, %rax
	.loc 2 1875 0
	movq	%rax, 64(%rbp)
	.loc 2 1877 0
	je	.L1074
	.loc 2 1883 0
	leaq	8(%rbp), %rdi
	movq	%r13, %rsi
	.loc 2 1885 0
	movl	$1, %ebx
	.loc 2 1883 0
	call	audio_pcm_init_info
	.loc 2 1885 0
	movl	28(%rbp), %ecx
	movl	%ebx, %eax
	movl	72(%rbp), %esi
	movl	$__FUNCTION__.0, %edi
	sall	%cl, %eax
	movslq	%eax,%rdx
	call	audio_calloc
	.loc 2 1886 0
	testq	%rax, %rax
	.loc 2 1885 0
	movq	%rax, 120(%rbp)
	.loc 2 1886 0
	je	.L1064
.LBB298:
	.loc 2 176 0
	movl	8(%rbp), %ebx
.LBE298:
	.loc 2 1893 0
	movslq	36(%rbp),%r13
.LBB299:
.LBB300:
	.loc 2 181 0
	movl	$1, %eax
.LBE300:
.LBE299:
	.loc 2 1893 0
	movslq	12(%rbp),%r15
.LBB301:
.LBB302:
	.loc 2 177 0
	cmpl	$16, %ebx
	je	.L1052
	jle	.L1075
	.loc 2 184 0
	movl	$2, %eax
	.loc 2 177 0
	cmpl	$32, %ebx
.L1069:
	je	.L1052
	.loc 2 188 0
	movl	$1, %esi
	movl	$.LC83, %edi
	call	audio_bug
	.loc 2 189 0
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	$.LC84, %esi
	xorl	%edi, %edi
	call	AUD_log
	xorl	%eax, %eax
.L1052:
.LBE302:
.LBE301:
	.loc 2 176 0
	movslq	%eax,%rdx
	leaq	(%r15,%r15,2), %rcx
	leaq	(%r13,%r13,2), %rax
	leaq	(%rax,%rcx,2), %rcx
	movl	$96, %eax
	addq	%rdx, %rcx
	cmpl	$2, 20(%rbp)
	movl	$0, %edx
	cmovne	%rdx, %rax
	movq	mixeng_clip(%rax,%rcx,8), %rax
	movq	%rax, 40(%rbp)
	.loc 2 1899 0
	movq	48(%r12), %rax
	testq	%rax, %rax
	movq	%rax, 136(%rbp)
	je	.L1059
	movq	48(%r12), %rdx
	leaq	136(%rbp), %rax
	movq	%rax, 144(%rdx)
.L1059:
	leaq	48(%r12), %rax
	movq	%rbp, 48(%r12)
	movq	%rax, 144(%rbp)
	.loc 2 1900 0
	movq	128(%rbp), %rax
	testq	%rax, %rax
	movq	%rax, 32(%r14)
	je	.L1060
	movq	128(%rbp), %rdx
	leaq	32(%r14), %rax
	movq	%rax, 40(%rdx)
.L1060:
	leaq	128(%rbp), %rax
	movq	%r14, 128(%rbp)
	.loc 2 1902 0
	xorl	%ebx, %ebx
	.loc 2 1900 0
	movq	%rax, 40(%r14)
	jmp	.L1061
	.p2align 4,,7
.L1063:
	.loc 2 1904 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	audio_attach_capture
.L1061:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	audio_pcm_hw_find_any_out
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L1063
.LBE297:
	.loc 2 1917 0
	addq	$8, %rsp
.LBB303:
	.loc 2 1906 0
	movq	%rbp, %rax
.LBE303:
	.loc 2 1917 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1067:
	.loc 2 1854 0
	testq	%rbx, %rbx
.LBB304:
.LBB305:
	.loc 2 735 0
	movq	%rbx, %rcx
.LBE305:
.LBE304:
	.loc 2 1854 0
	je	.L1041
	.loc 2 1855 0
	movq	128(%rbx), %rax
	testq	%rax, %rax
	movq	%rax, 32(%r14)
	je	.L1042
	movq	128(%rbx), %rdx
	leaq	32(%r14), %rax
	movq	%rax, 40(%rdx)
.L1042:
	leaq	128(%rcx), %rax
	movq	%r14, 128(%rcx)
	movq	%rax, 40(%r14)
	.loc 2 1917 0
	addq	$8, %rsp
	.loc 2 1856 0
	movq	%rcx, %rax
	.loc 2 1917 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1075:
.LBB306:
.LBB307:
.LBB308:
	.loc 2 178 0
	xorb	%al, %al
	.loc 2 177 0
	cmpl	$8, %ebx
	jmp	.L1069
.L1074:
.LBE308:
.LBE307:
	.loc 2 1878 0
	movl	72(%rbp), %esi
	movl	$.LC138, %edi
	call	dolog
.L1047:
	.loc 2 1911 0
	movq	%rbp, %rdi
	call	qemu_free
.L1045:
.L1033:
	.loc 2 1913 0
	movq	%r14, %rdi
	call	qemu_free
	.loc 2 1915 0
	xorl	%eax, %eax
.L1076:
.LBE306:
	.loc 2 1917 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1064:
.L1049:
.LBB309:
	.loc 2 1887 0
	movl	28(%rbp), %ecx
	movl	72(%rbp), %esi
	movl	$.LC139, %edi
	xorl	%eax, %eax
	sall	%cl, %ebx
	movl	%ebx, %edx
	call	dolog
	.loc 2 1909 0
	movq	64(%rbp), %rdi
	call	qemu_free
	jmp	.L1047
.L1073:
	.loc 2 1864 0
	movl	$152, %esi
	movl	$.LC137, %edi
	xorl	%eax, %eax
	call	dolog
	jmp	.L1045
.L1070:
.LBE309:
	.loc 2 1839 0
	xorl	%eax, %eax
	movl	$.LC135, %edi
	call	dolog
	.loc 2 1840 0
	movq	%r13, %rdi
	call	audio_print_settings
.LBB310:
	.loc 2 1915 0
	xorl	%eax, %eax
	jmp	.L1076
.L1071:
.LBE310:
	.loc 2 1846 0
	xorl	%eax, %eax
	movl	$48, %esi
	movl	$.LC136, %edi
	call	dolog
.LBB311:
	.loc 2 1915 0
	xorl	%eax, %eax
	jmp	.L1076
.LBE311:
.LFE215:
	.size	AUD_add_capture, .-AUD_add_capture
	.p2align 4,,15
.globl AUD_del_capture
	.type	AUD_del_capture, @function
AUD_del_capture:
.LFB216:
	.loc 2 1920 0
	pushq	%r12
.LCFI176:
	pushq	%rbp
.LCFI177:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI178:
	.loc 2 1923 0
	movq	128(%rdi), %rbx
	jmp	.L1095
	.p2align 4,,7
.L1098:
	.loc 2 1924 0
	cmpq	%rsi, 24(%rbx)
	je	.L1097
	.loc 2 1923 0
	movq	32(%rbx), %rbx
.L1095:
	testq	%rbx, %rbx
	jne	.L1098
.L1077:
	.loc 2 1954 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.p2align 4,,1
	ret
.L1097:
	.loc 2 1925 0
	movq	%rsi, %rdi
	.p2align 4,,2
	call	*16(%rbx)
	.loc 2 1926 0
	movq	32(%rbx), %rdx
	testq	%rdx, %rdx
	.p2align 4,,2
	jne	.L1099
.L1082:
	movq	40(%rbx), %rax
	.loc 2 1927 0
	movq	%rbx, %rdi
	.loc 2 1926 0
	movq	%rdx, (%rax)
	.loc 2 1927 0
	call	qemu_free
	.loc 2 1929 0
	cmpq	$0, 128(%rbp)
	jne	.L1077
.LBB312:
	.loc 2 1930 0
	movq	80(%rbp), %rbx
	jmp	.L1096
	.p2align 4,,7
.L1086:
.LBB313:
	.loc 2 1943 0
	testq	%rdx, %rdx
	.p2align 4,,2
	je	.L1087
	movq	144(%rbx), %rax
	movq	%rax, 144(%rdx)
.L1087:
	movq	144(%rbx), %rax
	movq	%rdx, (%rax)
	.loc 2 1944 0
	movq	160(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L1088
	movq	168(%rbx), %rax
	movq	%rax, 168(%rdx)
.L1088:
	movq	168(%rbx), %rax
	.loc 2 1945 0
	movq	%rbx, %rdi
	.loc 2 1946 0
	movq	%r12, %rbx
	.loc 2 1944 0
	movq	%rdx, (%rax)
	.loc 2 1945 0
	call	qemu_free
.L1096:
.LBE313:
	.loc 2 1946 0
	testq	%rbx, %rbx
	je	.L1094
.LBB314:
	.loc 2 1939 0
	movq	56(%rbx), %rdi
	.loc 2 1938 0
	movq	136(%rbx), %r12
	.loc 2 1939 0
	testq	%rdi, %rdi
	.loc 2 1938 0
	movq	%r12, %rdx
	.loc 2 1939 0
	je	.L1086
	.loc 2 1940 0
	call	st_rate_stop
	movq	136(%rbx), %rdx
	.loc 2 1941 0
	movq	$0, 56(%rbx)
	jmp	.L1086
.L1099:
.LBE314:
.LBE312:
	.loc 2 1926 0
	movq	40(%rbx), %rax
	movq	%rax, 40(%rdx)
	jmp	.L1082
.L1094:
.LBB315:
	.loc 2 1948 0
	movq	136(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L1100
.L1090:
	movq	144(%rbp), %rax
	.loc 2 1949 0
	movq	%rbp, %rdi
	.loc 2 1948 0
	movq	%rdx, (%rax)
.LBE315:
	.loc 2 1954 0
	popq	%rbx
	popq	%rbp
	popq	%r12
.LBB316:
	.loc 2 1949 0
	jmp	qemu_free
.L1100:
	.loc 2 1948 0
	movq	144(%rbp), %rax
	movq	%rax, 144(%rdx)
	jmp	.L1090
.LBE316:
.LFE216:
	.size	AUD_del_capture, .-AUD_del_capture
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.local	glob_audio_state
	.comm	glob_audio_state,64,32
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI0-.LFB113
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI3-.LFB124
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI6-.LFB125
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI7-.LFB112
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI8-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI9-.LFB126
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI10-.LFB116
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
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI11-.LFB118
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI16-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI22-.LFB128
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI29-.LFB129
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI30-.LFB137
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI33-.LFB139
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI38-.LFB140
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI41-.LFB142
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.byte	0x4
	.long	.LCFI44-.LFB144
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI51-.LFB146
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI54-.LFB147
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.byte	0x4
	.long	.LCFI58-.LFB148
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x86
	.uleb128 0x6
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI65-.LFB154
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI69-.LCFI65
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.byte	0x4
	.long	.LCFI70-.LFB155
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI72-.LFB158
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI74-.LCFI72
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.byte	0x4
	.long	.LCFI75-.LFB160
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI79-.LFB162
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI81-.LCFI79
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.byte	0x4
	.long	.LCFI83-.LFB165
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.byte	0x4
	.long	.LCFI87-.LFB166
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.byte	0x4
	.long	.LCFI89-.LFB167
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI94-.LCFI89
	.byte	0xe
	.uleb128 0x80
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.byte	0x4
	.long	.LCFI95-.LFB176
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI95
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI100-.LCFI97
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB177
	.quad	.LFE177-.LFB177
	.byte	0x4
	.long	.LCFI101-.LFB177
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB179
	.quad	.LFE179-.LFB179
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB180
	.quad	.LFE180-.LFB180
	.byte	0x4
	.long	.LCFI104-.LFB180
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB181
	.quad	.LFE181-.LFB181
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.byte	0x4
	.long	.LCFI105-.LFB182
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.byte	0x4
	.long	.LCFI109-.LFB184
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI109
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.byte	0x4
	.long	.LCFI112-.LFB188
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB189
	.quad	.LFE189-.LFB189
	.byte	0x4
	.long	.LCFI116-.LFB189
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI121-.LCFI116
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB190
	.quad	.LFE190-.LFB190
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB192
	.quad	.LFE192-.LFB192
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB193
	.quad	.LFE193-.LFB193
	.byte	0x4
	.long	.LCFI122-.LFB193
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.byte	0x4
	.long	.LCFI123-.LFB194
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI125-.LFB196
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI128-.LCFI125
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI130-.LFB197
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI132-.LCFI130
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI133-.LFB199
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI136-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI143-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI146-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI151-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI156-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI161-.LFB212
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI164-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI169-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI176-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE142:
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI0-.LFB113
	.byte	0xe
	.uleb128 0x48
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI3-.LFB124
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI6-.LFB125
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI7-.LFB112
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI8-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI9-.LFB126
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI10-.LFB116
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
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI11-.LFB118
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI16-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI22-.LFB128
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI29-.LFB129
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI30-.LFB137
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI33-.LFB139
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI38-.LFB140
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
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI41-.LFB142
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.byte	0x4
	.long	.LCFI44-.LFB144
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI51-.LFB146
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI54-.LFB147
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.byte	0x4
	.long	.LCFI58-.LFB148
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x86
	.uleb128 0x6
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI65-.LFB154
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI69-.LCFI65
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.byte	0x4
	.long	.LCFI70-.LFB155
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI72-.LFB158
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI74-.LCFI72
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.byte	0x4
	.long	.LCFI75-.LFB160
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI79-.LFB162
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI81-.LCFI79
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.byte	0x4
	.long	.LCFI83-.LFB165
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.byte	0x4
	.long	.LCFI87-.LFB166
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.byte	0x4
	.long	.LCFI89-.LFB167
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI94-.LCFI89
	.byte	0xe
	.uleb128 0x80
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.byte	0x4
	.long	.LCFI95-.LFB176
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI97-.LCFI95
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI100-.LCFI97
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB177
	.quad	.LFE177-.LFB177
	.byte	0x4
	.long	.LCFI101-.LFB177
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB179
	.quad	.LFE179-.LFB179
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB180
	.quad	.LFE180-.LFB180
	.byte	0x4
	.long	.LCFI104-.LFB180
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB181
	.quad	.LFE181-.LFB181
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.byte	0x4
	.long	.LCFI105-.LFB182
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.byte	0x4
	.long	.LCFI109-.LFB184
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI109
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.byte	0x4
	.long	.LCFI112-.LFB188
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB189
	.quad	.LFE189-.LFB189
	.byte	0x4
	.long	.LCFI116-.LFB189
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI121-.LCFI116
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB190
	.quad	.LFE190-.LFB190
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB192
	.quad	.LFE192-.LFB192
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB193
	.quad	.LFE193-.LFB193
	.byte	0x4
	.long	.LCFI122-.LFB193
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.byte	0x4
	.long	.LCFI123-.LFB194
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI125-.LFB196
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI128-.LCFI125
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI130-.LFB197
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI132-.LCFI130
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI133-.LFB199
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI136-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI143-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI146-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI151-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI156-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE129:
.LSFDE131:
	.long	.LEFDE131-.LASFDE131
.LASFDE131:
	.long	.LASFDE131-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE131:
.LSFDE133:
	.long	.LEFDE133-.LASFDE133
.LASFDE133:
	.long	.LASFDE133-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI161-.LFB212
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI162-.LCFI161
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI164-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI166-.LCFI165
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE139:
.LSFDE141:
	.long	.LEFDE141-.LASFDE141
.LASFDE141:
	.long	.LASFDE141-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI169-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE141:
.LSFDE143:
	.long	.LEFDE143-.LASFDE143
.LASFDE143:
	.long	.LASFDE143-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI176-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE143:
	.file 6 "/usr/include/stdint.h"
	.file 7 "<internal>"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 10 "audio/audio.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "/usr/include/sys/types.h"
	.file 13 "audio/mixeng.h"
	.file 14 "./qemu-common.h"
	.file 15 "./sysemu.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "./qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x43b2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF402
	.byte	0x1
	.long	.LASF403
	.long	.LASF404
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
	.byte	0x11
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0x11
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0xc
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xc
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.long	0xd7
	.uleb128 0x8
	.uleb128 0x9
	.long	0x2a4
	.long	.LASF45
	.byte	0xd8
	.byte	0x8
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF15
	.byte	0x10
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x10
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x10
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x10
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF19
	.byte	0x10
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x10
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF21
	.byte	0x10
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF22
	.byte	0x10
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF23
	.byte	0x10
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF24
	.byte	0x10
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF25
	.byte	0x10
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF26
	.byte	0x10
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF27
	.byte	0x10
	.value	0x122
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF28
	.byte	0x10
	.value	0x124
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF29
	.byte	0x10
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF30
	.byte	0x10
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF31
	.byte	0x10
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF32
	.byte	0x10
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF33
	.byte	0x10
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF34
	.byte	0x10
	.value	0x132
	.long	0x34e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF35
	.byte	0x10
	.value	0x136
	.long	0x35e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF36
	.byte	0x10
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0x10
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF38
	.byte	0x10
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x10
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x10
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x10
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF42
	.byte	0x10
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x10
	.value	0x150
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x9
	.byte	0x2b
	.long	0x2af
	.uleb128 0xb
	.long	0x2bf
	.long	0x2bf
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x304
	.long	.LASF46
	.byte	0x18
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.byte	0x0
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.byte	0x0
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x10
	.byte	0xb4
	.uleb128 0x9
	.long	0x342
	.long	.LASF52
	.byte	0x18
	.byte	0x10
	.byte	0xba
	.uleb128 0xd
	.long	.LASF53
	.byte	0x10
	.byte	0xbb
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x10
	.byte	0xbc
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x10
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30b
	.uleb128 0x5
	.byte	0x8
	.long	0xd8
	.uleb128 0xb
	.long	0x35e
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x304
	.uleb128 0xb
	.long	0x374
	.long	0x7a
	.uleb128 0xc
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x8
	.byte	0x50
	.long	0x2a4
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.long	0x3ac
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0xe
	.byte	0x6d
	.long	0x3b7
	.uleb128 0x9
	.long	0x441
	.long	.LASF60
	.byte	0x40
	.byte	0xe
	.byte	0x6d
	.uleb128 0x11
	.string	"drv"
	.byte	0x1
	.byte	0xb9
	.long	0x1175
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF61
	.byte	0x1
	.byte	0xba
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"ts"
	.byte	0x1
	.byte	0xbc
	.long	0x117b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF62
	.byte	0x1
	.byte	0xbd
	.long	0x1109
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF63
	.byte	0x1
	.byte	0xbe
	.long	0x1124
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0xbf
	.long	0x113f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0xc0
	.long	0x115a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF66
	.byte	0x1
	.byte	0xc1
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0xc2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0xe
	.byte	0x6e
	.long	0x44c
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.uleb128 0x2
	.long	.LASF69
	.byte	0xe
	.byte	0x73
	.long	0x45d
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.uleb128 0x2
	.long	.LASF70
	.byte	0xe
	.byte	0x77
	.long	0x46e
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x452
	.uleb128 0x2
	.long	.LASF71
	.byte	0xa
	.byte	0x1e
	.long	0x485
	.uleb128 0x5
	.byte	0x8
	.long	0x48b
	.uleb128 0xf
	.long	0x49c
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x13
	.long	0x4c9
	.byte	0x4
	.byte	0xa
	.byte	0x20
	.uleb128 0x14
	.long	.LASF72
	.sleb128 0
	.uleb128 0x14
	.long	.LASF73
	.sleb128 1
	.uleb128 0x14
	.long	.LASF74
	.sleb128 2
	.uleb128 0x14
	.long	.LASF75
	.sleb128 3
	.uleb128 0x14
	.long	.LASF76
	.sleb128 4
	.uleb128 0x14
	.long	.LASF77
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF78
	.byte	0xa
	.byte	0x27
	.long	0x49c
	.uleb128 0x15
	.long	0x515
	.byte	0x10
	.byte	0xa
	.byte	0x34
	.uleb128 0xd
	.long	.LASF79
	.byte	0xa
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF80
	.byte	0xa
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"fmt"
	.byte	0xa
	.byte	0x32
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF81
	.byte	0xa
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0xa
	.byte	0x34
	.long	0x4d4
	.uleb128 0x13
	.long	0x535
	.byte	0x4
	.byte	0xa
	.byte	0x36
	.uleb128 0x14
	.long	.LASF83
	.sleb128 0
	.uleb128 0x14
	.long	.LASF84
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xa
	.byte	0x39
	.long	0x520
	.uleb128 0x9
	.long	0x577
	.long	.LASF86
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.uleb128 0xd
	.long	.LASF87
	.byte	0xa
	.byte	0x3c
	.long	0x588
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF88
	.byte	0xa
	.byte	0x3d
	.long	0x5a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF89
	.byte	0xa
	.byte	0x3e
	.long	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x588
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x535
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x577
	.uleb128 0xf
	.long	0x5a4
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
	.long	0x58e
	.uleb128 0x5
	.byte	0x8
	.long	0x3a0
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.byte	0x4c
	.long	0x5bb
	.uleb128 0x9
	.long	0x67e
	.long	.LASF90
	.byte	0x98
	.byte	0xa
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x6b
	.long	0xa57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF92
	.byte	0x1
	.byte	0x6c
	.long	0xde8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF93
	.byte	0x1
	.byte	0x6d
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.long	0x96a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x6f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x70
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF96
	.byte	0x1
	.byte	0x71
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF97
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"hw"
	.byte	0x1
	.byte	0x73
	.long	0xe24
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x74
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.string	"vol"
	.byte	0x1
	.byte	0x75
	.long	0x90d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF99
	.byte	0x1
	.byte	0x76
	.long	0xa2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0x77
	.long	0xdf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF101
	.byte	0xa
	.byte	0x4d
	.long	0x689
	.uleb128 0x9
	.long	0x6cf
	.long	.LASF101
	.byte	0x98
	.byte	0xa
	.byte	0x4d
	.uleb128 0x11
	.string	"hw"
	.byte	0x1
	.byte	0xac
	.long	0xce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF102
	.byte	0x1
	.byte	0xae
	.long	0x108c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0xaf
	.long	0x10a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x2
	.long	.LASF103
	.byte	0xa
	.byte	0x4e
	.long	0x6da
	.uleb128 0x9
	.long	0x78f
	.long	.LASF103
	.byte	0x98
	.byte	0xa
	.byte	0x4e
	.uleb128 0xd
	.long	.LASF96
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x7c
	.long	0xa57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF93
	.byte	0x1
	.byte	0x7d
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x7e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF104
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0x96a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF105
	.byte	0x1
	.byte	0x81
	.long	0xc3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"hw"
	.byte	0x1
	.byte	0x82
	.long	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x83
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.string	"vol"
	.byte	0x1
	.byte	0x84
	.long	0x90d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF99
	.byte	0x1
	.byte	0x85
	.long	0xa2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0x86
	.long	0xe2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x15
	.long	0x7b4
	.byte	0x10
	.byte	0xa
	.byte	0x53
	.uleb128 0xd
	.long	.LASF106
	.byte	0xa
	.byte	0x53
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0xa
	.byte	0x53
	.long	0x7f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x7eb
	.long	.LASF108
	.byte	0x20
	.byte	0xa
	.byte	0x50
	.uleb128 0xd
	.long	.LASF109
	.byte	0xa
	.byte	0x51
	.long	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF98
	.byte	0xa
	.byte	0x52
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF100
	.byte	0xa
	.byte	0x53
	.long	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7b4
	.uleb128 0x5
	.byte	0x8
	.long	0x7eb
	.uleb128 0x5
	.byte	0x8
	.long	0x3ac
	.uleb128 0x2
	.long	.LASF108
	.byte	0xa
	.byte	0x54
	.long	0x7b4
	.uleb128 0x9
	.long	0x823
	.long	.LASF110
	.byte	0x8
	.byte	0xa
	.byte	0x56
	.uleb128 0xd
	.long	.LASF111
	.byte	0xa
	.byte	0x57
	.long	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF110
	.byte	0xa
	.byte	0x58
	.long	0x808
	.uleb128 0x2
	.long	.LASF112
	.byte	0x12
	.byte	0x6
	.long	0x839
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1
	.uleb128 0x2
	.long	.LASF113
	.byte	0xf
	.byte	0xc
	.long	0x84a
	.uleb128 0x12
	.long	.LASF114
	.byte	0x1
	.uleb128 0x13
	.long	0x87d
	.byte	0x4
	.byte	0xf
	.byte	0x77
	.uleb128 0x14
	.long	.LASF115
	.sleb128 0
	.uleb128 0x14
	.long	.LASF116
	.sleb128 1
	.uleb128 0x14
	.long	.LASF117
	.sleb128 2
	.uleb128 0x14
	.long	.LASF118
	.sleb128 3
	.uleb128 0x14
	.long	.LASF119
	.sleb128 4
	.uleb128 0x14
	.long	.LASF120
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF121
	.byte	0xf
	.byte	0x79
	.long	0x850
	.uleb128 0x9
	.long	0x8cd
	.long	.LASF122
	.byte	0x18
	.byte	0xf
	.byte	0x7b
	.uleb128 0xd
	.long	.LASF123
	.byte	0xf
	.byte	0x7c
	.long	0x8cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF124
	.byte	0xf
	.byte	0x7d
	.long	0x87d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"bus"
	.byte	0xf
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF125
	.byte	0xf
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x441
	.uleb128 0x2
	.long	.LASF122
	.byte	0xf
	.byte	0x80
	.long	0x888
	.uleb128 0x15
	.long	0x90d
	.byte	0x18
	.byte	0xd
	.byte	0x20
	.uleb128 0xd
	.long	.LASF126
	.byte	0xd
	.byte	0x20
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"r"
	.byte	0xd
	.byte	0x20
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"l"
	.byte	0xd
	.byte	0x20
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF127
	.byte	0xd
	.byte	0x20
	.long	0x8de
	.uleb128 0x15
	.long	0x939
	.byte	0x10
	.byte	0xd
	.byte	0x21
	.uleb128 0x11
	.string	"l"
	.byte	0xd
	.byte	0x21
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"r"
	.byte	0xd
	.byte	0x21
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF128
	.byte	0xd
	.byte	0x21
	.long	0x918
	.uleb128 0x2
	.long	.LASF129
	.byte	0xd
	.byte	0x25
	.long	0x94f
	.uleb128 0xf
	.long	0x96a
	.byte	0x1
	.uleb128 0x10
	.long	0x96a
	.uleb128 0x10
	.long	0xd1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x970
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x939
	.uleb128 0x5
	.byte	0x8
	.long	0x90d
	.uleb128 0x2
	.long	.LASF130
	.byte	0xd
	.byte	0x26
	.long	0x981
	.uleb128 0xf
	.long	0x997
	.byte	0x1
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x997
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x99d
	.uleb128 0x6
	.long	0x939
	.uleb128 0x13
	.long	0x9c3
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.uleb128 0x14
	.long	.LASF131
	.sleb128 0
	.uleb128 0x14
	.long	.LASF132
	.sleb128 1
	.uleb128 0x14
	.long	.LASF133
	.sleb128 2
	.uleb128 0x14
	.long	.LASF134
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF135
	.byte	0x1
	.byte	0x28
	.long	0x9a2
	.uleb128 0x9
	.long	0xa2f
	.long	.LASF136
	.byte	0x30
	.byte	0x1
	.byte	0x2a
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x2b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x9c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0x2d
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF138
	.byte	0x1
	.byte	0x2e
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF139
	.byte	0x1
	.byte	0x2f
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF140
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x9
	.long	0xa57
	.long	.LASF141
	.byte	0x10
	.byte	0x1
	.byte	0x33
	.uleb128 0xd
	.long	.LASF142
	.byte	0x1
	.byte	0x34
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"fn"
	.byte	0x1
	.byte	0x35
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xad4
	.long	.LASF143
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.uleb128 0xd
	.long	.LASF144
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF145
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF79
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF80
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF146
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF147
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF148
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF149
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1
	.byte	0x43
	.long	0xadf
	.uleb128 0x9
	.long	0xb17
	.long	.LASF150
	.byte	0xb0
	.byte	0x1
	.byte	0x43
	.uleb128 0x11
	.string	"sw"
	.byte	0x1
	.byte	0xb3
	.long	0x5b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cap"
	.byte	0x1
	.byte	0xb4
	.long	0x1103
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0xb5
	.long	0x10d8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x9
	.long	0xb32
	.long	.LASF151
	.byte	0x8
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0x52
	.long	0xb32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5bb
	.uleb128 0x9
	.long	0xb53
	.long	.LASF153
	.byte	0x8
	.byte	0x1
	.byte	0x53
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0x53
	.long	0xb53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xadf
	.uleb128 0x15
	.long	0xb7e
	.byte	0x10
	.byte	0x1
	.byte	0x55
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0x55
	.long	0xc33
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x55
	.long	0xc39
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xc33
	.long	.LASF154
	.byte	0x78
	.byte	0x1
	.byte	0x45
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x48
	.long	0xa57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF105
	.byte	0x1
	.byte	0x4a
	.long	0xc3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x4d
	.long	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x4f
	.long	0x96a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x51
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x52
	.long	0xb17
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0x53
	.long	0xb38
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x54
	.long	0xcde
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0x55
	.long	0xb59
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb7e
	.uleb128 0x5
	.byte	0x8
	.long	0xc33
	.uleb128 0x5
	.byte	0x8
	.long	0x976
	.uleb128 0x9
	.long	0xcde
	.long	.LASF163
	.byte	0x50
	.byte	0x1
	.byte	0x21
	.uleb128 0xd
	.long	.LASF164
	.byte	0x1
	.byte	0x98
	.long	0xf2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF165
	.byte	0x1
	.byte	0x99
	.long	0xf41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x1
	.byte	0x9a
	.long	0xf57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF167
	.byte	0x1
	.byte	0x9b
	.long	0xf7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF168
	.byte	0x1
	.byte	0x9c
	.long	0xf99
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF169
	.byte	0x1
	.byte	0x9e
	.long	0xfb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF170
	.byte	0x1
	.byte	0x9f
	.long	0xfc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF171
	.byte	0x1
	.byte	0xa0
	.long	0xfdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF172
	.byte	0x1
	.byte	0xa1
	.long	0x1002
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF173
	.byte	0x1
	.byte	0xa2
	.long	0x101e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc45
	.uleb128 0x2
	.long	.LASF154
	.byte	0x1
	.byte	0x56
	.long	0xb7e
	.uleb128 0x9
	.long	0xd0a
	.long	.LASF174
	.byte	0x8
	.byte	0x1
	.byte	0x65
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0x65
	.long	0xd0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6da
	.uleb128 0x15
	.long	0xd35
	.byte	0x10
	.byte	0x1
	.byte	0x67
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0x67
	.long	0xddc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x67
	.long	0xde2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0xddc
	.long	.LASF175
	.byte	0x70
	.byte	0x1
	.byte	0x58
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x5a
	.long	0xa57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF92
	.byte	0x1
	.byte	0x5c
	.long	0xde8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF176
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF177
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x60
	.long	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF178
	.byte	0x1
	.byte	0x62
	.long	0x96a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x64
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x65
	.long	0xcef
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x66
	.long	0xcde
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0x67
	.long	0xd10
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd35
	.uleb128 0x5
	.byte	0x8
	.long	0xddc
	.uleb128 0x5
	.byte	0x8
	.long	0x944
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1
	.byte	0x68
	.long	0xd35
	.uleb128 0x15
	.long	0xe1e
	.byte	0x10
	.byte	0x1
	.byte	0x77
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0x77
	.long	0xb32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x77
	.long	0xe1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb32
	.uleb128 0x5
	.byte	0x8
	.long	0xce4
	.uleb128 0x15
	.long	0xe4f
	.byte	0x10
	.byte	0x1
	.byte	0x86
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0x86
	.long	0xd0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0x86
	.long	0xe4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd0a
	.uleb128 0x5
	.byte	0x8
	.long	0xdee
	.uleb128 0x9
	.long	0xf02
	.long	.LASF179
	.byte	0x48
	.byte	0x1
	.byte	0x89
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x8a
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF138
	.byte	0x1
	.byte	0x8b
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF180
	.byte	0x1
	.byte	0x8c
	.long	0xf02
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF181
	.byte	0x1
	.byte	0x8d
	.long	0xf0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF182
	.byte	0x1
	.byte	0x8e
	.long	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x8f
	.long	0xcde
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF183
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF184
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF185
	.byte	0x1
	.byte	0x92
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF186
	.byte	0x1
	.byte	0x93
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.long	.LASF187
	.byte	0x1
	.byte	0x94
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9ce
	.uleb128 0x16
	.byte	0x1
	.long	0xac
	.uleb128 0x5
	.byte	0x8
	.long	0xf08
	.uleb128 0x17
	.long	0xf29
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe24
	.uleb128 0x10
	.long	0xf29
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x515
	.uleb128 0x5
	.byte	0x8
	.long	0xf14
	.uleb128 0xf
	.long	0xf41
	.byte	0x1
	.uleb128 0x10
	.long	0xe24
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf35
	.uleb128 0x17
	.long	0xf57
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe24
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf47
	.uleb128 0x17
	.long	0xf77
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xf77
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5b0
	.uleb128 0x5
	.byte	0x8
	.long	0xf5d
	.uleb128 0x17
	.long	0xf99
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe24
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf83
	.uleb128 0x17
	.long	0xfb4
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe55
	.uleb128 0x10
	.long	0xf29
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf9f
	.uleb128 0xf
	.long	0xfc6
	.byte	0x1
	.uleb128 0x10
	.long	0xe55
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfba
	.uleb128 0x17
	.long	0xfdc
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe55
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfcc
	.uleb128 0x17
	.long	0xffc
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xffc
	.uleb128 0x10
	.long	0xac
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6cf
	.uleb128 0x5
	.byte	0x8
	.long	0xfe2
	.uleb128 0x17
	.long	0x101e
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0xe55
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1008
	.uleb128 0x15
	.long	0x1049
	.byte	0x10
	.byte	0x1
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0xa8
	.long	0x1080
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0xa8
	.long	0x1086
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x1080
	.long	.LASF188
	.byte	0x30
	.byte	0x1
	.byte	0xa5
	.uleb128 0x11
	.string	"ops"
	.byte	0x1
	.byte	0xa6
	.long	0x540
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x1
	.byte	0xa7
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF100
	.byte	0x1
	.byte	0xa8
	.long	0x1024
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1049
	.uleb128 0x5
	.byte	0x8
	.long	0x1080
	.uleb128 0x9
	.long	0x10a7
	.long	.LASF189
	.byte	0x8
	.byte	0x1
	.byte	0xae
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0xae
	.long	0x1080
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x10cc
	.byte	0x10
	.byte	0x1
	.byte	0xaf
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0xaf
	.long	0x10cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0xaf
	.long	0x10d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x689
	.uleb128 0x5
	.byte	0x8
	.long	0x10cc
	.uleb128 0x15
	.long	0x10fd
	.byte	0x10
	.byte	0x1
	.byte	0xb5
	.uleb128 0xd
	.long	.LASF106
	.byte	0x1
	.byte	0xb5
	.long	0xb53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x1
	.byte	0xb5
	.long	0x10fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb53
	.uleb128 0x5
	.byte	0x8
	.long	0x67e
	.uleb128 0x9
	.long	0x1124
	.long	.LASF190
	.byte	0x8
	.byte	0x1
	.byte	0xbd
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0xbd
	.long	0x7eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x113f
	.long	.LASF191
	.byte	0x8
	.byte	0x1
	.byte	0xbe
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0xbe
	.long	0xddc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x115a
	.long	.LASF192
	.byte	0x8
	.byte	0x1
	.byte	0xbf
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0xbf
	.long	0xc33
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x1175
	.long	.LASF193
	.byte	0x8
	.byte	0x1
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0xc0
	.long	0x10cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe5b
	.uleb128 0x5
	.byte	0x8
	.long	0x463
	.uleb128 0x9
	.long	0x11c6
	.long	.LASF194
	.byte	0x1c
	.byte	0x2
	.byte	0x3f
	.uleb128 0xd
	.long	.LASF155
	.byte	0x2
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF195
	.byte	0x2
	.byte	0x41
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF196
	.byte	0x2
	.byte	0x42
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF197
	.byte	0x2
	.byte	0x43
	.long	0x515
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x19
	.long	0x11e4
	.byte	0x8
	.byte	0x2
	.byte	0x4c
	.uleb128 0x1a
	.string	"hz"
	.byte	0x2
	.byte	0x4a
	.long	0x3f
	.uleb128 0x1b
	.long	.LASF198
	.byte	0x2
	.byte	0x4b
	.long	0xbf
	.byte	0x0
	.uleb128 0x15
	.long	0x1233
	.byte	0x48
	.byte	0x2
	.byte	0x4f
	.uleb128 0xd
	.long	.LASF199
	.byte	0x2
	.byte	0x47
	.long	0x1181
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF200
	.byte	0x2
	.byte	0x48
	.long	0x1181
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF201
	.byte	0x2
	.byte	0x4c
	.long	0x11c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF202
	.byte	0x2
	.byte	0x4d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF203
	.byte	0x2
	.byte	0x4e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x1c
	.long	0x1262
	.long	.LASF206
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"fmt"
	.byte	0x1
	.value	0x106
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1e
	.long	0x1291
	.byte	0x1
	.long	.LASF204
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.long	0x38a
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"u"
	.byte	0x2
	.byte	0x7c
	.long	0x38a
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1e
	.long	0x12c0
	.byte	0x1
	.long	.LASF205
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.long	0x38a
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"u"
	.byte	0x2
	.byte	0x86
	.long	0x38a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.long	0x131c
	.long	.LASF207
	.byte	0x2
	.value	0x14e
	.byte	0x1
	.long	0x6f
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"key"
	.byte	0x2
	.value	0x14b
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.value	0x14c
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.value	0x14d
	.long	0x4d
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"val"
	.byte	0x2
	.value	0x14f
	.long	0x6f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.long	0x1366
	.byte	0x1
	.long	.LASF210
	.byte	0x2
	.value	0x15b
	.byte	0x1
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"cap"
	.byte	0x2
	.value	0x15a
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"fmt"
	.byte	0x2
	.value	0x15a
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"ap"
	.byte	0x2
	.value	0x15a
	.long	0x1366
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2bf
	.uleb128 0x24
	.long	0x13a6
	.long	.LASF211
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"fmt"
	.byte	0x1
	.byte	0xee
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.uleb128 0x25
	.string	"ap"
	.byte	0x1
	.byte	0xf0
	.long	0x374
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x26
	.long	0x13d6
	.long	.LASF212
	.byte	0x2
	.byte	0xf2
	.byte	0x1
	.long	0x6f
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"fmt"
	.byte	0x2
	.byte	0xf1
	.long	0x4c9
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x23
	.long	0x1422
	.byte	0x1
	.long	.LASF213
	.byte	0x2
	.value	0x16d
	.byte	0x1
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"cap"
	.byte	0x2
	.value	0x16c
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"fmt"
	.byte	0x2
	.value	0x16c
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uleb128 0x22
	.string	"ap"
	.byte	0x2
	.value	0x16e
	.long	0x374
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1e
	.long	0x147b
	.byte	0x1
	.long	.LASF214
	.byte	0x2
	.byte	0x8f
	.byte	0x1
	.long	0x3f
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.long	.LASF215
	.byte	0x2
	.byte	0x8e
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	.LASF216
	.byte	0x2
	.byte	0x8e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x29
	.long	.LASF217
	.byte	0x2
	.byte	0x91
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	shown.27
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x14e0
	.byte	0x1
	.long	.LASF218
	.byte	0x2
	.byte	0xc3
	.byte	0x1
	.long	0xac
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.long	.LASF215
	.byte	0x2
	.byte	0xc2
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF219
	.byte	0x2
	.byte	0xc2
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF220
	.byte	0x2
	.byte	0xc2
	.long	0x2d
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF216
	.byte	0x2
	.byte	0xc4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"len"
	.byte	0x2
	.byte	0xc5
	.long	0x2d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1c
	.long	0x164a
	.long	.LASF221
	.byte	0x2
	.value	0x177
	.byte	0x1
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF222
	.byte	0x2
	.value	0x175
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"opt"
	.byte	0x2
	.value	0x176
	.long	0xf02
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF223
	.byte	0x2
	.value	0x178
	.long	0xae
	.uleb128 0x2b
	.long	0x15a5
	.long	0x164a
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x2c
	.long	0x165b
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x2e
	.long	0x1664
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	0x166f
	.uleb128 0x2e
	.long	0x167a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x2e
	.long	0x1684
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x168d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2e
	.long	0x1697
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x15bd
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.long	.LASF224
	.byte	0x2
	.value	0x187
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x32
	.long	0x15e1
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x31
	.long	.LASF225
	.byte	0x2
	.value	0x198
	.long	0x4d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x32
	.long	0x1605
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x31
	.long	.LASF226
	.byte	0x2
	.value	0x1aa
	.long	0x16c7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x32
	.long	0x1629
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x31
	.long	.LASF225
	.byte	0x2
	.value	0x191
	.long	0x4d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2d
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x31
	.long	.LASF227
	.byte	0x2
	.value	0x19f
	.long	0x16cd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x16b2
	.long	.LASF228
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0xae
	.byte	0x1
	.uleb128 0x34
	.string	"s"
	.byte	0x2
	.byte	0xd6
	.long	0x6f
	.uleb128 0x35
	.long	.LASF229
	.byte	0x2
	.byte	0xd8
	.long	0x16c2
	.uleb128 0x36
	.string	"len"
	.byte	0x2
	.byte	0xd9
	.long	0x2d
	.uleb128 0x36
	.string	"r"
	.byte	0x2
	.byte	0xda
	.long	0xae
	.uleb128 0x37
	.uleb128 0x36
	.string	"i"
	.byte	0x2
	.byte	0xe4
	.long	0x2d
	.uleb128 0x36
	.string	"u"
	.byte	0x2
	.byte	0xe5
	.long	0xae
	.uleb128 0x37
	.uleb128 0x35
	.long	.LASF230
	.byte	0x2
	.byte	0xeb
	.long	0x3f
	.uleb128 0x37
	.uleb128 0x36
	.string	"__c"
	.byte	0x2
	.byte	0xeb
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x16c2
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0x6
	.long	0x16b2
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x5
	.byte	0x8
	.long	0x4c9
	.uleb128 0x1c
	.long	0x18a7
	.long	.LASF231
	.byte	0x2
	.value	0x1bf
	.byte	0x1
	.quad	.LFB128
	.quad	.LFE128
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF222
	.byte	0x2
	.value	0x1bd
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"opt"
	.byte	0x2
	.value	0x1be
	.long	0xf02
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF232
	.byte	0x2
	.value	0x1c0
	.long	0xae
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF229
	.byte	0x2
	.value	0x1c1
	.long	0x18b7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF233
	.byte	0x2
	.value	0x1c2
	.long	0x2d
	.uleb128 0x38
	.long	.LASF234
	.long	0x18cc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.2
	.uleb128 0x30
	.long	0x177c
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x39
	.string	"len"
	.byte	0x2
	.value	0x1d1
	.long	0x2d
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x1d1
	.long	0x2d
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"def"
	.byte	0x2
	.value	0x1d2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x32
	.long	0x17a0
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x31
	.long	.LASF230
	.byte	0x2
	.value	0x1e9
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x1810
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x31
	.long	.LASF225
	.byte	0x2
	.value	0x1f3
	.long	0x4d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3a
	.long	0x18d1
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x2c
	.long	0x18e3
	.uleb128 0x3b
	.long	0x18ef
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x18fb
	.uleb128 0x30
	.long	0x17f3
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x2f
	.long	0x1907
	.uleb128 0x2e
	.long	0x1913
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x1920
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x2c
	.long	0x1933
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x1886
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x31
	.long	.LASF227
	.byte	0x2
	.value	0x1fa
	.long	0x16cd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	0x1860
	.long	0x1940
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x2c
	.long	0x1952
	.uleb128 0x3b
	.long	0x195e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2c
	.long	0x196a
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x2e
	.long	0x1976
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x1983
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x2c
	.long	0x1995
	.uleb128 0x2c
	.long	0x199f
	.uleb128 0x2c
	.long	0x19ab
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x31
	.long	.LASF226
	.byte	0x2
	.value	0x201
	.long	0x16c7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x18b7
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0x6
	.long	0x18a7
	.uleb128 0xb
	.long	0x18cc
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x15
	.byte	0x0
	.uleb128 0x6
	.long	0x18bc
	.uleb128 0x3c
	.long	0x1920
	.long	.LASF235
	.byte	0x2
	.value	0x13b
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3d
	.string	"key"
	.byte	0x2
	.value	0x13a
	.long	0x6f
	.uleb128 0x3e
	.long	.LASF208
	.byte	0x2
	.value	0x13a
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF209
	.byte	0x2
	.value	0x13a
	.long	0x4d
	.uleb128 0x39
	.string	"val"
	.byte	0x2
	.value	0x13c
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF236
	.byte	0x2
	.value	0x13d
	.long	0xae
	.byte	0x0
	.uleb128 0x3f
	.long	0x1940
	.byte	0x1
	.long	.LASF237
	.byte	0x3
	.value	0x11d
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x3e
	.long	.LASF238
	.byte	0x3
	.value	0x11c
	.long	0x6f
	.byte	0x0
	.uleb128 0x3c
	.long	0x1983
	.long	.LASF239
	.byte	0x2
	.value	0x131
	.byte	0x1
	.long	0x4c9
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF240
	.byte	0x2
	.value	0x12e
	.long	0x6f
	.uleb128 0x3e
	.long	.LASF208
	.byte	0x2
	.value	0x12f
	.long	0x4c9
	.uleb128 0x3e
	.long	.LASF209
	.byte	0x2
	.value	0x130
	.long	0x4d
	.uleb128 0x39
	.string	"var"
	.byte	0x2
	.value	0x132
	.long	0x6f
	.byte	0x0
	.uleb128 0x3c
	.long	0x19b8
	.long	.LASF241
	.byte	0x2
	.value	0x10d
	.byte	0x1
	.long	0x4c9
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x2
	.value	0x10b
	.long	0x6f
	.uleb128 0x3e
	.long	.LASF208
	.byte	0x2
	.value	0x10b
	.long	0x4c9
	.uleb128 0x3e
	.long	.LASF209
	.byte	0x2
	.value	0x10c
	.long	0x4d
	.byte	0x0
	.uleb128 0x1c
	.long	0x19e5
	.long	.LASF242
	.byte	0x2
	.value	0x215
	.byte	0x1
	.quad	.LFB129
	.quad	.LFE129
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"as"
	.byte	0x2
	.value	0x214
	.long	0xf29
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x20
	.long	0x1a24
	.long	.LASF243
	.byte	0x2
	.value	0x23a
	.byte	0x1
	.long	0x3f
	.quad	.LFB130
	.quad	.LFE130
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"as"
	.byte	0x2
	.value	0x239
	.long	0xf29
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF244
	.byte	0x2
	.value	0x23b
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.long	0x1a7f
	.long	.LASF245
	.byte	0x2
	.value	0x252
	.byte	0x1
	.long	0x3f
	.quad	.LFB131
	.quad	.LFE131
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF91
	.byte	0x2
	.value	0x251
	.long	0x1a7f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"as"
	.byte	0x2
	.value	0x251
	.long	0xf29
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF144
	.byte	0x2
	.value	0x253
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	.LASF145
	.byte	0x2
	.value	0x253
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa57
	.uleb128 0x23
	.long	0x1aeb
	.byte	0x1
	.long	.LASF246
	.byte	0x2
	.value	0x26f
	.byte	0x1
	.quad	.LFB132
	.quad	.LFE132
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF91
	.byte	0x2
	.value	0x26e
	.long	0x1a7f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"as"
	.byte	0x2
	.value	0x26e
	.long	0xf29
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF144
	.byte	0x2
	.value	0x270
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	.LASF145
	.byte	0x2
	.value	0x270
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	.LASF147
	.byte	0x2
	.value	0x270
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x23
	.long	0x1bbe
	.byte	0x1
	.long	.LASF247
	.byte	0x2
	.value	0x292
	.byte	0x1
	.quad	.LFB133
	.quad	.LFE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF91
	.byte	0x2
	.value	0x291
	.long	0x1a7f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"buf"
	.byte	0x2
	.value	0x291
	.long	0xac
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"len"
	.byte	0x2
	.value	0x291
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.long	0x1b7b
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x2a2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.string	"p"
	.byte	0x2
	.value	0x2a3
	.long	0x1bbe
	.uleb128 0x31
	.long	.LASF147
	.byte	0x2
	.value	0x2a4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x2a5
	.long	0x8f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2d
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x2b3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.string	"p"
	.byte	0x2
	.value	0x2b4
	.long	0x1bc4
	.uleb128 0x31
	.long	.LASF147
	.byte	0x2
	.value	0x2b5
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x2b6
	.long	0xb4
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x37f
	.uleb128 0x5
	.byte	0x8
	.long	0x38a
	.uleb128 0x1c
	.long	0x1c22
	.long	.LASF248
	.byte	0x2
	.value	0x2cf
	.byte	0x1
	.quad	.LFB134
	.quad	.LFE134
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"dst"
	.byte	0x2
	.value	0x2cd
	.long	0x96a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"src"
	.byte	0x2
	.value	0x2cd
	.long	0xd1
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2
	.value	0x2ce
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"vol"
	.byte	0x2
	.value	0x2ce
	.long	0x970
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1c
	.long	0x1cab
	.long	.LASF249
	.byte	0x2
	.value	0x2f2
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"cap"
	.byte	0x2
	.value	0x2f1
	.long	0x1103
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF155
	.byte	0x2
	.value	0x2f1
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x22
	.string	"cmd"
	.byte	0x2
	.value	0x2f4
	.long	0x535
	.byte	0x1
	.byte	0x56
	.uleb128 0x3a
	.long	0x1cab
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x2c
	.long	0x1cb9
	.uleb128 0x2c
	.long	0x1cc5
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x2e
	.long	0x1cd1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x1cdd
	.long	.LASF250
	.byte	0x2
	.value	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cap"
	.byte	0x2
	.value	0x2e5
	.long	0x1103
	.uleb128 0x3d
	.string	"cmd"
	.byte	0x2
	.value	0x2e5
	.long	0x535
	.uleb128 0x39
	.string	"cb"
	.byte	0x2
	.value	0x2e7
	.long	0x1080
	.byte	0x0
	.uleb128 0x1c
	.long	0x1d31
	.long	.LASF251
	.byte	0x2
	.value	0x2fc
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"cap"
	.byte	0x2
	.value	0x2fb
	.long	0x1103
	.byte	0x1
	.byte	0x55
	.uleb128 0x39
	.string	"hw"
	.byte	0x2
	.value	0x2fd
	.long	0xe24
	.uleb128 0x22
	.string	"sw"
	.byte	0x2
	.value	0x2fe
	.long	0xf77
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	.LASF155
	.byte	0x2
	.value	0x2ff
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1c
	.long	0x1da6
	.long	.LASF252
	.byte	0x2
	.value	0x30b
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x30a
	.long	0xe24
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"sc"
	.byte	0x2
	.value	0x30c
	.long	0x1da6
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x1e0
	.uleb128 0x22
	.string	"sc1"
	.byte	0x2
	.value	0x30f
	.long	0x1da6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x310
	.long	0xf77
	.uleb128 0x22
	.string	"cap"
	.byte	0x2
	.value	0x311
	.long	0x1103
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF253
	.byte	0x2
	.value	0x312
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xad4
	.uleb128 0x20
	.long	0x1e35
	.long	.LASF254
	.byte	0x2
	.value	0x327
	.byte	0x1
	.long	0x3f
	.quad	.LFB140
	.quad	.LFE140
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"s"
	.byte	0x2
	.value	0x326
	.long	0x7f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x326
	.long	0xe24
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"cap"
	.byte	0x2
	.value	0x328
	.long	0x1103
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x1e45
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.1
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x22
	.string	"sc"
	.byte	0x2
	.value	0x32c
	.long	0x1da6
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x32d
	.long	0xf77
	.uleb128 0x2a
	.long	.LASF255
	.byte	0x2
	.value	0x32e
	.long	0xe24
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x1e45
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x14
	.byte	0x0
	.uleb128 0x6
	.long	0x1e35
	.uleb128 0x20
	.long	0x1ebe
	.long	.LASF256
	.byte	0x2
	.value	0x357
	.byte	0x1
	.long	0x3f
	.quad	.LFB141
	.quad	.LFE141
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x356
	.long	0xe55
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"sw"
	.byte	0x2
	.value	0x358
	.long	0xffc
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"m"
	.byte	0x2
	.value	0x359
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x35d
	.long	0x3f
	.uleb128 0x22
	.string	"tb"
	.byte	0x2
	.value	0x35d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.long	0x1f12
	.byte	0x1
	.long	.LASF257
	.byte	0x2
	.value	0x364
	.byte	0x1
	.long	0x3f
	.quad	.LFB142
	.quad	.LFE142
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x363
	.long	0xe55
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF258
	.byte	0x2
	.value	0x365
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x1f22
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.26
	.byte	0x0
	.uleb128 0xb
	.long	0x1f22
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x18
	.byte	0x0
	.uleb128 0x6
	.long	0x1f12
	.uleb128 0x41
	.long	0x207b
	.byte	0x1
	.long	.LASF259
	.byte	0x2
	.value	0x385
	.byte	0x1
	.long	0x3f
	.quad	.LFB144
	.quad	.LFE144
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x384
	.long	0xffc
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"buf"
	.byte	0x2
	.value	0x384
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF220
	.byte	0x2
	.value	0x384
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"hw"
	.byte	0x2
	.value	0x386
	.long	0xe55
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF160
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF258
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ret"
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF260
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF261
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF262
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.long	.LASF157
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	.LASF263
	.byte	0x2
	.value	0x387
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x2
	.value	0x388
	.long	0x96a
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"dst"
	.byte	0x2
	.value	0x388
	.long	0x96a
	.byte	0x1
	.byte	0x5f
	.uleb128 0x38
	.long	.LASF234
	.long	0x208b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.24
	.uleb128 0x2b
	.long	0x205e
	.long	0x2090
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x2c
	.long	0x20a2
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x2f
	.long	0x20ad
	.uleb128 0x2e
	.long	0x20b8
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x20c4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x2a0
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x398
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x398
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x208b
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x11
	.byte	0x0
	.uleb128 0x6
	.long	0x207b
	.uleb128 0x3c
	.long	0x20db
	.long	.LASF264
	.byte	0x2
	.value	0x371
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3d
	.string	"sw"
	.byte	0x2
	.value	0x370
	.long	0xffc
	.uleb128 0x39
	.string	"hw"
	.byte	0x2
	.value	0x372
	.long	0xe55
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x373
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF157
	.byte	0x2
	.value	0x374
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x20db
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x1f12
	.uleb128 0x41
	.long	0x21b3
	.byte	0x1
	.long	.LASF265
	.byte	0x2
	.value	0x3ce
	.byte	0x1
	.long	0x3f
	.quad	.LFB146
	.quad	.LFE146
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x3cd
	.long	0xe24
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF266
	.byte	0x2
	.value	0x3cd
	.long	0x4d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF267
	.byte	0x2
	.value	0x3cf
	.long	0x3f
	.uleb128 0x38
	.long	.LASF234
	.long	0x21c3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.23
	.uleb128 0x2b
	.long	0x217e
	.long	0x21c8
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x2c
	.long	0x21da
	.uleb128 0x2c
	.long	0x21e5
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x2e
	.long	0x21f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.long	0x21fc
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x2206
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x21a0
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x2f
	.long	0x2213
	.uleb128 0x2e
	.long	0x221e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x3d7
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x21c3
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x1a
	.byte	0x0
	.uleb128 0x6
	.long	0x21b3
	.uleb128 0x3c
	.long	0x222b
	.long	.LASF268
	.byte	0x2
	.value	0x3bd
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3d
	.string	"hw"
	.byte	0x2
	.value	0x3bc
	.long	0xe24
	.uleb128 0x3e
	.long	.LASF269
	.byte	0x2
	.value	0x3bc
	.long	0x4d
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x3be
	.long	0xf77
	.uleb128 0x39
	.string	"m"
	.byte	0x2
	.value	0x3bf
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF266
	.byte	0x2
	.value	0x3c0
	.long	0x3f
	.uleb128 0x37
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x3c4
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x3c4
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.long	0x228e
	.byte	0x1
	.long	.LASF270
	.byte	0x2
	.value	0x3e2
	.byte	0x1
	.long	0x3f
	.quad	.LFB147
	.quad	.LFE147
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"hw"
	.byte	0x2
	.value	0x3e1
	.long	0xe24
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF266
	.byte	0x2
	.value	0x3e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF258
	.byte	0x2
	.value	0x3e4
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF234
	.long	0x229e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.22
	.byte	0x0
	.uleb128 0xb
	.long	0x229e
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x19
	.byte	0x0
	.uleb128 0x6
	.long	0x228e
	.uleb128 0x41
	.long	0x2412
	.byte	0x1
	.long	.LASF271
	.byte	0x2
	.value	0x3f2
	.byte	0x1
	.long	0x3f
	.quad	.LFB148
	.quad	.LFE148
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x3f1
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"buf"
	.byte	0x2
	.value	0x3f1
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF220
	.byte	0x2
	.value	0x3f1
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF272
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF160
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF261
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF262
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.long	.LASF176
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	.LASF258
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF273
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	.LASF274
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	.LASF260
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x2
	.value	0x3f3
	.long	0x3f
	.uleb128 0x22
	.string	"ret"
	.byte	0x2
	.value	0x3f4
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"pos"
	.byte	0x2
	.value	0x3f4
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.long	.LASF263
	.byte	0x2
	.value	0x3f4
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF234
	.long	0x2422
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.21
	.uleb128 0x32
	.long	0x23e9
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x40e
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x40e
	.long	0x3f
	.byte	0x0
	.uleb128 0x2d
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x416
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x416
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x2422
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x12
	.byte	0x0
	.uleb128 0x6
	.long	0x2412
	.uleb128 0x26
	.long	0x24cf
	.long	.LASF276
	.byte	0x5
	.byte	0x91
	.byte	0x1
	.long	0x3f
	.quad	.LFB154
	.quad	.LFE154
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0x8c
	.long	0xf77
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0x8d
	.long	0xe24
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF98
	.byte	0x5
	.byte	0x8e
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"as"
	.byte	0x5
	.byte	0x90
	.long	0xf29
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.string	"err"
	.byte	0x5
	.byte	0x92
	.long	0x3f
	.uleb128 0x2b
	.long	0x24a6
	.long	0x24cf
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x3b
	.long	0x24e0
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x24ec
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x2c
	.long	0x24fd
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x2e
	.long	0x2507
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x24ec
	.long	.LASF277
	.byte	0x2
	.byte	0xb0
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x43
	.long	.LASF144
	.byte	0x2
	.byte	0xaf
	.long	0x3f
	.byte	0x0
	.uleb128 0x33
	.long	0x251d
	.long	.LASF278
	.byte	0x5
	.byte	0x6e
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0x6d
	.long	0xf77
	.uleb128 0x35
	.long	.LASF160
	.byte	0x5
	.byte	0x6f
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x252d
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x252d
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x6
	.long	0x251d
	.uleb128 0x24
	.long	0x2578
	.long	.LASF279
	.byte	0x5
	.byte	0xb3
	.byte	0x1
	.quad	.LFB155
	.quad	.LFE155
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0xb2
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x2578
	.quad	.LBB94
	.quad	.LBE94
	.uleb128 0x2c
	.long	0x2585
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.long	0x2590
	.long	.LASF280
	.byte	0x5
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0x5f
	.long	0xf77
	.byte	0x0
	.uleb128 0x24
	.long	0x25bb
	.long	.LASF281
	.byte	0x5
	.byte	0xc1
	.byte	0x1
	.quad	.LFB157
	.quad	.LFE157
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0xc0
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x24
	.long	0x2619
	.long	.LASF282
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.quad	.LFB158
	.quad	.LFE158
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xc5
	.long	0x7f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"hwp"
	.byte	0x5
	.byte	0xc5
	.long	0x2619
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"hw"
	.byte	0x5
	.byte	0xc7
	.long	0xe24
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x261f
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x2c
	.long	0x262c
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe24
	.uleb128 0x44
	.long	0x2637
	.long	.LASF283
	.byte	0x5
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0x4a
	.long	0xe24
	.byte	0x0
	.uleb128 0x26
	.long	0x2671
	.long	.LASF284
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.long	0xe24
	.quad	.LFB159
	.quad	.LFE159
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xd6
	.long	0x7f7
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0xd6
	.long	0xe24
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x26ab
	.long	.LASF285
	.byte	0x5
	.byte	0xdc
	.byte	0x1
	.long	0xe24
	.quad	.LFB160
	.quad	.LFE160
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xdb
	.long	0x7f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0xdb
	.long	0xe24
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x276e
	.long	.LASF286
	.byte	0x5
	.byte	0xf4
	.byte	0x1
	.long	0xe24
	.quad	.LFB162
	.quad	.LFE162
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xf3
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"as"
	.byte	0x5
	.byte	0xf3
	.long	0xf29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"hw"
	.byte	0x5
	.byte	0xf5
	.long	0xe24
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"drv"
	.byte	0x5
	.byte	0xf6
	.long	0x1175
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x276e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.18
	.uleb128 0x45
	.long	.LASF287
	.byte	0x5
	.value	0x132
	.quad	.L411
	.uleb128 0x45
	.long	.LASF288
	.byte	0x5
	.value	0x130
	.quad	.L413
	.uleb128 0x2b
	.long	0x2752
	.long	0x24cf
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x3b
	.long	0x24e0
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x3a
	.long	0x2773
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x2c
	.long	0x2784
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x1f12
	.uleb128 0x33
	.long	0x2799
	.long	.LASF289
	.byte	0x5
	.byte	0x54
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0x53
	.long	0xe24
	.uleb128 0x42
	.long	.LASF234
	.long	0x2799
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x251d
	.uleb128 0x1c
	.long	0x27d7
	.long	.LASF290
	.byte	0x5
	.value	0x17e
	.byte	0x1
	.quad	.LFB165
	.quad	.LFE165
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"s"
	.byte	0x5
	.value	0x17d
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x17d
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.long	0x2827
	.byte	0x1
	.long	.LASF291
	.byte	0x5
	.value	0x186
	.byte	0x1
	.quad	.LFB166
	.quad	.LFE166
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF292
	.byte	0x5
	.value	0x185
	.long	0x2827
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x185
	.long	0xf77
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x283d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7fd
	.uleb128 0xb
	.long	0x283d
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xd
	.byte	0x0
	.uleb128 0x6
	.long	0x282d
	.uleb128 0x41
	.long	0x2a29
	.byte	0x1
	.long	.LASF293
	.byte	0x5
	.value	0x19a
	.byte	0x1
	.long	0xf77
	.quad	.LFB167
	.quad	.LFE167
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF292
	.byte	0x5
	.value	0x193
	.long	0x2827
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x194
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF98
	.byte	0x5
	.value	0x195
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF294
	.byte	0x5
	.value	0x196
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x21
	.long	.LASF295
	.byte	0x5
	.value	0x197
	.long	0x47a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1d
	.string	"as"
	.byte	0x5
	.value	0x199
	.long	0xf29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"s"
	.byte	0x5
	.value	0x19b
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF258
	.byte	0x5
	.value	0x19d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.long	.LASF296
	.byte	0x5
	.value	0x19e
	.long	0xf77
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF234
	.long	0x2a39
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.15
	.uleb128 0x45
	.long	.LASF297
	.byte	0x5
	.value	0x209
	.quad	.L460
	.uleb128 0x30
	.long	0x291f
	.long	.Ldebug_ranges0+0x390
	.uleb128 0x22
	.string	"hw"
	.byte	0x5
	.value	0x1d8
	.long	0xe24
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x32
	.long	0x2941
	.quad	.LBB122
	.quad	.LBE122
	.uleb128 0x2a
	.long	.LASF298
	.byte	0x5
	.value	0x1f4
	.long	0x3f
	.byte	0x0
	.uleb128 0x3a
	.long	0x2a3e
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x2c
	.long	0x2a50
	.uleb128 0x2c
	.long	0x2a5a
	.uleb128 0x2c
	.long	0x2a66
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x3c0
	.uleb128 0x2e
	.long	0x2a71
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x2a7c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2e
	.long	0x2a87
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x46
	.long	0x2a9d
	.quad	.L478
	.uleb128 0x46
	.long	0x2aa5
	.quad	.L490
	.uleb128 0x46
	.long	0x2aad
	.quad	.L494
	.uleb128 0x2b
	.long	0x2a06
	.long	0x2acb
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x2c
	.long	0x2add
	.uleb128 0x3b
	.long	0x2ae7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x30
	.long	0x29de
	.long	.Ldebug_ranges0+0x3f0
	.uleb128 0x2e
	.long	0x2af2
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x2afe
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x2c
	.long	0x2b0f
	.uleb128 0x3b
	.long	0x2b18
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x2b22
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2b2d
	.quad	.LBB131
	.quad	.LBE131
	.uleb128 0x2c
	.long	0x2b3a
	.uleb128 0x2c
	.long	0x2b44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x2a39
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xc
	.byte	0x0
	.uleb128 0x6
	.long	0x2a29
	.uleb128 0x3c
	.long	0x2ab6
	.long	.LASF299
	.byte	0x5
	.value	0x154
	.byte	0x1
	.long	0xf77
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x5
	.value	0x150
	.long	0x7f7
	.uleb128 0x3e
	.long	.LASF300
	.byte	0x5
	.value	0x151
	.long	0x6f
	.uleb128 0x3d
	.string	"as"
	.byte	0x5
	.value	0x153
	.long	0xf29
	.uleb128 0x39
	.string	"sw"
	.byte	0x5
	.value	0x155
	.long	0xf77
	.uleb128 0x39
	.string	"hw"
	.byte	0x5
	.value	0x156
	.long	0xe24
	.uleb128 0x2a
	.long	.LASF301
	.byte	0x5
	.value	0x157
	.long	0x515
	.uleb128 0x42
	.long	.LASF234
	.long	0x2ac6
	.byte	0x1
	.uleb128 0x47
	.long	.LASF288
	.byte	0x5
	.value	0x179
	.uleb128 0x47
	.long	.LASF302
	.byte	0x5
	.value	0x177
	.uleb128 0x47
	.long	.LASF303
	.byte	0x5
	.value	0x174
	.byte	0x0
	.uleb128 0xb
	.long	0x2ac6
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x6
	.long	0x2ab6
	.uleb128 0x3c
	.long	0x2afe
	.long	.LASF304
	.byte	0x5
	.value	0x138
	.byte	0x1
	.long	0xe24
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x5
	.value	0x137
	.long	0x7f7
	.uleb128 0x3d
	.string	"as"
	.byte	0x5
	.value	0x137
	.long	0xf29
	.uleb128 0x39
	.string	"hw"
	.byte	0x5
	.value	0x139
	.long	0xe24
	.byte	0x0
	.uleb128 0x33
	.long	0x2b2d
	.long	.LASF305
	.byte	0x5
	.byte	0xea
	.byte	0x1
	.long	0xe24
	.byte	0x1
	.uleb128 0x34
	.string	"s"
	.byte	0x5
	.byte	0xe6
	.long	0x7f7
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0xe7
	.long	0xe24
	.uleb128 0x34
	.string	"as"
	.byte	0x5
	.byte	0xe9
	.long	0xf29
	.byte	0x0
	.uleb128 0x44
	.long	0x2b4f
	.long	.LASF306
	.byte	0x5
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0xbb
	.long	0xe24
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0xbb
	.long	0xf77
	.byte	0x0
	.uleb128 0x41
	.long	0x2b81
	.byte	0x1
	.long	.LASF307
	.byte	0x5
	.value	0x20f
	.byte	0x1
	.long	0x3f
	.quad	.LFB168
	.quad	.LFE168
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x20e
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x23
	.long	0x2bbc
	.byte	0x1
	.long	.LASF308
	.byte	0x5
	.value	0x214
	.byte	0x1
	.quad	.LFB169
	.quad	.LFE169
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x213
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"ts"
	.byte	0x5
	.value	0x213
	.long	0x2bbc
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x823
	.uleb128 0x41
	.long	0x2c2b
	.byte	0x1
	.long	.LASF309
	.byte	0x5
	.value	0x21d
	.byte	0x1
	.long	0x395
	.quad	.LFB170
	.quad	.LFE170
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x21c
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"ts"
	.byte	0x5
	.value	0x21c
	.long	0x2bbc
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF310
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF311
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF111
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.long	0x2cd1
	.long	.LASF312
	.byte	0x5
	.byte	0x91
	.byte	0x1
	.long	0x3f
	.quad	.LFB176
	.quad	.LFE176
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0x8c
	.long	0xffc
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0x8d
	.long	0xe55
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF98
	.byte	0x5
	.byte	0x8e
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"as"
	.byte	0x5
	.byte	0x90
	.long	0xf29
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.string	"err"
	.byte	0x5
	.byte	0x92
	.long	0x3f
	.uleb128 0x2b
	.long	0x2caa
	.long	0x24cf
	.quad	.LBB143
	.quad	.LBE143
	.uleb128 0x3b
	.long	0x24e0
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x2cd1
	.quad	.LBB148
	.quad	.LBE148
	.uleb128 0x2c
	.long	0x2ce2
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x440
	.uleb128 0x2f
	.long	0x2cec
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x2d02
	.long	.LASF313
	.byte	0x5
	.byte	0x6e
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0x6d
	.long	0xffc
	.uleb128 0x35
	.long	.LASF160
	.byte	0x5
	.byte	0x6f
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x2d02
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x2ab6
	.uleb128 0x24
	.long	0x2d4d
	.long	.LASF314
	.byte	0x5
	.byte	0xb3
	.byte	0x1
	.quad	.LFB177
	.quad	.LFE177
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0xb2
	.long	0xffc
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x2d4d
	.quad	.LBB156
	.quad	.LBE156
	.uleb128 0x2c
	.long	0x2d5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.long	0x2d65
	.long	.LASF315
	.byte	0x5
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0x5f
	.long	0xffc
	.byte	0x0
	.uleb128 0x24
	.long	0x2d90
	.long	.LASF316
	.byte	0x5
	.byte	0xc1
	.byte	0x1
	.quad	.LFB179
	.quad	.LFE179
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"sw"
	.byte	0x5
	.byte	0xc0
	.long	0xffc
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x24
	.long	0x2dee
	.long	.LASF317
	.byte	0x5
	.byte	0xc6
	.byte	0x1
	.quad	.LFB180
	.quad	.LFE180
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xc5
	.long	0x7f7
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"hwp"
	.byte	0x5
	.byte	0xc5
	.long	0x2dee
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"hw"
	.byte	0x5
	.byte	0xc7
	.long	0xe55
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x2df4
	.quad	.LBB162
	.quad	.LBE162
	.uleb128 0x2c
	.long	0x2e01
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe55
	.uleb128 0x44
	.long	0x2e0c
	.long	.LASF318
	.byte	0x5
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0x4a
	.long	0xe55
	.byte	0x0
	.uleb128 0x26
	.long	0x2e46
	.long	.LASF319
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.long	0xe55
	.quad	.LFB181
	.quad	.LFE181
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xd6
	.long	0x7f7
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0xd6
	.long	0xe55
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x2e80
	.long	.LASF320
	.byte	0x5
	.byte	0xdc
	.byte	0x1
	.long	0xe55
	.quad	.LFB182
	.quad	.LFE182
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xdb
	.long	0x7f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"hw"
	.byte	0x5
	.byte	0xdb
	.long	0xe55
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x26
	.long	0x2f43
	.long	.LASF321
	.byte	0x5
	.byte	0xf4
	.byte	0x1
	.long	0xe55
	.quad	.LFB184
	.quad	.LFE184
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x5
	.byte	0xf3
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.string	"as"
	.byte	0x5
	.byte	0xf3
	.long	0xf29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.string	"hw"
	.byte	0x5
	.byte	0xf5
	.long	0xe55
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"drv"
	.byte	0x5
	.byte	0xf6
	.long	0x1175
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x2f53
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.12
	.uleb128 0x45
	.long	.LASF287
	.byte	0x5
	.value	0x132
	.quad	.L579
	.uleb128 0x45
	.long	.LASF288
	.byte	0x5
	.value	0x130
	.quad	.L581
	.uleb128 0x2b
	.long	0x2f27
	.long	0x24cf
	.quad	.LBB168
	.quad	.LBE168
	.uleb128 0x3b
	.long	0x24e0
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x3a
	.long	0x2f58
	.quad	.LBB173
	.quad	.LBE173
	.uleb128 0x2c
	.long	0x2f69
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x2f53
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x17
	.byte	0x0
	.uleb128 0x6
	.long	0x2f43
	.uleb128 0x33
	.long	0x2f7e
	.long	.LASF322
	.byte	0x5
	.byte	0x54
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0x53
	.long	0xe55
	.uleb128 0x42
	.long	.LASF234
	.long	0x2f7e
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x2ab6
	.uleb128 0x23
	.long	0x2ff5
	.byte	0x1
	.long	.LASF323
	.byte	0x5
	.value	0x186
	.byte	0x1
	.quad	.LFB188
	.quad	.LFE188
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF292
	.byte	0x5
	.value	0x185
	.long	0x2827
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x185
	.long	0xffc
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF234
	.long	0x2ff5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.14
	.uleb128 0x3a
	.long	0x2ffa
	.quad	.LBB183
	.quad	.LBE183
	.uleb128 0x3b
	.long	0x3008
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x3012
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x2a29
	.uleb128 0x40
	.long	0x301e
	.long	.LASF324
	.byte	0x5
	.value	0x17e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x5
	.value	0x17d
	.long	0x7f7
	.uleb128 0x3d
	.string	"sw"
	.byte	0x5
	.value	0x17d
	.long	0xffc
	.byte	0x0
	.uleb128 0x41
	.long	0x31c5
	.byte	0x1
	.long	.LASF325
	.byte	0x5
	.value	0x19a
	.byte	0x1
	.long	0xffc
	.quad	.LFB189
	.quad	.LFE189
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF292
	.byte	0x5
	.value	0x193
	.long	0x2827
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x194
	.long	0xffc
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF98
	.byte	0x5
	.value	0x195
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF294
	.byte	0x5
	.value	0x196
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.long	.LASF295
	.byte	0x5
	.value	0x197
	.long	0x47a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"as"
	.byte	0x5
	.value	0x199
	.long	0xf29
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"s"
	.byte	0x5
	.value	0x19b
	.long	0x7f7
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF234
	.long	0x31d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.9
	.uleb128 0x45
	.long	.LASF297
	.byte	0x5
	.value	0x209
	.quad	.L628
	.uleb128 0x30
	.long	0x30dd
	.long	.Ldebug_ranges0+0x480
	.uleb128 0x22
	.string	"hw"
	.byte	0x5
	.value	0x1d8
	.long	0xe55
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x3a
	.long	0x31da
	.quad	.LBB190
	.quad	.LBE190
	.uleb128 0x2c
	.long	0x31ec
	.uleb128 0x2c
	.long	0x31f6
	.uleb128 0x2c
	.long	0x3202
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x4b0
	.uleb128 0x2e
	.long	0x320d
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x3218
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2e
	.long	0x3223
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x46
	.long	0x3239
	.quad	.L644
	.uleb128 0x46
	.long	0x3241
	.quad	.L656
	.uleb128 0x46
	.long	0x3249
	.quad	.L660
	.uleb128 0x2b
	.long	0x31a2
	.long	0x3267
	.quad	.LBB192
	.quad	.LBE192
	.uleb128 0x2c
	.long	0x3279
	.uleb128 0x3b
	.long	0x3283
	.byte	0x1
	.byte	0x5f
	.uleb128 0x30
	.long	0x317a
	.long	.Ldebug_ranges0+0x4e0
	.uleb128 0x2e
	.long	0x328e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x329a
	.quad	.LBB195
	.quad	.LBE195
	.uleb128 0x2c
	.long	0x32ab
	.uleb128 0x3b
	.long	0x32b4
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	0x32be
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x32c9
	.quad	.LBB197
	.quad	.LBE197
	.uleb128 0x2c
	.long	0x32d6
	.uleb128 0x2c
	.long	0x32e0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x31d5
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.long	0x31c5
	.uleb128 0x3c
	.long	0x3252
	.long	.LASF326
	.byte	0x5
	.value	0x154
	.byte	0x1
	.long	0xffc
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x5
	.value	0x150
	.long	0x7f7
	.uleb128 0x3e
	.long	.LASF300
	.byte	0x5
	.value	0x151
	.long	0x6f
	.uleb128 0x3d
	.string	"as"
	.byte	0x5
	.value	0x153
	.long	0xf29
	.uleb128 0x39
	.string	"sw"
	.byte	0x5
	.value	0x155
	.long	0xffc
	.uleb128 0x39
	.string	"hw"
	.byte	0x5
	.value	0x156
	.long	0xe55
	.uleb128 0x2a
	.long	.LASF301
	.byte	0x5
	.value	0x157
	.long	0x515
	.uleb128 0x42
	.long	.LASF234
	.long	0x3262
	.byte	0x1
	.uleb128 0x47
	.long	.LASF288
	.byte	0x5
	.value	0x179
	.uleb128 0x47
	.long	.LASF302
	.byte	0x5
	.value	0x177
	.uleb128 0x47
	.long	.LASF303
	.byte	0x5
	.value	0x174
	.byte	0x0
	.uleb128 0xb
	.long	0x3262
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0x1e
	.byte	0x0
	.uleb128 0x6
	.long	0x3252
	.uleb128 0x3c
	.long	0x329a
	.long	.LASF327
	.byte	0x5
	.value	0x138
	.byte	0x1
	.long	0xe55
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x5
	.value	0x137
	.long	0x7f7
	.uleb128 0x3d
	.string	"as"
	.byte	0x5
	.value	0x137
	.long	0xf29
	.uleb128 0x39
	.string	"hw"
	.byte	0x5
	.value	0x139
	.long	0xe55
	.byte	0x0
	.uleb128 0x33
	.long	0x32c9
	.long	.LASF328
	.byte	0x5
	.byte	0xea
	.byte	0x1
	.long	0xe55
	.byte	0x1
	.uleb128 0x34
	.string	"s"
	.byte	0x5
	.byte	0xe6
	.long	0x7f7
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0xe7
	.long	0xe55
	.uleb128 0x34
	.string	"as"
	.byte	0x5
	.byte	0xe9
	.long	0xf29
	.byte	0x0
	.uleb128 0x44
	.long	0x32eb
	.long	.LASF329
	.byte	0x5
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"hw"
	.byte	0x5
	.byte	0xbb
	.long	0xe55
	.uleb128 0x34
	.string	"sw"
	.byte	0x5
	.byte	0xbb
	.long	0xffc
	.byte	0x0
	.uleb128 0x41
	.long	0x331d
	.byte	0x1
	.long	.LASF330
	.byte	0x5
	.value	0x20f
	.byte	0x1
	.long	0x3f
	.quad	.LFB190
	.quad	.LFE190
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x20e
	.long	0xffc
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x23
	.long	0x3358
	.byte	0x1
	.long	.LASF331
	.byte	0x5
	.value	0x214
	.byte	0x1
	.quad	.LFB191
	.quad	.LFE191
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x213
	.long	0xffc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"ts"
	.byte	0x5
	.value	0x213
	.long	0x2bbc
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x41
	.long	0x33c1
	.byte	0x1
	.long	.LASF332
	.byte	0x5
	.value	0x21d
	.byte	0x1
	.long	0x395
	.quad	.LFB192
	.quad	.LFE192
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x5
	.value	0x21c
	.long	0xffc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"ts"
	.byte	0x5
	.value	0x21c
	.long	0x2bbc
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF310
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF311
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF111
	.byte	0x5
	.value	0x21e
	.long	0x395
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x41
	.long	0x341b
	.byte	0x1
	.long	.LASF333
	.byte	0x2
	.value	0x449
	.byte	0x1
	.long	0x3f
	.quad	.LFB193
	.quad	.LFE193
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x448
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"buf"
	.byte	0x2
	.value	0x448
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF220
	.byte	0x2
	.value	0x448
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x2
	.value	0x44a
	.long	0x3f
	.byte	0x0
	.uleb128 0x41
	.long	0x3475
	.byte	0x1
	.long	.LASF335
	.byte	0x2
	.value	0x45b
	.byte	0x1
	.long	0x3f
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x45a
	.long	0xffc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"buf"
	.byte	0x2
	.value	0x45a
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF220
	.byte	0x2
	.value	0x45a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x2
	.value	0x45c
	.long	0x3f
	.byte	0x0
	.uleb128 0x41
	.long	0x34a7
	.byte	0x1
	.long	.LASF336
	.byte	0x2
	.value	0x46d
	.byte	0x1
	.long	0x3f
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x46c
	.long	0xf77
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x23
	.long	0x3530
	.byte	0x1
	.long	.LASF337
	.byte	0x2
	.value	0x472
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x471
	.long	0xf77
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"on"
	.byte	0x2
	.value	0x471
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"hw"
	.byte	0x2
	.value	0x473
	.long	0xe24
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x530
	.uleb128 0x31
	.long	.LASF338
	.byte	0x2
	.value	0x47b
	.long	0xf77
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"sc"
	.byte	0x2
	.value	0x47c
	.long	0x1da6
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.quad	.LBB211
	.quad	.LBE211
	.uleb128 0x31
	.long	.LASF339
	.byte	0x2
	.value	0x487
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x35b0
	.byte	0x1
	.long	.LASF340
	.byte	0x2
	.value	0x49d
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x49c
	.long	0xffc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"on"
	.byte	0x2
	.value	0x49c
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"hw"
	.byte	0x2
	.value	0x49e
	.long	0xe55
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.long	0x358f
	.long	.Ldebug_ranges0+0x560
	.uleb128 0x31
	.long	.LASF338
	.byte	0x2
	.value	0x4a6
	.long	0xffc
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2d
	.quad	.LBB215
	.quad	.LBE215
	.uleb128 0x31
	.long	.LASF339
	.byte	0x2
	.value	0x4b1
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x360f
	.long	.LASF341
	.byte	0x2
	.value	0x4da
	.byte	0x1
	.long	0x3f
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"sw"
	.byte	0x2
	.value	0x4d9
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF258
	.byte	0x2
	.value	0x4db
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x2
	.value	0x4db
	.long	0x3f
	.uleb128 0x38
	.long	.LASF234
	.long	0x361f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.6
	.byte	0x0
	.uleb128 0xb
	.long	0x361f
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xe
	.byte	0x0
	.uleb128 0x6
	.long	0x360f
	.uleb128 0x1c
	.long	0x38cb
	.long	.LASF342
	.byte	0x2
	.value	0x5d1
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x5d0
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x5d2
	.long	0x7f7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	0x3691
	.long	0x38cb
	.quad	.LBB216
	.quad	.LBE216
	.uleb128 0x2c
	.long	0x38d9
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x590
	.uleb128 0x2e
	.long	0x38e3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.long	0x38ee
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x36c8
	.long	.Ldebug_ranges0+0x5f0
	.uleb128 0x2e
	.long	0x3904
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	0x3910
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x391c
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	0x3928
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	0x3934
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x3940
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3742
	.long	0x3972
	.quad	.LBB221
	.quad	.LBE221
	.uleb128 0x2c
	.long	0x3980
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x640
	.uleb128 0x2e
	.long	0x398a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x670
	.uleb128 0x2e
	.long	0x3996
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x39a1
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x39ad
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x6a0
	.uleb128 0x2f
	.long	0x39ba
	.uleb128 0x3a
	.long	0x39c9
	.quad	.LBB225
	.quad	.LBE225
	.uleb128 0x2c
	.long	0x39db
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x6d0
	.uleb128 0x2e
	.long	0x39e6
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3778
	.long	0x3a12
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x2c
	.long	0x3a20
	.uleb128 0x2c
	.long	0x3a2b
	.uleb128 0x2c
	.long	0x3a37
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x700
	.uleb128 0x2e
	.long	0x3a43
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x37cb
	.long	.Ldebug_ranges0+0x740
	.uleb128 0x2e
	.long	0x3a52
	.byte	0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x770
	.uleb128 0x2f
	.long	0x3a5e
	.uleb128 0x2e
	.long	0x3a69
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x7a0
	.uleb128 0x2e
	.long	0x3a76
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x3a82
	.uleb128 0x2e
	.long	0x3a8e
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.long	0x3a9a
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x7e0
	.uleb128 0x2f
	.long	0x3aa7
	.uleb128 0x2f
	.long	0x3ab2
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x37ed
	.quad	.LBB240
	.quad	.LBE240
	.uleb128 0x2f
	.long	0x3ac2
	.uleb128 0x2e
	.long	0x3acd
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x380a
	.quad	.LBB241
	.quad	.LBE241
	.uleb128 0x2e
	.long	0x395e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x32
	.long	0x3827
	.quad	.LBB242
	.quad	.LBE242
	.uleb128 0x2e
	.long	0x3951
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x3ada
	.quad	.LBB252
	.quad	.LBE252
	.uleb128 0x2c
	.long	0x3ae8
	.uleb128 0x2d
	.quad	.LBB253
	.quad	.LBE253
	.uleb128 0x2e
	.long	0x3af2
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.quad	.LBB254
	.quad	.LBE254
	.uleb128 0x2e
	.long	0x3b09
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.long	0x3b15
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2e
	.long	0x3b21
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2f
	.long	0x3b2d
	.uleb128 0x2e
	.long	0x3b38
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x810
	.uleb128 0x2e
	.long	0x3b44
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	0x3b50
	.uleb128 0x2e
	.long	0x3b5c
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x3b68
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.quad	.LBB256
	.quad	.LBE256
	.uleb128 0x2f
	.long	0x3b74
	.uleb128 0x2f
	.long	0x3b7f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x396d
	.long	.LASF343
	.byte	0x2
	.value	0x519
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x2
	.value	0x518
	.long	0x7f7
	.uleb128 0x39
	.string	"hw"
	.byte	0x2
	.value	0x51a
	.long	0xe24
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x51b
	.long	0xf77
	.uleb128 0x42
	.long	.LASF234
	.long	0x396d
	.byte	0x1
	.uleb128 0x37
	.uleb128 0x2a
	.long	.LASF344
	.byte	0x2
	.value	0x51e
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x51f
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF345
	.byte	0x2
	.value	0x51f
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF266
	.byte	0x2
	.value	0x51f
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF346
	.byte	0x2
	.value	0x51f
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF347
	.byte	0x2
	.value	0x51f
	.long	0x3f
	.uleb128 0x48
	.long	0x395d
	.uleb128 0x39
	.string	"sc"
	.byte	0x2
	.value	0x52c
	.long	0x1da6
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x39
	.string	"sw1"
	.byte	0x2
	.value	0x573
	.long	0xf77
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x282d
	.uleb128 0x40
	.long	0x39c9
	.long	.LASF348
	.byte	0x2
	.value	0x585
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x2
	.value	0x584
	.long	0x7f7
	.uleb128 0x39
	.string	"hw"
	.byte	0x2
	.value	0x586
	.long	0xe55
	.uleb128 0x37
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x589
	.long	0xffc
	.uleb128 0x2a
	.long	.LASF349
	.byte	0x2
	.value	0x58a
	.long	0x3f
	.uleb128 0x39
	.string	"min"
	.byte	0x2
	.value	0x58a
	.long	0x3f
	.uleb128 0x37
	.uleb128 0x2a
	.long	.LASF350
	.byte	0x2
	.value	0x596
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x39fd
	.long	.LASF351
	.byte	0x2
	.value	0x4c3
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3d
	.string	"sw"
	.byte	0x2
	.value	0x4c2
	.long	0xffc
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x4c4
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x3a0d
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.long	0x3a0d
	.long	0x75
	.uleb128 0xc
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x6
	.long	0x39fd
	.uleb128 0x40
	.long	0x3ada
	.long	.LASF352
	.byte	0x2
	.value	0x4f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"hw"
	.byte	0x2
	.value	0x4f3
	.long	0xe24
	.uleb128 0x3e
	.long	.LASF157
	.byte	0x2
	.value	0x4f3
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF160
	.byte	0x2
	.value	0x4f3
	.long	0x3f
	.uleb128 0x39
	.string	"n"
	.byte	0x2
	.value	0x4f5
	.long	0x3f
	.uleb128 0x48
	.long	0x3ac1
	.uleb128 0x39
	.string	"sc"
	.byte	0x2
	.value	0x4f8
	.long	0x1da6
	.uleb128 0x37
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x4fb
	.long	0xf77
	.uleb128 0x2a
	.long	.LASF353
	.byte	0x2
	.value	0x4fc
	.long	0x3f
	.uleb128 0x37
	.uleb128 0x2a
	.long	.LASF354
	.byte	0x2
	.value	0x500
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF355
	.byte	0x2
	.value	0x501
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x2
	.value	0x502
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF356
	.byte	0x2
	.value	0x503
	.long	0x3f
	.uleb128 0x37
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x501
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x501
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x513
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x513
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.long	0x3b8e
	.long	.LASF357
	.byte	0x2
	.value	0x5a2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x2
	.value	0x5a1
	.long	0x7f7
	.uleb128 0x39
	.string	"cap"
	.byte	0x2
	.value	0x5a3
	.long	0x1103
	.uleb128 0x42
	.long	.LASF234
	.long	0x3b8e
	.byte	0x1
	.uleb128 0x37
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x5a6
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF157
	.byte	0x2
	.value	0x5a6
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF349
	.byte	0x2
	.value	0x5a6
	.long	0x3f
	.uleb128 0x39
	.string	"hw"
	.byte	0x2
	.value	0x5a7
	.long	0xe24
	.uleb128 0x39
	.string	"sw"
	.byte	0x2
	.value	0x5a8
	.long	0xf77
	.uleb128 0x37
	.uleb128 0x2a
	.long	.LASF274
	.byte	0x2
	.value	0x5ad
	.long	0x3f
	.uleb128 0x2a
	.long	.LASF358
	.byte	0x2
	.value	0x5ae
	.long	0x3f
	.uleb128 0x39
	.string	"src"
	.byte	0x2
	.value	0x5af
	.long	0x96a
	.uleb128 0x39
	.string	"cb"
	.byte	0x2
	.value	0x5b0
	.long	0x1080
	.uleb128 0x37
	.uleb128 0x39
	.string	"ta"
	.byte	0x2
	.value	0x5ae
	.long	0x3f
	.uleb128 0x39
	.string	"tb"
	.byte	0x2
	.value	0x5ae
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.long	0x207b
	.uleb128 0x1c
	.long	0x3bce
	.long	.LASF359
	.byte	0x2
	.value	0x60a
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"typ"
	.byte	0x2
	.value	0x609
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"nb"
	.byte	0x2
	.value	0x609
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.long	0x3c23
	.byte	0x1
	.long	.LASF360
	.byte	0x2
	.value	0x61d
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x61e
	.long	0x2d
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.long	0x3c10
	.long	.Ldebug_ranges0+0x840
	.uleb128 0x22
	.string	"d"
	.byte	0x2
	.value	0x622
	.long	0x1175
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x870
	.uleb128 0x22
	.string	"d"
	.byte	0x2
	.value	0x62f
	.long	0x1175
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3ccd
	.long	.LASF361
	.byte	0x2
	.value	0x651
	.byte	0x1
	.long	0x3f
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"s"
	.byte	0x2
	.value	0x650
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"drv"
	.byte	0x2
	.value	0x650
	.long	0x1175
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	0x3c98
	.long	0x3ccd
	.quad	.LBB271
	.quad	.LBE271
	.uleb128 0x2c
	.long	0x3cda
	.uleb128 0x2c
	.long	0x3ce3
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x8b0
	.uleb128 0x2e
	.long	0x3cee
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x3cf9
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x3d14
	.quad	.LBB273
	.quad	.LBE273
	.uleb128 0x2c
	.long	0x3d21
	.uleb128 0x2c
	.long	0x3d2a
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x8f0
	.uleb128 0x2e
	.long	0x3d35
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.long	0x3d40
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.long	0x3d0f
	.long	.LASF362
	.byte	0x5
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"s"
	.byte	0x5
	.byte	0x28
	.long	0x7f7
	.uleb128 0x34
	.string	"drv"
	.byte	0x5
	.byte	0x2a
	.long	0x1175
	.uleb128 0x35
	.long	.LASF363
	.byte	0x5
	.byte	0x2c
	.long	0x3f
	.uleb128 0x35
	.long	.LASF364
	.byte	0x5
	.byte	0x2d
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x3d0f
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x1f12
	.uleb128 0x44
	.long	0x3d56
	.long	.LASF365
	.byte	0x5
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"s"
	.byte	0x5
	.byte	0x28
	.long	0x7f7
	.uleb128 0x34
	.string	"drv"
	.byte	0x5
	.byte	0x2a
	.long	0x1175
	.uleb128 0x35
	.long	.LASF363
	.byte	0x5
	.byte	0x2c
	.long	0x3f
	.uleb128 0x35
	.long	.LASF364
	.byte	0x5
	.byte	0x2d
	.long	0x3f
	.uleb128 0x42
	.long	.LASF234
	.long	0x3d56
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.long	0x2f43
	.uleb128 0x1c
	.long	0x3dca
	.long	.LASF366
	.byte	0x2
	.value	0x664
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x663
	.long	0xac
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF367
	.byte	0x2
	.value	0x663
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x39
	.string	"s"
	.byte	0x2
	.value	0x665
	.long	0x7f7
	.uleb128 0x22
	.string	"hwo"
	.byte	0x2
	.value	0x666
	.long	0xe24
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"hwi"
	.byte	0x2
	.value	0x667
	.long	0xe55
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"op"
	.byte	0x2
	.value	0x668
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1c
	.long	0x3e5c
	.long	.LASF368
	.byte	0x2
	.value	0x674
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x39
	.string	"s"
	.byte	0x2
	.value	0x675
	.long	0x7f7
	.uleb128 0x22
	.string	"hwo"
	.byte	0x2
	.value	0x676
	.long	0xe24
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"hwi"
	.byte	0x2
	.value	0x677
	.long	0xe55
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.quad	.LBB285
	.quad	.LBE285
	.uleb128 0x22
	.string	"sc"
	.byte	0x2
	.value	0x67a
	.long	0x1da6
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.quad	.LBB286
	.quad	.LBE286
	.uleb128 0x22
	.string	"cap"
	.byte	0x2
	.value	0x680
	.long	0x1103
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.string	"cb"
	.byte	0x2
	.value	0x681
	.long	0x1080
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0x3e96
	.long	.LASF369
	.byte	0x2
	.value	0x694
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"f"
	.byte	0x2
	.value	0x693
	.long	0x474
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x693
	.long	0xac
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x20
	.long	0x3ee2
	.long	.LASF370
	.byte	0x2
	.value	0x69a
	.byte	0x1
	.long	0x3f
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"f"
	.byte	0x2
	.value	0x699
	.long	0x474
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x699
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF371
	.byte	0x2
	.value	0x699
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x23
	.long	0x3f2b
	.byte	0x1
	.long	.LASF372
	.byte	0x2
	.value	0x6a6
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"s"
	.byte	0x2
	.value	0x6a5
	.long	0x7f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF98
	.byte	0x2
	.value	0x6a5
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF292
	.byte	0x2
	.value	0x6a5
	.long	0x2827
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.long	0x3f5a
	.byte	0x1
	.long	.LASF373
	.byte	0x2
	.value	0x6ae
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF292
	.byte	0x2
	.value	0x6ad
	.long	0x2827
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x41
	.long	0x401e
	.byte	0x1
	.long	.LASF374
	.byte	0x2
	.value	0x6b5
	.byte	0x1
	.long	0x7f7
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x6b6
	.long	0x2d
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF375
	.byte	0x2
	.value	0x6b7
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF376
	.byte	0x2
	.value	0x6b8
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x6b9
	.long	0x7f7
	.byte	0x1
	.byte	0x50
	.uleb128 0x30
	.long	0x3fcb
	.long	.Ldebug_ranges0+0x940
	.uleb128 0x22
	.string	"def"
	.byte	0x2
	.value	0x6d8
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x400b
	.long	.Ldebug_ranges0+0x970
	.uleb128 0x2a
	.long	.LASF377
	.byte	0x2
	.value	0x6dd
	.long	0x3f
	.uleb128 0x2d
	.quad	.LBB290
	.quad	.LBE290
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x2
	.value	0x6e0
	.long	0x2d
	.uleb128 0x2a
	.long	.LASF379
	.byte	0x2
	.value	0x6e0
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x9a0
	.uleb128 0x22
	.string	"e"
	.byte	0x2
	.value	0x700
	.long	0x401e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x83f
	.uleb128 0x41
	.long	0x415a
	.byte	0x1
	.long	.LASF380
	.byte	0x2
	.value	0x725
	.byte	0x1
	.long	0x1103
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"s"
	.byte	0x2
	.value	0x720
	.long	0x7f7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"as"
	.byte	0x2
	.value	0x721
	.long	0xf29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"ops"
	.byte	0x2
	.value	0x722
	.long	0x415a
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF381
	.byte	0x2
	.value	0x724
	.long	0xac
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.string	"cap"
	.byte	0x2
	.value	0x726
	.long	0x1103
	.uleb128 0x22
	.string	"cb"
	.byte	0x2
	.value	0x727
	.long	0x1080
	.byte	0x1
	.byte	0x5e
	.uleb128 0x45
	.long	.LASF287
	.byte	0x2
	.value	0x77a
	.quad	.L1033
	.uleb128 0x38
	.long	.LASF234
	.long	0x4160
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.uleb128 0x45
	.long	.LASF288
	.byte	0x2
	.value	0x778
	.quad	.L1045
	.uleb128 0x45
	.long	.LASF302
	.byte	0x2
	.value	0x776
	.quad	.L1047
	.uleb128 0x45
	.long	.LASF303
	.byte	0x2
	.value	0x774
	.quad	.L1049
	.uleb128 0x2b
	.long	0x411b
	.long	0x4165
	.quad	.LBB295
	.quad	.LBE295
	.uleb128 0x2c
	.long	0x4177
	.uleb128 0x2c
	.long	0x4181
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x9e0
	.uleb128 0x2e
	.long	0x418c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xa10
	.uleb128 0x22
	.string	"hw"
	.byte	0x2
	.value	0x743
	.long	0xe24
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"cap"
	.byte	0x2
	.value	0x744
	.long	0x1103
	.byte	0x1
	.byte	0x56
	.uleb128 0x3a
	.long	0x24cf
	.quad	.LBB298
	.quad	.LBE298
	.uleb128 0x3b
	.long	0x24e0
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x540
	.uleb128 0x6
	.long	0x39fd
	.uleb128 0x3c
	.long	0x4199
	.long	.LASF382
	.byte	0x2
	.value	0x2da
	.byte	0x1
	.long	0x1103
	.byte	0x1
	.uleb128 0x3d
	.string	"s"
	.byte	0x2
	.value	0x2d7
	.long	0x7f7
	.uleb128 0x3d
	.string	"as"
	.byte	0x2
	.value	0x2d9
	.long	0xf29
	.uleb128 0x39
	.string	"cap"
	.byte	0x2
	.value	0x2db
	.long	0x1103
	.byte	0x0
	.uleb128 0x23
	.long	0x4215
	.byte	0x1
	.long	.LASF383
	.byte	0x2
	.value	0x780
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"cap"
	.byte	0x2
	.value	0x77f
	.long	0x1103
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF381
	.byte	0x2
	.value	0x77f
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"cb"
	.byte	0x2
	.value	0x781
	.long	0x1080
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xa80
	.uleb128 0x22
	.string	"sw"
	.byte	0x2
	.value	0x78a
	.long	0xf77
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"sw1"
	.byte	0x2
	.value	0x78a
	.long	0xf77
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xac0
	.uleb128 0x39
	.string	"sc"
	.byte	0x2
	.value	0x78d
	.long	0x1da6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.long	.LASF384
	.byte	0x8
	.byte	0x91
	.long	0x348
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF385
	.byte	0x8
	.byte	0x92
	.long	0x348
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF386
	.byte	0x8
	.byte	0x93
	.long	0x348
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF387
	.byte	0x12
	.byte	0x12
	.long	0x4249
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x82e
	.uleb128 0x49
	.long	.LASF388
	.byte	0x12
	.byte	0x1c
	.long	0xbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF389
	.byte	0xf
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xb
	.long	0x4282
	.long	0x8d3
	.uleb128 0xc
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF390
	.byte	0xf
	.byte	0x87
	.long	0x4272
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0xb
	.long	0x42ba
	.long	0xde8
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x49
	.long	.LASF391
	.byte	0xd
	.byte	0x28
	.long	0x4298
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x42e9
	.long	0xc3f
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x1
	.uleb128 0xc
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x49
	.long	.LASF392
	.byte	0xd
	.byte	0x29
	.long	0x42c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF393
	.byte	0x1
	.byte	0xc5
	.long	0xe5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF394
	.byte	0x1
	.byte	0xc6
	.long	0xe5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF395
	.byte	0x1
	.byte	0xc7
	.long	0xe5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.long	.LASF396
	.byte	0x1
	.byte	0xc8
	.long	0xe5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF397
	.byte	0x2
	.byte	0x6f
	.long	0x90d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nominal_volume
	.uleb128 0xb
	.long	0x4350
	.long	0x1175
	.uleb128 0xc
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x29
	.long	.LASF398
	.byte	0x2
	.byte	0x28
	.long	0x4340
	.byte	0x9
	.byte	0x3
	.quad	drvtab
	.uleb128 0x29
	.long	.LASF399
	.byte	0x2
	.byte	0x4f
	.long	0x11e4
	.byte	0x9
	.byte	0x3
	.quad	conf
	.uleb128 0x29
	.long	.LASF400
	.byte	0x2
	.byte	0x6d
	.long	0x3ac
	.byte	0x9
	.byte	0x3
	.quad	glob_audio_state
	.uleb128 0xb
	.long	0x439f
	.long	0x9ce
	.uleb128 0xc
	.long	0x61
	.byte	0xd
	.byte	0x0
	.uleb128 0x31
	.long	.LASF401
	.byte	0x2
	.value	0x5db
	.long	0x438f
	.byte	0x9
	.byte	0x3
	.quad	audio_options
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.long	0x2fd
	.value	0x2
	.long	.Ldebug_info0
	.long	0x43b6
	.long	0x1262
	.string	"popcount"
	.long	0x1291
	.string	"lsbindex"
	.long	0x131c
	.string	"AUD_vlog"
	.long	0x13d6
	.string	"AUD_log"
	.long	0x1422
	.string	"audio_bug"
	.long	0x147b
	.string	"audio_calloc"
	.long	0x1a85
	.string	"audio_pcm_init_info"
	.long	0x1aeb
	.string	"audio_pcm_info_clear_buf"
	.long	0x1ebe
	.string	"audio_pcm_hw_get_live_in"
	.long	0x1f27
	.string	"audio_pcm_sw_read"
	.long	0x20e0
	.string	"audio_pcm_hw_get_live_out2"
	.long	0x222b
	.string	"audio_pcm_hw_get_live_out"
	.long	0x22a3
	.string	"audio_pcm_sw_write"
	.long	0x27d7
	.string	"AUD_close_out"
	.long	0x2842
	.string	"AUD_open_out"
	.long	0x2b4f
	.string	"AUD_is_active_out"
	.long	0x2b81
	.string	"AUD_init_time_stamp_out"
	.long	0x2bc2
	.string	"AUD_get_elapsed_usec_out"
	.long	0x2f83
	.string	"AUD_close_in"
	.long	0x301e
	.string	"AUD_open_in"
	.long	0x32eb
	.string	"AUD_is_active_in"
	.long	0x331d
	.string	"AUD_init_time_stamp_in"
	.long	0x3358
	.string	"AUD_get_elapsed_usec_in"
	.long	0x33c1
	.string	"AUD_write"
	.long	0x341b
	.string	"AUD_read"
	.long	0x3475
	.string	"AUD_get_buffer_size_out"
	.long	0x34a7
	.string	"AUD_set_active_out"
	.long	0x3530
	.string	"AUD_set_active_in"
	.long	0x3bce
	.string	"AUD_help"
	.long	0x3ee2
	.string	"AUD_register_card"
	.long	0x3f2b
	.string	"AUD_remove_card"
	.long	0x3f5a
	.string	"AUD_init"
	.long	0x4024
	.string	"AUD_add_capture"
	.long	0x4199
	.string	"AUD_del_capture"
	.long	0x425c
	.string	"nb_drives"
	.long	0x4282
	.string	"drives_table"
	.long	0x432a
	.string	"nominal_volume"
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
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
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB93-.Ltext0
	.quad	.LBE93-.Ltext0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB121-.Ltext0
	.quad	.LBE121-.Ltext0
	.quad	.LBB123-.Ltext0
	.quad	.LBE123-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB125-.Ltext0
	.quad	.LBE125-.Ltext0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB127-.Ltext0
	.quad	.LBE127-.Ltext0
	.quad	.LBB142-.Ltext0
	.quad	.LBE142-.Ltext0
	.quad	.LBB138-.Ltext0
	.quad	.LBE138-.Ltext0
	.quad	.LBB128-.Ltext0
	.quad	.LBE128-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB149-.Ltext0
	.quad	.LBE149-.Ltext0
	.quad	.LBB155-.Ltext0
	.quad	.LBE155-.Ltext0
	.quad	.LBB151-.Ltext0
	.quad	.LBE151-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB189-.Ltext0
	.quad	.LBE189-.Ltext0
	.quad	.LBB201-.Ltext0
	.quad	.LBE201-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB191-.Ltext0
	.quad	.LBE191-.Ltext0
	.quad	.LBB203-.Ltext0
	.quad	.LBE203-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB193-.Ltext0
	.quad	.LBE193-.Ltext0
	.quad	.LBB209-.Ltext0
	.quad	.LBE209-.Ltext0
	.quad	.LBB205-.Ltext0
	.quad	.LBE205-.Ltext0
	.quad	.LBB194-.Ltext0
	.quad	.LBE194-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB210-.Ltext0
	.quad	.LBE210-.Ltext0
	.quad	.LBB212-.Ltext0
	.quad	.LBE212-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB213-.Ltext0
	.quad	.LBE213-.Ltext0
	.quad	.LBB214-.Ltext0
	.quad	.LBE214-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB217-.Ltext0
	.quad	.LBE217-.Ltext0
	.quad	.LBB259-.Ltext0
	.quad	.LBE259-.Ltext0
	.quad	.LBB250-.Ltext0
	.quad	.LBE250-.Ltext0
	.quad	.LBB228-.Ltext0
	.quad	.LBE228-.Ltext0
	.quad	.LBB219-.Ltext0
	.quad	.LBE219-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB220-.Ltext0
	.quad	.LBE220-.Ltext0
	.quad	.LBB260-.Ltext0
	.quad	.LBE260-.Ltext0
	.quad	.LBB251-.Ltext0
	.quad	.LBE251-.Ltext0
	.quad	.LBB229-.Ltext0
	.quad	.LBE229-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB222-.Ltext0
	.quad	.LBE222-.Ltext0
	.quad	.LBB244-.Ltext0
	.quad	.LBE244-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB223-.Ltext0
	.quad	.LBE223-.Ltext0
	.quad	.LBB245-.Ltext0
	.quad	.LBE245-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB224-.Ltext0
	.quad	.LBE224-.Ltext0
	.quad	.LBB246-.Ltext0
	.quad	.LBE246-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB226-.Ltext0
	.quad	.LBE226-.Ltext0
	.quad	.LBB248-.Ltext0
	.quad	.LBE248-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB231-.Ltext0
	.quad	.LBE231-.Ltext0
	.quad	.LBB262-.Ltext0
	.quad	.LBE262-.Ltext0
	.quad	.LBB233-.Ltext0
	.quad	.LBE233-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB234-.Ltext0
	.quad	.LBE234-.Ltext0
	.quad	.LBB263-.Ltext0
	.quad	.LBE263-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB235-.Ltext0
	.quad	.LBE235-.Ltext0
	.quad	.LBB264-.Ltext0
	.quad	.LBE264-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB236-.Ltext0
	.quad	.LBE236-.Ltext0
	.quad	.LBB265-.Ltext0
	.quad	.LBE265-.Ltext0
	.quad	.LBB239-.Ltext0
	.quad	.LBE239-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB237-.Ltext0
	.quad	.LBE237-.Ltext0
	.quad	.LBB238-.Ltext0
	.quad	.LBE238-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB255-.Ltext0
	.quad	.LBE255-.Ltext0
	.quad	.LBB257-.Ltext0
	.quad	.LBE257-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB266-.Ltext0
	.quad	.LBE266-.Ltext0
	.quad	.LBB270-.Ltext0
	.quad	.LBE270-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB267-.Ltext0
	.quad	.LBE267-.Ltext0
	.quad	.LBB269-.Ltext0
	.quad	.LBE269-.Ltext0
	.quad	.LBB268-.Ltext0
	.quad	.LBE268-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB272-.Ltext0
	.quad	.LBE272-.Ltext0
	.quad	.LBB282-.Ltext0
	.quad	.LBE282-.Ltext0
	.quad	.LBB276-.Ltext0
	.quad	.LBE276-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB274-.Ltext0
	.quad	.LBE274-.Ltext0
	.quad	.LBB284-.Ltext0
	.quad	.LBE284-.Ltext0
	.quad	.LBB280-.Ltext0
	.quad	.LBE280-.Ltext0
	.quad	.LBB278-.Ltext0
	.quad	.LBE278-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB287-.Ltext0
	.quad	.LBE287-.Ltext0
	.quad	.LBB288-.Ltext0
	.quad	.LBE288-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB289-.Ltext0
	.quad	.LBE289-.Ltext0
	.quad	.LBB293-.Ltext0
	.quad	.LBE293-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB291-.Ltext0
	.quad	.LBE291-.Ltext0
	.quad	.LBB294-.Ltext0
	.quad	.LBE294-.Ltext0
	.quad	.LBB292-.Ltext0
	.quad	.LBE292-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB296-.Ltext0
	.quad	.LBE296-.Ltext0
	.quad	.LBB305-.Ltext0
	.quad	.LBE305-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB297-.Ltext0
	.quad	.LBE297-.Ltext0
	.quad	.LBB311-.Ltext0
	.quad	.LBE311-.Ltext0
	.quad	.LBB310-.Ltext0
	.quad	.LBE310-.Ltext0
	.quad	.LBB309-.Ltext0
	.quad	.LBE309-.Ltext0
	.quad	.LBB306-.Ltext0
	.quad	.LBE306-.Ltext0
	.quad	.LBB303-.Ltext0
	.quad	.LBE303-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB312-.Ltext0
	.quad	.LBE312-.Ltext0
	.quad	.LBB316-.Ltext0
	.quad	.LBE316-.Ltext0
	.quad	.LBB315-.Ltext0
	.quad	.LBE315-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB313-.Ltext0
	.quad	.LBE313-.Ltext0
	.quad	.LBB314-.Ltext0
	.quad	.LBE314-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF237:
	.string	"atoi"
.LASF209:
	.string	"defaultp"
.LASF149:
	.string	"swap_endianness"
.LASF129:
	.string	"t_sample"
.LASF9:
	.string	"size_t"
.LASF88:
	.string	"capture"
.LASF176:
	.string	"wpos"
.LASF263:
	.string	"total"
.LASF300:
	.string	"sw_name"
.LASF12:
	.string	"int32_t"
.LASF26:
	.string	"_IO_save_end"
.LASF302:
	.string	"err2"
.LASF303:
	.string	"err3"
.LASF167:
	.string	"write"
.LASF281:
	.string	"audio_pcm_hw_del_sw_out"
.LASF197:
	.string	"settings"
.LASF19:
	.string	"_IO_write_base"
.LASF380:
	.string	"AUD_add_capture"
.LASF145:
	.string	"sign"
.LASF367:
	.string	"running"
.LASF141:
	.string	"audio_callback"
.LASF224:
	.string	"state"
.LASF229:
	.string	"qemu_prefix"
.LASF35:
	.string	"_lock"
.LASF132:
	.string	"AUD_OPT_FMT"
.LASF278:
	.string	"audio_pcm_sw_alloc_resources_out"
.LASF331:
	.string	"AUD_init_time_stamp_in"
.LASF61:
	.string	"drv_opaque"
.LASF289:
	.string	"audio_pcm_hw_alloc_resources_out"
.LASF304:
	.string	"audio_pcm_hw_add_out"
.LASF24:
	.string	"_IO_save_base"
.LASF355:
	.string	"to_write"
.LASF216:
	.string	"cond"
.LASF213:
	.string	"AUD_log"
.LASF99:
	.string	"callback"
.LASF32:
	.string	"_cur_column"
.LASF374:
	.string	"AUD_init"
.LASF311:
	.string	"cur_ts"
.LASF365:
	.string	"audio_init_nb_voices_in"
.LASF111:
	.string	"old_ts"
.LASF112:
	.string	"QEMUClock"
.LASF42:
	.string	"_mode"
.LASF212:
	.string	"audio_audfmt_to_string"
.LASF225:
	.string	"intp"
.LASF144:
	.string	"bits"
.LASF137:
	.string	"valp"
.LASF359:
	.string	"audio_pp_nb_voices"
.LASF136:
	.string	"audio_option"
.LASF95:
	.string	"total_hw_samples_mixed"
.LASF368:
	.string	"audio_atexit"
.LASF75:
	.string	"AUD_FMT_S16"
.LASF156:
	.string	"pending_disable"
.LASF238:
	.string	"__nptr"
.LASF2:
	.string	"long int"
.LASF125:
	.string	"unit"
.LASF248:
	.string	"noop_conv"
.LASF267:
	.string	"smin"
.LASF273:
	.string	"dead"
.LASF113:
	.string	"VMChangeStateEntry"
.LASF52:
	.string	"_IO_marker"
.LASF207:
	.string	"audio_get_conf_str"
.LASF142:
	.string	"opaque"
.LASF284:
	.string	"audio_pcm_hw_find_any_out"
.LASF147:
	.string	"shift"
.LASF115:
	.string	"IF_IDE"
.LASF164:
	.string	"init_out"
.LASF68:
	.string	"BlockDriverState"
.LASF328:
	.string	"audio_pcm_hw_find_specific_in"
.LASF325:
	.string	"AUD_open_in"
.LASF294:
	.string	"callback_opaque"
.LASF243:
	.string	"audio_validate_settings"
.LASF230:
	.string	"__res"
.LASF255:
	.string	"hw_cap"
.LASF382:
	.string	"audio_pcm_capture_find_specific"
.LASF193:
	.string	"cap_listhead"
.LASF363:
	.string	"max_voices"
.LASF7:
	.string	"signed char"
.LASF45:
	.string	"_IO_FILE"
.LASF77:
	.string	"AUD_FMT_S32"
.LASF108:
	.string	"QEMUSoundCard"
.LASF130:
	.string	"f_sample"
.LASF146:
	.string	"align"
.LASF401:
	.string	"audio_options"
.LASF279:
	.string	"audio_pcm_sw_fini_out"
.LASF6:
	.string	"unsigned char"
.LASF312:
	.string	"audio_pcm_sw_init_in"
.LASF250:
	.string	"audio_notify_capture"
.LASF383:
	.string	"AUD_del_capture"
.LASF157:
	.string	"rpos"
.LASF324:
	.string	"audio_close_in"
.LASF73:
	.string	"AUD_FMT_S8"
.LASF234:
	.string	"__FUNCTION__"
.LASF381:
	.string	"cb_opaque"
.LASF295:
	.string	"callback_fn"
.LASF44:
	.string	"__gnuc_va_list"
.LASF240:
	.string	"envname"
.LASF390:
	.string	"drives_table"
.LASF194:
	.string	"fixed_settings"
.LASF329:
	.string	"audio_pcm_hw_add_sw_in"
.LASF5:
	.string	"char"
.LASF298:
	.string	"mixed"
.LASF162:
	.string	"pcm_ops"
.LASF268:
	.string	"audio_pcm_hw_find_min_out"
.LASF288:
	.string	"err1"
.LASF51:
	.string	"_IO_lock_t"
.LASF69:
	.string	"QEMUFile"
.LASF334:
	.string	"bytes"
.LASF109:
	.string	"audio"
.LASF373:
	.string	"AUD_remove_card"
.LASF175:
	.string	"HWVoiceIn"
.LASF72:
	.string	"AUD_FMT_U8"
.LASF16:
	.string	"_IO_read_ptr"
.LASF185:
	.string	"max_voices_in"
.LASF81:
	.string	"endianness"
.LASF48:
	.string	"fp_offset"
.LASF55:
	.string	"_pos"
.LASF384:
	.string	"stdin"
.LASF403:
	.string	"audio/audio.c"
.LASF134:
	.string	"AUD_OPT_BOOL"
.LASF378:
	.string	"__s1_len"
.LASF174:
	.string	"sw_in_listhead"
.LASF105:
	.string	"clip"
.LASF27:
	.string	"_markers"
.LASF218:
	.string	"audio_calloc"
.LASF160:
	.string	"samples"
.LASF337:
	.string	"AUD_set_active_out"
.LASF277:
	.string	"audio_bits_to_index"
.LASF257:
	.string	"audio_pcm_hw_get_live_in"
.LASF85:
	.string	"audcnotification_e"
.LASF391:
	.string	"mixeng_conv"
.LASF118:
	.string	"IF_PFLASH"
.LASF222:
	.string	"prefix"
.LASF94:
	.string	"rate"
.LASF122:
	.string	"DriveInfo"
.LASF191:
	.string	"hw_in_listhead"
.LASF67:
	.string	"nb_hw_voices_in"
.LASF215:
	.string	"funcname"
.LASF317:
	.string	"audio_pcm_hw_gc_in"
.LASF308:
	.string	"AUD_init_time_stamp_out"
.LASF360:
	.string	"AUD_help"
.LASF155:
	.string	"enabled"
.LASF189:
	.string	"cb_listhead"
.LASF182:
	.string	"fini"
.LASF186:
	.string	"voice_size_out"
.LASF333:
	.string	"AUD_write"
.LASF161:
	.string	"sw_head"
.LASF227:
	.string	"fmtp"
.LASF0:
	.string	"long unsigned int"
.LASF102:
	.string	"cb_head"
.LASF97:
	.string	"empty"
.LASF121:
	.string	"BlockInterfaceType"
.LASF128:
	.string	"st_sample_t"
.LASF30:
	.string	"_flags2"
.LASF133:
	.string	"AUD_OPT_STR"
.LASF206:
	.string	"ldebug"
.LASF18:
	.string	"_IO_read_base"
.LASF221:
	.string	"audio_print_options"
.LASF50:
	.string	"reg_save_area"
.LASF249:
	.string	"audio_capture_maybe_changed"
.LASF208:
	.string	"defval"
.LASF246:
	.string	"audio_pcm_init_info"
.LASF320:
	.string	"audio_pcm_hw_find_any_enabled_in"
.LASF96:
	.string	"active"
.LASF43:
	.string	"_unused2"
.LASF82:
	.string	"audsettings_t"
.LASF71:
	.string	"audio_callback_fn_t"
.LASF340:
	.string	"AUD_set_active_in"
.LASF260:
	.string	"swlim"
.LASF332:
	.string	"AUD_get_elapsed_usec_in"
.LASF354:
	.string	"till_end_of_hw"
.LASF233:
	.string	"preflen"
.LASF31:
	.string	"_old_offset"
.LASF150:
	.string	"SWVoiceCap"
.LASF272:
	.string	"hwsamples"
.LASF210:
	.string	"AUD_vlog"
.LASF199:
	.string	"fixed_out"
.LASF244:
	.string	"invalid"
.LASF371:
	.string	"version_id"
.LASF377:
	.string	"found"
.LASF286:
	.string	"audio_pcm_hw_add_new_out"
.LASF235:
	.string	"audio_get_conf_int"
.LASF344:
	.string	"played"
.LASF196:
	.string	"greedy"
.LASF231:
	.string	"audio_process_options"
.LASF299:
	.string	"audio_pcm_create_voice_pair_out"
.LASF3:
	.string	"long long int"
.LASF119:
	.string	"IF_MTD"
.LASF259:
	.string	"audio_pcm_sw_read"
.LASF396:
	.string	"wav_audio_driver"
.LASF86:
	.string	"audio_capture_ops"
.LASF120:
	.string	"IF_SD"
.LASF21:
	.string	"_IO_write_end"
.LASF135:
	.string	"audio_option_tag_e"
.LASF66:
	.string	"nb_hw_voices_out"
.LASF321:
	.string	"audio_pcm_hw_add_new_in"
.LASF226:
	.string	"strp"
.LASF47:
	.string	"gp_offset"
.LASF357:
	.string	"audio_run_capture"
.LASF290:
	.string	"audio_close_out"
.LASF335:
	.string	"AUD_read"
.LASF349:
	.string	"captured"
.LASF90:
	.string	"SWVoiceOut"
.LASF74:
	.string	"AUD_FMT_U16"
.LASF370:
	.string	"audio_load"
.LASF296:
	.string	"old_sw"
.LASF346:
	.string	"cleanup_required"
.LASF172:
	.string	"read"
.LASF22:
	.string	"_IO_buf_base"
.LASF262:
	.string	"osamp"
.LASF126:
	.string	"mute"
.LASF389:
	.string	"nb_drives"
.LASF53:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF168:
	.string	"ctl_out"
.LASF232:
	.string	"optname"
.LASF219:
	.string	"nmemb"
.LASF402:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF293:
	.string	"AUD_open_out"
.LASF180:
	.string	"options"
.LASF336:
	.string	"AUD_get_buffer_size_out"
.LASF261:
	.string	"isamp"
.LASF252:
	.string	"audio_detach_capture"
.LASF138:
	.string	"descr"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF83:
	.string	"AUD_CNOTIFY_ENABLE"
.LASF54:
	.string	"_sbuf"
.LASF323:
	.string	"AUD_close_in"
.LASF291:
	.string	"AUD_close_out"
.LASF339:
	.string	"nb_active"
.LASF395:
	.string	"sdl_audio_driver"
.LASF178:
	.string	"conv_buf"
.LASF319:
	.string	"audio_pcm_hw_find_any_in"
.LASF313:
	.string	"audio_pcm_sw_alloc_resources_in"
.LASF184:
	.string	"max_voices_out"
.LASF49:
	.string	"overflow_arg_area"
.LASF93:
	.string	"ratio"
.LASF393:
	.string	"no_audio_driver"
.LASF80:
	.string	"nchannels"
.LASF15:
	.string	"_flags"
.LASF375:
	.string	"done"
.LASF211:
	.string	"dolog"
.LASF398:
	.string	"drvtab"
.LASF358:
	.string	"to_capture"
.LASF239:
	.string	"audio_get_conf_fmt"
.LASF76:
	.string	"AUD_FMT_U32"
.LASF264:
	.string	"audio_pcm_sw_get_rpos_in"
.LASF153:
	.string	"sw_cap_listhead"
.LASF338:
	.string	"temp_sw"
.LASF124:
	.string	"type"
.LASF275:
	.string	"blck"
.LASF392:
	.string	"mixeng_clip"
.LASF314:
	.string	"audio_pcm_sw_fini_in"
.LASF171:
	.string	"run_in"
.LASF70:
	.string	"QEMUTimer"
.LASF165:
	.string	"fini_out"
.LASF341:
	.string	"audio_get_free"
.LASF192:
	.string	"hw_out_listhead"
.LASF36:
	.string	"_offset"
.LASF91:
	.string	"info"
.LASF92:
	.string	"conv"
.LASF65:
	.string	"cap_head"
.LASF280:
	.string	"audio_pcm_sw_free_resources_out"
.LASF148:
	.string	"bytes_per_second"
.LASF348:
	.string	"audio_run_in"
.LASF87:
	.string	"notify"
.LASF372:
	.string	"AUD_register_card"
.LASF203:
	.string	"log_to_monitor"
.LASF220:
	.string	"size"
.LASF351:
	.string	"audio_get_avail"
.LASF274:
	.string	"left"
.LASF14:
	.string	"long long unsigned int"
.LASF309:
	.string	"AUD_get_elapsed_usec_out"
.LASF89:
	.string	"destroy"
.LASF364:
	.string	"voice_size"
.LASF57:
	.string	"uint16_t"
.LASF258:
	.string	"live"
.LASF10:
	.string	"__off_t"
.LASF342:
	.string	"audio_timer"
.LASF28:
	.string	"_chain"
.LASF127:
	.string	"volume_t"
.LASF84:
	.string	"AUD_CNOTIFY_DISABLE"
.LASF366:
	.string	"audio_vm_change_state_handler"
.LASF310:
	.string	"delta"
.LASF131:
	.string	"AUD_OPT_INT"
.LASF241:
	.string	"audio_string_to_audfmt"
.LASF283:
	.string	"audio_pcm_hw_free_resources_out"
.LASF330:
	.string	"AUD_is_active_in"
.LASF223:
	.string	"uprefix"
.LASF385:
	.string	"stdout"
.LASF103:
	.string	"SWVoiceIn"
.LASF322:
	.string	"audio_pcm_hw_alloc_resources_in"
.LASF307:
	.string	"AUD_is_active_out"
.LASF387:
	.string	"vm_clock"
.LASF63:
	.string	"hw_head_in"
.LASF201:
	.string	"period"
.LASF242:
	.string	"audio_print_settings"
.LASF110:
	.string	"QEMUAudioTimeStamp"
.LASF20:
	.string	"_IO_write_ptr"
.LASF195:
	.string	"nb_voices"
.LASF25:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_shortbuf"
.LASF236:
	.string	"strval"
.LASF117:
	.string	"IF_FLOPPY"
.LASF104:
	.string	"total_hw_samples_acquired"
.LASF170:
	.string	"fini_in"
.LASF78:
	.string	"audfmt_e"
.LASF397:
	.string	"nominal_volume"
.LASF151:
	.string	"sw_out_listhead"
.LASF11:
	.string	"__off64_t"
.LASF181:
	.string	"init"
.LASF269:
	.string	"nb_livep"
.LASF404:
	.string	"/home/remco/Projects/Argos/src"
.LASF163:
	.string	"audio_pcm_ops"
.LASF214:
	.string	"audio_bug"
.LASF297:
	.string	"fail"
.LASF23:
	.string	"_IO_buf_end"
.LASF56:
	.string	"va_list"
.LASF187:
	.string	"voice_size_in"
.LASF62:
	.string	"card_head"
.LASF98:
	.string	"name"
.LASF352:
	.string	"audio_capture_mix_and_clear"
.LASF266:
	.string	"nb_live"
.LASF318:
	.string	"audio_pcm_hw_free_resources_in"
.LASF114:
	.string	"vm_change_state_entry"
.LASF386:
	.string	"stderr"
.LASF376:
	.string	"drvname"
.LASF8:
	.string	"short int"
.LASF287:
	.string	"err0"
.LASF177:
	.string	"total_samples_captured"
.LASF59:
	.string	"uint64_t"
.LASF179:
	.string	"audio_driver"
.LASF139:
	.string	"overriddenp"
.LASF159:
	.string	"mix_buf"
.LASF106:
	.string	"le_next"
.LASF247:
	.string	"audio_pcm_info_clear_buf"
.LASF276:
	.string	"audio_pcm_sw_init_out"
.LASF33:
	.string	"_vtable_offset"
.LASF270:
	.string	"audio_pcm_hw_get_live_out"
.LASF116:
	.string	"IF_SCSI"
.LASF205:
	.string	"lsbindex"
.LASF154:
	.string	"HWVoiceOut"
.LASF202:
	.string	"plive"
.LASF46:
	.string	"__va_list_tag"
.LASF326:
	.string	"audio_pcm_create_voice_pair_in"
.LASF245:
	.string	"audio_pcm_info_eq"
.LASF107:
	.string	"le_prev"
.LASF140:
	.string	"overridden"
.LASF253:
	.string	"was_active"
.LASF183:
	.string	"can_be_default"
.LASF198:
	.string	"ticks"
.LASF271:
	.string	"audio_pcm_sw_write"
.LASF379:
	.string	"__s2_len"
.LASF254:
	.string	"audio_attach_capture"
.LASF143:
	.string	"audio_pcm_info"
.LASF173:
	.string	"ctl_in"
.LASF356:
	.string	"written"
.LASF388:
	.string	"ticks_per_sec"
.LASF315:
	.string	"audio_pcm_sw_free_resources_in"
.LASF256:
	.string	"audio_pcm_hw_find_min_in"
.LASF251:
	.string	"audio_recalc_and_notify_capture"
.LASF17:
	.string	"_IO_read_end"
.LASF327:
	.string	"audio_pcm_hw_add_in"
.LASF292:
	.string	"card"
.LASF58:
	.string	"uint32_t"
.LASF343:
	.string	"audio_run_out"
.LASF29:
	.string	"_fileno"
.LASF228:
	.string	"audio_alloc_prefix"
.LASF345:
	.string	"free"
.LASF347:
	.string	"prev_rpos"
.LASF79:
	.string	"freq"
.LASF4:
	.string	"short unsigned int"
.LASF200:
	.string	"fixed_in"
.LASF64:
	.string	"hw_head_out"
.LASF362:
	.string	"audio_init_nb_voices_out"
.LASF217:
	.string	"shown"
.LASF166:
	.string	"run_out"
.LASF204:
	.string	"popcount"
.LASF158:
	.string	"ts_helper"
.LASF100:
	.string	"entries"
.LASF190:
	.string	"card_listhead"
.LASF301:
	.string	"hw_as"
.LASF13:
	.string	"int64_t"
.LASF152:
	.string	"lh_first"
.LASF369:
	.string	"audio_save"
.LASF316:
	.string	"audio_pcm_hw_del_sw_in"
.LASF361:
	.string	"audio_driver_init"
.LASF394:
	.string	"oss_audio_driver"
.LASF399:
	.string	"conf"
.LASF101:
	.string	"CaptureVoiceOut"
.LASF306:
	.string	"audio_pcm_hw_add_sw_out"
.LASF169:
	.string	"init_in"
.LASF350:
	.string	"avail"
.LASF353:
	.string	"rpos2"
.LASF305:
	.string	"audio_pcm_hw_find_specific_out"
.LASF282:
	.string	"audio_pcm_hw_gc_out"
.LASF400:
	.string	"glob_audio_state"
.LASF123:
	.string	"bdrv"
.LASF285:
	.string	"audio_pcm_hw_find_any_enabled_out"
.LASF188:
	.string	"capture_callback"
.LASF60:
	.string	"AudioState"
.LASF265:
	.string	"audio_pcm_hw_get_live_out2"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
