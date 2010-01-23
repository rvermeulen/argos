	.file	"tcp_output.c"
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
	.string	"REDIRECT"
.LC1:
	.string	"LISTEN"
.LC2:
	.string	"SYN_SENT"
.LC3:
	.string	"SYN_RCVD"
.LC4:
	.string	"ESTABLISHED"
.LC5:
	.string	"CLOSE_WAIT"
.LC6:
	.string	"FIN_WAIT_1"
.LC7:
	.string	"CLOSING"
.LC8:
	.string	"LAST_ACK"
.LC9:
	.string	"FIN_WAIT_2"
.LC10:
	.string	"TIME_WAIT"
.globl tcpstates
	.section	.rodata
	.align 32
	.type	tcpstates, @object
	.size	tcpstates, 88
tcpstates:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.type	tcp_outflags, @object
	.size	tcp_outflags, 11
tcp_outflags:
	.byte	20
	.byte	0
	.byte	2
	.byte	18
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	17
	.byte	16
	.byte	16
	.text
	.p2align 4,,15
.globl tcp_setpersist
	.type	tcp_setpersist, @function
tcp_setpersist:
.LFB48:
	.file 1 "slirp/tcp_output.c"
	.loc 1 591 0
	.loc 1 592 0
	movzwl	148(%rdi), %eax
	movswl	150(%rdi),%edx
	.loc 1 600 0
	movzwl	18(%rdi), %ecx
	.loc 1 592 0
	sarw	$2, %ax
	cwtl
	addl	%edx, %eax
	.loc 1 600 0
	movswq	%cx,%rdx
	movzwl	tcp_backoff(,%rdx,4), %edx
	.loc 1 592 0
	sarl	%eax
	.loc 1 600 0
	imull	%eax, %edx
	cmpw	$9, %dx
	jg	.L2
	movw	$10, 12(%rdi)
.L3:
	.loc 1 603 0
	cmpw	$11, %cx
	jg	.L1
	.loc 1 604 0
	leal	1(%rcx), %eax
	movw	%ax, 18(%rdi)
.L1:
	rep ; ret
	.p2align 4,,7
.L2:
	.loc 1 600 0
	movl	$120, %eax
	cmpw	$121, %dx
	cmovl	%edx, %eax
	movw	%ax, 12(%rdi)
	jmp	.L3
.LFE48:
	.size	tcp_setpersist, .-tcp_setpersist
	.p2align 4,,15
.globl tcp_output
	.type	tcp_output, @function
tcp_output:
.LFB47:
	.loc 1 73 0
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	movq	%rdi, %rbx
	subq	$88, %rsp
.LCFI6:
	.loc 1 74 0
	movq	72(%rdi), %rax
	movq	%rax, 40(%rsp)
	.loc 1 92 0
	movl	80(%rdi), %r10d
	.loc 1 93 0
	cmpl	%r10d, 128(%rdi)
	jne	.L117
	movzwl	20(%rdi), %eax
	cmpw	%ax, 140(%rdi)
	jl	.L117
	.loc 1 99 0
	movzwl	24(%rdi), %r9d
	movzwl	%r9w, %edx
	movl	%edx, 132(%rdi)
	jmp	.L10
	.p2align 4,,7
.L127:
	.loc 1 116 0
	testq	%r12, %r12
	jne	.L13
	.loc 1 133 0
	movq	40(%rsp), %rax
	.loc 1 135 0
	movb	$1, %r12b
	.loc 1 133 0
	movl	120(%rax), %r8d
	.loc 1 134 0
	movl	%r15d, %eax
	andl	$-2, %eax
	cmpl	%r8d, %ecx
	cmovb	%eax, %r15d
.L12:
	.loc 1 142 0
	mov	%r8d, %eax
	movslq	36(%rsp),%rdx
	cmpq	%r12, %rax
	cmovg	%r12, %rax
	.loc 1 144 0
	movq	%rax, %r13
	subq	%rdx, %r13
	.loc 1 142 0
	movq	%rdx, 16(%rsp)
	.loc 1 144 0
	js	.L121
.L17:
	.loc 1 162 0
	movzwl	%r9w, %esi 
	cmpq	%r13, %rsi
	jge	.L19
	.loc 1 163 0
	movq	%rsi, %r13
	.loc 1 164 0
	movl	$1, 24(%rsp)
.L19:
	.loc 1 166 0
	leal	(%rdi,%r13), %eax
	leal	(%r10,%r8), %edx
	.loc 1 167 0
	movl	%r15d, %ecx
	andl	$-2, %ecx
	cmpl	%edx, %eax
	.loc 1 169 0
	movq	40(%rsp), %rax
	.loc 1 167 0
	cmovs	%ecx, %r15d
	.loc 1 169 0
	movl	92(%rax), %r11d
	movl	%r11d, %r12d
	subl	88(%rax), %r12d
	.loc 1 181 0
	testq	%r13, %r13
	je	.L21
	.loc 1 182 0
	cmpq	%r13, %rsi
	je	.L23
	.loc 1 184 0
	movq	16(%rsp), %rdx
	mov	%r8d, %eax
	addq	%r13, %rdx
	cmpq	%rax, %rdx
	jge	.L23
	.loc 1 187 0
	testb	%bpl, %bpl
	jne	.L23
	.loc 1 189 0
	movl	156(%rbx), %edx
	movl	%edx, %eax
	shrl	%eax
	mov	%eax, %eax
	cmpq	%r13, %rax
	jg	.L26
	testl	%edx, %edx
	jne	.L23
.L26:
	.loc 1 191 0
	cmpl	128(%rbx), %edi
	js	.L23
	.p2align 4,,7
.L21:
	.loc 1 202 0
	testq	%r12, %r12
	.p2align 4,,2
	jle	.L28
