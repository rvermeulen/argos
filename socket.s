	.file	"socket.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl solookup
	.type	solookup, @function
solookup:
.LFB47:
	.file 1 "slirp/socket.c"
	.loc 1 34 0
	.loc 1 37 0
	movq	(%rdi), %r9
	jmp	.L10
	.p2align 4,,7
.L4:
	movq	(%r9), %r9
.L10:
	cmpq	%rdi, %r9
	je	.L9
	.loc 1 38 0
	movzwl	54(%r9), %eax
	cmpl	%edx, %eax
	jne	.L4
	cmpl	%esi, 48(%r9)
	jne	.L4
	cmpl	%ecx, 44(%r9)
	.p2align 4,,3
	jne	.L4
	movzwl	52(%r9), %eax
	cmpl	%r8d, %eax
	.p2align 4,,3
	jne	.L4
	.loc 1 45 0
	cmpq	%rdi, %r9
	.loc 1 47 0
	movq	%r9, %rax
	.loc 1 45 0
	je	.L9
	.loc 1 49 0
	rep ; ret
	.p2align 4,,7
.L9:
	.loc 1 46 0
	xorl	%eax, %eax
	.loc 1 49 0
	ret
.LFE47:
	.size	solookup, .-solookup
	.p2align 4,,15
.globl socreate
	.type	socreate, @function
socreate:
.LFB48:
	.loc 1 58 0
	pushq	%rbx
.LCFI0:
	.loc 1 61 0
	movl	$160, %edi
	call	malloc
	.loc 1 62 0
	testq	%rax, %rax
	.loc 1 61 0
	movq	%rax, %rbx
	.loc 1 62 0
	je	.L13
	.loc 1 63 0
	movl	$160, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset
	.loc 1 64 0
	movl	$1, 60(%rbx)
	.loc 1 65 0
	movl	$-1, 16(%rbx)
.L13:
	.loc 1 68 0
	movq	%rbx, %rax
	popq	%rbx
	ret
.LFE48:
	.size	socreate, .-socreate
	.p2align 4,,15
.globl sofree
	.type	sofree, @function
sofree:
.LFB49:
	.loc 1 76 0
	pushq	%rbx
.LCFI1:
	.loc 1 77 0
	cmpb	$8, 57(%rdi)
	.loc 1 76 0
	movq	%rdi, %rbx
	.loc 1 77 0
	je	.L21
.L15:
	.loc 1 81 0
	cmpq	tcp_last_so(%rip), %rbx
	je	.L22
	.loc 1 83 0
	movq	udp_last_so(%rip), %rdx
	.loc 1 84 0
	movl	$udb, %eax
	cmpq	%rdx, %rbx
	cmovne	%rdx, %rax
	movq	%rax, udp_last_so(%rip)
.L18:
	.loc 1 86 0
	movq	24(%rbx), %rdi
	call	m_free
	.loc 1 88 0
	cmpq	$0, (%rbx)
	je	.L20
	cmpq	$0, 8(%rbx)
	jne	.L23
.L20:
	.loc 1 91 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free
	.p2align 4,,7
