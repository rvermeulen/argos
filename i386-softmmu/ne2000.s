	.file	"ne2000.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 4
	.type	argos_ne2000_netidx, @object
	.size	argos_ne2000_netidx, 4
argos_ne2000_netidx:
	.long	1
	.text
	.p2align 4,,15
	.type	ne2000_reset, @function
ne2000_reset:
.LFB200:
	.file 1 "/home/remco/Projects/Argos/src/hw/ne2000.c"
	.loc 1 263 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 267 0
	movl	72(%rdi), %eax
	.loc 1 266 0
	movb	$-128, 26(%rdi)
	.loc 1 268 0
	movb	$87, 92(%rdi)
	.loc 1 269 0
	movb	$87, 93(%rdi)
	.loc 1 272 0
	movl	$15, %r8d
	.loc 1 267 0
	movl	%eax, 78(%rdi)
	movzwl	76(%rdi), %eax
	movw	%ax, 82(%rdi)
	.p2align 4,,7
.L5:
	.loc 1 273 0
	movslq	%r8d,%rsi
	leal	(%r8,%r8), %edx
	movzbl	78(%rsi,%rdi), %eax
	movslq	%edx,%rcx
	.loc 1 274 0
	incl	%edx
	.loc 1 272 0
	decl	%r8d
	.loc 1 274 0
	movslq	%edx,%rdx
	.loc 1 273 0
	movb	%al, 78(%rcx,%rdi)
	.loc 1 274 0
	movzbl	78(%rsi,%rdi), %eax
	movb	%al, 78(%rdx,%rdi)
	.loc 1 272 0
	jns	.L5
	.loc 1 277 0
	addq	$49232, %rdi
	movl	$196608, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 278 0
	movl	$1, argos_ne2000_netidx(%rip)
	addq	$8, %rsp
	ret
.LFE200:
	.size	ne2000_reset, .-ne2000_reset
	.p2align 4,,15
	.type	ne2000_update_irq, @function
ne2000_update_irq:
.LFB201:
	.loc 1 285 0
	.loc 1 287 0
	movzbl	28(%rdi), %eax
	.loc 1 292 0
	xorl	%esi, %esi
	.loc 1 287 0
	andb	26(%rdi), %al
	.loc 1 292 0
	movq	48(%rdi), %rdi
	testb	$127, %al
	setne	%sil
	jmp	qemu_set_irq
.LFE201:
	.size	ne2000_update_irq, .-ne2000_update_irq
	.p2align 4,,15
	.type	ne2000_buffer_full, @function
ne2000_buffer_full:
.LFB203:
	.loc 1 320 0
	.loc 1 323 0
	movzbl	35(%rdi), %eax
	.loc 1 324 0
	movzbl	12(%rdi), %edx
	.loc 1 323 0
	sall	$8, %eax
	.loc 1 324 0
	sall	$8, %edx
	.loc 1 325 0
	cmpl	%edx, %eax
	.loc 1 326 0
	movl	%edx, %ecx
	.loc 1 325 0
	jl	.L14
	.loc 1 328 0
	movl	8(%rdi), %ecx
	subl	4(%rdi), %ecx
	subl	%edx, %eax
.L14:
	subl	%eax, %ecx
	.loc 1 330 0
	xorl	%eax, %eax
	cmpl	$1517, %ecx
	setle	%al
	.loc 1 332 0
	ret
.LFE203:
	.size	ne2000_buffer_full, .-ne2000_buffer_full
	.p2align 4,,15
	.type	ne2000_can_receive, @function
ne2000_can_receive:
.LFB204:
	.loc 1 335 0
	.loc 1 338 0
	testb	$1, (%rdi)
	.loc 1 339 0
	movl	$1, %eax
	.loc 1 338 0
	jne	.L15
	.loc 1 340 0
	call	ne2000_buffer_full
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L15:
	.loc 1 341 0
	rep ; ret
.LFE204:
	.size	ne2000_can_receive, .-ne2000_can_receive
	.section	.rodata
	.type	broadcast_macaddr.0, @object
	.size	broadcast_macaddr.0, 6
broadcast_macaddr.0:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Error writing net trace data\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error writing net trace data header\n"
	.text
	.p2align 4,,15
	.type	ne2000_receive, @function
ne2000_receive:
.LFB205:
	.loc 1 346 0
	pushq	%r15
.LCFI1:
	movl	%edx, %r15d
	pushq	%r14
.LCFI2:
	movq	%rsi, %r14
	pushq	%r13
.LCFI3:
	pushq	%r12
.LCFI4:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI5:
	pushq	%rbx
.LCFI6:
	subq	$88, %rsp
.LCFI7:
	.loc 1 362 0
	testb	$1, (%rdi)
	jne	.L17
	call	ne2000_buffer_full
	testl	%eax, %eax
	jne	.L17
	.loc 1 366 0
	movzbl	25(%r12), %r8d
	testb	$16, %r8b
	.p2align 4,,2
	je	.L67
.L21:
	.loc 1 394 0
	cmpl	$59, %r15d
	.p2align 4,,3
	jle	.L68
.L41:
	.loc 1 401 0
	movzbl	35(%r12), %ebp
	.loc 1 405 0
	leal	263(%r15), %eax
	.loc 1 403 0
	leal	4(%r15), %ecx
	.loc 1 405 0
	xorb	%al, %al
	.loc 1 401 0
	sall	$8, %ebp
	.loc 1 405 0
	addl	%ebp, %eax
	movl	%eax, 8(%rsp)
	.loc 1 406 0
	movl	8(%r12), %eax
	cmpl	8(%rsp), %eax
	ja	.L42
	.loc 1 407 0
	subl	4(%r12), %eax
	subl	%eax, 8(%rsp)
.L42:
	.loc 1 410 0
	movb	$1, 24(%r12)
	.loc 1 412 0
	testb	$1, (%r14)
	.loc 1 409 0
	mov	%ebp, %ebx
	leaq	(%rbx,%r12), %rsi
	leaq	78(%rsi), %rdx
	.loc 1 412 0
	je	.L43
	.loc 1 413 0
	movb	$33, 24(%r12)
.L43:
	.loc 1 414 0
	movzbl	24(%r12), %eax
	.loc 1 422 0
	leaq	14(%rsp), %rdi
	.loc 1 414 0
	movb	%al, 78(%rsi)
	.loc 1 415 0
	movl	8(%rsp), %eax
	.loc 1 422 0
	movl	$2, %esi
	.loc 1 416 0
	movb	%cl, 2(%rdx)
	.loc 1 417 0
	shrl	$8, %ecx
	movb	%cl, 3(%rdx)
	.loc 1 415 0
	shrl	$8, %eax
	movb	%al, 1(%rdx)
	.loc 1 422 0
	movq	argos_nt_fl(%rip), %rcx
	.loc 1 420 0
	movl	%r15d, %eax
	sarl	$8, %eax
	.loc 1 422 0
	movl	$1, %edx
	.loc 1 419 0
	movb	%r15b, 14(%rsp)
	.loc 1 420 0
	movb	%al, 15(%rsp)
	.loc 1 422 0
	call	fwrite
	decq	%rax
	jne	.L69
	.loc 1 431 0
	addl	$4, %ebp
	.loc 1 467 0
	testl	%r15d, %r15d
	.loc 1 427 0
	movq	$0, 49232(%r12,%rbx,4)
	movq	$0, 49240(%r12,%rbx,4)
	.loc 1 467 0
	jle	.L62
	movl	8(%r12), %ecx
	.p2align 4,,7
.L56:
	.loc 1 436 0
	movl	%ecx, %edx
	xorl	%eax, %eax
	.loc 1 442 0
	mov	%ebp, %edi
	.loc 1 436 0
	subl	%ebp, %edx
	cmpl	%ebp, %ecx
	.loc 1 442 0
	leaq	78(%rdi,%r12), %rdi
	.loc 1 436 0
	cmovae	%edx, %eax
	.loc 1 442 0
	movq	%r14, %rsi
	.loc 1 441 0
	cmpl	%eax, %r15d
	movl	%eax, %ebx
	cmovbe	%r15d, %ebx
	.loc 1 442 0
	mov	%ebx, %r13d
	movq	%r13, %rdx
	call	memcpy
	.loc 1 445 0
	movq	argos_nt_fl(%rip), %rcx
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	fwrite
	decq	%rax
	jne	.L70
	.loc 1 450 0
	xorl	%esi, %esi
	cmpl	%ebx, %esi
	jae	.L64
	movl	argos_ne2000_netidx(%rip), %ecx
	.p2align 4,,7
.L54:
	.loc 1 456 0
	leal	(%rbp,%rsi), %eax
	andl	$1073741823, %ecx
	.loc 1 450 0
	incl	%esi
	.loc 1 456 0
	movl	49232(%r12,%rax,4), %edx
	andl	$-1073741824, %edx
	orl	%ecx, %edx
	movl	%edx, 49232(%r12,%rax,4)
	.loc 1 457 0
	movl	argos_ne2000_netidx(%rip), %eax
	incl	%eax
	.loc 1 450 0
	cmpl	%ebx, %esi
	.loc 1 457 0
	movl	%eax, %ecx
	movl	%eax, argos_ne2000_netidx(%rip)
	.loc 1 450 0
	jb	.L54
.L64:
	.loc 1 465 0
	movl	8(%r12), %ecx
	.loc 1 464 0
	addl	%ebx, %ebp
	.loc 1 463 0
	addq	%r13, %r14
	.loc 1 465 0
	cmpl	%ebp, %ecx
	je	.L71
.L55:
	.loc 1 467 0
	subl	%ebx, %r15d
	testl	%r15d, %r15d
	jg	.L56
.L62:
	.loc 1 469 0
	shrl	$8, 8(%rsp)
	movzbl	8(%rsp), %eax
	movb	%al, 35(%r12)
	.loc 1 473 0
	movq	argos_nt_fl(%rip), %rdi
	call	fflush
	.loc 1 475 0
	orb	$1, 26(%r12)
	.loc 1 476 0
	movq	%r12, %rdi
	call	ne2000_update_irq
	.p2align 4,,7
.L17:
	.loc 1 477 0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L67:
	.loc 1 369 0
	movl	$6, %eax
	movl	$broadcast_macaddr.0, %edi
	movq	%r14, %rsi
	cld
	movq	%rax, %rcx
	repz
	cmpsb
	jne	.L22
	.loc 1 371 0
	andl	$4, %r8d
.L65:
	.loc 1 378 0
	jne	.L21
	jmp	.L17
.L71:
	.loc 1 466 0
	movl	4(%r12), %ebp
	.p2align 4,,7
	jmp	.L55
.L22:
	.loc 1 373 0
	movzbl	(%r14), %eax
	testb	$1, %al
	.p2align 4,,5
	je	.L25
	.loc 1 375 0
	andl	$8, %r8d
	.p2align 4,,3
	je	.L17
.LBB2:
	.loc 1 300 0
	movq	%r14, %r8
.LBB3:
	.loc 1 305 0
	movl	$-1, %esi
	.loc 1 306 0
	xorl	%r9d, %r9d
.L35:
	.loc 1 307 0
	movzbl	(%r8), %eax
	movl	$7, %edi
	incq	%r8
	movl	%eax, %ecx
	.p2align 4,,7
.L34:
	.loc 1 309 0
	movl	%ecx, %eax
	movl	%esi, %edx
	.loc 1 311 0
	shrb	%cl
	.loc 1 309 0
	andl	$1, %eax
	shrl	$31, %edx
	.loc 1 310 0
	addl	%esi, %esi
	.loc 1 312 0
	xorl	%eax, %edx
	je	.L32
	.loc 1 313 0
	xorl	$79764918, %esi
	orl	%edx, %esi
