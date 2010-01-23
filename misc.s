	.file	"misc.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl getouraddr
	.type	getouraddr, @function
getouraddr:
.LFB47:
	.file 1 "slirp/misc.c"
	.loc 1 88 0
	pushq	%rbx
.LCFI0:
	.loc 1 92 0
	movl	$256, %esi
	.loc 1 88 0
	subq	$256, %rsp
.LCFI1:
	.loc 1 92 0
	movq	%rsp, %rdi
	call	gethostname
	testl	%eax, %eax
	je	.L8
.L5:
	movl	our_addr(%rip), %eax
.L3:
	.loc 1 96 0
	testl	%eax, %eax
	jne	.L1
	.loc 1 97 0
	movl	loopback_addr(%rip), %eax
	movl	%eax, our_addr(%rip)
.L1:
	.loc 1 98 0
	addq	$256, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L8:
	.loc 1 93 0
	movq	%rsp, %rdi
	call	gethostbyname
	.loc 1 94 0
	testq	%rax, %rax
	je	.L5
	.loc 1 95 0
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, our_addr(%rip)
	jmp	.L3
.LFE47:
	.size	getouraddr, .-getouraddr
	.p2align 4,,15
.globl insque_32
	.type	insque_32, @function
insque_32:
.LFB48:
	.loc 1 111 0
	.loc 1 114 0
	movl	(%rsi), %eax
	.loc 1 116 0
	movl	%esi, 4(%rdi)
	.loc 1 114 0
	movl	%eax, (%rdi)
	.loc 1 115 0
	movl	%edi, (%rsi)
	.loc 1 117 0
	mov	(%rdi), %eax
	movl	%edi, 4(%rax)
	ret
.LFE48:
	.size	insque_32, .-insque_32
	.p2align 4,,15
.globl remque_32
	.type	remque_32, @function
remque_32:
.LFB49:
	.loc 1 124 0
	.loc 1 126 0
	movl	(%rdi), %ecx
	movl	4(%rdi), %eax
	mov	%ecx, %edx
	movl	%eax, 4(%rdx)
	.loc 1 127 0
	mov	4(%rdi), %eax
	.loc 1 128 0
	movl	$0, 4(%rdi)
	.loc 1 127 0
	movl	%ecx, (%rax)
	.loc 1 128 0
	ret
.LFE49:
	.size	remque_32, .-remque_32
	.p2align 4,,15
.globl slirp_insque
	.type	slirp_insque, @function
slirp_insque:
.LFB50:
	.loc 1 141 0
	.loc 1 144 0
	movq	(%rsi), %rax
	.loc 1 146 0
	movq	%rsi, 8(%rdi)
	.loc 1 144 0
	movq	%rax, (%rdi)
	.loc 1 145 0
	movq	%rdi, (%rsi)
	.loc 1 147 0
	movq	(%rdi), %rax
	movq	%rdi, 8(%rax)
	ret
.LFE50:
	.size	slirp_insque, .-slirp_insque
	.p2align 4,,15
.globl slirp_remque
	.type	slirp_remque, @function
slirp_remque:
.LFB51:
	.loc 1 154 0
	.loc 1 156 0
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movq	%rax, 8(%rdx)
	.loc 1 157 0
	movq	8(%rdi), %rax
	.loc 1 158 0
	movq	$0, 8(%rdi)
	.loc 1 157 0
	movq	%rdx, (%rax)
	.loc 1 158 0
	ret
.LFE51:
	.size	slirp_remque, .-slirp_remque
	.p2align 4,,15
.globl add_exec
	.type	add_exec, @function
add_exec:
.LFB52:
	.loc 1 172 0
	movq	%r12, -32(%rsp)
.LCFI2:
	movq	%r13, -24(%rsp)
.LCFI3:
	movl	%r8d, %r12d
	movq	%r14, -16(%rsp)
.LCFI4:
	movq	%r15, -8(%rsp)
.LCFI5:
	movq	%rdi, %r13
	movq	%rbx, -48(%rsp)
.LCFI6:
	movq	%rbp, -40(%rsp)
.LCFI7:
	subq	$56, %rsp
.LCFI8:
	.loc 1 172 0
	movq	%rdx, (%rsp)
	.loc 1 176 0
	movq	(%rdi), %rbp
	.loc 1 172 0
	movl	%esi, %r15d
	movl	%ecx, %r14d
	.loc 1 176 0
	movq	%rbp, %rax
	jmp	.L21
	.p2align 4,,7
.L16:
	movq	24(%rbp), %rbp
.L21:
	testq	%rbp, %rbp
	je	.L20
	.loc 1 177 0
	cmpl	%r12d, 8(%rbp)
	jne	.L16
	cmpl	%r14d, 4(%rbp)
	.p2align 4,,3
	jne	.L16
	.loc 1 178 0
	movl	$-1, %eax
	.p2align 4,,5
	jmp	.L13
.L20:
	.loc 1 182 0
	movl	$32, %edi
	.loc 1 181 0
	movq	%rax, %rbp
	.loc 1 182 0
	call	malloc
	movq	%rax, (%r13)
	.loc 1 183 0
	movl	%r12d, 8(%rax)
	.loc 1 182 0
	movq	%rax, %rbx
	.loc 1 184 0
	movl	%r14d, 4(%rax)
	.loc 1 185 0
	movl	%r15d, (%rax)
	.loc 1 186 0
	movq	(%rsp), %rdi
	call	__strdup
	movq	%rax, 16(%rbx)
	.loc 1 187 0
	movq	(%r13), %rax
	movq	%rbp, 24(%rax)
	.loc 1 188 0
	xorl	%eax, %eax
.L13:
	.loc 1 189 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.LFE52:
	.size	add_exec, .-add_exec
	.p2align 4,,15
.globl fd_nonblock
	.type	fd_nonblock, @function
fd_nonblock:
.LFB56:
	.loc 1 834 0
	subq	$8, %rsp
.LCFI9:
	.loc 1 838 0
	movl	$21537, %esi
	xorl	%eax, %eax
	leaq	4(%rsp), %rdx
	.loc 1 836 0
	movl	$1, 4(%rsp)
	.loc 1 838 0
	call	ioctl
	addq	$8, %rsp
	ret
.LFE56:
	.size	fd_nonblock, .-fd_nonblock
	.p2align 4,,15
.globl lprint
	.type	lprint, @function
lprint:
.LFB54:
	.loc 1 609 0
	subq	$216, %rsp
