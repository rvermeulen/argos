	.file	"ip_input.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl ip_init
	.type	ip_init, @function
ip_init:
.LFB47:
	.file 1 "slirp/ip_input.c"
	.loc 1 67 0
	.loc 1 68 0
	movl	$ipq, %eax
	.loc 1 67 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 68 0
	movl	%eax, ipq+4(%rip)
	movl	%eax, ipq(%rip)
	.loc 1 69 0
	movq	tt(%rip), %rax
	movw	%ax, ip_id(%rip)
	.loc 1 70 0
	call	udp_init
	.loc 1 71 0
	addq	$8, %rsp
	jmp	tcp_init
.LFE47:
	.size	ip_init, .-ip_init
	.p2align 4,,15
	.type	ip_deq, @function
ip_deq:
.LFB52:
	.loc 1 438 0
	.loc 1 439 0
	movl	16(%rdi), %ecx
	movl	12(%rdi), %eax
	mov	%ecx, %edx
	movl	%eax, 12(%rdx)
	.loc 1 440 0
	mov	12(%rdi), %eax
	movl	%ecx, 16(%rax)
	ret
.LFE52:
	.size	ip_deq, .-ip_deq
	.p2align 4,,15
	.type	ip_freef, @function
ip_freef:
.LFB50:
	.loc 1 405 0
	pushq	%r12
.LCFI1:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI2:
	pushq	%rbx
.LCFI3:
	.loc 1 408 0
	mov	12(%rdi), %ebp
	jmp	.L10
	.p2align 4,,7
.L12:
	.loc 1 410 0
	mov	12(%rbp), %ebx
	.loc 1 411 0
	movq	%rbp, %rdi
	call	ip_deq
	.loc 1 412 0
	movq	%rbp, %rdi
	call	dtom
	.loc 1 408 0
	movq	%rbx, %rbp
	.loc 1 412 0
	movq	%rax, %rdi
	call	m_free
.L10:
	.loc 1 408 0
	cmpq	%r12, %rbp
	jne	.L12
	.loc 1 414 0
	movq	%r12, %rdi
	call	remque_32
	.loc 1 415 0
	movq	%r12, %rdi
	call	dtom
	popq	%rbx
	popq	%rbp
	popq	%r12
	movq	%rax, %rdi
	jmp	m_free
.LFE50:
	.size	ip_freef, .-ip_freef
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ttl"
	.text
	.p2align 4,,15
.globl ip_input
	.type	ip_input, @function
ip_input:
.LFB48:
	.loc 1 81 0
	movq	%rbx, -48(%rsp)
.LCFI4:
	movq	%rbp, -40(%rsp)
.LCFI5:
	movq	%rdi, %rbx
	movq	%r12, -32(%rsp)
.LCFI6:
	movq	%r13, -24(%rsp)
.LCFI7:
	movq	%r14, -16(%rsp)
.LCFI8:
	movq	%r15, -8(%rsp)
.LCFI9:
	subq	$56, %rsp
.LCFI10:
	.loc 1 91 0
	movl	56(%rdi), %ecx
	cmpl	$19, %ecx
	jbe	.L13
	.loc 1 96 0
	movq	48(%rdi), %rbp
	.loc 1 98 0
	movzbl	(%rbp), %edx
	movl	%edx, %eax
	shrb	$4, %al
	cmpb	$4, %al
	jne	.L19
	.loc 1 103 0
	movl	%edx, %eax
	andl	$15, %eax
	leal	0(,%rax,4), %r12d
	.loc 1 104 0
	cmpl	$19, %r12d
	jbe	.L19
	cmpl	%r12d, %ecx
	jge	.L105
	.p2align 4,,7
.L19:
	.loc 1 236 0
	movq	%rbx, %rdi
	.loc 1 238 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	.loc 1 236 0
	jmp	m_free
	.p2align 4,,7
.L13:
	.loc 1 238 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.L105:
	.loc 1 113 0
	movl	%r12d, %esi
	call	cksum
	testl	%eax, %eax
	jne	.L19
.LBB2:
	.loc 1 121 0
	movzwl	2(%rbp), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE2:
	.loc 1 122 0
	movzwl	%ax, %esi
	.loc 1 121 0
	movw	%ax, 2(%rbp)
	.loc 1 122 0
	cmpl	%r12d, %esi
	jl	.L19
.LBB3:
	.loc 1 126 0
	movzwl	4(%rbp), %eax
.LBE3:
#APP
	rorw $8, %ax
#NO_APP
	movw	%ax, 4(%rbp)
.LBB4:
	.loc 1 127 0
	movzwl	6(%rbp), %eax
.LBE4:
#APP
	rorw $8, %ax
#NO_APP
	movw	%ax, 6(%rbp)
	.loc 1 135 0
	movl	56(%rbx), %eax
	cmpl	%esi, %eax
	jl	.L19
	.loc 1 140 0
	jg	.L106
.L35:
	.loc 1 144 0
	cmpb	$1, 8(%rbp)
	jbe	.L107
	.loc 1 168 0
	movzwl	6(%rbp), %edx
	testl	$49151, %edx
	.p2align 4,,5
	je	.L37
.LBB5:
	.loc 1 174 0
	mov	ipq(%rip), %r13d
	cmpq	$ipq, %r13
	je	.L92
	movzwl	4(%rbp), %ecx
	jmp	.L43
.L40:
	mov	(%r13), %r13d
	cmpq	$ipq, %r13
	je	.L92
.L43:
	.loc 1 176 0
	cmpw	10(%r13), %cx
	jne	.L40
	movl	20(%r13), %eax
	cmpl	%eax, 12(%rbp)
	jne	.L40
	movl	24(%r13), %eax
	cmpl	%eax, 16(%rbp)
	jne	.L40
	movzbl	9(%r13), %eax
	cmpb	%al, 9(%rbp)
	jne	.L40
.L42:
	.loc 1 189 0
	subw	%r12w, 2(%rbp)
	.loc 1 190 0
	testb	$32, %dh
	je	.L44
	.loc 1 191 0
	movzbl	1(%rbp), %eax
	orl	$1, %eax