.L32:
	decl	%edi
	jns	.L34
	.loc 1 306 0
	incl	%r9d
	cmpl	$5, %r9d
	jle	.L35
	.loc 1 315 0
	movl	%esi, %ecx
.LBE3:
.LBE2:
	.loc 1 378 0
	shrl	$29, %esi
	mov	%esi, %eax
.LBB4:
.LBB5:
	.loc 1 315 0
	shrl	$26, %ecx
.LBE5:
.LBE4:
	.loc 1 378 0
	movzbl	36(%rax,%r12), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	testb	$1, %al
	jmp	.L65
.L68:
	.loc 1 395 0
	leaq	16(%rsp), %rbx
	movslq	%r15d,%rbp
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	.loc 1 397 0
	movq	%rbx, %r14
	.loc 1 395 0
	call	memcpy
	.loc 1 396 0
	movl	$60, %edx
	leaq	(%rbx,%rbp), %rdi
	xorl	%esi, %esi
	subl	%r15d, %edx
	.loc 1 398 0
	movl	$60, %r15d
	.loc 1 396 0
	movslq	%edx,%rdx
	call	memset
	jmp	.L41
.L25:
	.loc 1 380 0
	cmpb	%al, 78(%r12)
	jne	.L17
	movzbl	1(%r14), %eax
	cmpb	%al, 80(%r12)
	.p2align 4,,5
	jne	.L17
	movzbl	2(%r14), %eax
	cmpb	%al, 82(%r12)
	jne	.L17
	movzbl	3(%r14), %eax
	cmpb	%al, 84(%r12)
	jne	.L17
	movzbl	4(%r14), %eax
	cmpb	%al, 86(%r12)
	jne	.L17
	movzbl	5(%r14), %eax
	cmpb	%al, 88(%r12)
	jne	.L17
	.p2align 4,,3
	jmp	.L21
	.p2align 4,,7
.L70:
	.loc 1 447 0
	movq	stderr(%rip), %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
.L66:
	call	fwrite
	.loc 1 448 0
	movl	$1, %edi
	call	exit
.L69:
	.loc 1 424 0
	movq	stderr(%rip), %rcx
	movl	$36, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	jmp	.L66
.LFE205:
	.size	ne2000_receive, .-ne2000_receive
	.p2align 4,,15
	.type	ne2000_ioport_write, @function
ne2000_ioport_write:
.LFB206:
	.loc 1 480 0
	movq	%rbx, -16(%rsp)
.LCFI8:
	movq	%rbp, -8(%rsp)
.LCFI9:
	subq	$24, %rsp
.LCFI10:
	.loc 1 488 0
	andl	$15, %esi
	.loc 1 480 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 488 0
	jne	.L73
	.loc 1 491 0
	testb	$1, %dl
	.loc 1 490 0
	movb	%dl, (%rbx)
	.loc 1 491 0
	jne	.L72
	.loc 1 492 0
	movzbl	26(%rdi), %eax
	andl	$127, %eax
	.loc 1 494 0
	testb	$24, %dl
	jne	.L103
.L100:
	movb	%al, 26(%rbx)
.L75:
	.loc 1 499 0
	andl	$4, %ebp
	je	.L72
	.loc 1 500 0
	movzbl	14(%rbx), %ecx
	.loc 1 505 0
	movzwl	16(%rbx), %edx
	.loc 1 500 0
	sall	$8, %ecx
	.loc 1 503 0
	leal	-32768(%rcx), %eax
	cmpl	$49152, %ecx
	cmovge	%eax, %ecx
	.loc 1 505 0
	leal	(%rdx,%rcx), %eax
	cmpl	$49152, %eax
	jle	.L104
.L78:
	.loc 1 510 0
	orb	$2, 26(%rbx)
	.loc 1 511 0
	andb	$-5, (%rbx)
	.loc 1 509 0
	movb	$1, 13(%rbx)
.L102:
	.loc 1 561 0
	movq	%rbx, %rdi
	.loc 1 574 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.loc 1 561 0
	jmp	ne2000_update_irq
	.p2align 4,,7