.LBB2:
	.loc 1 208 0
	movzbl	165(%rbx), %ecx
	movl	$65535, %eax
	movq	%r12, %rdx
	salq	%cl, %rax
	cmpq	%r12, %rax
	cmovle	%rax, %rdx
	movl	124(%rbx), %eax
	subl	112(%rbx), %eax
	subq	%rax, %rdx
	.loc 1 211 0
	leaq	(%r9,%r9), %rax
	andl	$131070, %eax
	cmpq	%rdx, %rax
	jle	.L23
	.loc 1 213 0
	addq	%rdx, %rdx
	mov	%r11d, %eax
	cmpq	%rax, %rdx
	jge	.L23
.L28:
.LBE2:
	.loc 1 220 0
	movzwl	28(%rbx), %edx
	testb	$1, %dl
	jne	.L23
	.loc 1 222 0
	testb	$6, %r15b
	jne	.L23
	.loc 1 224 0
	movl	88(%rbx), %eax
	subl	%r10d, %eax
	testl	%eax, %eax
	jle	.L122
	.p2align 4,,7
.L23:
	.loc 1 281 0
	testb	$2, %r15b
	.loc 1 279 0
	movl	$0, 32(%rsp)
	.loc 1 281 0
	je	.L39
	.loc 1 283 0
	testb	$8, 28(%rbx)
	.loc 1 282 0
	movl	100(%rbx), %edi
	movl	%edi, 84(%rbx)
	.loc 1 283 0
	je	.L123
.L39:
	.loc 1 330 0
	movzwl	%r9w, %eax
	subl	32(%rsp), %eax
	.loc 1 324 0
	movl	32(%rsp), %edx
	addl	$40, %edx
	.loc 1 330 0
	cmpq	%r13, %rax
	.loc 1 324 0
	movl	%edx, 28(%rsp)
	.loc 1 330 0
	jge	.L43
	.loc 1 331 0
	movq	%rax, %r13
	.loc 1 332 0
	movl	$1, 24(%rsp)
.L43:
	.loc 1 340 0
	testq	%r13, %r13
	je	.L44
	.loc 1 351 0
	call	m_get
	.loc 1 352 0
	testq	%rax, %rax
	.loc 1 351 0
	movq	%rax, %r14
	.loc 1 352 0
	je	.L119
	.loc 1 357 0
	movq	48(%rax), %rbp
	.loc 1 366 0
	movl	%r13d, %edx
	.loc 1 357 0
	addq	$56, %rbp
	movq	%rbp, 48(%rax)
	.loc 1 358 0
	movl	28(%rsp), %ecx
	movl	%ecx, 56(%rax)
	.loc 1 366 0
	mov	28(%rsp), %ecx
	movq	40(%rsp), %rdi
	movl	36(%rsp), %esi
	leaq	(%rbp,%rcx), %rcx
	addq	$120, %rdi
	call	sbcopy
	.loc 1 367 0
	addl	%r13d, 56(%r14)
	.loc 1 381 0
	movq	40(%rsp), %rcx
	movq	16(%rsp), %rdx
	mov	120(%rcx), %eax
	addq	%r13, %rdx
	cmpq	%rax, %rdx
	je	.L124
.L113:
	movq	48(%r14), %rbp
.L57:
	.loc 1 405 0
	movq	32(%rbx), %rax
	.loc 1 412 0
	testb	$1, %r15b
	.loc 1 405 0
	movq	%rax, (%rbp)
	movq	40(%rbx), %rax
	movq	%rax, 8(%rbp)
	movq	48(%rbx), %rax
	movq	%rax, 16(%rbp)
	movq	56(%rbx), %rax
	movq	%rax, 24(%rbp)
	movq	64(%rbx), %rax
	movq	%rax, 32(%rbp)
	.loc 1 412 0
	je	.L69
	testb	$16, 28(%rbx)
	je	.L69
	movl	84(%rbx), %eax
	cmpl	128(%rbx), %eax
	je	.L125
	.p2align 4,,7
.L69:
	.loc 1 428 0
	testq	%r13, %r13
	jne	.L71
	testb	$3, %r15b
	jne	.L71
	cmpw	$0, 12(%rbx)
	.p2align 4,,5
	je	.L70
	.p2align 4,,7
.L71:
.LBB3:
	.loc 1 429 0
	movl	84(%rbx), %eax
#APP
	bswap %eax
#NO_APP
.L118:
.LBE3:
	.loc 1 431 0
	movl	%eax, 24(%rbp)
.LBB4:
	.loc 1 432 0
	movl	112(%rbx), %eax
	xorl	%r8d, %r8d
#APP
	bswap %eax
#NO_APP
.LBE4:
	movl	%eax, 28(%rbp)
	.loc 1 433 0
	movl	32(%rsp), %edx
	testl	%edx, %edx
	jne	.L126
.L79:
	.loc 1 437 0
	movb	%r15b, 33(%rbp)
	.loc 1 442 0
	movq	40(%rsp), %rdx
	movl	92(%rdx), %eax
	shrl	$2, %eax
	mov	%eax, %eax
	cmpq	%r12, %rax
	jle	.L80
	movzwq	24(%rbx), %rax
	.loc 1 443 0
	cmpq	%r12, %rax
	movl	$0, %eax
	cmovg	%rax, %r12
.L80:
	.loc 1 444 0
	movzbl	165(%rbx), %ecx
	movl	$65535, %eax
	salq	%cl, %rax
	.loc 1 445 0
	cmpq	%r12, %rax
	cmovl	%rax, %r12
	.loc 1 446 0
	movl	124(%rbx), %eax
	subl	112(%rbx), %eax
	.loc 1 447 0
	cmpq	%r12, %rax
	cmovg	%rax, %r12
.LBB5:
	.loc 1 448 0
	movq	%r12, %rax
	sarq	%cl, %rax
#APP
	rorw $8, %ax
