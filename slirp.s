	.file	"slirp.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	special_ethaddr, @object
	.size	special_ethaddr, 6
special_ethaddr:
	.byte	82
	.byte	84
	.byte	0
	.byte	18
	.byte	53
	.byte	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"127.0.0.1"
.LC1:
	.string	"r"
.LC2:
	.string	"/etc/resolv.conf"
.LC3:
	.string	"nameserver%*[ \t]%256s"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Warning: No DNS servers found\n"
	.section	.rodata.str1.1
.LC5:
	.string	"10.0.2.0"
	.text
	.p2align 4,,15
.globl slirp_init
	.type	slirp_init, @function
slirp_init:
.LFB48:
	.file 1 "slirp/slirp.c"
	.loc 1 140 0
	pushq	%r13
.LCFI0:
.LBB2:
.LBB3:
	.loc 1 89 0
	xorl	%r13d, %r13d
.LBE3:
.LBE2:
	.loc 1 140 0
	pushq	%r12
.LCFI1:
	pushq	%rbp
.LCFI2:
	pushq	%rbx
.LCFI3:
	subq	$792, %rsp
.LCFI4:
	.loc 1 151 0
	movl	$1, link_up(%rip)
	.loc 1 153 0
	call	if_init
	.loc 1 154 0
	call	ip_init
	.loc 1 157 0
	call	m_init
	.loc 1 160 0
	movl	$loopback_addr, %esi
	movl	$.LC0, %edi
	leaq	272(%rsp), %rbp
	call	inet_aton
.LBB4:
.LBB5:
	.loc 1 92 0
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	leaq	16(%rsp), %r12
	call	fopen64
	.loc 1 93 0
	testq	%rax, %rax
	.loc 1 92 0
	movq	%rax, %rbx
	.loc 1 93 0
	je	.L16
	.p2align 4,,7
.L22:
	.loc 1 116 0
	movq	%rbx, %rdx
	movl	$512, %esi
	movq	%rbp, %rdi
	call	fgets
	testq	%rax, %rax
	je	.L6
	.loc 1 100 0
	xorl	%eax, %eax
	movq	%r12, %rdx
	movl	$.LC3, %esi
	movq	%rbp, %rdi
	call	sscanf
	decl	%eax
	jne	.L22
	.loc 1 101 0
	leaq	12(%rsp), %rsi
	movq	%r12, %rdi
	call	inet_aton
	testl	%eax, %eax
	je	.L22
	.loc 1 103 0
	movl	12(%rsp), %eax
	cmpl	loopback_addr(%rip), %eax
	je	.L25
.L9:
	.loc 1 107 0
	testl	%r13d, %r13d
	cmovne	dns_addr(%rip), %eax
	.loc 1 112 0
	incl	%r13d
	cmpl	$3, %r13d
	.loc 1 107 0
	movl	%eax, dns_addr(%rip)
	.loc 1 112 0
	jle	.L22
.L6:
	.loc 1 124 0
	movq	%rbx, %rdi
	call	fclose
	.loc 1 125 0
	testl	%r13d, %r13d
	jne	.L2
.L16:
.LBE5:
.LBE4:
	.loc 1 163 0
	movl	loopback_addr(%rip), %eax
	.loc 1 164 0
	movq	stderr(%rip), %rcx
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	.loc 1 163 0
	movl	%eax, dns_addr(%rip)
	.loc 1 164 0
	call	fwrite
.L2:
	.loc 1 167 0
	movl	$special_addr, %esi
	movl	$.LC5, %edi
	call	inet_aton
	.loc 1 168 0
	movl	special_addr(%rip), %eax
	orl	$33554432, %eax
	movl	%eax, alias_addr(%rip)
	.loc 1 169 0
	call	getouraddr
	addq	$792, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L25:
.LBB6:
.LBB7:
	.loc 1 104 0
	movl	our_addr(%rip), %eax
	movl	%eax, 12(%rsp)
	jmp	.L9
.LBE7:
.LBE6:
.LFE48:
	.size	slirp_init, .-slirp_init
	.p2align 4,,15
.globl slirp_select_fill
	.type	slirp_select_fill, @function
slirp_select_fill:
.LFB50:
	.loc 1 203 0
	pushq	%r13
.LCFI5:
	movq	%rdx, %r8
	movq	%rdi, %r13
	pushq	%r12
.LCFI6:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI7:
	pushq	%rbx
.LCFI8:
	subq	$24, %rsp
.LCFI9:
	.loc 1 219 0
	movl	link_up(%rip), %r11d
	.loc 1 210 0
	movq	$0, global_readfds(%rip)
	.loc 1 211 0
	movq	$0, global_writefds(%rip)
	.loc 1 212 0
	movq	$0, global_xfds(%rip)
	.loc 1 214 0
	movl	(%rdi), %ebp
	.loc 1 219 0
	testl	%r11d, %r11d
	je	.L65
	.loc 1 224 0
	movq	tcb(%rip), %rdi
	xorl	%edx, %edx
	cmpq	$tcb, %rdi
	je	.L72
.L29:
	movl	$1, %edx
.L28:
	movl	%edx, do_slowtimo(%rip)
	jmp	.L68
	.p2align 4,,7
.L32:
	.loc 1 227 0
	movq	%rbx, %rdi
.L68:
	cmpq	$tcb, %rdi
	je	.L62
	.loc 1 233 0
	movl	time_fasttimo(%rip), %r10d
	.loc 1 228 0
	movq	(%rdi), %rbx
	.loc 1 233 0
	testl	%r10d, %r10d
	jne	.L33
	movq	64(%rdi), %rax
	testb	$2, 28(%rax)
	je	.L33
	.loc 1 234 0
	movl	curtime(%rip), %eax
	movl	%eax, time_fasttimo(%rip)
	.p2align 4,,7
.L33:
	.loc 1 240 0
	movl	60(%rdi), %edx
	testb	$1, %dl
	jne	.L32
	movl	16(%rdi), %esi
	cmpl	$-1, %esi
	je	.L32
	.loc 1 246 0
	testb	$1, %dh
	je	.L36
	.loc 1 247 0
	movslq	%esi,%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%r12,%rdx,8)
#NO_APP
.L71:
	.loc 1 257 0
	movl	16(%rdi), %eax
	cmpl	%ebp, %eax
	jle	.L32
	movl	%eax, %ebp
	jmp	.L32
	.p2align 4,,7
.L65:
	movl	$0, do_slowtimo(%rip)
.L27:
	.loc 1 329 0
	movl	do_slowtimo(%rip), %eax
	.loc 1 322 0
	movq	$0, (%rsp)
	.loc 1 323 0
	movq	$-1, %rdx
	.loc 1 329 0
	testl	%eax, %eax
	je	.L66
	.loc 1 331 0
	movl	curtime(%rip), %ecx
	movl	$500, %edx
	movl	%ecx, %eax
	subl	last_slowtimo(%rip), %eax
	subl	%eax, %edx
	.loc 1 335 0
	movl	$510000, %eax
	.loc 1 331 0
	imull	$1000, %edx, %edx
	addl	$10000, %edx
	.loc 1 335 0
	cmpq	$510001, %rdx
	cmovl	%rdx, %rax
	movq	%rax, 8(%rsp)
	.loc 1 338 0
	movl	time_fasttimo(%rip), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 339 0
	subl	%eax, %ecx
	movl	$200, %eax
	subl	%ecx, %eax
	imull	$1000, %eax, %edx
	.loc 1 341 0
	movl	$0, %eax
	testl	%edx, %edx
	cmovs	%eax, %edx
	.loc 1 344 0
	movslq	%edx,%rax
	cmpq	8(%rsp), %rax
	jge	.L54
	.loc 1 345 0
	mov	%edx, %eax
	movq	%rax, 8(%rsp)
	.loc 1 348 0
	movl	%ebp, (%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L66:
	movq	%rdx, 8(%rsp)
.L54:
	movl	%ebp, (%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L36:
	.loc 1 255 0
	testb	$2, %dl
	je	.L38
	.loc 1 256 0
	movslq	%esi,%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%r8,%rdx,8)
#NO_APP
	jmp	.L71
.L38:
	.loc 1 265 0
	movl	%edx, %eax
	andl	$20, %eax
	cmpl	$4, %eax
	je	.L73
.L40:
	.loc 1 274 0
	andl	$12, %edx
	cmpl	$4, %edx
	jne	.L32
	movl	124(%rdi), %eax
	shrl	%eax
	cmpl	%eax, 120(%rdi)
	jae	.L32
	.loc 1 275 0
	movslq	%esi,%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%r12,%rdx,8)
	.loc 1 276 0
#NO_APP
	movslq	16(%rdi),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%rcx,%rdx,8)
	.loc 1 277 0
