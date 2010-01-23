	.file	"tcp_input.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl tcp_last_so
	.data
	.align 8
	.type	tcp_last_so, @object
	.size	tcp_last_so, 8
tcp_last_so:
	.quad	tcb
	.text
	.p2align 4,,15
	.type	tcp_reass, @function
tcp_reass:
.LFB47:
	.file 1 "slirp/tcp_input.c"
	.loc 1 122 0
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	movq	%rdi, %r13
	pushq	%r12
.LCFI3:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI4:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI5:
	subq	$8, %rsp
.LCFI6:
	.loc 1 131 0
	testq	%rsi, %rsi
	.loc 1 124 0
	movq	72(%rdi), %r15
	.loc 1 131 0
	je	.L3
	.loc 1 137 0
	mov	(%rdi), %ebx
	cmpq	%rdi, %rbx
	je	.L5
	movl	24(%rsi), %edx
	.p2align 4,,7
.L8:
	.loc 1 139 0
	movl	24(%rbx), %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jg	.L5
	.loc 1 137 0
	mov	(%rbx), %ebx
	cmpq	%r13, %rbx
	jne	.L8
.L5:
	.loc 1 147 0
	mov	4(%rbx), %r14d
	cmpq	%r13, %r14
	je	.L15
.LBB2:
	.loc 1 151 0
	movzwl	10(%r14), %ebx
	addl	24(%r14), %ebx
	subl	24(%rbp), %ebx
	.loc 1 152 0
	testl	%ebx, %ebx
	jle	.L10
	.loc 1 153 0
	movzwl	10(%rbp), %eax
	cmpl	%ebx, %eax
	jle	.L38
	.loc 1 165 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	m_adj
	.loc 1 166 0
	subw	%bx, 10(%rbp)
	.loc 1 167 0
	addl	%ebx, 24(%rbp)
.L10:
	.loc 1 169 0
	mov	(%r14), %ebx
.L15:
.LBE2:
	.loc 1 173 0
	movl	%r12d, 20(%rbp)
	jmp	.L36
	.p2align 4,,7
.L39:
.LBB3:
	.loc 1 180 0
	movzwl	10(%rbp), %esi
	movl	24(%rbx), %ecx
	addl	24(%rbp), %esi
	subl	%ecx, %esi
	.loc 1 181 0
	testl	%esi, %esi
	jle	.L17
	.loc 1 183 0
	movzwl	10(%rbx), %edx
	movzwl	%dx, %eax
	cmpl	%esi, %eax
	jg	.L35
	.loc 1 189 0
	mov	(%rbx), %ebx
	.loc 1 190 0
	mov	4(%rbx), %edi
	mov	20(%rdi), %r12d
	.loc 1 191 0
	call	remque_32
	.loc 1 192 0
	movq	%r12, %rdi
	call	m_free
.L36:
.LBE3:
	cmpq	%r13, %rbx
	jne	.L39
.L17:
	.loc 1 198 0
	mov	4(%rbx), %esi
	movq	%rbp, %rdi
	call	insque_32
.L3:
	.loc 1 206 0
	xorl	%eax, %eax
	.loc 1 205 0
	cmpw	$3, 8(%r13)
	jle	.L1
	.loc 1 207 0
	mov	(%r13), %ebp
	.loc 1 208 0
	cmpq	%r13, %rbp
	je	.L23
	movl	112(%r13), %edx
	cmpl	%edx, 24(%rbp)
	je	.L25
.L23:
	.loc 1 209 0
	xorl	%eax, %eax
.L1:
	.loc 1 230 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L41:
	.loc 1 223 0
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	tcp_emu
	testl	%eax, %eax
	jne	.L30
	.p2align 4,,7
.L27:
	.loc 1 227 0
	cmpq	%r13, %rbp
	je	.L26
	movl	112(%r13), %edx
	cmpl	%edx, 24(%rbp)
	.p2align 4,,3
	jne	.L26
.L25:
	.loc 1 213 0
	movzwl	10(%rbp), %eax
	.loc 1 215 0
	movq	%rbp, %rdi
	.loc 1 213 0
	addl	%eax, %edx
	movl	%edx, 112(%r13)
	.loc 1 214 0
	movzbl	33(%rbp), %ebx
	.loc 1 215 0
	call	remque_32
	.loc 1 216 0
	mov	20(%rbp), %r12d
	.loc 1 217 0
	mov	(%rbp), %ebp
	.loc 1 214 0
	andl	$1, %ebx
	.loc 1 219 0
	testb	$16, 60(%r15)
	jne	.L40
	.loc 1 222 0
	cmpb	$0, 57(%r15)
	jne	.L41
.L30:
	.loc 1 225 0
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	sbappend
	.p2align 4,,2
	jmp	.L27
.L40:
	.loc 1 220 0
	movq	%r12, %rdi
	call	m_free
	.p2align 4,,6
	jmp	.L27
.L38:
.LBB4:
	.loc 1 156 0
	movq	%r12, %rdi
	call	m_free
	.p2align 4,,6
	jmp	.L3
.L35:
.LBE4:
.LBB5:
	.loc 1 186 0
	mov	20(%rbx), %edi
	.loc 1 184 0
	leal	(%rcx,%rsi), %eax
	.loc 1 185 0
	subw	%si, %dx
	movw	%dx, 10(%rbx)
	.loc 1 184 0
	movl	%eax, 24(%rbx)
	.loc 1 186 0
	call	m_adj
.LBE5:
	.loc 1 198 0
	mov	4(%rbx), %esi
	movq	%rbp, %rdi
	call	insque_32
	jmp	.L3
.L26:
	.loc 1 230 0
	addq	$8, %rsp
	.loc 1 229 0
	movl	%ebx, %eax
	.loc 1 230 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE47:
	.size	tcp_reass, .-tcp_reass
	.p2align 4,,15
	.type	tcp_xmit_timer, @function
tcp_xmit_timer:
.LFB50:
	.loc 1 1607 0
	.loc 1 1615 0
	movzwl	148(%rdi), %edx
	testw	%dx, %dx
	je	.L44
	.loc 1 1623 0
	movl	%edx, %eax
	sarw	$3, %ax
	subw	%ax, %si
	movl	%esi, %eax
	decl	%eax
	.loc 1 1624 0
	leal	(%rdx,%rax), %ecx
	.loc 1 1625 0
	movl	$1, %edx
	testw	%cx, %cx
	cmovg	%ecx, %edx
	.loc 1 1638 0
	movzwl	150(%rdi), %ecx
	.loc 1 1625 0
	movw	%dx, 148(%rdi)
	.loc 1 1637 0
	movl	%eax, %edx
	sarw	$15, %dx
	xorl	%edx, %eax
	subw	%dx, %ax
	.loc 1 1638 0
	movl	%ecx, %edx
	sarw	$2, %dx
	subw	%dx, %ax
	.loc 1 1639 0
	leal	(%rcx,%rax), %eax
	testw	%ax, %ax
	jg	.L53
	.loc 1 1640 0
	movw	$1, 150(%rdi)
	jmp	.L48
	.p2align 4,,7
.L44:
	.loc 1 1647 0
	leal	0(,%rsi,8), %eax
	movw	%ax, 148(%rdi)
	.loc 1 1648 0
	leal	(%rsi,%rsi), %eax
.L53:
	movw	%ax, 150(%rdi)
.L48:
	.loc 1 1664 0
	movzwl	148(%rdi), %edx
	movzwl	152(%rdi), %eax
	.loc 1 1650 0
	movw	$0, 142(%rdi)
	.loc 1 1651 0
	movw	$0, 18(%rdi)
	.loc 1 1664 0
	sarw	$3, %dx
	addw	150(%rdi), %dx
	cmpw	%ax, %dx
	jl	.L55
	movl	$24, %eax
	cmpw	$25, %dx
	cmovl	%edx, %eax
.L55:
	movw	%ax, 20(%rdi)
	.loc 1 1674 0
	movw	$0, 162(%rdi)
	ret
.LFE50:
	.size	tcp_xmit_timer, .-tcp_xmit_timer
	.p2align 4,,15
.globl tcp_mss
	.type	tcp_mss, @function
tcp_mss:
.LFB51:
	.loc 1 1697 0
	pushq	%rbp
.LCFI7:
	pushq	%rbx
.LCFI8:
	.loc 1 1705 0
	movl	$1460, %ebx
	.loc 1 1697 0
	subq	$8, %rsp
.LCFI9:
	.loc 1 1706 0
	testl	%esi, %esi
	.loc 1 1698 0
	movq	72(%rdi), %rbp
	.loc 1 1706 0
	je	.L59
	.loc 1 1707 0
	cmpl	%esi, %ebx
	ja	.L71
	.p2align 4,,7
.L59:
	.loc 1 1709 0
	movzwl	24(%rdi), %eax
	cmpl	%ebx, %eax
	setg	%dl
	testl	%esi, %esi
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L60
	.loc 1 1710 0
	movw	%bx, 24(%rdi)
.L60:
	.loc 1 1714 0
	movl	$8192, %eax
	.loc 1 1712 0
	movl	%ebx, 132(%rdi)
	.loc 1 1714 0
	movl	$8192, %esi
	cltd
	idivl	%ebx
	testl	%edx, %edx
	je	.L64
	movl	%ebx, %eax
	subl	%edx, %eax
	leal	8192(%rax), %esi
.L64:
	leaq	120(%rbp), %rdi
	call	sbreserve
	.loc 1 1717 0
	movl	$8192, %eax
	movl	$8192, %esi
	cltd
	idivl	%ebx
	testl	%edx, %edx
	je	.L68
	movl	%ebx, %eax
	subl	%edx, %eax
	leal	8192(%rax), %esi
.L68:
	leaq	88(%rbp), %rdi
	call	sbreserve
	.loc 1 1724 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L71:
	.loc 1 1707 0
	movl	%esi, %ebx
	.loc 1 1708 0
	cmpl	$31, %esi
	movl	$32, %eax
	cmovle	%eax, %ebx
	jmp	.L59
.LFE51:
	.size	tcp_mss, .-tcp_mss
	.p2align 4,,15
	.type	tcp_dooptions, @function
tcp_dooptions:
.LFB49:
	.loc 1 1496 0
	pushq	%r14
.LCFI10:
	movq	%rdi, %r14
	pushq	%r13
.LCFI11:
	movq	%rcx, %r13
	pushq	%r12
.LCFI12:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI13:
	pushq	%rbx
.LCFI14:
	movq	%rsi, %rbx
	jmp	.L89
	.p2align 4,,7
.L75:
	.loc 1 1503 0
	movslq	%ebp,%rax
	subl	%ebp, %r12d
	addq	%rax, %rbx