.L101:
	.loc 1 195 0
	sall	$3, %edx
	.loc 1 202 0
	testb	$1, %al
	.loc 1 193 0
	movb	%al, 1(%rbp)
	.loc 1 195 0
	movw	%dx, 6(%rbp)
	.loc 1 202 0
	jne	.L48
	testw	%dx, %dx
	je	.L46
.L48:
.LBB6:
.LBB7:
	.loc 1 249 0
	movq	%rbp, %rdi
.LBE7:
	.loc 1 248 0
	movq	%r13, (%rsp)
.LBB8:
	.loc 1 249 0
	call	dtom
	movq	%rax, %r15
	.loc 1 251 0
	movzbl	(%rbp), %eax
	andl	$15, %eax
	sall	$2, %eax
	.loc 1 265 0
	subl	%eax, 56(%r15)
	.loc 1 264 0
	movslq	%eax,%rdx
	addq	%rdx, 48(%r15)
	.loc 1 270 0
	testq	%r13, %r13
	je	.L108
	.loc 1 288 0
	mov	12(%r13), %ebx
	cmpq	%r13, %rbx
	je	.L54
	movzwl	6(%rbp), %edx
.L57:
	.loc 1 290 0
	cmpw	%dx, 6(%rbx)
	ja	.L54
	.loc 1 288 0
	mov	12(%rbx), %ebx
	cmpq	%r13, %rbx
	jne	.L57
.L54:
	.loc 1 298 0
	movl	16(%rbx), %eax
	cmpl	%r13d, %eax
	je	.L58
	.loc 1 299 0
	mov	%eax, %eax
	movzwl	6(%rax), %edx
	movzwl	2(%rax), %eax
	leal	(%rdx,%rax), %r14d
	movzwl	6(%rbp), %eax
	subl	%eax, %r14d
	.loc 1 301 0
	testl	%r14d, %r14d
	jle	.L58
	.loc 1 302 0
	movzwl	2(%rbp), %eax
	cmpl	%r14d, %eax
	jle	.L77
	.loc 1 304 0
	movq	%rbp, %rdi
	call	dtom
	movl	%r14d, %esi
	movq	%rax, %rdi
	call	m_adj
	.loc 1 305 0
	addw	%r14w, 6(%rbp)
	.loc 1 306 0
	subw	%r14w, 2(%rbp)
.L58:
	.loc 1 324 0
	cmpq	%r13, %rbx
	je	.L52
	movzwl	6(%rbp), %edx
	movzwl	2(%rbp), %r8d
	movzwl	6(%rbx), %edi
	leal	(%rdx,%r8), %eax
	movzwl	%di, %ecx
	cmpl	%ecx, %eax
	jle	.L52
	movl	%edx, %esi
	movl	%r8d, %edx
.L64:
	.loc 1 315 0
	leal	(%rsi,%rdx), %r14d
	.loc 1 316 0
	movzwl	2(%rbx), %edx
	.loc 1 315 0
	subl	%ecx, %r14d
	.loc 1 316 0
	movzwl	%dx, %eax
	cmpl	%r14d, %eax
	jg	.L99
	.loc 1 322 0
	mov	12(%rbx), %ebx
	.loc 1 323 0
	mov	16(%rbx), %edi
	call	dtom
	movq	%rax, %rdi
	call	m_free
	.loc 1 324 0
	mov	16(%rbx), %edi
	call	ip_deq
	cmpq	%r13, %rbx
	je	.L52
	movzwl	6(%rbp), %esi
	movzwl	2(%rbp), %edx
	movzwl	6(%rbx), %edi
	leal	(%rsi,%rdx), %eax
	movzwl	%di, %ecx
	cmpl	%ecx, %eax
	jg	.L64
.L52:
.LBB9:
	.loc 1 424 0
	mov	16(%rbx), %eax
.LBB10:
	.loc 1 428 0
	movl	12(%rax), %edx
	.loc 1 427 0
	movl	%eax, 16(%rbp)
	.loc 1 428 0
	movl	%edx, 12(%rbp)
	.loc 1 429 0
	mov	12(%rax), %edx
	.loc 1 430 0
	movl	%ebp, 12(%rax)
	.loc 1 429 0
	movl	%ebp, 16(%rdx)
.LBE10:
.LBE9:
	.loc 1 334 0
	movq	(%rsp), %rdx
	.loc 1 333 0
	xorl	%ebp, %ebp
	.loc 1 334 0
	movl	12(%rdx), %ecx
	mov	%ecx, %ebx
	cmpq	%rdx, %rbx
	jmp	.L102
.L109:
	.loc 1 336 0
	movzwl	6(%rbx), %eax
	cmpl	%ebp, %eax
	jne	.L104
	.loc 1 338 0
	movzwl	2(%rbx), %eax
	.loc 1 334 0
	mov	12(%rbx), %ebx
	.loc 1 338 0
	addl	%eax, %ebp
	.loc 1 334 0
	cmpq	(%rsp), %rbx
.L102:
	jne	.L109
	.loc 1 340 0
	mov	16(%rbx), %eax
	xorl	%edx, %edx
	testb	$1, 1(%rax)
	je	.L110
.L70:
.LBE8:
.LBE6:
	.loc 1 205 0
	testq	%rdx, %rdx
	.loc 1 248 0
	movq	%rdx, %rbp
	.loc 1 205 0
	je	.L13
	.loc 1 208 0
	movq	%rdx, %rdi
	call	dtom
	movq	%rax, %rbx
.L83:
.LBE5:
	.loc 1 220 0
	movzbl	9(%rbp), %eax
	cmpl	$6, %eax
	je	.L85
	jg	.L90
	decl	%eax
	.p2align 4,,4
	jne	.L19
	.loc 1 228 0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	.loc 1 238 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	.loc 1 228 0
	jmp	icmp_input
.L92:
.LBB11:
	.loc 1 181 0
	xorl	%r13d, %r13d
	jmp	.L42
.L37:
.LBE11:
	.loc 1 214 0
	subw	%r12w, 2(%rbp)
	jmp	.L83
.L106:
	.loc 1 141 0
	subl	%eax, %esi
	movq	%rbx, %rdi
	call	m_adj
	.p2align 4,,2
	jmp	.L35
.L90:
	.loc 1 220 0
	cmpl	$17, %eax
	.p2align 4,,2
	jne	.L19
	.loc 1 225 0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	.loc 1 238 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	.loc 1 225 0
	jmp	udp_input