#NO_APP
.LBE5:
	movw	%ax, 34(%rbp)
	.loc 1 450 0
	movl	88(%rbx), %ecx
	movl	80(%rbx), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jle	.L85
.LBB6:
.LBB7:
	.loc 1 451 0
	movl	24(%rbp), %eax
#APP
	bswap %eax
#NO_APP
.LBE7:
	subw	%ax, %cx
	movl	%ecx, %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE6:
	movw	%ax, 38(%rbp)
	.loc 1 456 0
	movl	%r15d, %eax
	orl	$32, %eax
	movb	%al, 33(%rbp)
.L90:
	.loc 1 470 0
	leaq	(%r8,%r13), %rax
	testq	%rax, %rax
	je	.L91
.LBB8:
	.loc 1 471 0
	movl	32(%rsp), %ecx
	leal	20(%rcx,%r13), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE8:
	movw	%ax, 10(%rbp)
.L91:
	.loc 1 473 0
	movl	28(%rsp), %esi
	movq	%r14, %rdi
	addl	%r13d, %esi
	call	cksum
	movw	%ax, 36(%rbp)
	.loc 1 479 0
	cmpb	$0, 26(%rbx)
	je	.L95
	cmpw	$0, 12(%rbx)
	jne	.L94
.L95:
.LBB9:
	.loc 1 480 0
	movl	84(%rbx), %ecx
	.loc 1 485 0
	testb	$3, %r15b
	.loc 1 480 0
	movl	%ecx, %edi
	.loc 1 485 0
	je	.L96
	.loc 1 486 0
	testb	$2, %r15b
	je	.L97
	.loc 1 487 0
	leal	1(%rcx), %edi
.L97:
	.loc 1 488 0
	andl	$1, %r15d
	je	.L96
	.loc 1 490 0
	orw	$16, 28(%rbx)
	.loc 1 489 0
	incl	%edi
	.p2align 4,,7
.L96:
	.loc 1 493 0
	leal	(%rdi,%r13), %edx
	.loc 1 494 0
	movl	%edx, %eax
	subl	128(%rbx), %eax
	.loc 1 493 0
	movl	%edx, 84(%rbx)
	.loc 1 494 0
	testl	%eax, %eax
	jle	.L99
	.loc 1 500 0
	cmpw	$0, 142(%rbx)
	.loc 1 495 0
	movl	%edx, 128(%rbx)
	.loc 1 500 0
	jne	.L99
	.loc 1 501 0
	movw	$1, 142(%rbx)
	.loc 1 502 0
	movl	%ecx, 144(%rbx)
.L99:
	.loc 1 515 0
	cmpw	$0, 10(%rbx)
	jne	.L104
	cmpl	80(%rbx), %edx
	je	.L104
	.loc 1 517 0
	movzwl	20(%rbx), %eax
	.loc 1 518 0
	cmpw	$0, 12(%rbx)
	.loc 1 517 0
	movw	%ax, 10(%rbx)
	.loc 1 518 0
	je	.L104
	.loc 1 519 0
	movw	$0, 12(%rbx)
	.loc 1 520 0
	movw	$0, 18(%rbx)
	.p2align 4,,7
.L104:
.LBE9:
	.loc 1 533 0
	movl	28(%rsp), %eax
	.loc 1 547 0
	movq	%r14, %rsi
	.loc 1 533 0
	addl	%r13d, %eax
	movl	%eax, 56(%r14)
	.loc 1 537 0
	movw	%ax, 2(%rbp)
	.loc 1 539 0
	movb	$64, 8(%rbp)
	.loc 1 540 0
	movq	40(%rsp), %rdx
	movzbl	56(%rdx), %eax
	.loc 1 547 0
	movq	%rdx, %rdi
	.loc 1 540 0
	movb	%al, 1(%rbp)
	.loc 1 547 0
	call	ip_output
	.loc 1 555 0
	testl	%eax, %eax
	jne	.L8
.L55:
	.loc 1 578 0
	testq	%r12, %r12
	jle	.L115
	movl	112(%rbx), %edx
	leal	(%rdx,%r12), %ecx
	movl	%ecx, %eax
	subl	124(%rbx), %eax
	testl	%eax, %eax
	jle	.L108
	.loc 1 579 0
	movl	%ecx, 124(%rbx)
.L108:
	.loc 1 581 0
	andw	$-4, 28(%rbx)
	.loc 1 580 0
	movl	%edx, 176(%rbx)
	.loc 1 582 0
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.L120
.L116:
	movl	80(%rbx), %r10d
.L117:
	movzwl	24(%rbx), %r9d
	movl	132(%rbx), %edx
.L10:
	.loc 1 101 0
	movl	$0, 24(%rsp)
	.loc 1 102 0
	movl	84(%rbx), %edi
	movl	%edi, %ecx
	subl	%r10d, %ecx
	movl	%ecx, 36(%rsp)
	.loc 1 103 0
	movl	104(%rbx), %eax
	.loc 1 115 0
	movzbl	26(%rbx), %ebp
	.loc 1 103 0
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	mov	%eax, %r12d
	.loc 1 105 0
	movswq	8(%rbx),%rax
	.loc 1 115 0
	testb	%bpl, %bpl
	.loc 1 105 0
	movzbl	tcp_outflags(%rax), %r15d
	.loc 1 115 0
	jne	.L127
	movq	40(%rsp), %rcx
	.loc 1 142 0
	movslq	36(%rsp),%rdx
	movl	120(%rcx), %r8d
	movq	%rdx, 16(%rsp)
	mov	%r8d, %eax
	cmpq	%r12, %rax
	cmovg	%r12, %rax
	.loc 1 144 0
	movq	%rax, %r13
	subq	%rdx, %r13
	jns	.L17