.L89:
	testl	%r12d, %r12d
	jle	.L74
	.loc 1 1504 0
	movzbl	(%rbx), %eax
	.loc 1 1505 0
	testl	%eax, %eax
	je	.L74
	.loc 1 1507 0
	cmpl	$1, %eax
	.loc 1 1508 0
	movl	$1, %ebp
	.loc 1 1507 0
	je	.L75
	.loc 1 1510 0
	movzbl	1(%rbx), %ebp
	.loc 1 1511 0
	testl	%ebp, %ebp
	jle	.L74
	.loc 1 1514 0
	cmpl	$2, %eax
	jne	.L75
	.loc 1 1520 0
	cmpl	$4, %ebp
	.p2align 4,,3
	jne	.L75
	.loc 1 1522 0
	testb	$2, 33(%r13)
	.p2align 4,,5
	je	.L75
	.loc 1 1524 0
	movzwl	2(%rbx), %esi
	.loc 1 1526 0
	movq	%r14, %rdi
.LBB6:
	.loc 1 1525 0
#APP
	rorw $8, %si
#NO_APP
.LBE6:
	.loc 1 1526 0
	movzwl	%si, %esi
	call	tcp_mss
	jmp	.L75
	.p2align 4,,7
.L74:
	.loc 1 1503 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE49:
	.size	tcp_dooptions, .-tcp_dooptions
	.p2align 4,,15
.globl tcp_input
	.type	tcp_input, @function
tcp_input:
.LFB48:
	.loc 1 241 0
	pushq	%r15
.LCFI15:
	movq	%rdi, %r15
	pushq	%r14
.LCFI16:
	pushq	%r13
.LCFI17:
	.loc 1 247 0
	xorl	%r13d, %r13d
	.loc 1 241 0
	pushq	%r12
.LCFI18:
	pushq	%rbp
.LCFI19:
	pushq	%rbx
.LCFI20:
	subq	$88, %rsp
.LCFI21:
	.loc 1 264 0
	testq	%rdi, %rdi
	.loc 1 244 0
	movq	$0, 32(%rsp)
	.loc 1 245 0
	movl	$0, 28(%rsp)
	.loc 1 250 0
	movl	$0, 20(%rsp)
	.loc 1 252 0
	movl	$0, 16(%rsp)
	.loc 1 264 0
	je	.L338
	.loc 1 284 0
	movq	48(%rdi), %r12
	.loc 1 285 0
	cmpl	$20, %esi
	.loc 1 284 0
	movq	%r12, %rax
	.loc 1 285 0
	ja	.L364