.L44:
.LBB12:
	.loc 1 193 0
	movzbl	1(%rbp), %eax
	andl	$-2, %eax
	jmp	.L101
.L85:
.LBE12:
	.loc 1 222 0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	.loc 1 238 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	.loc 1 222 0
	xorl	%edx, %edx
	.loc 1 238 0
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	.loc 1 222 0
	jmp	tcp_input
.L107:
	.loc 1 145 0
	movl	$.LC0, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$11, %esi
	movq	%rbx, %rdi
	call	icmp_error
	jmp	.L19
.L46:
.LBB13:
	.loc 1 210 0
	testq	%r13, %r13
	je	.L83
	.loc 1 211 0
	movq	%r13, %rdi
	.p2align 4,,7
	call	ip_freef
	.p2align 4,,4
	jmp	.L83
.L51:
.L77:
.LBB14:
.LBB15:
	.loc 1 395 0
	movq	%r15, %rdi
	call	m_free
.L104:
	xorl	%edx, %edx
	.p2align 4,,4
	jmp	.L70
.L110:
	.loc 1 346 0
	mov	%ecx, %ebx
	.loc 1 347 0
	movq	%rbx, %rdi
	call	dtom
	.loc 1 349 0
	mov	12(%rbx), %ebx
	.loc 1 347 0
	movq	%rax, %r15
	jmp	.L103
.L111:
.LBB16:
	.loc 1 352 0
	movq	%rbx, %rdi
	call	dtom
	.loc 1 354 0
	movq	%r15, %rdi
	.loc 1 352 0
	movq	%rax, %rsi
	.loc 1 353 0
	mov	12(%rbx), %ebx
	.loc 1 354 0
	call	m_cat
.L103:
.LBE16:
	cmpq	(%rsp), %rbx
	jne	.L111
	.loc 1 372 0
	testb	$1, 32(%r15)
	.loc 1 363 0
	movq	(%rsp), %rax
	mov	12(%rax), %ebx
	.loc 1 372 0
	je	.L76
.LBB17:
	.loc 1 374 0
	movl	%ebx, %eax
	subl	%r15d, %eax
	subl	$64, %eax
	.loc 1 375 0
	movslq	%eax,%rbx
	addq	64(%r15), %rbx
.L76:
.LBE17:
	.loc 1 382 0
	andb	$-2, 1(%rbx)
	.loc 1 381 0
	movw	%bp, 2(%rbx)
	.loc 1 383 0
	movq	(%rsp), %rdx
	movl	20(%rdx), %eax
	.loc 1 385 0
	movq	%rdx, %rdi
	.loc 1 383 0
	movl	%eax, 12(%rbx)
	.loc 1 384 0
	movl	24(%rdx), %eax
	movl	%eax, 16(%rbx)
	.loc 1 385 0
	call	remque_32
	.loc 1 386 0
	movq	(%rsp), %rdi
	call	dtom
	movq	%rax, %rdi
	call	m_free
	.loc 1 387 0
	movq	%rbx, %rdi
	call	dtom
	movq	%rax, %r15
	.loc 1 388 0
	movzbl	(%rbx), %eax
	.loc 1 389 0
	movq	%rbx, %rdx
	.loc 1 388 0
	andl	$15, %eax
	sall	$2, %eax
	addl	%eax, 56(%r15)
	.loc 1 389 0
	movzbl	(%rbx), %eax
	salq	$2, %rax
	andl	$60, %eax
	subq	%rax, 48(%r15)
	jmp	.L70
.L108:
.LBB18:
	.loc 1 272 0
	call	m_get
	testq	%rax, %rax
	je	.L77
	.loc 1 273 0
	movq	48(%rax), %rax
	.loc 1 274 0
	movl	$ipq, %esi
	movq	%rax, %rdi
	.loc 1 273 0
	movq	%rax, (%rsp)
	.loc 1 274 0
	call	insque_32
	.loc 1 275 0
	movq	(%rsp), %rax
	movb	$60, 8(%rax)
	.loc 1 276 0
	movzbl	9(%rbp), %eax
	movq	(%rsp), %rdx
	movb	%al, 9(%rdx)
	.loc 1 277 0
	movzwl	4(%rbp), %eax
	.loc 1 281 0
	movq	%rdx, %rbx
	.loc 1 278 0
	movl	%edx, 16(%rdx)
	movl	%edx, 12(%rdx)
	.loc 1 277 0
	movw	%ax, 10(%rdx)
	.loc 1 279 0
	movl	12(%rbp), %eax
	movl	%eax, 20(%rdx)
	.loc 1 280 0
	movl	16(%rbp), %eax
	movl	%eax, 24(%rdx)
	jmp	.L52
.L99:
.LBE18:
	.loc 1 318 0
	leal	(%rdi,%r14), %eax
	.loc 1 317 0
	subw	%r14w, %dx
	.loc 1 319 0
	movq	%rbx, %rdi
	.loc 1 317 0
	movw	%dx, 2(%rbx)
	.loc 1 318 0
	movw	%ax, 6(%rbx)
	.loc 1 319 0
	call	dtom
	movl	%r14d, %esi
	movq	%rax, %rdi
	call	m_adj
	jmp	.L52
.LBE15:
.LBE14:
.LBE13:
.LFE48:
	.size	ip_input, .-ip_input
	.p2align 4,,15
.globl ip_slowtimo
	.type	ip_slowtimo, @function
ip_slowtimo:
.LFB53:
	.loc 1 450 0
	pushq	%rbx
.LCFI11:
	.loc 1 455 0
	mov	ipq(%rip), %ebx
	.loc 1 456 0
	testq	%rbx, %rbx
	je	.L112
	.p2align 4,,7
.L121:
	.loc 1 464 0
	cmpq	$ipq, %rbx
	je	.L112
.L122:
	.loc 1 460 0
	decb	8(%rbx)
	.loc 1 461 0
	mov	(%rbx), %ebx
	.loc 1 462 0
	mov	4(%rbx), %edi
	cmpb	$0, 8(%rdi)
	jne	.L121
	.loc 1 464 0
	call	ip_freef
	cmpq	$ipq, %rbx
	jne	.L122
	.p2align 4,,7