.L121:
	.loc 1 155 0
	xorl	%r13d, %r13d
	.loc 1 156 0
	testq	%r12, %r12
	jne	.L17
	.loc 1 157 0
	movw	$0, 10(%rbx)
	.loc 1 158 0
	movl	%r10d, 84(%rbx)
	movl	%r10d, %edi
	movq	40(%rsp), %rcx
	movl	120(%rcx), %r8d
	jmp	.L17
	.p2align 4,,7
.L44:
	.loc 1 393 0
	call	m_get
	.loc 1 394 0
	testq	%rax, %rax
	.loc 1 393 0
	movq	%rax, %r14
	.loc 1 394 0
	je	.L119
	.loc 1 399 0
	movq	48(%rax), %rbp
	addq	$56, %rbp
	movq	%rbp, 48(%rax)
	.loc 1 400 0
	movl	28(%rsp), %eax
	movl	%eax, 56(%r14)
	jmp	.L57
	.p2align 4,,7
.L13:
	.loc 1 137 0
	movw	$0, 12(%rbx)
	.loc 1 138 0
	movw	$0, 18(%rbx)
	movq	40(%rsp), %rdx
	movl	120(%rdx), %r8d
	jmp	.L12
	.p2align 4,,7
.L94:
	.loc 1 524 0
	movl	84(%rbx), %edx
	addl	%r13d, %edx
	movl	%edx, %eax
	subl	128(%rbx), %eax
	testl	%eax, %eax
	jle	.L104
	.loc 1 525 0
	movl	%edx, 128(%rbx)
	jmp	.L104
	.p2align 4,,7
.L70:
.LBB10:
	.loc 1 431 0
	movl	128(%rbx), %eax
#APP
	bswap %eax
#NO_APP
	jmp	.L118
	.p2align 4,,7
.L126:
.LBE10:
	.loc 1 434 0
	mov	32(%rsp), %r8d
	leaq	40(%rbp), %rdi
	leaq	48(%rsp), %rsi
	movq	%r8, %rdx
	movq	%r8, 8(%rsp)
	call	memcpy
	.loc 1 435 0
	movq	8(%rsp), %r8
	movzbl	32(%rbp), %eax
	leaq	20(%r8), %rdx
	andl	$15, %eax
	shrq	$2, %rdx
	sall	$4, %edx
	orl	%edx, %eax
	movb	%al, 32(%rbp)
	jmp	.L79
	.p2align 4,,7
.L85:
	.loc 1 464 0
	movl	%edx, 88(%rbx)
	jmp	.L90
	.p2align 4,,7
.L115:
	movl	112(%rbx), %edx
	.loc 1 581 0
	andw	$-4, 28(%rbx)
	.loc 1 580 0
	movl	%edx, 176(%rbx)
	.loc 1 582 0
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jne	.L116
.L120:
	.loc 1 585 0
	xorl	%eax, %eax
.L8:
	.loc 1 586 0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L123:
.LBB11:
.LBB12:
	.loc 1 288 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
.LBE12:
	.loc 1 286 0
	movb	$2, 48(%rsp)
	.loc 1 287 0
	movb	$4, 49(%rsp)
.LBB13:
	.loc 1 288 0
	call	tcp_mss
.LBE13:
	.loc 1 290 0
	movl	$4, 32(%rsp)
.LBB14:
	.loc 1 288 0
#APP
	rorw $8, %ax
#NO_APP
.LBE14:
	.loc 1 289 0
	movw	%ax, 50(%rsp)
	movzwl	24(%rbx), %r9d
	jmp	.L39
	.p2align 4,,7
.L124:
.LBE11:
	.loc 1 382 0
	orl	$8, %r15d
	jmp	.L113
.L122:
	.loc 1 231 0
	testb	$1, %r15b
	je	.L35
	andl	$16, %edx
	.p2align 4,,5
	je	.L23
	cmpl	%r10d, %edi
	.p2align 4,,5
	je	.L23
.L35:
	.loc 1 257 0
	testl	%r8d, %r8d
	.p2align 4,,5
	je	.L120
	movabsq	$281474976645120, %rax
	testq	%rax, 8(%rbx)
	.p2align 4,,3
	jne	.L120
	.loc 1 259 0
	movw	$0, 18(%rbx)
	.loc 1 260 0
	movq	%rbx, %rdi
	call	tcp_setpersist
	.loc 1 585 0
	xorl	%eax, %eax
	jmp	.L8
	.p2align 4,,7
.L125:
	.loc 1 414 0
	leal	-1(%rax), %edi
	movl	%edi, 84(%rbx)
	jmp	.L69
.L119:
	.loc 1 586 0
	addq	$88, %rsp
	.loc 1 396 0
	movl	$1, %eax
	.loc 1 586 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE47:
	.size	tcp_output, .-tcp_output
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
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x90
	.align 8
.LEFDE2:
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
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
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
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x90
	.align 8
