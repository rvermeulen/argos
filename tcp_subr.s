	.file	"tcp_subr.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	tcpemu
	.comm	tcpemu,8,8
	.section	.rodata
	.align 32
	.type	tcptos, @object
	.size	tcptos, 78
tcptos:
	.value	0
	.value	20
	.byte	8
	.byte	0
	.value	21
	.value	21
	.byte	16
	.byte	2
	.value	0
	.value	23
	.byte	16
	.byte	0
	.value	0
	.value	80
	.byte	8
	.byte	0
	.value	0
	.value	513
	.byte	16
	.byte	22
	.value	0
	.value	514
	.byte	16
	.byte	24
	.value	0
	.value	544
	.byte	16
	.byte	3
	.value	0
	.value	543
	.byte	16
	.byte	0
	.value	0
	.value	6667
	.byte	8
	.byte	4
	.value	0
	.value	6668
	.byte	8
	.byte	4
	.value	0
	.value	7070
	.byte	16
	.byte	5
	.value	0
	.value	113
	.byte	16
	.byte	7
	.value	0
	.value	0
	.byte	0
	.byte	0
	.text
	.p2align 4,,15
.globl tcp_init
	.type	tcp_init, @function
tcp_init:
.LFB47:
	.file 1 "slirp/tcp_subr.c"
	.loc 1 57 0
	.loc 1 58 0
	movl	$1, tcp_iss(%rip)
	.loc 1 59 0
	movq	$tcb, tcb+8(%rip)
	movq	$tcb, tcb(%rip)
	ret
.LFE47:
	.size	tcp_init, .-tcp_init
	.p2align 4,,15
.globl tcp_template
	.type	tcp_template, @function
tcp_template:
.LFB48:
	.loc 1 72 0
	.loc 1 73 0
	movq	72(%rdi), %rcx
	.loc 1 74 0
	leaq	32(%rdi), %rax
	.loc 1 76 0
	movl	$0, 32(%rdi)
	movl	$0, 4(%rax)
	.loc 1 77 0
	movb	$0, 8(%rax)
	.loc 1 78 0
	movb	$6, 9(%rax)
	.loc 1 79 0
	movw	$5120, 10(%rax)
	.loc 1 80 0
	movl	44(%rcx), %edx
	movl	%edx, 12(%rax)
	.loc 1 81 0
	movl	48(%rcx), %edx
	movl	%edx, 16(%rax)
	.loc 1 82 0
	movzwl	52(%rcx), %edx
	movw	%dx, 20(%rax)
	.loc 1 83 0
	movzwl	54(%rcx), %edx
	.loc 1 85 0
	movl	$0, 24(%rax)
	.loc 1 86 0
	movl	$0, 28(%rax)
	.loc 1 88 0
	movb	$80, 32(%rax)
	.loc 1 89 0
	movb	$0, 33(%rax)
	.loc 1 90 0
	movw	$0, 34(%rax)
	.loc 1 91 0
	movw	$0, 36(%rax)
	.loc 1 83 0
	movw	%dx, 22(%rax)
	.loc 1 92 0
	movw	$0, 38(%rax)
	ret
.LFE48:
	.size	tcp_template, .-tcp_template
	.p2align 4,,15
.globl tcp_respond
	.type	tcp_respond, @function
tcp_respond:
.LFB49:
	.loc 1 115 0
	movq	%rbx, -48(%rsp)
.LCFI0:
	movq	%rbp, -40(%rsp)
.LCFI1:
	movq	%rsi, %rbx
	movq	%r12, -32(%rsp)
.LCFI2:
	movq	%r13, -24(%rsp)
.LCFI3:
	movl	%r8d, %r12d
	movq	%r14, -16(%rsp)
.LCFI4:
	movq	%r15, -8(%rsp)
.LCFI5:
	.loc 1 117 0
	xorl	%r8d, %r8d
	.loc 1 115 0
	subq	$56, %rsp
.LCFI6:
	.loc 1 127 0
	testq	%rdi, %rdi
	.loc 1 115 0
	movq	%rdi, %r15
	movq	%rdx, %rbp
	movl	%ecx, %r13d
	movl	%r9d, %r14d
	.loc 1 127 0
	je	.L6
	.loc 1 128 0
	movq	72(%rdi), %rax
	movl	92(%rax), %r8d
	subl	88(%rax), %r8d
.L6:
	.loc 1 129 0
	testq	%rbp, %rbp
	je	.L26
	.loc 1 146 0
	movq	%rbx, 48(%rbp)
	.loc 1 148 0
	movl	$40, 56(%rbp)
.LBB2:
	.loc 1 151 0
	movl	16(%rbx), %edx
	movl	12(%rbx), %eax
	movl	%edx, 12(%rbx)
	movl	%eax, 16(%rbx)
.LBE2:
.LBB3:
	.loc 1 152 0
	movzwl	22(%rbx), %edx
	movzwl	20(%rbx), %eax
	movw	%dx, 20(%rbx)
	movw	%ax, 22(%rbx)
.L9:
.LBE3:
.LBB4:
	.loc 1 161 0
#APP
	bswap %r12d
#NO_APP
.LBE4:
.LBB5:
	.loc 1 162 0
#APP
	bswap %r13d
#NO_APP
.LBE5:
	.loc 1 166 0
	testq	%r15, %r15
	.loc 1 155 0
	movw	$5120, 10(%rbx)
	.loc 1 157 0
	movl	$40, 56(%rbp)
	.loc 1 159 0
	movl	$0, 4(%rbx)
	movl	$0, (%rbx)
	.loc 1 160 0
	movb	$0, 8(%rbx)
	.loc 1 161 0
	movl	%r12d, 24(%rbx)
	.loc 1 162 0
	movl	%r13d, 28(%rbx)
	.loc 1 164 0
	movb	$80, 32(%rbx)
	.loc 1 165 0
	movb	%r14b, 33(%rbx)
	.loc 1 166 0
	je	.L16
.LBB6:
	.loc 1 167 0
	movzbl	165(%r15), %ecx
	movl	%r8d, %eax
	sarl	%cl, %eax
#APP
	rorw $8, %ax
#NO_APP
.L24:
.LBE6:
	.loc 1 172 0
	movq	%rbp, %rdi
	.loc 1 169 0
	movw	%ax, 34(%rbx)
	.loc 1 170 0
	movw	$0, 38(%rbx)
	.loc 1 171 0
	movw	$0, 36(%rbx)
	.loc 1 172 0
	movl	$40, %esi
	.loc 1 175 0
	andl	$4, %r14d
	.loc 1 172 0
	call	cksum
	.loc 1 176 0
	cmpl	$1, %r14d
	.loc 1 172 0
	movw	%ax, 36(%rbx)
	.loc 1 173 0
	movw	$40, 2(%rbx)
	.loc 1 176 0
	sbbl	%eax, %eax
	.loc 1 180 0
	movq	%rbp, %rsi
	xorl	%edi, %edi
	.loc 1 176 0
	andl	$65, %eax
	decl	%eax
	movb	%al, 8(%rbx)
	.loc 1 181 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	.loc 1 180 0
	jmp	ip_output
	.p2align 4,,7
.L16:
.LBB7:
	.loc 1 169 0
	movl	%r8d, %eax
#APP
	rorw $8, %ax
#NO_APP
	jmp	.L24
.L26:
.LBE7:
	.loc 1 130 0
	movl	%r8d, (%rsp)
	call	m_get
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	(%rsp), %r8d
	je	.L5
	.loc 1 137 0
	movq	48(%rax), %rcx
	.loc 1 140 0
	movl	$16, %r14d
	.loc 1 137 0
	leaq	56(%rcx), %rdx
	movq	%rdx, 48(%rax)
	.loc 1 138 0
	movq	(%rbx), %rax
	movq	%rax, 56(%rcx)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rdx)
	movq	16(%rbx), %rax
	movq	%rax, 16(%rdx)
	movq	24(%rbx), %rax
	movq	%rax, 24(%rdx)
	movq	32(%rbx), %rax
	movq	%rax, 32(%rdx)
	.loc 1 139 0
	movq	48(%rbp), %rbx
	jmp	.L9
.L5:
	.loc 1 181 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE49:
	.size	tcp_respond, .-tcp_respond
	.p2align 4,,15
.globl tcp_newtcpcb
	.type	tcp_newtcpcb, @function
tcp_newtcpcb:
.LFB50:
	.loc 1 191 0
	pushq	%rbp
.LCFI7:
	movq	%rdi, %rbp
	.loc 1 194 0
	movl	$184, %edi
	.loc 1 191 0
	pushq	%rbx
.LCFI8:
	subq	$8, %rsp
.LCFI9:
	.loc 1 194 0
	call	malloc
	movq	%rax, %rbx
	.loc 1 196 0
	xorl	%eax, %eax
	.loc 1 195 0
	testq	%rbx, %rbx
	je	.L27
	.loc 1 198 0
	movl	$184, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset
	.loc 1 199 0
	movl	%ebx, 4(%rbx)
	movl	%ebx, (%rbx)
	.loc 1 224 0
	movq	%rbx, %rax
	.loc 1 200 0
	movw	$1460, 24(%rbx)
	.loc 1 202 0
	movw	$0, 28(%rbx)
	.loc 1 203 0
	movq	%rbp, 72(%rbx)
	.loc 1 210 0
	movw	$0, 148(%rbx)
	.loc 1 211 0
	movw	$24, 150(%rbx)
	.loc 1 212 0
	movw	$2, 152(%rbx)
	.loc 1 214 0
	movw	$12, 20(%rbx)
	.loc 1 218 0
	movl	$1073725440, 132(%rbx)
	.loc 1 219 0
	movl	$1073725440, 136(%rbx)
	.loc 1 220 0
	movw	$0, 8(%rbx)
	.loc 1 222 0
	movq	%rbx, 64(%rbp)
.L27:
	.loc 1 225 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE50:
	.size	tcp_newtcpcb, .-tcp_newtcpcb
	.p2align 4,,15
.globl tcp_close
	.type	tcp_close, @function
tcp_close:
.LFB52:
	.loc 1 266 0
	pushq	%r13
.LCFI10:
	pushq	%r12
.LCFI11:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI12:
	pushq	%rbx
.LCFI13:
	subq	$8, %rsp
.LCFI14:
	.loc 1 275 0
	mov	(%rdi), %ebp
	.loc 1 268 0
	movq	72(%rdi), %r13
	jmp	.L40
	.p2align 4,,7
.L41:
	.loc 1 277 0
	mov	(%rbp), %ebp
	.loc 1 278 0
	mov	4(%rbp), %edi
	mov	20(%rdi), %ebx
	.loc 1 279 0
	call	remque_32
	.loc 1 280 0
	movq	%rbx, %rdi
	call	m_free
.L40:
	cmpq	%r12, %rbp
	jne	.L41
	.loc 1 287 0
	movq	%r12, %rdi
	call	free
	.loc 1 289 0
	movq	%r13, %rdi
	.loc 1 288 0
	movq	$0, 64(%r13)
	.loc 1 289 0
	call	soisfdisconnected
	.loc 1 291 0
	movq	tcp_last_so(%rip), %rdx
	.loc 1 292 0
	movl	$tcb, %eax
	cmpq	%rdx, %r13
	cmovne	%rdx, %rax
	movq	%rax, tcp_last_so(%rip)
	.loc 1 293 0
	movl	16(%r13), %edi
	call	close
	.loc 1 294 0
	leaq	88(%r13), %rdi
	call	sbfree
	.loc 1 295 0
	leaq	120(%r13), %rdi
	call	sbfree
	.loc 1 296 0
	movq	%r13, %rdi
	call	sofree
	.loc 1 299 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE52:
	.size	tcp_close, .-tcp_close
	.p2align 4,,15
