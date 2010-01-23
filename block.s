	.file	"block.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl path_is_absolute
	.type	path_is_absolute, @function
path_is_absolute:
.LFB99:
	.file 1 "block.c"
	.loc 1 63 0
	pushq	%rbx
.LCFI0:
	.loc 1 70 0
	movl	$58, %esi
	.loc 1 63 0
	movq	%rdi, %rbx
	.loc 1 70 0
	call	strchr
	.loc 1 72 0
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	cmovne	%rdx, %rbx
	.loc 1 78 0
	xorl	%eax, %eax
	cmpb	$47, (%rbx)
	.loc 1 80 0
	popq	%rbx
	.loc 1 78 0
	sete	%al
	.loc 1 80 0
	ret
.LFE99:
	.size	path_is_absolute, .-path_is_absolute
	.p2align 4,,15
.globl path_combine
	.type	path_combine, @function
path_combine:
.LFB100:
	.loc 1 88 0
	movq	%rbp, -32(%rsp)
.LCFI1:
	movq	%r12, -24(%rsp)
.LCFI2:
	movq	%rdx, %rbp
	movq	%r13, -16(%rsp)
.LCFI3:
	movq	%r14, -8(%rsp)
.LCFI4:
	movl	%esi, %r12d
	movq	%rbx, -40(%rsp)
.LCFI5:
	subq	$40, %rsp
.LCFI6:
	.loc 1 92 0
	testl	%esi, %esi
	.loc 1 88 0
	movq	%rdi, %r14
	movq	%rcx, %r13
	.loc 1 92 0
	jle	.L4
	.loc 1 94 0
	movq	%rcx, %rdi
	call	path_is_absolute
	testl	%eax, %eax
	jne	.L15
	.loc 1 97 0
	movq	%rbp, %rdi
	movl	$58, %esi
	call	strchr
	movq	%rax, %rbx
	.loc 1 99 0
	leaq	1(%rax), %rax
	.loc 1 102 0
	movq	%rbp, %rdi
	.loc 1 99 0
	testq	%rbx, %rbx
	.loc 1 102 0
	movl	$47, %esi
	.loc 1 99 0
	movq	%rbp, %rbx
	cmovne	%rax, %rbx
	.loc 1 102 0
	call	strrchr
	movq	%rax, %rdx
	.loc 1 112 0
	leaq	1(%rax), %rax
	.loc 1 120 0
	movq	%rbp, %rsi
	.loc 1 112 0
	testq	%rdx, %rdx
	movq	%rbp, %rdx
	.loc 1 120 0
	movq	%r14, %rdi
	.loc 1 112 0
	cmovne	%rax, %rdx
	.loc 1 118 0
	leal	-1(%r12), %eax
	.loc 1 116 0
	cmpq	%rbx, %rdx
	cmova	%rdx, %rbx
	.loc 1 117 0
	subl	%ebp, %ebx
	.loc 1 119 0
	cmpl	%ebx, %eax
	cmovl	%eax, %ebx
	.loc 1 120 0
	movslq	%ebx,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 121 0
	movb	$0, (%rbx,%r14)
	.loc 1 122 0
	movq	%r13, %rdx
	movl	%r12d, %esi
	movq	%r14, %rdi
	.loc 1 124 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	.loc 1 122 0
	jmp	pstrcat
	.p2align 4,,7
.L15:
	.loc 1 95 0
	movq	%r13, %rdx
	movl	%r12d, %esi
	movq	%r14, %rdi
	.loc 1 124 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	.loc 1 95 0
	jmp	pstrcpy
	.p2align 4,,7
.L4:
	.loc 1 124 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE100:
	.size	path_combine, .-path_combine
	.p2align 4,,15
	.type	bdrv_register, @function
bdrv_register:
.LFB101:
	.loc 1 128 0
	.loc 1 129 0
	cmpq	$0, 96(%rdi)
	jne	.L17
	.loc 1 131 0
	movq	$bdrv_aio_read_em, 96(%rdi)
	.loc 1 132 0
	movq	$bdrv_aio_write_em, 104(%rdi)
	.loc 1 133 0
	movq	$bdrv_aio_cancel_em, 112(%rdi)
	.loc 1 134 0
	movl	$48, 120(%rdi)
.L18:
	.loc 1 140 0
	movq	first_drv(%rip), %rax
	movq	%rax, 264(%rdi)
	.loc 1 141 0
	movq	%rdi, first_drv(%rip)
	ret
	.p2align 4,,7
.L17:
	.loc 1 135 0
	cmpq	$0, 32(%rdi)
	jne	.L18
	cmpq	$0, 136(%rdi)
	jne	.L18
	.loc 1 137 0
	movq	$bdrv_read_em, 32(%rdi)
	.loc 1 138 0
	movq	$bdrv_write_em, 40(%rdi)
	.loc 1 140 0
	movq	first_drv(%rip), %rax
	movq	%rax, 264(%rdi)
	.loc 1 141 0
	movq	%rdi, first_drv(%rip)
	ret
.LFE101:
	.size	bdrv_register, .-bdrv_register
	.p2align 4,,15
.globl bdrv_new
	.type	bdrv_new, @function
bdrv_new:
.LFB102:
	.loc 1 146 0
	pushq	%rbp
.LCFI7:
	movq	%rdi, %rbp
	.loc 1 149 0
	movl	$2752, %edi
	.loc 1 146 0
	pushq	%rbx
.LCFI8:
	subq	$8, %rsp
.LCFI9:
	.loc 1 149 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 151 0
	xorl	%eax, %eax
	.loc 1 150 0
	testq	%rbx, %rbx
	je	.L20
	.loc 1 152 0
	leaq	2708(%rbx), %rdi
	movq	%rbp, %rdx
	movl	$32, %esi
	call	pstrcpy
	.loc 1 153 0
	cmpb	$0, (%rbp)
	je	.L22
	.loc 1 157 0
	cmpq	$0, bdrv_first(%rip)
	.loc 1 155 0
	movl	$bdrv_first, %edx
	jmp	.L28
	.p2align 4,,7
.L29:
	.loc 1 157 0
	movq	(%rdx), %rax
	cmpq	$0, 2744(%rax)
	leaq	2744(%rax), %rdx
.L28:
	jne	.L29
	.loc 1 158 0
	movq	%rbx, (%rdx)
.L22:
	.loc 1 160 0
	movq	%rbx, %rax
.L20:
	.loc 1 161 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE102:
	.size	bdrv_new, .-bdrv_new
	.p2align 4,,15
.globl bdrv_find_format
	.type	bdrv_find_format, @function
bdrv_find_format:
.LFB103:
	.loc 1 164 0
	pushq	%rbp
.LCFI10:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI11:
	subq	$8, %rsp
.LCFI12:
	.loc 1 166 0
	movq	first_drv(%rip), %rbx
	jmp	.L38
	.p2align 4,,7
.L40:
.LBB2:
	.loc 1 167 0
	movq	(%rbx), %rdi
	movq	%rbp, %rsi
	call	strcmp
.LBE2:
	testl	%eax, %eax
	je	.L39
	.loc 1 166 0
	movq	264(%rbx), %rbx
.L38:
	testq	%rbx, %rbx
	jne	.L40
	.loc 1 171 0
	addq	$8, %rsp
	.loc 1 170 0
	xorl	%eax, %eax
	.loc 1 171 0
	popq	%rbx
	popq	%rbp
	ret
.L39:
	.loc 1 168 0
	movq	%rbx, %rax
	.loc 1 171 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE103:
	.size	bdrv_find_format, .-bdrv_find_format
	.p2align 4,,15
.globl bdrv_create
	.type	bdrv_create, @function
bdrv_create:
.LFB104:
	.loc 1 176 0
	.loc 1 177 0
	movq	56(%rdi), %rax
	.loc 1 176 0
	movq	%rsi, %r9
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	.loc 1 177 0
	testq	%rax, %rax
	je	.L43
	.loc 1 179 0
	movq	%r9, %rdi
	movq	%rax, %r11
	jmp	*%r11
.L43:
	.loc 1 180 0
	movl	$-95, %eax
	ret
.LFE104:
	.size	bdrv_create, .-bdrv_create
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/tmp/vl.XXXXXX"
	.text
	.p2align 4,,15
.globl get_tmp_filename
	.type	get_tmp_filename, @function
get_tmp_filename:
.LFB105:
	.loc 1 192 0
	pushq	%rbx
.LCFI13:
	.loc 1 195 0
	movl	$.LC0, %edx
	.loc 1 192 0
	movq	%rdi, %rbx
	.loc 1 195 0
	call	pstrcpy
	.loc 1 196 0
	movq	%rbx, %rdi
	call	mkstemp64
	.loc 1 197 0
	popq	%rbx
	.loc 1 196 0
	movl	%eax, %edi
	.loc 1 197 0
	jmp	close
.LFE105:
	.size	get_tmp_filename, .-get_tmp_filename
	.p2align 4,,15
	.type	find_protocol, @function
find_protocol:
.LFB106:
	.loc 1 222 0
	pushq	%r12
.LCFI14:
	.loc 1 233 0
	movl	$58, %esi
	.loc 1 222 0
	pushq	%rbp
.LCFI15:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI16:
	addq	$-128, %rsp
.LCFI17:
	.loc 1 233 0
	call	strchr
	.loc 1 234 0
	testq	%rax, %rax
	.loc 1 235 0
	movl	$bdrv_raw, %edx
	.loc 1 234 0
	je	.L45
	.loc 1 236 0
	movl	%eax, %ebx
	.loc 1 238 0
	movl	$127, %eax
	.loc 1 239 0
	movq	%rbp, %rsi
	.loc 1 236 0
	subl	%ebp, %ebx
	.loc 1 239 0
	movq	%rsp, %rdi
	movq	%rsp, %r12
	.loc 1 238 0
	cmpl	$128, %ebx
	cmovae	%eax, %ebx
	.loc 1 239 0
	movslq	%ebx,%rbx
	movq	%rbx, %rdx
	call	memcpy
	.loc 1 240 0
	movb	$0, (%rsp,%rbx)
	.loc 1 241 0
	movq	first_drv(%rip), %rbx
	jmp	.L56
	.p2align 4,,7
.L57:
	.loc 1 242 0
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L50
.LBB3:
	.loc 1 243 0
	movq	%r12, %rsi
	call	strcmp
.LBE3:
	testl	%eax, %eax
	je	.L55
.L50:
	.loc 1 241 0
	movq	264(%rbx), %rbx
.L56:
	testq	%rbx, %rbx
	jne	.L57
	.loc 1 246 0
	xorl	%edx, %edx
.L45:
	.loc 1 247 0
	subq	$-128, %rsp
	movq	%rdx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L55:
	subq	$-128, %rsp
	.loc 1 244 0
	movq	%rbx, %rdx
	.loc 1 247 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	movq	%rdx, %rax
	ret
.LFE106:
	.size	find_protocol, .-find_protocol
	.p2align 4,,15
.globl bdrv_getlength
	.type	bdrv_getlength, @function
bdrv_getlength:
.LFB121:
	.loc 1 708 0
	.loc 1 709 0
	movq	48(%rdi), %rdx
	.loc 1 711 0
	movq	$-123, %rax
	.loc 1 710 0
	testq	%rdx, %rdx
	je	.L58
	.loc 1 712 0
	movq	160(%rdx), %rax
	testq	%rax, %rax
	jne	.L60
	.loc 1 714 0
	movq	(%rdi), %rax
	salq	$9, %rax
	ret
.L58:
	.loc 1 717 0
	rep ; ret
	.p2align 4,,7
.L60:
	.loc 1 716 0
	movq	%rax, %r11
	jmp	*%r11
.LFE121:
	.size	bdrv_getlength, .-bdrv_getlength
	.p2align 4,,15
.globl bdrv_close
	.type	bdrv_close, @function
bdrv_close:
.LFB111:
	.loc 1 428 0
	pushq	%rbx