.LEFDE3:
	.file 2 "/home/remco/Projects/Argos/src/slirp/tcp_timer.h"
	.file 3 "/home/remco/Projects/Argos/src/slirp/tcp_var.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/home/remco/Projects/Argos/src/slirp/tcpip.h"
	.file 7 "/home/remco/Projects/Argos/src/slirp/ip.h"
	.file 8 "/usr/include/netinet/in.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "/home/remco/Projects/Argos/src/slirp/tcp.h"
	.file 11 "/home/remco/Projects/Argos/src/slirp/socket.h"
	.file 12 "/home/remco/Projects/Argos/src/slirp/udp.h"
	.file 13 "/home/remco/Projects/Argos/src/slirp/mbuf.h"
	.file 14 "/home/remco/Projects/Argos/src/slirp/sbuf.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xdb8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF188
	.byte	0x1
	.long	.LASF189
	.long	.LASF190
	.uleb128 0x2
	.long	.LASF0
	.byte	0x5
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x5
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
	.byte	0x5
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x4
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x75
	.long	0xa5
	.uleb128 0x2
	.long	.LASF18
	.byte	0x11
	.byte	0xd5
	.long	0x63
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.byte	0xcb
	.long	0x5c
	.uleb128 0x3
	.long	.LASF22
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF23
	.byte	0x8
	.byte	0x5
	.uleb128 0x7
	.long	0x78
	.uleb128 0x6
	.byte	0x8
	.long	0x12e
	.uleb128 0x7
	.long	0xb6
	.uleb128 0x8
	.long	0x2ff
	.long	.LASF54
	.byte	0xd8
	.byte	0xf
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF24
	.byte	0x10
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x10
	.value	0x115
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x10
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF27
	.byte	0x10
	.value	0x117
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF28
	.byte	0x10
	.value	0x118
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF29
	.byte	0x10
	.value	0x119
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF30
	.byte	0x10
	.value	0x11a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF31
	.byte	0x10
	.value	0x11b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF32
	.byte	0x10
	.value	0x11c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF33
	.byte	0x10
	.value	0x11e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF34
	.byte	0x10
	.value	0x11f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF35
	.byte	0x10
	.value	0x120
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF36
	.byte	0x10
	.value	0x122
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF37
	.byte	0x10
	.value	0x124
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF38
	.byte	0x10
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF39
	.byte	0x10
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF40
	.byte	0x10
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF41
	.byte	0x10
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF42
	.byte	0x10
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF43
	.byte	0x10
	.value	0x132
	.long	0x349
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF44
	.byte	0x10
	.value	0x136
	.long	0x359
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF45
	.byte	0x10
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF46
	.byte	0x10
	.value	0x148
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF47
	.byte	0x10
	.value	0x149
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x10
	.value	0x14a
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x10
	.value	0x14b
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x10
	.value	0x14c
	.long	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF51
	.byte	0x10
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x10
	.value	0x150
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x10
	.byte	0xb4
	.uleb128 0x8
	.long	0x33d
	.long	.LASF55
	.byte	0x18
	.byte	0x10
	.byte	0xba
	.uleb128 0xb
	.long	.LASF56
	.byte	0x10
	.byte	0xbb
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x10
	.byte	0xbc
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF58
	.byte	0x10
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0x6
	.byte	0x8
	.long	0x133
	.uleb128 0xc
	.long	0x359
	.long	0xb6
	.uleb128 0xd
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ff
	.uleb128 0xc
	.long	0x36f
	.long	0xb6
	.uleb128 0xd
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x8d
	.long	0x36f
	.uleb128 0x8
	.long	0x3a0
	.long	.LASF61
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.uleb128 0xb
	.long	.LASF62
	.byte	0x8
	.byte	0x90
	.long	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0xc0
	.long	0x10a
	.uleb128 0x8
	.long	0x41a
	.long	.LASF64
	.byte	0x14
	.byte	0x7
	.byte	0xcf
	.uleb128 0xb
	.long	.LASF65
	.byte	0x7
	.byte	0xd0
	.long	0x3a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x7
	.byte	0xd0
	.long	0x3a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF67
	.byte	0x7
	.byte	0xd1
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF68
	.byte	0x7
	.byte	0xd2
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF69
	.byte	0x7
	.byte	0xd3
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF70
	.byte	0x7
	.byte	0xd4
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF71
	.byte	0x7
	.byte	0xd5
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x28
	.long	0x10a
	.uleb128 0x8
	.long	0x4c4
	.long	.LASF73
	.byte	0x14
	.byte	0xa
	.byte	0x36
	.uleb128 0xb
	.long	.LASF74
	.byte	0xa
	.byte	0x37
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF75
	.byte	0xa
	.byte	0x38
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF76
	.byte	0xa
	.byte	0x39
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF77
	.byte	0xa
	.byte	0x3a
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF78
	.byte	0xa
	.byte	0x3f
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF79
	.byte	0xa
	.byte	0x40
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF80
	.byte	0xa
	.byte	0x42
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.long	.LASF81
	.byte	0xa
	.byte	0x49
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF82
	.byte	0xa
	.byte	0x4a
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF83
	.byte	0xa
	.byte	0x4b
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x4ed
	.long	.LASF84
	.byte	0x28
	.byte	0x6
	.byte	0x2b
	.uleb128 0xb
	.long	.LASF85
	.byte	0x6
	.byte	0x2c
	.long	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x6
	.byte	0x2d
	.long	0x425
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x3
	.byte	0x2e
	.long	0x10a
	.uleb128 0x8
	.long	0x781
	.long	.LASF88
	.byte	0xb8
	.byte	0x2
	.byte	0x83
	.uleb128 0xb
	.long	.LASF89
	.byte	0x3
	.byte	0x35
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x3
	.byte	0x36
	.long	0x4ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF91
	.byte	0x3
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF92
	.byte	0x3
	.byte	0x38
	.long	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF93
	.byte	0x3
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.long	.LASF94
	.byte	0x3
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF95
	.byte	0x3
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.long	.LASF96
	.byte	0x3
	.byte	0x3c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF97
	.byte	0x3
	.byte	0x3d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.long	.LASF98
	.byte	0x3
	.byte	0x3e
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF99
	.byte	0x3
	.byte	0x4c
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF100
	.byte	0x3
	.byte	0x4e
	.long	0x8c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF101
	.byte	0x3
	.byte	0x54
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF102
	.byte	0x3
	.byte	0x55
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.long	.LASF103
	.byte	0x3
	.byte	0x56
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF104
	.byte	0x3
	.byte	0x57
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF105
	.byte	0x3
	.byte	0x58
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"iss"
	.byte	0x3
	.byte	0x59
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.long	.LASF106
	.byte	0x3
	.byte	0x5a
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF107
	.byte	0x3
	.byte	0x5c
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.long	.LASF108
	.byte	0x3
	.byte	0x5d
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF109
	.byte	0x3
	.byte	0x5e
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"irs"
	.byte	0x3
	.byte	0x5f
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF110
	.byte	0x3
	.byte	0x64
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.long	.LASF111
	.byte	0x3
	.byte	0x66
	.long	0x41a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF112
	.byte	0x3
	.byte	0x6a
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.long	.LASF113
	.byte	0x3
	.byte	0x6b
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF114
	.byte	0x3
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.long	.LASF115
	.byte	0x3
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xb
	.long	.LASF116
	.byte	0x3
	.byte	0x75
	.long	0x41a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF117
	.byte	0x3
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.long	.LASF118
	.byte	0x3
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xb
	.long	.LASF119
	.byte	0x3
	.byte	0x78
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF120
	.byte	0x3
	.byte	0x79
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.long	.LASF121
	.byte	0x3
	.byte	0x7c
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF122
	.byte	0x3
	.byte	0x7d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xb
	.long	.LASF123
	.byte	0x3
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0xb
	.long	.LASF124
	.byte	0x3
	.byte	0x83
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.long	.LASF125
	.byte	0x3
	.byte	0x84
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0xb
	.long	.LASF126
	.byte	0x3
	.byte	0x85
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0xb
	.long	.LASF127
	.byte	0x3
	.byte	0x86
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0xb
	.long	.LASF128
	.byte	0x3
	.byte	0x87
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF129
	.byte	0x3
	.byte	0x88
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.long	.LASF130
	.byte	0x3
	.byte	0x89
	.long	0x41a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xc
	.long	0x791
	.long	0x71
	.uleb128 0xd
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.long	0x8c3
	.long	.LASF131
	.byte	0xa0
	.byte	0xa
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF132
	.byte	0xb
	.byte	0x15
	.long	0x8c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF133
	.byte	0xb
	.byte	0x15
	.long	0x8c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"s"
	.byte	0xb
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF134
	.byte	0xb
	.byte	0x1a
	.long	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF135
	.byte	0xb
	.byte	0x1d
	.long	0x9f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF136
	.byte	0xb
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF137
	.byte	0xb
	.byte	0x20
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF138
	.byte	0xb
	.byte	0x21
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF139
	.byte	0xb
	.byte	0x22
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF140
	.byte	0xb
	.byte	0x23
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.long	.LASF141
	.byte	0xb
	.byte	0x25
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF142
	.byte	0xb
	.byte	0x26
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xb
	.long	.LASF143
	.byte	0xb
	.byte	0x28
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xb
	.long	.LASF144
	.byte	0xb
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF145
	.byte	0xb
	.byte	0x2b
	.long	0x9ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF146
	.byte	0xb
	.byte	0x2c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF147
	.byte	0xb
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF148
	.byte	0xb
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF149
	.byte	0xb
	.byte	0x33
	.long	0x9a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF150
	.byte	0xb
	.byte	0x34
	.long	0x9a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF151
	.byte	0xb
	.byte	0x35
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x791
	.uleb128 0x8
	.long	0x954
	.long	.LASF152
	.byte	0x40
	.byte	0xd
	.byte	0x3f
	.uleb128 0xb
	.long	.LASF153
	.byte	0xd
	.byte	0x40
	.long	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF154
	.byte	0xd
	.byte	0x41
	.long	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF155
	.byte	0xd
	.byte	0x42
	.long	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF156
	.byte	0xd
	.byte	0x43
	.long	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF157
	.byte	0xd
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF158
	.byte	0xd
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF159
	.byte	0xd
	.byte	0x47
	.long	0x8c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF160
	.byte	0xd
	.byte	0x49
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF161
	.byte	0xd
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.long	0x97d
	.long	.LASF162
	.byte	0x48
	.byte	0xc
	.byte	0x66
	.uleb128 0xb
	.long	.LASF152
	.byte	0xd
	.byte	0x5c
	.long	0x8c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF163
	.byte	0xd
	.byte	0x60
	.long	0x983
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x954
	.uleb128 0x10
	.long	0x9a6
	.long	.LASF163
	.byte	0x8
	.byte	0xd
	.byte	0x5d
	.uleb128 0x11
	.long	.LASF164
	.byte	0xd
	.byte	0x5e
	.long	0x349
	.uleb128 0x11
	.long	.LASF165
	.byte	0xd
	.byte	0x5f
	.long	0xb0
	.byte	0x0
	.uleb128 0x8
	.long	0x9f9
	.long	.LASF166
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0xb
	.long	.LASF167
	.byte	0xe
	.byte	0xf
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF168
	.byte	0xe
	.byte	0x10
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF169
	.byte	0xe
	.byte	0x11
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF170
	.byte	0xe
	.byte	0x13
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF171
	.byte	0xe
	.byte	0x15
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c4
	.uleb128 0x6
	.byte	0x8
	.long	0x4f8
	.uleb128 0x12
	.long	0xa3d
	.byte	0x1
	.long	.LASF172
	.byte	0x1
	.value	0x24f
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"tp"
	.byte	0x1
	.value	0x24e
	.long	0x9ff
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.value	0x250
	.long	0x78
	.byte	0x0
	.uleb128 0x15
	.long	0xd15
	.byte	0x1
	.long	.LASF173
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	0x78
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"tp"
	.byte	0x1
	.byte	0x48
	.long	0x9ff
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"so"
	.byte	0x1
	.byte	0x4a
	.long	0x8c3
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x4b
	.long	0x7f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.string	"win"
	.byte	0x1
	.byte	0x4b
	.long	0x7f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.string	"off"
	.byte	0x1
	.byte	0x4c
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x18
	.long	.LASF174
	.byte	0x1
	.byte	0x4c
	.long	0x78
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.long	.LASF175
	.byte	0x1
	.byte	0x4c
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x4d
	.long	0x97d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.string	"ti"
	.byte	0x1
	.byte	0x4e
	.long	0x9f9
	.uleb128 0x17
	.string	"opt"
	.byte	0x1
	.byte	0x4f
	.long	0xd15
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x18
	.long	.LASF176
	.byte	0x1
	.byte	0x50
	.long	0x5c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.long	.LASF177
	.byte	0x1
	.byte	0x50
	.long	0x5c
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x1
	.byte	0x51
	.long	0x78
	.uleb128 0x18
	.long	.LASF179
	.byte	0x1
	.byte	0x51
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x1
	.value	0x247
	.quad	.L10
	.uleb128 0x1b
	.long	.LASF181
	.byte	0x1
	.value	0x10e
	.quad	.L23
	.uleb128 0x1c
	.string	"out"
	.byte	0x1
	.value	0x22c
	.quad	.L55
	.uleb128 0x1d
	.long	0xb66
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.string	"adv"
	.byte	0x1
	.byte	0xd0
	.long	0x7f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0xb96
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1ad
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1ad
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xbc6
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1b0
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1b0
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xbf6
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1c0
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1c0
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xc52
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1c3
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1c3
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1c3
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1c3
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xc82
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1d7
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1d7
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xca6
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x20
	.long	.LASF182
	.byte	0x1
	.value	0x1e0
	.long	0x41a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.long	0xcd6
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x14
	.string	"__v"
	.byte	0x1
	.value	0x1af
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x1af
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x14
	.string	"mss"
	.byte	0x1
	.value	0x11c
	.long	0xff
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x120
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.string	"__x"
	.byte	0x1
	.value	0x120
	.long	0x4a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0xd25
	.long	0xbd
	.uleb128 0xd
	.long	0x9c
	.byte	0x1f
	.byte	0x0
	.uleb128 0x22
	.long	.LASF183
	.byte	0xf
	.byte	0x91
	.long	0x343
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF184
	.byte	0xf
	.byte	0x92
	.long	0x343
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xd4a
	.long	0x123
	.uleb128 0x23
	.byte	0x0
	.uleb128 0x22
	.long	.LASF185
	.byte	0x2
	.byte	0x81
	.long	0xd57
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xd3f
	.uleb128 0xc
	.long	0xd6c
	.long	0xd6c
	.uleb128 0xd
	.long	0x9c
	.byte	0xa
	.byte	0x0
	.uleb128 0x7
	.long	0x128
	.uleb128 0x24
	.long	.LASF186
	.byte	0x1
	.byte	0x33
	.long	0xd87
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tcpstates
	.uleb128 0x7
	.long	0xd5c
	.uleb128 0xc
	.long	0xd9c
	.long	0xd9c
	.uleb128 0xd
	.long	0x9c
	.byte	0xa
	.byte	0x0
	.uleb128 0x7
	.long	0xbd
	.uleb128 0x18
	.long	.LASF187
	.byte	0x1
	.byte	0x3a
	.long	0xdb6
	.byte	0x9
	.byte	0x3
	.quad	tcp_outflags
	.uleb128 0x7
	.long	0xd8c
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
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x23
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3e
	.value	0x2
	.long	.Ldebug_info0
	.long	0xdbc
	.long	0xa05
	.string	"tcp_setpersist"
	.long	0xa3d
	.string	"tcp_output"
	.long	0xd71
	.string	"tcpstates"
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"size_t"
.LASF190:
	.string	"/home/remco/Projects/Argos/src"