.L112:
	.loc 1 467 0
	popq	%rbx
	.p2align 4,,2
	ret
.LFE53:
	.size	ip_slowtimo, .-ip_slowtimo
	.p2align 4,,15
.globl ip_stripoptions
	.type	ip_stripoptions, @function
ip_stripoptions:
.LFB54:
	.loc 1 687 0
	movq	%r12, -16(%rsp)
.LCFI12:
	movq	%rbx, -24(%rsp)
.LCFI13:
	movq	%rdi, %r12
	movq	%r13, -8(%rsp)
.LCFI14:
	subq	$24, %rsp
.LCFI15:
	.loc 1 689 0
	movq	48(%rdi), %r13
	.loc 1 695 0
	movl	56(%r12), %edx
	.loc 1 693 0
	movzbl	(%r13), %ebx
	.loc 1 694 0
	leaq	20(%r13), %rdi
	.loc 1 693 0
	andl	$15, %ebx
	leal	-20(,%rbx,4), %ebx
	.loc 1 695 0
	subl	%ebx, %edx
	.loc 1 696 0
	movslq	%ebx,%rsi
	subl	$20, %edx
	addq	%rdi, %rsi
	call	memcpy
	.loc 1 697 0
	subl	%ebx, 56(%r12)
	.loc 1 699 0
	movzbl	(%r13), %eax
	andl	$-16, %eax
	orl	$5, %eax
	movb	%al, (%r13)
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE54:
	.size	ip_stripoptions, .-ip_stripoptions
	.comm	ipq,28,16
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
	.byte	0x4
	.long	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI1-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI5-.LFB48
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI10-.LCFI5
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI11-.LFB53
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
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI13-.LFB54
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE10:
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
	.byte	0x4
	.long	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI1-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI5-.LFB48
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI10-.LCFI5
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI11-.LFB53
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
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI13-.LFB54
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE11:
	.file 2 "/home/remco/Projects/Argos/src/slirp/ip.h"
	.file 3 "/usr/include/sys/types.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/netinet/in.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/home/remco/Projects/Argos/src/slirp/udp.h"
	.file 8 "/home/remco/Projects/Argos/src/slirp/mbuf.h"
	.file 9 "/home/remco/Projects/Argos/src/slirp/tcp.h"
	.file 10 "/home/remco/Projects/Argos/src/slirp/socket.h"
	.file 11 "/home/remco/Projects/Argos/src/slirp/tcpip.h"
	.file 12 "/home/remco/Projects/Argos/src/slirp/tcp_timer.h"
	.file 13 "/home/remco/Projects/Argos/src/slirp/tcp_var.h"
	.file 14 "/home/remco/Projects/Argos/src/slirp/sbuf.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 18 "/home/remco/Projects/Argos/src/slirp/main.h"
	.file 19 "/usr/include/bits/time.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1050
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF220
	.byte	0x1
	.long	.LASF221
	.long	.LASF222
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
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
	.byte	0x4
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x8e
	.long	0x7f
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x95
	.long	0x7f
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.long	0x7f
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0xba
	.long	0xc6
	.uleb128 0x6
	.byte	0x8
	.long	0xcc
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0x75
	.long	0xbb
	.uleb128 0x2
	.long	.LASF20
	.byte	0x11
	.byte	0xd5
	.long	0x63
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.byte	0xcb
	.long	0x5c
	.uleb128 0x7
	.long	0x154
	.long	.LASF28
	.byte	0x10
	.byte	0x13
	.byte	0x46
	.uleb128 0x8
	.long	.LASF24
	.byte	0x13
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x13
	.byte	0x48
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF27
	.byte	0x8
	.byte	0x5
	.uleb128 0x7
	.long	0x32e
	.long	.LASF29
	.byte	0xd8
	.byte	0xf
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF30
	.byte	0x10
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x10
	.value	0x115
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF32
	.byte	0x10
	.value	0x116
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF33
	.byte	0x10
	.value	0x117
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF34
	.byte	0x10
	.value	0x118
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF35
	.byte	0x10
	.value	0x119
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF36
	.byte	0x10
	.value	0x11a
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF37
	.byte	0x10
	.value	0x11b
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF38
	.byte	0x10
	.value	0x11c
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF39
	.byte	0x10
	.value	0x11e
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF40
	.byte	0x10
	.value	0x11f
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF41
	.byte	0x10
	.value	0x120
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF42
	.byte	0x10
	.value	0x122
	.long	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF43
	.byte	0x10
	.value	0x124
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x10
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF45
	.byte	0x10
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF46
	.byte	0x10
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF47
	.byte	0x10
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF48
	.byte	0x10
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF49
	.byte	0x10
	.value	0x132
	.long	0x378
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF50
	.byte	0x10
	.value	0x136
	.long	0x388
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF51
	.byte	0x10
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF52
	.byte	0x10
	.value	0x148
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF53
	.byte	0x10
	.value	0x149
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x10
	.value	0x14a
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF55
	.byte	0x10
	.value	0x14b
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x10
	.value	0x14c
	.long	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF57
	.byte	0x10
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x10
	.value	0x150
	.long	0x38e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x10
	.byte	0xb4
	.uleb128 0x7
	.long	0x36c
	.long	.LASF60
	.byte	0x18
	.byte	0x10
	.byte	0xba
	.uleb128 0x8
	.long	.LASF61
	.byte	0x10
	.byte	0xbb
	.long	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x10
	.byte	0xbc
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x10
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x335
	.uleb128 0x6
	.byte	0x8
	.long	0x162
	.uleb128 0xb
	.long	0x388
	.long	0xcc
	.uleb128 0xc
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x32e
	.uleb128 0xb
	.long	0x39e
	.long	0xcc
	.uleb128 0xc
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x5
	.byte	0x8d
	.long	0x39e
	.uleb128 0x7
	.long	0x3cf
	.long	.LASF66
	.byte	0x4
	.byte	0x5
	.byte	0x8f
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0x90
	.long	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x47b
	.string	"ip"
	.byte	0x14
	.byte	0x2
	.byte	0x4f
	.uleb128 0xe
	.long	.LASF68
	.byte	0x2
	.byte	0x54
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x2
	.byte	0x55
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x2
	.byte	0x57
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF71
	.byte	0x2
	.byte	0x58
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF72
	.byte	0x2
	.byte	0x59
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF73
	.byte	0x2
	.byte	0x5a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0x5e
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF75
	.byte	0x2
	.byte	0x5f
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF76
	.byte	0x2
	.byte	0x60
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF77
	.byte	0x2
	.byte	0x61
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF78
	.byte	0x2
	.byte	0x61
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x2
	.byte	0xc0
	.long	0x120
	.uleb128 0x2
	.long	.LASF80
	.byte	0x2
	.byte	0xc8
	.long	0x47b
	.uleb128 0x2
	.long	.LASF81
	.byte	0x2
	.byte	0xc9
	.long	0x47b
	.uleb128 0x7
	.long	0x50b
	.long	.LASF82
	.byte	0x14
	.byte	0x2
	.byte	0xcf
	.uleb128 0x8
	.long	.LASF83
	.byte	0x2
	.byte	0xd0
	.long	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x2
	.byte	0xd0
	.long	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF85
	.byte	0x2
	.byte	0xd1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF86
	.byte	0x2
	.byte	0xd2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF87
	.byte	0x2
	.byte	0xd3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF88
	.byte	0x2
	.byte	0xd4
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF89
	.byte	0x2
	.byte	0xd5
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x596
	.string	"ipq"
	.byte	0x1c
	.byte	0x2
	.byte	0xdf
	.uleb128 0x8
	.long	.LASF90
	.byte	0x2
	.byte	0xe0
	.long	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x2
	.byte	0xe0
	.long	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF92
	.byte	0x2
	.byte	0xe1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF93
	.byte	0x2
	.byte	0xe2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF94
	.byte	0x2
	.byte	0xe3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF95
	.byte	0x2
	.byte	0xe4
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF96
	.byte	0x2
	.byte	0xe4
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF97
	.byte	0x2
	.byte	0xe6
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF98
	.byte	0x2
	.byte	0xe6
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.long	0x647
	.long	.LASF99
	.byte	0x14
	.byte	0x2
	.byte	0xee
	.uleb128 0xe
	.long	.LASF68
	.byte	0x2
	.byte	0xf3
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x2
	.byte	0xf4
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x2
	.byte	0xf9
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF71
	.byte	0x2
	.byte	0xfc
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF72
	.byte	0x2
	.byte	0xfd
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF73
	.byte	0x2
	.byte	0xfe
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0xff
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF75
	.byte	0x2
	.value	0x100
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.long	.LASF76
	.byte	0x2
	.value	0x101
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF101
	.byte	0x2
	.value	0x102
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF102
	.byte	0x2
	.value	0x103
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF103
	.byte	0x9
	.byte	0x28
	.long	0x120
	.uleb128 0x7
	.long	0x6f1
	.long	.LASF104
	.byte	0x14
	.byte	0x9
	.byte	0x36
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x37
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x38
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x39
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x3a
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF109
	.byte	0x9
	.byte	0x3f
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.long	.LASF110
	.byte	0x9
	.byte	0x40
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0x42
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.long	.LASF112
	.byte	0x9
	.byte	0x49
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0x4a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF114
	.byte	0x9
	.byte	0x4b
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x7
	.long	0x71a
	.long	.LASF115
	.byte	0x28
	.byte	0xb
	.byte	0x2b
	.uleb128 0x8
	.long	.LASF116
	.byte	0xb
	.byte	0x2c
	.long	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF117
	.byte	0xb
	.byte	0x2d
	.long	0x652
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF118
	.byte	0xd
	.byte	0x2e
	.long	0x120
	.uleb128 0x7
	.long	0x9ae
	.long	.LASF119
	.byte	0xb8
	.byte	0xc
	.byte	0x83
	.uleb128 0x8
	.long	.LASF120
	.byte	0xd
	.byte	0x35
	.long	0x71a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xd
	.byte	0x36
	.long	0x71a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF122
	.byte	0xd
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0xd
	.byte	0x38
	.long	0x9ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF124
	.byte	0xd
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF125
	.byte	0xd
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF126
	.byte	0xd
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF127
	.byte	0xd
	.byte	0x3c
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF128
	.byte	0xd
	.byte	0x3d
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.long	.LASF129
	.byte	0xd
	.byte	0x3e
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF130
	.byte	0xd
	.byte	0x4c
	.long	0x6f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF131
	.byte	0xd
	.byte	0x4e
	.long	0xaf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF132
	.byte	0xd
	.byte	0x54
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0x55
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF134
	.byte	0xd
	.byte	0x56
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF135
	.byte	0xd
	.byte	0x57
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF136
	.byte	0xd
	.byte	0x58
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"iss"
	.byte	0xd
	.byte	0x59
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF137
	.byte	0xd
	.byte	0x5a
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF138
	.byte	0xd
	.byte	0x5c
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.long	.LASF139
	.byte	0xd
	.byte	0x5d
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF140
	.byte	0xd
	.byte	0x5e
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"irs"
	.byte	0xd
	.byte	0x5f
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF141
	.byte	0xd
	.byte	0x64
	.long	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF142
	.byte	0xd
	.byte	0x66
	.long	0x647
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF143
	.byte	0xd
	.byte	0x6a
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF144
	.byte	0xd
	.byte	0x6b
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF145
	.byte	0xd
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF146
	.byte	0xd
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x8
	.long	.LASF147
	.byte	0xd
	.byte	0x75
	.long	0x647
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF148
	.byte	0xd
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.long	.LASF149
	.byte	0xd
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x8
	.long	.LASF150
	.byte	0xd
	.byte	0x78
	.long	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF151
	.byte	0xd
	.byte	0x79
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x8
	.long	.LASF152
	.byte	0xd
	.byte	0x7c
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF153
	.byte	0xd
	.byte	0x7d
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0x8
	.long	.LASF154
	.byte	0xd
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0x8
	.long	.LASF155
	.byte	0xd
	.byte	0x83
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x8
	.long	.LASF156
	.byte	0xd
	.byte	0x84
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0x8
	.long	.LASF157
	.byte	0xd
	.byte	0x85
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0x8
	.long	.LASF158
	.byte	0xd
	.byte	0x86
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0x8
	.long	.LASF159
	.byte	0xd
	.byte	0x87
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF160
	.byte	0xd
	.byte	0x88
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x8
	.long	.LASF161
	.byte	0xd
	.byte	0x89
	.long	0x647
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xb
	.long	0x9be
	.long	0x71
	.uleb128 0xc
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0xaf0
	.long	.LASF162
	.byte	0xa0
	.byte	0x9
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF163
	.byte	0xa
	.byte	0x15
	.long	0xaf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF164
	.byte	0xa
	.byte	0x15
	.long	0xaf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"s"
	.byte	0xa
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF165
	.byte	0xa
	.byte	0x1a
	.long	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF166
	.byte	0xa
	.byte	0x1d
	.long	0xc26
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF167
	.byte	0xa
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF168
	.byte	0xa
	.byte	0x20
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF169
	.byte	0xa
	.byte	0x21
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF170
	.byte	0xa
	.byte	0x22
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF171
	.byte	0xa
	.byte	0x23
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.long	.LASF172
	.byte	0xa
	.byte	0x25
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF173
	.byte	0xa
	.byte	0x26
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x8
	.long	.LASF174
	.byte	0xa
	.byte	0x28
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x8
	.long	.LASF175
	.byte	0xa
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF176
	.byte	0xa
	.byte	0x2b
	.long	0xc2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF177
	.byte	0xa
	.byte	0x2c
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF178
	.byte	0xa
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF179
	.byte	0xa
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF180
	.byte	0xa
	.byte	0x33
	.long	0xbd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF181
	.byte	0xa
	.byte	0x34
	.long	0xbd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF182
	.byte	0xa
	.byte	0x35
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x9be
	.uleb128 0x7
	.long	0xb81
	.long	.LASF183
	.byte	0x40
	.byte	0x8
	.byte	0x3f
	.uleb128 0x8
	.long	.LASF184
	.byte	0x8
	.byte	0x40
	.long	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF185
	.byte	0x8
	.byte	0x41
	.long	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF186
	.byte	0x8
	.byte	0x42
	.long	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF187
	.byte	0x8
	.byte	0x43
	.long	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF188
	.byte	0x8
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF189
	.byte	0x8
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF190
	.byte	0x8
	.byte	0x47
	.long	0xaf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF191
	.byte	0x8
	.byte	0x49
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF192
	.byte	0x8
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0xbaa
	.long	.LASF193
	.byte	0x48
	.byte	0x7
	.byte	0x66
	.uleb128 0x8
	.long	.LASF183
	.byte	0x8
	.byte	0x5c
	.long	0xaf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF194
	.byte	0x8
	.byte	0x60
	.long	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb81
	.uleb128 0x10
	.long	0xbd3
	.long	.LASF194
	.byte	0x8
	.byte	0x8
	.byte	0x5d
	.uleb128 0x11
	.long	.LASF195
	.byte	0x8
	.byte	0x5e
	.long	0x378
	.uleb128 0x11
	.long	.LASF196
	.byte	0x8
	.byte	0x5f
	.long	0xc6
	.byte	0x0
	.uleb128 0x7
	.long	0xc26
	.long	.LASF197
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0x8
	.long	.LASF198
	.byte	0xe
	.byte	0xf
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF199
	.byte	0xe
	.byte	0x10
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF200
	.byte	0xe
	.byte	0x11
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF201
	.byte	0xe
	.byte	0x13
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF202
	.byte	0xe
	.byte	0x15
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6f1
	.uleb128 0x6
	.byte	0x8
	.long	0x725
	.uleb128 0x12
	.byte	0x1
	.long	.LASF223
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	0xc79
	.long	.LASF203
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.value	0x1b5
	.long	0xc79
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x596
	.uleb128 0x13
	.long	0xcc4
	.long	.LASF204
	.byte	0x1
	.value	0x195
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.value	0x194
	.long	0xcc4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.value	0x196
	.long	0xc79
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.value	0x196
	.long	0xc79
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x50b
	.uleb128 0x16
	.long	0xead
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.byte	0x50
	.long	0xbaa
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"ip"
	.byte	0x1
	.byte	0x52
	.long	0xead
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF205
	.byte	0x1
	.byte	0x53
	.long	0x78
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"bad"
	.byte	0x1
	.byte	0xeb
	.quad	.L19
	.uleb128 0x1b
	.long	.LASF206
	.byte	0x1
	.byte	0xb6
	.quad	.L42
	.uleb128 0x1c
	.long	0xd59
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x18
	.string	"__v"
	.byte	0x1
	.byte	0x79
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.string	"__x"
	.byte	0x1
	.byte	0x79
	.long	0x4a
	.byte	0x0
	.uleb128 0x1c
	.long	0xd87
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x1d
	.string	"__v"
	.byte	0x1
	.byte	0x7e
	.long	0x4a
	.uleb128 0x18
	.string	"__x"
	.byte	0x1
	.byte	0x7e
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.long	0xdb5
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1d
	.string	"__v"
	.byte	0x1
	.byte	0x7f
	.long	0x4a
	.uleb128 0x18
	.string	"__x"
	.byte	0x1
	.byte	0x7f
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.long	0xe59
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.byte	0xa9
	.long	0xcc4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.long	0xeb3
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.long	0xec4
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	0xece
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	0xe35
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x21
	.long	0xed8
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.long	0xee1
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	0xeea
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	0xef5
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.long	0xefe
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	0xf09
	.quad	.L51
	.uleb128 0x22
	.long	0xf11
	.quad	.L52
	.byte	0x0
	.uleb128 0x1f
	.long	0xf48
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x23
	.long	0xf56
	.uleb128 0x20
	.long	0xf60
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xe76
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x21
	.long	0xf2e
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1c
	.long	0xe93
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x21
	.long	0xf3a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x21
	.long	0xf1e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3cf
	.uleb128 0x25
	.long	0xf48
	.long	.LASF207
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.long	0xead
	.byte	0x1
	.uleb128 0x26
	.string	"ip"
	.byte	0x1
	.byte	0xf7
	.long	0xc79
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.byte	0xf7
	.long	0xcc4
	.uleb128 0x1d
	.string	"m"
	.byte	0x1
	.byte	0xf9
	.long	0xbaa
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.byte	0xfa
	.long	0xc79
	.uleb128 0x27
	.long	.LASF205
	.byte	0x1
	.byte	0xfb
	.long	0x78
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.long	0x78
	.uleb128 0x27
	.long	.LASF90
	.byte	0x1
	.byte	0xfc
	.long	0x78
	.uleb128 0x28
	.long	.LASF208
	.byte	0x1
	.value	0x189
	.uleb128 0x28
	.long	.LASF209
	.byte	0x1
	.value	0x147
	.uleb128 0x29
	.long	0xf29
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x10f
	.long	0xbaa
	.byte	0x0
	.uleb128 0x29
	.long	0xf39
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x15f
	.long	0xbaa
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x2c
	.long	.LASF210
	.byte	0x1
	.value	0x175
	.long	0x78
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xf6d
	.long	.LASF211
	.byte	0x1
	.value	0x1a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1a7
	.long	0xc79
	.uleb128 0x2f
	.long	.LASF91
	.byte	0x1
	.value	0x1a7
	.long	0xc79
	.byte	0x0
	.uleb128 0x30
	.long	0xf9b
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.value	0x1c2
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.value	0x1c3
	.long	0xcc4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x1009
	.byte	0x1
	.long	.LASF214
	.byte	0x1
	.value	0x2af
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.value	0x2ad
	.long	0xbaa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF215
	.byte	0x1
	.value	0x2ae
	.long	0xbaa
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x2b0
	.long	0x78
	.uleb128 0x15
	.string	"ip"
	.byte	0x1
	.value	0x2b1
	.long	0xead
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.long	.LASF216
	.byte	0x1
	.value	0x2b2
	.long	0xf4
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.long	.LASF217
	.byte	0x1
	.value	0x2b3
	.long	0x78
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.long	.LASF218
	.byte	0xf
	.byte	0x91
	.long	0x372
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF219
	.byte	0xf
	.byte	0x92
	.long	0x372
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"ipq"
	.byte	0x1
	.byte	0x34
	.long	0x50b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	ipq
	.uleb128 0x35
	.long	.LASF72
	.byte	0x2
	.value	0x139
	.long	0x115
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"tt"
	.byte	0x12
	.byte	0xe
	.long	0x12b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
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
	.uleb128 0x8
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
	.uleb128 0x35
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x53
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1054
	.long	0xc32
	.string	"ip_init"
	.long	0xcca
	.string	"ip_input"
	.long	0xf6d
	.string	"ip_slowtimo"
	.long	0xf9b
	.string	"ip_stripoptions"
	.long	0x1023
	.string	"ipq"
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"size_t"
.LASF222:
	.string	"/home/remco/Projects/Argos/src"