.L94:
	.loc 1 296 0
	movq	%rax, 40(%rsp)
	.loc 1 297 0
	movq	%rax, %rdx
	movq	(%rax), %rax
	.loc 1 311 0
	movq	%r15, %rdi
	.loc 1 297 0
	movq	%rax, 48(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 56(%rsp)
	movl	16(%rdx), %eax
	.loc 1 298 0
	addw	%si, 50(%rsp)
	.loc 1 297 0
	movl	%eax, 64(%rsp)
	.loc 1 303 0
	movzwl	2(%r12), %ebx
	.loc 1 304 0
	movl	$0, 4(%r12)
	movl	$0, (%r12)
	.loc 1 305 0
	movb	$0, 8(%r12)
	.loc 1 307 0
	leal	20(%rbx), %esi
.LBB7:
	.loc 1 306 0
	movl	%ebx, %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE7:
	movw	%ax, 10(%r12)
	.loc 1 311 0
	call	cksum
	testl	%eax, %eax
	jne	.L99
	.loc 1 320 0
	movzbl	32(%r12), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$2, %eax
	.loc 1 321 0
	cmpl	$19, %eax
	.loc 1 320 0
	movl	%eax, 24(%rsp)
	.loc 1 321 0
	setbe	%dl
	cmpl	%ebx, %eax
	setg	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L99
	.loc 1 325 0
	subl	24(%rsp), %ebx
	.loc 1 326 0
	movw	%bx, 10(%r12)
	.loc 1 327 0
	cmpl	$20, 24(%rsp)
	ja	.L365
.L102:
.L111:
.LBB8:
	.loc 1 355 0
	movl	24(%r12), %eax
.LBE8:
	.loc 1 350 0
	movzbl	33(%r12), %r14d
	.loc 1 355 0
#APP
	bswap %eax
#NO_APP
	movl	%eax, 24(%r12)
.LBB9:
	.loc 1 356 0
	movl	28(%r12), %eax
.LBE9:
#APP
	bswap %eax
#NO_APP
	movl	%eax, 28(%r12)
.LBB10:
	.loc 1 357 0
	movzwl	34(%r12), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE10:
	movw	%ax, 34(%r12)
.LBB11:
	.loc 1 358 0
	movzwl	38(%r12), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE11:
	movw	%ax, 38(%r12)
	.loc 1 363 0
	movslq	24(%rsp),%rdx
	movq	%rdx, (%rsp)
	movq	%rdx, %rax
	addq	48(%r15), %rax
	addq	$20, %rax
	movq	%rax, 48(%r15)
	.loc 1 364 0
	movl	56(%r15), %eax
	subl	24(%rsp), %eax
	subl	$20, %eax
	movl	%eax, 56(%r15)
	.loc 1 370 0
	movq	tcp_last_so(%rip), %rbp
	.loc 1 371 0
	movzwl	22(%r12), %r8d
	cmpw	%r8w, 52(%rbp)
	je	.L366
	.p2align 4,,7
.L341:
	movzwl	20(%r12), %eax
.L342:
	movl	12(%r12), %esi
.L343:
	movl	16(%r12), %ecx
	.loc 1 375 0
	movzwl	%ax, %edx
	movzwl	%r8w, %r8d
	movl	$tcb, %edi
	call	solookup
	.loc 1 377 0
	testq	%rax, %rax
	.loc 1 375 0
	movq	%rax, %rbp
	.loc 1 377 0
	je	.L339
.L369:
	.loc 1 378 0
	movq	%rax, tcp_last_so(%rip)
.L112:
	.loc 1 395 0
	testq	%rbp, %rbp
	je	.L339
.L116:
	.loc 1 429 0
	testb	$2, 60(%rbp)
	jne	.L99
	.loc 1 432 0
	movq	64(%rbp), %r13
	.loc 1 435 0
	testq	%r13, %r13
	je	.L118
	.loc 1 437 0
	movzwl	8(%r13), %r8d
	testw	%r8w, %r8w
	je	.L99
	.loc 1 445 0
	movzwq	34(%r12), %rcx
	movq	%rcx, 8(%rsp)
	.loc 1 451 0
	movw	$0, 140(%r13)
	.loc 1 455 0
	movw	$14400, 14(%r13)
	.loc 1 461 0
	cmpq	$0, 32(%rsp)
	je	.L127
	cmpw	$1, %r8w
	je	.L127
	.loc 1 462 0
	movl	28(%rsp), %edx
	movq	32(%rsp), %rsi
	movq	%r12, %rcx
	movq	%r13, %rdi
	call	tcp_dooptions
	movzwl	8(%r13), %r8d
.L127:
	.loc 1 484 0
	cmpw	$4, %r8w
	je	.L367
.L345:
	movl	112(%r13), %edi
.L353:
	movl	92(%rbp), %ecx
	movl	88(%rbp), %edx
.L128:
.LBB12:
	.loc 1 601 0
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	$0, %edx
	cmovs	%edx, %eax
	.loc 1 602 0
	movl	124(%r13), %edx
	subl	%edi, %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 108(%r13)
.LBE12:
	.loc 1 605 0
	movswl	%r8w,%eax
	cmpl	$1, %eax
	je	.L150
	cmpl	$2, %eax
	je	.L187
	.loc 1 848 0
	movl	24(%r12), %ecx
	movl	%edi, %ebx
	subl	%ecx, %ebx
	.loc 1 849 0
	testl	%ebx, %ebx
	jle	.L203
	.loc 1 850 0
	testb	$2, %r14b
	je	.L204
	.loc 1 853 0
	movzwl	38(%r12), %eax
	.loc 1 852 0
	incl	%ecx
	.loc 1 851 0
	andl	$-3, %r14d
	.loc 1 852 0
	movl	%ecx, 24(%r12)
	.loc 1 853 0
	cmpw	$1, %ax
	jbe	.L205
	.loc 1 854 0
	decl	%eax
	movw	%ax, 38(%r12)
.L206:
	.loc 1 857 0
	decl	%ebx
.L204:
	.loc 1 862 0
	movzwl	10(%r12), %eax
	cmpl	%ebx, %eax
	jl	.L208
	je	.L368
.L211:
	.loc 1 883 0
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	m_adj
	.loc 1 886 0
	movzwl	38(%r12), %edx
	.loc 1 884 0
	movl	24(%r12), %ecx
	.loc 1 885 0
	subw	%bx, 10(%r12)
	.loc 1 884 0
	addl	%ebx, %ecx
	.loc 1 886 0
	movzwl	%dx, %eax
	.loc 1 884 0
	movl	%ecx, 24(%r12)
	.loc 1 886 0
	cmpl	%ebx, %eax
	jle	.L214
	.loc 1 887 0
	subw	%bx, %dx
	movw	%dx, 38(%r12)
.L203:
	.loc 1 897 0
	testb	$1, 60(%rbp)
	je	.L355
	cmpw	$5, 8(%r13)
	jle	.L355
	movzwl	10(%r12), %eax
	testw	%ax, %ax
	jne	.L361
	.p2align 4,,7
.L216:
	.loc 1 908 0
	movl	112(%r13), %edi
	movl	108(%r13), %esi
	movzwl	%ax, %edx
	leal	(%rcx,%rdx), %ebx
	leal	(%rdi,%rsi), %eax
	subl	%eax, %ebx
	.loc 1 909 0
	testl	%ebx, %ebx
	jle	.L218
	.loc 1 911 0
	cmpl	%ebx, %edx
	jg	.L227
	.loc 1 919 0
	testb	$2, %r14b
	je	.L222
	cmpw	$10, 8(%r13)
	.p2align 4,,5
	jne	.L222
	movl	%ecx, %eax
	subl	%edi, %eax
	testl	%eax, %eax
	jle	.L222
	.loc 1 922 0
	addl	$128000, %edi
	movl	%edi, 16(%rsp)
	.loc 1 923 0
	movq	%r13, %rdi
	call	tcp_close
	.loc 1 370 0
	movq	tcp_last_so(%rip), %rbp
	.loc 1 371 0
	movzwl	22(%r12), %r8d
	.loc 1 923 0
	movq	%rax, %r13
	.loc 1 371 0
	cmpw	%r8w, 52(%rbp)
	jne	.L341
.L366:
	movzwl	20(%r12), %eax
	cmpw	%ax, 54(%rbp)
	jne	.L342
	movl	12(%r12), %esi
	cmpl	%esi, 48(%rbp)
	jne	.L343
	movl	16(%r12), %ecx
	cmpl	%ecx, 44(%rbp)
	je	.L112
	.loc 1 375 0
	movzwl	%ax, %edx
	movzwl	%r8w, %r8d
	movl	$tcb, %edi
	call	solookup
	.loc 1 377 0
	testq	%rax, %rax
	.loc 1 375 0
	movq	%rax, %rbp
	.loc 1 377 0
	jne	.L369
	.p2align 4,,7
.L339:
	.loc 1 396 0
	movl	%r14d, %eax
	andl	$55, %eax
	cmpl	$2, %eax
	jne	.L118
	.loc 1 399 0
	call	socreate
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L118
	.loc 1 401 0
	movq	%rax, %rdi
	call	tcp_attach
	testl	%eax, %eax
	js	.L370
	.loc 1 406 0
	leaq	120(%rbp), %rdi
	movl	$8192, %esi
	call	sbreserve
	.loc 1 407 0
	leaq	88(%rbp), %rdi
	movl	$8192, %esi
	call	sbreserve
	.loc 1 412 0
	movl	12(%r12), %eax
	.loc 1 417 0
	movq	%rbp, %rdi
	.loc 1 412 0
	movl	%eax, 48(%rbp)
	.loc 1 413 0
	movzwl	20(%r12), %eax
	movw	%ax, 54(%rbp)
	.loc 1 414 0
	movl	16(%r12), %eax
	movl	%eax, 44(%rbp)
	.loc 1 415 0
	movzwl	22(%r12), %eax
	movw	%ax, 52(%rbp)
	.loc 1 417 0
	call	tcp_tos
	testb	%al, %al
	movb	%al, 56(%rbp)
	jne	.L121
	.loc 1 418 0
	movzbl	1(%r12), %eax
	movb	%al, 56(%rbp)
.L121:
	.loc 1 420 0
	movq	64(%rbp), %r13
	.loc 1 421 0
	movw	$1, 8(%r13)
	jmp	.L116
	.p2align 4,,7
.L367:
	.loc 1 484 0
	movl	%r14d, %eax
	andl	$55, %eax
	cmpl	$16, %eax
	jne	.L345
	movl	112(%r13), %edi
	cmpl	%edi, 24(%r12)
	sete	%dl
	xorl	%eax, %eax
	cmpq	$0, 8(%rsp)
	setne	%al
	testl	%edx, %eax
	je	.L353
	movl	104(%r13), %edx
	mov	%edx, %eax
	cmpq	8(%rsp), %rax
	jne	.L353
	movl	84(%r13), %ecx
	cmpl	128(%r13), %ecx
	jne	.L353
	.loc 1 500 0
	movzwl	10(%r12), %esi
	testw	%si, %si
	jne	.L129
	.loc 1 501 0
	movl	28(%r12), %esi
	movl	80(%r13), %r9d
	movl	%esi, %eax
	subl	%r9d, %eax
	testl	%eax, %eax
	jle	.L353
	movl	%esi, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jg	.L353
	cmpl	%edx, 132(%r13)
	jb	.L353
	.loc 1 511 0
	movzwl	142(%r13), %edx
	testw	%dx, %dx
	je	.L132
	movl	%esi, %eax
	subl	144(%r13), %eax
	testl	%eax, %eax
	jle	.L132
	.loc 1 513 0
	movswl	%dx,%esi
	movq	%r13, %rdi
	call	tcp_xmit_timer
	movl	28(%r12), %esi
	movl	80(%r13), %r9d
.L132:
	.loc 1 517 0
	leaq	120(%rbp), %rdi
	.loc 1 514 0
	subl	%r9d, %esi
	.loc 1 517 0
	call	sbdrop
	.loc 1 518 0
	movl	28(%r12), %r9d
	.loc 1 519 0
	movq	%r15, %rdi
	.loc 1 518 0
	movl	%r9d, 80(%r13)
	.loc 1 519 0
	call	m_free
	.loc 1 530 0
	movl	128(%r13), %eax
	cmpl	%eax, 80(%r13)
	je	.L371
	.loc 1 532 0
	cmpw	$0, 12(%r13)
	jne	.L136
	.loc 1 533 0
	movzwl	20(%r13), %eax
	movw	%ax, 10(%r13)
.L136:
	.loc 1 547 0
	movl	120(%rbp), %ecx
	testl	%ecx, %ecx
.L362:
	.loc 1 1452 0
	je	.L90
	jmp	.L360
.L365:
	.loc 1 328 0
	movl	24(%rsp), %ecx
	subl	$20, %ecx
	movl	%ecx, 28(%rsp)
	.loc 1 329 0
	movq	48(%r15), %rax
	addq	$40, %rax
	movq	%rax, 32(%rsp)
	jmp	.L102
	.p2align 4,,7
.L355:
	movzwl	10(%r12), %eax
	jmp	.L216
	.p2align 4,,7
.L368:
	.loc 1 862 0
	testb	$1, %r14b
	jne	.L211
	.p2align 4,,7
.L208:
	.loc 1 875 0
	orw	$1, 28(%r13)
	.loc 1 869 0
	andl	$-2, %r14d
	.loc 1 876 0
	movzwl	10(%r12), %ebx
	jmp	.L211
	.p2align 4,,7
.L214:
	.loc 1 889 0
	andl	$-33, %r14d
	.loc 1 890 0
	movw	$0, 38(%r12)
	jmp	.L203
	.p2align 4,,7
.L205:
	.loc 1 856 0
	andl	$-33, %r14d
	jmp	.L206
.L373:
	.loc 1 934 0
	orw	$1, 28(%r13)
.L227:
	.loc 1 940 0
	movl	%ebx, %esi
	movq	%r15, %rdi
	.loc 1 942 0
	andl	$-10, %r14d
	.loc 1 940 0
	negl	%esi
	call	m_adj
	.loc 1 941 0
	subw	%bx, 10(%r12)
.L218:
	.loc 1 967 0
	testb	$4, %r14b
	je	.L229
	movswl	8(%r13),%eax
	cmpl	$10, %eax
	ja	.L229
	movslq	%eax,%rcx
	movl	$1, %eax
	salq	%cl, %rax
	testl	$624, %eax 
	jne	.L232
	testl	$1408, %eax 
	jne	.L358
	testb	$8, %al
	je	.L229
.L232:
	.loc 1 979 0
	movw	$0, 8(%r13)
.L358:
	.loc 1 1260 0
	movq	%r13, %rdi
	call	tcp_close
.L99:
	.loc 1 1485 0
	movq	%r15, %rdi
	call	m_free
.L90:
	.loc 1 1488 0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L364:
	.loc 1 286 0
	xorl	%esi, %esi
	call	ip_stripoptions
	movq	48(%r15), %rax
	.loc 1 287 0
	movl	$20, %esi
	jmp	.L94
.L361:
	.loc 1 899 0
	movq	%r13, %rdi
	call	tcp_close
.L357:
	.loc 1 996 0
	movq	%rax, %r13
.L118:
	.loc 1 1471 0
	testb	$16, %r14b
	jne	.L372
	.loc 1 1474 0
	andl	$2, %r14d
	je	.L337
	incw	10(%r12)
.L337:
	.loc 1 1475 0
	movzwl	10(%r12), %ecx
	movl	$20, %r9d
	xorl	%r8d, %r8d
	addl	24(%r12), %ecx
.L359:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	tcp_respond
	.loc 1 1488 0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L222:
	.loc 1 933 0
	testl	%esi, %esi
	jne	.L226
	cmpl	%edi, %ecx
	je	.L373
.L226:
	.loc 1 1462 0
	andl	$4, %r14d
	.p2align 4,,5
	jne	.L99
	.loc 1 1464 0
	movq	%r15, %rdi
	.p2align 4,,5
	call	m_free
.L363:
	.loc 1 1465 0
	orw	$1, 28(%r13)
.L360:
	.loc 1 1466 0
	movq	%r13, %rdi
	call	tcp_output
	.loc 1 1488 0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L229:
	.loc 1 995 0
	testb	$2, %r14b
	jne	.L374
	.loc 1 1003 0
	testb	$16, %r14b
	je	.L99
	.loc 1 1008 0
	movswl	8(%r13),%eax
	cmpl	$3, %eax
	.p2align 4,,3
	je	.L244
	.p2align 4,,5
	jl	.L202
	cmpl	$10, %eax
	.p2align 4,,5
	jg	.L202
	.loc 1 1074 0
	movl	28(%r12), %ecx
	movl	80(%r13), %esi
	movl	%ecx, %eax
	subl	%esi, %eax
	testl	%eax, %eax
	jle	.L375
.L254:
	.loc 1 1139 0
	cmpw	$3, 22(%r13)
	jle	.L275
	movl	136(%r13), %eax
	cmpl	%eax, 132(%r13)
	jbe	.L275
	.loc 1 1141 0
	movl	%eax, 132(%r13)
.L275:
	.loc 1 1142 0
	movw	$0, 22(%r13)
	.loc 1 1143 0
	movl	28(%r12), %esi
	movl	128(%r13), %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jg	.L226
	.loc 1 1164 0
	movzwl	142(%r13), %edx
	.loc 1 1147 0
	movl	%esi, %ebx
	subl	80(%r13), %ebx
	.loc 1 1164 0
	testw	%dx, %dx
	je	.L280
	movl	%esi, %eax
	subl	144(%r13), %eax
	testl	%eax, %eax
	jle	.L280
	.loc 1 1165 0
	movswl	%dx,%esi
	movq	%r13, %rdi
	call	tcp_xmit_timer
	movl	28(%r12), %esi
	movl	128(%r13), %ecx
.L280:
	.loc 1 1173 0
	cmpl	%ecx, %esi
	je	.L376
	.loc 1 1176 0
	cmpw	$0, 12(%r13)
	jne	.L282
	.loc 1 1177 0
	movzwl	20(%r13), %eax
	movw	%ax, 10(%r13)
.L282:
.LBB13:
	.loc 1 1186 0
	movl	132(%r13), %esi
	.loc 1 1189 0
	cmpl	%esi, 136(%r13)
	.loc 1 1187 0
	movzwl	24(%r13), %eax
	.loc 1 1189 0
	jae	.L284
	.loc 1 1190 0
	imull	%eax, %eax
	xorl	%edx, %edx
	divl	%esi
.L284:
	.loc 1 1191 0
	movzbl	164(%r13), %ecx
	leal	(%rsi,%rax), %eax
	movl	$65535, %edx
	sall	%cl, %edx
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	movl	%eax, 132(%r13)
.LBE13:
	.loc 1 1193 0
	movl	120(%rbp), %eax
	cmpl	%eax, %ebx
	jbe	.L286
	.loc 1 1194 0
	subl	%eax, 104(%r13)
	.loc 1 1195 0
	leaq	120(%rbp), %rdi
	movl	120(%rbp), %esi
	call	sbdrop
	.loc 1 1196 0
	movl	$1, %edx
.L287:
	.loc 1 1209 0
	movl	28(%r12), %eax
	.loc 1 1210 0
	cmpl	%eax, 84(%r13)
	.loc 1 1209 0
	movl	%eax, 80(%r13)
	.loc 1 1210 0
	js	.L377
.L288:
	.loc 1 1213 0
	movswl	8(%r13),%eax
	cmpl	$7, %eax
	je	.L293
	jg	.L298
	cmpl	$6, %eax
	.p2align 4,,5
	je	.L290
.L202:
	.loc 1 1281 0
	testb	$16, %r14b
	.p2align 4,,7
	je	.L299
	movl	92(%r13), %edx
	movl	24(%r12), %eax
	cmpl	%eax, %edx
	js	.L300
	cmpl	%eax, %edx
	je	.L378
.L299:
	.loc 1 1300 0
	testb	$32, %r14b
	je	.L304
	movzwl	38(%r12), %eax
	testw	%ax, %ax
	.p2align 4,,3
	je	.L304
	cmpw	$9, 8(%r13)
	.p2align 4,,3
	jg	.L304
	.loc 1 1308 0
	movzwl	%ax, %edx
	movl	%edx, %eax
	addl	88(%rbp), %eax
	cmpl	92(%rbp), %eax
	ja	.L379
	.loc 1 1327 0
	addl	24(%r12), %edx
	movl	%edx, %eax
	subl	116(%r13), %eax
	testl	%eax, %eax
	jle	.L306
	.loc 1 1328 0
	movl	%edx, 116(%r13)
	.loc 1 1329 0
	subl	112(%r13), %edx
	addl	88(%rbp), %edx
	movl	%edx, 40(%rbp)
	.loc 1 1331 0
	movzwl	38(%r12), %eax
	addl	24(%r12), %eax
	movl	%eax, 116(%r13)
.L306:
	.loc 1 1352 0
	cmpw	$0, 10(%r12)
	jne	.L311
	testb	$1, %r14b
	je	.L310
.L311:
	movzwl	8(%r13), %eax
	cmpw	$9, %ax
	jg	.L310
	.loc 1 1354 0
	movl	24(%r12), %edx
	cmpl	112(%r13), %edx
	jne	.L312
	cmpl	%r13d, (%r13)
	je	.L380
.L312:
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	tcp_reass
	orw	$1, 28(%r13)
	movl	%eax, %r14d
.L319:
	.loc 1 1370 0
	andl	$1, %r14d
	je	.L320
	.loc 1 1371 0
	movzwl	8(%r13), %r8d
	cmpw	$9, %r8w
	jle	.L381
.L321:
	.loc 1 1387 0
	movswl	%r8w,%eax
	subl	$3, %eax
	cmpl	$7, %eax
	ja	.L320
	mov	%eax, %eax
	jmp	*.L330(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L330:
	.quad	.L324
	.quad	.L324
	.quad	.L320
	.quad	.L327
	.quad	.L320
	.quad	.L320
	.quad	.L328
	.quad	.L329
	.text
.L338:
.L92:
	.loc 1 271 0
	movq	32(%rdx), %r12
	.loc 1 269 0
	movq	24(%rdx), %r15
	.loc 1 265 0
	movq	%rdx, %rbp
	.loc 1 270 0
	movq	$0, 24(%rdx)
	.loc 1 268 0
	movq	64(%rdx), %r13
	.loc 1 272 0
	movzwq	34(%r12), %rax
	movq	%rax, 8(%rsp)
	.loc 1 707 0
	testb	$1, 60(%rdx)
	.loc 1 273 0
	movzbl	33(%r12), %r14d
	.loc 1 707 0
	jne	.L361
.L166:
	.loc 1 712 0
	movq	%r13, %rdi
	call	tcp_template
	.loc 1 714 0
	cmpq	$0, 32(%rsp)
	je	.L182
	.loc 1 715 0
	movl	28(%rsp), %edx
	movq	32(%rsp), %rsi
	movq	%r12, %rcx
	movq	%r13, %rdi
	call	tcp_dooptions
.L182:
	.loc 1 719 0
	movl	16(%rsp), %edx
	testl	%edx, %edx
	jne	.L382
	.loc 1 722 0
	movl	tcp_iss(%rip), %eax
	movl	%eax, 100(%r13)
.L184:
	.loc 1 723 0
	addl	$64000, tcp_iss(%rip)
	.loc 1 724 0
	movl	24(%r12), %edx
	.loc 1 725 0
	movl	100(%r13), %eax
	.loc 1 727 0
	orw	$1, 28(%r13)
	.loc 1 728 0
	movw	$3, 8(%r13)
	.loc 1 729 0
	movw	$150, 14(%r13)
	.loc 1 726 0
	leal	1(%rdx), %edi
	.loc 1 724 0
	movl	%edx, 120(%r13)
	.loc 1 725 0
	movl	%eax, 88(%r13)
	movl	%eax, 128(%r13)
	movl	%eax, 84(%r13)
	movl	%eax, 80(%r13)
	.loc 1 726 0
	movl	%edi, 112(%r13)
	movl	%edi, 124(%r13)
.L186:
	.loc 1 799 0
	movl	24(%r12), %ecx
	.loc 1 800 0
	movzwl	10(%r12), %eax
	.loc 1 799 0
	incl	%ecx
	movl	%ecx, 24(%r12)
	.loc 1 800 0
	movl	108(%r13), %esi
	cmpl	%esi, %eax
	ja	.L383
.L199:
	.loc 1 808 0
	leal	-1(%rcx), %eax
	movl	%eax, 92(%r13)
	.loc 1 809 0
	movl	24(%r12), %eax
	movl	%eax, 116(%r13)
	jmp	.L202
.L372:
	.loc 1 1472 0
	movl	28(%r12), %r8d
	movl	$4, %r9d
	xorl	%ecx, %ecx
	jmp	.L359
.L382:
	.loc 1 720 0
	movl	16(%rsp), %edx
	movl	%edx, 100(%r13)
	jmp	.L184
.L244:
	.loc 1 1016 0
	movl	80(%r13), %eax
	movl	28(%r12), %edx
	subl	%edx, %eax
	testl	%eax, %eax
	jg	.L118
	subl	128(%r13), %edx
	testl	%edx, %edx
	jg	.L118
	.loc 1 1020 0
	movw	$4, 8(%r13)
	.loc 1 1028 0
	movl	28(%r12), %r9d
	movl	%r9d, 80(%r13)
	.loc 1 1029 0
	cmpb	$0, 60(%rbp)
	jns	.L248
	.loc 1 1031 0
	movq	%rbp, %rdi
	call	tcp_ctl
	.loc 1 1032 0
	cmpl	$1, %eax
	je	.L384
	.loc 1 1035 0
	cmpl	$2, %eax
	.p2align 4,,2
	je	.L385
	.loc 1 1038 0
	movl	$1, 20(%rsp)
	.loc 1 1039 0
	movw	$6, 8(%r13)
.L253:
	.loc 1 1052 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	tcp_reass
	.loc 1 1053 0
	movl	24(%r12), %eax
	decl	%eax
	movl	%eax, 92(%r13)
	jmp	.L254
.L329:
	.loc 1 1425 0
	movw	$20, 16(%r13)
.L320:
	.loc 1 1444 0
	movzwl	10(%r12), %eax
	decl	%eax
	cmpw	$4, %ax
	ja	.L331
	cmpb	$27, 40(%r12)
	je	.L386
.L331:
	.loc 1 1452 0
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jne	.L360
	testb	$1, 28(%r13)
	.p2align 4,,2
	jmp	.L362
.L327:
	.loc 1 1406 0
	movw	$7, 8(%r13)
	.p2align 4,,2
	jmp	.L320
.L324:
	.loc 1 1396 0
	xorl	%eax, %eax
	cmpb	$1, 57(%rbp)
	sete	%al
	leal	5(%rax,%rax,2), %eax
	movw	%ax, 8(%r13)
	jmp	.L320
.L328:
	.loc 1 1416 0
	movq	%r13, %rdi
	.loc 1 1415 0
	movw	$10, 8(%r13)
	.loc 1 1416 0
	call	tcp_canceltimers
	.loc 1 1417 0
	movw	$20, 16(%r13)
	.loc 1 1418 0
	movq	%rbp, %rdi
	call	soisfdisconnected
	jmp	.L320
	.p2align 4,,7
.L304:
	.loc 1 1340 0
	movl	112(%r13), %edx
	movl	%edx, %eax
	subl	116(%r13), %eax
	testl	%eax, %eax
	jle	.L306
	.loc 1 1341 0
	movl	%edx, 116(%r13)
	jmp	.L306
.L310:
	.loc 1 1362 0
	movq	%r15, %rdi
	.loc 1 1363 0
	andl	$-2, %r14d
	.loc 1 1362 0
	call	m_free
	.p2align 4,,2
	jmp	.L319
.L150:
	.loc 1 622 0
	testb	$4, %r14b
	.p2align 4,,2
	jne	.L99
	.loc 1 624 0
	testb	$16, %r14b
	.p2align 4,,7
	jne	.L118
	.loc 1 626 0
	testb	$2, %r14b
	.p2align 4,,5
	je	.L99
	.loc 1 638 0
	movl	44(%rbp), %edx
	movl	%edx, %eax
	andl	$16777215, %eax
	cmpl	special_addr(%rip), %eax
	je	.L387
.L154:
	.loc 1 663 0
	movzbl	57(%rbp), %eax
	testb	$16, %al
	je	.L167
	.loc 1 664 0
	andl	$-17, %eax
	movb	%al, 57(%rbp)
	jmp	.L166
.L187:
	.loc 1 747 0
	movl	%r14d, %ecx
	andl	$16, %ecx
	je	.L188
	movl	28(%r12), %edx
	movl	%edx, %eax
	subl	100(%r13), %eax
	testl	%eax, %eax
	jle	.L118
	subl	128(%r13), %edx
	testl	%edx, %edx
	jg	.L118
.L188:
	.loc 1 752 0
	testb	$4, %r14b
	jne	.L388
	.loc 1 758 0
	testb	$2, %r14b
	je	.L99
	.loc 1 760 0
	testl	%ecx, %ecx
	.p2align 4,,5
	je	.L193
	.loc 1 761 0
	movl	28(%r12), %r9d
	.loc 1 762 0
	cmpl	%r9d, 84(%r13)
	.loc 1 761 0
	movl	%r9d, 80(%r13)
	.loc 1 762 0
	js	.L389
.L193:
	.loc 1 766 0
	movw	$0, 10(%r13)
	.loc 1 767 0
	movl	24(%r12), %eax
	.loc 1 769 0
	orw	$1, 28(%r13)
	.loc 1 770 0
	testb	$16, %r14b
	.loc 1 768 0
	leal	1(%rax), %edi
	.loc 1 767 0
	movl	%eax, 120(%r13)
	.loc 1 768 0
	movl	%edi, 112(%r13)
	movl	%edi, 124(%r13)
	.loc 1 770 0
	je	.L195
	movl	80(%r13), %eax
	subl	100(%r13), %eax
	testl	%eax, %eax
	jle	.L195
	.loc 1 772 0
	movq	%rbp, %rdi
	call	soisfconnected
	.loc 1 782 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 773 0
	movw	$4, 8(%r13)
	.loc 1 782 0
	movq	%r13, %rdi
	call	tcp_reass
	.loc 1 788 0
	movzwl	142(%r13), %eax
	testw	%ax, %ax
	je	.L186
	.loc 1 789 0
	movswl	%ax,%esi
	movq	%r13, %rdi
	call	tcp_xmit_timer
	jmp	.L186
	.p2align 4,,7
.L383:
	.loc 1 802 0
	subl	%eax, %esi
	movq	%r15, %rdi
	.loc 1 804 0
	andl	$-2, %r14d
	.loc 1 802 0
	call	m_adj
	.loc 1 803 0
	movl	108(%r13), %eax
	movl	24(%r12), %ecx
	movw	%ax, 10(%r12)
	jmp	.L199
.L381:
	.loc 1 1382 0
	movq	%rbp, %rdi
	call	sofwdrain
	.loc 1 1384 0
	orw	$1, 28(%r13)
	.loc 1 1385 0
	incl	112(%r13)
	movzwl	8(%r13), %r8d
	jmp	.L321
.L386:
	.loc 1 1446 0
	orw	$1, 28(%r13)
	jmp	.L331
.L378:
	.loc 1 1281 0
	movl	96(%r13), %edx
	movl	28(%r12), %eax
	cmpl	%eax, %edx
	js	.L300
	cmpl	%eax, %edx
	jne	.L299
	mov	104(%r13), %eax
	cmpq	8(%rsp), %rax
	jae	.L299
.L300:
	.loc 1 1289 0
	movl	8(%rsp), %ecx
	movl	%ecx, 104(%r13)
	.loc 1 1290 0
	movl	24(%r12), %eax
	movl	%eax, 92(%r13)
	.loc 1 1291 0
	movl	28(%r12), %eax
	movl	%eax, 96(%r13)
	.loc 1 1292 0
	movl	8(%rsp), %eax
	cmpl	%eax, 156(%r13)
	jae	.L303
	.loc 1 1293 0
	movl	%eax, 156(%r13)
.L303:
	.loc 1 1294 0
	movl	$1, 20(%rsp)
	jmp	.L299
.L374:
	.loc 1 996 0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	tcp_drop
	jmp	.L357
.L370:
	.loc 1 402 0
	movq	%rbp, %rdi
	call	free
	.p2align 4,,6
	jmp	.L118
.L129:
	.loc 1 552 0
	movl	80(%r13), %eax
	cmpl	%eax, 28(%r12)
	.p2align 4,,2
	jne	.L353
	cmpl	%r13d, (%r13)
	.p2align 4,,5
	jne	.L353
	movl	92(%rbp), %ecx
	movl	88(%rbp), %edx
	movzwl	%si, %esi
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	ja	.L128
	.loc 1 561 0
	addl	%esi, %edi
	movl	%edi, 112(%r13)
	.loc 1 567 0
	cmpb	$0, 57(%rbp)
	je	.L144
	.loc 1 568 0
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	tcp_emu
	testl	%eax, %eax
	je	.L363
.L144:
	.loc 1 570 0
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	sbappend
	.p2align 4,,2
	jmp	.L363
	.p2align 4,,7
.L195:
	.loc 1 791 0
	movw	$3, 8(%r13)
	.p2align 4,,2
	jmp	.L186
.L388:
	.loc 1 753 0
	testl	%ecx, %ecx
	.p2align 4,,7
	je	.L99
	.loc 1 754 0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	tcp_drop
	.p2align 4,,2
	jmp	.L99
.L167:
	.loc 1 668 0
	movq	%rbp, %rdi
	call	tcp_fconnect
	incl	%eax
	.p2align 4,,5
	je	.L390
.L168:
	.loc 1 696 0
	movq	%r15, 24(%rbp)
	.loc 1 697 0
	movq	%r12, 32(%rbp)
	.loc 1 698 0
	movw	$150, 14(%r13)
	.loc 1 699 0
	movw	$3, 8(%r13)
	jmp	.L90
.L380:
	.loc 1 1354 0
	cmpw	$4, %ax
	jne	.L312
	orw	$2, 28(%r13)
	movzwl	10(%r12), %eax
	leal	(%rdx,%rax), %edi
	movl	%edi, 112(%r13)
	movzbl	33(%r12), %r14d
	andl	$1, %r14d
	cmpb	$0, 57(%rbp)
	je	.L315
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	tcp_emu
	testl	%eax, %eax
	je	.L319
.L315:
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	sbappend
	.p2align 4,,2
	jmp	.L319
.L379:
	.loc 1 1310 0
	andl	$-33, %r14d
	.loc 1 1309 0
	movw	$0, 38(%r12)
	jmp	.L306
.L387:
.LBB14:
.LBB15:
	.loc 1 639 0
#APP
	bswap %edx
#NO_APP
.LBE15:
	movzbl	%dl,%ecx
	.loc 1 640 0
	leal	-2(%rcx), %eax
	cmpl	$1, %eax
	jbe	.L154
.LBB16:
	.loc 1 650 0
	movq	exec_list(%rip), %rax
	testq	%rax, %rax
	je	.L161
	movzwl	52(%rbp), %edx
	jmp	.L164
.L162:
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L161
.L164:
	.loc 1 651 0
	cmpl	%edx, 8(%rax)
	.p2align 4,,3
	jne	.L162
	cmpl	%ecx, 4(%rax)
	.p2align 4,,3
	jne	.L162
	.loc 1 653 0
	orl	$128, 60(%rbp)
.L161:
.LBE16:
	.loc 1 658 0
	cmpb	$0, 60(%rbp)
	.p2align 4,,3
	jns	.L154
	.p2align 4,,5
	jmp	.L166
.L390:
.LBE14:
	.loc 1 668 0
	.p2align 4,,7
	call	__errno_location
	movq	%rax, %rdx
	movl	(%rax), %eax
	cmpl	$115, %eax
	.p2align 4,,2
	je	.L168
	cmpl	$11, %eax
	je	.L168
.LBB17:
	.loc 1 672 0
	cmpl	$111, %eax
	je	.L391
	.loc 1 677 0
	cmpl	$113, %eax
.LBB18:
	.loc 1 678 0
	movl	24(%r12), %eax
.LBE18:
	.loc 1 677 0
	sete	%bl
	.loc 1 678 0
#APP
	bswap %eax
#NO_APP
	movl	%eax, 24(%r12)
.LBB19:
	.loc 1 679 0
	movl	28(%r12), %eax
.LBE19:
#APP
	bswap %eax
#NO_APP
	movl	%eax, 28(%r12)
.LBB20:
	.loc 1 680 0
	movzwl	34(%r12), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE20:
	movw	%ax, 34(%r12)
.LBB21:
	.loc 1 681 0
	movzwl	38(%r12), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE21:
	movw	%ax, 38(%r12)
	.loc 1 682 0
	movq	48(%r15), %rax
	subq	(%rsp), %rax
	subq	$20, %rax
	movq	%rax, 48(%r15)
	.loc 1 683 0
	movl	56(%r15), %eax
	addl	%eax, 24(%rsp)
	movl	24(%rsp), %eax
	addl	$20, %eax
	movl	%eax, 56(%r15)
	.loc 1 684 0
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rcx)
	movl	64(%rsp), %eax
	movl	%eax, 16(%rcx)
	.loc 1 685 0
	movl	(%rdx), %edi
	call	strerror
	movzbl	%bl, %edx
	movq	%rax, %r8
	xorl	%ecx, %ecx
	movl	$3, %esi
	movq	%r15, %rdi
	call	icmp_error
	jmp	.L358
.L375:
.LBE17:
	.loc 1 1075 0
	cmpw	$0, 10(%r12)
	jne	.L263
	movl	104(%r13), %edx
	mov	%edx, %eax
	cmpq	8(%rsp), %rax
	.p2align 4,,2
	je	.L392
.L263:
	.loc 1 1131 0
	movw	$0, 22(%r13)
	jmp	.L202
.L389:
	.loc 1 763 0
	movl	%r9d, 84(%r13)
	jmp	.L193
.L298:
	.loc 1 1213 0
	cmpl	$8, %eax
	.p2align 4,,5
	je	.L295
	cmpl	$10, %eax
	.p2align 4,,5
	jne	.L202
	.loc 1 1271 0
	movw	$20, 16(%r13)
	.p2align 4,,5
	jmp	.L226
	.p2align 4,,7
.L286:
	.loc 1 1198 0
	leaq	120(%rbp), %rdi
	movl	%ebx, %esi
	call	sbdrop
	.loc 1 1199 0
	subl	%ebx, 104(%r13)
	.loc 1 1200 0
	xorl	%edx, %edx
	jmp	.L287
.L293:
	.loc 1 1244 0
	testl	%edx, %edx
	je	.L202
	.loc 1 1246 0
	movq	%r13, %rdi
	.loc 1 1245 0
	movw	$10, 8(%r13)
	.loc 1 1246 0
	call	tcp_canceltimers
	.loc 1 1247 0
	movw	$20, 16(%r13)
	.loc 1 1248 0
	movq	%rbp, %rdi
	call	soisfdisconnected
	jmp	.L202
	.p2align 4,,7
.L377:
	.loc 1 1211 0
	movl	%eax, 84(%r13)
	.p2align 4,,2
	jmp	.L288
.L376:
	.loc 1 1174 0
	movw	$0, 10(%r13)
	.loc 1 1175 0
	movl	$1, 20(%rsp)
	.p2align 4,,4
	jmp	.L282
.L295:
	.loc 1 1259 0
	testl	%edx, %edx
	.p2align 4,,2
	je	.L202
	.p2align 4,,4
	jmp	.L358
.L391:
.LBB22:
	.loc 1 674 0
	movl	24(%r12), %ecx
	movl	$20, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	incl	%ecx
	call	tcp_respond
	jmp	.L358
.L384:
.LBE22:
	.loc 1 1033 0
	movq	%rbp, %rdi
	call	soisfconnected
	.loc 1 1034 0
	andl	$-129, 60(%rbp)
	.p2align 4,,4
	jmp	.L253
.L248:
	.loc 1 1042 0
	movq	%rbp, %rdi
	call	soisfconnected
	.p2align 4,,4
	jmp	.L253
.L392:
	.loc 1 1103 0
	cmpw	$0, 10(%r13)
	.p2align 4,,4
	je	.L263
	cmpl	%esi, %ecx
	.p2align 4,,7
	jne	.L263
	.loc 1 1106 0
	movzwl	22(%r13), %eax
	incl	%eax
	cmpw	$3, %ax
	movw	%ax, 22(%r13)
	je	.L393
	.loc 1 1125 0
	.p2align 4,,2
	jle	.L202
	.loc 1 1126 0
	movzwl	24(%r13), %eax
	.loc 1 1127 0
	movq	%r13, %rdi
	.loc 1 1126 0
	addl	%eax, 132(%r13)
	.loc 1 1127 0
	call	tcp_output
	jmp	.L99
.L385:
	.loc 1 1036 0
	movl	$1, 60(%rbp)
	jmp	.L253
.L393:
.LBB23:
	.loc 1 1108 0
	movl	132(%r13), %eax
	movzwl	24(%r13), %ecx
	.loc 1 1119 0
	movq	%r13, %rdi
	.loc 1 1115 0
	movw	$0, 10(%r13)
	.loc 1 1116 0
	movw	$0, 142(%r13)
	.loc 1 1107 0
	movl	84(%r13), %ebx
	.loc 1 1108 0
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	shrl	%eax
	divl	%ecx
	.loc 1 1113 0
	movl	$2, %edx
	cmpl	$1, %eax
	cmova	%eax, %edx
	.loc 1 1114 0
	imull	%ecx, %edx
	movl	%edx, 136(%r13)
	.loc 1 1117 0
	movl	28(%r12), %eax
	.loc 1 1118 0
	movl	%ecx, 132(%r13)
	.loc 1 1117 0
	movl	%eax, 84(%r13)
	.loc 1 1119 0
	call	tcp_output
	.loc 1 1120 0
	movzwl	24(%r13), %eax
	movswl	22(%r13),%edx
	imull	%edx, %eax
	addl	136(%r13), %eax
	movl	%eax, 132(%r13)
	.loc 1 1122 0
	movl	%ebx, %eax
	subl	84(%r13), %eax
	testl	%eax, %eax
	jle	.L99
	.loc 1 1123 0
	movl	%ebx, 84(%r13)
	jmp	.L99
.L290:
.LBE23:
	.loc 1 1221 0
	testl	%edx, %edx
	je	.L202
	.loc 1 1229 0
	testb	$8, 60(%rbp)
	.p2align 4,,5
	je	.L292
	.loc 1 1230 0
	movq	%rbp, %rdi
	.p2align 4,,5
	call	soisfdisconnected
	.loc 1 1231 0
	movw	$1200, 16(%r13)
.L292:
	.loc 1 1233 0
	movw	$9, 8(%r13)
	jmp	.L202
.L371:
	.loc 1 531 0
	movw	$0, 10(%r13)
	jmp	.L136
.LFE48:
	.size	tcp_input, .-tcp_input
	.comm	tcp_iss,4,4
	.comm	tcb,160,32
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
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI7-.LFB51
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI15-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE8:
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
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI7-.LFB51
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI10-.LFB49
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI15-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE9:
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
	.file 15 "/home/remco/Projects/Argos/src/slirp/misc.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 19 "/home/remco/Projects/Argos/src/slirp/main.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x121e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF234
	.byte	0x1
	.long	.LASF235
	.long	.LASF236
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
	.uleb128 0x2
	.long	.LASF6
	.byte	0x5
	.byte	0x22
	.long	0x6e
	.uleb128 0x3
	.long	.LASF7
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF10
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x8d
	.long	0x8a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x8e
	.long	0x8a
	.uleb128 0x3
	.long	.LASF7
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0xba
	.long	0xbb
	.uleb128 0x6
	.byte	0x8
	.long	0xc1
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0x26
	.long	0x63
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0x75
	.long	0xb0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x12
	.byte	0xd5
	.long	0x6e
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0xcb
	.long	0x5c
	.uleb128 0x3
	.long	.LASF24
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.byte	0x8
	.long	0x13f
	.uleb128 0x7
	.long	0xc1
	.uleb128 0x8
	.long	0x310
	.long	.LASF56
	.byte	0xd8
	.byte	0x10
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF26
	.byte	0x11
	.value	0x110
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x11
	.value	0x115
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x11
	.value	0x116
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF29
	.byte	0x11
	.value	0x117
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF30
	.byte	0x11
	.value	0x118
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF31
	.byte	0x11
	.value	0x119
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF32
	.byte	0x11
	.value	0x11a
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF33
	.byte	0x11
	.value	0x11b
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF34
	.byte	0x11
	.value	0x11c
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF35
	.byte	0x11
	.value	0x11e
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF36
	.byte	0x11
	.value	0x11f
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF37
	.byte	0x11
	.value	0x120
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF38
	.byte	0x11
	.value	0x122
	.long	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF39
	.byte	0x11
	.value	0x124
	.long	0x354
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF40
	.byte	0x11
	.value	0x126
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF41
	.byte	0x11
	.value	0x12a
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF42
	.byte	0x11
	.value	0x12c
	.long	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF43
	.byte	0x11
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF44
	.byte	0x11
	.value	0x131
	.long	0x75
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF45
	.byte	0x11
	.value	0x132
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF46
	.byte	0x11
	.value	0x136
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF47
	.byte	0x11
	.value	0x13f
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF48
	.byte	0x11
	.value	0x148
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF49
	.byte	0x11
	.value	0x149
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x11
	.value	0x14a
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF51
	.byte	0x11
	.value	0x14b
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x11
	.value	0x14c
	.long	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x11
	.value	0x14e
	.long	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x11
	.value	0x150
	.long	0x370
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x11
	.byte	0xb4
	.uleb128 0x8
	.long	0x34e
	.long	.LASF57
	.byte	0x18
	.byte	0x11
	.byte	0xba
	.uleb128 0xb
	.long	.LASF58
	.byte	0x11
	.byte	0xbb
	.long	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x11
	.byte	0xbc
	.long	0x354
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF60
	.byte	0x11
	.byte	0xc0
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x6
	.byte	0x8
	.long	0x144
	.uleb128 0xc
	.long	0x36a
	.long	0xc1
	.uleb128 0xd
	.long	0xa7
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x310
	.uleb128 0xc
	.long	0x380
	.long	0xc1
	.uleb128 0xd
	.long	0xa7
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x9
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF62
	.byte	0x8
	.byte	0x8d
	.long	0x380
	.uleb128 0x8
	.long	0x3b1
	.long	.LASF63
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.uleb128 0xb
	.long	.LASF64
	.byte	0x8
	.byte	0x90
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x45d
	.string	"ip"
	.byte	0x14
	.byte	0x7
	.byte	0x4f
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.byte	0x54
	.long	0xde
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.byte	0x55
	.long	0xde
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x7
	.byte	0x57
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF68
	.byte	0x7
	.byte	0x58
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF69
	.byte	0x7
	.byte	0x59
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF70
	.byte	0x7
	.byte	0x5a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF71
	.byte	0x7
	.byte	0x5e
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF72
	.byte	0x7
	.byte	0x5f
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF73
	.byte	0x7
	.byte	0x60
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF74
	.byte	0x7
	.byte	0x61
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF75
	.byte	0x7
	.byte	0x61
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x7
	.byte	0xc0
	.long	0x120
	.uleb128 0x8
	.long	0x4d7
	.long	.LASF77
	.byte	0x14
	.byte	0x7
	.byte	0xcf
	.uleb128 0xb
	.long	.LASF78
	.byte	0x7
	.byte	0xd0
	.long	0x45d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF79
	.byte	0x7
	.byte	0xd0
	.long	0x45d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF80
	.byte	0x7
	.byte	0xd1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF81
	.byte	0x7
	.byte	0xd2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF82
	.byte	0x7
	.byte	0xd3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF83
	.byte	0x7
	.byte	0xd4
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF84
	.byte	0x7
	.byte	0xd5
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0xa
	.byte	0x28
	.long	0x120
	.uleb128 0x8
	.long	0x581
	.long	.LASF86
	.byte	0x14
	.byte	0xa
	.byte	0x36
	.uleb128 0xb
	.long	.LASF87
	.byte	0xa
	.byte	0x37
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF88
	.byte	0xa
	.byte	0x38
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF89
	.byte	0xa
	.byte	0x39
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF90
	.byte	0xa
	.byte	0x3a
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF91
	.byte	0xa
	.byte	0x3f
	.long	0xde
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF92
	.byte	0xa
	.byte	0x40
	.long	0xde
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF93
	.byte	0xa
	.byte	0x42
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.long	.LASF94
	.byte	0xa
	.byte	0x49
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF95
	.byte	0xa
	.byte	0x4a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF96
	.byte	0xa
	.byte	0x4b
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x5aa
	.long	.LASF97
	.byte	0x28
	.byte	0x6
	.byte	0x2b
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.byte	0x2c
	.long	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF99
	.byte	0x6
	.byte	0x2d
	.long	0x4e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x3
	.byte	0x2e
	.long	0x120
	.uleb128 0x8
	.long	0x83e
	.long	.LASF101
	.byte	0xb8
	.byte	0x2
	.byte	0x83
	.uleb128 0xb
	.long	.LASF102
	.byte	0x3
	.byte	0x35
	.long	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF103
	.byte	0x3
	.byte	0x36
	.long	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF104
	.byte	0x3
	.byte	0x37
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF105
	.byte	0x3
	.byte	0x38
	.long	0x83e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF106
	.byte	0x3
	.byte	0x39
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.long	.LASF107
	.byte	0x3
	.byte	0x3a
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF108
	.byte	0x3
	.byte	0x3b
	.long	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.long	.LASF109
	.byte	0x3
	.byte	0x3c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF110
	.byte	0x3
	.byte	0x3d
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.long	.LASF111
	.byte	0x3
	.byte	0x3e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF112
	.byte	0x3
	.byte	0x4c
	.long	0x581
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF113
	.byte	0x3
	.byte	0x4e
	.long	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF114
	.byte	0x3
	.byte	0x54
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF115
	.byte	0x3
	.byte	0x55
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.long	.LASF116
	.byte	0x3
	.byte	0x56
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF117
	.byte	0x3
	.byte	0x57
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF118
	.byte	0x3
	.byte	0x58
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"iss"
	.byte	0x3
	.byte	0x59
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.long	.LASF119
	.byte	0x3
	.byte	0x5a
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF120
	.byte	0x3
	.byte	0x5c
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.long	.LASF121
	.byte	0x3
	.byte	0x5d
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF122
	.byte	0x3
	.byte	0x5e
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"irs"
	.byte	0x3
	.byte	0x5f
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF123
	.byte	0x3
	.byte	0x64
	.long	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.long	.LASF124
	.byte	0x3
	.byte	0x66
	.long	0x4d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF125
	.byte	0x3
	.byte	0x6a
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.long	.LASF126
	.byte	0x3
	.byte	0x6b
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF127
	.byte	0x3
	.byte	0x73
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.long	.LASF128
	.byte	0x3
	.byte	0x74
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xb
	.long	.LASF129
	.byte	0x3
	.byte	0x75
	.long	0x4d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF130
	.byte	0x3
	.byte	0x76
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.long	.LASF131
	.byte	0x3
	.byte	0x77
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xb
	.long	.LASF132
	.byte	0x3
	.byte	0x78
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF133
	.byte	0x3
	.byte	0x79
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.long	.LASF134
	.byte	0x3
	.byte	0x7c
	.long	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF135
	.byte	0x3
	.byte	0x7d
	.long	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xb
	.long	.LASF136
	.byte	0x3
	.byte	0x80
	.long	0x7c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0xb
	.long	.LASF137
	.byte	0x3
	.byte	0x83
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.long	.LASF138
	.byte	0x3
	.byte	0x84
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0xb
	.long	.LASF139
	.byte	0x3
	.byte	0x85
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0xb
	.long	.LASF140
	.byte	0x3
	.byte	0x86
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0xb
	.long	.LASF141
	.byte	0x3
	.byte	0x87
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF142
	.byte	0x3
	.byte	0x88
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.long	.LASF143
	.byte	0x3
	.byte	0x89
	.long	0x4d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xc
	.long	0x84e
	.long	0x7c
	.uleb128 0xd
	.long	0xa7
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.long	0x980
	.long	.LASF144
	.byte	0xa0
	.byte	0xa
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF145
	.byte	0xb
	.byte	0x15
	.long	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF146
	.byte	0xb
	.byte	0x15
	.long	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"s"
	.byte	0xb
	.byte	0x17
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF147
	.byte	0xb
	.byte	0x1a
	.long	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF148
	.byte	0xb
	.byte	0x1d
	.long	0xab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF149
	.byte	0xb
	.byte	0x1f
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF150
	.byte	0xb
	.byte	0x20
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF151
	.byte	0xb
	.byte	0x21
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF152
	.byte	0xb
	.byte	0x22
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF153
	.byte	0xb
	.byte	0x23
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.long	.LASF154
	.byte	0xb
	.byte	0x25
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF155
	.byte	0xb
	.byte	0x26
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xb
	.long	.LASF156
	.byte	0xb
	.byte	0x28
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xb
	.long	.LASF157
	.byte	0xb
	.byte	0x29
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF158
	.byte	0xb
	.byte	0x2b
	.long	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF159
	.byte	0xb
	.byte	0x2c
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF160
	.byte	0xb
	.byte	0x2e
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF161
	.byte	0xb
	.byte	0x2f
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF162
	.byte	0xb
	.byte	0x33
	.long	0xa63
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF163
	.byte	0xb
	.byte	0x34
	.long	0xa63
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF164
	.byte	0xb
	.byte	0x35
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x84e
	.uleb128 0x8
	.long	0xa11
	.long	.LASF165
	.byte	0x40
	.byte	0xd
	.byte	0x3f
	.uleb128 0xb
	.long	.LASF166
	.byte	0xd
	.byte	0x40
	.long	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF167
	.byte	0xd
	.byte	0x41
	.long	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF168
	.byte	0xd
	.byte	0x42
	.long	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF169
	.byte	0xd
	.byte	0x43
	.long	0xa3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF170
	.byte	0xd
	.byte	0x44
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF171
	.byte	0xd
	.byte	0x46
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF172
	.byte	0xd
	.byte	0x47
	.long	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF173
	.byte	0xd
	.byte	0x49
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF174
	.byte	0xd
	.byte	0x4a
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.long	0xa3a
	.long	.LASF175
	.byte	0x48
	.byte	0xc
	.byte	0x66
	.uleb128 0xb
	.long	.LASF165
	.byte	0xd
	.byte	0x5c
	.long	0x986
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF176
	.byte	0xd
	.byte	0x60
	.long	0xa40
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa11
	.uleb128 0x11
	.long	0xa63
	.long	.LASF176
	.byte	0x8
	.byte	0xd
	.byte	0x5d
	.uleb128 0x12
	.long	.LASF177
	.byte	0xd
	.byte	0x5e
	.long	0x35a
	.uleb128 0x12
	.long	.LASF178
	.byte	0xd
	.byte	0x5f
	.long	0xbb
	.byte	0x0
	.uleb128 0x8
	.long	0xab6
	.long	.LASF179
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0xb
	.long	.LASF180
	.byte	0xe
	.byte	0xf
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF181
	.byte	0xe
	.byte	0x10
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF182
	.byte	0xe
	.byte	0x11
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF183
	.byte	0xe
	.byte	0x13
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF184
	.byte	0xe
	.byte	0x15
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x6
	.byte	0x8
	.long	0x5b5
	.uleb128 0x8
	.long	0xb15
	.long	.LASF185
	.byte	0x20
	.byte	0xf
	.byte	0xb
	.uleb128 0xb
	.long	.LASF186
	.byte	0xf
	.byte	0xc
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF187
	.byte	0xf
	.byte	0xd
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF188
	.byte	0xf
	.byte	0xe
	.long	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF189
	.byte	0xf
	.byte	0xf
	.long	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF190
	.byte	0xf
	.byte	0x10
	.long	0xb15
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xac2
	.uleb128 0x13
	.long	0xbba
	.long	.LASF192
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x83
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"tp"
	.byte	0x1
	.byte	0x78
	.long	0xabc
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"ti"
	.byte	0x1
	.byte	0x78
	.long	0xab6
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0x79
	.long	0xa3a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0x7b
	.long	0xab6
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"so"
	.byte	0x1
	.byte	0x7c
	.long	0x980
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.long	.LASF191
	.byte	0x1
	.byte	0x7d
	.long	0x83
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF211
	.byte	0x1
	.byte	0xc8
	.quad	.L3
	.uleb128 0x18
	.long	0xba8
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x94
	.long	0x83
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.long	0x83
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xc03
	.long	.LASF193
	.byte	0x1
	.value	0x647
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"tp"
	.byte	0x1
	.value	0x646
	.long	0xabc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"rtt"
	.byte	0x1
	.value	0x646
	.long	0x83
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF194
	.byte	0x1
	.value	0x648
	.long	0x7c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0xc5e
	.byte	0x1
	.long	.LASF198
	.byte	0x1
	.value	0x6a1
	.byte	0x1
	.long	0x83
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"tp"
	.byte	0x1
	.value	0x69f
	.long	0xabc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF195
	.byte	0x1
	.value	0x6a0
	.long	0xde
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"so"
	.byte	0x1
	.value	0x6a2
	.long	0x980
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"mss"
	.byte	0x1
	.value	0x6a3
	.long	0x83
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1a
	.long	0xd05
	.long	.LASF196
	.byte	0x1
	.value	0x5d8
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"tp"
	.byte	0x1
	.value	0x5d7
	.long	0xabc
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.value	0x5d7
	.long	0xd05
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"cnt"
	.byte	0x1
	.value	0x5d7
	.long	0x83
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.string	"ti"
	.byte	0x1
	.value	0x5d7
	.long	0xab6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"mss"
	.byte	0x1
	.value	0x5d9
	.long	0x115
	.uleb128 0x1f
	.string	"opt"
	.byte	0x1
	.value	0x5da
	.long	0x83
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x1
	.value	0x5da
	.long	0x83
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x5f5
	.long	0x4a
	.uleb128 0x20
	.string	"__x"
	.byte	0x1
	.value	0x5f5
	.long	0x4a
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc8
	.uleb128 0x22
	.long	0x11a5
	.byte	0x1
	.long	.LASF199
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0xee
	.long	0xa3a
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.long	.LASF200
	.byte	0x1
	.byte	0xef
	.long	0x83
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.byte	0xf0
	.long	0x980
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.long	.LASF202
	.byte	0x1
	.byte	0xf2
	.long	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x15
	.string	"ip"
	.byte	0x1
	.byte	0xf2
	.long	0x11a5
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x15
	.string	"ti"
	.byte	0x1
	.byte	0xf3
	.long	0xab6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF203
	.byte	0x1
	.byte	0xf4
	.long	0xf4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.long	.LASF197
	.byte	0x1
	.byte	0xf5
	.long	0x83
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xf6
	.long	0x83
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF204
	.byte	0x1
	.byte	0xf6
	.long	0x83
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"off"
	.byte	0x1
	.byte	0xf6
	.long	0x83
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.string	"tp"
	.byte	0x1
	.byte	0xf7
	.long	0xabc
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.long	.LASF205
	.byte	0x1
	.byte	0xf8
	.long	0x83
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"so"
	.byte	0x1
	.byte	0xf9
	.long	0x980
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF206
	.byte	0x1
	.byte	0xfa
	.long	0x83
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF207
	.byte	0x1
	.byte	0xfa
	.long	0x83
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF208
	.byte	0x1
	.byte	0xfa
	.long	0x83
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.long	.LASF209
	.byte	0x1
	.byte	0xfa
	.long	0x83
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x15
	.string	"iss"
	.byte	0x1
	.byte	0xfc
	.long	0x83
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF210
	.byte	0x1
	.byte	0xfd
	.long	0xe9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xfe
	.long	0x83
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.long	.LASF212
	.byte	0x1
	.value	0x2bf
	.quad	.L92
	.uleb128 0x24
	.long	.LASF213
	.byte	0x1
	.value	0x5c9
	.quad	.L99
	.uleb128 0x24
	.long	.LASF214
	.byte	0x1
	.value	0x39c
	.quad	.L111
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0x5bd
	.quad	.L118
	.uleb128 0x24
	.long	.LASF216
	.byte	0x1
	.value	0x2c7
	.quad	.L166
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.value	0x319
	.quad	.L186
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x4fc
	.quad	.L202
	.uleb128 0x24
	.long	.LASF219
	.byte	0x1
	.value	0x5b1
	.quad	.L226
	.uleb128 0x24
	.long	.LASF220
	.byte	0x1
	.value	0x3d2
	.quad	.L232
	.uleb128 0x24
	.long	.LASF221
	.byte	0x1
	.value	0x46e
	.quad	.L254
	.uleb128 0x24
	.long	.LASF222
	.byte	0x1
	.value	0x53e
	.quad	.L306
	.uleb128 0x25
	.long	0xf1d
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1f
	.string	"__v"
	.byte	0x1
	.value	0x132
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.string	"__x"
	.byte	0x1
	.value	0x132
	.long	0x4a
	.byte	0x0
	.uleb128 0x25
	.long	0xf4d
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x163
	.long	0x5c
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x163
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0xf7d
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x164
	.long	0x5c
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x164
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0xfad
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x165
	.long	0x4a
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x165
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0xfdd
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x166
	.long	0x4a
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x166
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x1001
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1f
	.string	"win"
	.byte	0x1
	.value	0x256
	.long	0x83
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x1032
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1f
	.string	"cw"
	.byte	0x1
	.value	0x4a2
	.long	0xde
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF223
	.byte	0x1
	.value	0x4a3
	.long	0xde
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x10a4
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x1c
	.long	.LASF224
	.byte	0x1
	.value	0x27f
	.long	0x83
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	0x1083
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x27f
	.long	0x5c
	.uleb128 0x20
	.string	"__x"
	.byte	0x1
	.value	0x27f
	.long	0x5c
	.byte	0x0
	.uleb128 0x21
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1c
	.long	.LASF225
	.byte	0x1
	.value	0x289
	.long	0xb15
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x1178
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1c
	.long	.LASF226
	.byte	0x1
	.value	0x29d
	.long	0xc8
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	0x10eb
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x2a6
	.long	0x5c
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x2a6
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x111b
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x2a7
	.long	0x5c
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x2a7
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x114b
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x2a8
	.long	0x4a
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x2a8
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x20
	.string	"__v"
	.byte	0x1
	.value	0x2a9
	.long	0x4a
	.uleb128 0x1f
	.string	"__x"
	.byte	0x1
	.value	0x2a9
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x1
	.value	0x453
	.long	0x4d7
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"win"
	.byte	0x1
	.value	0x454
	.long	0xde
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b1
	.uleb128 0x26
	.long	.LASF228
	.byte	0x10
	.byte	0x91
	.long	0x354
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF229
	.byte	0x10
	.byte	0x92
	.long	0x354
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF230
	.byte	0x1
	.byte	0x33
	.long	0x980
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tcp_last_so
	.uleb128 0x27
	.long	.LASF231
	.byte	0x1
	.byte	0x35
	.long	0x4d7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tcp_iss
	.uleb128 0x28
	.string	"tcb"
	.byte	0x1
	.byte	0x30
	.long	0x84e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tcb
	.uleb128 0x26
	.long	.LASF232
	.byte	0x13
	.byte	0x24
	.long	0x396
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF233
	.byte	0xf
	.byte	0x13
	.long	0xb15
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1222
	.long	0xc03
	.string	"tcp_mss"
	.long	0xd0b
	.string	"tcp_input"
	.long	0x11c5
	.string	"tcp_last_so"
	.long	0x11db
	.string	"tcp_iss"
	.long	0x11f1
	.string	"tcb"
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"size_t"
.LASF236:
	.string	"/home/remco/Projects/Argos/src"
.LASF170:
	.string	"mh_flags"
.LASF82:
	.string	"ih_len"
.LASF64:
	.string	"s_addr"
.LASF98:
	.string	"ti_i"
.LASF186:
	.string	"ex_pty"
.LASF76:
	.string	"caddr32_t"
.LASF37:
	.string	"_IO_save_end"
.LASF18:
	.string	"u_long"
.LASF90:
	.string	"th_ack"
.LASF166:
	.string	"mh_next"
.LASF173:
	.string	"mh_data"
.LASF175:
	.string	"mbuf"
.LASF167:
	.string	"mh_prev"
.LASF93:
	.string	"th_flags"
.LASF154:
	.string	"so_iptos"
.LASF30:
	.string	"_IO_write_base"
.LASF46:
	.string	"_lock"
.LASF35:
	.string	"_IO_save_base"
.LASF141:
	.string	"ts_recent"
.LASF39:
	.string	"_chain"
.LASF88:
	.string	"th_dport"
.LASF179:
	.string	"sbuf"
.LASF43:
	.string	"_cur_column"
.LASF107:
	.string	"t_rxtcur"
.LASF127:
	.string	"t_idle"
.LASF207:
	.string	"acked"
.LASF164:
	.string	"extra"
.LASF153:
	.string	"so_lport"
.LASF148:
	.string	"so_ti"
.LASF111:
	.string	"t_flags"
.LASF10:
	.string	"long int"
.LASF217:
	.string	"trimthenstep6"
.LASF230:
	.string	"tcp_last_so"
.LASF13:
	.string	"__caddr_t"
.LASF224:
	.string	"lastbyte"
.LASF15:
	.string	"u_char"
.LASF57:
	.string	"_IO_marker"
.LASF112:
	.string	"t_template"
.LASF201:
	.string	"inso"
.LASF0:
	.string	"__u_char"
.LASF169:
	.string	"mh_prevpkt"
.LASF219:
	.string	"dropafterack"
.LASF172:
	.string	"mh_so"
.LASF92:
	.string	"th_off"
.LASF120:
	.string	"rcv_wnd"
.LASF83:
	.string	"ih_src"
.LASF84:
	.string	"ih_dst"
.LASF63:
	.string	"in_addr"
.LASF144:
	.string	"socket"
.LASF8:
	.string	"signed char"
.LASF56:
	.string	"_IO_FILE"
.LASF102:
	.string	"seg_next"
.LASF149:
	.string	"so_urgc"
.LASF187:
	.string	"ex_addr"
.LASF2:
	.string	"unsigned char"
.LASF209:
	.string	"needoutput"
.LASF155:
	.string	"so_emu"
.LASF176:
	.string	"M_dat"
.LASF152:
	.string	"so_fport"
.LASF223:
	.string	"incr"
.LASF87:
	.string	"th_sport"
.LASF21:
	.string	"u_int8_t"
.LASF119:
	.string	"snd_wnd"
.LASF86:
	.string	"tcphdr"
.LASF216:
	.string	"cont_input"
.LASF97:
	.string	"tcpiphdr"
.LASF132:
	.string	"t_rttmin"
.LASF226:
	.string	"code"
.LASF55:
	.string	"_IO_lock_t"
.LASF123:
	.string	"rcv_adv"
.LASF191:
	.string	"flags"
.LASF27:
	.string	"_IO_read_ptr"
.LASF200:
	.string	"iphlen"
.LASF100:
	.string	"tcpiphdrp_32"
.LASF103:
	.string	"seg_prev"
.LASF60:
	.string	"_pos"
.LASF143:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF184:
	.string	"sb_data"
.LASF38:
	.string	"_markers"
.LASF74:
	.string	"ip_src"
.LASF202:
	.string	"save_ip"
.LASF17:
	.string	"u_int"
.LASF113:
	.string	"t_socket"
.LASF140:
	.string	"requested_s_scale"
.LASF232:
	.string	"special_addr"
.LASF133:
	.string	"max_sndwnd"
.LASF62:
	.string	"in_addr_t"
.LASF126:
	.string	"snd_ssthresh"
.LASF47:
	.string	"_offset"
.LASF197:
	.string	"optlen"
.LASF22:
	.string	"u_int16_t"
.LASF7:
	.string	"long unsigned int"
.LASF105:
	.string	"t_timer"
.LASF41:
	.string	"_flags2"
.LASF231:
	.string	"tcp_iss"
.LASF29:
	.string	"_IO_read_base"
.LASF108:
	.string	"t_dupacks"
.LASF183:
	.string	"sb_rptr"
.LASF54:
	.string	"_unused2"
.LASF227:
	.string	"onxt"
.LASF171:
	.string	"mh_size"
.LASF125:
	.string	"snd_cwnd"
.LASF189:
	.string	"ex_exec"
.LASF228:
	.string	"stdin"
.LASF42:
	.string	"_old_offset"
.LASF85:
	.string	"tcp_seq"
.LASF104:
	.string	"t_state"
.LASF136:
	.string	"t_softerror"
.LASF129:
	.string	"t_rtseq"
.LASF25:
	.string	"long long int"
.LASF181:
	.string	"sb_datalen"
.LASF235:
	.string	"slirp/tcp_input.c"
.LASF69:
	.string	"ip_id"
.LASF32:
	.string	"_IO_write_end"
.LASF124:
	.string	"snd_max"
.LASF206:
	.string	"todrop"
.LASF114:
	.string	"snd_una"
.LASF33:
	.string	"_IO_buf_base"
.LASF134:
	.string	"t_oobflags"
.LASF110:
	.string	"t_force"
.LASF58:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF91:
	.string	"th_x2"
.LASF234:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF19:
	.string	"caddr_t"
.LASF121:
	.string	"rcv_nxt"
.LASF188:
	.string	"ex_fport"
.LASF48:
	.string	"__pad1"
.LASF49:
	.string	"__pad2"
.LASF50:
	.string	"__pad3"
.LASF51:
	.string	"__pad4"
.LASF52:
	.string	"__pad5"
.LASF59:
	.string	"_sbuf"
.LASF122:
	.string	"rcv_up"
.LASF109:
	.string	"t_maxseg"
.LASF214:
	.string	"findso"
.LASF26:
	.string	"_flags"
.LASF147:
	.string	"so_m"
.LASF53:
	.string	"_mode"
.LASF75:
	.string	"ip_dst"
.LASF208:
	.string	"ourfinisacked"
.LASF196:
	.string	"tcp_dooptions"
.LASF145:
	.string	"so_next"
.LASF116:
	.string	"snd_up"
.LASF14:
	.string	"char"
.LASF190:
	.string	"ex_next"
.LASF94:
	.string	"th_win"
.LASF146:
	.string	"so_prev"
.LASF204:
	.string	"tlen"
.LASF192:
	.string	"tcp_reass"
.LASF72:
	.string	"ip_p"
.LASF163:
	.string	"so_snd"
.LASF165:
	.string	"m_hdr"
.LASF168:
	.string	"mh_nextpkt"
.LASF95:
	.string	"th_sum"
.LASF194:
	.string	"delta"
.LASF142:
	.string	"ts_recent_age"
.LASF137:
	.string	"snd_scale"
.LASF24:
	.string	"long long unsigned int"
.LASF199:
	.string	"tcp_input"
.LASF135:
	.string	"t_iobc"
.LASF73:
	.string	"ip_sum"
.LASF11:
	.string	"__off_t"
.LASF139:
	.string	"request_r_scale"
.LASF221:
	.string	"synrx_to_est"
.LASF67:
	.string	"ip_tos"
.LASF195:
	.string	"offer"
.LASF81:
	.string	"ih_pr"
.LASF150:
	.string	"so_faddr"
.LASF218:
	.string	"step6"
.LASF161:
	.string	"so_nqueued"
.LASF178:
	.string	"m_ext_"
.LASF36:
	.string	"_IO_backup_base"
.LASF45:
	.string	"_shortbuf"
.LASF185:
	.string	"ex_list"
.LASF89:
	.string	"th_seq"
.LASF68:
	.string	"ip_len"
.LASF12:
	.string	"__off64_t"
.LASF99:
	.string	"ti_t"
.LASF174:
	.string	"mh_len"
.LASF34:
	.string	"_IO_buf_end"
.LASF101:
	.string	"tcpcb"
.LASF157:
	.string	"so_state"
.LASF106:
	.string	"t_rxtshift"
.LASF77:
	.string	"ipovly"
.LASF9:
	.string	"short int"
.LASF225:
	.string	"ex_ptr"
.LASF23:
	.string	"u_int32_t"
.LASF213:
	.string	"drop"
.LASF212:
	.string	"cont_conn"
.LASF159:
	.string	"so_expire"
.LASF198:
	.string	"tcp_mss"
.LASF131:
	.string	"t_rttvar"
.LASF44:
	.string	"_vtable_offset"
.LASF210:
	.string	"tiwin"
.LASF66:
	.string	"ip_v"
.LASF78:
	.string	"ih_next"
.LASF96:
	.string	"th_urp"
.LASF156:
	.string	"so_type"
.LASF79:
	.string	"ih_prev"
.LASF117:
	.string	"snd_wl1"
.LASF118:
	.string	"snd_wl2"
.LASF71:
	.string	"ip_ttl"
.LASF1:
	.string	"__u_short"
.LASF180:
	.string	"sb_cc"
.LASF205:
	.string	"tiflags"
.LASF233:
	.string	"exec_list"
.LASF28:
	.string	"_IO_read_end"
.LASF151:
	.string	"so_laddr"
.LASF6:
	.string	"__u_long"
.LASF61:
	.string	"uint32_t"
.LASF130:
	.string	"t_srtt"
.LASF40:
	.string	"_fileno"
.LASF162:
	.string	"so_rcv"
.LASF115:
	.string	"snd_nxt"
.LASF211:
	.string	"present"
.LASF160:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF229:
	.string	"stdout"
.LASF70:
	.string	"ip_off"
.LASF31:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"ih_x1"
.LASF158:
	.string	"so_tcpcb"
.LASF215:
	.string	"dropwithreset"
.LASF193:
	.string	"tcp_xmit_timer"
.LASF16:
	.string	"u_short"
.LASF65:
	.string	"ip_hl"
.LASF182:
	.string	"sb_wptr"
.LASF138:
	.string	"rcv_scale"
.LASF177:
	.string	"m_dat_"
.LASF220:
	.string	"close"
.LASF203:
	.string	"optp"
.LASF222:
	.string	"dodata"
.LASF128:
	.string	"t_rtt"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