.LASF157:
	.string	"mh_flags"
.LASF69:
	.string	"ih_len"
.LASF62:
	.string	"s_addr"
.LASF85:
	.string	"ti_i"
.LASF63:
	.string	"caddr32_t"
.LASF35:
	.string	"_IO_save_end"
.LASF77:
	.string	"th_ack"
.LASF153:
	.string	"mh_next"
.LASF160:
	.string	"mh_data"
.LASF162:
	.string	"mbuf"
.LASF154:
	.string	"mh_prev"
.LASF80:
	.string	"th_flags"
.LASF141:
	.string	"so_iptos"
.LASF28:
	.string	"_IO_write_base"
.LASF44:
	.string	"_lock"
.LASF33:
	.string	"_IO_save_base"
.LASF128:
	.string	"ts_recent"
.LASF37:
	.string	"_chain"
.LASF75:
	.string	"th_dport"
.LASF166:
	.string	"sbuf"
.LASF41:
	.string	"_cur_column"
.LASF94:
	.string	"t_rxtcur"
.LASF114:
	.string	"t_idle"
.LASF151:
	.string	"extra"
.LASF140:
	.string	"so_lport"
.LASF189:
	.string	"slirp/tcp_output.c"
.LASF135:
	.string	"so_ti"
.LASF98:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF187:
	.string	"tcp_outflags"