.LCFI18:
	.loc 1 429 0
	movq	48(%rdi), %rax
	.loc 1 428 0
	movq	%rdi, %rbx
	.loc 1 429 0
	testq	%rax, %rax
	je	.L61
	.loc 1 430 0
	movq	2640(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L65
.L63:
	.loc 1 432 0
	movq	%rbx, %rdi
	call	*48(%rax)
	.loc 1 433 0
	movq	56(%rbx), %rdi
	call	qemu_free
	.loc 1 444 0
	movq	32(%rbx), %rax
	.loc 1 439 0
	movq	$0, 56(%rbx)
	.loc 1 440 0
	movq	$0, 48(%rbx)
	.loc 1 443 0
	movl	$1, 2632(%rbx)
	.loc 1 444 0
	testq	%rax, %rax
	je	.L61
	.loc 1 445 0
	movq	40(%rbx), %rdi
	movq	%rax, %r11
	.loc 1 447 0
	popq	%rbx
	.loc 1 445 0
	jmp	*%r11
	.p2align 4,,7
.L61:
	.loc 1 447 0
	popq	%rbx
	ret
	.p2align 4,,7
.L65:
	.loc 1 431 0
	.p2align 4,,6
	call	bdrv_delete
	movq	48(%rbx), %rax
	.p2align 4,,6
	jmp	.L63
.LFE111:
	.size	bdrv_close, .-bdrv_close
	.p2align 4,,15
.globl bdrv_delete
	.type	bdrv_delete, @function
bdrv_delete:
.LFB112:
	.loc 1 450 0
	pushq	%rbx
.LCFI19:
	.loc 1 450 0
	movq	%rdi, %rbx
	.loc 1 452 0
	call	bdrv_close
	.loc 1 453 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE112:
	.size	bdrv_delete, .-bdrv_delete
	.p2align 4,,15
.globl bdrv_read
	.type	bdrv_read, @function
bdrv_read:
.LFB114:
	.loc 1 502 0
	movq	%rbx, -32(%rsp)
.LCFI20:
	movq	%r12, -16(%rsp)
.LCFI21:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI22:
	movq	%rbp, -24(%rsp)
.LCFI23:
	subq	$40, %rsp
.LCFI24:
	.loc 1 503 0
	movq	48(%rdi), %rbp
	.loc 1 502 0
	movq	%rdx, %r13
	movl	%ecx, %r12d
	.loc 1 506 0
	movl	$-123, %edx
	.loc 1 505 0
	testq	%rbp, %rbp
	je	.L67
	.loc 1 508 0
	testq	%rsi, %rsi
	je	.L78
.L69:
	.loc 1 516 0
	movq	136(%rbp), %rax
	testq	%rax, %rax
	jne	.L79
	.loc 1 530 0
	movq	32(%rbp), %r11
	movl	%r12d, %ecx
	movq	%r13, %rdx
	movq	%rbx, %rdi
	.loc 1 532 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 530 0
	jmp	*%r11
	.p2align 4,,7
.L78:
	.loc 1 508 0
	movl	64(%rdi), %eax
	testl	%eax, %eax
	setne	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setg	%al
	testl	%edx, %eax
	je	.L69
	.loc 1 509 0
	leaq	68(%rdi), %rsi
	movl	$512, %edx
	movq	%r13, %rdi
	.loc 1 512 0
	addq	$512, %r13
	.loc 1 509 0
	call	memcpy
	.loc 1 513 0
	decl	%r12d
	.loc 1 510 0
	movl	$1, %esi
	.loc 1 513 0
	jne	.L69
.LBB4:
	.loc 1 527 0
	xorl	%edx, %edx
	.p2align 4,,7
.L67:
.LBE4:
	.loc 1 532 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L79:
.LBB5:
	.loc 1 518 0
	movl	%r12d, %ebp
	.loc 1 519 0
	salq	$9, %rsi
	movq	%r13, %rdx
	.loc 1 518 0
	sall	$9, %ebp
	.loc 1 519 0
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	call	*%rax
	.loc 1 520 0
	testl	%eax, %eax
	.loc 1 521 0
	movl	%eax, %edx
	.loc 1 520 0
	js	.L67
	.loc 1 522 0
	cmpl	%ebp, %eax
	.loc 1 523 0
	movl	$-22, %edx
	.loc 1 522 0
	jne	.L67
	.loc 1 525 0
	mov	%ebp, %eax
	.loc 1 526 0
	incq	2672(%rbx)
	.loc 1 525 0
	addq	%rax, 2656(%rbx)
	.loc 1 527 0
	xorl	%edx, %edx
	jmp	.L67
.LBE5:
.LFE114:
	.size	bdrv_read, .-bdrv_read
	.p2align 4,,15
.globl bdrv_write
	.type	bdrv_write, @function
bdrv_write:
.LFB115:
	.loc 1 542 0
	movq	%rbx, -40(%rsp)
.LCFI25:
	movq	%r12, -24(%rsp)
.LCFI26:
	movq	%rdi, %rbx
	movq	%r13, -16(%rsp)
.LCFI27:
	movq	%r14, -8(%rsp)
.LCFI28:
	movq	%rsi, %r12
	movq	%rbp, -32(%rsp)
.LCFI29:
	subq	$40, %rsp
.LCFI30:
	.loc 1 543 0
	movq	48(%rdi), %rbp
	.loc 1 542 0
	movq	%rdx, %r14
	movl	%ecx, %r13d
	.loc 1 545 0
	movl	$-123, %edx
	.loc 1 544 0
	testq	%rbp, %rbp
	je	.L80
	.loc 1 546 0
	movl	8(%rdi), %ecx
	.loc 1 547 0
	movl	$-13, %edx
	.loc 1 546 0
	testl	%ecx, %ecx
	jne	.L80
	.loc 1 548 0
	testq	%rsi, %rsi
	je	.L90
.L83:
	.loc 1 551 0
	movq	144(%rbp), %rax
	testq	%rax, %rax
	jne	.L91
.L84:
	.loc 1 565 0
	movq	40(%rbp), %r11
	movl	%r13d, %ecx
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	.loc 1 567 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	.loc 1 565 0
	jmp	*%r11
	.p2align 4,,7
.L90:
	.loc 1 548 0
	movl	64(%rdi), %edx
	testl	%edx, %edx
	setne	%dl
	xorl	%eax, %eax
	testl	%r13d, %r13d
	setg	%al
	testl	%edx, %eax
	je	.L83
	.loc 1 549 0
	leaq	68(%rdi), %rdi
	movl	$512, %edx
	movq	%r14, %rsi
	call	memcpy
	.loc 1 551 0
	movq	144(%rbp), %rax
	testq	%rax, %rax
	je	.L84
	.p2align 4,,7
.L91:
.LBB6:
	.loc 1 553 0
	movl	%r13d, %ebp
	.loc 1 554 0
	salq	$9, %r12
	movq	%r14, %rdx
	.loc 1 553 0
	sall	$9, %ebp
	.loc 1 554 0
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	call	*%rax
	.loc 1 555 0
	testl	%eax, %eax
	.loc 1 556 0
	movl	%eax, %edx
	.loc 1 555 0
	js	.L80
	.loc 1 557 0
	cmpl	%ebp, %eax
	.loc 1 558 0
	movl	$-5, %edx
	.loc 1 557 0
	jne	.L80
	.loc 1 560 0
	mov	%ebp, %eax
	.loc 1 561 0
	incq	2680(%rbx)
	.loc 1 560 0
	addq	%rax, 2664(%rbx)
	.loc 1 562 0
	xorl	%edx, %edx
.L80:
.LBE6:
	.loc 1 567 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE115:
	.size	bdrv_write, .-bdrv_write
	.p2align 4,,15
.globl bdrv_commit
	.type	bdrv_commit, @function
bdrv_commit:
.LFB113:
	.loc 1 458 0
	pushq	%r15
.LCFI31:
	.loc 1 465 0
	movl	$-123, %eax
	.loc 1 458 0
	pushq	%r14
.LCFI32:
	pushq	%r13
.LCFI33:
	pushq	%r12
.LCFI34:
	pushq	%rbp
.LCFI35:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI36:
	subq	$536, %rsp
.LCFI37:
	.loc 1 459 0
	movq	48(%rdi), %r14
	.loc 1 464 0
	testq	%r14, %r14
	je	.L92
	.loc 1 467 0
	movl	8(%rdi), %esi
	.loc 1 468 0
	movl	$-13, %eax
	.loc 1 467 0
	testl	%esi, %esi
	jne	.L92
	.loc 1 471 0
	cmpq	$0, 2640(%rdi)
	.loc 1 472 0
	movb	$-95, %al
	.loc 1 471 0
	je	.L92
	.loc 1 475 0
	call	bdrv_getlength
	movq	%rax, %r13
	.loc 1 476 0
	xorl	%ebx, %ebx
	.loc 1 475 0
	sarq	$9, %r13
	.loc 1 476 0
	cmpq	%r13, %rbx
	jge	.L109
	leaq	16(%rsp), %r15
	.p2align 4,,7
.L106:
	.loc 1 477 0
	leaq	12(%rsp), %rcx
	movl	$65536, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*72(%r14)
	testl	%eax, %eax
	je	.L98
	.loc 1 478 0
	xorl	%r12d, %r12d
	cmpl	12(%rsp), %r12d
	jge	.L96
	.loc 1 479 0
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	bdrv_read
	testl	%eax, %eax
	jne	.L113
.L115:
	.loc 1 483 0
	movq	2640(%rbp), %rdi
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	call	bdrv_write
	testl	%eax, %eax
	jne	.L113
	.loc 1 486 0
	incq	%rbx
	.loc 1 478 0
	incl	%r12d
	cmpl	12(%rsp), %r12d
	jge	.L96
	.loc 1 479 0
	movl	$1, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	bdrv_read
	testl	%eax, %eax
	je	.L115
.L113:
	.loc 1 497 0
	addq	$536, %rsp
	.loc 1 484 0
	movl	$-5, %eax
	.loc 1 497 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L98:
	.loc 1 489 0
	movslq	12(%rsp),%rax
	addq	%rax, %rbx
.L96:
	.loc 1 476 0
	cmpq	%r13, %rbx
	jl	.L106
.L109:
	.loc 1 493 0
	movq	88(%r14), %rdx
	.loc 1 496 0
	xorl	%eax, %eax
	.loc 1 493 0
	testq	%rdx, %rdx
	jne	.L116
.L92:
	.loc 1 497 0
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L116:
	.loc 1 494 0
	movq	%rbp, %rdi
	call	*%rdx
	.loc 1 497 0
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE113:
	.size	bdrv_commit, .-bdrv_commit
	.p2align 4,,15
.globl bdrv_pread
	.type	bdrv_pread, @function
bdrv_pread:
.LFB118:
	.loc 1 666 0
	movq	%rbp, -40(%rsp)
.LCFI38:
	movq	%r12, -32(%rsp)
.LCFI39:
	movq	%rsi, %rbp
	movq	%r14, -16(%rsp)
.LCFI40:
	movq	%rbx, -48(%rsp)
.LCFI41:
	movq	%rdx, %r14
	movq	%r13, -24(%rsp)
.LCFI42:
	movq	%r15, -8(%rsp)
.LCFI43:
	subq	$600, %rsp
.LCFI44:
	.loc 1 666 0
	movq	%rdi, 24(%rsp)
	.loc 1 667 0
	movq	48(%rdi), %rdx
	.loc 1 666 0
	movl	%ecx, %r12d
	.loc 1 670 0
	movl	$-123, %eax
	.loc 1 669 0
	testq	%rdx, %rdx
	je	.L117
	.loc 1 671 0
	movq	136(%rdx), %rax
	testq	%rax, %rax
	jne	.L119
.LBB7:
.LBB8:
	.loc 1 578 0
	movl	%esi, %ebx
	.loc 1 581 0
	movq	%rsi, %r13
.LBE8:
	.loc 1 571 0
	movq	%r14, 16(%rsp)
.LBB9:
	.loc 1 578 0
	negl	%ebx
	.loc 1 576 0
	movl	%ecx, %r15d
	.loc 1 578 0
	andl	$511, %ebx
	.loc 1 580 0
	cmpl	%ecx, %ebx
	cmovg	%ecx, %ebx
	.loc 1 581 0
	sarq	$9, %r13
	.loc 1 582 0
	testl	%ebx, %ebx
	jle	.L121
	.loc 1 583 0
	leaq	32(%rsp), %r15
	movl	$1, %ecx
	movq	%r13, %rsi
	movq	%r15, %rdx
	call	bdrv_read
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L123
	.loc 1 585 0
	andl	$511, %ebp
	movslq	%ebx,%rax
	movq	%r14, %rdi
	leaq	(%r15,%rbp), %rsi
	movq	%rax, %rdx
	.loc 1 587 0
	movl	%r12d, %r15d
	.loc 1 585 0
	movq	%rax, 8(%rsp)
	call	memcpy
	.loc 1 587 0
	subl	%ebx, %r15d
	movl	%r12d, %edx
	je	.L123
	.loc 1 590 0
	addq	8(%rsp), %r14
	.loc 1 589 0
	incq	%r13
	.loc 1 590 0
	movq	%r14, 16(%rsp)
	.p2align 4,,7
.L121:
	.loc 1 594 0
	movl	%r15d, %ebx
	sarl	$9, %ebx
	.loc 1 595 0
	testl	%ebx, %ebx
	jle	.L125
	.loc 1 596 0
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rdi
	movl	%ebx, %ecx
	movq	%r13, %rsi
	call	bdrv_read
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L123
	.loc 1 598 0
	movslq	%ebx,%rax
	.loc 1 599 0
	sall	$9, %ebx
	.loc 1 598 0
	addq	%rax, %r13
	.loc 1 600 0
	movslq	%ebx,%rax
	addq	%rax, 16(%rsp)
	.loc 1 601 0
	subl	%ebx, %r15d
.L125:
	.loc 1 605 0
	testl	%r15d, %r15d
	jle	.L127
	.loc 1 606 0
	leaq	32(%rsp), %rbx
	movq	24(%rsp), %rdi
	movl	$1, %ecx
	movq	%r13, %rsi
	movq	%rbx, %rdx
	call	bdrv_read
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L123
	.loc 1 608 0
	movq	16(%rsp), %rdi
	movslq	%r15d,%rdx
	movq	%rbx, %rsi
	call	memcpy
.L127:
	.loc 1 609 0
	movl	%r12d, %edx
.L123:
.LBE9:
.LBE7:
	.loc 1 571 0
	movl	%edx, %eax
.L117:
	.loc 1 674 0
	movq	552(%rsp), %rbx
	movq	560(%rsp), %rbp
	movq	568(%rsp), %r12
	movq	576(%rsp), %r13
	movq	584(%rsp), %r14
	movq	592(%rsp), %r15
	addq	$600, %rsp
	ret
	.p2align 4,,7
.L119:
	.loc 1 673 0
	movq	24(%rsp), %rdi
	movq	%r14, %rdx
	call	*%rax
	jmp	.L117
.LFE118:
	.size	bdrv_pread, .-bdrv_pread
	.section	.rodata.str1.1
.LC1:
	.string	""
.LC2:
	.string	"/dev/cdrom"
	.text
	.p2align 4,,15
.globl bdrv_open2
	.type	bdrv_open2, @function
bdrv_open2:
.LFB110:
	.loc 1 326 0
	movq	%rbp, -40(%rsp)
.LCFI45:
	movq	%r13, -24(%rsp)
.LCFI46:
	movq	%rdi, %rbp
	movq	%r15, -8(%rsp)
.LCFI47:
	movq	%rbx, -48(%rsp)
.LCFI48:
	movq	%rsi, %r15
	movq	%r12, -32(%rsp)
.LCFI49:
	movq	%r14, -16(%rsp)
.LCFI50:
	subq	$10456, %rsp
.LCFI51:
	.loc 1 326 0
	movl	%edx, 4(%rsp)
	.loc 1 331 0
	movl	$0, 8(%rdi)
	.loc 1 326 0
	movq	%rcx, %r13
	.loc 1 332 0
	movl	$0, 2628(%rdi)
	.loc 1 333 0
	movl	$0, 20(%rdi)
	.loc 1 335 0
	testb	$8, 4(%rsp)
	je	.L130
.LBB10:
	.loc 1 343 0
	movl	$.LC1, %edi
	call	bdrv_new
	.loc 1 344 0
	testq	%rax, %rax
	.loc 1 343 0
	movq	%rax, %rbx
	.loc 1 345 0
	movl	$-12, %edx
	.loc 1 344 0
	je	.L129
	.loc 1 347 0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	bdrv_open
	testl	%eax, %eax
	js	.L170
	.loc 1 351 0
	movq	%rbx, %rdi
	.loc 1 354 0
	leaq	6304(%rsp), %r14
	.loc 1 351 0
	call	bdrv_getlength
	.loc 1 352 0
	movq	%rbx, %rdi
	.loc 1 355 0
	leaq	2208(%rsp), %rbx
	.loc 1 351 0
	movq	%rax, %r12
	.loc 1 352 0
	call	bdrv_delete
	.loc 1 354 0
	movl	$4096, %esi
	movq	%r14, %rdi
	.loc 1 351 0
	sarq	$9, %r12
	.loc 1 354 0
	call	get_tmp_filename
	.loc 1 355 0
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	realpath
	.loc 1 356 0
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r14, %rsi
	movl	$bdrv_qcow2, %edi
	call	bdrv_create
	testl	%eax, %eax
	.loc 1 358 0
	movl	$-1, %edx
	.loc 1 356 0
	js	.L129
	.loc 1 360 0
	movq	%r14, %r15
	.loc 1 361 0
	movl	$1, 2628(%rbp)
.L130:
.LBE10:
	.loc 1 364 0
	leaq	580(%rbp), %rdi
	movq	%r15, %rdx
	movl	$1024, %esi
	call	pstrcpy
	.loc 1 365 0
	testb	$16, 4(%rsp)
	jne	.L171
	.loc 1 370 0
	testq	%r13, %r13
	je	.L172
.L136:
	.loc 1 376 0
	movq	%r13, 48(%rbp)
	.loc 1 377 0
	movslq	8(%r13),%rdi
	call	qemu_mallocz
	.loc 1 378 0
	testq	%rax, %rax
	.loc 1 377 0
	movq	%rax, 56(%rbp)
	.loc 1 378 0
	je	.L173
	.loc 1 382 0
	testb	$16, 4(%rsp)
	jne	.L153
.L179:
	.loc 1 383 0
	movl	4(%rsp), %edx
	.loc 1 386 0
	movq	%r15, %rsi
	movq	%rbp, %rdi
	.loc 1 383 0
	andl	$32, %edx
	orl	$2, %edx
	.loc 1 386 0
	call	*24(%r13)
	.loc 1 387 0
	cmpl	$-13, %eax
	.loc 1 386 0
	movl	%eax, %ebx
	.loc 1 387 0
	je	.L174
.L155:
	.loc 1 391 0
	testl	%ebx, %ebx
	js	.L166
	.loc 1 397 0
	cmpq	$0, 160(%r13)
	jne	.L175
.L157:
	.loc 1 401 0
	movl	2628(%rbp), %edi
	testl	%edi, %edi
	jne	.L176
.L158:
	.loc 1 405 0
	cmpb	$0, 1604(%rbp)
	jne	.L177
.L159:
	.loc 1 421 0
	movq	32(%rbp), %rax
	.loc 1 420 0
	movl	$1, 2632(%rbp)
	.loc 1 421 0
	testq	%rax, %rax
	jne	.L178
.L163:
	.loc 1 424 0
	xorl	%edx, %edx
.L129:
	.loc 1 425 0
	movq	10408(%rsp), %rbx
	movq	10416(%rsp), %rbp
	movl	%edx, %eax
	movq	10424(%rsp), %r12
	movq	10432(%rsp), %r13
	movq	10440(%rsp), %r14
	movq	10448(%rsp), %r15
	addq	$10456, %rsp
	ret
	.p2align 4,,7
.L173:
	.loc 1 378 0
	movl	8(%r13), %r8d
	.loc 1 379 0
	movl	$-1, %edx
	.loc 1 378 0
	testl	%r8d, %r8d
	jg	.L129
	.loc 1 382 0
	testb	$16, 4(%rsp)
	je	.L179
.L153:
	.loc 1 385 0
	movl	4(%rsp), %edx
	.loc 1 386 0
	movq	%r15, %rsi
	movq	%rbp, %rdi
	.loc 1 385 0
	andl	$-25, %edx
	.loc 1 386 0
	call	*24(%r13)
	.loc 1 387 0
	cmpl	$-13, %eax
	.loc 1 386 0
	movl	%eax, %ebx
	.loc 1 387 0
	jne	.L155
.L174:
	testb	$16, 4(%rsp)
	je	.L180
.L166:
	.loc 1 392 0
	movq	56(%rbp), %rdi
	call	qemu_free
	.loc 1 395 0
	movl	%ebx, %edx
	.loc 1 393 0
	movq	$0, 56(%rbp)
	.loc 1 394 0
	movq	$0, 48(%rbp)
	jmp	.L129
	.p2align 4,,7
.L171:
	.loc 1 366 0
	movq	%r15, %rdi
	call	find_protocol
	.loc 1 368 0
	movl	$-2, %edx
	.loc 1 366 0
	movq	%rax, %r13
.L169:
	.loc 1 372 0
	testq	%r13, %r13
	jne	.L136
	jmp	.L129
	.p2align 4,,7
.L178:
	.loc 1 422 0
	movq	40(%rbp), %rdi
	.p2align 4,,3
	call	*%rax
	.p2align 4,,9
	jmp	.L163
.L180:
	.loc 1 388 0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	.p2align 4,,3
	call	*24(%r13)
	movl	%eax, %ebx
	.loc 1 389 0
	movl	$1, 8(%rbp)
	jmp	.L155
	.p2align 4,,7
.L177:
	.loc 1 407 0
	movl	$.LC1, %edi
	call	bdrv_new
	.loc 1 408 0
	testq	%rax, %rax
	.loc 1 407 0
	movq	%rax, 2640(%rbp)
	.loc 1 408 0
	je	.L161
	.loc 1 413 0
	leaq	2208(%rsp), %rbx
	leaq	1604(%rbp), %rcx
	movq	%r15, %rdx
	movl	$4096, %esi
	movq	%rbx, %rdi
	call	path_combine
	.loc 1 415 0
	movq	2640(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	call	bdrv_open
	testl	%eax, %eax
	jns	.L159
.L161:
	.loc 1 410 0
	movq	%rbp, %rdi
	call	bdrv_close
	.loc 1 411 0
	movl	$-12, %edx
	.p2align 4,,2
	jmp	.L129
	.p2align 4,,7
.L176:
	.loc 1 402 0
	movq	%r15, %rdi
	call	unlink
	.p2align 4,,4
	jmp	.L158
	.p2align 4,,7
.L175:
	.loc 1 398 0
	movq	%rbp, %rdi
	call	bdrv_getlength
	sarq	$9, %rax
	movq	%rax, (%rbp)
	.p2align 4,,2
	jmp	.L157
.L172:
.LBB11:
.LBB12:
	.loc 1 260 0
	xorl	%edx, %edx
	movl	$.LC2, %esi
	movq	%r15, %rdi
	call	strstart
	testl	%eax, %eax
	movl	$bdrv_host_device, %ecx
	je	.L181
.L139:
.LBE12:
.LBE11:
	.loc 1 252 0
	movq	%rcx, %r13
	.loc 1 373 0
	movl	$-1, %edx
	jmp	.L169
.L181:
.LBB13:
.LBB14:
.LBB15:
.LBB16:
	.file 2 "/usr/include/sys/stat.h"
	.loc 2 454 0
	leaq	16(%rsp), %rdx
.LBB17:
	.loc 2 455 0
	movq	%r15, %rsi
	movl	$1, %edi
	call	__xstat64
.LBE17:
.LBE16:
	.loc 2 454 0
	testl	%eax, %eax
	js	.L140
	movl	40(%rsp), %eax
	.loc 1 270 0
	movl	$bdrv_host_device, %ecx
	.loc 2 454 0
	andl	$61440, %eax
	cmpl	$8192, %eax
	sete	%dl
	cmpl	$24576, %eax
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L139
.L140:
.LBE15:
	.loc 1 275 0
	movq	%r15, %rdi
	call	find_protocol
	.loc 1 277 0
	movl	$bdrv_vvfat, %ecx
	.loc 1 275 0
	movq	%rax, %r13
	.loc 1 277 0
	cmpq	%rcx, %rax
	je	.L139
	.loc 1 280 0
	leaq	8(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	call	bdrv_file_open
	.loc 1 281 0
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.L139
	.loc 1 283 0
	movq	8(%rsp), %rdi
	leaq	160(%rsp), %rdx
	movw	$2048, %cx
	xorl	%esi, %esi
	call	bdrv_pread
	.loc 1 284 0
	movq	8(%rsp), %rdi
	.loc 1 283 0
	movl	%eax, %r12d
	.loc 1 284 0
	call	bdrv_delete
	.loc 1 286 0
	xorl	%ecx, %ecx
	.loc 1 285 0
	testl	%r12d, %r12d
	js	.L139
	.loc 1 290 0
	movq	first_drv(%rip), %rbx
	.loc 1 289 0
	xorl	%r14d, %r14d
	jmp	.L168
.L147:
	.loc 1 290 0
	movq	264(%rbx), %rbx
.L168:
	testq	%rbx, %rbx
	je	.L165
	.loc 1 291 0
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L147
	.loc 1 292 0
	movq	%r15, %rdx
	movl	%r12d, %esi
	leaq	160(%rsp), %rdi
	call	*%rax
	.loc 1 293 0
	cmpl	%r14d, %eax
	jle	.L147
	.loc 1 294 0
	movl	%eax, %r14d
	.loc 1 295 0
	movq	%rbx, %r13
	jmp	.L147
.L170:
.LBE14:
.LBE13:
.LBB18:
	.loc 1 348 0
	movq	%rbx, %rdi
	call	bdrv_delete
	.loc 1 349 0
	movl	$-1, %edx
	jmp	.L129
.L165:
.LBE18:
.LBB19:
.LBB20:
	.loc 1 298 0
	movq	%r13, %rcx
	.p2align 4,,2
	jmp	.L139
.LBE20:
.LBE19:
.LFE110:
	.size	bdrv_open2, .-bdrv_open2
	.p2align 4,,15
.globl bdrv_open
	.type	bdrv_open, @function
bdrv_open:
.LFB109:
	.loc 1 320 0
	.loc 1 321 0
	xorl	%ecx, %ecx
	jmp	bdrv_open2
.LFE109:
	.size	bdrv_open, .-bdrv_open
	.p2align 4,,15
.globl bdrv_file_open
	.type	bdrv_file_open, @function
bdrv_file_open:
.LFB108:
	.loc 1 303 0
	movq	%rbx, -32(%rsp)
.LCFI52:
	movq	%rbp, -24(%rsp)
.LCFI53:
	movl	%edx, %ebx
	movq	%r12, -16(%rsp)
.LCFI54:
	movq	%r13, -8(%rsp)
.LCFI55:
	subq	$40, %rsp
.LCFI56:
	.loc 1 303 0
	movq	%rdi, %r13
	.loc 1 307 0
	movl	$.LC1, %edi
	.loc 1 303 0
	movq	%rsi, %r12
	.loc 1 307 0
	call	bdrv_new
	movq	%rax, %rbp
	.loc 1 309 0
	movl	$-12, %eax
	.loc 1 308 0
	testq	%rbp, %rbp
	je	.L183
	.loc 1 310 0
	orl	$16, %ebx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	%ebx, %edx
	movq	%rbp, %rdi
	call	bdrv_open2
	.loc 1 311 0
	testl	%eax, %eax
	.loc 1 310 0
	movl	%eax, %ebx
	.loc 1 311 0
	js	.L186
	.loc 1 315 0
	movq	%rbp, (%r13)
	.loc 1 316 0
	xorl	%eax, %eax
.L183:
	.loc 1 317 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L186:
	.loc 1 312 0
	movq	%rbp, %rdi
	call	bdrv_delete
	.loc 1 313 0
	movl	%ebx, %eax
	.loc 1 317 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE108:
	.size	bdrv_file_open, .-bdrv_file_open
	.p2align 4,,15
.globl bdrv_pwrite
	.type	bdrv_pwrite, @function
bdrv_pwrite:
.LFB119:
	.loc 1 681 0
	movq	%rbp, -40(%rsp)
.LCFI57:
	movq	%r12, -32(%rsp)
.LCFI58:
	movq	%rsi, %rbp
	movq	%r13, -24(%rsp)
.LCFI59:
	movq	%rbx, -48(%rsp)
.LCFI60:
	movq	%rdi, %r13
	movq	%r14, -16(%rsp)
.LCFI61:
	movq	%r15, -8(%rsp)
.LCFI62:
	subq	$600, %rsp
.LCFI63:
	.loc 1 681 0
	movq	%rdx, 24(%rsp)
	.loc 1 682 0
	movq	48(%rdi), %rdx
	.loc 1 681 0
	movl	%ecx, %r12d
	.loc 1 685 0
	movl	$-123, %eax
	.loc 1 684 0
	testq	%rdx, %rdx
	je	.L187
	.loc 1 686 0
	movq	144(%rdx), %rax
	testq	%rax, %rax
	jne	.L189
.LBB21:
.LBB22:
	.loc 1 622 0
	movl	%esi, %ebx
.LBE22:
	.loc 1 615 0
	movq	24(%rsp), %rax
.LBB23:
	.loc 1 625 0
	movq	%rsi, %r14
	.loc 1 622 0
	negl	%ebx
	.loc 1 620 0
	movl	%ecx, %r15d
	.loc 1 622 0
	andl	$511, %ebx
	.loc 1 624 0
	cmpl	%ecx, %ebx
.LBE23:
	.loc 1 615 0
	movq	%rax, 16(%rsp)
.LBB24:
	.loc 1 624 0
	cmovg	%ecx, %ebx
	.loc 1 625 0
	sarq	$9, %r14
	.loc 1 626 0
	testl	%ebx, %ebx
	jle	.L191
	.loc 1 627 0
	leaq	32(%rsp), %r15
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%r15, %rdx
	call	bdrv_read
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L193
	.loc 1 629 0
	andl	$511, %ebp
	movq	24(%rsp), %rsi
	movslq	%ebx,%rax
	leaq	(%r15,%rbp), %rdi
	movq	%rax, %rdx
	movq	%rax, 8(%rsp)
	call	memcpy
	.loc 1 630 0
	movq	%r15, %rdx
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	bdrv_write
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L193
	.loc 1 633 0
	movl	%r12d, %r15d
	movl	%r12d, %edx
	subl	%ebx, %r15d
	je	.L193
	.loc 1 636 0
	movq	24(%rsp), %rax
	addq	8(%rsp), %rax
	.loc 1 635 0
	incq	%r14
	.loc 1 636 0
	movq	%rax, 16(%rsp)
	.p2align 4,,7
.L191:
	.loc 1 640 0
	movl	%r15d, %ebx
	sarl	$9, %ebx
	.loc 1 641 0
	testl	%ebx, %ebx
	jle	.L196
	.loc 1 642 0
	movq	16(%rsp), %rdx
	movl	%ebx, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	bdrv_write
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L193
	.loc 1 644 0
	movslq	%ebx,%rax
	.loc 1 645 0
	sall	$9, %ebx
	.loc 1 644 0
	addq	%rax, %r14
	.loc 1 646 0
	movslq	%ebx,%rax
	addq	%rax, 16(%rsp)
	.loc 1 647 0
	subl	%ebx, %r15d
.L196:
	.loc 1 651 0
	testl	%r15d, %r15d
	jle	.L198
	.loc 1 652 0
	leaq	32(%rsp), %rbx
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	call	bdrv_read
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L193
	.loc 1 654 0
	movq	16(%rsp), %rsi
	movslq	%r15d,%rdx
	movq	%rbx, %rdi
	call	memcpy
	.loc 1 655 0
	movq	%rbx, %rdx
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	bdrv_write
	testl	%eax, %eax
	movl	$-5, %edx
	js	.L193
.L198:
	.loc 1 657 0
	movl	%r12d, %edx
	.p2align 4,,7
.L193:
.LBE24:
.LBE21:
	.loc 1 615 0
	movl	%edx, %eax
.L187:
	.loc 1 689 0
	movq	552(%rsp), %rbx
	movq	560(%rsp), %rbp
	movq	568(%rsp), %r12
	movq	576(%rsp), %r13
	movq	584(%rsp), %r14
	movq	592(%rsp), %r15
	addq	$600, %rsp
	ret
	.p2align 4,,7
.L189:
	.loc 1 688 0
	movq	24(%rsp), %rdx
	call	*%rax
	jmp	.L187
.LFE119:
	.size	bdrv_pwrite, .-bdrv_pwrite
	.p2align 4,,15
.globl bdrv_truncate
	.type	bdrv_truncate, @function
bdrv_truncate:
.LFB120:
	.loc 1 695 0
	.loc 1 696 0
	movq	48(%rdi), %rdx
	.loc 1 698 0
	movl	$-123, %eax
	.loc 1 697 0
	testq	%rdx, %rdx
	je	.L201
	.loc 1 699 0
	movq	152(%rdx), %rdx
	.loc 1 700 0
	movl	$-95, %eax
	.loc 1 699 0
	testq	%rdx, %rdx
	je	.L201
	.loc 1 701 0
	movq	%rdx, %r11
	jmp	*%r11
.L201:
	.loc 1 702 0
	rep ; ret
.LFE120:
	.size	bdrv_truncate, .-bdrv_truncate
	.p2align 4,,15
.globl bdrv_get_geometry
	.type	bdrv_get_geometry, @function
bdrv_get_geometry:
.LFB122:
	.loc 1 721 0
	pushq	%rbx
.LCFI64:
	.loc 1 721 0
	movq	%rsi, %rbx
	.loc 1 723 0
	call	bdrv_getlength
	.loc 1 725 0
	movq	%rax, %rcx
	xorl	%edx, %edx
	sarq	$9, %rcx
	testq	%rax, %rax
	cmovns	%rcx, %rdx
	.loc 1 728 0
	movq	%rdx, (%rbx)
	popq	%rbx
	ret
.LFE122:
	.size	bdrv_get_geometry, .-bdrv_get_geometry
	.p2align 4,,15
.globl bdrv_set_boot_sector
	.type	bdrv_set_boot_sector, @function
bdrv_set_boot_sector:
.LFB123:
	.loc 1 733 0
	movq	%rbx, -32(%rsp)
.LCFI65:
	movq	%rbp, -24(%rsp)
.LCFI66:
	movl	%edx, %ebx
	movq	%r12, -16(%rsp)
.LCFI67:
	movq	%r13, -8(%rsp)
.LCFI68:
	.loc 1 736 0
	movl	$512, %ebp
	.loc 1 733 0
	subq	$40, %rsp
.LCFI69:
	.loc 1 736 0
	cmpl	$513, %edx
	.loc 1 733 0
	movq	%rdi, %r13
	.loc 1 736 0
	cmovge	%ebp, %ebx
	.loc 1 734 0
	movl	$1, 64(%rdi)
	.loc 1 737 0
	leaq	68(%rdi), %rdi
	movslq	%ebx,%r12
	.loc 1 738 0
	subl	%ebx, %ebp
	.loc 1 737 0
	movq	%r12, %rdx
	.loc 1 738 0
	leaq	68(%r12,%r13), %r12
	.loc 1 737 0
	call	memcpy
	.loc 1 738 0
	movslq	%ebp,%rdx
	movq	%r12, %rdi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	xorl	%esi, %esi
	movq	32(%rsp), %r13
	addq	$40, %rsp
	jmp	memset
.LFE123:
	.size	bdrv_set_boot_sector, .-bdrv_set_boot_sector
	.p2align 4,,15
.globl bdrv_set_geometry_hint
	.type	bdrv_set_geometry_hint, @function
bdrv_set_geometry_hint:
.LFB124:
	.loc 1 743 0
	.loc 1 744 0
	movl	%esi, 2688(%rdi)
	.loc 1 745 0
	movl	%edx, 2692(%rdi)
	.loc 1 746 0
	movl	%ecx, 2696(%rdi)
	ret
.LFE124:
	.size	bdrv_set_geometry_hint, .-bdrv_set_geometry_hint
	.p2align 4,,15
.globl bdrv_set_type_hint
	.type	bdrv_set_type_hint, @function
bdrv_set_type_hint:
.LFB125:
	.loc 1 750 0
	.loc 1 751 0
	movl	%esi, 2704(%rdi)
	.loc 1 752 0
	decl	%esi
	xorl	%eax, %eax
	cmpl	$1, %esi
	setbe	%al
	movl	%eax, 12(%rdi)
	ret
.LFE125:
	.size	bdrv_set_type_hint, .-bdrv_set_type_hint
	.p2align 4,,15
.globl bdrv_set_translation_hint
	.type	bdrv_set_translation_hint, @function
bdrv_set_translation_hint:
.LFB126:
	.loc 1 757 0
	.loc 1 758 0
	movl	%esi, 2700(%rdi)
	ret
.LFE126:
	.size	bdrv_set_translation_hint, .-bdrv_set_translation_hint
	.p2align 4,,15
.globl bdrv_get_geometry_hint
	.type	bdrv_get_geometry_hint, @function
bdrv_get_geometry_hint:
.LFB127:
	.loc 1 763 0
	.loc 1 764 0
	movl	2688(%rdi), %eax
	movl	%eax, (%rsi)
	.loc 1 765 0
	movl	2692(%rdi), %eax
	movl	%eax, (%rdx)
	.loc 1 766 0
	movl	2696(%rdi), %eax
	movl	%eax, (%rcx)
	ret
.LFE127:
	.size	bdrv_get_geometry_hint, .-bdrv_get_geometry_hint
	.p2align 4,,15
.globl bdrv_get_type_hint
	.type	bdrv_get_type_hint, @function
bdrv_get_type_hint:
.LFB128:
	.loc 1 770 0
	.loc 1 771 0
	movl	2704(%rdi), %eax
	.loc 1 772 0
	ret
.LFE128:
	.size	bdrv_get_type_hint, .-bdrv_get_type_hint
	.p2align 4,,15
.globl bdrv_get_translation_hint
	.type	bdrv_get_translation_hint, @function
bdrv_get_translation_hint:
.LFB129:
	.loc 1 775 0
	.loc 1 776 0
	movl	2700(%rdi), %eax
	.loc 1 777 0
	ret
.LFE129:
	.size	bdrv_get_translation_hint, .-bdrv_get_translation_hint
	.p2align 4,,15
.globl bdrv_is_removable
	.type	bdrv_is_removable, @function
bdrv_is_removable:
.LFB130:
	.loc 1 780 0
	.loc 1 781 0
	movl	12(%rdi), %eax
	.loc 1 782 0
	ret
.LFE130:
	.size	bdrv_is_removable, .-bdrv_is_removable
	.p2align 4,,15
.globl bdrv_is_read_only
	.type	bdrv_is_read_only, @function
bdrv_is_read_only:
.LFB131:
	.loc 1 785 0
	.loc 1 786 0
	movl	8(%rdi), %eax
	.loc 1 787 0
	ret
.LFE131:
	.size	bdrv_is_read_only, .-bdrv_is_read_only
	.p2align 4,,15
.globl bdrv_is_sg
	.type	bdrv_is_sg, @function
bdrv_is_sg:
.LFB132:
	.loc 1 790 0
	.loc 1 791 0
	movl	24(%rdi), %eax
	.loc 1 792 0
	ret
.LFE132:
	.size	bdrv_is_sg, .-bdrv_is_sg
	.p2align 4,,15
.globl bdrv_set_change_cb
	.type	bdrv_set_change_cb, @function
bdrv_set_change_cb:
.LFB133:
	.loc 1 797 0
	.loc 1 798 0
	movq	%rsi, 32(%rdi)
	.loc 1 799 0
	movq	%rdx, 40(%rdi)
	ret
.LFE133:
	.size	bdrv_set_change_cb, .-bdrv_set_change_cb
	.p2align 4,,15
.globl bdrv_is_encrypted
	.type	bdrv_is_encrypted, @function
bdrv_is_encrypted:
.LFB134:
	.loc 1 803 0
	.loc 1 804 0
	movq	2640(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L220
	movl	20(%rdx), %r9d
	.loc 1 805 0
	movl	$1, %eax
	.loc 1 804 0
	testl	%r9d, %r9d
	jne	.L219
.L220:
	.loc 1 806 0
	movl	20(%rdi), %eax
.L219:
	.loc 1 807 0
	rep ; ret
.LFE134:
	.size	bdrv_is_encrypted, .-bdrv_is_encrypted
	.p2align 4,,15
.globl bdrv_set_key
	.type	bdrv_set_key, @function
bdrv_set_key:
.LFB135:
	.loc 1 810 0
	movq	%rbx, -16(%rsp)
.LCFI70:
	movq	%rbp, -8(%rsp)
.LCFI71:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI72:
	.loc 1 812 0
	movq	2640(%rdi), %rdi
	.loc 1 810 0
	movq	%rsi, %rbp
	.loc 1 812 0
	testq	%rdi, %rdi
	je	.L229
	movl	20(%rdi), %r11d
	testl	%r11d, %r11d
	jne	.L231
.L229:
	movl	20(%rbx), %eax
	.loc 1 819 0
	testl	%eax, %eax
	je	.L227
.L230:
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.L227
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L227
	.loc 1 821 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	.loc 1 822 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	.loc 1 821 0
	movq	%rax, %r11
	.loc 1 822 0
	addq	$24, %rsp
	.loc 1 821 0
	jmp	*%r11
	.p2align 4,,7
.L227:
	.loc 1 820 0
	movl	$-1, %eax
.L221:
	.loc 1 822 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L231:
	.loc 1 813 0
	call	bdrv_set_key
	.loc 1 814 0
	testl	%eax, %eax
	js	.L221
	.loc 1 816 0
	movl	20(%rbx), %r10d
	.loc 1 817 0
	xorl	%eax, %eax
	.loc 1 816 0
	testl	%r10d, %r10d
	je	.L221
	.p2align 4,,3
	jmp	.L230
.LFE135:
	.size	bdrv_set_key, .-bdrv_set_key
	.p2align 4,,15
.globl bdrv_get_format
	.type	bdrv_get_format, @function
bdrv_get_format:
.LFB136:
	.loc 1 825 0
	.loc 1 826 0
	movq	48(%rdi), %rax
	.loc 1 825 0
	movq	%rsi, %r8
	movl	%edx, %ecx
	.loc 1 826 0
	testq	%rax, %rax
	jne	.L233
	.loc 1 827 0
	movb	$0, (%rsi)
	ret
	.p2align 4,,7
.L233:
	.loc 1 829 0
	movq	(%rax), %rdx
	movl	%ecx, %esi
	movq	%r8, %rdi
	jmp	pstrcpy
.LFE136:
	.size	bdrv_get_format, .-bdrv_get_format
	.p2align 4,,15
.globl bdrv_iterate_format
	.type	bdrv_iterate_format, @function
bdrv_iterate_format:
.LFB137:
	.loc 1 835 0
	pushq	%r12
.LCFI73:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI74:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI75:
	.loc 1 838 0
	movq	first_drv(%rip), %rbx
	jmp	.L242
	.p2align 4,,7
.L243:
	.loc 1 839 0
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	call	*%r12
	.loc 1 838 0
	movq	264(%rbx), %rbx
.L242:
	testq	%rbx, %rbx
	jne	.L243
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE137:
	.size	bdrv_iterate_format, .-bdrv_iterate_format
	.p2align 4,,15
.globl bdrv_find
	.type	bdrv_find, @function
bdrv_find:
.LFB138:
	.loc 1 844 0
	pushq	%rbp
.LCFI76:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI77:
	subq	$8, %rsp
.LCFI78:
	.loc 1 847 0
	movq	bdrv_first(%rip), %rbx
	jmp	.L252
	.p2align 4,,7
.L254:
.LBB25:
	.loc 1 848 0
	leaq	2708(%rbx), %rsi
	movq	%rbp, %rdi
	call	strcmp
.LBE25:
	testl	%eax, %eax
	je	.L253
	.loc 1 847 0
	movq	2744(%rbx), %rbx
.L252:
	testq	%rbx, %rbx
	jne	.L254
	.loc 1 852 0
	addq	$8, %rsp
	.loc 1 851 0
	xorl	%eax, %eax
	.loc 1 852 0
	popq	%rbx
	popq	%rbp
	ret
.L253:
	.loc 1 849 0
	movq	%rbx, %rax
	.loc 1 852 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE138:
	.size	bdrv_find, .-bdrv_find
	.p2align 4,,15
.globl bdrv_iterate
	.type	bdrv_iterate, @function
bdrv_iterate:
.LFB139:
	.loc 1 855 0
	pushq	%r12
.LCFI79:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI80:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI81:
	.loc 1 858 0
	movq	bdrv_first(%rip), %rbx
	jmp	.L262
	.p2align 4,,7
.L263:
	.loc 1 859 0
	leaq	2708(%rbx), %rsi
	movq	%rbp, %rdi
	call	*%r12
	.loc 1 858 0
	movq	2744(%rbx), %rbx
.L262:
	testq	%rbx, %rbx
	jne	.L263
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE139:
	.size	bdrv_iterate, .-bdrv_iterate
	.p2align 4,,15
.globl bdrv_get_device_name
	.type	bdrv_get_device_name, @function
bdrv_get_device_name:
.LFB140:
	.loc 1 864 0
	.loc 1 865 0
	leaq	2708(%rdi), %rax
	.loc 1 866 0
	ret
.LFE140:
	.size	bdrv_get_device_name, .-bdrv_get_device_name
	.p2align 4,,15
.globl bdrv_flush
	.type	bdrv_flush, @function
bdrv_flush:
.LFB141:
	.loc 1 869 0
	pushq	%rbx
.LCFI82:
	jmp	.L269
	.p2align 4,,7
.L266:
	.loc 1 872 0
	movq	2640(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L270
.L269:
	.loc 1 870 0
	movq	48(%rdi), %rax
	.loc 1 869 0
	movq	%rdi, %rbx
	.loc 1 870 0
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L266
	.loc 1 871 0
	call	*%rax
	.loc 1 872 0
	movq	2640(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L269
.L270:
	.loc 1 874 0
	popq	%rbx
	.p2align 4,,3
	ret
.LFE141:
	.size	bdrv_flush, .-bdrv_flush
	.section	.rodata.str1.1
.LC10:
	.string	" file="
.LC12:
	.string	" ro=%d"
.LC13:
	.string	" drv=%s"
.LC14:
	.string	" encrypted"
.LC16:
	.string	"\n"
.LC3:
	.string	"%s:"
.LC4:
	.string	" type="
.LC8:
	.string	" removable=%d"
.LC15:
	.string	" [not inserted]"
.LC9:
	.string	" locked=%d"
.LC5:
	.string	"hd"
.LC11:
	.string	" backing_file="
.LC6:
	.string	"cdrom"
.LC7:
	.string	"floppy"
	.text
	.p2align 4,,15
.globl bdrv_info
	.type	bdrv_info, @function
bdrv_info:
.LFB142:
	.loc 1 878 0
	pushq	%rbx
.LCFI83:
	.loc 1 881 0
	movq	bdrv_first(%rip), %rbx
	jmp	.L288
	.p2align 4,,7
.L294:
	.loc 1 900 0
	xorl	%eax, %eax
	movl	$.LC10, %edi
	call	term_printf
	.loc 1 901 0
	leaq	580(%rbx), %rdi
	call	term_print_filename
	.loc 1 902 0
	cmpb	$0, 1604(%rbx)
	jne	.L291
.L282:
	.loc 1 906 0
	movl	8(%rbx), %esi
	xorl	%eax, %eax
	movl	$.LC12, %edi
	call	term_printf
	.loc 1 907 0
	movq	48(%rbx), %rax
	movl	$.LC13, %edi
	movq	(%rax), %rsi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 908 0
	movl	20(%rbx), %eax
	.loc 1 909 0
	movl	$.LC14, %edi
	.loc 1 908 0
	testl	%eax, %eax
	jne	.L290
.L284:
	.loc 1 913 0
	movl	$.LC16, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 881 0
	movq	2744(%rbx), %rbx
.L288:
	testq	%rbx, %rbx
	je	.L287
	.loc 1 882 0
	leaq	2708(%rbx), %rsi
	xorl	%eax, %eax
	movl	$.LC3, %edi
	call	term_printf
	.loc 1 883 0
	xorl	%eax, %eax
	movl	$.LC4, %edi
	call	term_printf
	.loc 1 884 0
	movl	2704(%rbx), %eax
	cmpl	$1, %eax
	je	.L277
	jle	.L292
	cmpl	$2, %eax
	.p2align 4,,2
	je	.L278
.L275:
	.loc 1 895 0
	movl	12(%rbx), %esi
	xorl	%eax, %eax
	movl	$.LC8, %edi
	call	term_printf
	.loc 1 896 0
	movl	12(%rbx), %eax
	testl	%eax, %eax
	jne	.L293
.L280:
	.loc 1 899 0
	cmpq	$0, 48(%rbx)
	.loc 1 911 0
	movl	$.LC15, %edi
	.loc 1 899 0
	jne	.L294
.L290:
	.loc 1 911 0
	xorl	%eax, %eax
	call	term_printf
	jmp	.L284
	.p2align 4,,7
.L293:
	.loc 1 897 0
	movl	16(%rbx), %esi
	movl	$.LC9, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L280
	.p2align 4,,7
.L292:
	.loc 1 884 0
	testl	%eax, %eax
	jne	.L275
	.loc 1 886 0
	movl	$.LC5, %edi
	.p2align 4,,7
.L289:
	.loc 1 892 0
	xorl	%eax, %eax
	call	term_printf
	jmp	.L275
	.p2align 4,,7
.L291:
	.loc 1 903 0
	movl	$.LC11, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 904 0
	leaq	1604(%rbx), %rdi
	call	term_print_filename
	jmp	.L282
	.p2align 4,,7
.L277:
	.loc 1 889 0
	movl	$.LC6, %edi
	jmp	.L289
	.p2align 4,,7
.L287:
	.loc 1 881 0
	popq	%rbx
	.p2align 4,,5
	ret
	.p2align 4,,7
.L278:
	.loc 1 892 0
	movl	$.LC7, %edi
	jmp	.L289
.LFE142:
	.size	bdrv_info, .-bdrv_info
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"%s: rd_bytes=%lu wr_bytes=%lu rd_operations=%lu wr_operations=%lu\n"
	.text
	.p2align 4,,15
.globl bdrv_info_stats
	.type	bdrv_info_stats, @function
bdrv_info_stats:
.LFB143:
	.loc 1 919 0
	pushq	%rbx
.LCFI84:
	.loc 1 922 0
	movq	bdrv_first(%rip), %rbx
	jmp	.L302
	.p2align 4,,7
.L303:
	.loc 1 923 0
	movq	2664(%rbx), %rcx
	movq	2656(%rbx), %rdx
	leaq	2708(%rbx), %rsi
	movq	2680(%rbx), %r9
	movq	2672(%rbx), %r8
	movl	$.LC17, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 922 0
	movq	2744(%rbx), %rbx
.L302:
	testq	%rbx, %rbx
	jne	.L303
	popq	%rbx
	ret
.LFE143:
	.size	bdrv_info_stats, .-bdrv_info_stats
	.p2align 4,,15
.globl bdrv_get_backing_filename
	.type	bdrv_get_backing_filename, @function
bdrv_get_backing_filename:
.LFB144:
	.loc 1 938 0
	.loc 1 939 0
	cmpq	$0, 2640(%rdi)
	.loc 1 938 0
	movq	%rsi, %rax
	movl	%edx, %esi
	.loc 1 940 0
	movl	$.LC1, %edx
	.loc 1 939 0
	jne	.L308
	.loc 1 942 0
	movq	%rax, %rdi
	jmp	pstrcpy
	.p2align 4,,7
.L308:
	leaq	1604(%rdi), %rdx
	movq	%rax, %rdi
	jmp	pstrcpy
.LFE144:
	.size	bdrv_get_backing_filename, .-bdrv_get_backing_filename
	.p2align 4,,15
.globl bdrv_write_compressed
	.type	bdrv_write_compressed, @function
bdrv_write_compressed:
.LFB145:
	.loc 1 948 0
	.loc 1 949 0
	movq	48(%rdi), %r11
	.loc 1 951 0
	movl	$-123, %eax
	.loc 1 950 0
	testq	%r11, %r11
	je	.L309
	.loc 1 952 0
	movq	168(%r11), %r11
	.loc 1 953 0
	movl	$-95, %eax
	.loc 1 952 0
	testq	%r11, %r11
	je	.L309
	.loc 1 954 0
	jmp	*%r11
.L309:
	.loc 1 955 0
	rep ; ret
.LFE145:
	.size	bdrv_write_compressed, .-bdrv_write_compressed
	.p2align 4,,15
.globl bdrv_get_info
	.type	bdrv_get_info, @function
bdrv_get_info:
.LFB146:
	.loc 1 958 0
	.loc 1 959 0
	movq	48(%rdi), %rdx
	.loc 1 961 0
	movl	$-123, %eax
	.loc 1 960 0
	testq	%rdx, %rdx
	je	.L312
	.loc 1 962 0
	cmpq	$0, 208(%rdx)
	.loc 1 963 0
	movl	$-95, %eax
	.loc 1 962 0
	je	.L312
	.loc 1 964 0
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	.loc 1 965 0
	movq	208(%rdx), %r11
	jmp	*%r11
.L312:
	.loc 1 966 0
	rep ; ret
.LFE146:
	.size	bdrv_get_info, .-bdrv_get_info
	.p2align 4,,15
.globl bdrv_snapshot_create
	.type	bdrv_snapshot_create, @function
bdrv_snapshot_create:
.LFB147:
	.loc 1 973 0
	.loc 1 974 0
	movq	48(%rdi), %rdx
	.loc 1 976 0
	movl	$-123, %eax
	.loc 1 975 0
	testq	%rdx, %rdx
	je	.L315
	.loc 1 977 0
	movq	176(%rdx), %rdx
	.loc 1 978 0
	movl	$-95, %eax
	.loc 1 977 0
	testq	%rdx, %rdx
	je	.L315
	.loc 1 979 0
	movq	%rdx, %r11
	jmp	*%r11
.L315:
	.loc 1 980 0
	rep ; ret
.LFE147:
	.size	bdrv_snapshot_create, .-bdrv_snapshot_create
	.p2align 4,,15
.globl bdrv_snapshot_goto
	.type	bdrv_snapshot_goto, @function
bdrv_snapshot_goto:
.LFB148:
	.loc 1 984 0
	.loc 1 985 0
	movq	48(%rdi), %rdx
	.loc 1 987 0
	movl	$-123, %eax
	.loc 1 986 0
	testq	%rdx, %rdx
	je	.L318
	.loc 1 988 0
	movq	184(%rdx), %rdx
	.loc 1 989 0
	movl	$-95, %eax
	.loc 1 988 0
	testq	%rdx, %rdx
	je	.L318
	.loc 1 990 0
	movq	%rdx, %r11
	jmp	*%r11
.L318:
	.loc 1 991 0
	rep ; ret
.LFE148:
	.size	bdrv_snapshot_goto, .-bdrv_snapshot_goto
	.p2align 4,,15
.globl bdrv_snapshot_delete
	.type	bdrv_snapshot_delete, @function
bdrv_snapshot_delete:
.LFB149:
	.loc 1 994 0
	.loc 1 995 0
	movq	48(%rdi), %rdx
	.loc 1 997 0
	movl	$-123, %eax
	.loc 1 996 0
	testq	%rdx, %rdx
	je	.L321
	.loc 1 998 0
	movq	192(%rdx), %rdx
	.loc 1 999 0
	movl	$-95, %eax
	.loc 1 998 0
	testq	%rdx, %rdx
	je	.L321
	.loc 1 1000 0
	movq	%rdx, %r11
	jmp	*%r11
.L321:
	.loc 1 1001 0
	rep ; ret
.LFE149:
	.size	bdrv_snapshot_delete, .-bdrv_snapshot_delete
	.p2align 4,,15
.globl bdrv_snapshot_list
	.type	bdrv_snapshot_list, @function
bdrv_snapshot_list:
.LFB150:
	.loc 1 1005 0
	.loc 1 1006 0
	movq	48(%rdi), %rdx
	.loc 1 1008 0
	movl	$-123, %eax
	.loc 1 1007 0
	testq	%rdx, %rdx
	je	.L324
	.loc 1 1009 0
	movq	200(%rdx), %rdx
	.loc 1 1010 0
	movl	$-95, %eax
	.loc 1 1009 0
	testq	%rdx, %rdx
	je	.L324
	.loc 1 1011 0
	movq	%rdx, %r11
	jmp	*%r11
.L324:
	.loc 1 1012 0
	rep ; ret
.LFE150:
	.size	bdrv_snapshot_list, .-bdrv_snapshot_list
	.section	.rodata
	.type	suffixes.0, @object
	.size	suffixes.0, 4
suffixes.0:
	.ascii	"KMGT"
	.section	.rodata.str1.1
.LC18:
	.string	"%ld"
.LC19:
	.string	"%0.1f%c"
.LC20:
	.string	"%ld%c"
	.text
	.p2align 4,,15
.globl get_human_readable_size
	.type	get_human_readable_size, @function
get_human_readable_size:
.LFB151:
	.loc 1 1017 0
	.loc 1 1026 0
	xorl	%ecx, %ecx
	.loc 1 1022 0
	cmpq	$999, %rdx
	.loc 1 1017 0
	pushq	%rbx
.LCFI85:
	.loc 1 1017 0
	movq	%rdx, %r8
	movq	%rdi, %rbx
	.loc 1 1025 0
	movl	$1024, %edi
	.loc 1 1022 0
	jle	.L340
	.p2align 4,,7
.L336:
	.loc 1 1027 0
	leaq	(%rdi,%rdi,4), %rax
	addq	%rax, %rax
	cmpq	%r8, %rax
	jg	.L338
	.loc 1 1032 0
	imulq	$1000, %rdi, %rax
	cmpq	%r8, %rax
	setg	%dl
	cmpl	$3, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L339
	.loc 1 1026 0
	incl	%ecx
	.loc 1 1038 0
	salq	$10, %rdi
	.loc 1 1026 0
	cmpl	$3, %ecx
	jle	.L336
.L329:
	.loc 1 1042 0
	movq	%rbx, %rax
	popq	%rbx
	ret
	.p2align 4,,7
.L340:
	.loc 1 1023 0
	movq	%rdx, %rcx
	movq	%rbx, %rdi
	movslq	%esi,%rsi
	movl	$.LC18, %edx
	xorl	%eax, %eax
	call	snprintf
	.loc 1 1042 0
	movq	%rbx, %rax
	popq	%rbx
	ret
.L338:
	.loc 1 1028 0
	cvtsi2sdq	%rdi, %xmm1
	movslq	%ecx,%rax
	cvtsi2sdq	%r8, %xmm0
	movsbl	suffixes.0(%rax),%ecx
	movslq	%esi,%rsi
	movl	$.LC19, %edx
	movq	%rbx, %rdi
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	call	snprintf
	jmp	.L329
.L339:
	.loc 1 1033 0
	movq	%rdi, %rax
	movslq	%ecx,%r9
	movslq	%esi,%rsi
	sarq	%rax
	addq	%r8, %rax
	movsbl	suffixes.0(%r9),%r8d
	cqto
	idivq	%rdi
	movl	$.LC20, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	snprintf
	jmp	.L329
.LFE151:
	.size	get_human_readable_size, .-get_human_readable_size
	.section	.rodata.str1.1
.LC27:
	.string	"%Y-%m-%d %H:%M:%S"
.LC28:
	.string	"%02d:%02d:%02d.%03d"
.LC24:
	.string	"%-10s%-20s%7s%20s%15s"
.LC21:
	.string	"VM SIZE"
.LC22:
	.string	"TAG"
.LC23:
	.string	"ID"
.LC25:
	.string	"VM CLOCK"
.LC26:
	.string	"DATE"
	.text
	.p2align 4,,15
.globl bdrv_snapshot_dump
	.type	bdrv_snapshot_dump, @function
bdrv_snapshot_dump:
.LFB152:
	.loc 1 1045 0
	movq	%rbp, -40(%rsp)
.LCFI86:
	movq	%r13, -24(%rsp)
.LCFI87:
	movq	%rdx, %rbp
	movq	%r14, -16(%rsp)
.LCFI88:
	movq	%rbx, -48(%rsp)
.LCFI89:
	movq	%rdi, %r13
	movq	%r12, -32(%rsp)
.LCFI90:
	movq	%r15, -8(%rsp)
.LCFI91:
	subq	$536, %rsp
.LCFI92:
	.loc 1 1055 0
	testq	%rdx, %rdx
	.loc 1 1045 0
	movl	%esi, %r14d
	.loc 1 1055 0
	je	.L345
	.loc 1 1060 0
	mov	388(%rdx), %eax
	.loc 1 1066 0
	leaq	32(%rsp), %rbx
	leaq	24(%rsp), %rdi
	.loc 1 1067 0
	leaq	224(%rsp), %r12
	.loc 1 1071 0
	movabsq	$2361183241434822607, %r15
	.loc 1 1066 0
	movq	%rbx, %rsi
	.loc 1 1060 0
	movq	%rax, 24(%rsp)
	.loc 1 1066 0
	call	localtime_r
	.loc 1 1067 0
	movq	%rbx, %rcx
	movl	$.LC27, %edx
	movl	$128, %esi
	movq	%r12, %rdi
	.loc 1 1071 0
	leaq	96(%rsp), %rbx
	.loc 1 1067 0
	call	strftime
	.loc 1 1070 0
	movq	400(%rbp), %rdi
	movabsq	$19342813113834067, %rax
	.loc 1 1071 0
	movabsq	$-8608480567731124087, %r10
	movabsq	$4835703278458516699, %r11
	.loc 1 1070 0
	movq	%rdi, %rcx
	shrq	$9, %rcx
	mulq	%rcx
	movq	%rdx, %r9
	shrq	$11, %r9
	.loc 1 1071 0
	movq	%r9, %rax
	imulq	%r10
	leaq	(%rdx,%r9), %r8
	sarq	$5, %r8
	movq	%r8, %rax
	movq	%r8, %rsi
	imulq	%r10
	movq	%r8, %rax
	salq	$4, %rsi
	sarq	$63, %rax
	subq	%r8, %rsi
	salq	$2, %rsi
	addq	%r8, %rdx
	sarq	$5, %rdx
	subq	%rax, %rdx
	movabsq	$5247073869855161349, %rax
	movq	%rdx, %rcx
	salq	$4, %rcx
	subq	%rdx, %rcx
	imulq	%r9
	movq	%r11, %rax
	salq	$2, %rcx
	subl	%esi, %r9d
	subl	%ecx, %r8d
	movl	$128, %esi
	movq	%rdx, %r10
	mulq	%rdi
	movq	%r15, %rax
	sarq	$10, %r10
	movl	%r10d, %ecx
	movq	%rdx, %rdi
	movq	%rdx, %r11
	shrq	$21, %rdi
	shrq	$18, %r11
	mulq	%rdi
	movq	%rdx, %rdi
	movl	$.LC28, %edx
	shrq	$4, %rdi
	imulq	$1000, %rdi, %rax
	movq	%rbx, %rdi
	subq	%rax, %r11
	xorl	%eax, %eax
	movl	%r11d, (%rsp)
	call	snprintf
	.loc 1 1077 0
	mov	384(%rbp), %edx
	leaq	352(%rsp), %rdi
	movl	$128, %esi
	call	get_human_readable_size
	leaq	128(%rbp), %r8
	movslq	%r14d,%rsi
	movq	%rbx, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%rax, %r9
	movq	%rbp, %rcx
.L344:
	movq	%r13, %rdi
	movl	$.LC24, %edx
	xorl	%eax, %eax
	call	snprintf
	.loc 1 1085 0
	movq	%r13, %rax
	movq	488(%rsp), %rbx
	movq	496(%rsp), %rbp
	movq	504(%rsp), %r12
	movq	512(%rsp), %r13
	movq	520(%rsp), %r14
	movq	528(%rsp), %r15
	addq	$536, %rsp
	ret
	.p2align 4,,7
.L345:
	.loc 1 1056 0
	movslq	%esi,%rsi
	movl	$.LC21, %r9d
	movl	$.LC22, %r8d
	movl	$.LC23, %ecx
	movq	$.LC25, 8(%rsp)
	movq	$.LC26, (%rsp)
	jmp	.L344
.LFE152:
	.size	bdrv_snapshot_dump, .-bdrv_snapshot_dump
	.p2align 4,,15
.globl bdrv_aio_read
	.type	bdrv_aio_read, @function
bdrv_aio_read:
.LFB153:
	.loc 1 1094 0
	movq	%rbx, -48(%rsp)
.LCFI93:
	movq	%rbp, -40(%rsp)
.LCFI94:
	.loc 1 1099 0
	xorl	%eax, %eax
	.loc 1 1094 0
	movq	%r12, -32(%rsp)
.LCFI95:
	movq	%r14, -16(%rsp)
.LCFI96:
	movq	%rdi, %rbx
	movq	%r15, -8(%rsp)
.LCFI97:
	movq	%r13, -24(%rsp)
.LCFI98:
	subq	$56, %rsp
.LCFI99:
	.loc 1 1095 0
	movq	48(%rdi), %r13
	.loc 1 1094 0
	movq	%rdx, %r12
	movl	%ecx, %ebp
	movq	%r8, %r15
	movq	%r9, %r14
	.loc 1 1098 0
	testq	%r13, %r13
	je	.L346
	.loc 1 1102 0
	testq	%rsi, %rsi
	je	.L350
.L348:
	.loc 1 1109 0
	movq	%r12, %rdx
	movq	%r14, %r9
	movq	%r15, %r8
	movl	%ebp, %ecx
	movq	%rbx, %rdi
	call	*96(%r13)
	.loc 1 1111 0
	testq	%rax, %rax
	.loc 1 1109 0
	movq	%rax, %rdx
	.loc 1 1111 0
	je	.L349
	.loc 1 1113 0
	sall	$9, %ebp
	.loc 1 1114 0
	incq	2672(%rbx)
	.loc 1 1113 0
	mov	%ebp, %eax
	addq	%rax, 2656(%rbx)
.L349:
	.loc 1 1117 0
	movq	%rdx, %rax
.L346:
	.loc 1 1118 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L350:
	.loc 1 1102 0
	movl	64(%rdi), %eax
	testl	%eax, %eax
	setne	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setg	%al
	testl	%edx, %eax
	je	.L348
	.loc 1 1103 0
	leaq	68(%rdi), %rsi
	movl	$512, %edx
	movq	%r12, %rdi
	.loc 1 1105 0
	decl	%ebp
	.loc 1 1106 0
	addq	$512, %r12
	.loc 1 1103 0
	call	memcpy
	.loc 1 1104 0
	movl	$1, %esi
	jmp	.L348
.LFE153:
	.size	bdrv_aio_read, .-bdrv_aio_read
	.p2align 4,,15
.globl bdrv_aio_write
	.type	bdrv_aio_write, @function
bdrv_aio_write:
.LFB154:
	.loc 1 1123 0
	movq	%rbx, -48(%rsp)
.LCFI100:
	movq	%rbp, -40(%rsp)
.LCFI101:
	.loc 1 1128 0
	xorl	%eax, %eax
	.loc 1 1123 0
	movq	%r13, -24(%rsp)
.LCFI102:
	movq	%r14, -16(%rsp)
.LCFI103:
	movq	%rdi, %rbx
	movq	%r15, -8(%rsp)
.LCFI104:
	movq	%r12, -32(%rsp)
.LCFI105:
	subq	$56, %rsp
.LCFI106:
	.loc 1 1123 0
	movq	%rdx, (%rsp)
	.loc 1 1124 0
	movq	48(%rdi), %r12
	.loc 1 1123 0
	movq	%rsi, %r13
	movl	%ecx, %ebp
	movq	%r8, %r15
	movq	%r9, %r14
	.loc 1 1127 0
	testq	%r12, %r12
	je	.L351
	.loc 1 1129 0
	movl	8(%rdi), %edx
	testl	%edx, %edx
	jne	.L351
	.loc 1 1131 0
	testq	%rsi, %rsi
	je	.L356
.L354:
	.loc 1 1135 0
	movq	(%rsp), %rdx
	movq	%r14, %r9
	movq	%r15, %r8
	movl	%ebp, %ecx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	*104(%r12)
	.loc 1 1137 0
	testq	%rax, %rax
	.loc 1 1135 0
	movq	%rax, %rdx
	.loc 1 1137 0
	je	.L355
	.loc 1 1139 0
	sall	$9, %ebp
	.loc 1 1140 0
	incq	2680(%rbx)
	.loc 1 1139 0
	mov	%ebp, %eax
	addq	%rax, 2664(%rbx)
.L355:
	.loc 1 1143 0
	movq	%rdx, %rax
.L351:
	.loc 1 1144 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L356:
	.loc 1 1131 0
	movl	64(%rdi), %eax
	testl	%eax, %eax
	setne	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setg	%al
	testl	%edx, %eax
	je	.L354
	.loc 1 1132 0
	movq	(%rsp), %rsi
	leaq	68(%rdi), %rdi
	movl	$512, %edx
	call	memcpy
	jmp	.L354
.LFE154:
	.size	bdrv_aio_write, .-bdrv_aio_write
	.p2align 4,,15
.globl bdrv_aio_cancel
	.type	bdrv_aio_cancel, @function
bdrv_aio_cancel:
.LFB155:
	.loc 1 1147 0
	.loc 1 1148 0
	movq	(%rdi), %rax
	movq	48(%rax), %rax
	.loc 1 1150 0
	movq	112(%rax), %r11
	jmp	*%r11
.LFE155:
	.size	bdrv_aio_cancel, .-bdrv_aio_cancel
	.p2align 4,,15
.globl qemu_aio_release
	.type	qemu_aio_release, @function
qemu_aio_release:
.LFB165:
	.loc 1 1321 0
	.loc 1 1323 0
	movq	(%rdi), %rax
	movq	48(%rax), %rdx
	.loc 1 1324 0
	movq	256(%rdx), %rax
	movq	%rax, 24(%rdi)
	.loc 1 1325 0
	movq	%rdi, 256(%rdx)
	ret
.LFE165:
	.size	qemu_aio_release, .-qemu_aio_release
	.p2align 4,,15
	.type	bdrv_aio_bh_cb, @function
bdrv_aio_bh_cb:
.LFB156:
	.loc 1 1183 0
	pushq	%rbx
.LCFI107:
	.loc 1 1183 0
	movq	%rdi, %rbx
	.loc 1 1185 0
	movl	40(%rdi), %esi
	movq	16(%rdi), %rdi
	call	*8(%rbx)
	.loc 1 1186 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
.LFE156:
	.size	bdrv_aio_bh_cb, .-bdrv_aio_bh_cb
	.p2align 4,,15
.globl qemu_aio_get
	.type	qemu_aio_get, @function
qemu_aio_get:
.LFB164:
	.loc 1 1301 0
	movq	%rbx, -24(%rsp)
.LCFI108:
	movq	%rbp, -16(%rsp)
.LCFI109:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI110:
	subq	$24, %rsp
.LCFI111:
	.loc 1 1305 0
	movq	48(%rdi), %rcx
	.loc 1 1301 0
	movq	%rsi, %rbp
	movq	%rdx, %r12
	.loc 1 1306 0
	movq	256(%rcx), %rax
	testq	%rax, %rax
	je	.L361
	.loc 1 1307 0
	movq	%rax, %rdx
	.loc 1 1308 0
	movq	24(%rax), %rax
	movq	%rax, 256(%rcx)
.L362:
	.loc 1 1314 0
	movq	%rbx, (%rdx)
	.loc 1 1315 0
	movq	%rbp, 8(%rdx)
	.loc 1 1317 0
	movq	%rdx, %rax
	.loc 1 1316 0
	movq	%r12, 16(%rdx)
.L360:
	.loc 1 1318 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L361:
	.loc 1 1310 0
	movslq	120(%rcx),%rdi
	call	qemu_mallocz
	movq	%rax, %rdx
	.loc 1 1312 0
	xorl	%eax, %eax
	.loc 1 1311 0
	testq	%rdx, %rdx
	jne	.L362
	jmp	.L360
.LFE164:
	.size	qemu_aio_get, .-qemu_aio_get
	.p2align 4,,15
	.type	bdrv_aio_read_em, @function
bdrv_aio_read_em:
.LFB157:
	.loc 1 1192 0
	movq	%rbx, -40(%rsp)
.LCFI112:
	movq	%rbp, -32(%rsp)
.LCFI113:
	movq	%rdi, %rbp
	movq	%r12, -24(%rsp)
.LCFI114:
	movq	%r13, -16(%rsp)
.LCFI115:
	movq	%rdx, %r13
	movq	%r14, -8(%rsp)
.LCFI116:
	movq	%r9, %rdx
	subq	$40, %rsp
.LCFI117:
	.loc 1 1192 0
	movq	%rsi, %r14
	movq	%r8, %rsi
	movl	%ecx, %r12d
	.loc 1 1196 0
	call	qemu_aio_get
	.loc 1 1197 0
	cmpq	$0, 32(%rax)
	.loc 1 1196 0
	movq	%rax, %rbx
	.loc 1 1197 0
	je	.L366
.L365:
	.loc 1 1199 0
	movl	%r12d, %ecx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	bdrv_read
	.loc 1 1201 0
	movq	32(%rbx), %rdi
	.loc 1 1200 0
	movl	%eax, 40(%rbx)
	.loc 1 1201 0
	call	qemu_bh_schedule
	.loc 1 1203 0
	movq	%rbx, %rax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L366:
	.loc 1 1198 0
	movq	%rax, %rsi
	movl	$bdrv_aio_bh_cb, %edi
	call	qemu_bh_new
	movq	%rax, 32(%rbx)
	jmp	.L365
.LFE157:
	.size	bdrv_aio_read_em, .-bdrv_aio_read_em
	.p2align 4,,15
	.type	bdrv_aio_write_em, @function
bdrv_aio_write_em:
.LFB158:
	.loc 1 1208 0
	movq	%rbx, -40(%rsp)
.LCFI118:
	movq	%rbp, -32(%rsp)
.LCFI119:
	movq	%rdi, %rbp
	movq	%r12, -24(%rsp)
.LCFI120:
	movq	%r13, -16(%rsp)
.LCFI121:
	movq	%rdx, %r13
	movq	%r14, -8(%rsp)
.LCFI122:
	movq	%r9, %rdx
	subq	$40, %rsp
.LCFI123:
	.loc 1 1208 0
	movq	%rsi, %r14
	movq	%r8, %rsi
	movl	%ecx, %r12d
	.loc 1 1212 0
	call	qemu_aio_get
	.loc 1 1213 0
	cmpq	$0, 32(%rax)
	.loc 1 1212 0
	movq	%rax, %rbx
	.loc 1 1213 0
	je	.L369
.L368:
	.loc 1 1215 0
	movl	%r12d, %ecx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	bdrv_write
	.loc 1 1217 0
	movq	32(%rbx), %rdi
	.loc 1 1216 0
	movl	%eax, 40(%rbx)
	.loc 1 1217 0
	call	qemu_bh_schedule
	.loc 1 1219 0
	movq	%rbx, %rax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L369:
	.loc 1 1214 0
	movq	%rax, %rsi
	movl	$bdrv_aio_bh_cb, %edi
	call	qemu_bh_new
	movq	%rax, 32(%rbx)
	jmp	.L368
.LFE158:
	.size	bdrv_aio_write_em, .-bdrv_aio_write_em
	.p2align 4,,15
	.type	bdrv_aio_cancel_em, @function
bdrv_aio_cancel_em:
.LFB159:
	.loc 1 1222 0
	pushq	%rbx
.LCFI124:
	.loc 1 1222 0
	movq	%rdi, %rbx
	.loc 1 1224 0
	movq	32(%rdi), %rdi
	call	qemu_bh_cancel
	.loc 1 1225 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
.LFE159:
	.size	bdrv_aio_cancel_em, .-bdrv_aio_cancel_em
	.p2align 4,,15
	.type	bdrv_rw_em_cb, @function
bdrv_rw_em_cb:
.LFB160:
	.loc 1 1233 0
	.loc 1 1234 0
	movl	%esi, (%rdi)
	ret
.LFE160:
	.size	bdrv_rw_em_cb, .-bdrv_rw_em_cb
	.p2align 4,,15
	.type	bdrv_read_em, @function
bdrv_read_em:
.LFB161:
	.loc 1 1241 0
	movq	%rbx, -32(%rsp)
.LCFI125:
	movq	%r12, -24(%rsp)
.LCFI126:
	movl	%ecx, %ebx
	movq	%r13, -16(%rsp)
.LCFI127:
	movq	%r14, -8(%rsp)
.LCFI128:
	subq	$40, %rsp
.LCFI129:
	.loc 1 1241 0
	movq	%rdi, %r14
	movq	%rsi, %r13
	movq	%rdx, %r12
	.loc 1 1245 0
	movl	$2147483647, 4(%rsp)
	.loc 1 1246 0
	call	qemu_aio_wait_start
	.loc 1 1247 0
	leaq	4(%rsp), %r9
	movl	$bdrv_rw_em_cb, %r8d
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	bdrv_aio_read
	.loc 1 1249 0
	testq	%rax, %rax
	je	.L380
	.loc 1 1254 0
	cmpl	$2147483647, 4(%rsp)
	je	.L376
.L378:
	.loc 1 1256 0
	.p2align 4,,6
	call	qemu_aio_wait_end
	.loc 1 1257 0
	movl	4(%rsp), %eax
.L372:
	.loc 1 1258 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L376:
	.loc 1 1254 0
	call	qemu_aio_wait
	cmpl	$2147483647, 4(%rsp)
	jne	.L378
	.p2align 4,,5
	call	qemu_aio_wait
	cmpl	$2147483647, 4(%rsp)
	.p2align 4,,2
	je	.L376
	.p2align 4,,5
	jmp	.L378
.L380:
	.loc 1 1250 0
	.p2align 4,,8
	call	qemu_aio_wait_end
	.loc 1 1251 0
	movl	$-1, %eax
	.p2align 4,,6
	jmp	.L372
.LFE161:
	.size	bdrv_read_em, .-bdrv_read_em
	.p2align 4,,15
	.type	bdrv_write_em, @function
bdrv_write_em:
.LFB162:
	.loc 1 1262 0
	movq	%rbx, -32(%rsp)
.LCFI130:
	movq	%r12, -24(%rsp)
.LCFI131:
	movl	%ecx, %ebx
	movq	%r13, -16(%rsp)
.LCFI132:
	movq	%r14, -8(%rsp)
.LCFI133:
	subq	$40, %rsp
.LCFI134:
	.loc 1 1262 0
	movq	%rdi, %r14
	movq	%rsi, %r13
	movq	%rdx, %r12
	.loc 1 1266 0
	movl	$2147483647, 4(%rsp)
	.loc 1 1267 0
	call	qemu_aio_wait_start
	.loc 1 1268 0
	leaq	4(%rsp), %r9
	movl	$bdrv_rw_em_cb, %r8d
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	bdrv_aio_write
	.loc 1 1270 0
	testq	%rax, %rax
	je	.L389
	.loc 1 1275 0
	cmpl	$2147483647, 4(%rsp)
	je	.L385
.L387:
	.loc 1 1277 0
	.p2align 4,,6
	call	qemu_aio_wait_end
	.loc 1 1278 0
	movl	4(%rsp), %eax
.L381:
	.loc 1 1279 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L385:
	.loc 1 1275 0
	call	qemu_aio_wait
	cmpl	$2147483647, 4(%rsp)
	jne	.L387
	.p2align 4,,5
	call	qemu_aio_wait
	cmpl	$2147483647, 4(%rsp)
	.p2align 4,,2
	je	.L385
	.p2align 4,,5
	jmp	.L387
.L389:
	.loc 1 1271 0
	.p2align 4,,8
	call	qemu_aio_wait_end
	.loc 1 1272 0
	movl	$-1, %eax
	.p2align 4,,6
	jmp	.L381
.LFE162:
	.size	bdrv_write_em, .-bdrv_write_em
	.p2align 4,,15
.globl bdrv_init
	.type	bdrv_init, @function
bdrv_init:
.LFB163:
	.loc 1 1282 0
	.loc 1 1283 0
	movl	$bdrv_raw, %edi
	call	bdrv_register
	.loc 1 1284 0
	movl	$bdrv_host_device, %edi
	call	bdrv_register
	.loc 1 1286 0
	movl	$bdrv_cow, %edi
	call	bdrv_register
	.loc 1 1288 0
	movl	$bdrv_qcow, %edi
	call	bdrv_register
	.loc 1 1289 0
	movl	$bdrv_vmdk, %edi
	call	bdrv_register
	.loc 1 1290 0
	movl	$bdrv_cloop, %edi
	call	bdrv_register
	.loc 1 1291 0
	movl	$bdrv_dmg, %edi
	call	bdrv_register
	.loc 1 1292 0
	movl	$bdrv_bochs, %edi
	call	bdrv_register
	.loc 1 1293 0
	movl	$bdrv_vpc, %edi
	call	bdrv_register
	.loc 1 1294 0
	movl	$bdrv_vvfat, %edi
	call	bdrv_register
	.loc 1 1295 0
	movl	$bdrv_qcow2, %edi
	call	bdrv_register
	.loc 1 1296 0
	movl	$bdrv_parallels, %edi
	jmp	bdrv_register
.LFE163:
	.size	bdrv_init, .-bdrv_init
	.p2align 4,,15
.globl bdrv_is_inserted
	.type	bdrv_is_inserted, @function
bdrv_is_inserted:
.LFB166:
	.loc 1 1335 0
	.loc 1 1336 0
	movq	48(%rdi), %rdx
	.loc 1 1339 0
	xorl	%eax, %eax
	.loc 1 1338 0
	testq	%rdx, %rdx
	je	.L391
	.loc 1 1340 0
	movq	216(%rdx), %rdx
	.loc 1 1341 0
	movb	$1, %al
	.loc 1 1340 0
	testq	%rdx, %rdx
	jne	.L394
.L391:
	.loc 1 1344 0
	rep ; ret
	.p2align 4,,7
.L394:
	.loc 1 1342 0
	movq	%rdx, %r11
	jmp	*%r11
.LFE166:
	.size	bdrv_is_inserted, .-bdrv_is_inserted
	.p2align 4,,15
.globl bdrv_media_changed
	.type	bdrv_media_changed, @function
bdrv_media_changed:
.LFB167:
	.loc 1 1351 0
	pushq	%rbx
.LCFI135:
	.loc 1 1352 0
	movq	48(%rdi), %rax
	.loc 1 1351 0
	movq	%rdi, %rbx
	.loc 1 1355 0
	testq	%rax, %rax
	je	.L400
	movq	224(%rax), %rax
	testq	%rax, %rax
	jne	.L402
.L400:
	.loc 1 1360 0
	movl	2632(%rbx), %eax
	.loc 1 1361 0
	movl	$0, 2632(%rbx)
	.loc 1 1363 0
	popq	%rbx
	ret
	.p2align 4,,7
.L402:
	.loc 1 1358 0
	call	*%rax
	.loc 1 1359 0
	cmpl	$-95, %eax
	je	.L400
	.loc 1 1361 0
	movl	$0, 2632(%rbx)
	.loc 1 1363 0
	popq	%rbx
	.p2align 4,,3
	ret
.LFE167:
	.size	bdrv_media_changed, .-bdrv_media_changed
	.p2align 4,,15
.globl bdrv_eject
	.type	bdrv_eject, @function
bdrv_eject:
.LFB168:
	.loc 1 1369 0
	movq	%rbx, -16(%rsp)
.LCFI136:
	movq	%rbp, -8(%rsp)
.LCFI137:
	subq	$24, %rsp
.LCFI138:
	.loc 1 1370 0
	movq	48(%rdi), %rax
	.loc 1 1369 0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	.loc 1 1373 0
	testq	%rax, %rax
	je	.L409
	movq	232(%rax), %rax
	testq	%rax, %rax
	jne	.L411
.L409:
	.loc 1 1379 0
	testl	%ebp, %ebp
	jne	.L412
	.loc 1 1382 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L412:
	.loc 1 1380 0
	movq	%rbx, %rdi
	.loc 1 1382 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.loc 1 1380 0
	jmp	bdrv_close
	.p2align 4,,7
.L411:
	.loc 1 1376 0
	call	*%rax
	.loc 1 1378 0
	cmpl	$-95, %eax
	je	.L409
	.loc 1 1382 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.p2align 4,,1
	ret
.LFE168:
	.size	bdrv_eject, .-bdrv_eject
	.p2align 4,,15
.globl bdrv_is_locked
	.type	bdrv_is_locked, @function
bdrv_is_locked:
.LFB169:
	.loc 1 1385 0
	.loc 1 1386 0
	movl	16(%rdi), %eax
	.loc 1 1387 0
	ret
.LFE169:
	.size	bdrv_is_locked, .-bdrv_is_locked
	.p2align 4,,15
.globl bdrv_set_locked
	.type	bdrv_set_locked, @function
bdrv_set_locked:
.LFB170:
	.loc 1 1394 0
	.loc 1 1395 0
	movq	48(%rdi), %rax
	.loc 1 1397 0
	movl	%esi, 16(%rdi)
	.loc 1 1398 0
	testq	%rax, %rax
	je	.L414
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L416
.L414:
	rep ; ret
	.p2align 4,,7
.L416:
	.loc 1 1399 0
	movq	%rax, %r11
	jmp	*%r11
.LFE170:
	.size	bdrv_set_locked, .-bdrv_set_locked
	.p2align 4,,15
.globl bdrv_ioctl
	.type	bdrv_ioctl, @function
bdrv_ioctl:
.LFB171:
	.loc 1 1406 0
	.loc 1 1407 0
	movq	48(%rdi), %rax
	.loc 1 1409 0
	testq	%rax, %rax
	je	.L418
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L419
.L418:
	.loc 1 1412 0
	movl	$-95, %eax
	ret
	.p2align 4,,7
.L419:
	.loc 1 1410 0
	movq	%rax, %r11
	jmp	*%r11
.LFE171:
	.size	bdrv_ioctl, .-bdrv_ioctl
	.comm	bdrv_first,8,8
	.local	first_drv
	.comm	first_drv,8,8
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI2-.LFB100
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI7-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI9-.LCFI8
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI10-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI13-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI14-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI18-.LFB111
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI19-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI21-.LFB114
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI26-.LFB115
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI30-.LCFI26
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI31-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI35-.LCFI34
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
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x250
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI39-.LFB118
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI41-.LCFI39
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI44-.LCFI41
	.byte	0xe
	.uleb128 0x260
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI46-.LFB110
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI48-.LCFI46
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI48
	.byte	0xe
	.uleb128 0x28e0
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI53-.LFB108
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI53
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI58-.LFB119
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x83
	.uleb128 0x7
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0xe
	.uleb128 0x260
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI64-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI66-.LFB123
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI71-.LFB135
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.align 8
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI73-.LFB137
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI76-.LFB138
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI79-.LFB139
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI82-.LFB141
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI83-.LFB142
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.byte	0x4
	.long	.LCFI84-.LFB143
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.align 8
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.align 8
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.align 8
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.align 8
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.align 8
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.align 8
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI85-.LFB151
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.byte	0x4
	.long	.LCFI87-.LFB152
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI92-.LCFI87
	.byte	0xe
	.uleb128 0x220
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI96-.LFB153
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI99-.LCFI96
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI103-.LFB154
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI106-.LCFI103
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.align 8
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.align 8
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI107-.LFB156
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.byte	0x4
	.long	.LCFI109-.LFB164
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI109
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI113-.LFB157
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI115-.LCFI113
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI117-.LCFI115
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI119-.LFB158
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI121-.LCFI119
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI123-.LCFI121
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.byte	0x4
	.long	.LCFI124-.LFB159
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.align 8
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI126-.LFB161
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI126
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI131-.LFB162
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI131
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.align 8
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.align 8
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.byte	0x4
	.long	.LCFI135-.LFB167
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI138-.LFB168
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.align 8
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.align 8
.LEFDE138:
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
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI2-.LFB100
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI7-.LFB102
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI9-.LCFI8
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI10-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI13-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI14-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI18-.LFB111
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
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI19-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI21-.LFB114
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI26-.LFB115
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI30-.LCFI26
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI31-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI35-.LCFI34
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
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x250
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI39-.LFB118
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI41-.LCFI39
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI44-.LCFI41
	.byte	0xe
	.uleb128 0x260
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI46-.LFB110
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI48-.LCFI46
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI48
	.byte	0xe
	.uleb128 0x28e0
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI53-.LFB108
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI53
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI58-.LFB119
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x83
	.uleb128 0x7
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI63-.LCFI60
	.byte	0xe
	.uleb128 0x260
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI64-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI66-.LFB123
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI66
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI71-.LFB135
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.align 8
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI73-.LFB137
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI76-.LFB138
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI79-.LFB139
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI82-.LFB141
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI83-.LFB142
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE81:
.LSFDE83:
	.long	.LEFDE83-.LASFDE83
.LASFDE83:
	.long	.LASFDE83-.Lframe1
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.byte	0x4
	.long	.LCFI84-.LFB143
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE83:
.LSFDE85:
	.long	.LEFDE85-.LASFDE85
.LASFDE85:
	.long	.LASFDE85-.Lframe1
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.align 8
.LEFDE85:
.LSFDE87:
	.long	.LEFDE87-.LASFDE87
.LASFDE87:
	.long	.LASFDE87-.Lframe1
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.align 8
.LEFDE87:
.LSFDE89:
	.long	.LEFDE89-.LASFDE89
.LASFDE89:
	.long	.LASFDE89-.Lframe1
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE89:
.LSFDE91:
	.long	.LEFDE91-.LASFDE91
.LASFDE91:
	.long	.LASFDE91-.Lframe1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.align 8
.LEFDE91:
.LSFDE93:
	.long	.LEFDE93-.LASFDE93
.LASFDE93:
	.long	.LASFDE93-.Lframe1
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.align 8
.LEFDE93:
.LSFDE95:
	.long	.LEFDE95-.LASFDE95
.LASFDE95:
	.long	.LASFDE95-.Lframe1
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.align 8
.LEFDE95:
.LSFDE97:
	.long	.LEFDE97-.LASFDE97
.LASFDE97:
	.long	.LASFDE97-.Lframe1
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.align 8
.LEFDE97:
.LSFDE99:
	.long	.LEFDE99-.LASFDE99
.LASFDE99:
	.long	.LASFDE99-.Lframe1
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI85-.LFB151
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE99:
.LSFDE101:
	.long	.LEFDE101-.LASFDE101
.LASFDE101:
	.long	.LASFDE101-.Lframe1
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.byte	0x4
	.long	.LCFI87-.LFB152
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI92-.LCFI87
	.byte	0xe
	.uleb128 0x220
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE101:
.LSFDE103:
	.long	.LEFDE103-.LASFDE103
.LASFDE103:
	.long	.LASFDE103-.Lframe1
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI96-.LFB153
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI99-.LCFI96
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE103:
.LSFDE105:
	.long	.LEFDE105-.LASFDE105
.LASFDE105:
	.long	.LASFDE105-.Lframe1
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI103-.LFB154
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI106-.LCFI103
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE105:
.LSFDE107:
	.long	.LEFDE107-.LASFDE107
.LASFDE107:
	.long	.LASFDE107-.Lframe1
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.align 8
.LEFDE107:
.LSFDE109:
	.long	.LEFDE109-.LASFDE109
.LASFDE109:
	.long	.LASFDE109-.Lframe1
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.align 8
.LEFDE109:
.LSFDE111:
	.long	.LEFDE111-.LASFDE111
.LASFDE111:
	.long	.LASFDE111-.Lframe1
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI107-.LFB156
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE111:
.LSFDE113:
	.long	.LEFDE113-.LASFDE113
.LASFDE113:
	.long	.LASFDE113-.Lframe1
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.byte	0x4
	.long	.LCFI109-.LFB164
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI111-.LCFI109
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE113:
.LSFDE115:
	.long	.LEFDE115-.LASFDE115
.LASFDE115:
	.long	.LASFDE115-.Lframe1
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI113-.LFB157
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI115-.LCFI113
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI117-.LCFI115
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE115:
.LSFDE117:
	.long	.LEFDE117-.LASFDE117
.LASFDE117:
	.long	.LASFDE117-.Lframe1
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI119-.LFB158
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI121-.LCFI119
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI123-.LCFI121
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE117:
.LSFDE119:
	.long	.LEFDE119-.LASFDE119
.LASFDE119:
	.long	.LASFDE119-.Lframe1
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.byte	0x4
	.long	.LCFI124-.LFB159
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE119:
.LSFDE121:
	.long	.LEFDE121-.LASFDE121
.LASFDE121:
	.long	.LASFDE121-.Lframe1
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.align 8
.LEFDE121:
.LSFDE123:
	.long	.LEFDE123-.LASFDE123
.LASFDE123:
	.long	.LASFDE123-.Lframe1
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI126-.LFB161
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI126
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE123:
.LSFDE125:
	.long	.LEFDE125-.LASFDE125
.LASFDE125:
	.long	.LASFDE125-.Lframe1
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI131-.LFB162
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI131
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE125:
.LSFDE127:
	.long	.LEFDE127-.LASFDE127
.LASFDE127:
	.long	.LASFDE127-.Lframe1
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.align 8
.LEFDE127:
.LSFDE129:
	.long	.LEFDE129-.LASFDE129
.LASFDE129:
	.long	.LASFDE129-.Lframe1
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.align 8
.LEFDE129:
.LSFDE131:
	.long	.LEFDE131-.LASFDE131
.LASFDE131:
	.long	.LASFDE131-.Lframe1
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.byte	0x4
	.long	.LCFI135-.LFB167
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE131:
.LSFDE133:
	.long	.LEFDE133-.LASFDE133
.LASFDE133:
	.long	.LASFDE133-.Lframe1
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI138-.LFB168
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE133:
.LSFDE135:
	.long	.LEFDE135-.LASFDE135
.LASFDE135:
	.long	.LASFDE135-.Lframe1
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.align 8
.LEFDE135:
.LSFDE137:
	.long	.LEFDE137-.LASFDE137
.LASFDE137:
	.long	.LASFDE137-.Lframe1
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE137:
.LSFDE139:
	.long	.LEFDE139-.LASFDE139
.LASFDE139:
	.long	.LASFDE139-.Lframe1
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.align 8
.LEFDE139:
	.file 3 "block.h"
	.file 4 "block_int.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "qemu-common.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 9 "/usr/include/bits/stat.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x28f3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF278
	.byte	0x1
	.long	.LASF279
	.long	.LASF280
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
	.byte	0xa
	.byte	0x86
	.long	0x38
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF12
	.byte	0xa
	.byte	0x88
	.long	0x46
	.uleb128 0x2
	.long	.LASF13
	.byte	0xa
	.byte	0x89
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0xa
	.byte	0x8b
	.long	0x46
	.uleb128 0x2
	.long	.LASF15
	.byte	0xa
	.byte	0x8c
	.long	0x38
	.uleb128 0x2
	.long	.LASF16
	.byte	0xa
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0xa
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0xa
	.byte	0x95
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF19
	.byte	0xa
	.byte	0xa4
	.long	0x53
	.uleb128 0x2
	.long	.LASF20
	.byte	0xa
	.byte	0xa9
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF21
	.byte	0xb
	.byte	0x4c
	.long	0xee
	.uleb128 0x2
	.long	.LASF22
	.byte	0x7
	.byte	0xc6
	.long	0x53
	.uleb128 0x8
	.long	0x156
	.long	.LASF26
	.byte	0x10
	.byte	0xb
	.byte	0x79
	.uleb128 0x9
	.long	.LASF23
	.byte	0xb
	.byte	0x7a
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF24
	.byte	0xb
	.byte	0x7b
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.long	0x16d
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x173
	.uleb128 0xc
	.uleb128 0x8
	.long	0x340
	.long	.LASF27
	.byte	0xd8
	.byte	0xc
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF28
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF29
	.byte	0xd
	.value	0x115
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF30
	.byte	0xd
	.value	0x116
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF31
	.byte	0xd
	.value	0x117
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF32
	.byte	0xd
	.value	0x118
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF33
	.byte	0xd
	.value	0x119
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF34
	.byte	0xd
	.value	0x11a
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF35
	.byte	0xd
	.value	0x11b
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF36
	.byte	0xd
	.value	0x11c
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF37
	.byte	0xd
	.value	0x11e
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF38
	.byte	0xd
	.value	0x11f
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF39
	.byte	0xd
	.value	0x120
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF40
	.byte	0xd
	.value	0x122
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF41
	.byte	0xd
	.value	0x124
	.long	0x384
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF42
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF43
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF44
	.byte	0xd
	.value	0x12c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF45
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF46
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF47
	.byte	0xd
	.value	0x132
	.long	0x38a
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF48
	.byte	0xd
	.value	0x136
	.long	0x39a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF49
	.byte	0xd
	.value	0x13f
	.long	0xe3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF50
	.byte	0xd
	.value	0x148
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF51
	.byte	0xd
	.value	0x149
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF52
	.byte	0xd
	.value	0x14a
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF53
	.byte	0xd
	.value	0x14b
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF54
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF55
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF56
	.byte	0xd
	.value	0x150
	.long	0x3a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF57
	.byte	0xd
	.byte	0xb4
	.uleb128 0x8
	.long	0x37e
	.long	.LASF58
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0x9
	.long	.LASF59
	.byte	0xd
	.byte	0xbb
	.long	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd
	.byte	0xbc
	.long	0x384
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x347
	.uleb128 0x5
	.byte	0x8
	.long	0x174
	.uleb128 0xa
	.long	0x39a
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x340
	.uleb128 0xa
	.long	0x3b0
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF64
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0xf
	.long	0x477
	.string	"tm"
	.byte	0x38
	.byte	0xb
	.byte	0x86
	.uleb128 0x9
	.long	.LASF65
	.byte	0xb
	.byte	0x87
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x88
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF67
	.byte	0xb
	.byte	0x89
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0xb
	.byte	0x8a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x8b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF70
	.byte	0xb
	.byte	0x8c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x8d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x8e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x8f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x92
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF75
	.byte	0xb
	.byte	0x93
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x8
	.long	0x556
	.long	.LASF76
	.byte	0x90
	.byte	0x9
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF77
	.byte	0x9
	.byte	0x2d
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF78
	.byte	0x9
	.byte	0x32
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF79
	.byte	0x9
	.byte	0x3a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0x9
	.byte	0x3b
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF81
	.byte	0x9
	.byte	0x3d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF82
	.byte	0x9
	.byte	0x3e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF83
	.byte	0x9
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF84
	.byte	0x9
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF85
	.byte	0x9
	.byte	0x47
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF86
	.byte	0x9
	.byte	0x4b
	.long	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF87
	.byte	0x9
	.byte	0x4d
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF88
	.byte	0x9
	.byte	0x58
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF89
	.byte	0x9
	.byte	0x59
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF90
	.byte	0x9
	.byte	0x5a
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF91
	.byte	0x9
	.byte	0x67
	.long	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xa
	.long	0x566
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF92
	.byte	0x6
	.byte	0x45
	.long	0x571
	.uleb128 0x10
	.long	.LASF92
	.byte	0x1
	.uleb128 0x11
	.long	0x583
	.byte	0x1
	.uleb128 0x12
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x589
	.uleb128 0x6
	.long	0x3b0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.byte	0x6e
	.long	0x599
	.uleb128 0x13
	.long	0x74d
	.long	.LASF93
	.value	0xac0
	.byte	0x6
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF94
	.byte	0x4
	.byte	0x5d
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF95
	.byte	0x4
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF96
	.byte	0x4
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF97
	.byte	0x4
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF98
	.byte	0x4
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"sg"
	.byte	0x4
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF99
	.byte	0x4
	.byte	0x65
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF100
	.byte	0x4
	.byte	0x66
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"drv"
	.byte	0x4
	.byte	0x68
	.long	0xd1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF101
	.byte	0x4
	.byte	0x69
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF102
	.byte	0x4
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF103
	.byte	0x4
	.byte	0x6c
	.long	0xd21
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF104
	.byte	0x4
	.byte	0x6e
	.long	0xd32
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x9
	.long	.LASF105
	.byte	0x4
	.byte	0x6f
	.long	0xd32
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0x9
	.long	.LASF106
	.byte	0x4
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0x9
	.long	.LASF107
	.byte	0x4
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0x9
	.long	.LASF108
	.byte	0x4
	.byte	0x74
	.long	0xae7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0x9
	.long	.LASF109
	.byte	0x4
	.byte	0x77
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0x9
	.long	.LASF110
	.byte	0x4
	.byte	0x7a
	.long	0x3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0x9
	.long	.LASF111
	.byte	0x4
	.byte	0x7b
	.long	0x3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0x9
	.long	.LASF112
	.byte	0x4
	.byte	0x7c
	.long	0x3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0x9
	.long	.LASF113
	.byte	0x4
	.byte	0x7d
	.long	0x3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.long	.LASF114
	.byte	0x4
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.long	.LASF115
	.byte	0x4
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.long	.LASF116
	.byte	0x4
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.long	.LASF117
	.byte	0x4
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.long	.LASF118
	.byte	0x4
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.long	.LASF119
	.byte	0x4
	.byte	0x83
	.long	0x15d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0x9
	.long	.LASF120
	.byte	0x4
	.byte	0x84
	.long	0xae7
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x11
	.long	0x75e
	.byte	0x1
	.uleb128 0x12
	.long	0xf9
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x566
	.uleb128 0x5
	.byte	0x8
	.long	0x3b0
	.uleb128 0x5
	.byte	0x8
	.long	0x577
	.uleb128 0x5
	.byte	0x8
	.long	0x776
	.uleb128 0x11
	.long	0x787
	.byte	0x1
	.uleb128 0x12
	.long	0xf9
	.uleb128 0x12
	.long	0x6f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF121
	.byte	0x3
	.byte	0x5
	.long	0x792
	.uleb128 0x13
	.long	0x98e
	.long	.LASF121
	.value	0x110
	.byte	0x3
	.byte	0x5
	.uleb128 0x9
	.long	.LASF122
	.byte	0x4
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF123
	.byte	0x4
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF124
	.byte	0x4
	.byte	0x24
	.long	0xac7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF125
	.byte	0x4
	.byte	0x25
	.long	0xaed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF126
	.byte	0x4
	.byte	0x27
	.long	0xb12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF127
	.byte	0x4
	.byte	0x29
	.long	0xb37
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF128
	.byte	0x4
	.byte	0x2a
	.long	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF129
	.byte	0x4
	.byte	0x2c
	.long	0xb6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF130
	.byte	0x4
	.byte	0x2d
	.long	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF131
	.byte	0x4
	.byte	0x2f
	.long	0xb93
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF132
	.byte	0x4
	.byte	0x30
	.long	0xbae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF133
	.byte	0x4
	.byte	0x31
	.long	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF134
	.byte	0x4
	.byte	0x35
	.long	0xbff
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF135
	.byte	0x4
	.byte	0x38
	.long	0xc2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF136
	.byte	0x4
	.byte	0x39
	.long	0xc40
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF137
	.byte	0x4
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF138
	.byte	0x4
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF139
	.byte	0x4
	.byte	0x3e
	.long	0xb12
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF140
	.byte	0x4
	.byte	0x40
	.long	0xb37
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF141
	.byte	0x4
	.byte	0x41
	.long	0xc5b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF142
	.byte	0x4
	.byte	0x42
	.long	0xc71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF143
	.byte	0x4
	.byte	0x44
	.long	0xb37
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF144
	.byte	0x4
	.byte	0x47
	.long	0xc92
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x4
	.byte	0x49
	.long	0xbae
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF146
	.byte	0x4
	.byte	0x4a
	.long	0xbae
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF147
	.byte	0x4
	.byte	0x4c
	.long	0xcb3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF148
	.byte	0x4
	.byte	0x4d
	.long	0xcd4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF149
	.byte	0x4
	.byte	0x50
	.long	0xbc4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF150
	.byte	0x4
	.byte	0x51
	.long	0xbc4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF151
	.byte	0x4
	.byte	0x52
	.long	0xcef
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.long	.LASF152
	.byte	0x4
	.byte	0x53
	.long	0xcef
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF153
	.byte	0x4
	.byte	0x56
	.long	0xd0f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF154
	.byte	0x4
	.byte	0x58
	.long	0xbf3
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF120
	.byte	0x4
	.byte	0x59
	.long	0xd15
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0x8
	.long	0x9b7
	.long	.LASF155
	.byte	0x10
	.byte	0x3
	.byte	0x14
	.uleb128 0x9
	.long	.LASF156
	.byte	0x3
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF157
	.byte	0x3
	.byte	0x18
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF155
	.byte	0x3
	.byte	0x19
	.long	0x98e
	.uleb128 0x13
	.long	0xa29
	.long	.LASF158
	.value	0x198
	.byte	0x3
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF159
	.byte	0x3
	.byte	0x1c
	.long	0xa29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF160
	.byte	0x3
	.byte	0x1f
	.long	0xa39
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF161
	.byte	0x3
	.byte	0x20
	.long	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF162
	.byte	0x3
	.byte	0x21
	.long	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x9
	.long	.LASF163
	.byte	0x3
	.byte	0x22
	.long	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF164
	.byte	0x3
	.byte	0x23
	.long	0x3c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0xa
	.long	0xa39
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.long	0xa49
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF158
	.byte	0x3
	.byte	0x24
	.long	0x9c2
	.uleb128 0x2
	.long	.LASF165
	.byte	0x3
	.byte	0x50
	.long	0xa5f
	.uleb128 0x8
	.long	0xaa2
	.long	.LASF165
	.byte	0x20
	.byte	0x3
	.byte	0x50
	.uleb128 0x14
	.string	"bs"
	.byte	0x4
	.byte	0x88
	.long	0xae7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"cb"
	.byte	0x4
	.byte	0x89
	.long	0xbf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF101
	.byte	0x4
	.byte	0x8a
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF120
	.byte	0x4
	.byte	0x8b
	.long	0xbf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF166
	.byte	0x3
	.byte	0x51
	.long	0x74d
	.uleb128 0x15
	.long	0xac7
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x583
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xaad
	.uleb128 0x15
	.long	0xae7
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x6f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x58e
	.uleb128 0x5
	.byte	0x8
	.long	0xacd
	.uleb128 0x15
	.long	0xb12
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x764
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xaf3
	.uleb128 0x15
	.long	0xb37
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x583
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb18
	.uleb128 0x11
	.long	0xb49
	.byte	0x1
	.uleb128 0x12
	.long	0xae7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb3d
	.uleb128 0x15
	.long	0xb6e
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x6f
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x6f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb4f
	.uleb128 0x15
	.long	0xb93
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb74
	.uleb128 0x15
	.long	0xbae
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb99
	.uleb128 0x15
	.long	0xbc4
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbb4
	.uleb128 0x15
	.long	0xbf3
	.byte	0x1
	.long	0xbf3
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x764
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0xbf9
	.uleb128 0x12
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa54
	.uleb128 0x5
	.byte	0x8
	.long	0xaa2
	.uleb128 0x5
	.byte	0x8
	.long	0xbca
	.uleb128 0x15
	.long	0xc2e
	.byte	0x1
	.long	0xbf3
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.uleb128 0x12
	.long	0x583
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0xbf9
	.uleb128 0x12
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc05
	.uleb128 0x11
	.long	0xc40
	.byte	0x1
	.uleb128 0x12
	.long	0xbf3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc34
	.uleb128 0x15
	.long	0xc5b
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x122
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc46
	.uleb128 0x15
	.long	0xc71
	.byte	0x1
	.long	0x122
	.uleb128 0x12
	.long	0xae7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc61
	.uleb128 0x15
	.long	0xc8c
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0xc8c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa49
	.uleb128 0x5
	.byte	0x8
	.long	0xc77
	.uleb128 0x15
	.long	0xcad
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0xcad
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc8c
	.uleb128 0x5
	.byte	0x8
	.long	0xc98
	.uleb128 0x15
	.long	0xcce
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0xcce
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9b7
	.uleb128 0x5
	.byte	0x8
	.long	0xcb9
	.uleb128 0x15
	.long	0xcef
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcda
	.uleb128 0x15
	.long	0xd0f
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xae7
	.uleb128 0x12
	.long	0x38
	.uleb128 0x12
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcf5
	.uleb128 0x5
	.byte	0x8
	.long	0x792
	.uleb128 0x5
	.byte	0x8
	.long	0x787
	.uleb128 0xa
	.long	0xd32
	.long	0x3b0
	.uleb128 0x16
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0xa
	.long	0xd43
	.long	0x7a
	.uleb128 0x16
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x8
	.long	0xd79
	.long	.LASF167
	.byte	0x30
	.byte	0x1
	.byte	0x29
	.uleb128 0x9
	.long	.LASF168
	.byte	0x1
	.byte	0x2a
	.long	0xa54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"bh"
	.byte	0x1
	.byte	0x2b
	.long	0x75e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.long	.LASF167
	.byte	0x1
	.byte	0x2d
	.long	0xd43
	.uleb128 0x17
	.long	0xdc0
	.byte	0x1
	.long	.LASF169
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x3f
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF171
	.byte	0x1
	.byte	0x3e
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x40
	.long	0x6f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0xe38
	.byte	0x1
	.long	.LASF170
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF172
	.byte	0x1
	.byte	0x55
	.long	0x111
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.long	.LASF173
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.long	.LASF174
	.byte	0x1
	.byte	0x56
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0x57
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x59
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"p1"
	.byte	0x1
	.byte	0x59
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x5a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1b
	.long	0xe64
	.long	.LASF185
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF175
	.byte	0x1
	.byte	0x7f
	.long	0xd1b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x17
	.long	0xeae
	.byte	0x1
	.long	.LASF176
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0xae7
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF119
	.byte	0x1
	.byte	0x91
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.string	"pbs"
	.byte	0x1
	.byte	0x93
	.long	0xeae
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0x93
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xae7
	.uleb128 0x17
	.long	0xf1a
	.byte	0x1
	.long	.LASF177
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0xd1b
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.byte	0xa3
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.byte	0xa5
	.long	0xd1b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x1
	.byte	0xa7
	.long	0x2d
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x1
	.byte	0xa7
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0xf7f
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"drv"
	.byte	0x1
	.byte	0xad
	.long	0xd1b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0xae
	.long	0x6f
	.byte	0x1
	.byte	0x59
	.uleb128 0x18
	.long	.LASF181
	.byte	0x1
	.byte	0xae
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0xaf
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF182
	.byte	0x1
	.byte	0xaf
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1a
	.long	0xfc5
	.byte	0x1
	.long	.LASF183
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0xbf
	.long	0x111
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.LASF184
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0xc1
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x20
	.long	0x104e
	.long	.LASF186
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0xd1b
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0xdd
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x1
	.byte	0xdf
	.long	0xd1b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF187
	.byte	0x1
	.byte	0xe0
	.long	0xa29
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xe1
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.byte	0xe2
	.long	0x6f
	.uleb128 0x1d
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x1
	.byte	0xf3
	.long	0x2d
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x1
	.byte	0xf3
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x108e
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.value	0x2c4
	.byte	0x1
	.long	0x122
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2c3
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x2c5
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.long	0x10bc
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x1ab
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x10ea
	.byte	0x1
	.long	.LASF188
	.byte	0x1
	.value	0x1c2
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x1c1
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x1174
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.value	0x1f6
	.byte	0x1
	.long	0x3f
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x1f4
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x1f4
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x1f5
	.long	0x764
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x1f5
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x1f7
	.long	0xd1b
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x205
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x205
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x120a
	.byte	0x1
	.long	.LASF127
	.byte	0x1
	.value	0x21e
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x21c
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x21c
	.long	0x122
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x21d
	.long	0x583
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x21d
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x21f
	.long	0xd1b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x228
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x228
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x128c
	.byte	0x1
	.long	.LASF191
	.byte	0x1
	.value	0x1ca
	.byte	0x1
	.long	0x3f
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x1c9
	.long	0xae7
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x1cb
	.long	0xd1b
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1cc
	.long	0x122
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF94
	.byte	0x1
	.value	0x1cc
	.long	0x122
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x1cd
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.value	0x1cd
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF192
	.byte	0x1
	.value	0x1ce
	.long	0x128c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0xa
	.long	0x129d
	.long	0x81
	.uleb128 0x16
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x22
	.long	0x135f
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.value	0x29a
	.byte	0x1
	.long	0x3f
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x298
	.long	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0x298
	.long	0x122
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF194
	.byte	0x1
	.value	0x299
	.long	0xf9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF195
	.byte	0x1
	.value	0x299
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x29b
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	0x135f
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2b
	.long	0x1371
	.uleb128 0x2b
	.long	0x137c
	.uleb128 0x2c
	.long	0x1388
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.long	0x1394
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2d
	.long	0x13a0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	0x13ac
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	0x13b8
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	0x13c4
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2d
	.long	0x13d0
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x13dd
	.long	.LASF196
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x239
	.long	0xae7
	.uleb128 0x30
	.long	.LASF193
	.byte	0x1
	.value	0x239
	.long	0x122
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x23a
	.long	0x764
	.uleb128 0x30
	.long	.LASF195
	.byte	0x1
	.value	0x23a
	.long	0x3f
	.uleb128 0x31
	.long	.LASF197
	.byte	0x1
	.value	0x23c
	.long	0xd21
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x23d
	.long	0x3f
	.uleb128 0x31
	.long	.LASF190
	.byte	0x1
	.value	0x23d
	.long	0x3f
	.uleb128 0x31
	.long	.LASF198
	.byte	0x1
	.value	0x23d
	.long	0x3f
	.uleb128 0x31
	.long	.LASF189
	.byte	0x1
	.value	0x23e
	.long	0x122
	.byte	0x0
	.uleb128 0x22
	.long	0x1541
	.byte	0x1
	.long	.LASF199
	.byte	0x1
	.value	0x146
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x144
	.long	0xae7
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF104
	.byte	0x1
	.value	0x144
	.long	0x6f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF182
	.byte	0x1
	.value	0x144
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"drv"
	.byte	0x1
	.value	0x145
	.long	0xd1b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x147
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF200
	.byte	0x1
	.value	0x147
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x29
	.long	.LASF201
	.byte	0x1
	.value	0x148
	.long	0x1541
	.byte	0x3
	.byte	0x91
	.sleb128 6304
	.uleb128 0x29
	.long	.LASF202
	.byte	0x1
	.value	0x149
	.long	0x1541
	.byte	0x3
	.byte	0x91
	.sleb128 2208
	.uleb128 0x32
	.long	.LASF281
	.byte	0x1
	.value	0x1a0
	.quad	.L161
	.uleb128 0x33
	.long	0x14ab
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x24
	.string	"bs1"
	.byte	0x1
	.value	0x150
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x151
	.long	0x122
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x34
	.long	0x1504
	.long	0x1552
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2b
	.long	0x1563
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2d
	.long	0x156e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	0x1579
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x1584
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2d
	.long	0x158f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	0x159a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.long	0x15a5
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x2d
	.long	0x15b0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x2d
	.long	0x15bc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	0x15da
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x2b
	.long	0x15ed
	.uleb128 0x2c
	.long	0x15f9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x1552
	.long	0x7a
	.uleb128 0x16
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0x35
	.long	0x15c9
	.long	.LASF204
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0xd1b
	.byte	0x1
	.uleb128 0x36
	.long	.LASF104
	.byte	0x1
	.byte	0xfb
	.long	0x6f
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.byte	0xfd
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0xfd
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0xfd
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x1
	.byte	0xfe
	.long	0xd1b
	.uleb128 0x21
	.string	"drv"
	.byte	0x1
	.byte	0xfe
	.long	0xd1b
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0xff
	.long	0x15c9
	.uleb128 0x28
	.string	"bs"
	.byte	0x1
	.value	0x100
	.long	0xae7
	.uleb128 0x37
	.uleb128 0x28
	.string	"st"
	.byte	0x1
	.value	0x10b
	.long	0x477
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x15da
	.long	0x3b0
	.uleb128 0x16
	.long	0x61
	.value	0x7ff
	.byte	0x0
	.uleb128 0x38
	.long	0x1606
	.byte	0x1
	.long	.LASF76
	.byte	0x2
	.value	0x1c6
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x30
	.long	.LASF207
	.byte	0x2
	.value	0x1c5
	.long	0x6f
	.uleb128 0x30
	.long	.LASF208
	.byte	0x2
	.value	0x1c5
	.long	0x1606
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x477
	.uleb128 0x22
	.long	0x165a
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.value	0x140
	.byte	0x1
	.long	0x3f
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x13f
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF104
	.byte	0x1
	.value	0x13f
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF182
	.byte	0x1
	.value	0x13f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x16c4
	.byte	0x1
	.long	.LASF209
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.long	0x3f
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"pbs"
	.byte	0x1
	.value	0x12e
	.long	0xeae
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF104
	.byte	0x1
	.value	0x12e
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF182
	.byte	0x1
	.value	0x12e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"bs"
	.byte	0x1
	.value	0x130
	.long	0xae7
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x131
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x1786
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.value	0x2a9
	.byte	0x1
	.long	0x3f
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2a7
	.long	0xae7
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0x2a7
	.long	0x122
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF194
	.byte	0x1
	.value	0x2a8
	.long	0x16d
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.long	.LASF195
	.byte	0x1
	.value	0x2a8
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x2aa
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	0x1786
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x2b
	.long	0x1798
	.uleb128 0x2b
	.long	0x17a3
	.uleb128 0x2c
	.long	0x17af
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.long	0x17bb
	.uleb128 0x27
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2d
	.long	0x17c7
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.long	0x17d3
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	0x17df
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	0x17eb
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2d
	.long	0x17f7
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x1804
	.long	.LASF210
	.byte	0x1
	.value	0x267
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x265
	.long	0xae7
	.uleb128 0x30
	.long	.LASF193
	.byte	0x1
	.value	0x265
	.long	0x122
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x266
	.long	0x583
	.uleb128 0x30
	.long	.LASF195
	.byte	0x1
	.value	0x266
	.long	0x3f
	.uleb128 0x31
	.long	.LASF197
	.byte	0x1
	.value	0x268
	.long	0xd21
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x269
	.long	0x3f
	.uleb128 0x31
	.long	.LASF190
	.byte	0x1
	.value	0x269
	.long	0x3f
	.uleb128 0x31
	.long	.LASF198
	.byte	0x1
	.value	0x269
	.long	0x3f
	.uleb128 0x31
	.long	.LASF189
	.byte	0x1
	.value	0x26a
	.long	0x122
	.byte	0x0
	.uleb128 0x22
	.long	0x1852
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.value	0x2b7
	.byte	0x1
	.long	0x3f
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2b6
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0x2b6
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x2b8
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.long	0x189c
	.byte	0x1
	.long	.LASF211
	.byte	0x1
	.value	0x2d1
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2d0
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF212
	.byte	0x1
	.value	0x2d0
	.long	0x189c
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF213
	.byte	0x1
	.value	0x2d2
	.long	0x122
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3c6
	.uleb128 0x25
	.long	0x18ec
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.value	0x2dd
	.byte	0x1
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2dc
	.long	0xae7
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF215
	.byte	0x1
	.value	0x2dc
	.long	0x583
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF184
	.byte	0x1
	.value	0x2dc
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x1944
	.byte	0x1
	.long	.LASF216
	.byte	0x1
	.value	0x2e7
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2e5
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF114
	.byte	0x1
	.value	0x2e6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF115
	.byte	0x1
	.value	0x2e6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF116
	.byte	0x1
	.value	0x2e6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x1980
	.byte	0x1
	.long	.LASF217
	.byte	0x1
	.value	0x2ee
	.byte	0x1
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2ed
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x2ed
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x25
	.long	0x19bc
	.byte	0x1
	.long	.LASF218
	.byte	0x1
	.value	0x2f5
	.byte	0x1
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2f4
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x2f4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x25
	.long	0x1a14
	.byte	0x1
	.long	.LASF219
	.byte	0x1
	.value	0x2fb
	.byte	0x1
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x2f9
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF220
	.byte	0x1
	.value	0x2fa
	.long	0x4d
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF221
	.byte	0x1
	.value	0x2fa
	.long	0x4d
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF222
	.byte	0x1
	.value	0x2fa
	.long	0x4d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x1a46
	.byte	0x1
	.long	.LASF223
	.byte	0x1
	.value	0x302
	.byte	0x1
	.long	0x3f
	.quad	.LFB128
	.quad	.LFE128
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x301
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1a78
	.byte	0x1
	.long	.LASF224
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	0x3f
	.quad	.LFB129
	.quad	.LFE129
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x306
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1aaa
	.byte	0x1
	.long	.LASF225
	.byte	0x1
	.value	0x30c
	.byte	0x1
	.long	0x3f
	.quad	.LFB130
	.quad	.LFE130
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x30b
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1adc
	.byte	0x1
	.long	.LASF226
	.byte	0x1
	.value	0x311
	.byte	0x1
	.long	0x3f
	.quad	.LFB131
	.quad	.LFE131
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x310
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1b0e
	.byte	0x1
	.long	.LASF227
	.byte	0x1
	.value	0x316
	.byte	0x1
	.long	0x3f
	.quad	.LFB132
	.quad	.LFE132
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x315
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x1b58
	.byte	0x1
	.long	.LASF228
	.byte	0x1
	.value	0x31d
	.byte	0x1
	.quad	.LFB133
	.quad	.LFE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x31b
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF99
	.byte	0x1
	.value	0x31c
	.long	0x76a
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x31c
	.long	0xf9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1b8a
	.byte	0x1
	.long	.LASF229
	.byte	0x1
	.value	0x323
	.byte	0x1
	.long	0x3f
	.quad	.LFB134
	.quad	.LFE134
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x322
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0x1bd8
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.value	0x32a
	.byte	0x1
	.long	0x3f
	.quad	.LFB135
	.quad	.LFE135
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x329
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"key"
	.byte	0x1
	.value	0x329
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x32b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x1c22
	.byte	0x1
	.long	.LASF230
	.byte	0x1
	.value	0x339
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x338
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x338
	.long	0x111
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	.LASF231
	.byte	0x1
	.value	0x338
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.long	0x1c6c
	.byte	0x1
	.long	.LASF232
	.byte	0x1
	.value	0x343
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"it"
	.byte	0x1
	.value	0x341
	.long	0x770
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x342
	.long	0xf9
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x344
	.long	0xd1b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x1cd6
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.value	0x34c
	.byte	0x1
	.long	0xae7
	.quad	.LFB138
	.quad	.LFE138
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF160
	.byte	0x1
	.value	0x34b
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"bs"
	.byte	0x1
	.value	0x34d
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x31
	.long	.LASF179
	.byte	0x1
	.value	0x350
	.long	0x2d
	.uleb128 0x31
	.long	.LASF180
	.byte	0x1
	.value	0x350
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1d1f
	.byte	0x1
	.long	.LASF234
	.byte	0x1
	.value	0x357
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"it"
	.byte	0x1
	.value	0x356
	.long	0x770
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x356
	.long	0xf9
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"bs"
	.byte	0x1
	.value	0x358
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x1d51
	.byte	0x1
	.long	.LASF235
	.byte	0x1
	.value	0x360
	.byte	0x1
	.long	0x6f
	.quad	.LFB140
	.quad	.LFE140
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x35f
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x1d7f
	.byte	0x1
	.long	.LASF130
	.byte	0x1
	.value	0x365
	.byte	0x1
	.quad	.LFB141
	.quad	.LFE141
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x364
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x1dad
	.byte	0x1
	.long	.LASF236
	.byte	0x1
	.value	0x36e
	.byte	0x1
	.quad	.LFB142
	.quad	.LFE142
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"bs"
	.byte	0x1
	.value	0x36f
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x1ddb
	.byte	0x1
	.long	.LASF237
	.byte	0x1
	.value	0x397
	.byte	0x1
	.quad	.LFB143
	.quad	.LFE143
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"bs"
	.byte	0x1
	.value	0x398
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x1e25
	.byte	0x1
	.long	.LASF238
	.byte	0x1
	.value	0x3aa
	.byte	0x1
	.quad	.LFB144
	.quad	.LFE144
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3a8
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF104
	.byte	0x1
	.value	0x3a9
	.long	0x111
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LASF239
	.byte	0x1
	.value	0x3a9
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x22
	.long	0x1e8f
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.value	0x3b4
	.byte	0x1
	.long	0x3f
	.quad	.LFB145
	.quad	.LFE145
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3b2
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x3b2
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x3b3
	.long	0x583
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x3b3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3b5
	.long	0xd1b
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x22
	.long	0x1edd
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.value	0x3be
	.byte	0x1
	.long	0x3f
	.quad	.LFB146
	.quad	.LFE146
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3bd
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"bdi"
	.byte	0x1
	.value	0x3bd
	.long	0xcce
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3bf
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1f2b
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.value	0x3cd
	.byte	0x1
	.long	0x3f
	.quad	.LFB147
	.quad	.LFE147
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3cb
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.value	0x3cc
	.long	0xc8c
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3ce
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1f79
	.byte	0x1
	.long	.LASF145
	.byte	0x1
	.value	0x3d8
	.byte	0x1
	.long	0x3f
	.quad	.LFB148
	.quad	.LFE148
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3d6
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.value	0x3d7
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3d9
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1fc7
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.value	0x3e2
	.byte	0x1
	.long	0x3f
	.quad	.LFB149
	.quad	.LFE149
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3e1
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.value	0x3e1
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3e3
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x2015
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.value	0x3ed
	.byte	0x1
	.long	0x3f
	.quad	.LFB150
	.quad	.LFE150
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x3eb
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF242
	.byte	0x1
	.value	0x3ec
	.long	0xcad
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x3ee
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x2094
	.byte	0x1
	.long	.LASF243
	.byte	0x1
	.value	0x3f9
	.byte	0x1
	.long	0x111
	.quad	.LFB151
	.quad	.LFE151
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x3f8
	.long	0x111
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF231
	.byte	0x1
	.value	0x3f8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF184
	.byte	0x1
	.value	0x3f8
	.long	0x122
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	.LASF244
	.byte	0x1
	.value	0x3fa
	.long	0x20a4
	.byte	0x9
	.byte	0x3
	.quad	suffixes.0
	.uleb128 0x29
	.long	.LASF245
	.byte	0x1
	.value	0x3fb
	.long	0x122
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x3fc
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0xa
	.long	0x20a4
	.long	0x75
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.long	0x2094
	.uleb128 0x22
	.long	0x2151
	.byte	0x1
	.long	.LASF246
	.byte	0x1
	.value	0x415
	.byte	0x1
	.long	0x111
	.quad	.LFB152
	.quad	.LFE152
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x414
	.long	0x111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF231
	.byte	0x1
	.value	0x414
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"sn"
	.byte	0x1
	.value	0x414
	.long	0xc8c
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF194
	.byte	0x1
	.value	0x416
	.long	0xa29
	.byte	0x3
	.byte	0x91
	.sleb128 352
	.uleb128 0x29
	.long	.LASF247
	.byte	0x1
	.value	0x416
	.long	0xa29
	.byte	0x3
	.byte	0x91
	.sleb128 224
	.uleb128 0x29
	.long	.LASF248
	.byte	0x1
	.value	0x416
	.long	0xa29
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x24
	.string	"tm"
	.byte	0x1
	.value	0x41a
	.long	0x3d1
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x24
	.string	"ti"
	.byte	0x1
	.value	0x41c
	.long	0x117
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF116
	.byte	0x1
	.value	0x41d
	.long	0x122
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x22
	.long	0x21e4
	.byte	0x1
	.long	.LASF134
	.byte	0x1
	.value	0x446
	.byte	0x1
	.long	0xbf3
	.quad	.LFB153
	.quad	.LFE153
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x443
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x443
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x444
	.long	0x764
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x444
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"cb"
	.byte	0x1
	.value	0x445
	.long	0xbf9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x445
	.long	0xf9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x447
	.long	0xd1b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x448
	.long	0xbf3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x2278
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.value	0x463
	.byte	0x1
	.long	0xbf3
	.quad	.LFB154
	.quad	.LFE154
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x460
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x460
	.long	0x122
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x461
	.long	0x583
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x461
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.string	"cb"
	.byte	0x1
	.value	0x462
	.long	0xbf9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x462
	.long	0xf9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x464
	.long	0xd1b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x465
	.long	0xbf3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.long	0x22b5
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.value	0x47b
	.byte	0x1
	.quad	.LFB155
	.quad	.LFE155
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"acb"
	.byte	0x1
	.value	0x47a
	.long	0xbf3
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x47c
	.long	0xd1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x22fc
	.byte	0x1
	.long	.LASF249
	.byte	0x1
	.value	0x529
	.byte	0x1
	.quad	.LFB165
	.quad	.LFE165
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x528
	.long	0xf9
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.string	"acb"
	.byte	0x1
	.value	0x52a
	.long	0xbf3
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x52b
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x39
	.long	0x2336
	.long	.LASF250
	.byte	0x1
	.value	0x49f
	.byte	0x1
	.quad	.LFB156
	.quad	.LFE156
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x49e
	.long	0xf9
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"acb"
	.byte	0x1
	.value	0x4a0
	.long	0x2336
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd79
	.uleb128 0x22
	.long	0x23a5
	.byte	0x1
	.long	.LASF251
	.byte	0x1
	.value	0x515
	.byte	0x1
	.long	0xf9
	.quad	.LFB164
	.quad	.LFE164
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x513
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.string	"cb"
	.byte	0x1
	.value	0x513
	.long	0xbf9
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x514
	.long	0xf9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x516
	.long	0xd1b
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.string	"acb"
	.byte	0x1
	.value	0x517
	.long	0xbf3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x3a
	.long	0x2437
	.long	.LASF252
	.byte	0x1
	.value	0x4a8
	.byte	0x1
	.long	0xbf3
	.quad	.LFB157
	.quad	.LFE157
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x4a5
	.long	0xae7
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x4a6
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x4a6
	.long	0x764
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x4a6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"cb"
	.byte	0x1
	.value	0x4a7
	.long	0xbf9
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x4a7
	.long	0xf9
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"acb"
	.byte	0x1
	.value	0x4a9
	.long	0x2336
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x4aa
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x24c9
	.long	.LASF253
	.byte	0x1
	.value	0x4b8
	.byte	0x1
	.long	0xbf3
	.quad	.LFB158
	.quad	.LFE158
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x4b5
	.long	0xae7
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x4b6
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x4b6
	.long	0x583
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x4b6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"cb"
	.byte	0x1
	.value	0x4b7
	.long	0xbf9
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x4b7
	.long	0xf9
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"acb"
	.byte	0x1
	.value	0x4b9
	.long	0x2336
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x4ba
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x2503
	.long	.LASF254
	.byte	0x1
	.value	0x4c6
	.byte	0x1
	.quad	.LFB159
	.quad	.LFE159
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF255
	.byte	0x1
	.value	0x4c5
	.long	0xbf3
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"acb"
	.byte	0x1
	.value	0x4c7
	.long	0x2336
	.byte	0x0
	.uleb128 0x39
	.long	0x253f
	.long	.LASF256
	.byte	0x1
	.value	0x4d1
	.byte	0x1
	.quad	.LFB160
	.quad	.LFE160
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF101
	.byte	0x1
	.value	0x4d0
	.long	0xf9
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.value	0x4d0
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x3a
	.long	0x25b7
	.long	.LASF257
	.byte	0x1
	.value	0x4d9
	.byte	0x1
	.long	0x3f
	.quad	.LFB161
	.quad	.LFE161
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x4d7
	.long	0xae7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x4d7
	.long	0x122
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x4d8
	.long	0x764
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x4d8
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF258
	.byte	0x1
	.value	0x4da
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"acb"
	.byte	0x1
	.value	0x4db
	.long	0xbf3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x262f
	.long	.LASF259
	.byte	0x1
	.value	0x4ee
	.byte	0x1
	.long	0x3f
	.quad	.LFB162
	.quad	.LFE162
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x4ec
	.long	0xae7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x4ec
	.long	0x122
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x4ed
	.long	0x583
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x4ed
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF258
	.byte	0x1
	.value	0x4ef
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"acb"
	.byte	0x1
	.value	0x4f0
	.long	0xbf3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF282
	.byte	0x1
	.value	0x502
	.byte	0x1
	.quad	.LFB163
	.quad	.LFE163
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.long	0x2697
	.byte	0x1
	.long	.LASF149
	.byte	0x1
	.value	0x537
	.byte	0x1
	.long	0x3f
	.quad	.LFB166
	.quad	.LFE166
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x536
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x538
	.long	0xd1b
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x539
	.long	0x3f
	.byte	0x0
	.uleb128 0x22
	.long	0x26e5
	.byte	0x1
	.long	.LASF150
	.byte	0x1
	.value	0x547
	.byte	0x1
	.long	0x3f
	.quad	.LFB167
	.quad	.LFE167
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x546
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x548
	.long	0xd1b
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x549
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x273d
	.byte	0x1
	.long	.LASF151
	.byte	0x1
	.value	0x559
	.byte	0x1
	.quad	.LFB168
	.quad	.LFE168
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x558
	.long	0xae7
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF260
	.byte	0x1
	.value	0x558
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x55a
	.long	0xd1b
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x55b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x276f
	.byte	0x1
	.long	.LASF261
	.byte	0x1
	.value	0x569
	.byte	0x1
	.long	0x3f
	.quad	.LFB169
	.quad	.LFE169
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x568
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x27b9
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.value	0x572
	.byte	0x1
	.quad	.LFB170
	.quad	.LFE170
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x571
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF97
	.byte	0x1
	.value	0x571
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x573
	.long	0xd1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x2815
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.value	0x57e
	.byte	0x1
	.long	0x3f
	.quad	.LFB171
	.quad	.LFE171
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x57d
	.long	0xae7
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.string	"req"
	.byte	0x1
	.value	0x57d
	.long	0x38
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x57d
	.long	0xf9
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.string	"drv"
	.byte	0x1
	.value	0x57f
	.long	0xd1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3c
	.long	.LASF262
	.byte	0xc
	.byte	0x91
	.long	0x384
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF263
	.byte	0xc
	.byte	0x92
	.long	0x384
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF264
	.byte	0x3
	.byte	0x7
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF265
	.byte	0x3
	.byte	0x8
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF266
	.byte	0x3
	.byte	0x9
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF267
	.byte	0x3
	.byte	0xa
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF268
	.byte	0x3
	.byte	0xb
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF269
	.byte	0x3
	.byte	0xc
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF270
	.byte	0x3
	.byte	0xd
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF271
	.byte	0x3
	.byte	0xe
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF272
	.byte	0x3
	.byte	0xf
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF273
	.byte	0x3
	.byte	0x10
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF274
	.byte	0x3
	.byte	0x11
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF275
	.byte	0x3
	.byte	0x12
	.long	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF276
	.byte	0x1
	.byte	0x3b
	.long	0xae7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
	.uleb128 0x1c
	.long	.LASF277
	.byte	0x1
	.byte	0x3c
	.long	0xd1b
	.byte	0x9
	.byte	0x3
	.quad	first_drv
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x5
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.long	0x4e2
	.value	0x2
	.long	.Ldebug_info0
	.long	0x28f7
	.long	0xd84
	.string	"path_is_absolute"
	.long	0xdc0
	.string	"path_combine"
	.long	0xe64
	.string	"bdrv_new"
	.long	0xeb4
	.string	"bdrv_find_format"
	.long	0xf1a
	.string	"bdrv_create"
	.long	0xf7f
	.string	"get_tmp_filename"
	.long	0x104e
	.string	"bdrv_getlength"
	.long	0x108e
	.string	"bdrv_close"
	.long	0x10bc
	.string	"bdrv_delete"
	.long	0x10ea
	.string	"bdrv_read"
	.long	0x1174
	.string	"bdrv_write"
	.long	0x120a
	.string	"bdrv_commit"
	.long	0x129d
	.string	"bdrv_pread"
	.long	0x13dd
	.string	"bdrv_open2"
	.long	0x160c
	.string	"bdrv_open"
	.long	0x165a
	.string	"bdrv_file_open"
	.long	0x16c4
	.string	"bdrv_pwrite"
	.long	0x1804
	.string	"bdrv_truncate"
	.long	0x1852
	.string	"bdrv_get_geometry"
	.long	0x18a2
	.string	"bdrv_set_boot_sector"
	.long	0x18ec
	.string	"bdrv_set_geometry_hint"
	.long	0x1944
	.string	"bdrv_set_type_hint"
	.long	0x1980
	.string	"bdrv_set_translation_hint"
	.long	0x19bc
	.string	"bdrv_get_geometry_hint"
	.long	0x1a14
	.string	"bdrv_get_type_hint"
	.long	0x1a46
	.string	"bdrv_get_translation_hint"
	.long	0x1a78
	.string	"bdrv_is_removable"
	.long	0x1aaa
	.string	"bdrv_is_read_only"
	.long	0x1adc
	.string	"bdrv_is_sg"
	.long	0x1b0e
	.string	"bdrv_set_change_cb"
	.long	0x1b58
	.string	"bdrv_is_encrypted"
	.long	0x1b8a
	.string	"bdrv_set_key"
	.long	0x1bd8
	.string	"bdrv_get_format"
	.long	0x1c22
	.string	"bdrv_iterate_format"
	.long	0x1c6c
	.string	"bdrv_find"
	.long	0x1cd6
	.string	"bdrv_iterate"
	.long	0x1d1f
	.string	"bdrv_get_device_name"
	.long	0x1d51
	.string	"bdrv_flush"
	.long	0x1d7f
	.string	"bdrv_info"
	.long	0x1dad
	.string	"bdrv_info_stats"
	.long	0x1ddb
	.string	"bdrv_get_backing_filename"
	.long	0x1e25
	.string	"bdrv_write_compressed"
	.long	0x1e8f
	.string	"bdrv_get_info"
	.long	0x1edd
	.string	"bdrv_snapshot_create"
	.long	0x1f2b
	.string	"bdrv_snapshot_goto"
	.long	0x1f79
	.string	"bdrv_snapshot_delete"
	.long	0x1fc7
	.string	"bdrv_snapshot_list"
	.long	0x2015
	.string	"get_human_readable_size"
	.long	0x20a9
	.string	"bdrv_snapshot_dump"
	.long	0x2151
	.string	"bdrv_aio_read"
	.long	0x21e4
	.string	"bdrv_aio_write"
	.long	0x2278
	.string	"bdrv_aio_cancel"
	.long	0x22b5
	.string	"qemu_aio_release"
	.long	0x233c
	.string	"qemu_aio_get"
	.long	0x262f
	.string	"bdrv_init"
	.long	0x264b
	.string	"bdrv_is_inserted"
	.long	0x2697
	.string	"bdrv_media_changed"
	.long	0x26e5
	.string	"bdrv_eject"
	.long	0x273d
	.string	"bdrv_is_locked"
	.long	0x276f
	.string	"bdrv_set_locked"
	.long	0x27b9
	.string	"bdrv_ioctl"
	.long	0x28cb
	.string	"bdrv_first"
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"translation"
.LASF90:
	.string	"st_ctim"
.LASF9:
	.string	"size_t"
.LASF67:
	.string	"tm_hour"
.LASF86:
	.string	"st_blksize"
.LASF180:
	.string	"__s2_len"
.LASF94:
	.string	"total_sectors"
.LASF132:
	.string	"bdrv_set_key"
.LASF163:
	.string	"date_nsec"
.LASF39:
	.string	"_IO_save_end"
.LASF139:
	.string	"bdrv_pread"
.LASF226:
	.string	"bdrv_is_read_only"
.LASF171:
	.string	"path"
.LASF114:
	.string	"cyls"
.LASF89:
	.string	"st_mtim"
.LASF228:
	.string	"bdrv_set_change_cb"
.LASF32:
	.string	"_IO_write_base"
.LASF261:
	.string	"bdrv_is_locked"
.LASF221:
	.string	"pheads"
.LASF279:
	.string	"block.c"
.LASF48:
	.string	"_lock"
.LASF188:
	.string	"bdrv_delete"
.LASF275:
	.string	"bdrv_parallels"
.LASF244:
	.string	"suffixes"
.LASF76:
	.string	"stat"
.LASF37:
	.string	"_IO_save_base"
.LASF124:
	.string	"bdrv_probe"
.LASF155:
	.string	"BlockDriverInfo"
.LASF45:
	.string	"_cur_column"
.LASF10:
	.string	"__dev_t"
.LASF55:
	.string	"_mode"
.LASF207:
	.string	"__path"
.LASF116:
	.string	"secs"
.LASF96:
	.string	"removable"
.LASF35:
	.string	"_IO_buf_base"
.LASF164:
	.string	"vm_clock_nsec"
.LASF167:
	.string	"BlockDriverAIOCBSync"
.LASF201:
	.string	"tmp_filename"
.LASF2:
	.string	"long int"
.LASF73:
	.string	"tm_isdst"
.LASF236:
	.string	"bdrv_info"
.LASF178:
	.string	"drv1"
.LASF241:
	.string	"snapshot_id"
.LASF58:
	.string	"_IO_marker"
.LASF101:
	.string	"opaque"
.LASF248:
	.string	"clock_buf"
.LASF276:
	.string	"bdrv_first"
.LASF161:
	.string	"vm_state_size"
.LASF168:
	.string	"common"
.LASF233:
	.string	"bdrv_find"
.LASF154:
	.string	"free_aiocb"
.LASF269:
	.string	"bdrv_cloop"
.LASF140:
	.string	"bdrv_pwrite"
.LASF235:
	.string	"bdrv_get_device_name"
.LASF19:
	.string	"__blksize_t"
.LASF197:
	.string	"tmp_buf"
.LASF27:
	.string	"_IO_FILE"
.LASF220:
	.string	"pcyls"
.LASF81:
	.string	"st_uid"
.LASF271:
	.string	"bdrv_bochs"
.LASF186:
	.string	"find_protocol"
.LASF253:
	.string	"bdrv_aio_write_em"
.LASF110:
	.string	"rd_bytes"
.LASF108:
	.string	"backing_hd"
.LASF135:
	.string	"bdrv_aio_write"
.LASF6:
	.string	"unsigned char"
.LASF84:
	.string	"st_rdev"
.LASF150:
	.string	"bdrv_media_changed"
.LASF205:
	.string	"score"
.LASF93:
	.string	"BlockDriverState"
.LASF141:
	.string	"bdrv_truncate"
.LASF251:
	.string	"qemu_aio_get"
.LASF169:
	.string	"path_is_absolute"
.LASF243:
	.string	"get_human_readable_size"
.LASF107:
	.string	"media_changed"
.LASF21:
	.string	"time_t"
.LASF105:
	.string	"backing_file"
.LASF264:
	.string	"bdrv_raw"
.LASF183:
	.string	"get_tmp_filename"
.LASF5:
	.string	"char"
.LASF129:
	.string	"bdrv_create"
.LASF138:
	.string	"protocol_name"
.LASF224:
	.string	"bdrv_get_translation_hint"
.LASF57:
	.string	"_IO_lock_t"
.LASF136:
	.string	"bdrv_aio_cancel"
.LASF209:
	.string	"bdrv_file_open"
.LASF98:
	.string	"encrypted"
.LASF277:
	.string	"first_drv"
.LASF104:
	.string	"filename"
.LASF282:
	.string	"bdrv_init"
.LASF14:
	.string	"__mode_t"
.LASF182:
	.string	"flags"
.LASF145:
	.string	"bdrv_snapshot_goto"
.LASF66:
	.string	"tm_min"
.LASF29:
	.string	"_IO_read_ptr"
.LASF214:
	.string	"bdrv_set_boot_sector"
.LASF200:
	.string	"open_flags"
.LASF128:
	.string	"bdrv_close"
.LASF252:
	.string	"bdrv_aio_read_em"
.LASF61:
	.string	"_pos"
.LASF262:
	.string	"stdin"
.LASF225:
	.string	"bdrv_is_removable"
.LASF247:
	.string	"date_buf"
.LASF263:
	.string	"stdout"
.LASF185:
	.string	"bdrv_register"
.LASF40:
	.string	"_markers"
.LASF113:
	.string	"wr_ops"
.LASF146:
	.string	"bdrv_snapshot_delete"
.LASF273:
	.string	"bdrv_vvfat"
.LASF237:
	.string	"bdrv_info_stats"
.LASF78:
	.string	"st_ino"
.LASF119:
	.string	"device_name"
.LASF115:
	.string	"heads"
.LASF227:
	.string	"bdrv_is_sg"
.LASF65:
	.string	"tm_sec"
.LASF130:
	.string	"bdrv_flush"
.LASF82:
	.string	"st_gid"
.LASF127:
	.string	"bdrv_write"
.LASF170:
	.string	"path_combine"
.LASF211:
	.string	"bdrv_get_geometry"
.LASF202:
	.string	"backing_filename"
.LASF230:
	.string	"bdrv_get_format"
.LASF166:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF210:
	.string	"bdrv_pwrite_em"
.LASF218:
	.string	"bdrv_set_translation_hint"
.LASF43:
	.string	"_flags2"
.LASF85:
	.string	"st_size"
.LASF191:
	.string	"bdrv_commit"
.LASF31:
	.string	"_IO_read_base"
.LASF56:
	.string	"_unused2"
.LASF267:
	.string	"bdrv_qcow"
.LASF238:
	.string	"bdrv_get_backing_filename"
.LASF26:
	.string	"timespec"
.LASF103:
	.string	"boot_sector_data"
.LASF255:
	.string	"blockacb"
.LASF123:
	.string	"instance_size"
.LASF157:
	.string	"vm_state_offset"
.LASF44:
	.string	"_old_offset"
.LASF20:
	.string	"__blkcnt_t"
.LASF13:
	.string	"__ino_t"
.LASF250:
	.string	"bdrv_aio_bh_cb"
.LASF3:
	.string	"long long int"
.LASF260:
	.string	"eject_flag"
.LASF69:
	.string	"tm_mon"
.LASF194:
	.string	"buf1"
.LASF102:
	.string	"boot_sector_enabled"
.LASF176:
	.string	"bdrv_new"
.LASF189:
	.string	"sector_num"
.LASF34:
	.string	"_IO_write_end"
.LASF95:
	.string	"read_only"
.LASF133:
	.string	"bdrv_make_empty"
.LASF198:
	.string	"count"
.LASF274:
	.string	"bdrv_qcow2"
.LASF195:
	.string	"count1"
.LASF203:
	.string	"total_size"
.LASF59:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF143:
	.string	"bdrv_write_compressed"
.LASF192:
	.string	"sector"
.LASF265:
	.string	"bdrv_host_device"
.LASF106:
	.string	"is_temporary"
.LASF278:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF126:
	.string	"bdrv_read"
.LASF100:
	.string	"change_opaque"
.LASF181:
	.string	"size_in_sectors"
.LASF112:
	.string	"rd_ops"
.LASF83:
	.string	"__pad0"
.LASF50:
	.string	"__pad1"
.LASF51:
	.string	"__pad2"
.LASF52:
	.string	"__pad3"
.LASF53:
	.string	"__pad4"
.LASF54:
	.string	"__pad5"
.LASF60:
	.string	"_sbuf"
.LASF254:
	.string	"bdrv_aio_cancel_em"
.LASF148:
	.string	"bdrv_get_info"
.LASF174:
	.string	"base_path"
.LASF147:
	.string	"bdrv_snapshot_list"
.LASF199:
	.string	"bdrv_open2"
.LASF28:
	.string	"_flags"
.LASF193:
	.string	"offset"
.LASF151:
	.string	"bdrv_eject"
.LASF213:
	.string	"length"
.LASF79:
	.string	"st_nlink"
.LASF118:
	.string	"type"
.LASF91:
	.string	"__unused"
.LASF268:
	.string	"bdrv_vmdk"
.LASF179:
	.string	"__s1_len"
.LASF120:
	.string	"next"
.LASF111:
	.string	"wr_bytes"
.LASF77:
	.string	"st_dev"
.LASF177:
	.string	"bdrv_find_format"
.LASF68:
	.string	"tm_mday"
.LASF49:
	.string	"_offset"
.LASF223:
	.string	"bdrv_get_type_hint"
.LASF231:
	.string	"buf_size"
.LASF184:
	.string	"size"
.LASF25:
	.string	"long long unsigned int"
.LASF62:
	.string	"uint8_t"
.LASF16:
	.string	"__off_t"
.LASF266:
	.string	"bdrv_cow"
.LASF41:
	.string	"_chain"
.LASF88:
	.string	"st_atim"
.LASF257:
	.string	"bdrv_read_em"
.LASF240:
	.string	"sn_info"
.LASF125:
	.string	"bdrv_open"
.LASF232:
	.string	"bdrv_iterate_format"
.LASF259:
	.string	"bdrv_write_em"
.LASF229:
	.string	"bdrv_is_encrypted"
.LASF72:
	.string	"tm_yday"
.LASF99:
	.string	"change_cb"
.LASF142:
	.string	"bdrv_getlength"
.LASF18:
	.string	"__time_t"
.LASF149:
	.string	"bdrv_is_inserted"
.LASF249:
	.string	"qemu_aio_release"
.LASF38:
	.string	"_IO_backup_base"
.LASF47:
	.string	"_shortbuf"
.LASF234:
	.string	"bdrv_iterate"
.LASF242:
	.string	"psn_info"
.LASF172:
	.string	"dest"
.LASF219:
	.string	"bdrv_get_geometry_hint"
.LASF158:
	.string	"QEMUSnapshotInfo"
.LASF17:
	.string	"__off64_t"
.LASF137:
	.string	"aiocb_size"
.LASF159:
	.string	"id_str"
.LASF246:
	.string	"bdrv_snapshot_dump"
.LASF280:
	.string	"/home/remco/Projects/Argos/src"
.LASF92:
	.string	"QEMUBH"
.LASF272:
	.string	"bdrv_vpc"
.LASF36:
	.string	"_IO_buf_end"
.LASF160:
	.string	"name"
.LASF134:
	.string	"bdrv_aio_read"
.LASF74:
	.string	"tm_gmtoff"
.LASF8:
	.string	"short int"
.LASF109:
	.string	"sync_aiocb"
.LASF64:
	.string	"uint64_t"
.LASF270:
	.string	"bdrv_dmg"
.LASF24:
	.string	"tv_nsec"
.LASF206:
	.string	"score_max"
.LASF46:
	.string	"_vtable_offset"
.LASF153:
	.string	"bdrv_ioctl"
.LASF258:
	.string	"async_ret"
.LASF173:
	.string	"dest_size"
.LASF196:
	.string	"bdrv_pread_em"
.LASF7:
	.string	"signed char"
.LASF75:
	.string	"tm_zone"
.LASF216:
	.string	"bdrv_set_geometry_hint"
.LASF12:
	.string	"__gid_t"
.LASF80:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF30:
	.string	"_IO_read_end"
.LASF121:
	.string	"BlockDriver"
.LASF71:
	.string	"tm_wday"
.LASF144:
	.string	"bdrv_snapshot_create"
.LASF87:
	.string	"st_blocks"
.LASF131:
	.string	"bdrv_is_allocated"
.LASF162:
	.string	"date_sec"
.LASF63:
	.string	"uint32_t"
.LASF97:
	.string	"locked"
.LASF212:
	.string	"nb_sectors_ptr"
.LASF42:
	.string	"_fileno"
.LASF152:
	.string	"bdrv_set_locked"
.LASF122:
	.string	"format_name"
.LASF70:
	.string	"tm_year"
.LASF4:
	.string	"short unsigned int"
.LASF156:
	.string	"cluster_size"
.LASF187:
	.string	"protocol"
.LASF281:
	.string	"fail"
.LASF245:
	.string	"base"
.LASF165:
	.string	"BlockDriverAIOCB"
.LASF204:
	.string	"find_image_format"
.LASF33:
	.string	"_IO_write_ptr"
.LASF190:
	.string	"nb_sectors"
.LASF256:
	.string	"bdrv_rw_em_cb"
.LASF22:
	.string	"int64_t"
.LASF208:
	.string	"__statbuf"
.LASF222:
	.string	"psecs"
.LASF15:
	.string	"__nlink_t"
.LASF215:
	.string	"data"
.LASF175:
	.string	"bdrv"
.LASF23:
	.string	"tv_sec"
.LASF239:
	.string	"filename_size"
.LASF217:
	.string	"bdrv_set_type_hint"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