.globl tcp_drop
	.type	tcp_drop, @function
tcp_drop:
.LFB51:
	.loc 1 233 0
	pushq	%rbx
.LCFI15:
	.loc 1 244 0
	cmpw	$2, 8(%rdi)
	.loc 1 233 0
	movq	%rdi, %rbx
	.loc 1 244 0
	jg	.L47
	.loc 1 254 0
	movq	%rbx, %rdi
	.loc 1 255 0
	popq	%rbx
	.loc 1 254 0
	jmp	tcp_close
	.p2align 4,,7
.L47:
	.loc 1 245 0
	movw	$0, 8(%rdi)
	.loc 1 246 0
	call	tcp_output
	.loc 1 254 0
	movq	%rbx, %rdi
	.loc 1 255 0
	popq	%rbx
	.loc 1 254 0
	jmp	tcp_close
.LFE51:
	.size	tcp_drop, .-tcp_drop
	.p2align 4,,15
.globl tcp_sockclosed
	.type	tcp_sockclosed, @function
tcp_sockclosed:
.LFB53:
	.loc 1 342 0
	pushq	%rbx
.LCFI16:
	.loc 1 347 0
	movswl	8(%rdi),%eax
	.loc 1 342 0
	movq	%rdi, %rbx
	.loc 1 347 0
	cmpl	$5, %eax
	ja	.L49
	mov	%eax, %eax
	jmp	*.L56(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L56:
	.quad	.L52
	.quad	.L52
	.quad	.L52
	.quad	.L54
	.quad	.L54
	.quad	.L55
	.text
	.p2align 4,,7
.L55:
	.loc 1 362 0
	movw	$8, 8(%rdi)
	.p2align 4,,7
.L49:
	.loc 1 366 0
	testq	%rbx, %rbx
	je	.L48
.L60:
	cmpw	$8, 8(%rbx)
	.p2align 4,,3
	jg	.L59
	.loc 1 369 0
	movq	%rbx, %rdi
	.loc 1 370 0
	popq	%rbx
	.loc 1 369 0
	jmp	tcp_output
	.p2align 4,,7
.L52:
	.loc 1 352 0
	movw	$0, 8(%rdi)
	.loc 1 353 0
	call	tcp_close
	movq	%rax, %rbx
	.loc 1 366 0
	testq	%rbx, %rbx
	jne	.L60
	.p2align 4,,7
.L48:
	.loc 1 370 0
	popq	%rbx
	.p2align 4,,1
	ret
	.p2align 4,,7
.L54:
	.loc 1 358 0
	movw	$6, 8(%rdi)
	.p2align 4,,5
	jmp	.L49
	.p2align 4,,7
.L59:
	.loc 1 367 0
	movq	72(%rbx), %rdi
	.p2align 4,,7
	call	soisfdisconnected
	.loc 1 369 0
	movq	%rbx, %rdi
	.loc 1 370 0
	popq	%rbx
	.loc 1 369 0
	jmp	tcp_output
.LFE53:
	.size	tcp_sockclosed, .-tcp_sockclosed
	.p2align 4,,15
.globl tcp_fconnect
	.type	tcp_fconnect, @function
tcp_fconnect:
.LFB54:
	.loc 1 384 0
	movq	%rbx, -24(%rsp)
.LCFI17:
	movq	%rbp, -16(%rsp)
.LCFI18:
	.loc 1 390 0
	xorl	%edx, %edx
	.loc 1 384 0
	movq	%r12, -8(%rsp)
.LCFI19:
	.loc 1 390 0
	movl	$1, %esi
	.loc 1 384 0
	subq	$56, %rsp
.LCFI20:
	.loc 1 384 0
	movq	%rdi, %r12
	.loc 1 390 0
	movl	$2, %edi
	call	socket
	testl	%eax, %eax
	movl	%eax, %ebp
	movl	%eax, 16(%r12)
	movl	%eax, %ebx
	js	.L62
.LBB8:
	.loc 1 394 0
	movl	%eax, %edi
	call	fd_nonblock
	.loc 1 396 0
	leaq	12(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 395 0
	movl	$1, 12(%rsp)
	.loc 1 396 0
	call	setsockopt
	.loc 1 398 0
	leaq	12(%rsp), %rcx
	movl	$10, %edx
	movl	$4, %r8d
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 397 0
	movl	$1, 12(%rsp)
	.loc 1 398 0
	call	setsockopt
	.loc 1 401 0
	movl	44(%r12), %edx
	.loc 1 400 0
	movw	$2, 16(%rsp)
	.loc 1 401 0
	movl	%edx, %eax
	andl	$16777215, %eax
	cmpl	special_addr(%rip), %eax
	je	.L74
	.loc 1 413 0
	movl	%edx, 20(%rsp)
.L72:
	.loc 1 414 0
	movzwl	52(%r12), %eax
	.loc 1 420 0
	leaq	16(%rsp), %rsi
	movl	%ebp, %edi
	movl	$16, %edx
	.loc 1 414 0
	movw	%ax, 18(%rsp)
	.loc 1 420 0
	call	connect
	.loc 1 426 0
	movq	%r12, %rdi
	.loc 1 420 0
	movl	%eax, %ebx
	.loc 1 426 0
	call	soisfconnecting
.L62:
.LBE8:
	.loc 1 430 0
	movl	%ebx, %eax
	movq	40(%rsp), %rbp
	movq	32(%rsp), %rbx
	movq	48(%rsp), %r12
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L74:
.LBB9:
	.loc 1 403 0
#APP
	bswap %edx
#NO_APP
	cmpb	$3, %dl
	je	.L75
	.loc 1 409 0
	movl	loopback_addr(%rip), %eax
	movl	%eax, 20(%rsp)
	jmp	.L72
.L75:
	.loc 1 405 0
	movl	dns_addr(%rip), %eax
	.loc 1 409 0
	movl	%eax, 20(%rsp)
	jmp	.L72
.LBE9:
.LFE54:
	.size	tcp_fconnect, .-tcp_fconnect
	.p2align 4,,15
.globl tcp_tos
	.type	tcp_tos, @function
tcp_tos:
.LFB57:
	.loc 1 573 0
	.loc 1 574 0
	xorl	%r8d, %r8d
	.loc 1 583 0
	cmpb	$0, tcptos+4(%rip)
	je	.L99
	xorl	%ecx, %ecx
	.p2align 4,,7
.L86:
	.loc 1 578 0
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rax,%rax), %rsi
	movzwl	tcptos+2(%rsi), %edx
	testw	%dx, %dx
	je	.L81
.LBB10:
	movzwl	52(%rdi), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE10:
	cmpw	%dx, %ax
	je	.L80
.L81:
	movzwl	tcptos(%rsi), %edx
	testw	%dx, %dx
	je	.L79
.LBB11:
	.loc 1 579 0
	movzwl	54(%rdi), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE11:
	cmpw	%dx, %ax
	je	.L80
.L79:
	.loc 1 583 0
	incl	%r8d
	movslq	%r8d,%rcx
	leaq	(%rcx,%rcx,2), %rax
	cmpb	$0, tcptos+4(%rax,%rax)
	jne	.L86
.L99:
	.loc 1 587 0
	movq	tcpemu(%rip), %rdx
	jmp	.L102
	.p2align 4,,7
.L103:
	.loc 1 588 0
	movzwl	2(%rdx), %ecx
	testw	%cx, %cx
	je	.L92
.LBB12:
	movzwl	52(%rdi), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE12:
	cmpw	%cx, %ax
	je	.L91
.L92:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	je	.L89
.LBB13:
	.loc 1 589 0
	movzwl	54(%rdi), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE13:
	cmpw	%cx, %ax
	je	.L91
.L89:
	.loc 1 587 0
	movq	8(%rdx), %rdx
.L102:
	testq	%rdx, %rdx
	jne	.L103
	.loc 1 595 0
	xorl	%eax, %eax
	.loc 1 596 0
	ret
.L91:
	.loc 1 590 0
	movzbl	5(%rdx), %eax
	movb	%al, 57(%rdi)
	.loc 1 591 0
	movzbl	4(%rdx), %eax
	ret
.L80:
	.loc 1 580 0
	leaq	(%rcx,%rcx,2), %rax
	addq	%rax, %rax
	movzbl	tcptos+5(%rax), %edx
	.loc 1 581 0
	movzbl	tcptos+4(%rax), %eax
	.loc 1 580 0
	movb	%dl, 57(%rdi)
	.loc 1 581 0
	ret
.LFE57:
	.size	tcp_tos, .-tcp_tos
	.p2align 4,,15
.globl tcp_attach
	.type	tcp_attach, @function
tcp_attach:
.LFB56:
	.loc 1 534 0
	pushq	%rbx
.LCFI21:
	.loc 1 534 0
	movq	%rdi, %rbx
	.loc 1 535 0
	call	tcp_newtcpcb
	testq	%rax, %rax
	movq	%rax, 64(%rbx)
	.loc 1 536 0
	movl	$-1, %edx
	.loc 1 535 0
	je	.L104
	.loc 1 538 0
	movl	$tcb, %esi
	movq	%rbx, %rdi
	call	slirp_insque
	.loc 1 540 0
	xorl	%edx, %edx
.L104:
	.loc 1 541 0
	popq	%rbx
	movl	%edx, %eax
	ret
.LFE56:
	.size	tcp_attach, .-tcp_attach
	.p2align 4,,15
.globl tcp_connect
	.type	tcp_connect, @function
tcp_connect:
.LFB55:
	.loc 1 447 0
	pushq	%r12
.LCFI22:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI23:
	pushq	%rbx
.LCFI24:
	.loc 1 463 0
	movq	%rdi, %rbx
	.loc 1 447 0
	subq	$32, %rsp
.LCFI25:
	.loc 1 450 0
	movl	$16, 12(%rsp)
	.loc 1 461 0
	testb	$2, 61(%rdi)
	je	.L117
.L108:
	.loc 1 478 0
	movq	64(%rbx), %rdi
	xorl	%esi, %esi
	call	tcp_mss
	.loc 1 480 0
	movl	16(%r12), %edi
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	call	accept
	testl	%eax, %eax
	movl	%eax, %ebp
	js	.L118
	.loc 1 484 0
	movl	%eax, %edi
	call	fd_nonblock
	.loc 1 486 0
	leaq	8(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 485 0
	movl	$1, 8(%rsp)
	.loc 1 486 0
	call	setsockopt
	.loc 1 488 0
	leaq	8(%rsp), %rcx
	movl	$4, %r8d
	movl	$10, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	.loc 1 487 0
	movl	$1, 8(%rsp)
	.loc 1 488 0
	call	setsockopt
	.loc 1 490 0
	leaq	8(%rsp), %rcx
	movl	$4, %r8d
	movl	$1, %edx
	movl	$6, %esi
	movl	%ebp, %edi
	.loc 1 489 0
	movl	$1, 8(%rsp)
	.loc 1 490 0
	call	setsockopt
	.loc 1 492 0
	movzwl	18(%rsp), %eax
	movw	%ax, 52(%rbx)
	.loc 1 493 0
	movl	20(%rsp), %eax
	.loc 1 495 0
	testl	%eax, %eax
	.loc 1 493 0
	movl	%eax, 44(%rbx)
	.loc 1 495 0
	jne	.L119
.L113:
	.loc 1 499 0
	testb	$2, 61(%r12)
	.loc 1 496 0
	movl	alias_addr(%rip), %eax
	movl	%eax, 44(%rbx)
	.loc 1 499 0
	jne	.L120
.L114:
	.loc 1 506 0
	movq	%rbx, %rdi
	.loc 1 504 0
	movl	%ebp, 16(%rbx)
	.loc 1 506 0
	call	tcp_tos
	movb	%al, 56(%rbx)
	.loc 1 507 0
	movq	64(%rbx), %rbx
	.loc 1 509 0
	movq	%rbx, %rdi
	call	tcp_template
	.loc 1 520 0
	movw	$2, 8(%rbx)
	.loc 1 521 0
	movw	$150, 14(%rbx)
	.loc 1 525 0
	movq	%rbx, %rdi
	.loc 1 522 0
	movl	tcp_iss(%rip), %eax
	movl	%eax, 100(%rbx)
	.loc 1 523 0
	addl	$64000, tcp_iss(%rip)
	.loc 1 524 0
	movl	100(%rbx), %eax
	movl	%eax, 88(%rbx)
	movl	%eax, 128(%rbx)
	movl	%eax, 84(%rbx)
	movl	%eax, 80(%rbx)
	.loc 1 525 0
	call	tcp_output
.L106:
	.loc 1 526 0
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L119:
	.loc 1 495 0
	cmpl	loopback_addr(%rip), %eax
	je	.L113
	.loc 1 499 0
	testb	$2, 61(%r12)
	je	.L114
.L120:
	.loc 1 500 0
	movl	16(%rbx), %edi
	call	close
	.loc 1 501 0
	movl	$1, 60(%rbx)
	.p2align 4,,2
	jmp	.L114
	.p2align 4,,7
.L117:
	.loc 1 465 0
	call	socreate
	testq	%rax, %rax
	movq	%rax, %rbx
	.p2align 4,,2
	je	.L121
	.loc 1 470 0
	movq	%rax, %rdi
	call	tcp_attach
	testl	%eax, %eax
	js	.L122
	.loc 1 474 0
	movl	48(%r12), %eax
	movl	%eax, 48(%rbx)
	.loc 1 475 0
	movzwl	54(%r12), %eax
	movw	%ax, 54(%rbx)
	jmp	.L108
	.p2align 4,,7
.L118:
	.loc 1 481 0
	movq	64(%rbx), %rdi
	call	tcp_close
	.loc 1 526 0
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L121:
	.loc 1 467 0
	movl	16(%r12), %edi
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	call	accept
	movl	%eax, %edi
	call	close
	jmp	.L106
.L122:
	.loc 1 471 0
	movq	%rbx, %rdi
	call	free
	.p2align 4,,6
	jmp	.L106
.LFE55:
	.size	tcp_connect, .-tcp_connect
	.local	ra.0
	.comm	ra.0,4,4
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%u%*[ ,]%u"
.LC1:
	.string	"%d,%d\r\n"
.LC2:
	.string	"ORT"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"ORT %u,%u,%u,%u,%u,%u\r\n%256[^\177]"
	.section	.rodata.str1.1
.LC5:
	.string	""
.LC4:
	.string	"ORT %d,%d,%d,%d,%d,%d\r\n%s"
.LC9:
	.string	"%d"
.LC10:
	.string	"DCC"
.LC11:
	.string	"DCC CHAT %256s %u %u"
.LC13:
	.string	"DCC SEND %256s %u %u %u"
.LC15:
	.string	"DCC MOVE %256s %u %u %u"
.LC16:
	.string	"DCC MOVE %s %lu %u %u%c\n"
.LC12:
	.string	"DCC CHAT chat %lu %u%c\n"
.LC6:
	.string	"27 Entering"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"27 Entering Passive Mode (%u,%u,%u,%u,%u,%u)\r\n%256[^\177]"
	.align 8
.LC8:
	.string	"27 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\r\n%s"
	.section	.rodata.str1.1
.LC14:
	.string	"DCC SEND %s %lu %u %u%c\n"
	.text
	.p2align 4,,15
.globl tcp_emu
	.type	tcp_emu, @function
tcp_emu:
.LFB58:
	.loc 1 630 0
	movq	%rbx, -40(%rsp)
.LCFI26:
	movq	%rbp, -32(%rsp)
.LCFI27:
	movq	%rdi, %rbx
	movq	%r12, -24(%rsp)
.LCFI28:
	movq	%r13, -16(%rsp)
.LCFI29:
	movq	%rsi, %rbp
	movq	%r14, -8(%rsp)
.LCFI30:
	subq	$392, %rsp
.LCFI31:
	.loc 1 641 0
	movzbl	57(%rdi), %eax
	cmpl	$7, %eax
	ja	.L246
	mov	%eax, %eax
	jmp	*.L247(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L247:
	.quad	.L246
	.quad	.L246
	.quad	.L141
	.quad	.L169
	.quad	.L180
	.quad	.L214
	.quad	.L246
	.quad	.L125
	.text
	.p2align 4,,7
.L246:
.LBB14:
	.loc 1 1232 0
	movb	$0, 57(%rbx)
.L263:
	.loc 1 1233 0
	movl	$1, %eax
.L123:
.LBE14:
	.loc 1 1235 0
	movq	352(%rsp), %rbx
	movq	360(%rsp), %rbp
	movq	368(%rsp), %r12
	movq	376(%rsp), %r13
	movq	384(%rsp), %r14
	addq	$392, %rsp
	ret
.L125:
.LBB15:
.LBB16:
	.loc 1 653 0
	leaq	88(%rdi), %r12
	.loc 1 652 0
	movl	$16, 68(%rsp)
	.loc 1 655 0
	movslq	56(%rsi),%rdx
	movq	48(%rsi), %rsi
	movq	8(%r12), %rdi
	call	memcpy
	.loc 1 656 0
	movslq	56(%rbp),%rax
	.loc 1 659 0
	movl	$13, %esi
	.loc 1 656 0
	addq	%rax, 8(%r12)
	.loc 1 657 0
	movslq	56(%rbp),%rax
	addq	%rax, 16(%r12)
	.loc 1 658 0
	movslq	56(%rbp),%rdx
	movq	48(%rbp), %rax
	movb	$0, (%rax,%rdx)
	.loc 1 659 0
	movq	48(%rbp), %r13
	movq	%r13, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L267
.L127:
	.loc 1 660 0
	movq	24(%r12), %rdi
	leaq	76(%rsp), %rcx
	leaq	72(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC0, %esi
	call	sscanf
	cmpl	$2, %eax
	je	.L268
.L254:
	movl	72(%rsp), %r11d
	movl	76(%rsp), %r10d
.L128:
	.loc 1 676 0
	movq	24(%r12), %rdi
	movl	%r11d, %edx
	movl	%r10d, %ecx
	movl	$.LC1, %esi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 677 0
	movq	24(%r12), %rdx
	.loc 1 676 0
	movl	%eax, (%r12)
	.loc 1 678 0
	mov	%eax, %eax
	.loc 1 677 0
	movq	%rdx, 16(%r12)
	.loc 1 678 0
	addq	%rax, %rdx
	movq	%rdx, 8(%r12)
.L126:
	.loc 1 680 0
	movq	%rbp, %rdi
	call	m_free
	.loc 1 681 0
	xorl	%eax, %eax
	jmp	.L123
.L141:
.LBE16:
	.loc 1 981 0
	movslq	56(%rsi),%rdx
	movq	48(%rsi), %rax
	movb	$0, (%rax,%rdx)
	.loc 1 982 0
	movq	48(%rsi), %rbx
	movl	$.LC2, %esi
	movq	%rbx, %rdi
	call	strstr
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L142
	.loc 1 986 0
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r14
	leaq	56(%rsp), %r9
	leaq	52(%rsp), %r8
	leaq	76(%rsp), %rcx
	leaq	72(%rsp), %rdx
	movq	%rax, 8(%rsp)
	leaq	60(%rsp), %rax
	movl	$.LC3, %esi
	movq	%r12, %rdi
	movq	%r14, 16(%rsp)
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	call	sscanf
	movl	%eax, %r13d
	.loc 1 989 0
	movl	$1, %eax
	.loc 1 988 0
	cmpl	$5, %r13d
	jle	.L123
.LBB17:
	.loc 1 991 0
	movl	72(%rsp), %esi
	movl	76(%rsp), %eax
.LBE17:
	.loc 1 994 0
	xorl	%edi, %edi
.LBB18:
	.loc 1 992 0
	movl	60(%rsp), %edx
.LBE18:
	.loc 1 994 0
	movl	$512, %ecx
.LBB19:
	.loc 1 991 0
	sall	$16, %eax
	sall	$24, %esi
	orl	%eax, %esi
	movl	52(%rsp), %eax
.LBE19:
.LBB20:
	.loc 1 992 0
	sall	$8, %edx
	orl	64(%rsp), %edx
#APP
	rorw $8, %dx
#NO_APP
.LBE20:
.LBB21:
	.loc 1 991 0
	sall	$8, %eax
.LBE21:
	.loc 1 992 0
	movzwl	%dx, %edx
.LBB22:
	.loc 1 991 0
	orl	%eax, %esi
.LBE22:
	.loc 1 992 0
	movl	%edx, 48(%rsp)
.LBB23:
	.loc 1 991 0
	orl	56(%rsp), %esi
#APP
	bswap %esi
#NO_APP
.LBE23:
	movl	%esi, 44(%rsp)
	.loc 1 994 0
	call	solisten
	movq	%rax, %rbx
	.loc 1 995 0
	movl	$1, %eax
	.loc 1 994 0
	testq	%rbx, %rbx
	je	.L123
.LBB24:
	.loc 1 997 0
	movzwl	52(%rbx), %ecx
.LBE24:
	.loc 1 1009 0
	movl	%r12d, %r9d
.LBB25:
	.loc 1 997 0
#APP
	rorw $8, %cx
#NO_APP
.LBE25:
	movzwl	%cx, %ecx
	.loc 1 999 0
	movl	%ecx, %edi
	.loc 1 1000 0
	andl	$255, %ecx
	.loc 1 999 0
	shrl	$8, %edi
	.loc 1 1000 0
	movl	%ecx, 64(%rsp)
	.loc 1 999 0
	movl	%edi, 60(%rsp)
.LBB26:
	.loc 1 1002 0
	movl	44(%rbx), %edx
#APP
	bswap %edx
#NO_APP
.LBE26:
	.loc 1 1005 0
	movl	%edx, %eax
	.loc 1 1004 0
	movl	%edx, %r11d
	.loc 1 1006 0
	movzbl	%dh, %esi
	.loc 1 1005 0
	shrl	$16, %eax
	.loc 1 1002 0
	movl	%edx, 44(%rsp)
	.loc 1 1004 0
	shrl	$24, %r11d
	.loc 1 1005 0
	movzbl	%al,%r10d
	.loc 1 1007 0
	andl	$255, %edx
	.loc 1 1006 0
	movl	%esi, 52(%rsp)
	.loc 1 1007 0
	movl	%edx, 56(%rsp)
	.loc 1 1004 0
	movl	%r11d, 72(%rsp)
	.loc 1 1010 0
	movl	$.LC5, %eax
	.loc 1 1005 0
	movl	%r10d, 76(%rsp)
	.loc 1 1009 0
	subl	48(%rbp), %r9d
	.loc 1 1010 0
	cmpl	$7, %r13d
	cmove	%r14, %rax
	movl	%esi, %r8d
	movl	$.LC4, %esi
	.loc 1 1009 0
	movl	%r9d, 56(%rbp)
	.loc 1 1010 0
	movl	%ecx, 8(%rsp)
	movl	%edx, %r9d
	movq	%rax, 16(%rsp)
	movl	%edi, (%rsp)
	movl	%r10d, %ecx
	movl	%r11d, %edx
.L265:
	.loc 1 1041 0
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	sprintf
	addl	%eax, 56(%rbp)
	jmp	.L263
.L169:
	.loc 1 1056 0
	movb	$0, 57(%rdi)
	.loc 1 1057 0
	movl	$0, 48(%rsp)
	xorl	%edi, %edi
	movl	56(%rsi), %r9d
	leal	-1(%r9), %eax
	cmpl	$0, %eax
	jle	.L256
	movq	48(%rsi), %rsi
	movl	%eax, %r8d
	.p2align 4,,7
.L174:
	.loc 1 1058 0
	movslq	%edi,%rcx
	movzbl	(%rsi,%rcx), %eax
	subl	$48, %eax
	cmpb	$9, %al
	ja	.L263
	.loc 1 1060 0
	movl	48(%rsp), %edx
	movl	$10, %eax
	.loc 1 1057 0
	incl	%edi
	.loc 1 1060 0
	imull	%eax, %edx
	.loc 1 1057 0
	cmpl	%edi, %r8d
	.loc 1 1060 0
	movl	%edx, 48(%rsp)
	.loc 1 1061 0
	movsbl	(%rsi,%rcx),%eax
	leal	-48(%rax,%rdx), %eax
	movl	%eax, 48(%rsp)
	.loc 1 1057 0
	jg	.L174
.L250:
	.loc 1 1063 0
	movslq	%r9d,%rax
	movl	48(%rsp), %ecx
	cmpb	$0, -1(%rsi,%rax)
	sete	%dl
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	testl	%edx, %eax
	je	.L263
	.loc 1 1064 0
	movl	48(%rbx), %esi
.LBB27:
	movl	%ecx, %edx
.LBE27:
	xorl	%edi, %edi
.LBB28:
#APP
	rorw $8, %dx
#NO_APP
.LBE28:
	movl	$512, %ecx
	movzwl	%dx, %edx
	call	solisten
	testq	%rax, %rax
	je	.L263
	.loc 1 1065 0
	movq	48(%rbp), %rdi
.LBB29:
	movzwl	52(%rax), %edx
.LBE29:
	movl	$.LC9, %esi
.LBB30:
#APP
	rorw $8, %dx
#NO_APP
.LBE30:
	xorl	%eax, %eax
	movzwl	%dx, %edx
	call	sprintf
	leal	1(%rax), %r9d
	movl	%r9d, 56(%rbp)
	jmp	.L263
.L180:
	.loc 1 1072 0
	movslq	56(%rsi),%rax
	movq	48(%rsi), %rdx
	movb	$0, (%rdx,%rax)
	.loc 1 1073 0
	movq	48(%rsi), %rdi
	movl	$.LC10, %esi
	call	strstr
	movq	%rax, %r12
	.loc 1 1074 0
	movl	$1, %eax
	.loc 1 1073 0
	testq	%r12, %r12
	je	.L123
	.loc 1 1077 0
	leaq	96(%rsp), %r14
	leaq	48(%rsp), %r8
	leaq	44(%rsp), %rcx
	xorl	%eax, %eax
	movl	$.LC11, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	call	sscanf
	cmpl	$3, %eax
	je	.L269
	.loc 1 1085 0
	leaq	72(%rsp), %r9
	leaq	48(%rsp), %r8
	leaq	44(%rsp), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdx
	movl	$.LC13, %esi
	movq	%r12, %rdi
	call	sscanf
	cmpl	$4, %eax
	je	.L270
	.loc 1 1093 0
	leaq	72(%rsp), %r9
	leaq	48(%rsp), %r8
	leaq	44(%rsp), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdx
	movl	$.LC15, %esi
	movq	%r12, %rdi
	call	sscanf
	cmpl	$4, %eax
	jne	.L263
.LBB31:
	.loc 1 1094 0
	movl	48(%rsp), %edx
.LBE31:
	xorl	%edi, %edi
	movl	$512, %ecx
.LBB32:
#APP
	rorw $8, %dx
#NO_APP
.LBE32:
	movzwl	%dx, %edx
.LBB33:
	movl	44(%rsp), %esi
#APP
	bswap %esi
#NO_APP
.LBE33:
	call	solisten
	movq	%rax, %rbx
	.loc 1 1095 0
	movl	$1, %eax
	.loc 1 1094 0
	testq	%rbx, %rbx
	je	.L123
	.loc 1 1097 0
	movl	%r12d, %r9d
	subl	48(%rbp), %r9d
	.loc 1 1099 0
	movq	%r14, %rdx
	movl	$.LC16, %esi
	.loc 1 1097 0
	movl	%r9d, 56(%rbp)
	.loc 1 1099 0
	movl	72(%rsp), %r9d
.LBB34:
	.loc 1 1100 0
	movzwl	52(%rbx), %r8d
.LBE34:
.LBB35:
	.loc 1 1099 0
	movl	44(%rbx), %ecx
.LBE35:
.LBB36:
	.loc 1 1100 0
#APP
	rorw $8, %r8w
#NO_APP
.LBE36:
.LBB37:
	.loc 1 1099 0
#APP
	bswap %ecx
#NO_APP
.LBE37:
	movl	$1, (%rsp)
	mov	%ecx, %ecx
	movzwl	%r8w, %r8d
.L260:
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 1041 0
	addl	%eax, 56(%rbp)
	jmp	.L263
.L214:
	.loc 1 1226 0
	movslq	56(%rsi),%rax
	.loc 1 1141 0
	movq	48(%rsi), %r12
	.loc 1 1226 0
	leaq	(%r12,%rax), %rax
	cmpq	%r12, %rax
	jbe	.L263
	leaq	40(%rsp), %rsi
	.p2align 4,,7
.L245:
.LBB38:
	.loc 1 1148 0
	movb	$78, 1(%rsi)
	.loc 1 1149 0
	movb	$65, 2(%rsi)
	.loc 1 1150 0
	movb	$0, 3(%rsi)
	.loc 1 1152 0
	movl	ra.0(%rip), %ecx
	.loc 1 1147 0
	movb	$80, 40(%rsp)
	.loc 1 1152 0
	cmpl	$6, %ecx
	ja	.L243
	mov	%ecx, %eax
	jmp	*.L244(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L244:
	.quad	.L220
	.quad	.L222
	.quad	.L220
	.quad	.L220
	.quad	.L226
	.quad	.L227
	.quad	.L230
	.text
	.p2align 4,,7
.L243:
	.loc 1 1224 0
	movl	$0, ra.0(%rip)
	xorl	%ecx, %ecx
.L217:
	.loc 1 1226 0
	leal	1(%rcx), %eax
	movl	%eax, ra.0(%rip)
.L215:
.LBE38:
	movslq	56(%rbp),%rax
	addq	48(%rbp), %rax
	cmpq	%r12, %rax
	ja	.L245
	jmp	.L263
.L220:
.LBB39:
	.loc 1 1156 0
	movzbl	(%r12), %eax
	movslq	%ecx,%rdx
	incq	%r12
	cmpb	(%rsi,%rdx), %al
.L264:
	.loc 1 1170 0
	je	.L217
	.loc 1 1171 0
	movl	$0, ra.0(%rip)
	jmp	.L215
.L222:
	.loc 1 1166 0
	movzbl	(%r12), %edx
	cmpb	$80, %dl
	je	.L271
	.loc 1 1170 0
	movslq	%ecx,%rax
	incq	%r12
	cmpb	(%rsi,%rax), %dl
	jmp	.L264
.L230:
	.loc 1 1199 0
	movzbl	(%r12), %eax
	movzbl	1(%r12), %edx
	sall	$8, %eax
	addl	%edx, %eax
	.loc 1 1201 0
	cmpl	$6969, %eax
	.loc 1 1199 0
	movl	%eax, 48(%rsp)
	.loc 1 1201 0
	movl	%eax, %edx
	ja	.L231
	.loc 1 1202 0
	leal	256(%rdx), %eax
	movl	%eax, 48(%rsp)
	movl	%eax, %edx
.L231:
	.loc 1 1203 0
	leal	-6970(%rdx), %eax
	.loc 1 1207 0
	movl	$6970, %ebp
	.loc 1 1203 0
	cmpl	$200, %eax
	jbe	.L241
	jmp	.L263
	.p2align 4,,7
.L272:
	.loc 1 1207 0
	incl	%ebp
	cmpw	$7070, %bp
	ja	.L234
	movl	48(%rsp), %edx
.L241:
	.loc 1 1208 0
	movl	48(%rbx), %esi
.LBB40:
	movl	%ebp, %edi
.LBE40:
	movl	$512, %ecx
.LBB41:
	.loc 1 1210 0
#APP
	rorw $8, %dx
#NO_APP
.LBE41:
.LBB42:
	.loc 1 1208 0
#APP
	rorw $8, %di
#NO_APP
.LBE42:
	.loc 1 1210 0
	movzwl	%dx, %edx
	.loc 1 1208 0
	movzwl	%di, %edi
	call	udp_listen
	testq	%rax, %rax
	je	.L272
.L234:
	.loc 1 1216 0
	cmpw	$7071, %bp
	movl	$0, %eax
	cmove	%eax, %ebp
	.loc 1 1217 0
	movl	%ebp, %eax
	.loc 1 1218 0
	movb	%bpl, 1(%r12)
	.loc 1 1217 0
	shrw	$8, %ax
	movb	%al, (%r12)
	.loc 1 1219 0
	movl	$0, ra.0(%rip)
	jmp	.L263
.L227:
	.loc 1 1190 0
	cmpb	$2, 1(%r12)
	leaq	8(%r12), %rdx
	leaq	4(%r12), %rax
	movq	%rdx, %r12
	cmovne	%rax, %r12
	jmp	.L217
.L226:
	.loc 1 1180 0
	incq	%r12
	jmp	.L217
.L269:
.LBE39:
.LBB43:
	.loc 1 1078 0
	movl	48(%rsp), %edx
.LBE43:
	xorl	%edi, %edi
	movl	$512, %ecx
.LBB44:
#APP
	rorw $8, %dx
#NO_APP
.LBE44:
	movzwl	%dx, %edx
.LBB45:
	movl	44(%rsp), %esi
#APP
	bswap %esi
#NO_APP
.LBE45:
	call	solisten
	movq	%rax, %rbx
	.loc 1 1079 0
	movl	$1, %eax
	.loc 1 1078 0
	testq	%rbx, %rbx
	je	.L123
	.loc 1 1081 0
	movl	%r12d, %r9d
	subl	48(%rbp), %r9d
	.loc 1 1083 0
	movl	$1, %r8d
	movl	$.LC12, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	.loc 1 1081 0
	movl	%r9d, 56(%rbp)
.LBB46:
	.loc 1 1084 0
	movzwl	52(%rbx), %ecx
.LBE46:
.LBB47:
	.loc 1 1083 0
	movl	44(%rbx), %edx
.LBE47:
.LBB48:
	.loc 1 1084 0
#APP
	rorw $8, %cx
#NO_APP
.LBE48:
.LBB49:
	.loc 1 1083 0
#APP
	bswap %edx
#NO_APP
.LBE49:
	.loc 1 1084 0
	movzwl	%cx, %ecx
	.loc 1 1083 0
	mov	%edx, %edx
	call	sprintf
	.loc 1 1041 0
	addl	%eax, 56(%rbp)
	jmp	.L263
.L267:
.LBB50:
	.loc 1 659 0
	movl	$10, %esi
	movq	%r13, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L127
	.p2align 4,,2
	jmp	.L126
.L142:
.LBE50:
	.loc 1 1013 0
	movl	$.LC6, %esi
	movq	%rbx, %rdi
	call	strstr
	movq	%rax, %r12
	.loc 1 1047 0
	movl	$1, %eax
	.loc 1 1013 0
	testq	%r12, %r12
	je	.L123
	.loc 1 1017 0
	leaq	64(%rsp), %rax
	leaq	96(%rsp), %r14
	leaq	56(%rsp), %r9
	leaq	52(%rsp), %r8
	leaq	76(%rsp), %rcx
	leaq	72(%rsp), %rdx
	movq	%rax, 8(%rsp)
	leaq	60(%rsp), %rax
	movl	$.LC7, %esi
	movq	%r12, %rdi
	movq	%r14, 16(%rsp)
	movq	%rax, (%rsp)
	xorl	%eax, %eax
	call	sscanf
	movl	%eax, %r13d
	.loc 1 1020 0
	movl	$1, %eax
	.loc 1 1019 0
	cmpl	$5, %r13d
	jle	.L123
.LBB51:
	.loc 1 1022 0
	movl	72(%rsp), %esi
	movl	76(%rsp), %eax
.LBE51:
	.loc 1 1025 0
	xorl	%edi, %edi
.LBB52:
	.loc 1 1023 0
	movl	60(%rsp), %edx
.LBE52:
	.loc 1 1025 0
	movl	$512, %ecx
.LBB53:
	.loc 1 1022 0
	sall	$16, %eax
	sall	$24, %esi
	orl	%eax, %esi
	movl	52(%rsp), %eax
.LBE53:
.LBB54:
	.loc 1 1023 0
	sall	$8, %edx
	orl	64(%rsp), %edx
#APP
	rorw $8, %dx
#NO_APP
.LBE54:
.LBB55:
	.loc 1 1022 0
	sall	$8, %eax
.LBE55:
	.loc 1 1023 0
	movzwl	%dx, %edx
.LBB56:
	.loc 1 1022 0
	orl	%eax, %esi
.LBE56:
	.loc 1 1023 0
	movl	%edx, 48(%rsp)
.LBB57:
	.loc 1 1022 0
	orl	56(%rsp), %esi
#APP
	bswap %esi
#NO_APP
.LBE57:
	movl	%esi, 44(%rsp)
	.loc 1 1025 0
	call	solisten
	movq	%rax, %rbx
	.loc 1 1026 0
	movl	$1, %eax
	.loc 1 1025 0
	testq	%rbx, %rbx
	je	.L123
.LBB58:
	.loc 1 1028 0
	movzwl	52(%rbx), %esi
.LBE58:
	.loc 1 1040 0
	movl	%r12d, %r9d
	.loc 1 1041 0
	movl	$.LC5, %eax
.LBB59:
	.loc 1 1028 0
#APP
	rorw $8, %si
#NO_APP
.LBE59:
	movzwl	%si, %esi
	.loc 1 1030 0
	movl	%esi, %r8d
	.loc 1 1031 0
	andl	$255, %esi
	.loc 1 1030 0
	shrl	$8, %r8d
	.loc 1 1031 0
	movl	%esi, 64(%rsp)
	.loc 1 1030 0
	movl	%r8d, 60(%rsp)
.LBB60:
	.loc 1 1033 0
	movl	44(%rbx), %ebx
#APP
	bswap %ebx
#NO_APP
.LBE60:
	.loc 1 1036 0
	movl	%ebx, %ecx
	.loc 1 1035 0
	movl	%ebx, %edx
	.loc 1 1033 0
	movl	%ebx, 44(%rsp)
	.loc 1 1036 0
	shrl	$16, %ecx
	.loc 1 1037 0
	movzbl	%bh, %edi
	.loc 1 1035 0
	shrl	$24, %edx
	.loc 1 1038 0
	andl	$255, %ebx
	.loc 1 1036 0
	andl	$255, %ecx
	.loc 1 1035 0
	movl	%edx, 72(%rsp)
	.loc 1 1036 0
	movl	%ecx, 76(%rsp)
	.loc 1 1037 0
	movl	%edi, 52(%rsp)
	.loc 1 1038 0
	movl	%ebx, 56(%rsp)
	.loc 1 1040 0
	subl	48(%rbp), %r9d
	.loc 1 1041 0
	cmpl	$7, %r13d
	cmove	%r14, %rax
	.loc 1 1040 0
	movl	%r9d, 56(%rbp)
	.loc 1 1041 0
	movl	%esi, 8(%rsp)
	movl	%ebx, %r9d
	movl	%r8d, (%rsp)
	movl	$.LC8, %esi
	movl	%edi, %r8d
	movq	%rax, 16(%rsp)
	jmp	.L265
.L268:
.LBB61:
	.loc 1 664 0
	movq	tcb(%rip), %rdx
.LBB62:
	.loc 1 661 0
	movl	72(%rsp), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE62:
	movzwl	%ax, %r11d
.LBB63:
	.loc 1 662 0
	movl	76(%rsp), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE63:
	.loc 1 664 0
	cmpq	$tcb, %rdx
	.loc 1 662 0
	movzwl	%ax, %r10d
	.loc 1 661 0
	movl	%r11d, 72(%rsp)
	.loc 1 662 0
	movl	%r10d, 76(%rsp)
	.loc 1 664 0
	je	.L128
	movl	48(%rbx), %ecx
	jmp	.L140
	.p2align 4,,7
.L135:
	movq	(%rdx), %rdx
	cmpq	$tcb, %rdx
	je	.L128
.L140:
	.loc 1 665 0
	cmpl	%ecx, 48(%rdx)
	jne	.L135
	movzwl	54(%rdx), %eax
	cmpl	%r10d, %eax
	jne	.L135
	movl	44(%rbx), %eax
	cmpl	%eax, 44(%rdx)
	jne	.L135
	movzwl	52(%rdx), %eax
	cmpl	%r11d, %eax
	jne	.L135
	.loc 1 669 0
	movl	16(%rdx), %edi
	leaq	80(%rsp), %rsi
	leaq	68(%rsp), %rdx
	call	getsockname
	testl	%eax, %eax
	jne	.L254
	movl	72(%rsp), %r11d
.LBB64:
	.loc 1 671 0
	movzwl	82(%rsp), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE64:
	movzwl	%ax, %r10d
	movl	%r10d, 76(%rsp)
	jmp	.L128
	.p2align 4,,7
.L270:
.LBE61:
.LBB65:
	.loc 1 1086 0
	movl	48(%rsp), %edx
.LBE65:
	xorl	%edi, %edi
	movl	$512, %ecx
.LBB66:
#APP
	rorw $8, %dx
#NO_APP
.LBE66:
	movzwl	%dx, %edx
.LBB67:
	movl	44(%rsp), %esi
#APP
	bswap %esi
#NO_APP
.LBE67:
	call	solisten
	movq	%rax, %rbx
	.loc 1 1087 0
	movl	$1, %eax
	.loc 1 1086 0
	testq	%rbx, %rbx
	je	.L123
	.loc 1 1089 0
	movl	%r12d, %r9d
	subl	48(%rbp), %r9d
	.loc 1 1091 0
	movq	%r14, %rdx
	movl	$.LC14, %esi
	.loc 1 1089 0
	movl	%r9d, 56(%rbp)
	.loc 1 1091 0
	movl	72(%rsp), %r9d
.LBB68:
	.loc 1 1092 0
	movzwl	52(%rbx), %r8d
.LBE68:
.LBB69:
	.loc 1 1091 0
	movl	44(%rbx), %ecx
.LBE69:
.LBB70:
	.loc 1 1092 0
#APP
	rorw $8, %r8w
#NO_APP
.LBE70:
.LBB71:
	.loc 1 1091 0
#APP
	bswap %ecx
#NO_APP
.LBE71:
	movzwl	%r8w, %r8d
	mov	%ecx, %ecx
	movl	$1, (%rsp)
	jmp	.L260
.L256:
	movq	48(%rsi), %rsi
	jmp	.L250
.L271:
.LBB72:
	.loc 1 1168 0
	incq	%r12
	.loc 1 1167 0
	movl	$1, ra.0(%rip)
	jmp	.L215
.LBE72:
.LBE15:
.LFE58:
	.size	tcp_emu, .-tcp_emu
	.p2align 4,,15
.globl tcp_ctl
	.type	tcp_ctl, @function
tcp_ctl:
.LFB59:
	.loc 1 1245 0
.LBB73:
	.loc 1 1265 0
	movl	44(%rdi), %eax
.LBE73:
	.loc 1 1246 0
	leaq	120(%rdi), %rsi
.LBB74:
	.loc 1 1265 0
#APP
	bswap %eax
#NO_APP
.LBE74:
	andl	$255, %eax
	.loc 1 1267 0
	cmpl	$2, %eax
	je	.L284
	.loc 1 1273 0
	movq	exec_list(%rip), %rcx
	testq	%rcx, %rcx
	je	.L284
	movzwl	52(%rdi), %edx
	jmp	.L283
	.p2align 4,,7
.L280:
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L284
.L283:
	.loc 1 1274 0
	cmpl	%edx, 8(%rcx)
	.p2align 4,,3
	jne	.L280
	cmpl	%eax, 4(%rcx)
	.p2align 4,,3
	jne	.L280
.L282:
	.loc 1 1276 0
	movl	(%rcx), %edx
	.loc 1 1295 0
	movq	16(%rcx), %rsi
	jmp	fork_exec
	.p2align 4,,7
.L284:
	.loc 1 1288 0
	movq	8(%rsi), %rax
	movabsq	$5629563797383574085, %r8
	movabsq	$7163375912487034991, %rdi
	movabsq	$8026294619592029281, %rcx
	movabsq	$7234314225012270702, %rdx
	movq	%r8, (%rax)
	movq	%rdi, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%rdx, 24(%rax)
	movl	$658734, 32(%rax)
	.loc 1 1290 0
	addq	$35, 8(%rsi)
	.loc 1 1318 0
	xorl	%eax, %eax
	.loc 1 1288 0
	movl	$35, (%rsi)
	.loc 1 1318 0
	ret
.LFE59:
	.size	tcp_ctl, .-tcp_ctl
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
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI3
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI7-.LFB50
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
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI10-.LFB52
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI15-.LFB51
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
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI16-.LFB53
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
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI20-.LFB54
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI21-.LFB56
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
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI22-.LFB55
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI27-.LFB58
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI31-.LCFI27
	.byte	0xe
	.uleb128 0x190
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.align 8
.LEFDE24:
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
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI3
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI7-.LFB50
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
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI10-.LFB52
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI15-.LFB51
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
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI16-.LFB53
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
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI20-.LFB54
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI21-.LFB56
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
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI22-.LFB55
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI27-.LFB58
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI31-.LCFI27
	.byte	0xe
	.uleb128 0x190
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.align 8
.LEFDE25:
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
	.file 15 "/usr/include/sys/socket.h"
	.file 16 "/usr/include/bits/sockaddr.h"
	.file 17 "/home/remco/Projects/Argos/src/slirp/misc.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/libio.h"
	.file 20 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 21 "/home/remco/Projects/Argos/src/slirp/main.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x178e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF228
	.byte	0x1
	.long	.LASF229
	.long	.LASF230
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
	.byte	0x14
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
	.uleb128 0x7
	.long	0x125
	.long	0xb6
	.uleb128 0x8
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF23
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.byte	0x8
	.long	0x139
	.uleb128 0x9
	.long	0xb6
	.uleb128 0xa
	.long	0x30a
	.long	.LASF54
	.byte	0xd8
	.byte	0x12
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF24
	.byte	0x13
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x13
	.value	0x115
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x13
	.value	0x116
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF27
	.byte	0x13
	.value	0x117
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF28
	.byte	0x13
	.value	0x118
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF29
	.byte	0x13
	.value	0x119
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF30
	.byte	0x13
	.value	0x11a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF31
	.byte	0x13
	.value	0x11b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF32
	.byte	0x13
	.value	0x11c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF33
	.byte	0x13
	.value	0x11e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF34
	.byte	0x13
	.value	0x11f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF35
	.byte	0x13
	.value	0x120
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF36
	.byte	0x13
	.value	0x122
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF37
	.byte	0x13
	.value	0x124
	.long	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF38
	.byte	0x13
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF39
	.byte	0x13
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF40
	.byte	0x13
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF41
	.byte	0x13
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF42
	.byte	0x13
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF43
	.byte	0x13
	.value	0x132
	.long	0x354
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF44
	.byte	0x13
	.value	0x136
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF45
	.byte	0x13
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF46
	.byte	0x13
	.value	0x148
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF47
	.byte	0x13
	.value	0x149
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x13
	.value	0x14a
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF49
	.byte	0x13
	.value	0x14b
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x13
	.value	0x14c
	.long	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF51
	.byte	0x13
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x13
	.value	0x150
	.long	0x36a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x13
	.byte	0xb4
	.uleb128 0xa
	.long	0x348
	.long	.LASF55
	.byte	0x18
	.byte	0x13
	.byte	0xba
	.uleb128 0xd
	.long	.LASF56
	.byte	0x13
	.byte	0xbb
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x13
	.byte	0xbc
	.long	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF58
	.byte	0x13
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x13e
	.uleb128 0x7
	.long	0x364
	.long	0xb6
	.uleb128 0x8
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x30a
	.uleb128 0x7
	.long	0x37a
	.long	0xb6
	.uleb128 0x8
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x32
	.long	0x4a
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF61
	.byte	0x10
	.byte	0x1d
	.long	0x4a
	.uleb128 0xa
	.long	0x3e0
	.long	.LASF62
	.byte	0x10
	.byte	0xf
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF63
	.byte	0x8
	.byte	0xe3
	.long	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x8
	.byte	0xe4
	.long	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF65
	.byte	0x8
	.byte	0xe5
	.long	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF66
	.byte	0x8
	.byte	0xeb
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x61
	.long	0x37a
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x8d
	.long	0x385
	.uleb128 0xa
	.long	0x411
	.long	.LASF69
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.uleb128 0xd
	.long	.LASF70
	.byte	0x8
	.byte	0x90
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x421
	.long	0x38
	.uleb128 0x8
	.long	0x9c
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x7
	.byte	0xc0
	.long	0x10a
	.uleb128 0xa
	.long	0x49b
	.long	.LASF72
	.byte	0x14
	.byte	0x7
	.byte	0xcf
	.uleb128 0xd
	.long	.LASF73
	.byte	0x7
	.byte	0xd0
	.long	0x421
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x7
	.byte	0xd0
	.long	0x421
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF75
	.byte	0x7
	.byte	0xd1
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF76
	.byte	0x7
	.byte	0xd2
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.long	.LASF77
	.byte	0x7
	.byte	0xd3
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.long	.LASF78
	.byte	0x7
	.byte	0xd4
	.long	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF79
	.byte	0x7
	.byte	0xd5
	.long	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xa
	.byte	0x28
	.long	0x10a
	.uleb128 0xa
	.long	0x545
	.long	.LASF81
	.byte	0x14
	.byte	0xa
	.byte	0x36
	.uleb128 0xd
	.long	.LASF82
	.byte	0xa
	.byte	0x37
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF83
	.byte	0xa
	.byte	0x38
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF84
	.byte	0xa
	.byte	0x39
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF85
	.byte	0xa
	.byte	0x3a
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.long	.LASF86
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
	.long	.LASF87
	.byte	0xa
	.byte	0x40
	.long	0xd3
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF88
	.byte	0xa
	.byte	0x42
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.long	.LASF89
	.byte	0xa
	.byte	0x49
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF90
	.byte	0xa
	.byte	0x4a
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF91
	.byte	0xa
	.byte	0x4b
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x56e
	.long	.LASF92
	.byte	0x28
	.byte	0x6
	.byte	0x2b
	.uleb128 0xd
	.long	.LASF93
	.byte	0x6
	.byte	0x2c
	.long	0x42c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x6
	.byte	0x2d
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x3
	.byte	0x2e
	.long	0x10a
	.uleb128 0xa
	.long	0x802
	.long	.LASF96
	.byte	0xb8
	.byte	0x2
	.byte	0x83
	.uleb128 0xd
	.long	.LASF97
	.byte	0x3
	.byte	0x35
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF98
	.byte	0x3
	.byte	0x36
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF99
	.byte	0x3
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF100
	.byte	0x3
	.byte	0x38
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.long	.LASF101
	.byte	0x3
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.long	.LASF102
	.byte	0x3
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF103
	.byte	0x3
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.long	.LASF104
	.byte	0x3
	.byte	0x3c
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF105
	.byte	0x3
	.byte	0x3d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xd
	.long	.LASF106
	.byte	0x3
	.byte	0x3e
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF107
	.byte	0x3
	.byte	0x4c
	.long	0x545
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF108
	.byte	0x3
	.byte	0x4e
	.long	0x944
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF109
	.byte	0x3
	.byte	0x54
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF110
	.byte	0x3
	.byte	0x55
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.long	.LASF111
	.byte	0x3
	.byte	0x56
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF112
	.byte	0x3
	.byte	0x57
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.long	.LASF113
	.byte	0x3
	.byte	0x58
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"iss"
	.byte	0x3
	.byte	0x59
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.long	.LASF114
	.byte	0x3
	.byte	0x5a
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF115
	.byte	0x3
	.byte	0x5c
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.long	.LASF116
	.byte	0x3
	.byte	0x5d
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF117
	.byte	0x3
	.byte	0x5e
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"irs"
	.byte	0x3
	.byte	0x5f
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF118
	.byte	0x3
	.byte	0x64
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.long	.LASF119
	.byte	0x3
	.byte	0x66
	.long	0x49b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF120
	.byte	0x3
	.byte	0x6a
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.long	.LASF121
	.byte	0x3
	.byte	0x6b
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF122
	.byte	0x3
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.long	.LASF123
	.byte	0x3
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0xd
	.long	.LASF124
	.byte	0x3
	.byte	0x75
	.long	0x49b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF125
	.byte	0x3
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.long	.LASF126
	.byte	0x3
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0xd
	.long	.LASF127
	.byte	0x3
	.byte	0x78
	.long	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF128
	.byte	0x3
	.byte	0x79
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.long	.LASF129
	.byte	0x3
	.byte	0x7c
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF130
	.byte	0x3
	.byte	0x7d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0xd
	.long	.LASF131
	.byte	0x3
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0xd
	.long	.LASF132
	.byte	0x3
	.byte	0x83
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.long	.LASF133
	.byte	0x3
	.byte	0x84
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0xd
	.long	.LASF134
	.byte	0x3
	.byte	0x85
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0xd
	.long	.LASF135
	.byte	0x3
	.byte	0x86
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0xd
	.long	.LASF136
	.byte	0x3
	.byte	0x87
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF137
	.byte	0x3
	.byte	0x88
	.long	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.long	.LASF138
	.byte	0x3
	.byte	0x89
	.long	0x49b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0x7
	.long	0x812
	.long	0x71
	.uleb128 0x8
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x944
	.long	.LASF139
	.byte	0xa0
	.byte	0xa
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF140
	.byte	0xb
	.byte	0x15
	.long	0x944
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF141
	.byte	0xb
	.byte	0x15
	.long	0x944
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
	.uleb128 0xd
	.long	.LASF142
	.byte	0xb
	.byte	0x1a
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF143
	.byte	0xb
	.byte	0x1d
	.long	0xa7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF144
	.byte	0xb
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF145
	.byte	0xb
	.byte	0x20
	.long	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.long	.LASF146
	.byte	0xb
	.byte	0x21
	.long	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF147
	.byte	0xb
	.byte	0x22
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.long	.LASF148
	.byte	0xb
	.byte	0x23
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xd
	.long	.LASF149
	.byte	0xb
	.byte	0x25
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF150
	.byte	0xb
	.byte	0x26
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xd
	.long	.LASF151
	.byte	0xb
	.byte	0x28
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0xd
	.long	.LASF152
	.byte	0xb
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.long	.LASF153
	.byte	0xb
	.byte	0x2b
	.long	0xa80
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0x2c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF157
	.byte	0xb
	.byte	0x33
	.long	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF158
	.byte	0xb
	.byte	0x34
	.long	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF159
	.byte	0xb
	.byte	0x35
	.long	0xa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x812
	.uleb128 0xa
	.long	0x9d5
	.long	.LASF160
	.byte	0x40
	.byte	0xd
	.byte	0x3f
	.uleb128 0xd
	.long	.LASF161
	.byte	0xd
	.byte	0x40
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF162
	.byte	0xd
	.byte	0x41
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF163
	.byte	0xd
	.byte	0x42
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF164
	.byte	0xd
	.byte	0x43
	.long	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF165
	.byte	0xd
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF166
	.byte	0xd
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF167
	.byte	0xd
	.byte	0x47
	.long	0x944
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF168
	.byte	0xd
	.byte	0x49
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF169
	.byte	0xd
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xa
	.long	0x9fe
	.long	.LASF170
	.byte	0x48
	.byte	0xc
	.byte	0x66
	.uleb128 0xd
	.long	.LASF160
	.byte	0xd
	.byte	0x5c
	.long	0x94a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF171
	.byte	0xd
	.byte	0x60
	.long	0xa04
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x9d5
	.uleb128 0x10
	.long	0xa27
	.long	.LASF171
	.byte	0x8
	.byte	0xd
	.byte	0x5d
	.uleb128 0x11
	.long	.LASF172
	.byte	0xd
	.byte	0x5e
	.long	0x354
	.uleb128 0x11
	.long	.LASF173
	.byte	0xd
	.byte	0x5f
	.long	0xb0
	.byte	0x0
	.uleb128 0xa
	.long	0xa7a
	.long	.LASF174
	.byte	0x20
	.byte	0xe
	.byte	0xe
	.uleb128 0xd
	.long	.LASF175
	.byte	0xe
	.byte	0xf
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF176
	.byte	0xe
	.byte	0x10
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF177
	.byte	0xe
	.byte	0x11
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF178
	.byte	0xe
	.byte	0x13
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF179
	.byte	0xe
	.byte	0x15
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x545
	.uleb128 0x6
	.byte	0x8
	.long	0x579
	.uleb128 0xa
	.long	0xad9
	.long	.LASF180
	.byte	0x20
	.byte	0x11
	.byte	0xb
	.uleb128 0xd
	.long	.LASF181
	.byte	0x11
	.byte	0xc
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF182
	.byte	0x11
	.byte	0xd
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF183
	.byte	0x11
	.byte	0xe
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF184
	.byte	0x11
	.byte	0xf
	.long	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF185
	.byte	0x11
	.byte	0x10
	.long	0xad9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa86
	.uleb128 0xa
	.long	0xb24
	.long	.LASF186
	.byte	0x6
	.byte	0x11
	.byte	0x33
	.uleb128 0xd
	.long	.LASF187
	.byte	0x11
	.byte	0x34
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF188
	.byte	0x11
	.byte	0x35
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"tos"
	.byte	0x11
	.byte	0x36
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"emu"
	.byte	0x11
	.byte	0x37
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xb77
	.long	.LASF189
	.byte	0x10
	.byte	0x11
	.byte	0x3a
	.uleb128 0xd
	.long	.LASF187
	.byte	0x11
	.byte	0x3b
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF188
	.byte	0x11
	.byte	0x3c
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"tos"
	.byte	0x11
	.byte	0x3d
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"emu"
	.byte	0x11
	.byte	0x3e
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF190
	.byte	0x11
	.byte	0x3f
	.long	0xb77
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb24
	.uleb128 0x12
	.byte	0x1
	.long	.LASF231
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.long	0xbdb
	.byte	0x1
	.long	.LASF191
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"tp"
	.byte	0x1
	.byte	0x47
	.long	0xa80
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"so"
	.byte	0x1
	.byte	0x49
	.long	0x944
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x4a
	.long	0xa7a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x13
	.long	0xd4f
	.byte	0x1
	.long	.LASF192
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"tp"
	.byte	0x1
	.byte	0x6e
	.long	0xa80
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.string	"ti"
	.byte	0x1
	.byte	0x6f
	.long	0xa7a
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0x70
	.long	0x9fe
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.string	"ack"
	.byte	0x1
	.byte	0x71
	.long	0x49b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.string	"seq"
	.byte	0x1
	.byte	0x71
	.long	0x49b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF193
	.byte	0x1
	.byte	0x72
	.long	0x78
	.byte	0x1
	.byte	0x5e
	.uleb128 0x17
	.long	.LASF194
	.byte	0x1
	.byte	0x74
	.long	0x78
	.uleb128 0x15
	.string	"win"
	.byte	0x1
	.byte	0x75
	.long	0x78
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.long	0xc7d
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x97
	.long	0x10a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0xc9e
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x98
	.long	0xff
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0xcca
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x19
	.string	"__v"
	.byte	0x1
	.byte	0xa1
	.long	0x5c
	.uleb128 0x19
	.string	"__x"
	.byte	0x1
	.byte	0xa1
	.long	0x5c
	.byte	0x0
	.uleb128 0x18
	.long	0xcf6
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x19
	.string	"__v"
	.byte	0x1
	.byte	0xa2
	.long	0x5c
	.uleb128 0x19
	.string	"__x"
	.byte	0x1
	.byte	0xa2
	.long	0x5c
	.byte	0x0
	.uleb128 0x18
	.long	0xd24
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x19
	.string	"__v"
	.byte	0x1
	.byte	0xa7
	.long	0x4a
	.uleb128 0x15
	.string	"__x"
	.byte	0x1
	.byte	0xa7
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x15
	.string	"__v"
	.byte	0x1
	.byte	0xa9
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.string	"__x"
	.byte	0x1
	.byte	0xa9
	.long	0x4a
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xd8b
	.byte	0x1
	.long	.LASF195
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0xa80
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"so"
	.byte	0x1
	.byte	0xbe
	.long	0x944
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"tp"
	.byte	0x1
	.byte	0xc0
	.long	0xa80
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1c
	.long	0xde2
	.byte	0x1
	.long	.LASF196
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0xa80
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"tp"
	.byte	0x1
	.value	0x109
	.long	0xa80
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.value	0x10b
	.long	0xa7a
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.string	"so"
	.byte	0x1
	.value	0x10c
	.long	0x944
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.value	0x10d
	.long	0x9fe
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1b
	.long	0xe1f
	.byte	0x1
	.long	.LASF197
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0xa80
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.string	"tp"
	.byte	0x1
	.byte	0xe8
	.long	0xa80
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0xe8
	.long	0x78
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1f
	.long	0xe4d
	.byte	0x1
	.long	.LASF198
	.byte	0x1
	.value	0x156
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"tp"
	.byte	0x1
	.value	0x155
	.long	0xa80
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1c
	.long	0xebb
	.byte	0x1
	.long	.LASF199
	.byte	0x1
	.value	0x180
	.byte	0x1
	.long	0x78
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x17f
	.long	0x944
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.value	0x181
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1e
	.string	"opt"
	.byte	0x1
	.value	0x187
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x187
	.long	0x78
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x188
	.long	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xfc3
	.byte	0x1
	.long	.LASF201
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	0xf4
	.quad	.LFB57
	.quad	.LFE57
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x23c
	.long	0x944
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x23e
	.long	0x78
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.long	.LASF202
	.byte	0x1
	.value	0x23f
	.long	0xb77
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	0xf36
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x242
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x242
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.long	0xf66
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x243
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x243
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.long	0xf96
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x24c
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x24c
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x24d
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x24d
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xff5
	.byte	0x1
	.long	.LASF203
	.byte	0x1
	.value	0x216
	.byte	0x1
	.long	0x78
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x215
	.long	0x944
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1f
	.long	0x1077
	.byte	0x1
	.long	.LASF204
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF205
	.byte	0x1
	.value	0x1be
	.long	0x944
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.string	"so"
	.byte	0x1
	.value	0x1c0
	.long	0x944
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x1c1
	.long	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF206
	.byte	0x1
	.value	0x1c2
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"tp"
	.byte	0x1
	.value	0x1c3
	.long	0xa80
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1c4
	.long	0x78
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.string	"opt"
	.byte	0x1
	.value	0x1c4
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x1c
	.long	0x161a
	.byte	0x1
	.long	.LASF207
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	0x78
	.quad	.LFB58
	.quad	.LFE58
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x274
	.long	0x944
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"m"
	.byte	0x1
	.value	0x275
	.long	0x9fe
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.string	"n1"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x1e
	.string	"n2"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x1e
	.string	"n3"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x1e
	.string	"n4"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1e
	.string	"n5"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x1e
	.string	"n6"
	.byte	0x1
	.value	0x277
	.long	0xd3
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x22
	.long	.LASF208
	.byte	0x1
	.value	0x278
	.long	0x161a
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x22
	.long	.LASF209
	.byte	0x1
	.value	0x279
	.long	0x10a
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.value	0x27a
	.long	0xd3
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x22
	.long	.LASF210
	.byte	0x1
	.value	0x27b
	.long	0xb0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	0x1169
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.value	0x282
	.long	0x78
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x282
	.long	0x78
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x24
	.long	0x11af
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF211
	.byte	0x1
	.value	0x28a
	.long	0x944
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x28b
	.long	0x39b
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x22
	.long	.LASF206
	.byte	0x1
	.value	0x28c
	.long	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x22
	.long	.LASF157
	.byte	0x1
	.value	0x28d
	.long	0x162a
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x24
	.long	0x11d3
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x3df
	.long	0x5c
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x3df
	.long	0x5c
	.byte	0x0
	.uleb128 0x24
	.long	0x11f5
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x3e0
	.long	0x4a
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x3e0
	.long	0x4a
	.byte	0x0
	.uleb128 0x24
	.long	0x1219
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x3e5
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x3e5
	.long	0x4a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x18
	.long	0x1249
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x3ea
	.long	0x5c
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x3ea
	.long	0x5c
	.byte	0x0
	.uleb128 0x24
	.long	0x126d
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x428
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x428
	.long	0x4a
	.byte	0x0
	.uleb128 0x24
	.long	0x1291
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x429
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x429
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x12b5
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x446
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x446
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0x12e5
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x446
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x446
	.long	0x5c
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x24
	.long	0x1309
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x44c
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x44c
	.long	0x4a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x24
	.long	0x132d
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x44b
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x44b
	.long	0x5c
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x24
	.long	0x1367
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x477
	.long	0xc8
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.string	"ra"
	.byte	0x1
	.value	0x478
	.long	0x78
	.byte	0x9
	.byte	0x3
	.quad	ra.0
	.uleb128 0x22
	.long	.LASF212
	.byte	0x1
	.value	0x479
	.long	0x115
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0x0
	.uleb128 0x24
	.long	0x138b
	.long	.Ldebug_ranges0+0x290
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x4b8
	.long	0x4a
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x4b8
	.long	0x4a
	.byte	0x0
	.uleb128 0x18
	.long	0x13bb
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x4ba
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x4ba
	.long	0x4a
	.byte	0x0
	.uleb128 0x24
	.long	0x13df
	.long	.Ldebug_ranges0+0x2c0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x436
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x436
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0x140f
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x436
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x436
	.long	0x5c
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x24
	.long	0x1433
	.long	.Ldebug_ranges0+0x2f0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x43c
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x43c
	.long	0x4a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x24
	.long	0x1457
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x43b
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x43b
	.long	0x5c
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.long	0x147b
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x3fe
	.long	0x5c
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x3fe
	.long	0x5c
	.byte	0x0
	.uleb128 0x24
	.long	0x149d
	.long	.Ldebug_ranges0+0x3b0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x3ff
	.long	0x4a
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x3ff
	.long	0x4a
	.byte	0x0
	.uleb128 0x24
	.long	0x14c1
	.long	.Ldebug_ranges0+0x3e0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x404
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x404
	.long	0x4a
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x18
	.long	0x14f1
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x1e
	.string	"__v"
	.byte	0x1
	.value	0x409
	.long	0x5c
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"__x"
	.byte	0x1
	.value	0x409
	.long	0x5c
	.byte	0x0
	.uleb128 0x18
	.long	0x1521
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x295
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x295
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.long	0x1551
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x296
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x296
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.long	0x1581
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x29f
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x29f
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.long	0x15a5
	.long	.Ldebug_ranges0+0x410
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x43e
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x43e
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0x15d5
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x43e
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x43e
	.long	0x5c
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x24
	.long	0x15f9
	.long	.Ldebug_ranges0+0x440
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x444
	.long	0x4a
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x444
	.long	0x4a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x470
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x443
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x443
	.long	0x5c
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x162a
	.long	0xb6
	.uleb128 0x8
	.long	0x9c
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa27
	.uleb128 0x1c
	.long	0x16c9
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.value	0x4dd
	.byte	0x1
	.long	0x78
	.quad	.LFB59
	.quad	.LFE59
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"so"
	.byte	0x1
	.value	0x4dc
	.long	0x944
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"sb"
	.byte	0x1
	.value	0x4de
	.long	0x162a
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF214
	.byte	0x1
	.value	0x4df
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF215
	.byte	0x1
	.value	0x4e0
	.long	0xad9
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.long	.LASF216
	.byte	0x1
	.value	0x4e1
	.long	0x78
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF232
	.byte	0x1
	.value	0x50d
	.quad	.L282
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x4a0
	.uleb128 0x21
	.string	"__v"
	.byte	0x1
	.value	0x4f1
	.long	0x5c
	.uleb128 0x1e
	.string	"__x"
	.byte	0x1
	.value	0x4f1
	.long	0x5c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF217
	.byte	0x12
	.byte	0x91
	.long	0x34e
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF218
	.byte	0x12
	.byte	0x92
	.long	0x34e
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF219
	.byte	0xa
	.byte	0x2d
	.long	0x944
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF220
	.byte	0xa
	.byte	0xab
	.long	0x49b
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"tcb"
	.byte	0xb
	.byte	0x4a
	.long	0x812
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF221
	.byte	0x15
	.byte	0x24
	.long	0x3f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF222
	.byte	0x15
	.byte	0x25
	.long	0x3f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF223
	.byte	0x15
	.byte	0x27
	.long	0x3f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF224
	.byte	0x15
	.byte	0x28
	.long	0x3f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF225
	.byte	0x11
	.byte	0x13
	.long	0xad9
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x175b
	.long	0x175b
	.uleb128 0x8
	.long	0x9c
	.byte	0xc
	.byte	0x0
	.uleb128 0x9
	.long	0xadf
	.uleb128 0x22
	.long	.LASF226
	.byte	0x1
	.value	0x222
	.long	0x1776
	.byte	0x9
	.byte	0x3
	.quad	tcptos
	.uleb128 0x9
	.long	0x174b
	.uleb128 0x22
	.long	.LASF227
	.byte	0x1
	.value	0x235
	.long	0xb77
	.byte	0x9
	.byte	0x3
	.quad	tcpemu
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.long	0xcf
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1792
	.long	0xb7d
	.string	"tcp_init"
	.long	0xb98
	.string	"tcp_template"
	.long	0xbdb
	.string	"tcp_respond"
	.long	0xd4f
	.string	"tcp_newtcpcb"
	.long	0xd8b
	.string	"tcp_close"
	.long	0xde2
	.string	"tcp_drop"
	.long	0xe1f
	.string	"tcp_sockclosed"
	.long	0xe4d
	.string	"tcp_fconnect"
	.long	0xebb
	.string	"tcp_tos"
	.long	0xfc3
	.string	"tcp_attach"
	.long	0xff5
	.string	"tcp_connect"
	.long	0x1077
	.string	"tcp_emu"
	.long	0x1630
	.string	"tcp_ctl"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"size_t"
.LASF230:
	.string	"/home/remco/Projects/Argos/src"
.LASF165:
	.string	"mh_flags"
.LASF77:
	.string	"ih_len"
.LASF70:
	.string	"s_addr"
.LASF93:
	.string	"ti_i"
.LASF181:
	.string	"ex_pty"
.LASF65:
	.string	"sin_addr"
.LASF71:
	.string	"caddr32_t"
.LASF35:
	.string	"_IO_save_end"
.LASF85:
	.string	"th_ack"
.LASF161:
	.string	"mh_next"
.LASF226:
	.string	"tcptos"
.LASF168:
	.string	"mh_data"
.LASF170:
	.string	"mbuf"
.LASF162:
	.string	"mh_prev"
.LASF88:
	.string	"th_flags"
.LASF149:
	.string	"so_iptos"
.LASF208:
	.string	"buff"
.LASF28:
	.string	"_IO_write_base"
.LASF203:
	.string	"tcp_attach"
.LASF44:
	.string	"_lock"
.LASF33:
	.string	"_IO_save_base"
.LASF136:
	.string	"ts_recent"
.LASF37:
	.string	"_chain"
.LASF83:
	.string	"th_dport"
.LASF174:
	.string	"sbuf"
.LASF41:
	.string	"_cur_column"
.LASF102:
	.string	"t_rxtcur"
.LASF122:
	.string	"t_idle"
.LASF159:
	.string	"extra"
.LASF148:
	.string	"so_lport"
.LASF195:
	.string	"tcp_newtcpcb"
.LASF143:
	.string	"so_ti"
.LASF106:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF219:
	.string	"tcp_last_so"
.LASF12:
	.string	"__caddr_t"
.LASF14:
	.string	"u_char"
.LASF55:
	.string	"_IO_marker"
.LASF222:
	.string	"alias_addr"
.LASF107:
	.string	"t_template"
.LASF205:
	.string	"inso"
.LASF0:
	.string	"__u_char"
.LASF164:
	.string	"mh_prevpkt"
.LASF167:
	.string	"mh_so"
.LASF87:
	.string	"th_off"
.LASF115:
	.string	"rcv_wnd"
.LASF78:
	.string	"ih_src"
.LASF79:
	.string	"ih_dst"
.LASF69:
	.string	"in_addr"
.LASF139:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF54:
	.string	"_IO_FILE"
.LASF97:
	.string	"seg_next"
.LASF144:
	.string	"so_urgc"
.LASF182:
	.string	"ex_addr"
.LASF2:
	.string	"unsigned char"
.LASF150:
	.string	"so_emu"
.LASF171:
	.string	"M_dat"
.LASF147:
	.string	"so_fport"
.LASF213:
	.string	"tcp_ctl"
.LASF82:
	.string	"th_sport"
.LASF212:
	.string	"ra_tbl"
.LASF19:
	.string	"u_int8_t"
.LASF64:
	.string	"sin_port"
.LASF114:
	.string	"snd_wnd"
.LASF81:
	.string	"tcphdr"
.LASF92:
	.string	"tcpiphdr"
.LASF127:
	.string	"t_rttmin"
.LASF53:
	.string	"_IO_lock_t"
.LASF62:
	.string	"sockaddr_in"
.LASF192:
	.string	"tcp_respond"
.LASF118:
	.string	"rcv_adv"
.LASF204:
	.string	"tcp_connect"
.LASF193:
	.string	"flags"
.LASF25:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"tcpiphdrp_32"
.LASF98:
	.string	"seg_prev"
.LASF58:
	.string	"_pos"
.LASF209:
	.string	"laddr"
.LASF138:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF199:
	.string	"tcp_fconnect"
.LASF179:
	.string	"sb_data"
.LASF36:
	.string	"_markers"
.LASF229:
	.string	"slirp/tcp_subr.c"
.LASF16:
	.string	"u_int"
.LASF108:
	.string	"t_socket"
.LASF135:
	.string	"requested_s_scale"
.LASF221:
	.string	"special_addr"
.LASF216:
	.string	"do_pty"
.LASF128:
	.string	"max_sndwnd"
.LASF68:
	.string	"in_addr_t"
.LASF121:
	.string	"snd_ssthresh"
.LASF206:
	.string	"addrlen"
.LASF211:
	.string	"tmpso"
.LASF45:
	.string	"_offset"
.LASF231:
	.string	"tcp_init"
.LASF196:
	.string	"tcp_close"
.LASF20:
	.string	"u_int16_t"
.LASF6:
	.string	"long unsigned int"
.LASF100:
	.string	"t_timer"
.LASF39:
	.string	"_flags2"
.LASF220:
	.string	"tcp_iss"
.LASF27:
	.string	"_IO_read_base"
.LASF103:
	.string	"t_dupacks"
.LASF178:
	.string	"sb_rptr"
.LASF52:
	.string	"_unused2"
.LASF166:
	.string	"mh_size"
.LASF120:
	.string	"snd_cwnd"
.LASF184:
	.string	"ex_exec"
.LASF217:
	.string	"stdin"
.LASF40:
	.string	"_old_offset"
.LASF80:
	.string	"tcp_seq"
.LASF189:
	.string	"emu_t"
.LASF99:
	.string	"t_state"
.LASF131:
	.string	"t_softerror"
.LASF124:
	.string	"t_rtseq"
.LASF23:
	.string	"long long int"
.LASF186:
	.string	"tos_t"
.LASF176:
	.string	"sb_datalen"
.LASF188:
	.string	"fport"
.LASF201:
	.string	"tcp_tos"
.LASF30:
	.string	"_IO_write_end"
.LASF119:
	.string	"snd_max"
.LASF109:
	.string	"snd_una"
.LASF31:
	.string	"_IO_buf_base"
.LASF129:
	.string	"t_oobflags"
.LASF105:
	.string	"t_force"
.LASF56:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF86:
	.string	"th_x2"
.LASF228:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF17:
	.string	"caddr_t"
.LASF116:
	.string	"rcv_nxt"
.LASF183:
	.string	"ex_fport"
.LASF207:
	.string	"tcp_emu"
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
.LASF187:
	.string	"lport"
.LASF57:
	.string	"_sbuf"
.LASF117:
	.string	"rcv_up"
.LASF104:
	.string	"t_maxseg"
.LASF24:
	.string	"_flags"
.LASF200:
	.string	"addr"
.LASF142:
	.string	"so_m"
.LASF51:
	.string	"_mode"
.LASF197:
	.string	"tcp_drop"
.LASF140:
	.string	"so_next"
.LASF111:
	.string	"snd_up"
.LASF13:
	.string	"char"
.LASF185:
	.string	"ex_next"
.LASF89:
	.string	"th_win"
.LASF190:
	.string	"next"
.LASF141:
	.string	"so_prev"
.LASF194:
	.string	"tlen"
.LASF158:
	.string	"so_snd"
.LASF160:
	.string	"m_hdr"
.LASF163:
	.string	"mh_nextpkt"
.LASF90:
	.string	"th_sum"
.LASF137:
	.string	"ts_recent_age"
.LASF132:
	.string	"snd_scale"
.LASF22:
	.string	"long long unsigned int"
.LASF61:
	.string	"sa_family_t"
.LASF130:
	.string	"t_iobc"
.LASF59:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF134:
	.string	"request_r_scale"
.LASF198:
	.string	"tcp_sockclosed"
.LASF76:
	.string	"ih_pr"
.LASF145:
	.string	"so_faddr"
.LASF156:
	.string	"so_nqueued"
.LASF173:
	.string	"m_ext_"
.LASF34:
	.string	"_IO_backup_base"
.LASF43:
	.string	"_shortbuf"
.LASF180:
	.string	"ex_list"
.LASF84:
	.string	"th_seq"
.LASF66:
	.string	"sin_zero"
.LASF11:
	.string	"__off64_t"
.LASF94:
	.string	"ti_t"
.LASF223:
	.string	"loopback_addr"
.LASF169:
	.string	"mh_len"
.LASF32:
	.string	"_IO_buf_end"
.LASF96:
	.string	"tcpcb"
.LASF152:
	.string	"so_state"
.LASF101:
	.string	"t_rxtshift"
.LASF72:
	.string	"ipovly"
.LASF214:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF215:
	.string	"ex_ptr"
.LASF21:
	.string	"u_int32_t"
.LASF224:
	.string	"dns_addr"
.LASF154:
	.string	"so_expire"
.LASF126:
	.string	"t_rttvar"
.LASF42:
	.string	"_vtable_offset"
.LASF73:
	.string	"ih_next"
.LASF91:
	.string	"th_urp"
.LASF151:
	.string	"so_type"
.LASF191:
	.string	"tcp_template"
.LASF74:
	.string	"ih_prev"
.LASF112:
	.string	"snd_wl1"
.LASF113:
	.string	"snd_wl2"
.LASF1:
	.string	"__u_short"
.LASF175:
	.string	"sb_cc"
.LASF225:
	.string	"exec_list"
.LASF26:
	.string	"_IO_read_end"
.LASF146:
	.string	"so_laddr"
.LASF232:
	.string	"do_exec"
.LASF60:
	.string	"uint32_t"
.LASF125:
	.string	"t_srtt"
.LASF38:
	.string	"_fileno"
.LASF157:
	.string	"so_rcv"
.LASF110:
	.string	"snd_nxt"
.LASF227:
	.string	"tcpemu"
.LASF155:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF218:
	.string	"stdout"
.LASF63:
	.string	"sin_family"
.LASF202:
	.string	"emup"
.LASF29:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"ih_x1"
.LASF153:
	.string	"so_tcpcb"
.LASF15:
	.string	"u_short"
.LASF177:
	.string	"sb_wptr"
.LASF133:
	.string	"rcv_scale"
.LASF172:
	.string	"m_dat_"
.LASF67:
	.string	"in_port_t"
.LASF123:
	.string	"t_rtt"
.LASF210:
	.string	"bptr"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