.LASF12:
	.string	"__caddr_t"
.LASF14:
	.string	"u_char"
.LASF55:
	.string	"_IO_marker"
.LASF99:
	.string	"t_template"
.LASF175:
	.string	"error"
.LASF0:
	.string	"__u_char"
.LASF156:
	.string	"mh_prevpkt"
.LASF159:
	.string	"mh_so"
.LASF79:
	.string	"th_off"
.LASF107:
	.string	"rcv_wnd"
.LASF70:
	.string	"ih_src"
.LASF71:
	.string	"ih_dst"
.LASF61:
	.string	"in_addr"
.LASF131:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF54:
	.string	"_IO_FILE"
.LASF89:
	.string	"seg_next"
.LASF136:
	.string	"so_urgc"
.LASF2:
	.string	"unsigned char"
.LASF142:
	.string	"so_emu"
.LASF163:
	.string	"M_dat"
.LASF139:
	.string	"so_fport"
.LASF74:
	.string	"th_sport"
.LASF19:
	.string	"u_int8_t"
.LASF106:
	.string	"snd_wnd"
.LASF73:
	.string	"tcphdr"
.LASF84:
	.string	"tcpiphdr"
.LASF119:
	.string	"t_rttmin"
.LASF53:
	.string	"_IO_lock_t"