.LASF98:
	.string	"ipq_dst"
.LASF93:
	.string	"ipq_p"
.LASF188:
	.string	"mh_flags"
.LASF87:
	.string	"ih_len"
.LASF67:
	.string	"s_addr"
.LASF116:
	.string	"ti_i"
.LASF79:
	.string	"caddr32_t"
.LASF41:
	.string	"_IO_save_end"
.LASF108:
	.string	"th_ack"
.LASF184:
	.string	"mh_next"
.LASF191:
	.string	"mh_data"
.LASF193:
	.string	"mbuf"
.LASF185:
	.string	"mh_prev"
.LASF111:
	.string	"th_flags"
.LASF172:
	.string	"so_iptos"
.LASF34:
	.string	"_IO_write_base"
.LASF102:
	.string	"ipf_prev"
.LASF50:
	.string	"_lock"
.LASF39:
	.string	"_IO_save_base"
.LASF159:
	.string	"ts_recent"
.LASF43:
	.string	"_chain"
.LASF106:
	.string	"th_dport"
.LASF197:
	.string	"sbuf"
.LASF47:
	.string	"_cur_column"
.LASF125:
	.string	"t_rxtcur"
.LASF145:
	.string	"t_idle"
.LASF182:
	.string	"extra"
.LASF171:
	.string	"so_lport"