.L21:
	.loc 1 77 0
	movq	152(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L15
	.loc 1 78 0
	call	sofree
	.loc 1 79 0
	movq	$0, 152(%rbx)
	jmp	.L15
	.p2align 4,,7
.L23:
	.loc 1 89 0
	movq	%rbx, %rdi
	call	slirp_remque
	.loc 1 91 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free
	.p2align 4,,7
.L22:
	.loc 1 82 0
	movq	$tcb, tcp_last_so(%rip)
	jmp	.L18
.LFE49:
	.size	sofree, .-sofree
	.p2align 4,,15
.globl sosendoob
	.type	sosendoob, @function
sosendoob:
.LFB52:
	.loc 1 241 0
	movq	%r12, -32(%rsp)
.LCFI2:
	movq	%r13, -24(%rsp)
.LCFI3:
	.loc 1 242 0
	leaq	88(%rdi), %r12
	.loc 1 241 0
	movq	%rbx, -48(%rsp)
.LCFI4:
	movq	%rbp, -40(%rsp)
.LCFI5:
	movq	%rdi, %r13
	movq	%r14, -16(%rsp)
.LCFI6:
	movq	%r15, -8(%rsp)
.LCFI7:
	subq	$2104, %rsp
.LCFI8:
	.loc 1 251 0
	movl	40(%rdi), %edx
	cmpl	$2048, %edx
	jle	.L25
	.loc 1 252 0
	movl	$2048, 40(%rdi)
	movl	$2048, %edx
.L25:
	.loc 1 254 0
	movq	16(%r12), %rsi
	cmpq	8(%r12), %rsi
	jb	.L33
	.loc 1 266 0
	mov	4(%r12), %eax
	.loc 1 268 0
	movq	%rsp, %rdi
	movq	%rsp, %r15
	.loc 1 266 0
	addq	24(%r12), %rax
	movl	%eax, %ebp
	subl	%esi, %ebp
	.loc 1 267 0
	cmpl	%ebp, %edx
	cmovl	%edx, %ebp
	.loc 1 268 0
	movslq	%ebp,%r14
	movq	%r14, %rdx
	call	memcpy
	.loc 1 269 0
	movl	40(%r13), %ecx
	subl	%ebp, %ecx
	.loc 1 270 0
	testl	%ecx, %ecx
	.loc 1 269 0
	movl	%ecx, 40(%r13)
	.loc 1 270 0
	jne	.L34
.L29:
	.loc 1 277 0
	movl	16(%r13), %edi
	movl	$1, %ecx
	movq	%r14, %rdx
	movq	%r15, %rsi
	call	send
	movl	%eax, %ebx
.L27:
	.loc 1 287 0
	mov	4(%r12), %ecx
	.loc 1 286 0
	movslq	%ebx,%rdx
	.loc 1 287 0
	movq	24(%r12), %rax
	.loc 1 286 0
	addq	16(%r12), %rdx
	.loc 1 285 0
	subl	%ebx, (%r12)
	.loc 1 287 0
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L32
	.loc 1 288 0
	subq	%rcx, %rdx
.L32:
	movq	%rdx, 16(%r12)
	.loc 1 291 0
	movl	%ebx, %eax
	movq	2064(%rsp), %rbp
	movq	2056(%rsp), %rbx
	movq	2072(%rsp), %r12
	movq	2080(%rsp), %r13
	movq	2088(%rsp), %r14
	movq	2096(%rsp), %r15
	addq	$2104, %rsp
	ret
	.p2align 4,,7
.L34:
	.loc 1 271 0
	movq	8(%r12), %rax
	movq	24(%r12), %rsi
	.loc 1 273 0
	leaq	(%r15,%r14), %rdi
	.loc 1 271 0
	movl	%eax, %ebx
	subl	%esi, %ebx
	.loc 1 272 0
	cmpl	%ebx, %ecx
	cmovl	%ecx, %ebx
	.loc 1 273 0
	movslq	%ebx,%rdx
	.loc 1 275 0
	addl	%ebx, %ebp
	.loc 1 273 0
	call	memcpy
	.loc 1 274 0
	subl	%ebx, 40(%r13)
	movslq	%ebp,%r14
	jmp	.L29
	.p2align 4,,7
.L33:
	.loc 1 256 0
	movl	16(%r13), %edi
	movslq	%edx,%rdx
	movl	$1, %ecx
	call	send
	.loc 1 257 0
	subl	%eax, 40(%r13)
	.loc 1 256 0
	movl	%eax, %ebx
	jmp	.L27
.LFE52:
	.size	sosendoob, .-sosendoob
	.p2align 4,,15
.globl sorecvfrom
	.type	sorecvfrom, @function
sorecvfrom:
.LFB54:
	.loc 1 393 0
	movq	%r12, -16(%rsp)
.LCFI9:
	movq	%rbx, -32(%rsp)
.LCFI10:
	movq	%rdi, %r12
	movq	%rbp, -24(%rsp)
.LCFI11:
	movq	%r13, -8(%rsp)
.LCFI12:
	subq	$328, %rsp
.LCFI13:
	.loc 1 395 0
	movl	$16, 12(%rsp)
	.loc 1 400 0
	cmpb	$1, 58(%rdi)
	je	.L61
.LBB2:
	.loc 1 427 0
	call	m_get
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L35
	.loc 1 428 0
	movq	48(%rax), %rsi
	.loc 1 434 0
	movslq	56(%rax),%rdx
	.loc 1 428 0
	addq	$56, %rsi
	.loc 1 434 0
	testb	$1, 32(%rax)
	.loc 1 428 0
	movq	%rsi, 48(%rax)
	.loc 1 434 0
	jne	.L62
	movslq	36(%rax),%rax
	.loc 1 436 0
	movl	16(%r12), %edi
	.loc 1 434 0
	addq	%rbx, %rax
	subq	%rsi, %rax
	.loc 1 436 0
	movl	$21531, %esi
	.loc 1 434 0
	subq	%rdx, %rax
	.loc 1 436 0
	leaq	8(%rsp), %rdx
	.loc 1 434 0
	leal	64(%rax), %ebp
	.loc 1 436 0
	xorl	%eax, %eax
	call	ioctl
	.loc 1 438 0
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	jg	.L63
.L59:
	movq	48(%rbx), %rsi
.L46:
	.loc 1 445 0
	leaq	272(%rsp), %r13
	movl	16(%r12), %edi
	leaq	12(%rsp), %r9
	xorl	%ecx, %ecx
	movslq	%ebp,%rdx
	movq	%r13, %r8
	call	recvfrom
	.loc 1 449 0
	testl	%eax, %eax
	.loc 1 445 0
	movl	%eax, 56(%rbx)
	.loc 1 449 0
	js	.L64
	.loc 1 465 0
	movl	72(%r12), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 466 0
	cmpw	$13568, 52(%r12)
	je	.L65
	.loc 1 469 0
	movl	curtime(%rip), %eax
	addl	$240000, %eax
	movl	%eax, 72(%r12)
.L54:
	.loc 1 482 0
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	udp_output
.L35:
.LBE2:
	.loc 1 485 0
	movq	296(%rsp), %rbx
	movq	304(%rsp), %rbp
	movq	312(%rsp), %r12
	movq	320(%rsp), %r13
	addq	$328, %rsp
	ret
	.p2align 4,,7
.L62:
.LBB3:
	.loc 1 434 0
	movslq	36(%rax),%rax
	.loc 1 436 0
	movl	16(%r12), %edi
	.loc 1 434 0
	addq	64(%rbx), %rax
	subq	%rsi, %rax
	.loc 1 436 0
	movl	$21531, %esi
	.loc 1 434 0
	movl	%eax, %ebp
	.loc 1 436 0
	xorl	%eax, %eax
	.loc 1 434 0
	subl	%edx, %ebp
	.loc 1 436 0
	leaq	8(%rsp), %rdx
	call	ioctl
	.loc 1 438 0
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	jle	.L59
.L63:
	.loc 1 439 0
	movq	48(%rbx), %rsi
	.loc 1 440 0
	movq	%rbx, %rdi
	.loc 1 439 0
	subl	%ebx, %esi
	addl	56(%rbx), %esi
	leal	-63(%rsi,%rax), %esi
	movl	%esi, 8(%rsp)
	.loc 1 440 0
	call	m_inc
	.loc 1 441 0
	testb	$1, 32(%rbx)
	movslq	56(%rbx),%rdx
	je	.L47
	movslq	36(%rbx),%rax
	movq	48(%rbx), %rsi
	addq	64(%rbx), %rax
	subq	%rsi, %rax
	movl	%eax, %ebp
	subl	%edx, %ebp
	jmp	.L46
	.p2align 4,,7
.L61:
.LBE3:
.LBB4:
	.loc 1 404 0
	movl	16(%rdi), %edi
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %r9
	leaq	272(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$256, %edx
	call	recvfrom
	.loc 1 408 0
	incl	%eax
	cmpl	$1, %eax
	ja	.L37
.LBB5:
	.loc 1 411 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 409 0
	movl	$3, %ebx
	.loc 1 411 0
	cmpl	$113, %eax
	je	.L66
	.loc 1 412 0
	cmpl	$101, %eax
	movl	$0, %eax
	cmove	%eax, %ebx
.L39:
	.loc 1 416 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	24(%r12), %rdi
	movzbl	%bl, %edx
	movq	%rax, %r8
	xorl	%ecx, %ecx
	movl	$3, %esi
	call	icmp_error
.L41:
.LBE5:
	.loc 1 422 0
	movq	%r12, %rdi
	call	udp_detach
	jmp	.L35
.L65:
.LBE4:
.LBB6:
	.loc 1 467 0
	movl	curtime(%rip), %eax
	addl	$10000, %eax
	.loc 1 469 0
	movl	%eax, 72(%r12)
	jmp	.L54
.L66:
.LBE6:
.LBB7:
.LBB8:
	.loc 1 411 0
	movl	$1, %ebx
	jmp	.L39
	.p2align 4,,7
.L64:
.LBE8:
.LBE7:
.LBB9:
.LBB10:
	.loc 1 452 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 450 0
	movl	$3, %ebp
	.loc 1 452 0
	cmpl	$113, %eax
	je	.L67
	.loc 1 453 0
	cmpl	$101, %eax
	movl	$0, %eax
	cmove	%eax, %ebp
.L51:
	.loc 1 456 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	24(%r12), %rdi
	movzbl	%bpl, %edx
	movq	%rax, %r8
	xorl	%ecx, %ecx
	movl	$3, %esi
	call	icmp_error
	.loc 1 457 0
	movq	%rbx, %rdi
	call	m_free
	jmp	.L35
.L37:
.LBE10:
.LBE9:
.LBB11:
	.loc 1 418 0
	movq	24(%r12), %rdi
	call	icmp_reflect
	.loc 1 419 0
	movq	$0, 24(%r12)
	.p2align 4,,4
	jmp	.L41
.L47:
.LBE11:
.LBB12:
	.loc 1 441 0
	movslq	36(%rbx),%rax
	movq	48(%rbx), %rsi
	addq	%rbx, %rax
	subq	%rsi, %rax
	subq	%rdx, %rax
	leal	64(%rax), %ebp
	jmp	.L46
.L67:
.LBB13:
	.loc 1 452 0
	movl	$1, %ebp
	jmp	.L51
.LBE13:
.LBE12:
.LFE54:
	.size	sorecvfrom, .-sorecvfrom
	.p2align 4,,15
.globl sosendto
	.type	sosendto, @function
sosendto:
.LFB55:
	.loc 1 494 0
	pushq	%rbx
.LCFI14:
	movq	%rdi, %rbx
	subq	$16, %rsp
.LCFI15:
	.loc 1 502 0
	movw	$2, (%rsp)
	.loc 1 503 0
	movl	44(%rdi), %edx
	movl	%edx, %eax
	andl	$16777215, %eax
	cmpl	special_addr(%rip), %eax
	je	.L82
	.loc 1 515 0
	movl	%edx, 4(%rsp)
.L78:
	.loc 1 516 0
	movzwl	52(%rbx), %eax
	.loc 1 521 0
	movl	16(%rbx), %edi
	xorl	%ecx, %ecx
	movl	$16, %r9d
	movq	%rsp, %r8
	.loc 1 516 0
	movw	%ax, 2(%rsp)
	.loc 1 521 0
	movslq	56(%rsi),%rdx
	movq	48(%rsi), %rsi
	call	sendto
	.loc 1 523 0
	testl	%eax, %eax
	.loc 1 524 0
	movl	$-1, %edx
	.loc 1 523 0
	js	.L68
	.loc 1 530 0
	movl	72(%rbx), %edx
	testl	%edx, %edx
	jne	.L83
.L80:
	.loc 1 532 0
	movl	$4, 60(%rbx)
	.loc 1 533 0
	xorl	%edx, %edx
.L68:
	.loc 1 534 0
	addq	$16, %rsp
	movl	%edx, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L83:
	.loc 1 531 0
	movl	curtime(%rip), %eax
	addl	$240000, %eax
	movl	%eax, 72(%rbx)
	jmp	.L80
	.p2align 4,,7
.L82:
	.loc 1 505 0
#APP
	bswap %edx
#NO_APP
	cmpb	$3, %dl
	je	.L84
	.loc 1 511 0
	movl	loopback_addr(%rip), %eax
	movl	%eax, 4(%rsp)
	jmp	.L78
.L84:
	.loc 1 507 0
	movl	dns_addr(%rip), %eax
	.loc 1 511 0
	movl	%eax, 4(%rsp)
	jmp	.L78
.LFE55:
	.size	sosendto, .-sosendto
	.p2align 4,,15
.globl solisten
	.type	solisten, @function
solisten:
.LFB56:
	.loc 1 545 0
	movq	%rbx, -40(%rsp)
.LCFI16:
	movq	%rbp, -32(%rsp)
.LCFI17:
	movl	%ecx, %ebx
	movq	%r12, -24(%rsp)
.LCFI18:
	movq	%r13, -16(%rsp)
.LCFI19:
	movl	%edx, %r12d
	movq	%r14, -8(%rsp)
.LCFI20:
	subq	$72, %rsp
.LCFI21:
	.loc 1 545 0
	movl	%edi, %r14d
	movl	%esi, %r13d
	.loc 1 548 0
	movl	$16, 8(%rsp)
	movl	$1, 12(%rsp)
	.loc 1 556 0
	call	socreate
	movq	%rax, %rbp
	.loc 1 558 0
	xorl	%eax, %eax
	.loc 1 556 0
	testq	%rbp, %rbp
	je	.L85
	.loc 1 562 0
	movq	%rbp, %rdi
	call	tcp_newtcpcb
	testq	%rax, %rax
	movq	%rax, 64(%rbp)
	je	.L95
	.loc 1 566 0
	movl	$tcb, %esi
	movq	%rbp, %rdi
	call	slirp_insque
	.loc 1 571 0
	testb	$2, %bh
	jne	.L96
.L88:
	.loc 1 574 0
	orb	$1, %bh
	.loc 1 576 0
	movl	%r13d, 48(%rbp)
	.loc 1 575 0
	movw	%r12w, 54(%rbp)
	.loc 1 574 0
	movl	%ebx, 60(%rbp)
	.loc 1 582 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	.loc 1 578 0
	movw	$2, 16(%rsp)
	.loc 1 579 0
	movl	$0, 20(%rsp)
	.loc 1 580 0
	movw	%r14w, 18(%rsp)
	.loc 1 582 0
	call	socket
	testl	%eax, %eax
	movl	%eax, %r13d
	js	.L90
	leaq	12(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	setsockopt
	testl	%eax, %eax
	js	.L90
	leaq	16(%rsp), %rbx
	movl	$16, %edx
	movl	%r13d, %edi
	movq	%rbx, %rsi
	call	bind
	testl	%eax, %eax
	js	.L90
	movl	$1, %esi
	movl	%r13d, %edi
	call	listen
	testl	%eax, %eax
	js	.L90
	.loc 1 598 0
	leaq	12(%rsp), %rcx
	movl	$4, %r8d
	movl	$10, %edx
	movl	$1, %esi
	movl	%r13d, %edi
	call	setsockopt
	.loc 1 600 0
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	call	getsockname
	.loc 1 601 0
	movzwl	18(%rsp), %eax
	movw	%ax, 52(%rbp)
	.loc 1 602 0
	movl	20(%rsp), %eax
	testl	%eax, %eax
	je	.L92
	cmpl	loopback_addr(%rip), %eax
	je	.L92
.L91:
	.loc 1 605 0
	movl	%eax, 44(%rbp)
	.loc 1 607 0
	movl	%r13d, 16(%rbp)
	.loc 1 608 0
	movq	%rbp, %rax
	.p2align 4,,7
.L85:
	.loc 1 609 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	movq	64(%rsp), %r14
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L96:
	.loc 1 572 0
	movq	64(%rbp), %rax
	movw	$300, 14(%rax)
	jmp	.L88
	.p2align 4,,7
.L90:
.LBB14:
	.loc 1 586 0
	call	__errno_location
	.loc 1 588 0
	movl	%r13d, %edi
	.loc 1 586 0
	movl	(%rax), %r12d
	movq	%rax, %rbx
	.loc 1 588 0
	call	close
	.loc 1 589 0
	movq	%rbp, %rdi
	call	sofree
	.loc 1 596 0
	xorl	%eax, %eax
	.loc 1 594 0
	movl	%r12d, (%rbx)
	jmp	.L85
	.p2align 4,,7
.L92:
.LBE14:
	.loc 1 603 0
	movl	alias_addr(%rip), %eax
	jmp	.L91
.L95:
	.loc 1 563 0
	movq	%rbp, %rdi
	call	free
.LBB15:
	.loc 1 596 0
	xorl	%eax, %eax
	jmp	.L85
.LBE15:
.LFE56:
	.size	solisten, .-solisten
	.p2align 4,,15
.globl soisfconnecting
	.type	soisfconnecting, @function
soisfconnecting:
.LFB57:
	.loc 1 647 0
	.loc 1 648 0
	movl	60(%rdi), %eax
	andl	$-94, %eax
	.loc 1 650 0
	orl	$2, %eax
	movl	%eax, 60(%rdi)
	ret
.LFE57:
	.size	soisfconnecting, .-soisfconnecting
	.p2align 4,,15
.globl soisfconnected
	.type	soisfconnected, @function
soisfconnected:
.LFB58:
	.loc 1 656 0
	.loc 1 657 0
	movl	60(%rdi), %eax
	andl	$-68, %eax
	.loc 1 658 0
	orl	$4, %eax
	movl	%eax, 60(%rdi)
	ret
.LFE58:
	.size	soisfconnected, .-soisfconnected
	.p2align 4,,15
	.type	sofcantsendmore, @function
sofcantsendmore:
.LFB60:
	.loc 1 679 0
	pushq	%rbx
.LCFI22:
	.loc 1 680 0
	movl	60(%rdi), %eax
	.loc 1 679 0
	movq	%rdi, %rbx
	.loc 1 680 0
	testb	$1, %al
	je	.L106
.L100:
	.loc 1 689 0
	movl	%eax, %edx
	andl	$-3, %edx
	.loc 1 690 0
	testb	$8, %al
	je	.L103
	.loc 1 691 0
	movl	$1, 60(%rbx)
	.loc 1 694 0
	popq	%rbx
	ret
	.p2align 4,,7
.L103:
	.loc 1 693 0
	orl	$16, %edx
	movl	%edx, 60(%rbx)
	.loc 1 694 0
	popq	%rbx
	ret
	.p2align 4,,7
.L106:
	.loc 1 681 0
	movl	16(%rdi), %edi
	movl	$1, %esi
	call	shutdown
	.loc 1 682 0
	movq	global_readfds(%rip), %rcx
	testq	%rcx, %rcx
	jne	.L107
.L101:
	.loc 1 685 0
	movq	global_xfds(%rip), %rcx
	testq	%rcx, %rcx
	je	.L105
	.loc 1 686 0
	movslq	16(%rbx),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btrq %rax,(%rcx,%rdx,8)
#NO_APP
.L105:
	movl	60(%rbx), %eax
	jmp	.L100
	.p2align 4,,7
.L107:
	.loc 1 683 0
	movslq	16(%rbx),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btrq %rax,(%rcx,%rdx,8)
#NO_APP
	jmp	.L101
.LFE60:
	.size	sofcantsendmore, .-sofcantsendmore
	.p2align 4,,15
.globl sowrite
	.type	sowrite, @function
sowrite:
.LFB53:
	.loc 1 300 0
	movq	%rbp, -32(%rsp)
.LCFI23:
	movq	%r13, -16(%rsp)
.LCFI24:
	.loc 1 302 0
	leaq	88(%rdi), %rbp
	.loc 1 300 0
	movq	%rbx, -40(%rsp)
.LCFI25:
	movq	%r12, -24(%rsp)
.LCFI26:
	movq	%rdi, %r13
	movq	%r14, -8(%rsp)
.LCFI27:
	subq	$72, %rsp
.LCFI28:
	.loc 1 309 0
	movl	40(%rdi), %esi
	testl	%esi, %esi
	jne	.L130
.L109:
	.loc 1 322 0
	movq	16(%rbp), %rsi
	.loc 1 320 0
	movl	(%rbp), %ecx
	.loc 1 322 0
	movq	%rsi, (%rsp)
	.loc 1 323 0
	movq	8(%rbp), %rdi
	cmpq	%rdi, %rsi
	jb	.L131
	.loc 1 329 0
	mov	4(%rbp), %eax
	movq	24(%rbp), %r9
	.loc 1 330 0
	movslq	%ecx,%rdx
	.loc 1 329 0
	leaq	(%r9,%rax), %r8
	subq	%rsi, %r8
	.loc 1 330 0
	cmpq	%rdx, %r8
	jbe	.L127
	movq	%rdx, %r8
.L127:
	.loc 1 332 0
	subl	%r8d, %ecx
	movq	%r8, 8(%rsp)
	je	.L115
	.loc 1 334 0
	movq	%rdi, %rdx
	.loc 1 335 0
	movslq	%ecx,%rax
	.loc 1 347 0
	movl	16(%r13), %edi
	.loc 1 334 0
	subq	%r9, %rdx
	.loc 1 333 0
	movq	%r9, 16(%rsp)
	.loc 1 336 0
	movl	$2, %r14d
	.loc 1 335 0
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	.loc 1 347 0
	xorl	%ecx, %ecx
	movq	%r8, %rdx
	.loc 1 335 0
	movq	%rax, 24(%rsp)
	.loc 1 347 0
	call	send
	.loc 1 350 0
	testl	%eax, %eax
	.loc 1 347 0
	movl	%eax, %ebx
	.loc 1 350 0
	js	.L132
	.p2align 4,,7
.L118:
	.loc 1 353 0
	testl	%ebx, %ebx
	jle	.L133
	.loc 1 362 0
	cmpl	$2, %r14d
	movslq	%ebx,%r12
	je	.L134
.L121:
	.loc 1 374 0
	mov	4(%rbp), %esi
	.loc 1 373 0
	movq	16(%rbp), %rdx
	.loc 1 374 0
	movq	24(%rbp), %rax
	.loc 1 372 0
	movl	(%rbp), %ecx
	.loc 1 373 0
	addq	%r12, %rdx
	.loc 1 374 0
	addq	%rsi, %rax
	.loc 1 372 0
	subl	%ebx, %ecx
	.loc 1 374 0
	cmpq	%rax, %rdx
	.loc 1 372 0
	movl	%ecx, (%rbp)
	.loc 1 374 0
	jb	.L129
	.loc 1 375 0
	subq	%rsi, %rdx
.L129:
	movq	%rdx, 16(%rbp)
	.loc 1 381 0
	testb	$64, 60(%r13)
	je	.L124
	testl	%ecx, %ecx
	je	.L135
.L124:
	.loc 1 384 0
	movl	%ebx, %eax
.L108:
	.loc 1 385 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	movq	64(%rsp), %r14
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L131:
	.loc 1 324 0
	movq	%rdi, %r8
	.loc 1 326 0
	movslq	%ecx,%rdx
	.loc 1 324 0
	subq	%rsi, %r8
	.loc 1 326 0
	cmpq	%rdx, %r8
	jbe	.L126
	movq	%rdx, %r8
.L126:
	movq	%r8, 8(%rsp)
.L115:
	.loc 1 347 0
	movl	16(%r13), %edi
	xorl	%ecx, %ecx
	movq	%r8, %rdx
	.loc 1 338 0
	movl	$1, %r14d
	.loc 1 347 0
	call	send
	.loc 1 350 0
	testl	%eax, %eax
	.loc 1 347 0
	movl	%eax, %ebx
	.loc 1 350 0
	jns	.L118
.L132:
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L119
	cmpl	$4, %eax
	.p2align 4,,2
	jne	.L118
.L119:
	.loc 1 351 0
	xorl	%eax, %eax
	.p2align 4,,3
	jmp	.L108
	.p2align 4,,7
.L130:
	.loc 1 310 0
	.p2align 4,,7
	call	sosendoob
	.loc 1 311 0
	movl	88(%r13), %ecx
	.loc 1 312 0
	xorl	%eax, %eax
	.loc 1 311 0
	testl	%ecx, %ecx
	je	.L108
	.p2align 4,,2
	jmp	.L109
	.p2align 4,,7
.L134:
	.loc 1 362 0
	cmpq	8(%rsp), %r12
	.p2align 4,,2
	jne	.L121
.LBB16:
	.loc 1 364 0
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	movl	16(%r13), %edi
	call	send
	.loc 1 365 0
	testl	%eax, %eax
	jle	.L121
	.loc 1 366 0
	addl	%eax, %ebx
	movslq	%ebx,%r12
	jmp	.L121
	.p2align 4,,7
.L135:
.LBE16:
	.loc 1 382 0
	movq	%r13, %rdi
	call	sofcantsendmore
	.p2align 4,,2
	jmp	.L124
.L133:
	.loc 1 356 0
	movq	%r13, %rdi
	call	sofcantsendmore
	.loc 1 357 0
	movq	64(%r13), %rdi
	call	tcp_sockclosed
	.loc 1 358 0
	movl	$-1, %eax
	jmp	.L108
.LFE53:
	.size	sowrite, .-sowrite
	.p2align 4,,15
.globl soread
	.type	soread, @function
soread:
.LFB50:
	.loc 1 102 0
	movq	%rbp, -32(%rsp)
.LCFI29:
	.loc 1 104 0
	leaq	120(%rdi), %rbp
	.loc 1 102 0
	movq	%r13, -16(%rsp)
.LCFI30:
	movq	%rdi, %r13
	movq	%rbx, -40(%rsp)
.LCFI31:
	movq	%r12, -24(%rsp)
.LCFI32:
	movq	%r14, -8(%rsp)
.LCFI33:
	subq	$72, %rsp
.LCFI34:
	.loc 1 119 0
	movq	8(%rbp), %rsi
	.loc 1 107 0
	movq	64(%r13), %rax
	.loc 1 105 0
	movl	4(%rbp), %edx
	.loc 1 107 0
	movzwl	24(%rax), %r11d
	.loc 1 119 0
	movq	%rsi, (%rsp)
	.loc 1 105 0
	movl	%edx, %edi
	.loc 1 120 0
	movq	16(%rbp), %rcx
	.loc 1 105 0
	subl	120(%r13), %edi
	.loc 1 120 0
	cmpq	%rcx, %rsi
	jae	.L137
	.loc 1 121 0
	movq	%rcx, %r8
	.loc 1 123 0
	movslq	%edi,%rdx
	.loc 1 121 0
	subq	%rsi, %r8
	.loc 1 123 0
	cmpq	%rdx, %r8
	.loc 1 121 0
	movq	%r8, %r10
	.loc 1 123 0
	ja	.L170
.L142:
	.loc 1 152 0
	movslq	%r11d,%rdx
	cmpq	%rdx, %r8
	jbe	.L165
.L176:
	.loc 1 153 0
	movq	%r8, %rax
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	subq	%rdx, %r8
.L168:
	.loc 1 146 0
	movq	%r8, 8(%rsp)
.L149:
	.loc 1 162 0
	movl	16(%r13), %edi
	xorl	%ecx, %ecx
	movq	%r8, %rdx
	.loc 1 154 0
	movl	$1, %r14d
	.loc 1 162 0
	call	recv
	.loc 1 164 0
	testl	%eax, %eax
	.loc 1 162 0
	movl	%eax, %ebx
	.loc 1 164 0
	jle	.L171
.L150:
	.loc 1 185 0
	cmpl	$2, %r14d
	movslq	%eax,%r12
	je	.L172
.L159:
	.loc 1 198 0
	mov	4(%rbp), %ecx
	.loc 1 197 0
	movq	8(%rbp), %rdx
	.loc 1 198 0
	movq	24(%rbp), %rax
	.loc 1 196 0
	addl	%ebx, (%rbp)
	.loc 1 197 0
	addq	%r12, %rdx
	.loc 1 198 0
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L166
	.loc 1 199 0
	subq	%rcx, %rdx
.L166:
	movq	%rdx, 8(%rbp)
	.loc 1 200 0
	movl	%ebx, %eax
.L136:
	.loc 1 201 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	movq	64(%rsp), %r14
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L137:
	.loc 1 129 0
	movq	24(%rbp), %r9
	mov	%edx, %eax
	.loc 1 131 0
	movslq	%edi,%rdx
	.loc 1 129 0
	leaq	(%r9,%rax), %r8
	subq	%rsi, %r8
	.loc 1 131 0
	cmpq	%rdx, %r8
	.loc 1 129 0
	movq	%r8, %r10
	.loc 1 131 0
	ja	.L173
.L141:
	.loc 1 133 0
	subl	%r8d, %edi
	je	.L142
	.loc 1 135 0
	subq	%r9, %rcx
	.loc 1 136 0
	movslq	%edi,%rax
	.loc 1 134 0
	movq	%r9, 16(%rsp)
	.loc 1 136 0
	cmpq	%rax, %rcx
	.loc 1 135 0
	movq	%rcx, %r9
	.loc 1 136 0
	ja	.L174
	.loc 1 138 0
	leal	(%r8,%r9), %eax
	.loc 1 139 0
	cmpl	%r11d, %eax
	jle	.L144
.L177:
	.loc 1 140 0
	cltd
	idivl	%r11d
	.loc 1 141 0
	movslq	%edx,%rax
	.loc 1 140 0
	movl	%edx, %edi
	.loc 1 141 0
	cmpq	%rax, %r9
	jbe	.L145
	.loc 1 142 0
	subq	%rax, %r9
	movq	%r10, 8(%rsp)
	movq	%r9, 24(%rsp)
.L167:
	.loc 1 162 0
	movl	16(%r13), %edi
	xorl	%ecx, %ecx
	movq	%r8, %rdx
	.loc 1 150 0
	movl	$2, %r14d
	.loc 1 162 0
	call	recv
	.loc 1 164 0
	testl	%eax, %eax
	.loc 1 162 0
	movl	%eax, %ebx
	.loc 1 164 0
	jg	.L150
	.p2align 4,,7
.L171:
	.loc 1 165 0
	jge	.L151
	.p2align 4,,7
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	.p2align 4,,4
	je	.L152
	cmpl	$11, %eax
	.p2align 4,,2
	je	.L152
.L151:
.LBB17:
.LBB18:
	.loc 1 664 0
	movl	60(%r13), %eax
	testb	$1, %al
	je	.L175
.L154:
	.loc 1 670 0
	movl	%eax, %edx
	andl	$-3, %edx
	.loc 1 671 0
	testb	$16, %al
	je	.L156
	.loc 1 672 0
	movl	$1, 60(%r13)
.L158:
.LBE18:
.LBE17:
	.loc 1 170 0
	movq	64(%r13), %rdi
	call	tcp_sockclosed
	.loc 1 171 0
	movl	$-1, %eax
	jmp	.L136
	.p2align 4,,7
.L173:
	.loc 1 131 0
	movq	%rdx, %r8
	movq	%rdx, %r10
	jmp	.L141
	.p2align 4,,7
.L170:
	.loc 1 124 0
	movq	%rdx, %r8
	movq	%rdx, %r10
	.loc 1 152 0
	movslq	%r11d,%rdx
	cmpq	%rdx, %r8
	ja	.L176
.L165:
	movq	%r10, 8(%rsp)
	jmp	.L149
	.p2align 4,,7
.L172:
	.loc 1 185 0
	cmpq	8(%rsp), %r12
	jne	.L159
.LBB19:
	.loc 1 187 0
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	movl	16(%r13), %edi
	call	recv
	.loc 1 188 0
	testl	%eax, %eax
	jle	.L159
	.loc 1 189 0
	addl	%eax, %ebx
	movslq	%ebx,%r12
	jmp	.L159
	.p2align 4,,7
.L174:
.LBE19:
	.loc 1 137 0
	movq	%rax, %r9
	movq	%rax, %rcx
	.loc 1 138 0
	leal	(%r8,%r9), %eax
	.loc 1 139 0
	cmpl	%r11d, %eax
	jg	.L177
.L144:
	movq	%r10, 8(%rsp)
	movq	%rcx, 24(%rsp)
	jmp	.L167
.L152:
	.loc 1 166 0
	xorl	%eax, %eax
	jmp	.L136
.L145:
	.loc 1 145 0
	subl	%r9d, %edi
	movq	%rcx, 24(%rsp)
	.loc 1 146 0
	movslq	%edi,%rax
	subq	%rax, %r8
	jmp	.L168
.L156:
.LBB20:
.LBB21:
	.loc 1 674 0
	orl	$8, %edx
	movl	%edx, 60(%r13)
	jmp	.L158
.L175:
	.loc 1 665 0
	movl	16(%r13), %edi
	xorl	%esi, %esi
	call	shutdown
	.loc 1 666 0
	movq	global_writefds(%rip), %rcx
	testq	%rcx, %rcx
	je	.L162
	.loc 1 667 0
	movslq	16(%r13),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btrq %rax,(%rcx,%rdx,8)
#NO_APP
.L162:
	movl	60(%r13), %eax
	jmp	.L154
.LBE21:
.LBE20:
.LFE50:
	.size	soread, .-soread
	.p2align 4,,15
.globl sorecvoob
	.type	sorecvoob, @function
sorecvoob:
.LFB51:
	.loc 1 213 0
	movq	%rbx, -16(%rsp)
.LCFI35:
	movq	%r12, -8(%rsp)
.LCFI36:
	subq	$24, %rsp
.LCFI37:
	.loc 1 214 0
	movq	64(%rdi), %r12
	.loc 1 213 0
	movq	%rdi, %rbx
	.loc 1 227 0
	call	soread
	.loc 1 228 0
	movl	120(%rbx), %eax
	addl	80(%r12), %eax
	.loc 1 229 0
	movb	$1, 26(%r12)
	.loc 1 230 0
	movq	%r12, %rdi
	.loc 1 228 0
	movl	%eax, 88(%r12)
	.loc 1 230 0
	call	tcp_output
	.loc 1 231 0
	movb	$0, 26(%r12)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE51:
	.size	sorecvoob, .-sorecvoob
	.p2align 4,,15
.globl soisfdisconnected
	.type	soisfdisconnected, @function
soisfdisconnected:
.LFB61:
	.loc 1 699 0
	.loc 1 699 0
	rep ; ret
.LFE61:
	.size	soisfdisconnected, .-soisfdisconnected
	.p2align 4,,15
.globl sofwdrain
	.type	sofwdrain, @function
sofwdrain:
.LFB62:
	.loc 1 715 0
	.loc 1 716 0
	movl	88(%rdi), %r8d
	testl	%r8d, %r8d
	je	.L181
	.loc 1 717 0
	orl	$64, 60(%rdi)
	ret
	.p2align 4,,7
.L181:
	.loc 1 719 0
	jmp	sofcantsendmore
.LFE62:
	.size	sofwdrain, .-sofwdrain
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI0-.LFB48
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
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI1-.LFB49
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
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI3-.LFB52
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI3
	.byte	0xe
	.uleb128 0x840
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI10-.LFB54
	.byte	0x83
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x150
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI14-.LFB55
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI17-.LFB56
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI22-.LFB60
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
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI24-.LFB53
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI24
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI29-.LFB50
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI34-.LCFI30
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI37-.LFB51
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.align 8
.LEFDE28:
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
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI0-.LFB48
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
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI1-.LFB49
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
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI3-.LFB52
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI3
	.byte	0xe
	.uleb128 0x840
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI10-.LFB54
	.byte	0x83
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x150
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI14-.LFB55
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI17-.LFB56
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI22-.LFB60
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
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI24-.LFB53
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI24
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI29-.LFB50
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI34-.LCFI30
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI37-.LFB51
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.align 8
.LEFDE29:
	.file 2 "/home/remco/Projects/Argos/src/slirp/tcp.h"
	.file 3 "/home/remco/Projects/Argos/src/slirp/socket.h"
	.file 4 "/home/remco/Projects/Argos/src/slirp/udp.h"
	.file 5 "/home/remco/Projects/Argos/src/slirp/mbuf.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/home/remco/Projects/Argos/src/slirp/tcpip.h"
	.file 9 "/home/remco/Projects/Argos/src/slirp/ip.h"
	.file 10 "/usr/include/netinet/in.h"
	.file 11 "/usr/include/stdint.h"
	.file 12 "/home/remco/Projects/Argos/src/slirp/tcp_timer.h"
	.file 13 "/home/remco/Projects/Argos/src/slirp/tcp_var.h"
	.file 14 "/home/remco/Projects/Argos/src/slirp/sbuf.h"
	.file 15 "/usr/include/sys/socket.h"
	.file 16 "/usr/include/bits/sockaddr.h"
	.file 17 "/usr/include/bits/uio.h"
	.file 18 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/libio.h"
	.file 21 "slirp/main.h"
	.file 22 "/usr/include/sys/select.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1168
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF227
	.byte	0x1
	.long	.LASF228
	.long	.LASF229
	.uleb128 0x2
	.long	.LASF0
	.byte	0x7
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x7
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x7
	.byte	0x21
	.long	0x5c
	.uleb128 0x3
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF10
	.byte	0x7
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0x8e
	.long	0x7f
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0xba
	.long	0xb0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0x75
	.long	0xa5
	.uleb128 0x2
	.long	.LASF18
	.byte	0x12
	.byte	0xd5
	.long	0x63
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x6
	.byte	0xcb
	.long	0x5c
	.uleb128 0x2
	.long	.LASF22
	.byte	0x16
	.byte	0x37
	.long	0x7f
	.uleb128 0x7
	.long	0x137
	.byte	0x80
	.byte	0x16
	.byte	0x4e
	.uleb128 0x8
	.long	.LASF26
	.byte	0x16
	.byte	0x48
	.long	0x137
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x147
	.long	0x115
	.uleb128 0xa
	.long	0x9c
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x16
	.byte	0x4e
	.long	0x120
	.uleb128 0x3
	.long	.LASF24
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.long	0x32c
	.long	.LASF57
	.byte	0xd8
	.byte	0x13
	.byte	0x2d
	.uleb128 0xc
	.long	.LASF27
	.byte	0x14
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x14
	.value	0x115
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF29
	.byte	0x14
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF30
	.byte	0x14
	.value	0x117
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF31
	.byte	0x14
	.value	0x118
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF32
	.byte	0x14
	.value	0x119
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF33
	.byte	0x14
	.value	0x11a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF34
	.byte	0x14
	.value	0x11b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF35
	.byte	0x14
	.value	0x11c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF36
	.byte	0x14
	.value	0x11e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF37
	.byte	0x14
	.value	0x11f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF38
	.byte	0x14
	.value	0x120
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF39
	.byte	0x14
	.value	0x122
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF40
	.byte	0x14
	.value	0x124
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF41
	.byte	0x14
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.long	.LASF42
	.byte	0x14
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.long	.LASF43
	.byte	0x14
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF44
	.byte	0x14
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF45
	.byte	0x14
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.long	.LASF46
	.byte	0x14
	.value	0x132
	.long	0x376
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xc
	.long	.LASF47
	.byte	0x14
	.value	0x136
	.long	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.long	.LASF48
	.byte	0x14
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.long	.LASF49
	.byte	0x14
	.value	0x148
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF50
	.byte	0x14
	.value	0x149
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x14
	.value	0x14a
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x14
	.value	0x14b
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x14
	.value	0x14c
	.long	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.long	.LASF54
	.byte	0x14
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.long	.LASF55
	.byte	0x14
	.value	0x150
	.long	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x14
	.byte	0xb4
	.uleb128 0xb
	.long	0x36a
	.long	.LASF58
	.byte	0x18
	.byte	0x14
	.byte	0xba
	.uleb128 0x8
	.long	.LASF59
	.byte	0x14
	.byte	0xbb
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x14
	.byte	0xbc
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF61
	.byte	0x14
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x333
	.uleb128 0x6
	.byte	0x8
	.long	0x160
	.uleb128 0x9
	.long	0x386
	.long	0xb6
	.uleb128 0xa
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x32c
	.uleb128 0x9
	.long	0x39c
	.long	0xb6
	.uleb128 0xa
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x3c5
	.long	.LASF62
	.byte	0x10
	.byte	0x11
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF63
	.byte	0x11
	.byte	0x2e
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x11
	.byte	0x2f
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x32
	.long	0x4a
	.uleb128 0x2
	.long	.LASF66
	.byte	0xb
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF67
	.byte	0x10
	.byte	0x1d
	.long	0x4a
	.uleb128 0xb
	.long	0x42b
	.long	.LASF68
	.byte	0x10
	.byte	0xf
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF69
	.byte	0xa
	.byte	0xe3
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF70
	.byte	0xa
	.byte	0xe4
	.long	0x42b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF71
	.byte	0xa
	.byte	0xe5
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF72
	.byte	0xa
	.byte	0xeb
	.long	0x45c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x61
	.long	0x3c5
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x8d
	.long	0x3d0
	.uleb128 0xb
	.long	0x45c
	.long	.LASF75
	.byte	0x4
	.byte	0xa
	.byte	0x8f
	.uleb128 0x8
	.long	.LASF76
	.byte	0xa
	.byte	0x90
	.long	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x46c
	.long	0x38
	.uleb128 0xa
	.long	0x9c
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x9
	.byte	0xc0
	.long	0x10a
	.uleb128 0xb
	.long	0x4e6
	.long	.LASF78
	.byte	0x14
	.byte	0x9
	.byte	0xcf
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0xd0
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xd0
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0xd1
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0xd2
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0xd3
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0xd4
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0xd5
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x2
	.byte	0x28
	.long	0x10a
	.uleb128 0xb
	.long	0x590
	.long	.LASF87
	.byte	0x14
	.byte	0x2
	.byte	0x36
	.uleb128 0x8
	.long	.LASF88
	.byte	0x2
	.byte	0x37
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x2
	.byte	0x38
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF90
	.byte	0x2
	.byte	0x39
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF91
	.byte	0x2
	.byte	0x3a
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF92
	.byte	0x2
	.byte	0x3f
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF93
	.byte	0x2
	.byte	0x40
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF94
	.byte	0x2
	.byte	0x42
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.long	.LASF95
	.byte	0x2
	.byte	0x49
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF96
	.byte	0x2
	.byte	0x4a
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF97
	.byte	0x2
	.byte	0x4b
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xb
	.long	0x5b9
	.long	.LASF98
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.byte	0x2c
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0x2d
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF101
	.byte	0xd
	.byte	0x2e
	.long	0x10a
	.uleb128 0xb
	.long	0x84d
	.long	.LASF102
	.byte	0xb8
	.byte	0xc
	.byte	0x83
	.uleb128 0x8
	.long	.LASF103
	.byte	0xd
	.byte	0x35
	.long	0x5b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF104
	.byte	0xd
	.byte	0x36
	.long	0x5b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF105
	.byte	0xd
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF106
	.byte	0xd
	.byte	0x38
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF107
	.byte	0xd
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF110
	.byte	0xd
	.byte	0x3c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0x3d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0x3e
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0x4c
	.long	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF114
	.byte	0xd
	.byte	0x4e
	.long	0x98f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF115
	.byte	0xd
	.byte	0x54
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF116
	.byte	0xd
	.byte	0x55
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF117
	.byte	0xd
	.byte	0x56
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x57
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF119
	.byte	0xd
	.byte	0x58
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"iss"
	.byte	0xd
	.byte	0x59
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF120
	.byte	0xd
	.byte	0x5a
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF121
	.byte	0xd
	.byte	0x5c
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.long	.LASF122
	.byte	0xd
	.byte	0x5d
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF123
	.byte	0xd
	.byte	0x5e
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"irs"
	.byte	0xd
	.byte	0x5f
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x64
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF125
	.byte	0xd
	.byte	0x66
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x6a
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x6b
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x75
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x78
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x79
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x8
	.long	.LASF135
	.byte	0xd
	.byte	0x7c
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF136
	.byte	0xd
	.byte	0x7d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0x8
	.long	.LASF137
	.byte	0xd
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0x8
	.long	.LASF138
	.byte	0xd
	.byte	0x83
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x8
	.long	.LASF139
	.byte	0xd
	.byte	0x84
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0x8
	.long	.LASF140
	.byte	0xd
	.byte	0x85
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0x8
	.long	.LASF141
	.byte	0xd
	.byte	0x86
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0x8
	.long	.LASF142
	.byte	0xd
	.byte	0x87
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF143
	.byte	0xd
	.byte	0x88
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x8
	.long	.LASF144
	.byte	0xd
	.byte	0x89
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0x9
	.long	0x85d
	.long	0x71
	.uleb128 0xa
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0x98f
	.long	.LASF145
	.byte	0xa0
	.byte	0x2
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF146
	.byte	0x3
	.byte	0x15
	.long	0x98f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF147
	.byte	0x3
	.byte	0x15
	.long	0x98f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"s"
	.byte	0x3
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF148
	.byte	0x3
	.byte	0x1a
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF149
	.byte	0x3
	.byte	0x1d
	.long	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF150
	.byte	0x3
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF151
	.byte	0x3
	.byte	0x20
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF152
	.byte	0x3
	.byte	0x21
	.long	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF153
	.byte	0x3
	.byte	0x22
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF154
	.byte	0x3
	.byte	0x23
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.long	.LASF155
	.byte	0x3
	.byte	0x25
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF156
	.byte	0x3
	.byte	0x26
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x8
	.long	.LASF157
	.byte	0x3
	.byte	0x28
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x8
	.long	.LASF158
	.byte	0x3
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF159
	.byte	0x3
	.byte	0x2b
	.long	0xacb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF160
	.byte	0x3
	.byte	0x2c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF161
	.byte	0x3
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF162
	.byte	0x3
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF163
	.byte	0x3
	.byte	0x33
	.long	0xa72
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF164
	.byte	0x3
	.byte	0x34
	.long	0xa72
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF165
	.byte	0x3
	.byte	0x35
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x85d
	.uleb128 0xb
	.long	0xa20
	.long	.LASF166
	.byte	0x40
	.byte	0x5
	.byte	0x3f
	.uleb128 0x8
	.long	.LASF167
	.byte	0x5
	.byte	0x40
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x5
	.byte	0x41
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF169
	.byte	0x5
	.byte	0x42
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF170
	.byte	0x5
	.byte	0x43
	.long	0xa49
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF171
	.byte	0x5
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF172
	.byte	0x5
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF173
	.byte	0x5
	.byte	0x47
	.long	0x98f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF174
	.byte	0x5
	.byte	0x49
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF175
	.byte	0x5
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xb
	.long	0xa49
	.long	.LASF176
	.byte	0x48
	.byte	0x4
	.byte	0x66
	.uleb128 0x8
	.long	.LASF166
	.byte	0x5
	.byte	0x5c
	.long	0x995
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF177
	.byte	0x5
	.byte	0x60
	.long	0xa4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa20
	.uleb128 0x10
	.long	0xa72
	.long	.LASF177
	.byte	0x8
	.byte	0x5
	.byte	0x5d
	.uleb128 0x11
	.long	.LASF178
	.byte	0x5
	.byte	0x5e
	.long	0x376
	.uleb128 0x11
	.long	.LASF179
	.byte	0x5
	.byte	0x5f
	.long	0xb0
	.byte	0x0
	.uleb128 0xb
	.long	0xac5
	.long	.LASF180
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0x8
	.long	.LASF181
	.byte	0xe
	.byte	0xf
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF182
	.byte	0xe
	.byte	0x10
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF183
	.byte	0xe
	.byte	0x11
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF184
	.byte	0xe
	.byte	0x13
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF185
	.byte	0xe
	.byte	0x15
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x590
	.uleb128 0x6
	.byte	0x8
	.long	0x5c4
	.uleb128 0x12
	.long	0xb42
	.byte	0x1
	.long	.LASF191
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	0x98f
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	.LASF186
	.byte	0x1
	.byte	0x1d
	.long	0x98f
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.byte	0x1e
	.long	0x441
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.byte	0x1f
	.long	0xd3
	.byte	0x1
	.byte	0x51
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.byte	0x20
	.long	0x441
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.long	.LASF190
	.byte	0x1
	.byte	0x21
	.long	0xd3
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.string	"so"
	.byte	0x1
	.byte	0x23
	.long	0x98f
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x12
	.long	0xb72
	.byte	0x1
	.long	.LASF192
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x98f
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"so"
	.byte	0x1
	.byte	0x3b
	.long	0x98f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x15
	.long	0xb9e
	.byte	0x1
	.long	.LASF193
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"so"
	.byte	0x1
	.byte	0x4b
	.long	0x98f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x12
	.long	0xc00
	.byte	0x1
	.long	.LASF194
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	0x78
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"so"
	.byte	0x1
	.byte	0xf0
	.long	0x98f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"sb"
	.byte	0x1
	.byte	0xf2
	.long	0xc00
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	.LASF195
	.byte	0x1
	.byte	0xf3
	.long	0xc06
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xf5
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xf5
	.long	0x78
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa72
	.uleb128 0x9
	.long	0xc17
	.long	0xb6
	.uleb128 0x18
	.long	0x9c
	.value	0x7ff
	.byte	0x0
	.uleb128 0x19
	.long	0xce2
	.byte	0x1
	.long	.LASF196
	.byte	0x1
	.value	0x189
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x188
	.long	0x98f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x1
	.value	0x18a
	.long	0x3e6
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x1b
	.long	.LASF198
	.byte	0x1
	.value	0x18b
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	0xc94
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1d
	.string	"m"
	.byte	0x1
	.value	0x1a8
	.long	0xa49
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x1a9
	.long	0x78
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x1a9
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x1c
	.long	0xccd
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1b
	.long	.LASF195
	.byte	0x1
	.value	0x191
	.long	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x192
	.long	0x78
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1b
	.long	.LASF199
	.byte	0x1
	.value	0x199
	.long	0xbd
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x1b
	.long	.LASF199
	.byte	0x1
	.value	0x1c2
	.long	0xbd
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0xcf2
	.long	0xb6
	.uleb128 0xa
	.long	0x9c
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.long	0xd4b
	.byte	0x1
	.long	.LASF200
	.byte	0x1
	.value	0x1ee
	.byte	0x1
	.long	0x78
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x1ec
	.long	0x98f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.value	0x1ed
	.long	0xa49
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.value	0x1ef
	.long	0x78
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x1
	.value	0x1f0
	.long	0x3e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0xe02
	.byte	0x1
	.long	.LASF201
	.byte	0x1
	.value	0x221
	.byte	0x1
	.long	0x98f
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.long	.LASF202
	.byte	0x1
	.value	0x21d
	.long	0xd3
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	.LASF187
	.byte	0x1
	.value	0x21e
	.long	0x10a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.long	.LASF188
	.byte	0x1
	.value	0x21f
	.long	0xd3
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF203
	.byte	0x1
	.value	0x220
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x1
	.value	0x222
	.long	0x3e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x223
	.long	0x98f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x224
	.long	0x78
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF198
	.byte	0x1
	.value	0x224
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"opt"
	.byte	0x1
	.value	0x224
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x1b
	.long	.LASF204
	.byte	0x1
	.value	0x24a
	.long	0x78
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0xe30
	.byte	0x1
	.long	.LASF205
	.byte	0x1
	.value	0x287
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x286
	.long	0x98f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0xe5e
	.byte	0x1
	.long	.LASF206
	.byte	0x1
	.value	0x290
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x28f
	.long	0x98f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x22
	.long	0xe8b
	.long	.LASF210
	.byte	0x1
	.value	0x2a7
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x2a6
	.long	0x98f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x20
	.long	0xf20
	.byte	0x1
	.long	.LASF207
	.byte	0x1
	.value	0x12c
	.byte	0x1
	.long	0x78
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x12b
	.long	0x98f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x12d
	.long	0x78
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.string	"nn"
	.byte	0x1
	.value	0x12d
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"sb"
	.byte	0x1
	.value	0x12e
	.long	0xc00
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x12f
	.long	0x78
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"iov"
	.byte	0x1
	.value	0x130
	.long	0xf20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.value	0x16b
	.long	0x78
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0xf30
	.long	0x39c
	.uleb128 0xa
	.long	0x9c
	.byte	0x1
	.byte	0x0
	.uleb128 0x12
	.long	0x1001
	.byte	0x1
	.long	.LASF208
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	0x78
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"so"
	.byte	0x1
	.byte	0x65
	.long	0x98f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x67
	.long	0x78
	.byte	0x1
	.byte	0x5e
	.uleb128 0x14
	.string	"nn"
	.byte	0x1
	.byte	0x67
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"lss"
	.byte	0x1
	.byte	0x67
	.long	0x78
	.uleb128 0x17
	.long	.LASF209
	.byte	0x1
	.byte	0x67
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.string	"sb"
	.byte	0x1
	.byte	0x68
	.long	0xc00
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x69
	.long	0x78
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"iov"
	.byte	0x1
	.byte	0x6a
	.long	0xf20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"mss"
	.byte	0x1
	.byte	0x6b
	.long	0x78
	.byte	0x1
	.byte	0x5b
	.uleb128 0x25
	.long	0xfe1
	.long	0x1001
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x26
	.long	0x100f
	.byte	0x0
	.uleb128 0x23
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.long	0x78
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x101b
	.long	.LASF211
	.byte	0x1
	.value	0x297
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"so"
	.byte	0x1
	.value	0x296
	.long	0x98f
	.byte	0x0
	.uleb128 0x15
	.long	0x1053
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"so"
	.byte	0x1
	.byte	0xd4
	.long	0x98f
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"tp"
	.byte	0x1
	.byte	0xd6
	.long	0xacb
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x19
	.long	0x1081
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.value	0x2bb
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x2ba
	.long	0x98f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0x10af
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"so"
	.byte	0x1
	.value	0x2ca
	.long	0x98f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x29
	.long	.LASF215
	.byte	0x13
	.byte	0x91
	.long	0x370
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF216
	.byte	0x13
	.byte	0x92
	.long	0x370
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF217
	.byte	0x2
	.byte	0x2d
	.long	0x98f
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF218
	.byte	0x4
	.byte	0x2b
	.long	0x98f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"udb"
	.byte	0x4
	.byte	0x65
	.long	0x85d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"tcb"
	.byte	0x3
	.byte	0x4a
	.long	0x85d
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF219
	.byte	0x15
	.byte	0x21
	.long	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF220
	.byte	0x15
	.byte	0x22
	.long	0x1117
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x147
	.uleb128 0x29
	.long	.LASF221
	.byte	0x15
	.byte	0x22
	.long	0x1117
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF222
	.byte	0x15
	.byte	0x22
	.long	0x1117
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF223
	.byte	0x15
	.byte	0x24
	.long	0x441
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF224
	.byte	0x15
	.byte	0x25
	.long	0x441
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF225
	.byte	0x15
	.byte	0x27
	.long	0x441
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF226
	.byte	0x15
	.byte	0x28
	.long	0x441
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xda
	.value	0x2
	.long	.Ldebug_info0
	.long	0x116c
	.long	0xad1
	.string	"solookup"
	.long	0xb42
	.string	"socreate"
	.long	0xb72
	.string	"sofree"
	.long	0xb9e
	.string	"sosendoob"
	.long	0xc17
	.string	"sorecvfrom"
	.long	0xcf2
	.string	"sosendto"
	.long	0xd4b
	.string	"solisten"
	.long	0xe02
	.string	"soisfconnecting"
	.long	0xe30
	.string	"soisfconnected"
	.long	0xe8b
	.string	"sowrite"
	.long	0xf30
	.string	"soread"
	.long	0x101b
	.string	"sorecvoob"
	.long	0x1053
	.string	"soisfdisconnected"
	.long	0x1081
	.string	"sofwdrain"
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF194:
	.string	"sosendoob"
.LASF18:
	.string	"size_t"
.LASF229:
	.string	"/home/remco/Projects/Argos/src"
.LASF171:
	.string	"mh_flags"
.LASF83:
	.string	"ih_len"
.LASF76:
	.string	"s_addr"
.LASF99:
	.string	"ti_i"
.LASF218:
	.string	"udp_last_so"
.LASF71:
	.string	"sin_addr"
.LASF77:
	.string	"caddr32_t"
.LASF38:
	.string	"_IO_save_end"
.LASF91:
	.string	"th_ack"
.LASF167:
	.string	"mh_next"
.LASF174:
	.string	"mh_data"
.LASF176:
	.string	"mbuf"
.LASF168:
	.string	"mh_prev"
.LASF94:
	.string	"th_flags"
.LASF155:
	.string	"so_iptos"
.LASF195:
	.string	"buff"
.LASF31:
	.string	"_IO_write_base"
.LASF47:
	.string	"_lock"
.LASF222:
	.string	"global_xfds"
.LASF207:
	.string	"sowrite"
.LASF36:
	.string	"_IO_save_base"
.LASF208:
	.string	"soread"
.LASF220:
	.string	"global_readfds"
.LASF142:
	.string	"ts_recent"
.LASF40:
	.string	"_chain"
.LASF89:
	.string	"th_dport"
.LASF180:
	.string	"sbuf"
.LASF44:
	.string	"_cur_column"
.LASF108:
	.string	"t_rxtcur"
.LASF128:
	.string	"t_idle"
.LASF165:
	.string	"extra"
.LASF154:
	.string	"so_lport"
.LASF149:
	.string	"so_ti"
.LASF112:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF201:
	.string	"solisten"
.LASF12:
	.string	"__caddr_t"
.LASF14:
	.string	"u_char"
.LASF58:
	.string	"_IO_marker"
.LASF224:
	.string	"alias_addr"
.LASF219:
	.string	"curtime"
.LASF113:
	.string	"t_template"
.LASF186:
	.string	"head"
.LASF0:
	.string	"__u_char"
.LASF170:
	.string	"mh_prevpkt"
.LASF173:
	.string	"mh_so"
.LASF93:
	.string	"th_off"
.LASF121:
	.string	"rcv_wnd"
.LASF84:
	.string	"ih_src"
.LASF85:
	.string	"ih_dst"
.LASF75:
	.string	"in_addr"
.LASF145:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF57:
	.string	"_IO_FILE"
.LASF103:
	.string	"seg_next"
.LASF150:
	.string	"so_urgc"
.LASF2:
	.string	"unsigned char"
.LASF200:
	.string	"sosendto"
.LASF156:
	.string	"so_emu"
.LASF177:
	.string	"M_dat"
.LASF153:
	.string	"so_fport"
.LASF88:
	.string	"th_sport"
.LASF215:
	.string	"stdin"
.LASF19:
	.string	"u_int8_t"
.LASF70:
	.string	"sin_port"
.LASF120:
	.string	"snd_wnd"
.LASF205:
	.string	"soisfconnecting"
.LASF87:
	.string	"tcphdr"
.LASF98:
	.string	"tcpiphdr"
.LASF133:
	.string	"t_rttmin"
.LASF56:
	.string	"_IO_lock_t"
.LASF68:
	.string	"sockaddr_in"
.LASF204:
	.string	"tmperrno"
.LASF124:
	.string	"rcv_adv"
.LASF203:
	.string	"flags"
.LASF28:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"tcpiphdrp_32"
.LASF104:
	.string	"seg_prev"
.LASF61:
	.string	"_pos"
.LASF187:
	.string	"laddr"
.LASF144:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF185:
	.string	"sb_data"
.LASF39:
	.string	"_markers"
.LASF16:
	.string	"u_int"
.LASF114:
	.string	"t_socket"
.LASF141:
	.string	"requested_s_scale"
.LASF223:
	.string	"special_addr"
.LASF22:
	.string	"__fd_mask"
.LASF134:
	.string	"max_sndwnd"
.LASF74:
	.string	"in_addr_t"
.LASF127:
	.string	"snd_ssthresh"
.LASF198:
	.string	"addrlen"
.LASF48:
	.string	"_offset"
.LASF20:
	.string	"u_int16_t"
.LASF202:
	.string	"port"
.LASF217:
	.string	"tcp_last_so"
.LASF6:
	.string	"long unsigned int"
.LASF106:
	.string	"t_timer"
.LASF42:
	.string	"_flags2"
.LASF30:
	.string	"_IO_read_base"
.LASF109:
	.string	"t_dupacks"
.LASF184:
	.string	"sb_rptr"
.LASF55:
	.string	"_unused2"
.LASF172:
	.string	"mh_size"
.LASF126:
	.string	"snd_cwnd"
.LASF64:
	.string	"iov_len"
.LASF212:
	.string	"sorecvoob"
.LASF209:
	.string	"total"
.LASF43:
	.string	"_old_offset"
.LASF86:
	.string	"tcp_seq"
.LASF105:
	.string	"t_state"
.LASF137:
	.string	"t_softerror"
.LASF130:
	.string	"t_rtseq"
.LASF25:
	.string	"long long int"
.LASF182:
	.string	"sb_datalen"
.LASF190:
	.string	"fport"
.LASF199:
	.string	"code"
.LASF62:
	.string	"iovec"
.LASF33:
	.string	"_IO_write_end"
.LASF125:
	.string	"snd_max"
.LASF196:
	.string	"sorecvfrom"
.LASF115:
	.string	"snd_una"
.LASF34:
	.string	"_IO_buf_base"
.LASF135:
	.string	"t_oobflags"
.LASF111:
	.string	"t_force"
.LASF59:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF92:
	.string	"th_x2"
.LASF227:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF17:
	.string	"caddr_t"
.LASF122:
	.string	"rcv_nxt"
.LASF49:
	.string	"__pad1"
.LASF50:
	.string	"__pad2"
.LASF51:
	.string	"__pad3"
.LASF52:
	.string	"__pad4"
.LASF53:
	.string	"__pad5"
.LASF188:
	.string	"lport"
.LASF60:
	.string	"_sbuf"
.LASF192:
	.string	"socreate"
.LASF123:
	.string	"rcv_up"
.LASF110:
	.string	"t_maxseg"
.LASF206:
	.string	"soisfconnected"
.LASF27:
	.string	"_flags"
.LASF197:
	.string	"addr"
.LASF148:
	.string	"so_m"
.LASF54:
	.string	"_mode"
.LASF214:
	.string	"sofwdrain"
.LASF146:
	.string	"so_next"
.LASF117:
	.string	"snd_up"
.LASF13:
	.string	"char"
.LASF26:
	.string	"fds_bits"
.LASF95:
	.string	"th_win"
.LASF147:
	.string	"so_prev"
.LASF191:
	.string	"solookup"
.LASF164:
	.string	"so_snd"
.LASF166:
	.string	"m_hdr"
.LASF169:
	.string	"mh_nextpkt"
.LASF96:
	.string	"th_sum"
.LASF143:
	.string	"ts_recent_age"
.LASF138:
	.string	"snd_scale"
.LASF24:
	.string	"long long unsigned int"
.LASF67:
	.string	"sa_family_t"
.LASF136:
	.string	"t_iobc"
.LASF65:
	.string	"uint16_t"
.LASF221:
	.string	"global_writefds"
.LASF10:
	.string	"__off_t"
.LASF140:
	.string	"request_r_scale"
.LASF82:
	.string	"ih_pr"
.LASF151:
	.string	"so_faddr"
.LASF162:
	.string	"so_nqueued"
.LASF179:
	.string	"m_ext_"
.LASF37:
	.string	"_IO_backup_base"
.LASF46:
	.string	"_shortbuf"
.LASF90:
	.string	"th_seq"
.LASF72:
	.string	"sin_zero"
.LASF228:
	.string	"slirp/socket.c"
.LASF11:
	.string	"__off64_t"
.LASF100:
	.string	"ti_t"
.LASF225:
	.string	"loopback_addr"
.LASF175:
	.string	"mh_len"
.LASF35:
	.string	"_IO_buf_end"
.LASF102:
	.string	"tcpcb"
.LASF158:
	.string	"so_state"
.LASF107:
	.string	"t_rxtshift"
.LASF78:
	.string	"ipovly"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"u_int32_t"
.LASF226:
	.string	"dns_addr"
.LASF160:
	.string	"so_expire"
.LASF132:
	.string	"t_rttvar"
.LASF45:
	.string	"_vtable_offset"
.LASF213:
	.string	"soisfdisconnected"
.LASF79:
	.string	"ih_next"
.LASF97:
	.string	"th_urp"
.LASF157:
	.string	"so_type"
.LASF80:
	.string	"ih_prev"
.LASF118:
	.string	"snd_wl1"
.LASF119:
	.string	"snd_wl2"
.LASF23:
	.string	"fd_set"
.LASF1:
	.string	"__u_short"
.LASF181:
	.string	"sb_cc"
.LASF29:
	.string	"_IO_read_end"
.LASF152:
	.string	"so_laddr"
.LASF189:
	.string	"faddr"
.LASF193:
	.string	"sofree"
.LASF210:
	.string	"sofcantsendmore"
.LASF66:
	.string	"uint32_t"
.LASF131:
	.string	"t_srtt"
.LASF41:
	.string	"_fileno"
.LASF163:
	.string	"so_rcv"
.LASF116:
	.string	"snd_nxt"
.LASF161:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF216:
	.string	"stdout"
.LASF63:
	.string	"iov_base"
.LASF69:
	.string	"sin_family"
.LASF32:
	.string	"_IO_write_ptr"
.LASF81:
	.string	"ih_x1"
.LASF159:
	.string	"so_tcpcb"
.LASF15:
	.string	"u_short"
.LASF183:
	.string	"sb_wptr"
.LASF139:
	.string	"rcv_scale"
.LASF178:
	.string	"m_dat_"
.LASF211:
	.string	"sofcantrcvmore"
.LASF73:
	.string	"in_port_t"
.LASF129:
	.string	"t_rtt"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