.LASF110:
	.string	"rcv_adv"
.LASF174:
	.string	"flags"
.LASF25:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"tcpiphdrp_32"
.LASF90:
	.string	"seg_prev"
.LASF58:
	.string	"_pos"
.LASF130:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF171:
	.string	"sb_data"
.LASF36:
	.string	"_markers"
.LASF16:
	.string	"u_int"
.LASF100:
	.string	"t_socket"
.LASF127:
	.string	"requested_s_scale"
.LASF120:
	.string	"max_sndwnd"
.LASF60:
	.string	"in_addr_t"
.LASF113:
	.string	"snd_ssthresh"
.LASF45:
	.string	"_offset"
.LASF176:
	.string	"optlen"
.LASF20:
	.string	"u_int16_t"
.LASF6:
	.string	"long unsigned int"
.LASF92:
	.string	"t_timer"
.LASF39:
	.string	"_flags2"
.LASF27:
	.string	"_IO_read_base"
.LASF95:
	.string	"t_dupacks"
.LASF170:
	.string	"sb_rptr"
.LASF52:
	.string	"_unused2"
.LASF158:
	.string	"mh_size"
.LASF112:
	.string	"snd_cwnd"
.LASF183:
	.string	"stdin"
.LASF173:
	.string	"tcp_output"
.LASF40:
	.string	"_old_offset"
.LASF72:
	.string	"tcp_seq"
.LASF91:
	.string	"t_state"
.LASF123:
	.string	"t_softerror"
.LASF116:
	.string	"t_rtseq"
.LASF23:
	.string	"long long int"
.LASF168:
	.string	"sb_datalen"
.LASF185:
	.string	"tcp_backoff"
.LASF30:
	.string	"_IO_write_end"
.LASF111:
	.string	"snd_max"
.LASF172:
	.string	"tcp_setpersist"
.LASF101:
	.string	"snd_una"
.LASF186:
	.string	"tcpstates"
.LASF31:
	.string	"_IO_buf_base"
.LASF121:
	.string	"t_oobflags"
.LASF97:
	.string	"t_force"
.LASF56:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF78:
	.string	"th_x2"
.LASF188:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF17:
	.string	"caddr_t"
.LASF108:
	.string	"rcv_nxt"
.LASF46:
	.string	"__pad1"
.LASF47:
	.string	"__pad2"
.LASF48:
	.string	"__pad3"
.LASF49:
	.string	"__pad4"
.LASF50:
	.string	"__pad5"
.LASF57:
	.string	"_sbuf"
.LASF109:
	.string	"rcv_up"
.LASF96:
	.string	"t_maxseg"
.LASF24:
	.string	"_flags"
.LASF177:
	.string	"hdrlen"
.LASF134:
	.string	"so_m"
.LASF51:
	.string	"_mode"
.LASF180:
	.string	"again"
.LASF132:
	.string	"so_next"
.LASF103:
	.string	"snd_up"
.LASF13:
	.string	"char"
.LASF81:
	.string	"th_win"
.LASF133:
	.string	"so_prev"
.LASF150:
	.string	"so_snd"
.LASF152:
	.string	"m_hdr"
.LASF155:
	.string	"mh_nextpkt"
.LASF82:
	.string	"th_sum"
.LASF129:
	.string	"ts_recent_age"
.LASF124:
	.string	"snd_scale"
.LASF22:
	.string	"long long unsigned int"
.LASF122:
	.string	"t_iobc"
.LASF10:
	.string	"__off_t"
.LASF126:
	.string	"request_r_scale"
.LASF68:
	.string	"ih_pr"
.LASF137:
	.string	"so_faddr"
.LASF148:
	.string	"so_nqueued"
.LASF165:
	.string	"m_ext_"
.LASF34:
	.string	"_IO_backup_base"
.LASF43:
	.string	"_shortbuf"
.LASF76:
	.string	"th_seq"
.LASF11:
	.string	"__off64_t"
.LASF86:
	.string	"ti_t"
.LASF161:
	.string	"mh_len"
.LASF32:
	.string	"_IO_buf_end"
.LASF88:
	.string	"tcpcb"
.LASF144:
	.string	"so_state"
.LASF93:
	.string	"t_rxtshift"
.LASF64:
	.string	"ipovly"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"u_int32_t"
.LASF182:
	.string	"startseq"
.LASF146:
	.string	"so_expire"
.LASF118:
	.string	"t_rttvar"
.LASF42:
	.string	"_vtable_offset"
.LASF65:
	.string	"ih_next"
.LASF83:
	.string	"th_urp"
.LASF143:
	.string	"so_type"
.LASF66:
	.string	"ih_prev"
.LASF104:
	.string	"snd_wl1"
.LASF105:
	.string	"snd_wl2"
.LASF1:
	.string	"__u_short"
.LASF167:
	.string	"sb_cc"
.LASF178:
	.string	"idle"
.LASF26:
	.string	"_IO_read_end"
.LASF179:
	.string	"sendalot"
.LASF138:
	.string	"so_laddr"
.LASF59:
	.string	"uint32_t"
.LASF117:
	.string	"t_srtt"
.LASF38:
	.string	"_fileno"
.LASF149:
	.string	"so_rcv"
.LASF102:
	.string	"snd_nxt"
.LASF147:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF184:
	.string	"stdout"
.LASF29:
	.string	"_IO_write_ptr"
.LASF67:
	.string	"ih_x1"
.LASF145:
	.string	"so_tcpcb"
.LASF15:
	.string	"u_short"
.LASF169:
	.string	"sb_wptr"
.LASF125:
	.string	"rcv_scale"
.LASF164:
	.string	"m_dat_"
.LASF181:
	.string	"send"
.LASF115:
	.string	"t_rtt"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