#NO_APP
	movl	16(%rdi), %eax
	cmpl	%ebp, %eax
	cmovg	%eax, %ebp
	jmp	.L32
.L72:
	.loc 1 224 0
	mov	ipq(%rip), %eax
	cmpq	$ipq, %rax
	jne	.L29
	jmp	.L28
.L73:
	.loc 1 265 0
	movl	88(%rdi), %r9d
	testl	%r9d, %r9d
	je	.L40
	.loc 1 266 0
	movslq	%esi,%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%r8,%rdx,8)
	.loc 1 267 0
#NO_APP
	movl	16(%rdi), %esi
	cmpl	%ebp, %esi
	jle	.L64
	movl	%esi, %ebp
.L64:
	movl	60(%rdi), %edx
	jmp	.L40
	.p2align 4,,7
.L62:
	.loc 1 284 0
	movq	udb(%rip), %rdi
	jmp	.L70
	.p2align 4,,7
.L49:
	.loc 1 295 0
	movl	$1, do_slowtimo(%rip)
.L48:
	.loc 1 308 0
	testb	$4, 60(%rdi)
	je	.L47
	cmpl	$4, 76(%rdi)
	jg	.L47
	.loc 1 309 0
	movslq	16(%rdi),%rax
	movq	%rax, %rdx
	andl	$63, %eax
	shrq	$6, %rdx
#APP
	btsq %rax,(%r12,%rdx,8)
	.loc 1 310 0
#NO_APP
	movl	16(%rdi), %eax
	cmpl	%ebp, %eax
	cmovg	%eax, %ebp
	.p2align 4,,7
.L47:
	.loc 1 284 0
	movq	%rbx, %rdi
.L70:
	cmpq	$udb, %rdi
	je	.L27
	.loc 1 290 0
	movl	72(%rdi), %eax
	.loc 1 285 0
	movq	(%rdi), %rbx
	.loc 1 290 0
	testl	%eax, %eax
	je	.L48
	.loc 1 291 0
	cmpl	curtime(%rip), %eax
	ja	.L49
	.loc 1 292 0
	call	udp_detach
	.p2align 4,,3
	jmp	.L47
.LFE50:
	.size	slirp_select_fill, .-slirp_select_fill
	.p2align 4,,15
.globl slirp_select_poll
	.type	slirp_select_poll, @function
slirp_select_poll:
.LFB51:
	.loc 1 352 0
	pushq	%r14
.LCFI10:
	movq	%rsi, %r14
	pushq	%r13
.LCFI11:
	movq	%rdx, %r13
	pushq	%r12
.LCFI12:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI13:
	pushq	%rbx
.LCFI14:
	subq	$16, %rsp
.LCFI15:
	.loc 1 356 0
	movq	%rdi, global_readfds(%rip)
	.loc 1 357 0
	movq	%rsi, global_writefds(%rip)
.LBB8:
.LBB9:
	.loc 1 191 0
	movl	$tt, %edi
	xorl	%esi, %esi
.LBE9:
.LBE8:
	.loc 1 358 0
	movq	%rdx, global_xfds(%rip)
.LBB10:
.LBB11:
	.loc 1 191 0
	call	gettimeofday
	.loc 1 194 0
	movq	tt+8(%rip), %rcx
	.loc 1 193 0
	movl	tt(%rip), %eax
	.loc 1 196 0
	movabsq	$2361183241434822607, %rdx
	.loc 1 193 0
	imull	$1000, %eax, %esi
	.loc 1 194 0
	mov	%ecx, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	leal	(%rax,%rsi), %esi
	.loc 1 196 0
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$7, %rdx
	subq	%rax, %rdx
	imulq	$1000, %rdx, %rdx
	subq	%rdx, %rcx
	cmpq	$499, %rcx
	jle	.L110
	.loc 1 197 0
	incl	%esi
.L110:
.LBE11:
.LBE10:
	.loc 1 366 0
	movl	link_up(%rip), %eax
	movl	%esi, curtime(%rip)
	testl	%eax, %eax
	je	.L80
	.loc 1 367 0
	movl	time_fasttimo(%rip), %eax
	testl	%eax, %eax
	jne	.L113
.L78:
	.loc 1 371 0
	movl	do_slowtimo(%rip), %eax
	testl	%eax, %eax
	je	.L108
	movl	curtime(%rip), %eax
	subl	last_slowtimo(%rip), %eax
	cmpl	$498, %eax
	ja	.L114
.L108:
	movl	link_up(%rip), %eax
	.loc 1 381 0
	testl	%eax, %eax
	je	.L80
	.loc 1 385 0
	movq	tcb(%rip), %rbx
	jmp	.L111
	.p2align 4,,7
.L83:
	movq	%rbp, %rbx
.L111:
	cmpq	$tcb, %rbx
	je	.L105
	.loc 1 392 0
	movl	60(%rbx), %esi
	.loc 1 386 0
	movq	(%rbx), %rbp
	.loc 1 392 0
	testb	$1, %sil
	jne	.L83
	movl	16(%rbx), %edi
	cmpl	$-1, %edi
	je	.L83
.LBB12:
	.loc 1 400 0
	movslq	%edi,%rax
	movq	%rax, %rcx
	movq	%rax, %rdx
	andl	$63, %ecx
	shrq	$6, %rdx
#APP
	btq %rcx,(%r13,%rdx,8) ; setcb %al
#NO_APP
.LBE12:
	testb	%al, %al
	jne	.L115
.LBB13:
	.loc 1 405 0
#APP
	btq %rcx,(%r12,%rdx,8) ; setcb %al
#NO_APP
.LBE13:
	testb	%al, %al
	je	.L87
	.loc 1 409 0
	andl	$256, %esi
	je	.L89
	.loc 1 410 0
	movq	%rbx, %rdi
	call	tcp_connect
	.p2align 4,,4
	jmp	.L83
	.p2align 4,,7
.L80:
	.loc 1 511 0
	movl	if_queued(%rip), %ebp
	testl	%ebp, %ebp
	je	.L103
	movl	link_up(%rip), %ebx
	testl	%ebx, %ebx
	jne	.L116