.LASF166:
	.string	"so_ti"
.LASF129:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF203:
	.string	"ip_deq"
.LASF92:
	.string	"ipq_ttl"
.LASF14:
	.string	"__caddr_t"
.LASF16:
	.string	"u_char"
.LASF60:
	.string	"_IO_marker"
.LASF130:
	.string	"t_template"
.LASF0:
	.string	"__u_char"
.LASF187:
	.string	"mh_prevpkt"
.LASF190:
	.string	"mh_so"
.LASF110:
	.string	"th_off"
.LASF138:
	.string	"rcv_wnd"
.LASF88:
	.string	"ih_src"
.LASF89:
	.string	"ih_dst"
.LASF66:
	.string	"in_addr"
.LASF162:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF29:
	.string	"_IO_FILE"
.LASF120:
	.string	"seg_next"
.LASF167:
	.string	"so_urgc"
.LASF2:
	.string	"unsigned char"
.LASF173:
	.string	"so_emu"
.LASF81:
	.string	"ipasfragp_32"
.LASF194:
	.string	"M_dat"
.LASF170:
	.string	"so_fport"
.LASF105:
	.string	"th_sport"
.LASF21:
	.string	"u_int8_t"
.LASF137:
	.string	"snd_wnd"
.LASF104:
	.string	"tcphdr"