.L73:
	.loc 1 516 0
	movzbl	(%rdi), %eax
	shrb	$6, %al
	movzbl	%al, %edx
	.loc 1 517 0
	sall	$4, %edx
	orl	%esi, %edx
	.loc 1 518 0
	cmpl	$31, %edx
	ja	.L72
	mov	%edx, %eax
	jmp	*.L98(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L98:
	.quad	.L72
	.quad	.L81
	.quad	.L82
	.quad	.L83
	.quad	.L85
	.quad	.L86
	.quad	.L87
	.quad	.L94
	.quad	.L88
	.quad	.L89
	.quad	.L90
	.quad	.L91
	.quad	.L92
	.quad	.L72
	.quad	.L93
	.quad	.L84
	.quad	.L72
	.quad	.L95
	.quad	.L95
	.quad	.L95
	.quad	.L95
	.quad	.L95
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.quad	.L97
	.text
.L97:
	.loc 1 570 0
	leal	-24(%rdx), %eax
	cltq
	movb	%bpl, 36(%rax,%rdi)
	.p2align 4,,7
.L72:
	.loc 1 574 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L103:
	.loc 1 494 0
	cmpw	$0, 18(%rdi)
	jne	.L100
	.loc 1 496 0
	orl	$64, %eax
	movb	%al, 26(%rdi)
	.loc 1 497 0
	call	ne2000_update_irq
	.p2align 4,,2
	jmp	.L75
.L81:
	.loc 1 520 0
	sall	$8, %ebp
	movl	%ebp, 4(%rdi)
	jmp	.L72
.L82:
	.loc 1 523 0
	sall	$8, %ebp
	movl	%ebp, 8(%rdi)
	.p2align 4,,3
	jmp	.L72
.L83:
	.loc 1 526 0
	movb	%bpl, 12(%rdi)
	jmp	.L72
.L85:
	.loc 1 533 0
	movb	%bpl, 14(%rdi)
	.p2align 4,,3
	jmp	.L72
.L86:
	.loc 1 536 0
	movzwl	16(%rdi), %eax
	xorb	%al, %al
	orl	%ebp, %eax
	movw	%ax, 16(%rdi)
	jmp	.L72
.L87:
	.loc 1 539 0
	movb	%bpl, 17(%rdi)
	jmp	.L72
.L94:
	.loc 1 560 0
	movl	%ebp, %eax
	andl	$127, %eax
	notl	%eax
	andb	%al, 26(%rdi)
	jmp	.L102
.L88:
	.loc 1 542 0
	movl	20(%rdi), %eax
	andl	$65280, %eax
	.loc 1 545 0
	orl	%ebp, %eax
	movl	%eax, 20(%rbx)
	jmp	.L72
.L89:
	movzbl	20(%rdi), %eax
	sall	$8, %ebp
	orl	%ebp, %eax
	movl	%eax, 20(%rbx)
	jmp	.L72
.L90:
	.loc 1 548 0
	movzwl	18(%rdi), %eax
	xorb	%al, %al
	orl	%ebp, %eax
	movw	%ax, 18(%rdi)
	jmp	.L72
.L91:
	.loc 1 551 0
	movb	%bpl, 19(%rdi)
	jmp	.L72
.L92:
	.loc 1 554 0
	movb	%bpl, 25(%rdi)
	jmp	.L72
.L93:
	.loc 1 557 0
	movb	%bpl, 27(%rdi)
	.p2align 4,,5
	jmp	.L72
.L84:
	.loc 1 529 0
	movb	%bpl, 28(%rdi)
	.p2align 4,,5
	jmp	.L102
.L95:
	.loc 1 564 0
	leal	-17(%rdx), %eax
	cltq
	movb	%bpl, 29(%rax,%rdi)
	jmp	.L72
.L96:
	.loc 1 567 0
	movb	%bpl, 35(%rdi)
	jmp	.L72
.L104:
	.loc 1 506 0
	movslq	%ecx,%rsi
	movq	64(%rbx), %rdi
	leaq	78(%rsi,%rbx), %rsi
	call	qemu_send_packet
	jmp	.L78
.LFE206:
	.size	ne2000_ioport_write, .-ne2000_ioport_write
	.p2align 4,,15
	.type	ne2000_ioport_read, @function
ne2000_ioport_read:
.LFB207:
	.loc 1 578 0
	.loc 1 583 0
	andl	$15, %esi
	jne	.L106
	.loc 1 584 0
	movzbl	(%rdi), %eax
	ret
	.p2align 4,,7
.L106:
	.loc 1 586 0
	movzbl	(%rdi), %eax
	shrb	$6, %al
	movzbl	%al, %edx
	.loc 1 587 0
	sall	$4, %edx
	orl	%esi, %edx
	.loc 1 588 0
	leal	-3(%rdx), %eax
	cmpl	$51, %eax
	ja	.L125
	mov	%eax, %eax
	jmp	*.L126(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L126:
	.quad	.L110
	.quad	.L109
	.quad	.L125
	.quad	.L125
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L120
	.quad	.L121
	.quad	.L117
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L125
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L116
	.quad	.L125
	.quad	.L118
	.quad	.L119
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
	.quad	.L125
	.quad	.L125
	.quad	.L122
	.quad	.L125
	.quad	.L124
	.quad	.L124
	.text
	.p2align 4,,7
.L125:
	.loc 1 638 0
	xorl	%eax, %eax
	.loc 1 646 0
	ret
.L124:
	.loc 1 635 0
	movl	$64, %eax
	.loc 1 636 0
	.p2align 4,,6
	ret
.L110:
	.loc 1 593 0
	movzbl	12(%rdi), %eax
	.loc 1 594 0
	.p2align 4,,7
	ret
.L109:
	.loc 1 590 0
	movzbl	13(%rdi), %eax
	.loc 1 591 0
	.p2align 4,,7
	ret
.L111:
	.loc 1 596 0
	movzbl	26(%rdi), %eax
	.loc 1 597 0
	.p2align 4,,7
	ret
.L112:
	.loc 1 599 0
	movzbl	20(%rdi), %eax
	.loc 1 600 0
	.p2align 4,,7
	ret
.L113:
	.loc 1 602 0
	movl	20(%rdi), %eax
	.loc 1 617 0
	shrl	$8, %eax
	.loc 1 618 0
	.p2align 4,,5
	ret
.L120:
	.loc 1 623 0
	movl	$80, %eax
	.loc 1 624 0
	.p2align 4,,5
	ret
.L121:
	.loc 1 626 0
	movl	$67, %eax
	.loc 1 627 0
	.p2align 4,,5
	ret
.L117:
	.loc 1 614 0
	movzbl	24(%rdi), %eax
	.loc 1 615 0
	.p2align 4,,7
	ret
.L114:
	.loc 1 605 0
	leal	-17(%rdx), %eax
	cltq
	movzbl	29(%rax,%rdi), %eax
	.loc 1 606 0
	.p2align 4,,2
	ret
.L115:
	.loc 1 608 0
	movzbl	35(%rdi), %eax
	.loc 1 609 0
	.p2align 4,,2
	ret
.L116:
	.loc 1 611 0
	leal	-24(%rdx), %eax
	cltq
	movzbl	36(%rax,%rdi), %eax
	.loc 1 612 0
	ret
.L118:
	.loc 1 617 0
	movl	4(%rdi), %eax
	shrl	$8, %eax
	.loc 1 618 0
	ret
.L119:
	.loc 1 620 0
	movl	8(%rdi), %eax
	.loc 1 617 0
	shrl	$8, %eax
	.loc 1 618 0
	ret
.L122:
	.loc 1 629 0
	xorl	%eax, %eax
	.loc 1 630 0
	.p2align 4,,3
	ret
.LFE207:
	.size	ne2000_ioport_read, .-ne2000_ioport_read
	.p2align 4,,15
	.type	ne2000_asic_ioport_write, @function
ne2000_asic_ioport_write:
.LFB215:
	.loc 1 737 0
	.loc 1 743 0
	movzwl	18(%rdi), %r8d
	.loc 1 737 0
	movl	%edx, %r9d
	.loc 1 743 0
	testw	%r8w, %r8w
	je	.L128
	.loc 1 745 0
	testb	$1, 27(%rdi)
	je	.L130
.LBB6:
	.loc 1 660 0
	movl	20(%rdi), %ecx
.LBB7:
	.loc 1 661 0
	movl	%ecx, %esi
	andl	$-2, %esi
	.loc 1 662 0
	leal	-16384(%rsi), %eax
	cmpl	$31, %esi
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L150
.L134:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 1 720 0
	addl	$2, %ecx
	.loc 1 723 0
	cmpl	8(%rdi), %ecx
	je	.L151
.L147:
	.loc 1 726 0
	movzwl	%r8w, %eax
	movl	%ecx, 20(%rdi)
	cmpl	$2, %eax
	jle	.L149
	.loc 1 732 0
	leal	-2(%r8), %eax
	movw	%ax, 18(%rdi)
.LBE9:
.LBE8:
	ret
	.p2align 4,,7
.L130:
.LBB10:
	.loc 1 650 0
	movl	20(%rdi), %ecx
.LBB11:
	.loc 1 651 0
	leal	-16384(%rcx), %eax
	cmpl	$31, %ecx
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L142
	.loc 1 653 0
	mov	%ecx, %eax
	movb	%r9b, 78(%rax,%rdi)
.LBB12:
.LBB13:
	.loc 1 202 0
	movl	$0, 49232(%rdi,%rax,4)
.L142:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
.LBB14:
.LBB15:
	.loc 1 720 0
	leal	1(%rcx), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
	je	.L152
.L148:
	movl	%eax, 20(%rdi)
	.loc 1 726 0
	movzwl	%r8w, %eax
	decl	%eax
	jle	.L149
	.loc 1 732 0
	leal	-1(%r8), %eax
	movw	%ax, 18(%rdi)
	.p2align 4,,7
.L128:
	rep ; ret
	.p2align 4,,7
.L150:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 1 664 0
	mov	%esi, %eax
	.file 2 "../bswap.h"
	.loc 2 123 0
	movw	%r9w, 78(%rax,%rdi)
	movzwl	18(%rdi), %r8d
	movl	20(%rdi), %ecx
.LBB18:
.LBB19:
	.loc 1 210 0
	movl	$0, 49232(%rdi,%rax,4)
	.loc 1 212 0
	leal	1(%rsi), %eax
	.loc 1 213 0
	movl	$0, 49232(%rdi,%rax,4)
	jmp	.L134
	.p2align 4,,7
.L149:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
.LBB20:
.LBB21:
	.loc 1 729 0
	orb	$64, 26(%rdi)
	.loc 1 727 0
	movw	$0, 18(%rdi)
	.loc 1 730 0
	jmp	ne2000_update_irq
.L152:
	.loc 1 724 0
	movl	4(%rdi), %eax
	jmp	.L148
.L151:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movl	4(%rdi), %ecx
	jmp	.L147
.LBE23:
.LBE22:
.LFE215:
	.size	ne2000_asic_ioport_write, .-ne2000_asic_ioport_write
	.p2align 4,,15
	.type	ne2000_asic_ioport_read, @function
ne2000_asic_ioport_read:
.LFB216:
	.loc 1 758 0
	.loc 1 762 0
	testb	$1, 27(%rdi)
	.loc 1 758 0
	pushq	%rbx
.LCFI11:
	.loc 1 758 0
	movq	%rdx, %r8
	.loc 1 762 0
	je	.L154
.LBB24:
	.loc 1 694 0
	movl	20(%rdi), %ecx
.LBB25:
	.loc 1 695 0
	movl	%ecx, %esi
	andl	$-2, %esi
	.loc 1 696 0
	leal	-16384(%rsi), %eax
	cmpl	$31, %esi
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	.loc 1 701 0
	movl	$65535, %edx
	.loc 1 696 0
	testb	$1, %al
	jne	.L185
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 1 720 0
	addl	$2, %ecx
	.loc 1 723 0
	cmpl	8(%rdi), %ecx
.LBE27:
.LBE26:
	.loc 1 694 0
	movl	%edx, %ebx
.LBB28:
.LBB29:
	.loc 1 723 0
	je	.L186
.L180:
	.loc 1 726 0
	movzwl	18(%rdi), %edx
	movl	%ecx, 20(%rdi)
	movzwl	%dx, %eax
	cmpl	$2, %eax
	jle	.L184
.L190:
	.loc 1 732 0
	subw	$2, %dx
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movw	%dx, 18(%rdi)
.L169:
.LBE31:
.LBE30:
	.loc 1 775 0
	movl	%ebx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L154:
.LBB32:
	.loc 1 682 0
	movl	20(%rdi), %ecx
.LBB33:
	.loc 1 683 0
	leal	-16384(%rcx), %eax
	cmpl	$31, %ecx
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	.loc 1 688 0
	movl	$255, %edx
	.loc 1 683 0
	testb	$1, %al
	jne	.L187
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 720 0
	leal	1(%rcx), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
.LBE35:
.LBE34:
	.loc 1 682 0
	movl	%edx, %ebx
.LBB36:
.LBB37:
	.loc 1 723 0
	je	.L188
.L181:
	.loc 1 726 0
	movzwl	18(%rdi), %edx
	movl	%eax, 20(%rdi)
	movzwl	%dx, %eax
	decl	%eax
	jle	.L184
	.loc 1 732 0
	subw	$1, %dx
	movw	%dx, 18(%rdi)
	jmp	.L169
	.p2align 4,,7
.L187:
.LBE37:
.LBE36:
.LBB38:
.LBB39:
.LBB40:
.LBB41:
	.loc 1 165 0
	mov	%ecx, %edx
	testl	$1073741823, 49232(%rdi,%rdx,4)
	je	.L173
	.loc 1 167 0
	movl	$-1, (%r8)
	movl	49232(%rdi,%rdx,4), %eax
	movl	%eax, 4(%r8)
	movl	20(%rdi), %ecx
.L173:
.LBE41:
.LBE40:
	.loc 1 685 0
	movzbl	78(%rdx,%rdi), %edx
.LBE39:
.LBE38:
.LBB42:
.LBB43:
	.loc 1 720 0
	leal	1(%rcx), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
.LBE43:
.LBE42:
	.loc 1 682 0
	movl	%edx, %ebx
.LBB44:
.LBB45:
	.loc 1 723 0
	jne	.L181
.L188:
	.loc 1 724 0
	movl	4(%rdi), %eax
	jmp	.L181
	.p2align 4,,7
.L185:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
.LBB48:
.LBB49:
	.loc 1 175 0
	mov	%esi, %edx
	testl	$1073741823, 49232(%rdi,%rdx,4)
	jne	.L189
	.loc 1 179 0
	leal	1(%rsi), %eax
	movl	49232(%rdi,%rax,4), %esi
	testl	%esi, %esi
	je	.L161
	.loc 1 181 0
	movl	$-1, (%r8)
	movl	49232(%rdi,%rax,4), %eax
.L182:
	movl	%eax, 4(%r8)
	movl	20(%rdi), %ecx
.L161:
.LBE49:
.LBE48:
	.loc 2 123 0
	movzwl	78(%rdx,%rdi), %edx
.LBE47:
.LBE46:
.LBB50:
.LBB51:
	.loc 1 720 0
	addl	$2, %ecx
	.loc 1 723 0
	cmpl	8(%rdi), %ecx
.LBE51:
.LBE50:
	.loc 1 694 0
	movl	%edx, %ebx
.LBB52:
.LBB53:
	.loc 1 723 0
	jne	.L180
.L186:
	.loc 1 726 0
	movzwl	18(%rdi), %edx
	.loc 1 724 0
	movl	4(%rdi), %ecx
	movl	%ecx, 20(%rdi)
	.loc 1 726 0
	movzwl	%dx, %eax
	cmpl	$2, %eax
	jg	.L190
	.p2align 4,,7
.L184:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 1 729 0
	orb	$64, 26(%rdi)
	.loc 1 727 0
	movw	$0, 18(%rdi)
	.loc 1 730 0
	call	ne2000_update_irq
.LBE55:
.LBE54:
	.loc 1 775 0
	movl	%ebx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L189:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 177 0
	movl	$-1, (%r8)
	movl	49232(%rdi,%rdx,4), %eax
	jmp	.L182
.LBE59:
.LBE58:
.LBE57:
.LBE56:
.LFE216:
	.size	ne2000_asic_ioport_read, .-ne2000_asic_ioport_read
	.p2align 4,,15
	.type	ne2000_asic_ioport_writel, @function
ne2000_asic_ioport_writel:
.LFB217:
	.loc 1 778 0
	.loc 1 784 0
	movzwl	18(%rdi), %r8d
	.loc 1 778 0
	movl	%edx, %esi
	.loc 1 784 0
	testw	%r8w, %r8w
	je	.L191
.LBB60:
	.loc 1 671 0
	movl	20(%rdi), %ecx
.LBB61:
	.loc 1 672 0
	movl	%ecx, %r9d
	andl	$-2, %r9d
	.loc 1 673 0
	leal	-16384(%r9), %eax
	cmpl	$31, %r9d
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L202
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 1 720 0
	leal	4(%rcx), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
	je	.L203
.L201:
	movl	%eax, 20(%rdi)
	.loc 1 726 0
	movzwl	%r8w, %eax
	cmpl	$4, %eax
	jle	.L204
.L198:
	.loc 1 732 0
	leal	-4(%r8), %eax
	movw	%ax, 18(%rdi)
.L191:
	rep ; ret
	.p2align 4,,7
.L202:
.LBE63:
.LBE62:
.LBB64:
.LBB65:
.LBB66:
	.loc 2 150 0
	mov	%r9d, %ecx
	leaq	(%rcx,%rdi), %rax
	leaq	78(%rax), %rdx
.LBB67:
	.loc 2 153 0
	movb	%sil, 78(%rax)
	.loc 2 154 0
	shrl	$8, %esi
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	.loc 1 224 0
	leal	1(%r9), %eax
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 2 154 0
	movb	%sil, 1(%rdx)
	.loc 2 155 0
	shrl	$8, %esi
	movb	%sil, 2(%rdx)
	.loc 2 156 0
	shrl	$8, %esi
	movb	%sil, 3(%rdx)
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 1 222 0
	movl	$0, 49232(%rdi,%rcx,4)
	.loc 1 225 0
	movl	$0, 49232(%rdi,%rax,4)
	.loc 1 227 0
	leal	2(%r9), %eax
	movl	20(%rdi), %ecx
	movzwl	18(%rdi), %r8d
	.loc 1 228 0
	movl	$0, 49232(%rdi,%rax,4)
	.loc 1 230 0
	leal	3(%r9), %eax
	.loc 1 231 0
	movl	$0, 49232(%rdi,%rax,4)
.LBE73:
.LBE72:
.LBE65:
.LBE64:
.LBB74:
.LBB75:
	.loc 1 720 0
	leal	4(%rcx), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
	jne	.L201
.L203:
	.loc 1 724 0
	movl	4(%rdi), %eax
	movl	%eax, 20(%rdi)
	.loc 1 726 0
	movzwl	%r8w, %eax
	cmpl	$4, %eax
	jg	.L198
	.p2align 4,,7
.L204:
	.loc 1 729 0
	orb	$64, 26(%rdi)
	.loc 1 727 0
	movw	$0, 18(%rdi)
	.loc 1 730 0
	jmp	ne2000_update_irq
.LBE75:
.LBE74:
.LFE217:
	.size	ne2000_asic_ioport_writel, .-ne2000_asic_ioport_writel
	.p2align 4,,15
	.type	ne2000_asic_ioport_readl, @function
ne2000_asic_ioport_readl:
.LFB218:
	.loc 1 793 0
.LBB76:
	.loc 1 707 0
	movl	20(%rdi), %esi
.LBE76:
	.loc 1 793 0
	movq	%rdx, %r8
	pushq	%rbx
.LCFI12:
.LBB77:
.LBB78:
	.loc 1 714 0
	movl	$-1, %ebx
	.loc 1 708 0
	movl	%esi, %ecx
	andl	$-2, %ecx
	.loc 1 709 0
	leal	-16384(%rcx), %eax
	cmpl	$31, %ecx
	setbe	%dl
	cmpl	$32767, %eax
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L215
.LBB79:
.LBB80:
	.loc 1 189 0
	xorl	%eax, %eax
	.p2align 4,,7
.L212:
	.loc 1 191 0
	leal	(%rcx,%rax), %edx
	testl	$1073741823, 49232(%rdi,%rdx,4)
	jne	.L223
	.loc 1 189 0
	incl	%eax
	cmpl	$3, %eax
	jle	.L212
.L208:
.LBE80:
.LBE79:
.LBB81:
	.loc 2 166 0
	mov	%ecx, %eax
	addq	%rdi, %rax
	leaq	78(%rax), %rdx
.LBB82:
	.loc 2 167 0
	movzbl	78(%rax), %ebx
	movzbl	1(%rdx), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movzbl	2(%rdx), %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	3(%rdx), %eax
	sall	$24, %eax
.LBE82:
.LBE81:
	.loc 2 166 0
	orl	%eax, %ebx
.L215:
.LBE78:
.LBE77:
.LBB83:
.LBB84:
	.loc 1 720 0
	leal	4(%rsi), %eax
	.loc 1 723 0
	cmpl	8(%rdi), %eax
	je	.L224
.L222:
	.loc 1 726 0
	movzwl	18(%rdi), %edx
	movl	%eax, 20(%rdi)
	movzwl	%dx, %eax
	cmpl	$4, %eax
	jle	.L225
.LBE84:
.LBE83:
	.loc 1 804 0
	movl	%ebx, %eax
.LBB85:
.LBB86:
	.loc 1 732 0
	subw	$4, %dx
.LBE86:
.LBE85:
	.loc 1 804 0
	popq	%rbx
.LBB87:
.LBB88:
	.loc 1 732 0
	movw	%dx, 18(%rdi)
.LBE88:
.LBE87:
	.loc 1 804 0
	ret
	.p2align 4,,7
.L225:
.LBB89:
.LBB90:
	.loc 1 729 0
	orb	$64, 26(%rdi)
	.loc 1 727 0
	movw	$0, 18(%rdi)
	.loc 1 730 0
	call	ne2000_update_irq
.LBE90:
.LBE89:
	.loc 1 804 0
	movl	%ebx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L224:
.LBB91:
.LBB92:
	.loc 1 724 0
	movl	4(%rdi), %eax
	jmp	.L222
.L223:
.LBE92:
.LBE91:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
	.loc 1 192 0
	movl	$-1, (%r8)
	movl	49232(%rdi,%rdx,4), %eax
	movl	%eax, 4(%r8)
	movl	20(%rdi), %esi
	jmp	.L208
.LBE96:
.LBE95:
.LBE94:
.LBE93:
.LFE218:
	.size	ne2000_asic_ioport_readl, .-ne2000_asic_ioport_readl
	.p2align 4,,15
	.type	ne2000_reset_ioport_write, @function
ne2000_reset_ioport_write:
.LFB219:
	.loc 1 807 0
	.loc 1 807 0
	rep ; ret
.LFE219:
	.size	ne2000_reset_ioport_write, .-ne2000_reset_ioport_write
	.p2align 4,,15
	.type	ne2000_reset_ioport_read, @function
ne2000_reset_ioport_read:
.LFB220:
	.loc 1 813 0
	subq	$8, %rsp
.LCFI13:
	.loc 1 815 0
	call	ne2000_reset
	.loc 1 817 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.LFE220:
	.size	ne2000_reset_ioport_read, .-ne2000_reset_ioport_read
	.p2align 4,,15
	.type	ne2000_save, @function
ne2000_save:
.LFB221:
	.loc 1 820 0
	pushq	%rbp
.LCFI14:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI15:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI16:
	.loc 1 824 0
	movq	56(%rsi), %rdi
	testq	%rdi, %rdi
	jne	.L246
.L229:
.LBB97:
.LBB98:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	25(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE98:
.LBE97:
.LBB99:
.LBB100:
	movzbl	(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	.loc 3 32 0
	movl	4(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	movl	8(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	.loc 3 42 0
	movzbl	12(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	movzbl	13(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE108:
.LBE107:
.LBB109:
.LBB110:
	movzbl	14(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE110:
.LBE109:
.LBB111:
.LBB112:
	.loc 3 37 0
	movzwl	16(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be16
.LBE112:
.LBE111:
.LBB113:
.LBB114:
	movzwl	18(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be16
.LBE114:
.LBE113:
.LBB115:
.LBB116:
	.loc 3 32 0
	movl	20(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBE116:
.LBE115:
.LBB117:
.LBB118:
	.loc 3 42 0
	movzbl	24(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	movzbl	26(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE120:
.LBE119:
.LBB121:
.LBB122:
	movzbl	27(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE122:
.LBE121:
.LBB123:
.LBB124:
	movzbl	28(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE124:
.LBE123:
	.loc 1 842 0
	leaq	29(%rbx), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
	call	qemu_put_buffer
.LBB125:
.LBB126:
	.loc 3 42 0
	movzbl	35(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE126:
.LBE125:
	.loc 1 844 0
	leaq	36(%rbx), %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
	call	qemu_put_buffer
.LBB127:
.LBB128:
	.loc 3 32 0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	call	qemu_put_be32
.LBE128:
.LBE127:
	.loc 1 847 0
	leaq	78(%rbx), %rsi
	movq	%rbp, %rdi
	movl	$49152, %edx
	call	qemu_put_buffer
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L246:
	.loc 1 825 0
	movq	%rbp, %rsi
	call	pci_device_save
	.p2align 4,,3
	jmp	.L229
.LFE221:
	.size	ne2000_save, .-ne2000_save
	.p2align 4,,15
	.type	ne2000_load, @function
ne2000_load:
.LFB222:
	.loc 1 851 0
	pushq	%r12
.LCFI17:
	.loc 1 856 0
	cmpl	$3, %edx
	.loc 1 851 0
	movl	%edx, %r12d
	.loc 1 857 0
	movl	$-22, %eax
	.loc 1 851 0
	pushq	%rbp
.LCFI18:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI19:
	.loc 1 851 0
	movq	%rsi, %rbx
	.loc 1 856 0
	jg	.L247
	.loc 1 859 0
	movq	56(%rsi), %rdi
	testq	%rdi, %rdi
	setne	%dl
	xorl	%eax, %eax
	cmpl	$2, %r12d
	setg	%al
	testl	%edx, %eax
	jne	.L269
	.loc 1 865 0
	decl	%r12d
	jg	.L270
.L251:
	.loc 1 868 0
	movb	$12, 25(%rbx)
.L253:
.LBB129:
.LBB130:
	.loc 3 62 0
	movq	%rbp, %rdi
	call	qemu_get_byte
.LBE130:
.LBE129:
.LBB131:
.LBB132:
	.loc 3 52 0
	movq	%rbp, %rdi
.LBE132:
.LBE131:
.LBB133:
.LBB134:
	.loc 3 62 0
	movb	%al, (%rbx)
.LBE134:
.LBE133:
.LBB135:
.LBB136:
	.loc 3 52 0
	call	qemu_get_be32
.LBE136:
.LBE135:
.LBB137:
.LBB138:
	movq	%rbp, %rdi
.LBE138:
.LBE137:
.LBB139:
.LBB140:
	movl	%eax, 4(%rbx)
.LBE140:
.LBE139:
.LBB141:
.LBB142:
	call	qemu_get_be32
.LBE142:
.LBE141:
.LBB143:
.LBB144:
	.loc 3 62 0
	movq	%rbp, %rdi
.LBE144:
.LBE143:
.LBB145:
.LBB146:
	.loc 3 52 0
	movl	%eax, 8(%rbx)
.LBE146:
.LBE145:
.LBB147:
.LBB148:
	.loc 3 62 0
	call	qemu_get_byte
.LBE148:
.LBE147:
.LBB149:
.LBB150:
	movq	%rbp, %rdi
.LBE150:
.LBE149:
.LBB151:
.LBB152:
	movb	%al, 12(%rbx)
.LBE152:
.LBE151:
.LBB153:
.LBB154:
	call	qemu_get_byte
.LBE154:
.LBE153:
.LBB155:
.LBB156:
	movq	%rbp, %rdi
.LBE156:
.LBE155:
.LBB157:
.LBB158:
	movb	%al, 13(%rbx)
.LBE158:
.LBE157:
.LBB159:
.LBB160:
	call	qemu_get_byte
.LBE160:
.LBE159:
.LBB161:
.LBB162:
	.loc 3 57 0
	movq	%rbp, %rdi
.LBE162:
.LBE161:
.LBB163:
.LBB164:
	.loc 3 62 0
	movb	%al, 14(%rbx)
.LBE164:
.LBE163:
.LBB165:
.LBB166:
	.loc 3 57 0
	call	qemu_get_be16
.LBE166:
.LBE165:
.LBB167:
.LBB168:
	movq	%rbp, %rdi
.LBE168:
.LBE167:
.LBB169:
.LBB170:
	movw	%ax, 16(%rbx)
.LBE170:
.LBE169:
.LBB171:
.LBB172:
	call	qemu_get_be16
.LBE172:
.LBE171:
.LBB173:
.LBB174:
	.loc 3 52 0
	movq	%rbp, %rdi
.LBE174:
.LBE173:
.LBB175:
.LBB176:
	.loc 3 57 0
	movw	%ax, 18(%rbx)
.LBE176:
.LBE175:
.LBB177:
.LBB178:
	.loc 3 52 0
	call	qemu_get_be32
.LBE178:
.LBE177:
.LBB179:
.LBB180:
	.loc 3 62 0
	movq	%rbp, %rdi
.LBE180:
.LBE179:
.LBB181:
.LBB182:
	.loc 3 52 0
	movl	%eax, 20(%rbx)
.LBE182:
.LBE181:
.LBB183:
.LBB184:
	.loc 3 62 0
	call	qemu_get_byte
.LBE184:
.LBE183:
.LBB185:
.LBB186:
	movq	%rbp, %rdi
.LBE186:
.LBE185:
.LBB187:
.LBB188:
	movb	%al, 24(%rbx)
.LBE188:
.LBE187:
.LBB189:
.LBB190:
	call	qemu_get_byte
.LBE190:
.LBE189:
.LBB191:
.LBB192:
	movq	%rbp, %rdi
.LBE192:
.LBE191:
.LBB193:
.LBB194:
	movb	%al, 26(%rbx)
.LBE194:
.LBE193:
.LBB195:
.LBB196:
	call	qemu_get_byte
.LBE196:
.LBE195:
.LBB197:
.LBB198:
	movq	%rbp, %rdi
.LBE198:
.LBE197:
.LBB199:
.LBB200:
	movb	%al, 27(%rbx)
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	call	qemu_get_byte
.LBE202:
.LBE201:
	.loc 1 884 0
	leaq	29(%rbx), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
.LBB203:
.LBB204:
	.loc 3 62 0
	movb	%al, 28(%rbx)
.LBE204:
.LBE203:
	.loc 1 884 0
	call	qemu_get_buffer
.LBB205:
.LBB206:
	.loc 3 62 0
	movq	%rbp, %rdi
	call	qemu_get_byte
.LBE206:
.LBE205:
	.loc 1 886 0
	leaq	36(%rbx), %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
.LBB207:
.LBB208:
	.loc 3 62 0
	movb	%al, 35(%rbx)
.LBE208:
.LBE207:
	.loc 1 886 0
	call	qemu_get_buffer
.LBB209:
.LBB210:
	.loc 3 52 0
	movq	%rbp, %rdi
	call	qemu_get_be32
.LBE210:
.LBE209:
	.loc 1 888 0
	leaq	78(%rbx), %rsi
	movl	$49152, %edx
	movq	%rbp, %rdi
	call	qemu_get_buffer
	.loc 1 890 0
	leaq	49232(%rbx), %rdi
	movl	$196608, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 895 0
	xorl	%eax, %eax
.L247:
	.loc 1 896 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L269:
	.loc 1 860 0
	movq	%rbp, %rsi
	call	pci_device_load
	.loc 1 861 0
	testl	%eax, %eax
	js	.L247
	.loc 1 865 0
	decl	%r12d
	.p2align 4,,2
	jle	.L251
	.p2align 4,,7
.L270:
.LBB211:
.LBB212:
	.loc 3 62 0
	movq	%rbp, %rdi
	.p2align 4,,5
	call	qemu_get_byte
	movb	%al, 25(%rbx)
	.p2align 4,,2
	jmp	.L253
.LBE212:
.LBE211:
.LFE222:
	.size	ne2000_load, .-ne2000_load
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"ne2000 macaddr=%02x:%02x:%02x:%02x:%02x:%02x"
	.section	.rodata.str1.1
.LC3:
	.string	"ne2000"
	.text
	.p2align 4,,15
.globl isa_ne2000_init
	.type	isa_ne2000_init, @function
isa_ne2000_init:
.LFB223:
	.loc 1 899 0
	movq	%rbp, -32(%rsp)
.LCFI20:
	movq	%r12, -24(%rsp)
.LCFI21:
	movl	%edi, %r12d
	movq	%r13, -16(%rsp)
.LCFI22:
	movq	%r14, -8(%rsp)
.LCFI23:
	.loc 1 902 0
	movl	$245840, %edi
	.loc 1 899 0
	movq	%rbx, -40(%rsp)
.LCFI24:
	subq	$72, %rsp
.LCFI25:
	.loc 1 899 0
	movq	%rsi, %r14
	movq	%rdx, %r13
	.loc 1 902 0
	call	qemu_mallocz
	.loc 1 903 0
	testq	%rax, %rax
	.loc 1 902 0
	movq	%rax, %rbp
	.loc 1 903 0
	je	.L271
	.loc 1 909 0
	leal	16(%r12), %ebx
	.loc 1 906 0
	movl	%r12d, %edi
	movq	%rax, %r8
	movl	$ne2000_ioport_write, %ecx
	movl	$1, %edx
	movl	$16, %esi
	call	register_ioport_write
	.loc 1 907 0
	movq	%rbp, %r8
	movl	%r12d, %edi
	movl	$ne2000_ioport_read, %ecx
	movl	$1, %edx
	movl	$16, %esi
	call	register_ioport_read
	.loc 1 909 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 910 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_read
	.loc 1 911 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_write, %ecx
	movl	$2, %edx
	movl	$2, %esi
	call	register_ioport_write
	.loc 1 912 0
	movl	%ebx, %edi
	.loc 1 914 0
	leal	31(%r12), %ebx
	.loc 1 912 0
	movq	%rbp, %r8
	movl	$ne2000_asic_ioport_read, %ecx
	movl	$2, %edx
	movl	$2, %esi
	call	register_ioport_read
	.loc 1 914 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_reset_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 915 0
	movq	%rbp, %r8
	movl	$ne2000_reset_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	call	register_ioport_read
	.loc 1 916 0
	movq	%r14, 48(%rbp)
	.loc 1 917 0
	movl	(%r13), %eax
	.loc 1 919 0
	movq	%rbp, %rdi
	.loc 1 917 0
	movl	%eax, 72(%rbp)
	movzwl	4(%r13), %eax
	movw	%ax, 76(%rbp)
	.loc 1 919 0
	call	ne2000_reset
	.loc 1 921 0
	movq	16(%r13), %rdi
	movq	%rbp, %rcx
	movl	$ne2000_can_receive, %edx
	movl	$ne2000_receive, %esi
	call	qemu_new_vlan_client
	movq	%rax, 64(%rbp)
	.loc 1 924 0
	leaq	40(%rax), %rdi
	movzbl	77(%rbp), %eax
	movzbl	74(%rbp), %r9d
	movzbl	73(%rbp), %r8d
	movl	$.LC2, %edx
	movzbl	72(%rbp), %ecx
	movl	$256, %esi
	movl	%eax, 16(%rsp)
	movzbl	76(%rbp), %eax
	movl	%eax, 8(%rsp)
	movzbl	75(%rbp), %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	snprintf
	.loc 1 933 0
	movq	%rbp, %r9
	.loc 1 934 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	.loc 1 933 0
	movl	$ne2000_load, %r8d
	.loc 1 934 0
	movq	64(%rsp), %r14
	.loc 1 933 0
	movl	$ne2000_save, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	movl	$.LC3, %edi
	.loc 1 934 0
	addq	$72, %rsp
	.loc 1 933 0
	jmp	register_savevm
	.p2align 4,,7
.L271:
	.loc 1 934 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	movq	64(%rsp), %r14
	addq	$72, %rsp
	ret
.LFE223:
	.size	isa_ne2000_init, .-isa_ne2000_init
	.p2align 4,,15
	.type	ne2000_map, @function
ne2000_map:
.LFB224:
	.loc 1 946 0
	pushq	%r12
.LCFI26:
	movl	%edx, %r12d
	.loc 1 950 0
	movl	$ne2000_ioport_write, %ecx
	movl	$1, %edx
	movl	$16, %esi
	.loc 1 946 0
	pushq	%rbp
.LCFI27:
	.loc 1 948 0
	leaq	552(%rdi), %rbp
	.loc 1 950 0
	movl	%r12d, %edi
	.loc 1 946 0
	pushq	%rbx
.LCFI28:
	.loc 1 950 0
	movq	%rbp, %r8
	.loc 1 953 0
	leal	16(%r12), %ebx
	.loc 1 950 0
	call	register_ioport_write
	.loc 1 951 0
	movq	%rbp, %r8
	movl	%r12d, %edi
	movl	$ne2000_ioport_read, %ecx
	movl	$1, %edx
	movl	$16, %esi
	call	register_ioport_read
	.loc 1 953 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 954 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_read
	.loc 1 955 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_write, %ecx
	movl	$2, %edx
	movl	$2, %esi
	call	register_ioport_write
	.loc 1 956 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_read, %ecx
	movl	$2, %edx
	movl	$2, %esi
	call	register_ioport_read
	.loc 1 957 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_asic_ioport_writel, %ecx
	movl	$4, %edx
	movl	$4, %esi
	call	register_ioport_write
	.loc 1 958 0
	movl	%ebx, %edi
	.loc 1 960 0
	leal	31(%r12), %ebx
	.loc 1 958 0
	movq	%rbp, %r8
	movl	$ne2000_asic_ioport_readl, %ecx
	movl	$4, %edx
	movl	$4, %esi
	call	register_ioport_read
	.loc 1 960 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$ne2000_reset_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 961 0
	movl	%ebx, %edi
	movq	%rbp, %r8
	movl	$ne2000_reset_ioport_read, %ecx
	popq	%rbx
	popq	%rbp
	popq	%r12
	movl	$1, %edx
	movl	$1, %esi
	jmp	register_ioport_read
.LFE224:
	.size	ne2000_map, .-ne2000_map
	.section	.rodata.str1.1
.LC4:
	.string	"NE2000"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"ne2000 pci macaddr=%02x:%02x:%02x:%02x:%02x:%02x"
	.text
	.p2align 4,,15
.globl pci_ne2000_init
	.type	pci_ne2000_init, @function
pci_ne2000_init:
.LFB225:
	.loc 1 965 0
	pushq	%r13
.LCFI29:
	.loc 1 970 0
	xorl	%r9d, %r9d
	.loc 1 965 0
	movq	%rsi, %r13
	movl	%edx, %ecx
	.loc 1 970 0
	xorl	%r8d, %r8d
	movl	$246392, %edx
	.loc 1 965 0
	pushq	%r12
.LCFI30:
	.loc 1 970 0
	movl	$.LC4, %esi
	.loc 1 965 0
	pushq	%rbx
.LCFI31:
	subq	$32, %rsp
.LCFI32:
	.loc 1 970 0
	call	pci_register_device
	.loc 1 984 0
	movl	$ne2000_map, %r8d
	.loc 1 970 0
	movq	%rax, %rbx
	.loc 1 984 0
	movl	$1, %ecx
	movl	$256, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	.loc 1 975 0
	movb	$-20, (%rax)
	.loc 1 976 0
	movb	$16, 1(%rax)
	.loc 1 986 0
	leaq	552(%rbx), %r12
	.loc 1 977 0
	movb	$41, 2(%rax)
	.loc 1 978 0
	movb	$-128, 3(%rax)
	.loc 1 979 0
	movb	$0, 10(%rax)
	.loc 1 980 0
	movb	$2, 11(%rax)
	.loc 1 981 0
	movb	$0, 14(%rax)
	.loc 1 982 0
	movb	$1, 61(%rax)
	.loc 1 984 0
	call	pci_register_io_region
	.loc 1 987 0
	movq	528(%rbx), %rax
	.loc 1 990 0
	movq	%r12, %rdi
	.loc 1 987 0
	movq	(%rax), %rax
	.loc 1 988 0
	movq	%rbx, 56(%r12)
	.loc 1 987 0
	movq	%rax, 48(%r12)
	.loc 1 989 0
	movl	(%r13), %eax
	movl	%eax, 72(%r12)
	movzwl	4(%r13), %eax
	movw	%ax, 76(%r12)
	.loc 1 990 0
	call	ne2000_reset
	.loc 1 991 0
	movq	16(%r13), %rdi
	movq	%r12, %rcx
	movl	$ne2000_can_receive, %edx
	movl	$ne2000_receive, %esi
	call	qemu_new_vlan_client
	movq	%rax, 64(%r12)
	.loc 1 994 0
	leaq	40(%rax), %rdi
	movzbl	77(%r12), %eax
	movzbl	74(%r12), %r9d
	movzbl	73(%r12), %r8d
	movl	$.LC5, %edx
	movzbl	72(%r12), %ecx
	movl	$256, %esi
	movl	%eax, 16(%rsp)
	movzbl	76(%r12), %eax
	movl	%eax, 8(%rsp)
	movzbl	75(%r12), %eax
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	snprintf
	.loc 1 1004 0
	addq	$32, %rsp
	movq	%r12, %r9
	movl	$ne2000_load, %r8d
	popq	%rbx
	popq	%r12
	popq	%r13
	movl	$ne2000_save, %ecx
	movl	$3, %edx
	xorl	%esi, %esi
	movl	$.LC3, %edi
	jmp	register_savevm
.LFE225:
	.size	pci_ne2000_init, .-pci_ne2000_init
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI0-.LFB200
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI1-.LFB205
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI10-.LFB206
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI11-.LFB216
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
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI12-.LFB218
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
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI13-.LFB220
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI14-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI17-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI21-.LFB223
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI26-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI29-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE34:
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI0-.LFB200
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI1-.LFB205
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI10-.LFB206
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI11-.LFB216
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
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI12-.LFB218
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
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.byte	0x4
	.long	.LCFI13-.LFB220
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI14-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI17-.LFB222
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI21-.LFB223
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI21
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI26-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI29-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE35:
	.file 4 "/usr/include/stdint.h"
	.file 5 "../qemu-common.h"
	.file 6 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 7 "../net.h"
	.file 8 "../argos.h"
	.file 9 "../argos-tag.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "../argos-common.h"
	.file 15 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1c63
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF174
	.byte	0x1
	.long	.LASF175
	.long	.LASF176
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
	.byte	0xc
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
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
	.uleb128 0x2
	.long	.LASF13
	.byte	0xa
	.byte	0x31
	.long	0xc0
	.uleb128 0x8
	.long	0x28c
	.long	.LASF44
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF14
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF15
	.byte	0xb
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0xb
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0xb
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0xb
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0xb
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0xb
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0xb
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0xb
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0xb
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0xb
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0xb
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0xb
	.value	0x122
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0xb
	.value	0x124
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0xb
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0xb
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0xb
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0xb
	.value	0x132
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x136
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0xb
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0xb
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0xb
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xb
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0xb
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xb
	.value	0x150
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xb
	.byte	0xb4
	.uleb128 0x8
	.long	0x2ca
	.long	.LASF45
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xb
	.long	.LASF46
	.byte	0xb
	.byte	0xbb
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0xb
	.byte	0xbc
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0xb
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x293
	.uleb128 0x5
	.byte	0x8
	.long	0xc0
	.uleb128 0xc
	.long	0x2e6
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x28c
	.uleb128 0xc
	.long	0x2fc
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0xe
	.long	0x30c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
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
	.uleb128 0xc
	.long	0x352
	.long	0x30c
	.uleb128 0xd
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x8
	.byte	0x2f
	.long	0x322
	.uleb128 0x2
	.long	.LASF56
	.byte	0x8
	.byte	0x34
	.long	0x322
	.uleb128 0x8
	.long	0x391
	.long	.LASF57
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.uleb128 0xb
	.long	.LASF58
	.byte	0x9
	.byte	0x38
	.long	0x352
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x9
	.byte	0x39
	.long	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x3d
	.long	0x368
	.uleb128 0x5
	.byte	0x8
	.long	0xb5
	.uleb128 0x5
	.byte	0x8
	.long	0x391
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x5f
	.long	0x3b3
	.uleb128 0x10
	.long	0x3c9
	.byte	0x1
	.uleb128 0xf
	.long	0xa6
	.uleb128 0xf
	.long	0x3c9
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3cf
	.uleb128 0x6
	.long	0x30c
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x60
	.long	0x2fc
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x6c
	.long	0x3ea
	.uleb128 0x8
	.long	0x421
	.long	.LASF63
	.byte	0x18
	.byte	0x5
	.byte	0x6c
	.uleb128 0xb
	.long	.LASF64
	.byte	0x7
	.byte	0x2a
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF65
	.byte	0x7
	.byte	0x2b
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF66
	.byte	0x7
	.byte	0x2c
	.long	0x740
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x5
	.byte	0x72
	.long	0x42c
	.uleb128 0x8
	.long	0x47e
	.long	.LASF67
	.byte	0x20
	.byte	0x5
	.byte	0x72
	.uleb128 0x11
	.string	"id"
	.byte	0x7
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF68
	.byte	0x7
	.byte	0x15
	.long	0x72a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF69
	.byte	0x7
	.byte	0x16
	.long	0x714
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF70
	.byte	0x7
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF71
	.byte	0x7
	.byte	0x17
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x5
	.byte	0x73
	.long	0x489
	.uleb128 0x12
	.long	.LASF72
	.byte	0x1
	.uleb128 0x2
	.long	.LASF73
	.byte	0x5
	.byte	0x78
	.long	0x49a
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.uleb128 0x2
	.long	.LASF74
	.byte	0x5
	.byte	0x79
	.long	0x4ab
	.uleb128 0x13
	.long	0x54e
	.long	.LASF74
	.value	0x228
	.byte	0x5
	.byte	0x79
	.uleb128 0xb
	.long	.LASF75
	.byte	0x6
	.byte	0x2f
	.long	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"bus"
	.byte	0x6
	.byte	0x32
	.long	0x64d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.long	.LASF76
	.byte	0x6
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF77
	.byte	0x6
	.byte	0x34
	.long	0x653
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.long	.LASF78
	.byte	0x6
	.byte	0x35
	.long	0x663
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.long	.LASF79
	.byte	0x6
	.byte	0x38
	.long	0x673
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF80
	.byte	0x6
	.byte	0x39
	.long	0x679
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x11
	.string	"irq"
	.byte	0x6
	.byte	0x3e
	.long	0x67f
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.long	.LASF82
	.byte	0x6
	.byte	0x41
	.long	0x685
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x5
	.byte	0x7b
	.long	0x559
	.uleb128 0x5
	.byte	0x8
	.long	0x55f
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x47e
	.uleb128 0x2
	.long	.LASF85
	.byte	0x6
	.byte	0xc
	.long	0x576
	.uleb128 0x10
	.long	0x591
	.byte	0x1
	.uleb128 0xf
	.long	0x591
	.uleb128 0xf
	.long	0x322
	.uleb128 0xf
	.long	0x322
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4a0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x6
	.byte	0xe
	.long	0x5a2
	.uleb128 0xe
	.long	0x5bc
	.byte	0x1
	.long	0x322
	.uleb128 0xf
	.long	0x591
	.uleb128 0xf
	.long	0x322
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x6
	.byte	0x10
	.long	0x5c7
	.uleb128 0x10
	.long	0x5e7
	.byte	0x1
	.uleb128 0xf
	.long	0x591
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x322
	.uleb128 0xf
	.long	0x322
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x8
	.long	0x62c
	.long	.LASF88
	.byte	0x18
	.byte	0x6
	.byte	0x16
	.uleb128 0xb
	.long	.LASF89
	.byte	0x6
	.byte	0x17
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x6
	.byte	0x18
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF91
	.byte	0x6
	.byte	0x19
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF92
	.byte	0x6
	.byte	0x1a
	.long	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5bc
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6
	.byte	0x1b
	.long	0x5e7
	.uleb128 0xc
	.long	0x64d
	.long	0x30c
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x48f
	.uleb128 0xc
	.long	0x663
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x673
	.long	0x632
	.uleb128 0xd
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x597
	.uleb128 0x5
	.byte	0x8
	.long	0x56b
	.uleb128 0x5
	.byte	0x8
	.long	0x54e
	.uleb128 0xc
	.long	0x695
	.long	0x3f
	.uleb128 0xd
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x7
	.byte	0x6
	.long	0x6a0
	.uleb128 0x13
	.long	0x702
	.long	.LASF93
	.value	0x128
	.byte	0x7
	.byte	0x6
	.uleb128 0xb
	.long	.LASF94
	.byte	0x7
	.byte	0x9
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x7
	.byte	0xc
	.long	0x708
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF96
	.byte	0x7
	.byte	0xd
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF69
	.byte	0x7
	.byte	0xe
	.long	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF66
	.byte	0x7
	.byte	0xf
	.long	0x714
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF97
	.byte	0x7
	.byte	0x10
	.long	0x71a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3a8
	.uleb128 0x5
	.byte	0x8
	.long	0x3d4
	.uleb128 0x5
	.byte	0x8
	.long	0x6a0
	.uleb128 0x5
	.byte	0x8
	.long	0x42c
	.uleb128 0xc
	.long	0x72a
	.long	0x74
	.uleb128 0xd
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x695
	.uleb128 0xc
	.long	0x740
	.long	0x30c
	.uleb128 0xd
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x421
	.uleb128 0x14
	.long	0x899
	.long	.LASF98
	.long	0x3c050
	.byte	0x1
	.byte	0x7e
	.uleb128 0x11
	.string	"cmd"
	.byte	0x1
	.byte	0x7f
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.byte	0x80
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF100
	.byte	0x1
	.byte	0x81
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF101
	.byte	0x1
	.byte	0x82
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"tsr"
	.byte	0x1
	.byte	0x83
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.long	.LASF102
	.byte	0x1
	.byte	0x84
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF103
	.byte	0x1
	.byte	0x85
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.byte	0x86
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.long	.LASF105
	.byte	0x1
	.byte	0x87
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"rsr"
	.byte	0x1
	.byte	0x88
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1
	.byte	0x89
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x11
	.string	"isr"
	.byte	0x1
	.byte	0x8a
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.long	.LASF107
	.byte	0x1
	.byte	0x8b
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0x11
	.string	"imr"
	.byte	0x1
	.byte	0x8c
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.byte	0x8d
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0xb
	.long	.LASF109
	.byte	0x1
	.byte	0x8e
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0xb
	.long	.LASF110
	.byte	0x1
	.byte	0x8f
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"irq"
	.byte	0x1
	.byte	0x90
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF111
	.byte	0x1
	.byte	0x91
	.long	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"vc"
	.byte	0x1
	.byte	0x92
	.long	0x72a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF64
	.byte	0x1
	.byte	0x93
	.long	0x730
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"mem"
	.byte	0x1
	.byte	0x94
	.long	0x899
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x11
	.string	"tag"
	.byte	0x1
	.byte	0x96
	.long	0x8aa
	.byte	0x4
	.byte	0x23
	.uleb128 0xc050
	.byte	0x0
	.uleb128 0xc
	.long	0x8aa
	.long	0x30c
	.uleb128 0x15
	.long	0x5b
	.value	0xbfff
	.byte	0x0
	.uleb128 0xc
	.long	0x8bb
	.long	0x35d
	.uleb128 0x15
	.long	0x5b
	.value	0xbfff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x1
	.byte	0x9a
	.long	0x746
	.uleb128 0x16
	.long	0x8f6
	.long	.LASF112
	.long	0x3c278
	.byte	0x1
	.value	0x3ab
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.value	0x3ac
	.long	0x4a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF113
	.byte	0x1
	.value	0x3ad
	.long	0x8bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.byte	0x0
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.value	0x3ae
	.long	0x8c6
	.uleb128 0x19
	.long	0x93a
	.long	.LASF114
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x106
	.long	0x93a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x108
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8bb
	.uleb128 0x19
	.long	0x978
	.long	.LASF115
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x11c
	.long	0x93a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"isr"
	.byte	0x1
	.value	0x11e
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x9d2
	.long	.LASF116
	.byte	0x1
	.value	0x140
	.byte	0x1
	.long	0x3f
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x13f
	.long	0x93a
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.value	0x141
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x141
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF101
	.byte	0x1
	.value	0x141
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0xa10
	.long	.LASF119
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.long	0x3f
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x14e
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x150
	.long	0x93a
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0xb49
	.long	.LASF120
	.byte	0x1
	.value	0x15a
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x159
	.long	0xa6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x159
	.long	0x3c9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x159
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x15b
	.long	0x93a
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x15c
	.long	0xb49
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.value	0x15d
	.long	0x46
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.value	0x15d
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.value	0x15d
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x15d
	.long	0x46
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x15d
	.long	0x46
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x15d
	.long	0x46
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x1
	.value	0x15e
	.long	0xb4f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.value	0x15f
	.long	0xb6f
	.byte	0x9
	.byte	0x3
	.quad	broadcast_macaddr.0
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x162
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x163
	.long	0xb74
	.byte	0x2
	.byte	0x91
	.sleb128 14
	.uleb128 0x21
	.long	0xb84
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x22
	.long	0xb96
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x24
	.long	0xba1
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	0xbad
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	0xbb9
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.long	0xbc3
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	0xbcd
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30c
	.uleb128 0xc
	.long	0xb5f
	.long	0x30c
	.uleb128 0xd
	.long	0x5b
	.byte	0x3b
	.byte	0x0
	.uleb128 0xc
	.long	0xb6f
	.long	0x3cf
	.uleb128 0xd
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x6
	.long	0xb5f
	.uleb128 0xc
	.long	0xb84
	.long	0x7b
	.uleb128 0xd
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x25
	.long	0xbd8
	.long	.LASF126
	.byte	0x1
	.value	0x12c
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x26
	.string	"ep"
	.byte	0x1
	.value	0x12b
	.long	0x3c9
	.uleb128 0x1c
	.string	"crc"
	.byte	0x1
	.value	0x12d
	.long	0x322
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x12e
	.long	0x3f
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x12e
	.long	0x3f
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.value	0x12e
	.long	0x3f
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.value	0x12f
	.long	0x30c
	.byte	0x0
	.uleb128 0x19
	.long	0xc54
	.long	.LASF128
	.byte	0x1
	.value	0x1e0
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x1df
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x1df
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x1df
	.long	0x322
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1e1
	.long	0x93a
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.long	0xcd4
	.long	.LASF131
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	0x322
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x240
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x240
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x241
	.long	0x3a2
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x243
	.long	0x93a
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x244
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.value	0x244
	.long	0x3f
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x244
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0xe04
	.long	.LASF132
	.byte	0x1
	.value	0x2e1
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x2e0
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x2e0
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x2e0
	.long	0x322
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x2e2
	.long	0x93a
	.uleb128 0x27
	.long	0xd52
	.long	0xe04
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x28
	.long	0xe12
	.uleb128 0x22
	.long	0xe1c
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.long	0xe28
	.byte	0x0
	.uleb128 0x27
	.long	0xd76
	.long	0xe35
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.uleb128 0x27
	.long	0xdbf
	.long	0xe5a
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x28
	.long	0xe68
	.uleb128 0x28
	.long	0xe72
	.uleb128 0x28
	.long	0xe7e
	.uleb128 0x21
	.long	0xe8b
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x28
	.long	0xe98
	.uleb128 0x28
	.long	0xea1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0xde3
	.long	0xe35
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.uleb128 0x21
	.long	0xead
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x28
	.long	0xeba
	.uleb128 0x28
	.long	0xec3
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0xe35
	.long	.LASF133
	.byte	0x1
	.value	0x294
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x292
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x292
	.long	0x322
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x293
	.long	0x322
	.byte	0x0
	.uleb128 0x29
	.long	0xe5a
	.long	.LASF134
	.byte	0x1
	.value	0x2cf
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2ce
	.long	0x93a
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x2ce
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0xe8b
	.long	.LASF135
	.byte	0x1
	.value	0x28a
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x288
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x288
	.long	0x322
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x289
	.long	0x322
	.byte	0x0
	.uleb128 0x2b
	.long	0xead
	.long	.LASF136
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xc6
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xc6
	.long	0x322
	.byte	0x0
	.uleb128 0x2b
	.long	0xecf
	.long	.LASF137
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xce
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xce
	.long	0x322
	.byte	0x0
	.uleb128 0x1d
	.long	0x101f
	.long	.LASF138
	.byte	0x1
	.value	0x2f6
	.byte	0x1
	.long	0x322
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x2f4
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x2f4
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x2f5
	.long	0x3a2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x2f7
	.long	0x93a
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x2f8
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	0xf5f
	.long	0x101f
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x28
	.long	0x1031
	.uleb128 0x22
	.long	0x103b
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.long	0x1047
	.byte	0x0
	.uleb128 0x27
	.long	0xf83
	.long	0xe35
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.uleb128 0x27
	.long	0xfa7
	.long	0xe35
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.uleb128 0x27
	.long	0xfd0
	.long	0x1054
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x28
	.long	0x1066
	.uleb128 0x28
	.long	0x1070
	.uleb128 0x28
	.long	0x107c
	.byte	0x0
	.uleb128 0x27
	.long	0xff9
	.long	0x1089
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x28
	.long	0x1096
	.uleb128 0x28
	.long	0x109f
	.uleb128 0x28
	.long	0x10aa
	.byte	0x0
	.uleb128 0x21
	.long	0x10b6
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x28
	.long	0x10c3
	.uleb128 0x28
	.long	0x10cc
	.uleb128 0x28
	.long	0x10d7
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1054
	.long	.LASF139
	.byte	0x1
	.value	0x2b6
	.byte	0x1
	.long	0x322
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2b4
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x2b4
	.long	0x322
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.value	0x2b5
	.long	0x3a2
	.byte	0x0
	.uleb128 0x25
	.long	0x1089
	.long	.LASF140
	.byte	0x1
	.value	0x2aa
	.byte	0x1
	.long	0x322
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2a8
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x2a8
	.long	0x322
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.value	0x2a9
	.long	0x3a2
	.byte	0x0
	.uleb128 0x2b
	.long	0x10b6
	.long	.LASF141
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xa2
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xa2
	.long	0x322
	.uleb128 0x2c
	.string	"tag"
	.byte	0x1
	.byte	0xa2
	.long	0x3a2
	.byte	0x0
	.uleb128 0x2b
	.long	0x10e3
	.long	.LASF142
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xac
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xac
	.long	0x322
	.uleb128 0x2c
	.string	"tag"
	.byte	0x1
	.byte	0xac
	.long	0x3a2
	.byte	0x0
	.uleb128 0x19
	.long	0x11d7
	.long	.LASF143
	.byte	0x1
	.value	0x30a
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x309
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x309
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x309
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x30b
	.long	0x93a
	.uleb128 0x27
	.long	0x1161
	.long	0x11d7
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x28
	.long	0x11e5
	.uleb128 0x22
	.long	0x11ef
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.long	0x11fb
	.byte	0x0
	.uleb128 0x27
	.long	0x1185
	.long	0xe35
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.uleb128 0x27
	.long	0x11b6
	.long	0x1208
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x22
	.long	0x1215
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	0x121e
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2e
	.long	0x1227
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x1238
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x28
	.long	0x1245
	.uleb128 0x28
	.long	0x124e
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x1208
	.long	.LASF144
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x29d
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x29d
	.long	0x322
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x29e
	.long	0x322
	.byte	0x0
	.uleb128 0x2b
	.long	0x1232
	.long	.LASF145
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.byte	0x95
	.long	0x1232
	.uleb128 0x2c
	.string	"v"
	.byte	0x2
	.byte	0x95
	.long	0x322
	.uleb128 0x2f
	.string	"p1"
	.byte	0x2
	.byte	0x97
	.long	0xb49
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x322
	.uleb128 0x2b
	.long	0x125a
	.long	.LASF146
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xd9
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xd9
	.long	0x322
	.byte	0x0
	.uleb128 0x1d
	.long	0x1377
	.long	.LASF147
	.byte	0x1
	.value	0x319
	.byte	0x1
	.long	0x322
	.quad	.LFB218
	.quad	.LFE218
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x317
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x317
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x318
	.long	0x3a2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x31a
	.long	0x93a
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x31b
	.long	0x3f
	.uleb128 0x27
	.long	0x12e8
	.long	0x1377
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x28
	.long	0x1389
	.uleb128 0x22
	.long	0x1393
	.byte	0x1
	.byte	0x52
	.uleb128 0x28
	.long	0x139f
	.byte	0x0
	.uleb128 0x27
	.long	0x131e
	.long	0x13ac
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x28
	.long	0x13b9
	.uleb128 0x28
	.long	0x13c2
	.uleb128 0x28
	.long	0x13cd
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x24
	.long	0x13d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1356
	.long	0x13e2
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x22
	.long	0x13f3
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x2e
	.long	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xe35
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x28
	.long	0xe43
	.uleb128 0x28
	.long	0xe4d
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x13ac
	.long	.LASF148
	.byte	0x1
	.value	0x2c3
	.byte	0x1
	.long	0x322
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2c1
	.long	0x93a
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.value	0x2c1
	.long	0x322
	.uleb128 0x26
	.string	"tag"
	.byte	0x1
	.value	0x2c2
	.long	0x3a2
	.byte	0x0
	.uleb128 0x2b
	.long	0x13e2
	.long	.LASF149
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.byte	0xba
	.long	0x93a
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0xba
	.long	0x322
	.uleb128 0x2c
	.string	"tag"
	.byte	0x1
	.byte	0xba
	.long	0x3a2
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.long	0x1407
	.long	.LASF150
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.long	0x322
	.byte	0x3
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.byte	0xa5
	.long	0x1407
	.uleb128 0x2f
	.string	"p1"
	.byte	0x2
	.byte	0xa7
	.long	0x3c9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x140d
	.uleb128 0x6
	.long	0x322
	.uleb128 0x19
	.long	0x145c
	.long	.LASF151
	.byte	0x1
	.value	0x327
	.byte	0x1
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x326
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x326
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x326
	.long	0x322
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x14b2
	.long	.LASF152
	.byte	0x1
	.value	0x32d
	.byte	0x1
	.long	0x322
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x32b
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x32b
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.value	0x32c
	.long	0x3a2
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x32e
	.long	0x93a
	.byte	0x0
	.uleb128 0x19
	.long	0x1740
	.long	.LASF153
	.byte	0x1
	.value	0x334
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.value	0x333
	.long	0x565
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x333
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x335
	.long	0x93a
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.value	0x336
	.long	0x322
	.uleb128 0x27
	.long	0x1527
	.long	0x1740
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x154b
	.long	0x1740
	.quad	.LBB99
	.quad	.LBE99
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x156f
	.long	0x1761
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x28
	.long	0x176e
	.uleb128 0x28
	.long	0x1777
	.byte	0x0
	.uleb128 0x27
	.long	0x1593
	.long	0x1761
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x28
	.long	0x176e
	.uleb128 0x28
	.long	0x1777
	.byte	0x0
	.uleb128 0x27
	.long	0x15b7
	.long	0x1740
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x15db
	.long	0x1740
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x15ff
	.long	0x1740
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x1623
	.long	0x1782
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x28
	.long	0x178f
	.uleb128 0x28
	.long	0x1798
	.byte	0x0
	.uleb128 0x27
	.long	0x1647
	.long	0x1782
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x28
	.long	0x178f
	.uleb128 0x28
	.long	0x1798
	.byte	0x0
	.uleb128 0x27
	.long	0x166b
	.long	0x1761
	.quad	.LBB115
	.quad	.LBE115
	.uleb128 0x28
	.long	0x176e
	.uleb128 0x28
	.long	0x1777
	.byte	0x0
	.uleb128 0x27
	.long	0x168f
	.long	0x1740
	.quad	.LBB117
	.quad	.LBE117
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x16b3
	.long	0x1740
	.quad	.LBB119
	.quad	.LBE119
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x16d7
	.long	0x1740
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x16fb
	.long	0x1740
	.quad	.LBB123
	.quad	.LBE123
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x27
	.long	0x171f
	.long	0x1740
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x28
	.long	0x174d
	.uleb128 0x28
	.long	0x1756
	.byte	0x0
	.uleb128 0x21
	.long	0x1761
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x28
	.long	0x176e
	.uleb128 0x28
	.long	0x1777
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x1761
	.long	.LASF154
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x3c9
	.byte	0x0
	.uleb128 0x2b
	.long	0x1782
	.long	.LASF155
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x1e
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x1e
	.long	0x1407
	.byte	0x0
	.uleb128 0x2b
	.long	0x17a3
	.long	.LASF156
	.byte	0x3
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x23
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x23
	.long	0x17a3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17a9
	.uleb128 0x6
	.long	0x317
	.uleb128 0x1d
	.long	0x1a5a
	.long	.LASF157
	.byte	0x1
	.value	0x353
	.byte	0x1
	.long	0x3f
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.value	0x352
	.long	0x565
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x352
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.value	0x352
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x354
	.long	0x93a
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x355
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.value	0x356
	.long	0x322
	.uleb128 0x27
	.long	0x1841
	.long	0x1a5a
	.quad	.LBB129
	.quad	.LBE129
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x1865
	.long	0x1a7b
	.quad	.LBB131
	.quad	.LBE131
	.uleb128 0x28
	.long	0x1a88
	.uleb128 0x28
	.long	0x1a91
	.byte	0x0
	.uleb128 0x27
	.long	0x1889
	.long	0x1a7b
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x28
	.long	0x1a88
	.uleb128 0x28
	.long	0x1a91
	.byte	0x0
	.uleb128 0x27
	.long	0x18ad
	.long	0x1a5a
	.quad	.LBB143
	.quad	.LBE143
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x18d1
	.long	0x1a5a
	.quad	.LBB149
	.quad	.LBE149
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x18f5
	.long	0x1a5a
	.quad	.LBB155
	.quad	.LBE155
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x1919
	.long	0x1a9c
	.quad	.LBB161
	.quad	.LBE161
	.uleb128 0x28
	.long	0x1aa9
	.uleb128 0x28
	.long	0x1ab2
	.byte	0x0
	.uleb128 0x27
	.long	0x193d
	.long	0x1a9c
	.quad	.LBB167
	.quad	.LBE167
	.uleb128 0x28
	.long	0x1aa9
	.uleb128 0x28
	.long	0x1ab2
	.byte	0x0
	.uleb128 0x27
	.long	0x1961
	.long	0x1a7b
	.quad	.LBB173
	.quad	.LBE173
	.uleb128 0x28
	.long	0x1a88
	.uleb128 0x28
	.long	0x1a91
	.byte	0x0
	.uleb128 0x27
	.long	0x1985
	.long	0x1a5a
	.quad	.LBB179
	.quad	.LBE179
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x19a9
	.long	0x1a5a
	.quad	.LBB185
	.quad	.LBE185
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x19cd
	.long	0x1a5a
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x19f1
	.long	0x1a5a
	.quad	.LBB197
	.quad	.LBE197
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x1a15
	.long	0x1a5a
	.quad	.LBB205
	.quad	.LBE205
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.uleb128 0x27
	.long	0x1a39
	.long	0x1a7b
	.quad	.LBB209
	.quad	.LBE209
	.uleb128 0x28
	.long	0x1a88
	.uleb128 0x28
	.long	0x1a91
	.byte	0x0
	.uleb128 0x21
	.long	0x1a5a
	.quad	.LBB211
	.quad	.LBE211
	.uleb128 0x28
	.long	0x1a67
	.uleb128 0x28
	.long	0x1a70
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x1a7b
	.long	.LASF159
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0xb49
	.byte	0x0
	.uleb128 0x2b
	.long	0x1a9c
	.long	.LASF160
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x32
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x32
	.long	0x1232
	.byte	0x0
	.uleb128 0x2b
	.long	0x1abd
	.long	.LASF161
	.byte	0x3
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.string	"f"
	.byte	0x3
	.byte	0x37
	.long	0x565
	.uleb128 0x2c
	.string	"pv"
	.byte	0x3
	.byte	0x37
	.long	0x1abd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x317
	.uleb128 0x32
	.long	0x1b19
	.byte	0x1
	.long	.LASF165
	.byte	0x1
	.value	0x383
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x1
	.value	0x382
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"irq"
	.byte	0x1
	.value	0x382
	.long	0x54e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.string	"nd"
	.byte	0x1
	.value	0x382
	.long	0x1b19
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x384
	.long	0x93a
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3df
	.uleb128 0x19
	.long	0x1b9b
	.long	.LASF163
	.byte	0x1
	.value	0x3b2
	.byte	0x1
	.quad	.LFB224
	.quad	.LFE224
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF111
	.byte	0x1
	.value	0x3b0
	.long	0x591
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x1
	.value	0x3b0
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x3b1
	.long	0x322
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x3b1
	.long	0x322
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x1
	.value	0x3b1
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.string	"d"
	.byte	0x1
	.value	0x3b3
	.long	0x1b9b
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x3b4
	.long	0x93a
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8f6
	.uleb128 0x32
	.long	0x1c0f
	.byte	0x1
	.long	.LASF166
	.byte	0x1
	.value	0x3c5
	.byte	0x1
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"bus"
	.byte	0x1
	.value	0x3c4
	.long	0x64d
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"nd"
	.byte	0x1
	.value	0x3c4
	.long	0x1b19
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x1
	.value	0x3c4
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x3c6
	.long	0x1b9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x3c7
	.long	0x93a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.value	0x3c8
	.long	0xb49
	.byte	0x0
	.uleb128 0x33
	.long	.LASF168
	.byte	0xa
	.byte	0x91
	.long	0x2d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF169
	.byte	0xa
	.byte	0x92
	.long	0x2d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF170
	.byte	0xa
	.byte	0x93
	.long	0x2d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF171
	.byte	0xe
	.byte	0x2c
	.long	0x39c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF172
	.byte	0xf
	.value	0x376
	.long	0xb49
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF173
	.byte	0x1
	.byte	0x9f
	.long	0x322
	.byte	0x9
	.byte	0x3
	.quad	argos_ne2000_netidx
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x36
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1c67
	.long	0x1ac3
	.string	"isa_ne2000_init"
	.long	0x1ba1
	.string	"pci_ne2000_init"
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF142:
	.string	"argos_ne2000_readw"
.LASF154:
	.string	"qemu_put_8s"
.LASF25:
	.string	"_IO_save_end"
.LASF64:
	.string	"macaddr"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF122:
	.string	"mcast_idx"
.LASF133:
	.string	"ne2000_mem_writew"
.LASF120:
	.string	"ne2000_receive"
.LASF132:
	.string	"ne2000_asic_ioport_write"
.LASF23:
	.string	"_IO_save_base"
.LASF101:
	.string	"boundary"
.LASF63:
	.string	"NICInfo"
.LASF171:
	.string	"argos_nt_fl"
.LASF145:
	.string	"cpu_to_le32wu"
.LASF31:
	.string	"_cur_column"
.LASF99:
	.string	"start"
.LASF141:
	.string	"argos_ne2000_readb"
.LASF41:
	.string	"_mode"
.LASF167:
	.string	"pci_conf"
.LASF86:
	.string	"PCIConfigReadFunc"
.LASF149:
	.string	"argos_ne2000_readl"
.LASF119:
	.string	"ne2000_can_receive"
.LASF13:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF45:
	.string	"_IO_marker"
.LASF59:
	.string	"netidx"
.LASF96:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF124:
	.string	"broadcast_macaddr"
.LASF147:
	.string	"ne2000_asic_ioport_readl"
.LASF82:
	.string	"irq_state"
.LASF158:
	.string	"version_id"
.LASF118:
	.string	"index"
.LASF84:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF164:
	.string	"region_num"
.LASF6:
	.string	"unsigned char"
.LASF108:
	.string	"phys"
.LASF60:
	.string	"argos_rtag_t"
.LASF57:
	.string	"argos_rtag"
.LASF68:
	.string	"first_client"
.LASF71:
	.string	"nb_host_devs"
.LASF65:
	.string	"model"
.LASF113:
	.string	"ne2000"
.LASF76:
	.string	"devfn"
.LASF161:
	.string	"qemu_get_be16s"
.LASF61:
	.string	"IOReadHandler"
.LASF43:
	.string	"_IO_lock_t"
.LASF104:
	.string	"rcnt"
.LASF93:
	.string	"VLANClientState"
.LASF72:
	.string	"QEMUFile"
.LASF111:
	.string	"pci_dev"
.LASF75:
	.string	"config"
.LASF156:
	.string	"qemu_put_be16s"
.LASF110:
	.string	"mult"
.LASF55:
	.string	"argos_paddr_t"
.LASF70:
	.string	"nb_guest_devs"
.LASF15:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"double"
.LASF134:
	.string	"ne2000_dma_update"
.LASF160:
	.string	"qemu_get_be32s"
.LASF157:
	.string	"ne2000_load"
.LASF48:
	.string	"_pos"
.LASF168:
	.string	"stdin"
.LASF92:
	.string	"map_func"
.LASF74:
	.string	"PCIDevice"
.LASF85:
	.string	"PCIConfigWriteFunc"
.LASF26:
	.string	"_markers"
.LASF102:
	.string	"tpsr"
.LASF42:
	.string	"_unused2"
.LASF138:
	.string	"ne2000_asic_ioport_read"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF137:
	.string	"argos_ne2000_clearw"
.LASF94:
	.string	"fd_read"
.LASF121:
	.string	"total_len"
.LASF67:
	.string	"VLANState"
.LASF106:
	.string	"rxcr"
.LASF30:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF163:
	.string	"ne2000_map"
.LASF131:
	.string	"ne2000_ioport_read"
.LASF123:
	.string	"buf1"
.LASF155:
	.string	"qemu_put_be32s"
.LASF20:
	.string	"_IO_write_end"
.LASF176:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF89:
	.string	"addr"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF174:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF88:
	.string	"PCIIORegion"
.LASF159:
	.string	"qemu_get_8s"
.LASF109:
	.string	"curpag"
.LASF150:
	.string	"le32_to_cpupu"
.LASF56:
	.string	"argos_netidx_t"
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
.LASF81:
	.string	"irq_index"
.LASF103:
	.string	"tcnt"
.LASF14:
	.string	"_flags"
.LASF130:
	.string	"page"
.LASF80:
	.string	"config_write"
.LASF79:
	.string	"config_read"
.LASF91:
	.string	"type"
.LASF69:
	.string	"next"
.LASF54:
	.string	"long double"
.LASF175:
	.string	"/home/remco/Projects/Argos/src/hw/ne2000.c"
.LASF35:
	.string	"_offset"
.LASF95:
	.string	"fd_can_read"
.LASF90:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF50:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF125:
	.string	"lenbuf"
.LASF73:
	.string	"PCIBus"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF166:
	.string	"pci_ne2000_init"
.LASF140:
	.string	"ne2000_mem_readb"
.LASF148:
	.string	"ne2000_mem_readl"
.LASF11:
	.string	"__off64_t"
.LASF139:
	.string	"ne2000_mem_readw"
.LASF100:
	.string	"stop"
.LASF22:
	.string	"_IO_buf_end"
.LASF115:
	.string	"ne2000_update_irq"
.LASF77:
	.string	"name"
.LASF152:
	.string	"ne2000_reset_ioport_read"
.LASF165:
	.string	"isa_ne2000_init"
.LASF170:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF112:
	.string	"PCINE2000State"
.LASF126:
	.string	"compute_mcast_idx"
.LASF32:
	.string	"_vtable_offset"
.LASF97:
	.string	"info_str"
.LASF116:
	.string	"ne2000_buffer_full"
.LASF114:
	.string	"ne2000_reset"
.LASF144:
	.string	"ne2000_mem_writel"
.LASF62:
	.string	"IOCanRWHandler"
.LASF136:
	.string	"argos_ne2000_clearb"
.LASF146:
	.string	"argos_ne2000_clearl"
.LASF172:
	.string	"phys_ram_dirty"
.LASF153:
	.string	"ne2000_save"
.LASF16:
	.string	"_IO_read_end"
.LASF143:
	.string	"ne2000_asic_ioport_writel"
.LASF78:
	.string	"io_regions"
.LASF51:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF105:
	.string	"rsar"
.LASF87:
	.string	"PCIMapIORegionFunc"
.LASF107:
	.string	"dcfg"
.LASF52:
	.string	"float"
.LASF169:
	.string	"stdout"
.LASF173:
	.string	"argos_ne2000_netidx"
.LASF162:
	.string	"base"
.LASF19:
	.string	"_IO_write_ptr"
.LASF98:
	.string	"NE2000State"
.LASF135:
	.string	"ne2000_mem_writeb"
.LASF151:
	.string	"ne2000_reset_ioport_write"
.LASF129:
	.string	"offset"
.LASF58:
	.string	"origin"
.LASF117:
	.string	"avail"
.LASF128:
	.string	"ne2000_ioport_write"
.LASF66:
	.string	"vlan"
.LASF127:
	.string	"carry"
.LASF83:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