.LCFI10:
	.loc 1 609 0
	movq	%rdx, 48(%rsp)
	movzbl	%al, %edx 
	movq	%rsi, 40(%rsp)
	leaq	0(,%rdx,4), %rax
	movl	$.L24, %edx
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	.loc 1 613 0
	movq	%rsp, %rsi
	.loc 1 609 0
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
.L24:
	.loc 1 612 0
	leaq	224(%rsp), %rax
	movl	$8, (%rsp)
	movl	$48, 4(%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.loc 1 613 0
	call	term_vprintf
	.loc 1 614 0
	addq	$216, %rsp
	ret
.LFE54:
	.size	lprint, .-lprint
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Error: inet socket: %s\n"
.LC1:
	.string	"Error: fork failed: %s\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Error: execvp of %s failed: %s\n"
	.section	.rodata.str1.1
.LC2:
	.string	"slirp.telnetd"
.LC3:
	.string	"-x"
	.text
	.p2align 4,,15
.globl fork_exec
	.type	fork_exec, @function
fork_exec:
.LFB53:
	.loc 1 304 0
	movq	%rbp, -40(%rsp)
.LCFI11:
	movq	%r12, -32(%rsp)
.LCFI12:
	.loc 1 331 0
	xorl	%eax, %eax
	.loc 1 304 0
	movq	%r14, -16(%rsp)
.LCFI13:
	movq	%rbx, -48(%rsp)
.LCFI14:
	movq	%rdi, %r12
	movq	%r13, -24(%rsp)
.LCFI15:
	movq	%r15, -8(%rsp)
.LCFI16:
	subq	$2392, %rsp
.LCFI17:
	.loc 1 324 0
	cmpl	$2, %edx
	.loc 1 304 0
	movq	%rsi, %r14
	movl	%edx, %ebp
	.loc 1 307 0
	movl	$16, 12(%rsp)
	.loc 1 324 0
	je	.L25
	.loc 1 338 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	.loc 1 334 0
	movw	$2, 2320(%rsp)
	.loc 1 335 0
	movw	$0, 2322(%rsp)
	.loc 1 336 0
	movl	$0, 2324(%rsp)
	.loc 1 338 0
	call	socket
	testl	%eax, %eax
	movl	%eax, %ebx
	js	.L29
	movl	12(%rsp), %edx
	leaq	2320(%rsp), %r13
	movl	%eax, %edi
	movq	%r13, %rsi
	call	bind
	testl	%eax, %eax
	js	.L29
	movl	$1, %esi
	movl	%ebx, %edi
	call	listen
	testl	%eax, %eax
	js	.L29
	.loc 1 348 0
	call	fork
	cmpl	$-1, %eax
	.p2align 4,,4
	je	.L31
	testl	%eax, %eax
	.p2align 4,,4
	je	.L33
	.loc 1 428 0
	cmpl	$2, %ebp
	.p2align 4,,5
	je	.L69
	.p2align 4,,7
.L58:
	.loc 1 440 0
	leaq	12(%rsp), %rdx
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	accept
	.loc 1 441 0
	testl	%eax, %eax
	.loc 1 440 0
	movl	%eax, 16(%r12)
	.loc 1 441 0
	jns	.L59
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L58
.L59:
	.loc 1 442 0
	movl	%ebx, %edi
	call	close
	.loc 1 443 0
	movl	$1, 8(%rsp)
	.loc 1 444 0
	movl	16(%r12), %edi
	leaq	8(%rsp), %rcx
	movl	$4, %r8d
	movl	$2, %edx
	movl	$1, %esi
	call	setsockopt
	.loc 1 445 0
	movl	$1, 8(%rsp)
	.loc 1 446 0
	movl	16(%r12), %edi
	leaq	8(%rsp), %rcx
	movl	$4, %r8d
	movl	$10, %edx
	movl	$1, %esi
	call	setsockopt
.L57:
	.loc 1 448 0
	movl	16(%r12), %edi
	call	fd_nonblock
	.loc 1 451 0
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	setne	%dl
	xorl	%eax, %eax
	cmpl	$1, %ebp
	sete	%al
	testl	%edx, %eax
	jne	.L70
	.loc 1 456 0
	movl	$1, %eax
	jmp	.L25
	.p2align 4,,7
.L29:
	.loc 1 341 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movl	$.LC0, %edi
	movq	%rax, %rsi
.L68:
	.loc 1 350 0
	xorl	%eax, %eax
	call	lprint
	.loc 1 351 0
	movl	%ebx, %edi
	call	close
	.loc 1 354 0
	xorl	%eax, %eax
.L25:
	.loc 1 458 0
	movq	2344(%rsp), %rbx
	movq	2352(%rsp), %rbp
	movq	2360(%rsp), %r12
	movq	2368(%rsp), %r13
	movq	2376(%rsp), %r14
	movq	2384(%rsp), %r15
	addq	$2392, %rsp
	ret
.L70:
	.loc 1 452 0
	movq	%r12, %rdi
	call	sbappend
	.loc 1 456 0
	movl	$1, %eax
	.loc 1 453 0
	movq	$0, 24(%r12)
	jmp	.L25
.L69:
	.loc 1 429 0
	movl	%ebx, %edi
	call	close
	.loc 1 430 0
	movl	$-1, 16(%r12)
	jmp	.L57
.L31:
	.loc 1 350 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movl	$.LC1, %edi
	movq	%rax, %rsi
	jmp	.L68
.L33:
	.loc 1 365 0
	leaq	12(%rsp), %rdx
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	getsockname
	.loc 1 366 0
	movl	%ebx, %edi
	call	close
	.loc 1 371 0
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, %ebx
	.loc 1 372 0
	movl	loopback_addr(%rip), %eax
	movl	%eax, 2324(%rsp)
.L36:
	.loc 1 374 0
	movl	12(%rsp), %edx
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	connect
	.loc 1 375 0
	testl	%eax, %eax
	jns	.L37
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,4
	je	.L36
.L37:
	.loc 1 389 0
	xorl	%esi, %esi
	movl	%ebx, %edi
	call	dup2
	.loc 1 390 0
	movl	%ebx, %edi
	movl	$1, %esi
	call	dup2
	.loc 1 391 0
	movl	%ebx, %edi
	movl	$2, %esi
	call	dup2
	.loc 1 392 0
	call	getdtablesize
	leal	-1(%rax), %ebx
	cmpl	$2, %ebx
	jle	.L63
.L71:
	.loc 1 393 0
	movl	%ebx, %edi
	.loc 1 392 0
	decl	%ebx
	.loc 1 393 0
	call	close
	.loc 1 392 0
	cmpl	$2, %ebx
	jg	.L71
.L63:
	.loc 1 396 0
	movq	%r14, %rdi
	.loc 1 395 0
	xorl	%r15d, %r15d
	.loc 1 396 0
	call	__strdup
	.loc 1 397 0
	decl	%ebp
	.loc 1 396 0
	movq	%rax, %r13
	.loc 1 397 0
	je	.L72
.L45:
	.loc 1 407 0
	movzbl	(%r13), %ecx
	.loc 1 405 0
	movq	%r13, %rdi
	jmp	.L67
.L73:
	.loc 1 407 0
	incq	%r13
	movzbl	(%r13), %ecx
.L67:
	cmpb	$32, %cl
	setne	%dl
	xorl	%eax, %eax
	testb	%cl, %cl
	setne	%al
	testl	%edx, %eax
	jne	.L73
	.loc 1 408 0
	movsbl	%cl,%r12d
	.loc 1 409 0
	movb	$0, (%r13)
	.loc 1 410 0
	movslq	%r15d,%rbx
	call	__strdup
	.loc 1 409 0
	incq	%r13
	.loc 1 410 0
	incl	%r15d
	.loc 1 411 0
	testl	%r12d, %r12d
	.loc 1 410 0
	movq	%rax, 272(%rsp,%rbx,8)
	.loc 1 411 0
	jne	.L45
.L44:
	.loc 1 413 0
	movslq	%r15d,%rax
	.loc 1 414 0
	leaq	272(%rsp), %rsi
.LBB2:
	.loc 1 420 0
	leaq	16(%rsp), %rbx
.LBE2:
	.loc 1 413 0
	movq	$0, 272(%rsp,%rax,8)
	.loc 1 414 0
	movq	272(%rsp), %rdi
	call	execvp
.LBB3:
	.loc 1 420 0
	call	__errno_location
	movl	(%rax), %edi
	call	strerror
	movq	272(%rsp), %rdx
	movq	%rax, %rcx
	movl	$.LC4, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	call	sprintf
	.loc 1 422 0
	movq	%rbx, %rdx
.L53:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L53
	movl	%ecx, %eax
	movq	%rbx, %rsi
	movl	$2, %edi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%rbx, %rdx
	incq	%rdx
	call	write
.LBE3:
	.loc 1 424 0
	xorl	%edi, %edi
	call	close
	movl	$1, %edi
	call	close
	movl	$2, %edi
	call	close
	.loc 1 425 0
	movl	$1, %edi
	call	exit
.L72:
	.loc 1 401 0
	movb	$3, %r15b
	.loc 1 399 0
	movq	$.LC2, 272(%rsp)
	.loc 1 400 0
	movq	$.LC3, 280(%rsp)
	.loc 1 401 0
	movq	%rax, 288(%rsp)
	jmp	.L44
.LFE53:
	.size	fork_exec, .-fork_exec
	.p2align 4,,15
.globl u_sleep
	.type	u_sleep, @function
u_sleep:
.LFB55:
	.loc 1 815 0
	subq	$152, %rsp
.LCFI18:
	.loc 1 815 0
	movl	%edi, %edx
.LBB4:
	.loc 1 819 0
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%rsp, %rsi
	movq	%rsp, %rdi
#APP
	cld; rep; stosq
#NO_APP
.LBE4:
	.loc 1 822 0
	imull	$1000, %edx, %edi
	.loc 1 824 0
	leaq	128(%rsp), %r8
	movq	%rsp, %rcx
	movq	%rsp, %rdx
	.loc 1 821 0
	movq	$0, 128(%rsp)
	.loc 1 822 0
	movslq	%edi,%rdi
	movq	%rdi, 136(%rsp)
	.loc 1 824 0
	xorl	%edi, %edi
	call	select
	addq	$152, %rsp
	ret
.LFE55:
	.size	u_sleep, .-u_sleep
	.p2align 4,,15
.globl fd_block
	.type	fd_block, @function
fd_block:
.LFB57:
	.loc 1 851 0
	subq	$8, %rsp
.LCFI19:
	.loc 1 855 0
	movl	$21537, %esi
	xorl	%eax, %eax
	leaq	4(%rsp), %rdx
	.loc 1 853 0
	movl	$0, 4(%rsp)
	.loc 1 855 0
	call	ioctl
	addq	$8, %rsp
	ret
.LFE57:
	.size	fd_block, .-fd_block
	.comm	curtime,4,4
	.comm	time_fasttimo,4,4
	.comm	last_slowtimo,4,4
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
	.uleb128 0x110
	.byte	0x83
	.uleb128 0x2
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
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
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
	.uleb128 0x40
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI9-.LFB56
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI10-.LFB54
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI14-.LFB53
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI17-.LCFI14
	.byte	0xe
	.uleb128 0x960
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI18-.LFB55
	.byte	0xe
	.uleb128 0xa0
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI19-.LFB57
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE20:
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
	.uleb128 0x110
	.byte	0x83
	.uleb128 0x2
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
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
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
	.uleb128 0x40
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI9-.LFB56
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI10-.LFB54
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI14-.LFB53
	.byte	0x83
	.uleb128 0x7
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI17-.LCFI14
	.byte	0xe
	.uleb128 0x960
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI18-.LFB55
	.byte	0xe
	.uleb128 0xa0
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI19-.LFB57
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE21:
	.file 2 "/usr/include/netdb.h"
	.file 3 "/usr/include/sys/types.h"
	.file 4 "/home/remco/Projects/Argos/src/slirp/misc.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stdarg.h"
	.file 7 "<internal>"
	.file 8 "/home/remco/Projects/Argos/src/slirp/tcp.h"
	.file 9 "/home/remco/Projects/Argos/src/slirp/socket.h"
	.file 10 "/home/remco/Projects/Argos/src/slirp/udp.h"
	.file 11 "/home/remco/Projects/Argos/src/slirp/mbuf.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/home/remco/Projects/Argos/src/slirp/tcpip.h"
	.file 14 "/home/remco/Projects/Argos/src/slirp/ip.h"
	.file 15 "/usr/include/netinet/in.h"
	.file 16 "/usr/include/stdint.h"
	.file 17 "/home/remco/Projects/Argos/src/slirp/tcp_timer.h"
	.file 18 "/home/remco/Projects/Argos/src/slirp/tcp_var.h"
	.file 19 "/home/remco/Projects/Argos/src/slirp/sbuf.h"
	.file 20 "/usr/include/sys/socket.h"
	.file 21 "/usr/include/bits/sockaddr.h"
	.file 22 "/usr/include/bits/time.h"
	.file 23 "/usr/include/sys/select.h"
	.file 24 "/usr/include/libio.h"
	.file 25 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 26 "/home/remco/Projects/Argos/src/slirp/main.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x10ea
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF249
	.byte	0x1
	.long	.LASF250
	.long	.LASF251
	.uleb128 0x2
	.long	.LASF0
	.byte	0xc
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0xc
	.byte	0x20
	.long	0x4a
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0xc
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
	.byte	0xc
	.byte	0x8d
	.long	0x7f
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x7f
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF12
	.byte	0xc
	.byte	0x95
	.long	0x7f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xc
	.byte	0x97
	.long	0x7f
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF14
	.byte	0xc
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
	.byte	0x19
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
	.long	.LASF31
	.byte	0x10
	.byte	0x16
	.byte	0x46
	.uleb128 0x8
	.long	.LASF24
	.byte	0x16
	.byte	0x47
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x16
	.byte	0x48
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x17
	.byte	0x37
	.long	0x7f
	.uleb128 0x9
	.long	0x176
	.byte	0x80
	.byte	0x17
	.byte	0x4e
	.uleb128 0x8
	.long	.LASF27
	.byte	0x17
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
	.byte	0x17
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
	.long	0x1a5
	.uleb128 0xc
	.long	0xcc
	.uleb128 0x7
	.long	0x376
	.long	.LASF32
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF33
	.byte	0x18
	.value	0x110
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x18
	.value	0x115
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF35
	.byte	0x18
	.value	0x116
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF36
	.byte	0x18
	.value	0x117
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF37
	.byte	0x18
	.value	0x118
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF38
	.byte	0x18
	.value	0x119
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF39
	.byte	0x18
	.value	0x11a
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF40
	.byte	0x18
	.value	0x11b
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF41
	.byte	0x18
	.value	0x11c
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF42
	.byte	0x18
	.value	0x11e
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF43
	.byte	0x18
	.value	0x11f
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF44
	.byte	0x18
	.value	0x120
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF45
	.byte	0x18
	.value	0x122
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF46
	.byte	0x18
	.value	0x124
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF47
	.byte	0x18
	.value	0x126
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF48
	.byte	0x18
	.value	0x12a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF49
	.byte	0x18
	.value	0x12c
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF50
	.byte	0x18
	.value	0x130
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF51
	.byte	0x18
	.value	0x131
	.long	0x6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF52
	.byte	0x18
	.value	0x132
	.long	0x420
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF53
	.byte	0x18
	.value	0x136
	.long	0x430
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF54
	.byte	0x18
	.value	0x13f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF55
	.byte	0x18
	.value	0x148
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF56
	.byte	0x18
	.value	0x149
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x18
	.value	0x14a
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF58
	.byte	0x18
	.value	0x14b
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x18
	.value	0x14c
	.long	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF60
	.byte	0x18
	.value	0x14e
	.long	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF61
	.byte	0x18
	.value	0x150
	.long	0x436
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x2b
	.long	0x381
	.uleb128 0xa
	.long	0x391
	.long	0x391
	.uleb128 0xb
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x3d6
	.long	.LASF63
	.byte	0x18
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x0
	.long	0x5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x0
	.long	0x5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x0
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x0
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	.LASF68
	.byte	0x18
	.byte	0xb4
	.uleb128 0x7
	.long	0x414
	.long	.LASF69
	.byte	0x18
	.byte	0x18
	.byte	0xba
	.uleb128 0x8
	.long	.LASF70
	.byte	0x18
	.byte	0xbb
	.long	0x414
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x18
	.byte	0xbc
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x18
	.byte	0xc0
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3dd
	.uleb128 0x6
	.byte	0x8
	.long	0x1aa
	.uleb128 0xa
	.long	0x430
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d6
	.uleb128 0xa
	.long	0x446
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x5
	.byte	0x50
	.long	0x376
	.uleb128 0x2
	.long	.LASF74
	.byte	0x10
	.byte	0x32
	.long	0x4a
	.uleb128 0x2
	.long	.LASF75
	.byte	0x10
	.byte	0x34
	.long	0x5c
	.uleb128 0x2
	.long	.LASF76
	.byte	0x15
	.byte	0x1d
	.long	0x4a
	.uleb128 0x7
	.long	0x4b7
	.long	.LASF77
	.byte	0x10
	.byte	0x14
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF78
	.byte	0xf
	.byte	0xe3
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF79
	.byte	0xf
	.byte	0xe4
	.long	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF80
	.byte	0xf
	.byte	0xe5
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF81
	.byte	0xf
	.byte	0xeb
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0xf
	.byte	0x61
	.long	0x451
	.uleb128 0x2
	.long	.LASF83
	.byte	0xf
	.byte	0x8d
	.long	0x45c
	.uleb128 0x7
	.long	0x4e8
	.long	.LASF84
	.byte	0x4
	.byte	0xf
	.byte	0x8f
	.uleb128 0x8
	.long	.LASF85
	.byte	0xf
	.byte	0x90
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x4f8
	.long	0x38
	.uleb128 0xb
	.long	0x9c
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF86
	.byte	0xe
	.byte	0xc0
	.long	0x120
	.uleb128 0x7
	.long	0x572
	.long	.LASF87
	.byte	0x14
	.byte	0xe
	.byte	0xcf
	.uleb128 0x8
	.long	.LASF88
	.byte	0xe
	.byte	0xd0
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF89
	.byte	0xe
	.byte	0xd0
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF90
	.byte	0xe
	.byte	0xd1
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xe
	.byte	0xd2
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF92
	.byte	0xe
	.byte	0xd3
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF93
	.byte	0xe
	.byte	0xd4
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF94
	.byte	0xe
	.byte	0xd5
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x8
	.byte	0x28
	.long	0x120
	.uleb128 0x7
	.long	0x61c
	.long	.LASF96
	.byte	0x14
	.byte	0x8
	.byte	0x36
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0x37
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF98
	.byte	0x8
	.byte	0x38
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.byte	0x39
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0x3a
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF101
	.byte	0x8
	.byte	0x3f
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF102
	.byte	0x8
	.byte	0x40
	.long	0xe9
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF103
	.byte	0x8
	.byte	0x42
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.long	.LASF104
	.byte	0x8
	.byte	0x49
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF105
	.byte	0x8
	.byte	0x4a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF106
	.byte	0x8
	.byte	0x4b
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x7
	.long	0x645
	.long	.LASF107
	.byte	0x28
	.byte	0xd
	.byte	0x2b
	.uleb128 0x8
	.long	.LASF108
	.byte	0xd
	.byte	0x2c
	.long	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF109
	.byte	0xd
	.byte	0x2d
	.long	0x57d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.long	.LASF110
	.byte	0x12
	.byte	0x2e
	.long	0x120
	.uleb128 0x7
	.long	0x8d9
	.long	.LASF111
	.byte	0xb8
	.byte	0x11
	.byte	0x83
	.uleb128 0x8
	.long	.LASF112
	.byte	0x12
	.byte	0x35
	.long	0x645
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF113
	.byte	0x12
	.byte	0x36
	.long	0x645
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF114
	.byte	0x12
	.byte	0x37
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF115
	.byte	0x12
	.byte	0x38
	.long	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF116
	.byte	0x12
	.byte	0x39
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF117
	.byte	0x12
	.byte	0x3a
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF118
	.byte	0x12
	.byte	0x3b
	.long	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF119
	.byte	0x12
	.byte	0x3c
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF120
	.byte	0x12
	.byte	0x3d
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.long	.LASF121
	.byte	0x12
	.byte	0x3e
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF122
	.byte	0x12
	.byte	0x4c
	.long	0x61c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF123
	.byte	0x12
	.byte	0x4e
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF124
	.byte	0x12
	.byte	0x54
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF125
	.byte	0x12
	.byte	0x55
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.long	.LASF126
	.byte	0x12
	.byte	0x56
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF127
	.byte	0x12
	.byte	0x57
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.long	.LASF128
	.byte	0x12
	.byte	0x58
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"iss"
	.byte	0x12
	.byte	0x59
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.long	.LASF129
	.byte	0x12
	.byte	0x5a
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF130
	.byte	0x12
	.byte	0x5c
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.long	.LASF131
	.byte	0x12
	.byte	0x5d
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF132
	.byte	0x12
	.byte	0x5e
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"irs"
	.byte	0x12
	.byte	0x5f
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF133
	.byte	0x12
	.byte	0x64
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.long	.LASF134
	.byte	0x12
	.byte	0x66
	.long	0x572
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF135
	.byte	0x12
	.byte	0x6a
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.long	.LASF136
	.byte	0x12
	.byte	0x6b
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF137
	.byte	0x12
	.byte	0x73
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.long	.LASF138
	.byte	0x12
	.byte	0x74
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e
	.uleb128 0x8
	.long	.LASF139
	.byte	0x12
	.byte	0x75
	.long	0x572
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF140
	.byte	0x12
	.byte	0x76
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.long	.LASF141
	.byte	0x12
	.byte	0x77
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0x96
	.uleb128 0x8
	.long	.LASF142
	.byte	0x12
	.byte	0x78
	.long	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF143
	.byte	0x12
	.byte	0x79
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x8
	.long	.LASF144
	.byte	0x12
	.byte	0x7c
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF145
	.byte	0x12
	.byte	0x7d
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa1
	.uleb128 0x8
	.long	.LASF146
	.byte	0x12
	.byte	0x80
	.long	0x71
	.byte	0x3
	.byte	0x23
	.uleb128 0xa2
	.uleb128 0x8
	.long	.LASF147
	.byte	0x12
	.byte	0x83
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x8
	.long	.LASF148
	.byte	0x12
	.byte	0x84
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5
	.uleb128 0x8
	.long	.LASF149
	.byte	0x12
	.byte	0x85
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa6
	.uleb128 0x8
	.long	.LASF150
	.byte	0x12
	.byte	0x86
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7
	.uleb128 0x8
	.long	.LASF151
	.byte	0x12
	.byte	0x87
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF152
	.byte	0x12
	.byte	0x88
	.long	0x120
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x8
	.long	.LASF153
	.byte	0x12
	.byte	0x89
	.long	0x572
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.byte	0x0
	.uleb128 0xa
	.long	0x8e9
	.long	0x71
	.uleb128 0xb
	.long	0x9c
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0xa1b
	.long	.LASF154
	.byte	0xa0
	.byte	0x8
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF155
	.byte	0x9
	.byte	0x15
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF156
	.byte	0x9
	.byte	0x15
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"s"
	.byte	0x9
	.byte	0x17
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF157
	.byte	0x9
	.byte	0x1a
	.long	0xad5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x9
	.byte	0x1d
	.long	0xb51
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF159
	.byte	0x9
	.byte	0x1f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF160
	.byte	0x9
	.byte	0x20
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.long	.LASF161
	.byte	0x9
	.byte	0x21
	.long	0x4cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF162
	.byte	0x9
	.byte	0x22
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF163
	.byte	0x9
	.byte	0x23
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.long	.LASF164
	.byte	0x9
	.byte	0x25
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF165
	.byte	0x9
	.byte	0x26
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x8
	.long	.LASF166
	.byte	0x9
	.byte	0x28
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x8
	.long	.LASF167
	.byte	0x9
	.byte	0x29
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.long	.LASF168
	.byte	0x9
	.byte	0x2b
	.long	0xb57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF169
	.byte	0x9
	.byte	0x2c
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF170
	.byte	0x9
	.byte	0x2e
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.long	.LASF171
	.byte	0x9
	.byte	0x2f
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF172
	.byte	0x9
	.byte	0x33
	.long	0xafe
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF173
	.byte	0x9
	.byte	0x34
	.long	0xafe
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF174
	.byte	0x9
	.byte	0x35
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x8e9
	.uleb128 0x7
	.long	0xaac
	.long	.LASF175
	.byte	0x40
	.byte	0xb
	.byte	0x3f
	.uleb128 0x8
	.long	.LASF176
	.byte	0xb
	.byte	0x40
	.long	0xad5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF177
	.byte	0xb
	.byte	0x41
	.long	0xad5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF178
	.byte	0xb
	.byte	0x42
	.long	0xad5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF179
	.byte	0xb
	.byte	0x43
	.long	0xad5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF180
	.byte	0xb
	.byte	0x44
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF181
	.byte	0xb
	.byte	0x46
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF182
	.byte	0xb
	.byte	0x47
	.long	0xa1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF183
	.byte	0xb
	.byte	0x49
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF184
	.byte	0xb
	.byte	0x4a
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0xad5
	.long	.LASF185
	.byte	0x48
	.byte	0xa
	.byte	0x66
	.uleb128 0x8
	.long	.LASF175
	.byte	0xb
	.byte	0x5c
	.long	0xa21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF186
	.byte	0xb
	.byte	0x60
	.long	0xadb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xaac
	.uleb128 0x11
	.long	0xafe
	.long	.LASF186
	.byte	0x8
	.byte	0xb
	.byte	0x5d
	.uleb128 0x12
	.long	.LASF187
	.byte	0xb
	.byte	0x5e
	.long	0x420
	.uleb128 0x12
	.long	.LASF188
	.byte	0xb
	.byte	0x5f
	.long	0xc6
	.byte	0x0
	.uleb128 0x7
	.long	0xb51
	.long	.LASF189
	.byte	0x20
	.byte	0x13
	.byte	0xe
	.uleb128 0x8
	.long	.LASF190
	.byte	0x13
	.byte	0xf
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF191
	.byte	0x13
	.byte	0x10
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF192
	.byte	0x13
	.byte	0x11
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF193
	.byte	0x13
	.byte	0x13
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF194
	.byte	0x13
	.byte	0x15
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x61c
	.uleb128 0x6
	.byte	0x8
	.long	0x650
	.uleb128 0x7
	.long	0xbb0
	.long	.LASF195
	.byte	0x20
	.byte	0x4
	.byte	0xb
	.uleb128 0x8
	.long	.LASF196
	.byte	0x4
	.byte	0xc
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF197
	.byte	0x4
	.byte	0xd
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF198
	.byte	0x4
	.byte	0xe
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF199
	.byte	0x4
	.byte	0xf
	.long	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF200
	.byte	0x4
	.byte	0x10
	.long	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5d
	.uleb128 0x6
	.byte	0x8
	.long	0xc6
	.uleb128 0x7
	.long	0xc0f
	.long	.LASF201
	.byte	0x20
	.byte	0x2
	.byte	0x64
	.uleb128 0x8
	.long	.LASF202
	.byte	0x2
	.byte	0x65
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x2
	.byte	0x66
	.long	0xbb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF204
	.byte	0x2
	.byte	0x67
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF205
	.byte	0x2
	.byte	0x68
	.long	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF206
	.byte	0x2
	.byte	0x69
	.long	0xbb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x7
	.long	0xc38
	.long	.LASF207
	.byte	0x8
	.byte	0x1
	.byte	0x66
	.uleb128 0x8
	.long	.LASF208
	.byte	0x1
	.byte	0x67
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF209
	.byte	0x1
	.byte	0x68
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x7
	.long	0xc61
	.long	.LASF210
	.byte	0x10
	.byte	0x1
	.byte	0x85
	.uleb128 0x8
	.long	.LASF208
	.byte	0x1
	.byte	0x86
	.long	0xc61
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF209
	.byte	0x1
	.byte	0x87
	.long	0xc61
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc38
	.uleb128 0x13
	.long	0xca1
	.byte	0x1
	.long	.LASF212
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF211
	.byte	0x1
	.byte	0x59
	.long	0xca1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"he"
	.byte	0x1
	.byte	0x5a
	.long	0xcb1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0xa
	.long	0xcb1
	.long	0xcc
	.uleb128 0xb
	.long	0x9c
	.byte	0xff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xbbc
	.uleb128 0x13
	.long	0xd03
	.byte	0x1
	.long	.LASF213
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x6d
	.long	0xb9
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x6e
	.long	0xb9
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF214
	.byte	0x1
	.byte	0x70
	.long	0xd03
	.uleb128 0x17
	.long	.LASF215
	.byte	0x1
	.byte	0x71
	.long	0xd03
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc0f
	.uleb128 0x13
	.long	0xd3f
	.byte	0x1
	.long	.LASF216
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x7b
	.long	0xb9
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF214
	.byte	0x1
	.byte	0x7d
	.long	0xd03
	.byte	0x0
	.uleb128 0x13
	.long	0xd8b
	.byte	0x1
	.long	.LASF217
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x8c
	.long	0xb9
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x8c
	.long	0xb9
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF214
	.byte	0x1
	.byte	0x8e
	.long	0xc61
	.uleb128 0x17
	.long	.LASF215
	.byte	0x1
	.byte	0x8f
	.long	0xc61
	.byte	0x0
	.uleb128 0x13
	.long	0xdc1
	.byte	0x1
	.long	.LASF218
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x99
	.long	0xb9
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF214
	.byte	0x1
	.byte	0x9b
	.long	0xc61
	.byte	0x0
	.uleb128 0x18
	.long	0xe34
	.byte	0x1
	.long	.LASF219
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.long	0x78
	.quad	.LFB52
	.quad	.LFE52
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF220
	.byte	0x1
	.byte	0xa7
	.long	0xe34
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.long	.LASF221
	.byte	0x1
	.byte	0xa8
	.long	0x78
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.long	.LASF222
	.byte	0x1
	.byte	0xa9
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF223
	.byte	0x1
	.byte	0xaa
	.long	0x78
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.long	.LASF224
	.byte	0x1
	.byte	0xab
	.long	0x78
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF225
	.byte	0x1
	.byte	0xad
	.long	0xbb0
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb0
	.uleb128 0x1a
	.long	0xe77
	.byte	0x1
	.long	.LASF226
	.byte	0x1
	.value	0x342
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.value	0x341
	.long	0x78
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"opt"
	.byte	0x1
	.value	0x344
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0xeb6
	.byte	0x1
	.long	.LASF227
	.byte	0x1
	.value	0x261
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF228
	.byte	0x1
	.value	0x260
	.long	0x19f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.uleb128 0x1f
	.long	.LASF229
	.byte	0x1
	.value	0x262
	.long	0x446
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0xfb0
	.byte	0x1
	.long	.LASF230
	.byte	0x1
	.value	0x130
	.byte	0x1
	.long	0x78
	.quad	.LFB53
	.quad	.LFE53
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"so"
	.byte	0x1
	.value	0x12f
	.long	0xa1b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.string	"ex"
	.byte	0x1
	.value	0x12f
	.long	0x19f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.long	.LASF221
	.byte	0x1
	.value	0x12f
	.long	0x78
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x131
	.long	0x78
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF223
	.byte	0x1
	.value	0x132
	.long	0x472
	.byte	0x3
	.byte	0x91
	.sleb128 2320
	.uleb128 0x1f
	.long	.LASF231
	.byte	0x1
	.value	0x133
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"opt"
	.byte	0x1
	.value	0x134
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF232
	.byte	0x1
	.value	0x135
	.long	0x78
	.uleb128 0x1f
	.long	.LASF233
	.byte	0x1
	.value	0x136
	.long	0xfb0
	.byte	0x3
	.byte	0x91
	.sleb128 272
	.uleb128 0x1f
	.long	.LASF234
	.byte	0x1
	.value	0x13b
	.long	0xc6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.long	.LASF235
	.byte	0x1
	.value	0x13c
	.long	0x19f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.value	0x13d
	.long	0x78
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x13d
	.long	0x78
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x13d
	.long	0x78
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1f
	.long	.LASF211
	.byte	0x1
	.value	0x1a2
	.long	0xca1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xfc0
	.long	0xc6
	.uleb128 0xb
	.long	0x9c
	.byte	0xff
	.byte	0x0
	.uleb128 0x1a
	.long	0x103a
	.byte	0x1
	.long	.LASF236
	.byte	0x1
	.value	0x32f
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF237
	.byte	0x1
	.value	0x32e
	.long	0x78
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.value	0x330
	.long	0x12b
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x1f
	.long	.LASF238
	.byte	0x1
	.value	0x331
	.long	0x186
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1f
	.long	.LASF239
	.byte	0x1
	.value	0x333
	.long	0x78
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF240
	.byte	0x1
	.value	0x333
	.long	0x78
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x1077
	.byte	0x1
	.long	.LASF241
	.byte	0x1
	.value	0x353
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.value	0x352
	.long	0x78
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"opt"
	.byte	0x1
	.value	0x355
	.long	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x24
	.long	.LASF242
	.byte	0x5
	.byte	0x91
	.long	0x41a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.long	.LASF243
	.byte	0x5
	.byte	0x92
	.long	0x41a
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF244
	.byte	0x1
	.byte	0xb
	.long	0xe9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	curtime
	.uleb128 0x24
	.long	.LASF245
	.byte	0x1a
	.byte	0x26
	.long	0x4cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.long	.LASF246
	.byte	0x1a
	.byte	0x27
	.long	0x4cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF247
	.byte	0x1
	.byte	0xb
	.long	0xe9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	time_fasttimo
	.uleb128 0x25
	.long	.LASF248
	.byte	0x1
	.byte	0xb
	.long	0xe9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	last_slowtimo
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x25
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
	.long	0xda
	.value	0x2
	.long	.Ldebug_info0
	.long	0x10ee
	.long	0xc67
	.string	"getouraddr"
	.long	0xcb7
	.string	"insque_32"
	.long	0xd09
	.string	"remque_32"
	.long	0xd3f
	.string	"slirp_insque"
	.long	0xd8b
	.string	"slirp_remque"
	.long	0xdc1
	.string	"add_exec"
	.long	0xe3a
	.string	"fd_nonblock"
	.long	0xe77
	.string	"lprint"
	.long	0xeb6
	.string	"fork_exec"
	.long	0xfc0
	.string	"u_sleep"
	.long	0x103a
	.string	"fd_block"
	.long	0x1091
	.string	"curtime"
	.long	0x10c1
	.string	"time_fasttimo"
	.long	0x10d7
	.string	"last_slowtimo"
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
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"size_t"
.LASF251:
	.string	"/home/remco/Projects/Argos/src"
.LASF204:
	.string	"h_addrtype"
.LASF180:
	.string	"mh_flags"
.LASF92:
	.string	"ih_len"
.LASF85:
	.string	"s_addr"
.LASF232:
	.string	"master"
.LASF108:
	.string	"ti_i"
.LASF196:
	.string	"ex_pty"
.LASF80:
	.string	"sin_addr"
.LASF86:
	.string	"caddr32_t"
.LASF44:
	.string	"_IO_save_end"
.LASF100:
	.string	"th_ack"
.LASF176:
	.string	"mh_next"
.LASF183:
	.string	"mh_data"
.LASF185:
	.string	"mbuf"
.LASF177:
	.string	"mh_prev"
.LASF103:
	.string	"th_flags"
.LASF164:
	.string	"so_iptos"
.LASF211:
	.string	"buff"
.LASF37:
	.string	"_IO_write_base"
.LASF53:
	.string	"_lock"
.LASF42:
	.string	"_IO_save_base"
.LASF151:
	.string	"ts_recent"
.LASF46:
	.string	"_chain"
.LASF98:
	.string	"th_dport"
.LASF189:
	.string	"sbuf"
.LASF50:
	.string	"_cur_column"
.LASF117:
	.string	"t_rxtcur"
.LASF137:
	.string	"t_idle"
.LASF174:
	.string	"extra"
.LASF163:
	.string	"so_lport"
.LASF73:
	.string	"va_list"
.LASF158:
	.string	"so_ti"
.LASF121:
	.string	"t_flags"
.LASF9:
	.string	"long int"
.LASF210:
	.string	"quehead"
.LASF216:
	.string	"remque_32"
.LASF14:
	.string	"__caddr_t"
.LASF209:
	.string	"qh_rlink"
.LASF16:
	.string	"u_char"
.LASF69:
	.string	"_IO_marker"
.LASF244:
	.string	"curtime"
.LASF205:
	.string	"h_length"
.LASF122:
	.string	"t_template"
.LASF215:
	.string	"head"
.LASF0:
	.string	"__u_char"
.LASF179:
	.string	"mh_prevpkt"
.LASF182:
	.string	"mh_so"
.LASF102:
	.string	"th_off"
.LASF130:
	.string	"rcv_wnd"
.LASF250:
	.string	"slirp/misc.c"
.LASF93:
	.string	"ih_src"
.LASF94:
	.string	"ih_dst"
.LASF84:
	.string	"in_addr"
.LASF154:
	.string	"socket"
.LASF7:
	.string	"signed char"
.LASF32:
	.string	"_IO_FILE"
.LASF112:
	.string	"seg_next"
.LASF159:
	.string	"so_urgc"
.LASF197:
	.string	"ex_addr"
.LASF2:
	.string	"unsigned char"
.LASF165:
	.string	"so_emu"
.LASF186:
	.string	"M_dat"
.LASF162:
	.string	"so_fport"
.LASF97:
	.string	"th_sport"
.LASF62:
	.string	"__gnuc_va_list"
.LASF218:
	.string	"slirp_remque"
.LASF21:
	.string	"u_int8_t"
.LASF79:
	.string	"sin_port"
.LASF129:
	.string	"snd_wnd"
.LASF96:
	.string	"tcphdr"
.LASF107:
	.string	"tcpiphdr"
.LASF142:
	.string	"t_rttmin"
.LASF68:
	.string	"_IO_lock_t"
.LASF77:
	.string	"sockaddr_in"
.LASF31:
	.string	"timeval"
.LASF133:
	.string	"rcv_adv"
.LASF34:
	.string	"_IO_read_ptr"
.LASF110:
	.string	"tcpiphdrp_32"
.LASF65:
	.string	"fp_offset"
.LASF113:
	.string	"seg_prev"
.LASF72:
	.string	"_pos"
.LASF153:
	.string	"last_ack_sent"
.LASF4:
	.string	"__u_int"
.LASF194:
	.string	"sb_data"
.LASF45:
	.string	"_markers"
.LASF217:
	.string	"slirp_insque"
.LASF245:
	.string	"our_addr"
.LASF18:
	.string	"u_int"
.LASF123:
	.string	"t_socket"
.LASF150:
	.string	"requested_s_scale"
.LASF221:
	.string	"do_pty"
.LASF26:
	.string	"__fd_mask"
.LASF143:
	.string	"max_sndwnd"
.LASF201:
	.string	"hostent"
.LASF25:
	.string	"tv_usec"
.LASF83:
	.string	"in_addr_t"
.LASF226:
	.string	"fd_nonblock"
.LASF136:
	.string	"snd_ssthresh"
.LASF231:
	.string	"addrlen"
.LASF248:
	.string	"last_slowtimo"
.LASF54:
	.string	"_offset"
.LASF22:
	.string	"u_int16_t"
.LASF224:
	.string	"port"
.LASF6:
	.string	"long unsigned int"
.LASF228:
	.string	"format"
.LASF230:
	.string	"fork_exec"
.LASF115:
	.string	"t_timer"
.LASF202:
	.string	"h_name"
.LASF48:
	.string	"_flags2"
.LASF36:
	.string	"_IO_read_base"
.LASF118:
	.string	"t_dupacks"
.LASF67:
	.string	"reg_save_area"
.LASF193:
	.string	"sb_rptr"
.LASF61:
	.string	"_unused2"
.LASF181:
	.string	"mh_size"
.LASF135:
	.string	"snd_cwnd"
.LASF199:
	.string	"ex_exec"
.LASF242:
	.string	"stdin"
.LASF49:
	.string	"_old_offset"
.LASF95:
	.string	"tcp_seq"
.LASF229:
	.string	"args"
.LASF233:
	.string	"argv"
.LASF236:
	.string	"u_sleep"
.LASF114:
	.string	"t_state"
.LASF66:
	.string	"overflow_arg_area"
.LASF146:
	.string	"t_softerror"
.LASF139:
	.string	"t_rtseq"
.LASF30:
	.string	"long long int"
.LASF240:
	.string	"__d1"
.LASF239:
	.string	"__d0"
.LASF191:
	.string	"sb_datalen"
.LASF212:
	.string	"getouraddr"
.LASF39:
	.string	"_IO_write_end"
.LASF134:
	.string	"snd_max"
.LASF227:
	.string	"lprint"
.LASF64:
	.string	"gp_offset"
.LASF124:
	.string	"snd_una"
.LASF40:
	.string	"_IO_buf_base"
.LASF144:
	.string	"t_oobflags"
.LASF120:
	.string	"t_force"
.LASF70:
	.string	"_next"
.LASF5:
	.string	"unsigned int"
.LASF101:
	.string	"th_x2"
.LASF249:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF19:
	.string	"caddr_t"
.LASF131:
	.string	"rcv_nxt"
.LASF198:
	.string	"ex_fport"
.LASF55:
	.string	"__pad1"
.LASF56:
	.string	"__pad2"
.LASF57:
	.string	"__pad3"
.LASF58:
	.string	"__pad4"
.LASF59:
	.string	"__pad5"
.LASF71:
	.string	"_sbuf"
.LASF13:
	.string	"__suseconds_t"
.LASF219:
	.string	"add_exec"
.LASF132:
	.string	"rcv_up"
.LASF119:
	.string	"t_maxseg"
.LASF206:
	.string	"h_addr_list"
.LASF33:
	.string	"_flags"
.LASF223:
	.string	"addr"
.LASF157:
	.string	"so_m"
.LASF60:
	.string	"_mode"
.LASF235:
	.string	"curarg"
.LASF222:
	.string	"exec"
.LASF237:
	.string	"usec"
.LASF155:
	.string	"so_next"
.LASF126:
	.string	"snd_up"
.LASF15:
	.string	"char"
.LASF27:
	.string	"fds_bits"
.LASF200:
	.string	"ex_next"
.LASF104:
	.string	"th_win"
.LASF156:
	.string	"so_prev"
.LASF173:
	.string	"so_snd"
.LASF175:
	.string	"m_hdr"
.LASF214:
	.string	"element"
.LASF178:
	.string	"mh_nextpkt"
.LASF203:
	.string	"h_aliases"
.LASF105:
	.string	"th_sum"
.LASF152:
	.string	"ts_recent_age"
.LASF147:
	.string	"snd_scale"
.LASF29:
	.string	"long long unsigned int"
.LASF76:
	.string	"sa_family_t"
.LASF145:
	.string	"t_iobc"
.LASF74:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF149:
	.string	"request_r_scale"
.LASF91:
	.string	"ih_pr"
.LASF213:
	.string	"insque_32"
.LASF160:
	.string	"so_faddr"
.LASF171:
	.string	"so_nqueued"
.LASF12:
	.string	"__time_t"
.LASF188:
	.string	"m_ext_"
.LASF43:
	.string	"_IO_backup_base"
.LASF52:
	.string	"_shortbuf"
.LASF195:
	.string	"ex_list"
.LASF99:
	.string	"th_seq"
.LASF81:
	.string	"sin_zero"
.LASF11:
	.string	"__off64_t"
.LASF109:
	.string	"ti_t"
.LASF246:
	.string	"loopback_addr"
.LASF184:
	.string	"mh_len"
.LASF41:
	.string	"_IO_buf_end"
.LASF111:
	.string	"tcpcb"
.LASF167:
	.string	"so_state"
.LASF247:
	.string	"time_fasttimo"
.LASF116:
	.string	"t_rxtshift"
.LASF87:
	.string	"ipovly"
.LASF8:
	.string	"short int"
.LASF220:
	.string	"ex_ptr"
.LASF23:
	.string	"u_int32_t"
.LASF238:
	.string	"fdset"
.LASF169:
	.string	"so_expire"
.LASF141:
	.string	"t_rttvar"
.LASF51:
	.string	"_vtable_offset"
.LASF88:
	.string	"ih_next"
.LASF106:
	.string	"th_urp"
.LASF63:
	.string	"__va_list_tag"
.LASF166:
	.string	"so_type"
.LASF89:
	.string	"ih_prev"
.LASF207:
	.string	"quehead_32"
.LASF127:
	.string	"snd_wl1"
.LASF128:
	.string	"snd_wl2"
.LASF28:
	.string	"fd_set"
.LASF1:
	.string	"__u_short"
.LASF190:
	.string	"sb_cc"
.LASF208:
	.string	"qh_link"
.LASF35:
	.string	"_IO_read_end"
.LASF241:
	.string	"fd_block"
.LASF161:
	.string	"so_laddr"
.LASF75:
	.string	"uint32_t"
.LASF140:
	.string	"t_srtt"
.LASF47:
	.string	"_fileno"
.LASF172:
	.string	"so_rcv"
.LASF125:
	.string	"snd_nxt"
.LASF225:
	.string	"tmp_ptr"
.LASF170:
	.string	"so_queued"
.LASF3:
	.string	"short unsigned int"
.LASF243:
	.string	"stdout"
.LASF78:
	.string	"sin_family"
.LASF38:
	.string	"_IO_write_ptr"
.LASF90:
	.string	"ih_x1"
.LASF168:
	.string	"so_tcpcb"
.LASF17:
	.string	"u_short"
.LASF192:
	.string	"sb_wptr"
.LASF148:
	.string	"rcv_scale"
.LASF187:
	.string	"m_dat_"
.LASF24:
	.string	"tv_sec"
.LASF82:
	.string	"in_port_t"
.LASF138:
	.string	"t_rtt"
.LASF234:
	.string	"bptr"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