.LASF206:
	.string	"found"
.LASF115:
	.string	"tcpiphdr"
.LASF150:
	.string	"t_rttmin"
.LASF59:
	.string	"_IO_lock_t"
.LASF28:
	.string	"timeval"
.LASF141:
	.string	"rcv_adv"
.LASF31:
	.string	"_IO_read_ptr"
.LASF96:
	.string	"ipq_prev"
.LASF118:
	.string	"tcpiphdrp_32"
.LASF121:
	.string	"seg_prev"
.LASF63:
	.string	"_pos"
.LASF161:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF202:
	.string	"sb_data"
.LASF42:
	.string	"_markers"
.LASF77:
	.string	"ip_src"
.LASF18:
	.string	"u_int"
.LASF131:
	.string	"t_socket"
.LASF158:
	.string	"requested_s_scale"
.LASF151:
	.string	"max_sndwnd"
.LASF94:
	.string	"ipq_id"
.LASF25:
	.string	"tv_usec"
.LASF65:
	.string	"in_addr_t"
.LASF144:
	.string	"snd_ssthresh"
.LASF51:
	.string	"_offset"
.LASF95:
	.string	"ipq_next"
.LASF22:
	.string	"u_int16_t"
.LASF6:
	.string	"long unsigned int"
.LASF205:
	.string	"hlen"