.L103:
	.loc 1 519 0
	movq	$0, global_readfds(%rip)
	.loc 1 520 0
	movq	$0, global_writefds(%rip)
	.loc 1 521 0
	movq	$0, global_xfds(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L113:
	.loc 1 367 0
	subl	%eax, %esi
	cmpl	$1, %esi
	jbe	.L78
	.loc 1 368 0
	call	tcp_fasttimo
	.loc 1 369 0
	movl	$0, time_fasttimo(%rip)
	jmp	.L78
.L89:
	.loc 1 413 0
	movq	%rbx, %rdi
	call	soread
	.loc 1 416 0
	testl	%eax, %eax
	.loc 1 413 0
	movl	%eax, 12(%rsp)
	.loc 1 416 0
	jle	.L109
	.loc 1 417 0
	movq	64(%rbx), %rdi
	call	tcp_output
.L109:
	movl	16(%rbx), %edi
	.p2align 4,,7
.L87:
.LBB14:
	.loc 1 423 0
	movslq	%edi,%rax
	movq	%rax, %rdx
	shrq	$6, %rax
	andl	$63, %edx
#APP
	btq %rdx,(%r14,%rax,8) ; setcb %dl
#NO_APP
.LBE14:
	testb	%dl, %dl
	je	.L83
	.loc 1 427 0
	movl	60(%rbx), %eax
	testb	$2, %al
	je	.L92
	.loc 1 429 0
	andl	$-3, %eax
	.loc 1 431 0
	leaq	12(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.loc 1 429 0
	movl	%eax, 60(%rbx)
	.loc 1 431 0
	call	send
	.loc 1 432 0
	testl	%eax, %eax
	.loc 1 431 0
	movl	%eax, 12(%rsp)
	.loc 1 432 0
	js	.L117
.L93:
	.loc 1 446 0
	movq	%rbx, %rdx
	movl	$20, %esi
	xorl	%edi, %edi
	call	tcp_input
	jmp	.L83
.L116:
	.loc 1 512 0
	call	if_start
	.p2align 4,,8
	jmp	.L103
.L92:
	.loc 1 449 0
	movq	%rbx, %rdi
	.p2align 4,,6
	call	sowrite
	movl	%eax, 12(%rsp)
	.p2align 4,,3
	jmp	.L83
.L114:
	.loc 1 372 0
	call	ip_slowtimo
	.loc 1 373 0
	.p2align 4,,5
	call	tcp_slowtimo
	.loc 1 374 0
	movl	curtime(%rip), %eax
	movl	%eax, last_slowtimo(%rip)
	jmp	.L108
	.p2align 4,,7
.L105:
	.loc 1 499 0
	movq	udb(%rip), %rbx
	jmp	.L112
	.p2align 4,,7
.L100:
	movq	%rbp, %rbx
.L112:
	cmpq	$udb, %rbx
	je	.L80
	.loc 1 502 0
	movl	16(%rbx), %eax
	.loc 1 500 0
	movq	(%rbx), %rbp
	.loc 1 502 0
	cmpl	$-1, %eax
	je	.L100
.LBB15:
	cltq
	movq	%rax, %rdx
	shrq	$6, %rax
	andl	$63, %edx
#APP
	btq %rdx,(%r12,%rax,8) ; setcb %dl
#NO_APP
.LBE15:
	testb	%dl, %dl
	je	.L100
	.loc 1 503 0
	movq	%rbx, %rdi
	call	sorecvfrom
	jmp	.L100
.L115:
	.loc 1 401 0
	movq	%rbx, %rdi
	call	sorecvoob
	movl	16(%rbx), %edi
	.p2align 4,,4
	jmp	.L87
.L117:
	.loc 1 434 0
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$11, %eax
	.p2align 4,,2
	je	.L83
	cmpl	$115, %eax
	.p2align 4,,2
	je	.L83
	cmpl	$107, %eax
	.p2align 4,,3
	je	.L83
	.loc 1 439 0
	movl	$1, 60(%rbx)
	.p2align 4,,5
	jmp	.L93
.LFE51:
	.size	slirp_select_poll, .-slirp_select_poll
	.p2align 4,,15
.globl arp_input
	.type	arp_input, @function
arp_input:
.LFB52:
	.loc 1 558 0
	.loc 1 560 0
	leaq	14(%rdi), %r11
	.loc 1 558 0
	subq	$56, %rsp
.LCFI16:
	.loc 1 558 0
	movq	%rdi, %r10
	.loc 1 562 0
	movq	%rsp, %r9
	.loc 1 563 0
	leaq	14(%rsp), %r8
.LBB16:
	.loc 1 567 0
	movzwl	6(%r11), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE16:
	.loc 1 568 0
	decw	%ax
	je	.L142
.L118:
	.loc 1 603 0
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L142:
	.loc 1 570 0
	leaq	38(%rdi), %rsi
	movl	$special_addr, %edx
	movl	$3, %eax
	cld
	movq	%rdx, %rdi
	movq	%rax, %rcx
	repz
	cmpsb
	jne	.L118
	.loc 1 571 0
	movzbl	27(%r11), %esi
	leal	-2(%rsi), %eax
	cmpb	$1, %al
	jbe	.L125
	.loc 1 573 0
	movq	exec_list(%rip), %rdx
	testq	%rdx, %rdx
	je	.L118
	movzbl	%sil, %eax
	.p2align 4,,7
.L130:
	.loc 1 574 0
	cmpl	%eax, 4(%rdx)
	je	.L125
	.loc 1 573 0
	movq	24(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.L130
	.loc 1 603 0
	addq	$56, %rsp
	.p2align 4,,1
	ret
.L125:
	.loc 1 580 0
	movl	6(%r10), %eax
	.loc 1 584 0
	movl	special_ethaddr(%rip), %edx
	.loc 1 597 0
	movl	$42, %esi
	movq	%r9, %rdi
	.loc 1 580 0
	movl	%eax, client_ethaddr(%rip)
	movzwl	10(%r10), %eax
	movw	%ax, client_ethaddr+4(%rip)
	.loc 1 583 0
	movl	6(%r10), %eax
	movl	%eax, (%r9)
	movzwl	10(%r10), %eax
	.loc 1 584 0
	movl	%edx, 6(%r9)
	.loc 1 583 0
	movw	%ax, 4(%r9)
	.loc 1 584 0
	movzbl	special_ethaddr+4(%rip), %eax
	movb	%al, 10(%r9)
	.loc 1 585 0
	movzbl	27(%r11), %eax
	.loc 1 586 0
	movw	$1544, 12(%r9)
	.loc 1 585 0
	movb	%al, 11(%r9)
	.loc 1 588 0
	movw	$256, (%r8)
	.loc 1 589 0
	movw	$8, 2(%r8)
	.loc 1 590 0
	movb	$6, 4(%r8)
	.loc 1 591 0
	movb	$4, 5(%r8)
	.loc 1 592 0
	movw	$512, 6(%r8)
	.loc 1 593 0
	movl	%edx, 8(%r8)
	movzwl	10(%r9), %eax
	movw	%ax, 12(%r8)
	.loc 1 594 0
	movl	24(%r11), %eax
	movl	%eax, 14(%r8)
	.loc 1 595 0
	movl	8(%r11), %eax
	movl	%eax, 18(%r8)
	movzwl	12(%r11), %eax
	movw	%ax, 22(%r8)
	.loc 1 596 0
	movl	14(%r11), %eax
	movl	%eax, 24(%r8)
	.loc 1 597 0
	call	slirp_output
	.loc 1 603 0
	addq	$56, %rsp
	ret
.LFE52:
	.size	arp_input, .-arp_input
	.p2align 4,,15
.globl slirp_input
	.type	slirp_input, @function
slirp_input:
.LFB53:
	.loc 1 606 0
	movq	%rbx, -24(%rsp)
.LCFI17:
	movq	%rbp, -16(%rsp)
.LCFI18:
	movl	%esi, %ebx
	movq	%r12, -8(%rsp)
.LCFI19:
	subq	$24, %rsp
.LCFI20:
	.loc 1 610 0
	cmpl	$13, %esi
	.loc 1 606 0
	movq	%rdi, %rbp
	.loc 1 610 0
	jle	.L143
.LBB17:
	.loc 1 613 0
	movzwl	12(%rdi), %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE17:
	movzwl	%ax, %eax
	.loc 1 614 0
	cmpl	$2048, %eax
	je	.L149
	cmpl	$2054, %eax
	je	.L152
.L143:
	.loc 1 634 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L152:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 616 0
	jmp	arp_input
.L149:
	.loc 1 619 0
	call	m_get
	.loc 1 620 0
	testq	%rax, %rax
	.loc 1 619 0
	movq	%rax, %r12
	.loc 1 620 0
	je	.L143
	.loc 1 624 0
	movq	48(%r12), %rdi
	.loc 1 623 0
	leal	2(%rbx), %eax
	.loc 1 624 0
	movslq	%ebx,%rdx
	movq	%rbp, %rsi
	.loc 1 623 0
	movl	%eax, 56(%r12)
	.loc 1 624 0
	addq	$2, %rdi
	call	memcpy
	.loc 1 626 0
	addq	$16, 48(%r12)
	.loc 1 627 0
	subl	$16, 56(%r12)
	.loc 1 629 0
	movq	%r12, %rdi
	.loc 1 634 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 629 0
	jmp	ip_input
.LFE53:
	.size	slirp_input, .-slirp_input
	.p2align 4,,15
.globl if_encap
	.type	if_encap, @function
if_encap:
.LFB54:
	.loc 1 638 0
	movq	%rbx, -16(%rsp)
.LCFI21:
	.loc 1 642 0
	leal	14(%rsi), %ebx
	.loc 1 638 0
	movq	%rbp, -8(%rsp)
.LCFI22:
	subq	$1624, %rsp
.LCFI23:
	.loc 1 638 0
	movq	%rdi, %rcx
	.loc 1 642 0
	cmpl	$1600, %ebx
	jbe	.L157
	.loc 1 652 0
	movq	1608(%rsp), %rbx
	movq	1616(%rsp), %rbp
	addq	$1624, %rsp
	ret
	.p2align 4,,7
.L157:
	.loc 1 645 0
	movl	client_ethaddr(%rip), %eax
	.loc 1 650 0
	leaq	14(%rsp), %rdi
	movslq	%esi,%rdx
	movq	%rcx, %rsi
	.loc 1 648 0
	movb	$2, 11(%rsp)
	.loc 1 649 0
	movw	$8, 12(%rsp)
	.loc 1 645 0
	movl	%eax, (%rsp)
	movzwl	client_ethaddr+4(%rip), %eax
	movw	%ax, 4(%rsp)
	.loc 1 646 0
	movl	special_ethaddr(%rip), %eax
	movl	%eax, 6(%rsp)
	movzbl	special_ethaddr+4(%rip), %eax
	movb	%al, 10(%rsp)
	.loc 1 650 0
	call	memcpy
	.loc 1 651 0
	movl	%ebx, %esi
	movq	%rsp, %rdi
	call	slirp_output
	.loc 1 652 0
	movq	1608(%rsp), %rbx
	movq	1616(%rsp), %rbp
	addq	$1624, %rsp
	ret
.LFE54:
	.size	if_encap, .-if_encap
	.p2align 4,,15
.globl slirp_redir
	.type	slirp_redir, @function
slirp_redir:
.LFB55:
	.loc 1 656 0
	subq	$8, %rsp
.LCFI24:
	.loc 1 657 0
	testl	%edi, %edi
	.loc 1 656 0
	movl	%edx, %eax
	.loc 1 657 0
	je	.L159
.LBB18:
	.loc 1 659 0
	movl	%ecx, %edx
.LBE18:
.LBB19:
	.loc 1 658 0
	movl	%esi, %edi
.LBE19:
	xorl	%ecx, %ecx
.LBB20:
	.loc 1 659 0
#APP
	rorw $8, %dx
#NO_APP
.LBE20:
.LBB21:
	.loc 1 658 0
#APP
	rorw $8, %di
#NO_APP
.LBE21:
	.loc 1 659 0
	movzwl	%dx, %edx
	.loc 1 658 0
	movzwl	%di, %edi
	movl	%eax, %esi
	call	udp_listen
.L171:
	.loc 1 662 0
	testq	%rax, %rax
	.loc 1 664 0
	movl	$-1, %edx
	.loc 1 662 0
	je	.L158
	.loc 1 666 0
	xorl	%edx, %edx
.L158:
	.loc 1 667 0
	movl	%edx, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L159:
.LBB22:
	.loc 1 663 0
	movl	%ecx, %edx
.LBE22:
.LBB23:
	.loc 1 662 0
	movl	%esi, %edi
.LBE23:
	xorl	%ecx, %ecx
.LBB24:
	.loc 1 663 0
#APP
	rorw $8, %dx
#NO_APP
.LBE24:
.LBB25:
	.loc 1 662 0
#APP
	rorw $8, %di
#NO_APP
.LBE25:
	.loc 1 663 0
	movzwl	%dx, %edx
	.loc 1 662 0
	movzwl	%di, %edi
	movl	%eax, %esi
	call	solisten
	jmp	.L171
.LFE55:
	.size	slirp_redir, .-slirp_redir
	.p2align 4,,15
.globl slirp_add_exec
	.type	slirp_add_exec, @function
slirp_add_exec:
.LFB56:
	.loc 1 671 0
.LBB26:
	.loc 1 673 0
#APP
	rorw $8, %cx
#NO_APP
.LBE26:
	movzwl	%cx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	%edi, %esi
	movl	$exec_list, %edi
	jmp	add_exec
.LFE56:
	.size	slirp_add_exec, .-slirp_add_exec
	.comm	lfd,8,8
	.comm	tt,16,16
	.comm	link_up,4,4
	.comm	global_readfds,8,8
	.comm	global_writefds,8,8
	.comm	global_xfds,8,8
	.comm	special_addr,4,4
	.comm	alias_addr,4,4
	.comm	our_addr,4,4
	.comm	loopback_addr,4,4
	.comm	dns_addr,4,4
	.comm	client_ethaddr,6,1
	.comm	exec_list,8,8
	.comm	slirp_hostname,33,32
	.comm	do_slowtimo,4,4
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
	.byte	0x4
	.long	.LCFI0-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
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
	.uleb128 0x340
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI5-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI10-.LFB51
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
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI16-.LFB52
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI18-.LFB53
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
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
	.long	.LCFI21-.LFB54
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI21
	.byte	0xe
	.uleb128 0x660
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI24-.LFB55
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE14:
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
	.byte	0x4
	.long	.LCFI0-.LFB48
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
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
	.uleb128 0x340
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI5-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI10-.LFB51
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
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI16-.LFB52
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI18-.LFB53
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
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
	.long	.LCFI21-.LFB54
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI21
	.byte	0xe
	.uleb128 0x660
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI24-.LFB55
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.align 8
.LEFDE15:
	.file 2 "/usr/include/netinet/in.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 8 "/usr/include/sys/select.h"
	.file 9 "slirp/tcp.h"
	.file 10 "slirp/socket.h"
	.file 11 "slirp/udp.h"
	.file 12 "slirp/mbuf.h"
	.file 13 "/usr/include/sys/types.h"
	.file 14 "slirp/tcpip.h"
	.file 15 "slirp/ip.h"
	.file 16 "slirp/tcp_timer.h"
	.file 17 "slirp/tcp_var.h"
	.file 18 "slirp/sbuf.h"
	.file 19 "/usr/include/bits/time.h"
	.file 20 "slirp/misc.h"
	.file 21 "slirp/if.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x148e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF268
	.byte	0x1
	.long	.LASF269
	.long	.LASF270
	.uleb128 0x2
	.long	.LASF0
	.byte	0x6
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x6
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x6
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
	.byte	0x6
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x8e
	.long	0x7f
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0x95
	.long	0x7f
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x97
	.long	0x7f
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
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
	.byte	0xd
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.long	.LASF17
	.byte	0xd
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.long	.LASF18
	.byte	0xd
	.byte	0x25
	.long	0x51
	.uleb128 0x2
	.long	.LASF19
	.byte	0xd
	.byte	0x75
	.long	0xbb
	.uleb128 0x2
	.long	.LASF20
	.byte	0x7
	.byte	0xd5
	.long	0x63
	.uleb128 0x2
	.long	.LASF21
	.byte	0xd
	.byte	0xc9
	.long	0x38
	.uleb128 0x2
	.long	.LASF22
	.byte	0xd
	.byte	0xca
	.long	0x4a
	.uleb128 0x2
	.long	.LASF23
	.byte	0xd
	.byte	0xcb
	.long	0x5c
	.uleb128 0x7
	.long	0x154
	.long	.LASF32
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
	.uleb128 0x2
	.long	.LASF26
	.byte	0x8
	.byte	0x37
	.long	0x7f
	.uleb128 0x9
	.long	0x176
	.byte	0x80
	.byte	0x8
	.byte	0x4e
	.uleb128 0x8
	.long	.LASF27
	.byte	0x8
	.byte	0x48
	.long	0x176
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x186
	.long	0x154
	.uleb128 0xb
	.long	0x9c
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x8
	.byte	0x4e
	.long	0x15f
	.uleb128 0x3
	.long	.LASF29
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF30
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.byte	0x8
	.long	0x78
	.uleb128 0x6
	.byte	0x8
	.long	0x1ab
	.uleb128 0xc
	.long	0xcc
	.uleb128 0x2
	.long	.LASF31
	.byte	0x4
	.byte	0x31
	.long	0x1bb
	.uleb128 0x7
	.long	0x387
	.long	.LASF33
	.byte	0xd8
	.byte	0x4
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.value	0x115
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.value	0x116
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.value	0x117
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.value	0x118
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.value	0x119
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.value	0x11a
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.value	0x11b
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.value	0x11c
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF43
	.byte	0x5
	.value	0x11e
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF44
	.byte	0x5
	.value	0x11f
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.value	0x120
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF46
	.byte	0x5
	.value	0x122
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF47
	.byte	0x5
	.value	0x124
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF48
	.byte	0x5
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF49
	.byte	0x5
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF50
	.byte	0x5
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF51
	.byte	0x5
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF52
	.byte	0x5
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.value	0x132
	.long	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.value	0x136
	.long	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.value	0x148
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.value	0x149
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.value	0x14a
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.value	0x14b
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.value	0x14c
	.long	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x5
	.value	0x150
	.long	0x3e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF63
	.byte	0x5
	.byte	0xb4
	.uleb128 0x7
	.long	0x3c5
	.long	.LASF64
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0x8
	.long	.LASF65
	.byte	0x5
	.byte	0xbb
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x5
	.byte	0xbc
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x38e
	.uleb128 0x6
	.byte	0x8
	.long	0x1bb
	.uleb128 0xa
	.long	0x3e1
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0xa
	.long	0x3f7
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.byte	0x31
	.long	0x38
	.uleb128 0x2
	.long	.LASF69
	.byte	0x3
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF70
	.byte	0x2
	.byte	0x8d
	.long	0x402
	.uleb128 0x7
	.long	0x433
	.long	.LASF71
	.byte	0x4
	.byte	0x2
	.byte	0x8f
	.uleb128 0x8
	.long	.LASF72
	.byte	0x2
	.byte	0x90
	.long	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xf
	.byte	0xc0
	.long	0x120
	.uleb128 0x2
	.long	.LASF74
	.byte	0xf
	.byte	0xc8
	.long	0x433
	.uleb128 0x2
	.long	.LASF75
	.byte	0xf
	.byte	0xc9
	.long	0x433
	.uleb128 0x7
	.long	0x4c3
	.long	.LASF76
	.byte	0x14
	.byte	0xf
	.byte	0xcf
	.uleb128 0x8
	.long	.LASF77
	.byte	0xf
	.byte	0xd0
	.long	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF78
	.byte	0xf
	.byte	0xd0
	.long	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF79
	.byte	0xf
	.byte	0xd1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF80
	.byte	0xf
	.byte	0xd2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF81
	.byte	0xf
	.byte	0xd3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF82
	.byte	0xf
	.byte	0xd4
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF83
	.byte	0xf
	.byte	0xd5
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.long	0x54e
	.string	"ipq"
	.byte	0x1c
	.byte	0xf
	.byte	0xdf
	.uleb128 0x8
	.long	.LASF84
	.byte	0xf
	.byte	0xe0
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF85
	.byte	0xf
	.byte	0xe0
	.long	0x43e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF86
	.byte	0xf
	.byte	0xe1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF87
	.byte	0xf
	.byte	0xe2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF88
	.byte	0xf
	.byte	0xe3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF89
	.byte	0xf
	.byte	0xe4
	.long	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF90
	.byte	0xf
	.byte	0xe4
	.long	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF91
	.byte	0xf
	.byte	0xe6
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF92
	.byte	0xf
	.byte	0xe6
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x9
	.byte	0x28
	.long	0x120
	.uleb128 0x7
	.long	0x5f8
	.long	.LASF94
	.byte	0x14
	.byte	0x9
	.byte	0x36
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x37
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x38
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x39
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x3a
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.long	.LASF99
	.byte	0x9
	.byte	0x3f
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.long	.LASF100
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
	.long	.LASF101
	.byte	0x9
	.byte	0x42
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x49
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x4a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x4b
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x7
	.long	0x621
	.long	.LASF105
	.byte	0x28
	.byte	0xe
	.byte	0x2b
	.uleb128 0x8
	.long	.LASF106
	.byte	0xe
	.byte	0x2c
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF107
	.byte	0xe
	.byte	0x2d
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF108
	.byte	0x11
	.byte	0x2e
	.long	0x120
	.uleb128 0x7
	.long	0x8b5
	.long	.LASF109
	.byte	0xb8
	.byte	0x10
	.byte	0x83
	.uleb128 0x8
	.long	.LASF110
	.byte	0x11
	.byte	0x35
	.long	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF111
	.byte	0x11
	.byte	0x36
	.long	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF112
	.byte	0x11
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF113
	.byte	0x11
	.byte	0x38
	.long	0x8b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF114
	.byte	0x11
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF115
	.byte	0x11
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF116
	.byte	0x11
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF117
	.byte	0x11
	.byte	0x3c
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF118
	.byte	0x11
	.byte	0x3d
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.long	.LASF119
	.byte	0x11
	.byte	0x3e
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF120
	.byte	0x11
	.byte	0x4c
	.long	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF121
	.byte	0x11
	.byte	0x4e
	.long	0x9f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF122
	.byte	0x11
	.byte	0x54
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF123
	.byte	0x11
	.byte	0x55
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF124
	.byte	0x11
	.byte	0x56
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF125
	.byte	0x11
	.byte	0x57
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF126
	.byte	0x11
	.byte	0x58
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.string	"iss"
	.byte	0x11
	.byte	0x59
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF127
	.byte	0x11
	.byte	0x5a
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF128
	.byte	0x11
	.byte	0x5c
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.long	.LASF129
	.byte	0x11
	.byte	0x5d
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF130
	.byte	0x11
	.byte	0x5e
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.string	"irs"
	.byte	0x11
	.byte	0x5f
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF131
	.byte	0x11
	.byte	0x64
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF132
	.byte	0x11
	.byte	0x66
	.long	0x54e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF133
	.byte	0x11
	.byte	0x6a
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF134
	.byte	0x11
	.byte	0x6b
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF135
	.byte	0x11
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF136
	.byte	0x11
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x8
	.long	.LASF137
	.byte	0x11
	.byte	0x75
	.long	0x54e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF138
	.byte	0x11
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.long	.LASF139
	.byte	0x11
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x8
	.long	.LASF140
	.byte	0x11
	.byte	0x78
	.long	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF141
	.byte	0x11
	.byte	0x79
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x8
	.long	.LASF142
	.byte	0x11
	.byte	0x7c
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF143
	.byte	0x11
	.byte	0x7d
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0x8
	.long	.LASF144
	.byte	0x11
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0x8
	.long	.LASF145
	.byte	0x11
	.byte	0x83
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x8
	.long	.LASF146
	.byte	0x11
	.byte	0x84
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0x8
	.long	.LASF147
	.byte	0x11
	.byte	0x85
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0x8
	.long	.LASF148
	.byte	0x11
	.byte	0x86
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0x8
	.long	.LASF149
	.byte	0x11
	.byte	0x87
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF150
	.byte	0x11
	.byte	0x88
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x8
	.long	.LASF151
	.byte	0x11
	.byte	0x89
	.long	0x54e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xa
	.long	0x8c5
	.long	0x71
	.uleb128 0xb
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x9f7
	.long	.LASF152
	.byte	0xa0
	.byte	0x9
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF153
	.byte	0xa
	.byte	0x15
	.long	0x9f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF154
	.byte	0xa
	.byte	0x15
	.long	0x9f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"s"
	.byte	0xa
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF155
	.byte	0xa
	.byte	0x1a
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF156
	.byte	0xa
	.byte	0x1d
	.long	0xb2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF157
	.byte	0xa
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF158
	.byte	0xa
	.byte	0x20
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF159
	.byte	0xa
	.byte	0x21
	.long	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF160
	.byte	0xa
	.byte	0x22
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF161
	.byte	0xa
	.byte	0x23
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.long	.LASF162
	.byte	0xa
	.byte	0x25
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF163
	.byte	0xa
	.byte	0x26
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x8
	.long	.LASF164
	.byte	0xa
	.byte	0x28
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x8
	.long	.LASF165
	.byte	0xa
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF166
	.byte	0xa
	.byte	0x2b
	.long	0xb33
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF167
	.byte	0xa
	.byte	0x2c
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF168
	.byte	0xa
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF169
	.byte	0xa
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF170
	.byte	0xa
	.byte	0x33
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF171
	.byte	0xa
	.byte	0x34
	.long	0xada
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF172
	.byte	0xa
	.byte	0x35
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x8c5
	.uleb128 0x7
	.long	0xa88
	.long	.LASF173
	.byte	0x40
	.byte	0xc
	.byte	0x3f
	.uleb128 0x8
	.long	.LASF174
	.byte	0xc
	.byte	0x40
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF175
	.byte	0xc
	.byte	0x41
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF176
	.byte	0xc
	.byte	0x42
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF177
	.byte	0xc
	.byte	0x43
	.long	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF178
	.byte	0xc
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF179
	.byte	0xc
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF180
	.byte	0xc
	.byte	0x47
	.long	0x9f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF181
	.byte	0xc
	.byte	0x49
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF182
	.byte	0xc
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0xab1
	.long	.LASF183
	.byte	0x48
	.byte	0xb
	.byte	0x66
	.uleb128 0x8
	.long	.LASF173
	.byte	0xc
	.byte	0x5c
	.long	0x9fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF184
	.byte	0xc
	.byte	0x60
	.long	0xab7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa88
	.uleb128 0x12
	.long	0xada
	.long	.LASF184
	.byte	0x8
	.byte	0xc
	.byte	0x5d
	.uleb128 0x13
	.long	.LASF185
	.byte	0xc
	.byte	0x5e
	.long	0x3d1
	.uleb128 0x13
	.long	.LASF186
	.byte	0xc
	.byte	0x5f
	.long	0xc6
	.byte	0x0
	.uleb128 0x7
	.long	0xb2d
	.long	.LASF187
	.byte	0x20
	.byte	0x12
	.byte	0xe
	.uleb128 0x8
	.long	.LASF188
	.byte	0x12
	.byte	0xf
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF189
	.byte	0x12
	.byte	0x10
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF190
	.byte	0x12
	.byte	0x11
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF191
	.byte	0x12
	.byte	0x13
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF192
	.byte	0x12
	.byte	0x15
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5f8
	.uleb128 0x6
	.byte	0x8
	.long	0x62c
	.uleb128 0x7
	.long	0xb8c
	.long	.LASF193
	.byte	0x20
	.byte	0x14
	.byte	0xb
	.uleb128 0x8
	.long	.LASF194
	.byte	0x14
	.byte	0xc
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF195
	.byte	0x14
	.byte	0xd
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF196
	.byte	0x14
	.byte	0xe
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF197
	.byte	0x14
	.byte	0xf
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF198
	.byte	0x14
	.byte	0x10
	.long	0xb8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb39
	.uleb128 0x14
	.long	0xbcd
	.long	.LASF199
	.byte	0xe
	.byte	0x1
	.value	0x216
	.uleb128 0xd
	.long	.LASF200
	.byte	0x1
	.value	0x217
	.long	0xbcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF201
	.byte	0x1
	.value	0x218
	.long	0xbcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF202
	.byte	0x1
	.value	0x219
	.long	0x4a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0xbdd
	.long	0x38
	.uleb128 0xb
	.long	0x9c
	.byte	0x5
	.byte	0x0
	.uleb128 0x14
	.long	0xc72
	.long	.LASF203
	.byte	0x1c
	.byte	0x1
	.value	0x21d
	.uleb128 0xd
	.long	.LASF204
	.byte	0x1
	.value	0x21e
	.long	0x4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF205
	.byte	0x1
	.value	0x21f
	.long	0x4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF206
	.byte	0x1
	.value	0x220
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF207
	.byte	0x1
	.value	0x221
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF208
	.byte	0x1
	.value	0x222
	.long	0x4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.long	.LASF209
	.byte	0x1
	.value	0x227
	.long	0xbcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF210
	.byte	0x1
	.value	0x228
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF211
	.byte	0x1
	.value	0x229
	.long	0xbcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.long	.LASF212
	.byte	0x1
	.value	0x22a
	.long	0xc72
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0xc82
	.long	0x38
	.uleb128 0xb
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x15
	.long	0xcea
	.byte	0x1
	.long	.LASF217
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	0xcea
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.long	0xcfb
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x19
	.long	0xd06
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x19
	.long	0xd11
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	0xd1c
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	0xd25
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.long	0xd30
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xd3c
	.long	.LASF271
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0x78
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF219
	.byte	0x1
	.byte	0x54
	.long	0xd3c
	.uleb128 0x1c
	.long	.LASF213
	.byte	0x1
	.byte	0x56
	.long	0xd42
	.uleb128 0x1c
	.long	.LASF214
	.byte	0x1
	.byte	0x57
	.long	0xd53
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.byte	0x58
	.long	0xd63
	.uleb128 0x1c
	.long	.LASF215
	.byte	0x1
	.byte	0x59
	.long	0x78
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x5a
	.long	0x418
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x418
	.uleb128 0xa
	.long	0xd53
	.long	0xcc
	.uleb128 0x1e
	.long	0x9c
	.value	0x1ff
	.byte	0x0
	.uleb128 0xa
	.long	0xd63
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b0
	.uleb128 0x15
	.long	0xdfe
	.byte	0x1
	.long	.LASF218
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF220
	.byte	0x1
	.byte	0xc9
	.long	0x19f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.long	.LASF221
	.byte	0x1
	.byte	0xca
	.long	0xdfe
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.byte	0xca
	.long	0xdfe
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.long	.LASF223
	.byte	0x1
	.byte	0xca
	.long	0xdfe
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"so"
	.byte	0x1
	.byte	0xcc
	.long	0x9f7
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.byte	0xcc
	.long	0x9f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF224
	.byte	0x1
	.byte	0xcd
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF225
	.byte	0x1
	.byte	0xce
	.long	0x78
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF226
	.byte	0x1
	.byte	0xcf
	.long	0x78
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x186
	.uleb128 0x22
	.long	0xf1a
	.byte	0x1
	.long	.LASF227
	.byte	0x1
	.value	0x160
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF221
	.byte	0x1
	.value	0x15f
	.long	0xdfe
	.byte	0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF222
	.byte	0x1
	.value	0x15f
	.long	0xdfe
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.long	.LASF223
	.byte	0x1
	.value	0x15f
	.long	0xdfe
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.string	"so"
	.byte	0x1
	.value	0x161
	.long	0x9f7
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.long	.LASF153
	.byte	0x1
	.value	0x161
	.long	0x9f7
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x162
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.long	0xf1a
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x27
	.long	0xeb1
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x25
	.long	.LASF228
	.byte	0x1
	.value	0x190
	.long	0xcc
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.long	0xed5
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x25
	.long	.LASF228
	.byte	0x1
	.value	0x195
	.long	0xcc
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.long	0xef9
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x25
	.long	.LASF228
	.byte	0x1
	.value	0x1a7
	.long	0xcc
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x28
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x25
	.long	.LASF228
	.byte	0x1
	.value	0x1f6
	.long	0xcc
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LASF272
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0xff7
	.byte	0x1
	.long	.LASF229
	.byte	0x1
	.value	0x22e
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"pkt"
	.byte	0x1
	.value	0x22d
	.long	0xff7
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.long	.LASF230
	.byte	0x1
	.value	0x22d
	.long	0x78
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"eh"
	.byte	0x1
	.value	0x22f
	.long	0x1002
	.uleb128 0x24
	.string	"ah"
	.byte	0x1
	.value	0x230
	.long	0x1008
	.byte	0x1
	.byte	0x5b
	.uleb128 0x25
	.long	.LASF231
	.byte	0x1
	.value	0x231
	.long	0x100e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"reh"
	.byte	0x1
	.value	0x232
	.long	0x1002
	.uleb128 0x24
	.string	"rah"
	.byte	0x1
	.value	0x233
	.long	0x1008
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	.LASF208
	.byte	0x1
	.value	0x234
	.long	0x78
	.uleb128 0x25
	.long	.LASF232
	.byte	0x1
	.value	0x235
	.long	0xb8c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	.LASF273
	.byte	0x1
	.value	0x242
	.quad	.L125
	.uleb128 0x28
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x2b
	.string	"__v"
	.byte	0x1
	.value	0x237
	.long	0x4a
	.uleb128 0x24
	.string	"__x"
	.byte	0x1
	.value	0x237
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xffd
	.uleb128 0xc
	.long	0x3f7
	.uleb128 0x6
	.byte	0x8
	.long	0xb92
	.uleb128 0x6
	.byte	0x8
	.long	0xbdd
	.uleb128 0xa
	.long	0x101e
	.long	0x3f7
	.uleb128 0xb
	.long	0x9c
	.byte	0x29
	.byte	0x0
	.uleb128 0x22
	.long	0x10a1
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.value	0x25e
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"pkt"
	.byte	0x1
	.value	0x25d
	.long	0xff7
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.long	.LASF230
	.byte	0x1
	.value	0x25d
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.value	0x25f
	.long	0xab1
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.long	.LASF234
	.byte	0x1
	.value	0x260
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x2b
	.string	"__v"
	.byte	0x1
	.value	0x265
	.long	0x4a
	.uleb128 0x24
	.string	"__x"
	.byte	0x1
	.value	0x265
	.long	0x4a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x10f8
	.byte	0x1
	.long	.LASF235
	.byte	0x1
	.value	0x27e
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF236
	.byte	0x1
	.value	0x27d
	.long	0xff7
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.long	.LASF237
	.byte	0x1
	.value	0x27d
	.long	0x78
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x27f
	.long	0x10f8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"eh"
	.byte	0x1
	.value	0x280
	.long	0x1002
	.byte	0x0
	.uleb128 0xa
	.long	0x1109
	.long	0x3f7
	.uleb128 0x1e
	.long	0x9c
	.value	0x63f
	.byte	0x0
	.uleb128 0x2e
	.long	0x11f2
	.byte	0x1
	.long	.LASF238
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	0x78
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF239
	.byte	0x1
	.value	0x28e
	.long	0x78
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF240
	.byte	0x1
	.value	0x28e
	.long	0x78
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x28f
	.long	0x418
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF242
	.byte	0x1
	.value	0x28f
	.long	0x78
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.long	0x1189
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x24
	.string	"__v"
	.byte	0x1
	.value	0x293
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"__x"
	.byte	0x1
	.value	0x293
	.long	0x4a
	.byte	0x0
	.uleb128 0x2f
	.long	0x11ad
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x24
	.string	"__v"
	.byte	0x1
	.value	0x292
	.long	0x4a
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"__x"
	.byte	0x1
	.value	0x292
	.long	0x4a
	.byte	0x0
	.uleb128 0x2f
	.long	0x11d1
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x24
	.string	"__v"
	.byte	0x1
	.value	0x297
	.long	0x4a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"__x"
	.byte	0x1
	.value	0x297
	.long	0x4a
	.byte	0x0
	.uleb128 0x18
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x24
	.string	"__v"
	.byte	0x1
	.value	0x296
	.long	0x4a
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"__x"
	.byte	0x1
	.value	0x296
	.long	0x4a
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x127b
	.byte	0x1
	.long	.LASF243
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	0x78
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	.LASF244
	.byte	0x1
	.value	0x29d
	.long	0x78
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x29d
	.long	0x1a5
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x29d
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF242
	.byte	0x1
	.value	0x29e
	.long	0x78
	.byte	0x1
	.byte	0x52
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x24
	.string	"__v"
	.byte	0x1
	.value	0x2a1
	.long	0x4a
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"__x"
	.byte	0x1
	.value	0x2a1
	.long	0x4a
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF247
	.byte	0x4
	.byte	0x91
	.long	0x3cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF248
	.byte	0x4
	.byte	0x92
	.long	0x3cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF249
	.byte	0x4
	.byte	0x93
	.long	0x3cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"lfd"
	.byte	0x1
	.byte	0x18
	.long	0xd63
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	lfd
	.uleb128 0x32
	.string	"ipq"
	.byte	0xf
	.value	0x138
	.long	0x4c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"udb"
	.byte	0xb
	.byte	0x65
	.long	0x8c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"tcb"
	.byte	0xa
	.byte	0x4a
	.long	0x8c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF250
	.byte	0x15
	.byte	0x23
	.long	0x78
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"tt"
	.byte	0x1
	.byte	0x17
	.long	0x12b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	tt
	.uleb128 0x34
	.long	.LASF251
	.byte	0x1
	.byte	0x16
	.long	0x78
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	link_up
	.uleb128 0x30
	.long	.LASF252
	.byte	0x14
	.byte	0x14
	.long	0xe9
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF253
	.byte	0x1
	.byte	0x1c
	.long	0xdfe
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	global_readfds
	.uleb128 0x34
	.long	.LASF254
	.byte	0x1
	.byte	0x1c
	.long	0xdfe
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	global_writefds
	.uleb128 0x34
	.long	.LASF255
	.byte	0x1
	.byte	0x1c
	.long	0xdfe
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	global_xfds
	.uleb128 0x34
	.long	.LASF256
	.byte	0x1
	.byte	0xb
	.long	0x418
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	special_addr
	.uleb128 0x34
	.long	.LASF257
	.byte	0x1
	.byte	0xd
	.long	0x418
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	alias_addr
	.uleb128 0x34
	.long	.LASF258
	.byte	0x1
	.byte	0x4
	.long	0x418
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	our_addr
	.uleb128 0x34
	.long	.LASF259
	.byte	0x1
	.byte	0x8
	.long	0x418
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	loopback_addr
	.uleb128 0x34
	.long	.LASF260
	.byte	0x1
	.byte	0x6
	.long	0x418
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	dns_addr
	.uleb128 0xa
	.long	0x13e5
	.long	0x3f7
	.uleb128 0xb
	.long	0x9c
	.byte	0x5
	.byte	0x0
	.uleb128 0x34
	.long	.LASF261
	.byte	0x1
	.byte	0x13
	.long	0x13d5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	client_ethaddr
	.uleb128 0x34
	.long	.LASF262
	.byte	0x1
	.byte	0x19
	.long	0xb8c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	exec_list
	.uleb128 0x30
	.long	.LASF263
	.byte	0x14
	.byte	0x14
	.long	0xe9
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF264
	.byte	0x14
	.byte	0x14
	.long	0xe9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x143b
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0x20
	.byte	0x0
	.uleb128 0x34
	.long	.LASF265
	.byte	0x1
	.byte	0x1e
	.long	0x142b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	slirp_hostname
	.uleb128 0xa
	.long	0x1461
	.long	0xffd
	.uleb128 0xb
	.long	0x9c
	.byte	0x5
	.byte	0x0
	.uleb128 0x21
	.long	.LASF266
	.byte	0x1
	.byte	0xf
	.long	0x1476
	.byte	0x9
	.byte	0x3
	.quad	special_ethaddr
	.uleb128 0xc
	.long	0x1451
	.uleb128 0x34
	.long	.LASF267
	.byte	0x1
	.byte	0x15
	.long	0x78
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	do_slowtimo
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x1b
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.long	0x179
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1492
	.long	0xc82
	.string	"slirp_init"
	.long	0xd69
	.string	"slirp_select_fill"
	.long	0xe04
	.string	"slirp_select_poll"
	.long	0xf23
	.string	"arp_input"
	.long	0x101e
	.string	"slirp_input"
	.long	0x10a1
	.string	"if_encap"
	.long	0x1109
	.string	"slirp_redir"
	.long	0x11f2
	.string	"slirp_add_exec"
	.long	0x12a2
	.string	"lfd"
	.long	0x12ed
	.string	"tt"
	.long	0x1302
	.string	"link_up"
	.long	0x1325
	.string	"global_readfds"
	.long	0x133b
	.string	"global_writefds"
	.long	0x1351
	.string	"global_xfds"
	.long	0x1367
	.string	"special_addr"
	.long	0x137d
	.string	"alias_addr"
	.long	0x1393
	.string	"our_addr"
	.long	0x13a9
	.string	"loopback_addr"
	.long	0x13bf
	.string	"dns_addr"
	.long	0x13e5
	.string	"client_ethaddr"
	.long	0x13fb
	.string	"exec_list"
	.long	0x143b
	.string	"slirp_hostname"
	.long	0x147b
	.string	"do_slowtimo"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"size_t"
.LASF270:
	.string	"/home/remco/Projects/Argos/src"
.LASF92:
	.string	"ipq_dst"
.LASF87:
	.string	"ipq_p"
.LASF178:
	.string	"mh_flags"
.LASF81:
	.string	"ih_len"
.LASF72:
	.string	"s_addr"
.LASF106:
	.string	"ti_i"
.LASF227:
	.string	"slirp_select_poll"
.LASF194:
	.string	"ex_pty"
.LASF73:
	.string	"caddr32_t"
.LASF45:
	.string	"_IO_save_end"
.LASF98:
	.string	"th_ack"
.LASF174:
	.string	"mh_next"
.LASF181:
	.string	"mh_data"
.LASF183:
	.string	"mbuf"
.LASF175:
	.string	"mh_prev"
.LASF101:
	.string	"th_flags"
.LASF162:
	.string	"so_iptos"
.LASF213:
	.string	"buff"
.LASF38:
	.string	"_IO_write_base"
.LASF237:
	.string	"ip_data_len"
.LASF54:
	.string	"_lock"
.LASF249:
	.string	"stderr"
.LASF239:
	.string	"is_udp"
.LASF255:
	.string	"global_xfds"
.LASF43:
	.string	"_IO_save_base"
.LASF253:
	.string	"global_readfds"
.LASF149:
	.string	"ts_recent"
.LASF47:
	.string	"_chain"
.LASF96:
	.string	"th_dport"
.LASF187:
	.string	"sbuf"
.LASF51:
	.string	"_cur_column"
.LASF115:
	.string	"t_rxtcur"
.LASF135:
	.string	"t_idle"
.LASF172:
	.string	"extra"
.LASF161:
	.string	"so_lport"
.LASF156:
	.string	"so_ti"
.LASF119:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF86:
	.string	"ipq_ttl"
.LASF14:
	.string	"__caddr_t"
.LASF16:
	.string	"u_char"
.LASF64:
	.string	"_IO_marker"
.LASF257:
	.string	"alias_addr"
.LASF252:
	.string	"curtime"
.LASF120:
	.string	"t_template"
.LASF269:
	.string	"slirp/slirp.c"
.LASF0:
	.string	"__u_char"
.LASF177:
	.string	"mh_prevpkt"
.LASF261:
	.string	"client_ethaddr"
.LASF180:
	.string	"mh_so"
.LASF100:
	.string	"th_off"
.LASF128:
	.string	"rcv_wnd"
.LASF82:
	.string	"ih_src"
.LASF83:
	.string	"ih_dst"
.LASF71:
	.string	"in_addr"
.LASF152:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF207:
	.string	"ar_pln"
.LASF33:
	.string	"_IO_FILE"
.LASF110:
	.string	"seg_next"
.LASF157:
	.string	"so_urgc"
.LASF195:
	.string	"ex_addr"
.LASF2:
	.string	"unsigned char"
.LASF163:
	.string	"so_emu"
.LASF75:
	.string	"ipasfragp_32"
.LASF184:
	.string	"M_dat"
.LASF160:
	.string	"so_fport"
.LASF95:
	.string	"th_sport"
.LASF21:
	.string	"u_int8_t"
.LASF212:
	.string	"ar_tip"
.LASF230:
	.string	"pkt_len"
.LASF127:
	.string	"snd_wnd"
.LASF94:
	.string	"tcphdr"
.LASF215:
	.string	"found"
.LASF105:
	.string	"tcpiphdr"
.LASF140:
	.string	"t_rttmin"
.LASF63:
	.string	"_IO_lock_t"
.LASF32:
	.string	"timeval"
.LASF131:
	.string	"rcv_adv"
.LASF226:
	.string	"tmp_time"
.LASF220:
	.string	"pnfds"
.LASF35:
	.string	"_IO_read_ptr"
.LASF90:
	.string	"ipq_prev"
.LASF108:
	.string	"tcpiphdrp_32"
.LASF111:
	.string	"seg_prev"
.LASF67:
	.string	"_pos"
.LASF151:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF210:
	.string	"ar_sip"
.LASF192:
	.string	"sb_data"
.LASF46:
	.string	"_markers"
.LASF258:
	.string	"our_addr"
.LASF18:
	.string	"u_int"
.LASF121:
	.string	"t_socket"
.LASF148:
	.string	"requested_s_scale"
.LASF256:
	.string	"special_addr"
.LASF244:
	.string	"do_pty"
.LASF26:
	.string	"__fd_mask"
.LASF141:
	.string	"max_sndwnd"
.LASF88:
	.string	"ipq_id"
.LASF209:
	.string	"ar_sha"
.LASF25:
	.string	"tv_usec"
.LASF70:
	.string	"in_addr_t"
.LASF224:
	.string	"timeout"
.LASF134:
	.string	"snd_ssthresh"
.LASF202:
	.string	"h_proto"
.LASF264:
	.string	"last_slowtimo"
.LASF221:
	.string	"readfds"
.LASF55:
	.string	"_offset"
.LASF89:
	.string	"ipq_next"
.LASF22:
	.string	"u_int16_t"
.LASF6:
	.string	"long unsigned int"
.LASF240:
	.string	"host_port"
.LASF113:
	.string	"t_timer"
.LASF49:
	.string	"_flags2"
.LASF37:
	.string	"_IO_read_base"
.LASF116:
	.string	"t_dupacks"
.LASF191:
	.string	"sb_rptr"
.LASF62:
	.string	"_unused2"
.LASF179:
	.string	"mh_size"
.LASF218:
	.string	"slirp_select_fill"
.LASF133:
	.string	"snd_cwnd"
.LASF197:
	.string	"ex_exec"
.LASF247:
	.string	"stdin"
.LASF50:
	.string	"_old_offset"
.LASF93:
	.string	"tcp_seq"
.LASF245:
	.string	"args"
.LASF200:
	.string	"h_dest"
.LASF112:
	.string	"t_state"
.LASF144:
	.string	"t_softerror"
.LASF243:
	.string	"slirp_add_exec"
.LASF137:
	.string	"t_rtseq"
.LASF30:
	.string	"long long int"
.LASF231:
	.string	"arp_reply"
.LASF189:
	.string	"sb_datalen"
.LASF74:
	.string	"ipqp_32"
.LASF225:
	.string	"nfds"
.LASF40:
	.string	"_IO_write_end"
.LASF132:
	.string	"snd_max"
.LASF229:
	.string	"arp_input"
.LASF246:
	.string	"addr_low_byte"
.LASF122:
	.string	"snd_una"
.LASF41:
	.string	"_IO_buf_base"
.LASF142:
	.string	"t_oobflags"
.LASF118:
	.string	"t_force"
.LASF65:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF99:
	.string	"th_x2"
.LASF268:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF19:
	.string	"caddr_t"
.LASF129:
	.string	"rcv_nxt"
.LASF196:
	.string	"ex_fport"
.LASF56:
	.string	"__pad1"
.LASF57:
	.string	"__pad2"
.LASF58:
	.string	"__pad3"
.LASF59:
	.string	"__pad4"
.LASF60:
	.string	"__pad5"
.LASF271:
	.string	"get_dns_addr"
.LASF251:
	.string	"link_up"
.LASF66:
	.string	"_sbuf"
.LASF236:
	.string	"ip_data"
.LASF13:
	.string	"__suseconds_t"
.LASF130:
	.string	"rcv_up"
.LASF117:
	.string	"t_maxseg"
.LASF34:
	.string	"_flags"
.LASF155:
	.string	"so_m"
.LASF61:
	.string	"_mode"
.LASF153:
	.string	"so_next"
.LASF233:
	.string	"slirp_input"
.LASF124:
	.string	"snd_up"
.LASF15:
	.string	"char"
.LASF27:
	.string	"fds_bits"
.LASF198:
	.string	"ex_next"
.LASF102:
	.string	"th_win"
.LASF84:
	.string	"next"
.LASF154:
	.string	"so_prev"
.LASF216:
	.string	"tmp_addr"
.LASF31:
	.string	"FILE"
.LASF204:
	.string	"ar_hrd"
.LASF171:
	.string	"so_snd"
.LASF173:
	.string	"m_hdr"
.LASF176:
	.string	"mh_nextpkt"
.LASF103:
	.string	"th_sum"
.LASF150:
	.string	"ts_recent_age"
.LASF145:
	.string	"snd_scale"
.LASF29:
	.string	"long long unsigned int"
.LASF143:
	.string	"t_iobc"
.LASF68:
	.string	"uint8_t"
.LASF254:
	.string	"global_writefds"
.LASF10:
	.string	"__off_t"
.LASF147:
	.string	"request_r_scale"
.LASF80:
	.string	"ih_pr"
.LASF158:
	.string	"so_faddr"
.LASF169:
	.string	"so_nqueued"
.LASF250:
	.string	"if_queued"
.LASF12:
	.string	"__time_t"
.LASF186:
	.string	"m_ext_"
.LASF267:
	.string	"do_slowtimo"
.LASF44:
	.string	"_IO_backup_base"
.LASF53:
	.string	"_shortbuf"
.LASF266:
	.string	"special_ethaddr"
.LASF193:
	.string	"ex_list"
.LASF97:
	.string	"th_seq"
.LASF11:
	.string	"__off64_t"
.LASF219:
	.string	"pdns_addr"
.LASF107:
	.string	"ti_t"
.LASF259:
	.string	"loopback_addr"
.LASF182:
	.string	"mh_len"
.LASF42:
	.string	"_IO_buf_end"
.LASF109:
	.string	"tcpcb"
.LASF165:
	.string	"so_state"
.LASF235:
	.string	"if_encap"
.LASF263:
	.string	"time_fasttimo"
.LASF114:
	.string	"t_rxtshift"
.LASF76:
	.string	"ipovly"
.LASF201:
	.string	"h_source"
.LASF8:
	.string	"short int"
.LASF232:
	.string	"ex_ptr"
.LASF23:
	.string	"u_int32_t"
.LASF214:
	.string	"buff2"
.LASF260:
	.string	"dns_addr"
.LASF203:
	.string	"arphdr"
.LASF167:
	.string	"so_expire"
.LASF217:
	.string	"slirp_init"
.LASF139:
	.string	"t_rttvar"
.LASF52:
	.string	"_vtable_offset"
.LASF222:
	.string	"writefds"
.LASF273:
	.string	"arp_ok"
.LASF77:
	.string	"ih_next"
.LASF104:
	.string	"th_urp"
.LASF164:
	.string	"so_type"
.LASF78:
	.string	"ih_prev"
.LASF125:
	.string	"snd_wl1"
.LASF126:
	.string	"snd_wl2"
.LASF28:
	.string	"fd_set"
.LASF1:
	.string	"__u_short"
.LASF188:
	.string	"sb_cc"
.LASF208:
	.string	"ar_op"
.LASF262:
	.string	"exec_list"
.LASF36:
	.string	"_IO_read_end"
.LASF234:
	.string	"proto"
.LASF159:
	.string	"so_laddr"
.LASF223:
	.string	"xfds"
.LASF69:
	.string	"uint32_t"
.LASF138:
	.string	"t_srtt"
.LASF48:
	.string	"_fileno"
.LASF170:
	.string	"so_rcv"
.LASF272:
	.string	"updtime"
.LASF265:
	.string	"slirp_hostname"
.LASF242:
	.string	"guest_port"
.LASF123:
	.string	"snd_nxt"
.LASF206:
	.string	"ar_hln"
.LASF241:
	.string	"guest_addr"
.LASF168:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF248:
	.string	"stdout"
.LASF238:
	.string	"slirp_redir"
.LASF211:
	.string	"ar_tha"
.LASF39:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"ih_x1"
.LASF166:
	.string	"so_tcpcb"
.LASF228:
	.string	"__result"
.LASF17:
	.string	"u_short"
.LASF199:
	.string	"ethhdr"
.LASF190:
	.string	"sb_wptr"
.LASF146:
	.string	"rcv_scale"
.LASF185:
	.string	"m_dat_"
.LASF85:
	.string	"prev"
.LASF24:
	.string	"tv_sec"
.LASF205:
	.string	"ar_pro"
.LASF136:
	.string	"t_rtt"
.LASF91:
	.string	"ipq_src"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