.LASF123:
	.string	"t_timer"
.LASF45:
	.string	"_flags2"
.LASF33:
	.string	"_IO_read_base"
.LASF126:
	.string	"t_dupacks"
.LASF201:
	.string	"sb_rptr"
.LASF58:
	.string	"_unused2"
.LASF189:
	.string	"mh_size"
.LASF143:
	.string	"snd_cwnd"
.LASF218:
	.string	"stdin"
.LASF46:
	.string	"_old_offset"
.LASF103:
	.string	"tcp_seq"
.LASF122:
	.string	"t_state"
.LASF154:
	.string	"t_softerror"
.LASF147:
	.string	"t_rtseq"
.LASF27:
	.string	"long long int"
.LASF199:
	.string	"sb_datalen"
.LASF80:
	.string	"ipqp_32"
.LASF72:
	.string	"ip_id"
.LASF36:
	.string	"_IO_write_end"
.LASF142:
	.string	"snd_max"
.LASF132:
	.string	"snd_una"
.LASF37:
	.string	"_IO_buf_base"
.LASF152:
	.string	"t_oobflags"
.LASF128:
	.string	"t_force"
.LASF101:
	.string	"ipf_next"
.LASF61:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF109:
	.string	"th_x2"
.LASF220:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF216:
	.string	"opts"
.LASF19:
	.string	"caddr_t"
.LASF139:
	.string	"rcv_nxt"
.LASF52:
	.string	"__pad1"
.LASF53:
	.string	"__pad2"
.LASF54:
	.string	"__pad3"
.LASF55:
	.string	"__pad4"
.LASF56:
	.string	"__pad5"
.LASF62:
	.string	"_sbuf"
.LASF13:
	.string	"__suseconds_t"
.LASF215:
	.string	"mopt"
.LASF140:
	.string	"rcv_up"
.LASF127:
	.string	"t_maxseg"
.LASF30:
	.string	"_flags"
.LASF165:
	.string	"so_m"
.LASF57:
	.string	"_mode"
.LASF209:
	.string	"insert"
.LASF78:
	.string	"ip_dst"
.LASF204:
	.string	"ip_freef"
.LASF100:
	.string	"ipf_mff"
.LASF99:
	.string	"ipasfrag"
.LASF207:
	.string	"ip_reass"
.LASF163:
	.string	"so_next"
.LASF134:
	.string	"snd_up"
.LASF15:
	.string	"char"
.LASF112:
	.string	"th_win"
.LASF90:
	.string	"next"
.LASF164:
	.string	"so_prev"
.LASF75:
	.string	"ip_p"
.LASF181:
	.string	"so_snd"
.LASF183:
	.string	"m_hdr"
.LASF186:
	.string	"mh_nextpkt"
.LASF113:
	.string	"th_sum"
.LASF210:
	.string	"delta"
.LASF160:
	.string	"ts_recent_age"
.LASF155:
	.string	"snd_scale"
.LASF26:
	.string	"long long unsigned int"
.LASF153:
	.string	"t_iobc"
.LASF76:
	.string	"ip_sum"
.LASF212:
	.string	"ip_input"
.LASF10:
	.string	"__off_t"
.LASF157:
	.string	"request_r_scale"
.LASF70:
	.string	"ip_tos"
.LASF213:
	.string	"ip_slowtimo"
.LASF86:
	.string	"ih_pr"
.LASF217:
	.string	"olen"
.LASF168:
	.string	"so_faddr"
.LASF179:
	.string	"so_nqueued"
.LASF214:
	.string	"ip_stripoptions"
.LASF12:
	.string	"__time_t"
.LASF196:
	.string	"m_ext_"
.LASF40:
	.string	"_IO_backup_base"
.LASF49:
	.string	"_shortbuf"
.LASF107:
	.string	"th_seq"
.LASF71:
	.string	"ip_len"
.LASF11:
	.string	"__off64_t"
.LASF117:
	.string	"ti_t"
.LASF192:
	.string	"mh_len"
.LASF38:
	.string	"_IO_buf_end"
.LASF119:
	.string	"tcpcb"
.LASF175:
	.string	"so_state"
.LASF124:
	.string	"t_rxtshift"
.LASF82:
	.string	"ipovly"
.LASF8:
	.string	"short int"
.LASF23:
	.string	"u_int32_t"
.LASF221:
	.string	"slirp/ip_input.c"
.LASF177:
	.string	"so_expire"
.LASF149:
	.string	"t_rttvar"
.LASF48:
	.string	"_vtable_offset"
.LASF69:
	.string	"ip_v"
.LASF83:
	.string	"ih_next"
.LASF114:
	.string	"th_urp"
.LASF174:
	.string	"so_type"
.LASF84:
	.string	"ih_prev"
.LASF135:
	.string	"snd_wl1"
.LASF136:
	.string	"snd_wl2"
.LASF74:
	.string	"ip_ttl"
.LASF1:
	.string	"__u_short"
.LASF198:
	.string	"sb_cc"
.LASF32:
	.string	"_IO_read_end"
.LASF169:
	.string	"so_laddr"
.LASF64:
	.string	"uint32_t"
.LASF148:
	.string	"t_srtt"
.LASF44:
	.string	"_fileno"
.LASF180:
	.string	"so_rcv"
.LASF133:
	.string	"snd_nxt"
.LASF178:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF219:
	.string	"stdout"
.LASF208:
	.string	"dropfrag"
.LASF73:
	.string	"ip_off"
.LASF35:
	.string	"_IO_write_ptr"
.LASF85:
	.string	"ih_x1"
.LASF176:
	.string	"so_tcpcb"
.LASF17:
	.string	"u_short"
.LASF68:
	.string	"ip_hl"
.LASF211:
	.string	"ip_enq"
.LASF200:
	.string	"sb_wptr"
.LASF156:
	.string	"rcv_scale"
.LASF223:
	.string	"ip_init"
.LASF195:
	.string	"m_dat_"
.LASF91:
	.string	"prev"
.LASF24:
	.string	"tv_sec"
.LASF146:
	.string	"t_rtt"
.LASF97:
	.string	"ipq_src"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
