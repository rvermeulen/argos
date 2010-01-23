	.file	"block-vmdk.c"
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
	.string	"vmdk"
.globl bdrv_vmdk
	.data
	.align 32
	.type	bdrv_vmdk, @object
	.size	bdrv_vmdk, 272
bdrv_vmdk:
	.quad	.LC0
	.long	208
	.zero	4
	.quad	vmdk_probe
	.quad	vmdk_open
	.quad	vmdk_read
	.quad	vmdk_write
	.quad	vmdk_close
	.quad	vmdk_create
	.quad	vmdk_flush
	.quad	vmdk_is_allocated
	.zero	192
.globl parent_open
	.bss
	.align 4
	.type	parent_open, @object
	.size	parent_open, 4
parent_open:
	.zero	4
	.text
	.p2align 4,,15
	.type	vmdk_probe, @function
vmdk_probe:
.LFB97:
	.file 1 "block-vmdk.c"
	.loc 1 98 0
	.loc 1 102 0
	xorl	%eax, %eax
	.loc 1 101 0
	cmpl	$3, %esi
	jle	.L1
.LBB2:
	.file 2 "bswap.h"
	.loc 2 120 0
	movl	(%rdi), %eax
.LBB3:
.LBB4:
.LBB5:
.LBB6:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE6:
.LBE5:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 104 0
	cmpl	$1129273156, %eax
	sete	%dl
	cmpl	$1262767446, %eax
	sete	%al
	orl	%edx, %eax
	andl	$1, %eax
	.loc 1 106 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	andl	$100, %eax
.L1:
	.loc 1 109 0
	rep ; ret
.LFE97:
	.size	vmdk_probe, .-vmdk_probe
	.section	.rodata.str1.1
.LC1:
	.string	"parentCID"
.LC3:
	.string	"%x"
.LC2:
	.string	"CID"
	.text
	.p2align 4,,15
	.type	vmdk_read_cid, @function
vmdk_read_cid:
.LFB98:
	.loc 1 118 0
	movq	%rbx, -24(%rsp)
.LCFI0:
	movq	%rbp, -16(%rsp)
.LCFI1:
	movl	%esi, %ebx
	movq	%r12, -8(%rsp)
.LCFI2:
	subq	$10280, %rsp
.LCFI3:
	.loc 1 119 0
	movq	56(%rdi), %rax
	.loc 1 126 0
	leaq	16(%rsp), %rbp
	movl	$10240, %ecx
	movl	$512, %esi
	movq	(%rax), %rdi
	movq	%rbp, %rdx
	call	bdrv_pread
	.loc 1 127 0
	xorl	%edx, %edx
	.loc 1 126 0
	cmpl	$10240, %eax
	je	.L15
.L10:
	.loc 1 143 0
	movq	10256(%rsp), %rbx
	movq	10264(%rsp), %rbp
	movl	%edx, %eax
	movq	10272(%rsp), %r12
	addq	$10280, %rsp
	ret
	.p2align 4,,7
.L15:
	.loc 1 129 0
	testl	%ebx, %ebx
	.loc 1 130 0
	movl	$.LC1, %esi
	.loc 1 131 0
	movl	$10, %r12d
	.loc 1 129 0
	je	.L16
.L13:
	.loc 1 137 0
	movq	%rbp, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L14
	.loc 1 138 0
	leaq	(%rax,%r12), %rdi
	.loc 1 139 0
	leaq	12(%rsp), %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	sscanf
.L14:
	.loc 1 142 0
	movl	12(%rsp), %edx
	jmp	.L10
	.p2align 4,,7
.L16:
	.loc 1 133 0
	movl	$.LC2, %esi
	.loc 1 134 0
	movb	$4, %r12b
	jmp	.L13
.LFE98:
	.size	vmdk_read_cid, .-vmdk_read_cid
	.p2align 4,,15
	.type	vmdk_is_cid_valid, @function
vmdk_is_cid_valid:
.LFB100:
	.loc 1 169 0
	pushq	%rbx
.LCFI4:
	.loc 1 171 0
	movq	56(%rdi), %rbx
	.loc 1 172 0
	movq	(%rbx), %rax
	movq	2640(%rax), %rdi
	.loc 1 175 0
	testq	%rdi, %rdi
	je	.L18
	.loc 1 176 0
	xorl	%esi, %esi
	call	vmdk_read_cid
	.loc 1 179 0
	xorl	%edx, %edx
	.loc 1 177 0
	cmpl	%eax, 196(%rbx)
	je	.L18
	.loc 1 184 0
	popq	%rbx
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L18:
	popq	%rbx
	.loc 1 183 0
	movl	$1, %edx
	.loc 1 184 0
	movl	%edx, %eax
	ret
.LFE100:
	.size	vmdk_is_cid_valid, .-vmdk_is_cid_valid
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"(VMDK) image open: flags=0x%x filename=%s\n"
	.section	.rodata.str1.1
.LC5:
	.string	"parentFileNameHint"
.LC6:
	.string	""
	.text
	.p2align 4,,15
	.type	vmdk_open, @function
vmdk_open:
.LFB104:
	.loc 1 369 0
	movq	%rbx, -48(%rsp)
.LCFI5:
	movq	%r12, -32(%rsp)
.LCFI6:
	.loc 1 377 0
	leaq	580(%rdi), %rcx
	.loc 1 369 0
	movq	%r13, -24(%rsp)
.LCFI7:
	movq	%rbp, -40(%rsp)
.LCFI8:
	movl	%edx, %ebx
	movq	%r14, -16(%rsp)
.LCFI9:
	movq	%r15, -8(%rsp)
.LCFI10:
	subq	$11608, %rsp
.LCFI11:
	.loc 1 376 0
	movl	parent_open(%rip), %eax
	.loc 1 370 0
	movq	56(%rdi), %rbp
	.loc 1 369 0
	movq	%rdi, %r12
	.loc 1 377 0
	movq	stderr(%rip), %rdi
	.loc 1 369 0
	movq	%rsi, %r13
	.loc 1 377 0
	movl	$.LC4, %esi
	.loc 1 376 0
	testl	%eax, %eax
	movl	$0, %eax
	cmovne	%eax, %ebx
	.loc 1 377 0
	movl	%ebx, %edx
	call	fprintf
	.loc 1 379 0
	movl	%ebx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	bdrv_file_open
	.loc 1 380 0
	testl	%eax, %eax
	.loc 1 381 0
	movl	%eax, %edx
	.loc 1 380 0
	js	.L20
	.loc 1 382 0
	movq	(%rbp), %rdi
	leaq	12(%rsp), %rdx
	xorl	%esi, %esi
	movl	$4, %ecx
	call	bdrv_pread
	cmpl	$4, %eax
	jne	.L85
.LBB7:
	.loc 2 120 0
	movl	12(%rsp), %eax
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE11:
.LBE10:
.LBE9:
.LBE8:
.LBE7:
	.loc 1 386 0
	cmpl	$1129273156, %eax
	.loc 2 120 0
	movl	%eax, 12(%rsp)
	.loc 1 386 0
	je	.L89
	.loc 1 398 0
	cmpl	$1262767446, %eax
	je	.L90
.L85:
	movq	32(%rbp), %rdi
.L24:
	.loc 1 455 0
	call	qemu_free
	.loc 1 456 0
	movq	24(%rbp), %rdi
	call	qemu_free
	.loc 1 457 0
	movq	56(%rbp), %rdi
	call	qemu_free
	.loc 1 458 0
	movq	(%rbp), %rdi
	call	bdrv_delete
	.loc 1 459 0
	movl	$-1, %edx
.L20:
	.loc 1 460 0
	movq	11560(%rsp), %rbx
	movq	11568(%rsp), %rbp
	movl	%edx, %eax
	movq	11576(%rsp), %r12
	movq	11584(%rsp), %r13
	movq	11592(%rsp), %r14
	movq	11600(%rsp), %r15
	addq	$11608, %rsp
	ret
	.p2align 4,,7
.L90:
.LBB12:
	.loc 1 401 0
	movq	(%rbp), %rdi
	leaq	11424(%rsp), %rdx
	movl	$73, %ecx
	movl	$4, %esi
	call	bdrv_pread
	cmpl	$73, %eax
	jne	.L85
.LBB13:
	.loc 2 125 0
	movq	11432(%rsp), %rax
.LBE13:
	movq	%rax, (%r12)
.LBB14:
	movq	11440(%rsp), %rdx
.LBE14:
	movl	%edx, 192(%rbp)
.LBB15:
	.loc 2 124 0
	movl	11464(%rsp), %eax
.LBE15:
	movl	%eax, 48(%rbp)
	.loc 1 406 0
	imull	%edx, %eax
	.loc 1 407 0
	testl	%eax, %eax
	.loc 1 406 0
	movl	%eax, 44(%rbp)
	.loc 1 407 0
	je	.L85
	.loc 1 409 0
	mov	%eax, %edx
	movq	(%r12), %rax
.LBB16:
.LBB17:
	.loc 1 334 0
	leaq	1184(%rsp), %rbx
.LBE17:
.LBE16:
	.loc 1 409 0
	movq	%rdx, %rcx
.LBB18:
.LBB19:
	.loc 1 334 0
	movl	$512, %esi
.LBE19:
.LBE18:
	.loc 1 409 0
	addq	%rdx, %rax
	decq	%rax
	cqto
	idivq	%rcx
.LBB20:
.LBB21:
	.loc 1 334 0
	movl	$10240, %ecx
	movq	%rbx, %rdx
.LBE21:
.LBE20:
	.loc 1 409 0
	movl	%eax, 40(%rbp)
.LBB22:
	.loc 2 125 0
	movq	11468(%rsp), %rax
.LBE22:
	salq	$9, %rax
	movq	%rax, 8(%rbp)
.LBB23:
	movq	11476(%rsp), %rax
.LBE23:
	salq	$9, %rax
	movq	%rax, 16(%rbp)
	.loc 1 415 0
	xorl	%eax, %eax
	cmpl	$0, parent_open(%rip)
	setne	%al
	movl	%eax, 200(%rbp)
.LBB24:
.LBB25:
	.loc 1 328 0
	movq	56(%r12), %r14
	.loc 1 334 0
	movq	(%r14), %rdi
	call	bdrv_pread
	cmpl	$10240, %eax
	jne	.L85
	.loc 1 337 0
	movq	%rbx, %rdi
	movl	$.LC5, %esi
	call	strstr
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L48
.LBB26:
	.loc 1 341 0
	addq	$20, %rbx
	.loc 1 342 0
	movl	$34, %esi
	movq	%rbx, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L85
	.loc 1 345 0
	movq	(%r14), %rdi
	movq	%rax, %rdx
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	addq	$1604, %rdi
	call	strncpy
.LBB27:
	.file 3 "/usr/include/sys/stat.h"
	.loc 3 454 0
	movq	(%r14), %rsi
	leaq	16(%rsp), %rdx
.LBB28:
	.loc 3 455 0
	movl	$1, %edi
.LBE28:
	.loc 3 454 0
	addq	$1604, %rsi
.LBB29:
	.loc 3 455 0
	call	__xstat64
.LBE29:
.LBE27:
	.loc 3 454 0
	testl	%eax, %eax
	je	.L50
	.loc 1 347 0
	movq	(%r14), %rcx
	leaq	160(%rsp), %r15
	movq	%r13, %rdx
	movl	$1024, %esi
	movq	%r15, %rdi
	addq	$1604, %rcx
	call	path_combine
.L52:
	.loc 1 353 0
	movq	(%r14), %rbx
	movl	$.LC6, %edi
	call	bdrv_new
	movq	%rax, 2640(%rbx)
	.loc 1 354 0
	movq	(%r14), %rax
	cmpq	$0, 2640(%rax)
	jne	.L53
.L54:
	.loc 1 356 0
	movq	(%r14), %rdi
	call	bdrv_close
	jmp	.L85
	.p2align 4,,7
.L89:
.LBE26:
.LBE25:
.LBE24:
.LBE12:
.LBB30:
	.loc 1 389 0
	movq	(%rbp), %rdi
	leaq	11504(%rsp), %rdx
	movl	$40, %ecx
	movl	$4, %esi
	call	bdrv_pread
	cmpl	$40, %eax
	jne	.L85
.LBB31:
	.loc 2 124 0
	movl	11516(%rsp), %eax
.LBE31:
	.loc 1 392 0
	movl	$512, 48(%rbp)
	.loc 1 393 0
	movl	$64, 40(%rbp)
	.loc 2 124 0
	movl	%eax, 192(%rbp)
	mov	11512(%rsp), %eax
	movq	%rax, (%r12)
.LBB32:
	movl	11520(%rsp), %eax
.LBE32:
	.loc 1 396 0
	movq	$0, 16(%rbp)
	.loc 2 124 0
	sall	$9, %eax
	mov	%eax, %eax
	movq	%rax, 8(%rbp)
	.loc 1 397 0
	movl	192(%rbp), %eax
	imull	48(%rbp), %eax
	movl	%eax, 44(%rbp)
.L34:
.LBE30:
	.loc 1 429 0
	mov	40(%rbp), %eax
	leaq	0(,%rax,4), %rbx
	.loc 1 430 0
	movslq	%ebx,%r13
	.loc 1 429 0
	movl	%ebx, %r12d
	.loc 1 430 0
	movq	%r13, %rdi
	call	qemu_malloc
	.loc 1 431 0
	testq	%rax, %rax
	.loc 1 430 0
	movq	%rax, 24(%rbp)
	.loc 1 431 0
	je	.L85
	.loc 1 433 0
	movq	8(%rbp), %rsi
	movq	(%rbp), %rdi
	movl	%ebx, %ecx
	movq	%rax, %rdx
	call	bdrv_pread
	cmpl	%ebx, %eax
	jne	.L85
	.loc 1 435 0
	movl	40(%rbp), %edx
	xorl	%eax, %eax
	jmp	.L87
.L91:
	incl	%eax
.L87:
	cmpl	%edx, %eax
	.p2align 4,,2
	jb	.L91
	.loc 1 439 0
	cmpq	$0, 16(%rbp)
	.p2align 4,,2
	je	.L64
	.loc 1 440 0
	movq	%r13, %rdi
	call	qemu_malloc
	.loc 1 441 0
	testq	%rax, %rax
	.loc 1 440 0
	movq	%rax, %rdi
	movq	%rax, 32(%rbp)
	.loc 1 441 0
	je	.L24
	.loc 1 443 0
	movq	16(%rbp), %rsi
	movq	(%rbp), %rdi
	movl	%r12d, %ecx
	movq	%rax, %rdx
	call	bdrv_pread
	cmpl	%r12d, %eax
	jne	.L85
	.loc 1 445 0
	movl	40(%rbp), %edx
	xorl	%eax, %eax
	jmp	.L88
.L92:
	incl	%eax
.L88:
	cmpl	%edx, %eax
	.p2align 4,,2
	jb	.L92
.L64:
	.loc 1 450 0
	movl	48(%rbp), %edi
	sall	$4, %edi
	mov	%edi, %edi
	salq	$2, %rdi
	call	qemu_malloc
	.loc 1 453 0
	xorl	%edx, %edx
	.loc 1 451 0
	testq	%rax, %rax
	.loc 1 450 0
	movq	%rax, 56(%rbp)
	.loc 1 451 0
	jne	.L20
	jmp	.L85
.L53:
.LBB33:
.LBB34:
.LBB35:
.LBB36:
	.loc 1 359 0
	movl	$1, parent_open(%rip)
	.loc 1 360 0
	movq	(%r14), %rax
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	2640(%rax), %rdi
	call	bdrv_open
	testl	%eax, %eax
	js	.L54
	.loc 1 362 0
	movl	$0, parent_open(%rip)
.L48:
.LBE36:
.LBE35:
.LBE34:
	.loc 1 423 0
	movl	$1, %esi
	movq	%r12, %rdi
	call	vmdk_read_cid
	movl	%eax, 196(%rbp)
	jmp	.L34
.L50:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 350 0
	movq	(%r14), %rsi
	leaq	160(%rsp), %r15
	movq	%r15, %rdi
	addq	$1604, %rsi
	call	strcpy
	jmp	.L52
.LBE39:
.LBE38:
.LBE37:
.LBE33:
.LFE104:
	.size	vmdk_open, .-vmdk_open
	.p2align 4,,15
	.type	get_cluster_offset, @function
get_cluster_offset:
.LFB107:
	.loc 1 517 0
	pushq	%rbp
.LCFI12:
	movq	%rsp, %rbp
.LCFI13:
	movq	%r12, -32(%rbp)
.LCFI14:
	movq	%r15, -8(%rbp)
.LCFI15:
	movq	%rsi, %r12
	movq	%rbx, -40(%rbp)
.LCFI16:
	movq	%r13, -24(%rbp)
.LCFI17:
	movq	%rdi, %r15
	movq	%r14, -16(%rbp)
.LCFI18:
	addq	$-128, %rsp
.LCFI19:
	.loc 1 524 0
	testq	%rsi, %rsi
	.loc 1 517 0
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	.loc 1 518 0
	movq	56(%rdi), %rbx
	.loc 1 521 0
	movl	$0, -76(%rbp)
	.loc 1 524 0
	je	.L94
	.loc 1 525 0
	movl	$0, 16(%rsi)
.L94:
	.loc 1 527 0
	mov	44(%rbx), %edx
	movq	-48(%rbp), %rax
	shrq	$9, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	.loc 1 529 0
	xorl	%ecx, %ecx
	.loc 1 527 0
	movl	%eax, -56(%rbp)
	.loc 1 528 0
	cmpl	%eax, 40(%rbx)
	jbe	.L93
	.loc 1 530 0
	mov	%eax, %edx
	movq	24(%rbx), %rax
	movl	(%rax,%rdx,4), %r13d
	.loc 1 531 0
	testl	%r13d, %r13d
	je	.L93
	.p2align 4,,7
.L107:
	.loc 1 534 0
	movslq	%ecx,%rdx
	cmpl	%r13d, 64(%rbx,%rdx,4)
	je	.L135
	.loc 1 533 0
	incl	%ecx
	cmpl	$15, %ecx
	jle	.L107
	.loc 1 546 0
	xorl	%r14d, %r14d
	.loc 1 547 0
	movl	$-1, %edx
	.loc 1 548 0
	xorl	%ecx, %ecx
	.p2align 4,,7
.L112:
	.loc 1 549 0
	movslq	%ecx,%rax
	movl	128(%rbx,%rax,4), %eax
	cmpl	%edx, %eax
	jae	.L110
	.loc 1 550 0
	movl	%eax, %edx
	.loc 1 551 0
	movl	%ecx, %r14d
.L110:
	.loc 1 548 0
	incl	%ecx
	cmpl	$15, %ecx
	jle	.L112
	.loc 1 554 0
	mov	48(%rbx), %ecx
	movl	%r14d, %edx
	movq	56(%rbx), %rax
	.loc 1 555 0
	mov	%r13d, %esi
	salq	$9, %rsi
	.loc 1 554 0
	imull	%ecx, %edx
	.loc 1 555 0
	salq	$2, %rcx
	.loc 1 554 0
	leaq	(%rax,%rdx,4), %rdx
	movq	%rdx, -72(%rbp)
	.loc 1 555 0
	movq	(%rbx), %rdi
	call	bdrv_pread
	movl	48(%rbx), %esi
	cltq
	.loc 1 557 0
	xorl	%ecx, %ecx
	.loc 1 555 0
	mov	%esi, %edx
	salq	$2, %rdx
	cmpq	%rdx, %rax
	jne	.L93
	.loc 1 559 0
	movslq	%r14d,%rax
	movl	%r13d, 64(%rbx,%rax,4)
	.loc 1 560 0
	movl	$1, 128(%rbx,%rax,4)
	jmp	.L106
.L139:
.LBB40:
.LBB41:
.LBB42:
	.loc 1 475 0
	movq	56(%rax), %rax
	.loc 1 477 0
	movq	%r15, %rdi
	.loc 1 475 0
	movq	%rax, -120(%rbp)
	.loc 1 477 0
	call	vmdk_is_cid_valid
	testl	%eax, %eax
	jne	.L136
.L134:
.LBB43:
.LBB44:
	.loc 1 489 0
	movq	-96(%rbp), %rsp
.LBE44:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
	.loc 1 586 0
	xorl	%ecx, %ecx
	.p2align 4,,7
.L93:
	.loc 1 598 0
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r12
	movq	%rcx, %rax
	movq	-24(%rbp), %r13
	movq	-16(%rbp), %r14
	movq	-8(%rbp), %r15
	leave
	ret
.L135:
	.loc 1 536 0
	movl	128(%rbx,%rdx,4), %eax
	incl	%eax
	movl	%eax, 128(%rbx,%rdx,4)
	incl	%eax
	je	.L137
.L101:
	.loc 1 541 0
	movl	48(%rbx), %esi
	movq	56(%rbx), %rax
	movl	%esi, %edx
	imull	%ecx, %edx
	leaq	(%rax,%rdx,4), %rdx
	movq	%rdx, -72(%rbp)
.L106:
	.loc 1 562 0
	mov	192(%rbx), %edx
	movq	-48(%rbp), %rax
	shrq	$9, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	mov	%esi, %edx
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
.LBB45:
	.loc 2 124 0
	mov	%edx, %eax
.LBE45:
	.loc 1 562 0
	movl	%edx, -60(%rbp)
	.loc 2 124 0
	movq	-72(%rbp), %rdx
.LBB46:
	movq	%rax, -88(%rbp)
.LBE46:
	mov	(%rdx,%rax,4), %r14d
	.loc 1 565 0
	testq	%r14, %r14
	jne	.L115
	.loc 1 566 0
	movl	-52(%rbp), %esi
	.loc 1 567 0
	xorl	%ecx, %ecx
	.loc 1 566 0
	testl	%esi, %esi
	je	.L93
	.loc 1 569 0
	movl	200(%rbx), %edx
	testl	%edx, %edx
	je	.L138
.L117:
.LBB47:
.LBB48:
	.loc 1 469 0
	movq	56(%r15), %rbx
	.loc 1 467 0
	movq	%rsp, -96(%rbp)
	.loc 1 470 0
	movl	192(%rbx), %eax
	sall	$9, %eax
	mov	%eax, %eax
	movq	%rax, -104(%rbp)
	addq	$30, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %rdx
	andq	$-16, %rdx
	movq	%rdx, -112(%rbp)
	.loc 1 474 0
	movq	(%rbx), %rax
	movq	2640(%rax), %rax
	testq	%rax, %rax
	jne	.L139
.L120:
.LBE48:
.LBE47:
	.loc 1 588 0
	testq	%r12, %r12
.LBB49:
.LBB50:
.LBB51:
	.loc 1 492 0
	movq	-96(%rbp), %rsp
.LBE51:
.LBE50:
.LBE49:
	.loc 1 588 0
	je	.L115
	.loc 1 589 0
	movl	-76(%rbp), %eax
	.loc 1 590 0
	movl	-56(%rbp), %edx
	.loc 1 591 0
	movl	-60(%rbp), %ecx
	.loc 1 592 0
	movl	%r13d, 12(%r12)
	.loc 1 593 0
	movl	$1, 16(%r12)
	.loc 1 589 0
	movl	%eax, (%r12)
	.loc 1 590 0
	movl	%edx, 4(%r12)
	.loc 1 591 0
	movl	%ecx, 8(%r12)
.L115:
	.loc 1 597 0
	movq	%r14, %rcx
	salq	$9, %rcx
	jmp	.L93
.L137:
	.loc 1 537 0
	xorl	%edx, %edx
	.p2align 4,,7
.L105:
	.loc 1 538 0
	movslq	%edx,%rax
	.loc 1 537 0
	incl	%edx
	.loc 1 538 0
	shrl	128(%rbx,%rax,4)
	.loc 1 537 0
	cmpl	$15, %edx
	jle	.L105
	jmp	.L101
.L138:
	.loc 1 570 0
	movq	(%rbx), %rdi
	call	bdrv_getlength
	.loc 1 571 0
	movl	192(%rbx), %esi
	movq	(%rbx), %rdi
	.loc 1 570 0
	movq	%rax, %r14
	.loc 1 573 0
	shrq	$9, %r14
	.loc 1 571 0
	sall	$9, %esi
	mov	%esi, %esi
	addq	%rax, %rsi
	call	bdrv_truncate
	.loc 1 575 0
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	.loc 2 124 0
	movl	%r14d, -76(%rbp)
	.loc 1 575 0
	movl	%r14d, (%rax,%rcx,4)
	.loc 1 577 0
	movq	%r14, activeBDRV+8(%rip)
	.loc 1 578 0
	movq	%r15, activeBDRV(%rip)
	jmp	.L117
.L136:
.LBB52:
.LBB53:
.LBB54:
	.loc 1 480 0
	movq	(%rbx), %rax
	movl	-52(%rbp), %ecx
	xorl	%esi, %esi
	movq	-48(%rbp), %rdx
	movq	2640(%rax), %rdi
	call	get_cluster_offset
	.loc 1 482 0
	testq	%rax, %rax
	.loc 1 480 0
	movq	%rax, %rsi
	.loc 1 482 0
	je	.L120
.LBB55:
	.loc 1 483 0
	movq	activeBDRV(%rip), %rax
	.loc 1 485 0
	movq	-112(%rbp), %rdx
	.loc 1 483 0
	movq	56(%rax), %rbx
	.loc 1 485 0
	movq	-120(%rbp), %rax
	movl	192(%rax), %ecx
	movq	(%rax), %rdi
	sall	$9, %ecx
	call	bdrv_pread
	movq	-120(%rbp), %rcx
	movl	192(%rcx), %edx
	sall	$9, %edx
	cmpl	%edx, %eax
	jne	.L134
	.loc 1 489 0
	movq	activeBDRV+8(%rip), %rsi
	movl	-104(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movq	(%rbx), %rdi
	salq	$9, %rsi
	call	bdrv_pwrite
	cltq
	cmpq	-104(%rbp), %rax
	jne	.L134
	jmp	.L120
.LBE55:
.LBE54:
.LBE53:
.LBE52:
.LFE107:
	.size	get_cluster_offset, .-get_cluster_offset
	.p2align 4,,15
	.type	vmdk_is_allocated, @function
vmdk_is_allocated:
.LFB108:
	.loc 1 602 0
	movq	%rbx, -32(%rsp)
.LCFI20:
	movq	%r13, -16(%rsp)
.LCFI21:
	movl	%edx, %r13d
	movq	%r14, -8(%rsp)
.LCFI22:
	movq	%r12, -24(%rsp)
.LCFI23:
	subq	$40, %rsp
.LCFI24:
	.loc 1 603 0
	movq	56(%rdi), %r12
	.loc 1 607 0
	movq	%rsi, %rdx
	.loc 1 602 0
	movq	%rsi, %rbx
	movq	%rcx, %r14
	.loc 1 607 0
	salq	$9, %rdx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	get_cluster_offset
	.loc 1 608 0
	movl	192(%r12), %edi
	.loc 1 607 0
	movq	%rax, %rsi
	.loc 1 608 0
	movq	%rbx, %rax
	cqto
	.loc 1 614 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	.loc 1 608 0
	mov	%edi, %ecx
	idivq	%rcx
	movq	%rdx, %rcx
	.loc 1 609 0
	movl	%edi, %edx
	subl	%ecx, %edx
	.loc 1 611 0
	cmpl	%r13d, %edx
	cmovg	%r13d, %edx
	.loc 1 614 0
	movq	24(%rsp), %r13
	.loc 1 613 0
	xorl	%eax, %eax
	.loc 1 612 0
	movl	%edx, (%r14)
	.loc 1 614 0
	movq	32(%rsp), %r14
	.loc 1 613 0
	testq	%rsi, %rsi
	setne	%al
	.loc 1 614 0
	addq	$40, %rsp
	ret
.LFE108:
	.size	vmdk_is_allocated, .-vmdk_is_allocated
	.p2align 4,,15
	.type	vmdk_read, @function
vmdk_read:
.LFB109:
	.loc 1 618 0
	pushq	%r15
.LCFI25:
	pushq	%r14
.LCFI26:
	movq	%rdx, %r14
	pushq	%r13
.LCFI27:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI28:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI29:
	pushq	%rbx
.LCFI30:
	subq	$8, %rsp
.LCFI31:
	.loc 1 618 0
	movq	%rdi, (%rsp)
	.loc 1 619 0
	movq	56(%rdi), %r15
	jmp	.L156
	.p2align 4,,7
.L158:
	.loc 1 632 0
	movq	(%rsp), %rdi
	call	vmdk_is_cid_valid
	testl	%eax, %eax
	je	.L157
	.loc 1 634 0
	movq	(%r15), %rax
	movl	%ebp, %ecx
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	2640(%rax), %rdi
	call	bdrv_read
	.loc 1 635 0
	testl	%eax, %eax
	js	.L157
.L151:
	.loc 1 645 0
	movslq	%ebp,%rax
	.loc 1 644 0
	subl	%ebp, %r13d
	.loc 1 646 0
	sall	$9, %ebp
	.loc 1 645 0
	addq	%rax, %r12
	.loc 1 646 0
	movslq	%ebp,%rax
	addq	%rax, %r14
.L156:
	testl	%r13d, %r13d
	jle	.L155
	.loc 1 624 0
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	salq	$9, %rdx
	xorl	%esi, %esi
	call	get_cluster_offset
	.loc 1 625 0
	movl	192(%r15), %ecx
	.loc 1 624 0
	movq	%rax, %rdi
	.loc 1 625 0
	movq	%r12, %rax
	mov	%ecx, %edx
	.loc 1 626 0
	movl	%ecx, %ebp
	.loc 1 625 0
	movq	%rdx, %rbx
	cqto
	idivq	%rbx
	.loc 1 626 0
	subl	%edx, %ebp
	.loc 1 625 0
	movl	%edx, %eax
	.loc 1 628 0
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	.loc 1 629 0
	testq	%rdi, %rdi
	jne	.L146
	.loc 1 631 0
	movq	(%r15), %rax
	cmpq	$0, 2640(%rax)
	jne	.L158
	.loc 1 638 0
	movl	%ebp, %edx
	xorl	%esi, %esi
	movq	%r14, %rdi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L151
	.p2align 4,,7
.L146:
	.loc 1 641 0
	sall	$9, %eax
	movl	%ebp, %ebx
	movq	%r14, %rdx
	movslq	%eax,%rsi
	sall	$9, %ebx
	addq	%rdi, %rsi
	movq	(%r15), %rdi
	movl	%ebx, %ecx
	call	bdrv_pread
	cmpl	%ebx, %eax
	je	.L151
.L157:
	.loc 1 649 0
	addq	$8, %rsp
	.loc 1 642 0
	movl	$-1, %eax
	.loc 1 649 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L155:
	addq	$8, %rsp
	.loc 1 648 0
	xorl	%eax, %eax
	.loc 1 649 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE109:
	.size	vmdk_read, .-vmdk_read
	.local	cid_update.0
	.comm	cid_update.0,4,4
	.section	.rodata.str1.1
.LC8:
	.string	"%x\n"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"(VMDK) Wrong offset: sector_num=0x%lx total_sectors=0x%lx\n"
	.text
	.p2align 4,,15
	.type	vmdk_write, @function
vmdk_write:
.LFB110:
	.loc 1 653 0
	pushq	%r15
.LCFI32:
	movq	%rdx, %r15
	pushq	%r14
.LCFI33:
	movq	%rsi, %r14
	pushq	%r13
.LCFI34:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI35:
	pushq	%rbp
.LCFI36:
	pushq	%rbx
.LCFI37:
	subq	$20536, %rsp
.LCFI38:
	.loc 1 653 0
	movq	%rdi, 8(%rsp)
	.loc 1 654 0
	movq	56(%rdi), %rax
	movq	%rax, (%rsp)
	.loc 1 660 0
	movq	(%rdi), %rcx
	cmpq	%rsi, %rcx
	jl	.L185
	.p2align 4,,7
.L184:
	.loc 1 691 0
	testl	%r13d, %r13d
	jle	.L179
.L188:
	.loc 1 669 0
	movq	(%rsp), %rdx
	.loc 1 673 0
	movq	8(%rsp), %rdi
	leaq	20496(%rsp), %rsi
	movl	$1, %ecx
	.loc 1 669 0
	movl	192(%rdx), %eax
	.loc 1 673 0
	movq	%r14, %rdx
	.loc 1 669 0
	leal	-1(%rax), %ebp
	.loc 1 670 0
	movl	%eax, %r12d
	.loc 1 669 0
	andl	%r14d, %ebp
	.loc 1 670 0
	subl	%ebp, %r12d
	.loc 1 672 0
	cmpl	%r13d, %r12d
	cmovg	%r13d, %r12d
	.loc 1 673 0
	salq	$9, %rdx
	call	get_cluster_offset
	.loc 1 674 0
	testq	%rax, %rax
	je	.L183
	.loc 1 677 0
	sall	$9, %ebp
	movl	%r12d, %ebx
	movq	%r15, %rdx
	movslq	%ebp,%rsi
	sall	$9, %ebx
	addq	%rax, %rsi
	movq	(%rsp), %rax
	movl	%ebx, %ecx
	movq	(%rax), %rdi
	call	bdrv_pwrite
	cmpl	%ebx, %eax
	jne	.L183
	.loc 1 679 0
	movl	20512(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L186
.L166:
	.loc 1 689 0
	movl	cid_update.0(%rip), %edi
	.loc 1 685 0
	movslq	%r12d,%rax
	.loc 1 684 0
	subl	%r12d, %r13d
	.loc 1 686 0
	sall	$9, %r12d
	.loc 1 685 0
	addq	%rax, %r14
	.loc 1 686 0
	movslq	%r12d,%rax
	addq	%rax, %r15
	.loc 1 689 0
	testl	%edi, %edi
	jne	.L184
.LBB56:
	.loc 1 146 0
	xorl	%edi, %edi
	call	time
	movq	%rax, %rbp
.LBB57:
	.loc 1 147 0
	movq	8(%rsp), %rax
	.loc 1 152 0
	leaq	10256(%rsp), %rdx
	movl	$10240, %ecx
	movl	$512, %esi
	.loc 1 147 0
	movq	56(%rax), %rbx
	.loc 1 152 0
	movq	(%rbx), %rdi
	call	bdrv_pread
	cmpl	$10240, %eax
	je	.L187
.L174:
.LBE57:
.LBE56:
	.loc 1 691 0
	incl	cid_update.0(%rip)
	testl	%r13d, %r13d
	jg	.L188
	.p2align 4,,7
.L179:
	.loc 1 695 0
	addq	$20536, %rsp
	.loc 1 694 0
	xorl	%eax, %eax
	.loc 1 695 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L186:
.LBB58:
.LBB59:
	.loc 1 498 0
	movq	8(%rsp), %rdx
	.loc 1 501 0
	mov	20508(%rsp), %esi
	movl	$4, %ecx
	mov	20504(%rsp), %eax
	.loc 1 498 0
	movq	56(%rdx), %rbx
	.loc 1 501 0
	leaq	20496(%rsp), %rdx
	salq	$7, %rsi
	addq	%rax, %rsi
	movq	(%rbx), %rdi
	salq	$2, %rsi
	call	bdrv_pwrite
	cmpl	$4, %eax
	jne	.L183
	.loc 1 505 0
	cmpq	$0, 16(%rbx)
	je	.L166
	.loc 1 506 0
	mov	20500(%rsp), %edx
	movq	32(%rbx), %rax
	.loc 1 507 0
	movl	$4, %ecx
	.loc 1 506 0
	mov	(%rax,%rdx,4), %esi
	.loc 1 507 0
	mov	20504(%rsp), %eax
	leaq	20496(%rsp), %rdx
	.loc 1 506 0
	movl	%esi, 20508(%rsp)
	.loc 1 507 0
	salq	$7, %rsi
	movq	(%rbx), %rdi
	addq	%rax, %rsi
	salq	$2, %rsi
	call	bdrv_pwrite
	cmpl	$4, %eax
	je	.L166
.L183:
.LBE59:
.LBE58:
	.loc 1 695 0
	addq	$20536, %rsp
.LBB60:
.LBB61:
	.loc 1 507 0
	movl	$-1, %eax
.LBE61:
.LBE60:
	.loc 1 695 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L187:
.LBB62:
.LBB63:
	.loc 1 155 0
	leaq	10256(%rsp), %rdi
	movl	$.LC1, %esi
	call	strstr
	.loc 1 156 0
	leaq	16(%rsp), %rdi
	.loc 1 155 0
	movq	%rax, %rsi
	.loc 1 156 0
	call	strcpy
	.loc 1 157 0
	leaq	10256(%rsp), %rdi
	movl	$.LC2, %esi
	call	strstr
	testq	%rax, %rax
	je	.L175
	.loc 1 158 0
	leaq	4(%rax), %rdi
	.loc 1 159 0
	movl	$.LC8, %esi
	movl	%ebp, %edx
	xorl	%eax, %eax
	call	sprintf
	.loc 1 160 0
	leaq	16(%rsp), %rsi
	leaq	10256(%rsp), %rdi
	call	strcat
.L175:
	.loc 1 163 0
	movq	(%rbx), %rdi
	leaq	10256(%rsp), %rdx
	movl	$10240, %ecx
	movl	$512, %esi
	call	bdrv_pwrite
	jmp	.L174
.L185:
.LBE63:
.LBE62:
	.loc 1 661 0
	movq	stderr(%rip), %rdi
	movq	%rsi, %rdx
	xorl	%eax, %eax
	movl	$.LC7, %esi
	call	fprintf
	jmp	.L183
.LFE110:
	.size	vmdk_write, .-vmdk_write
	.section	.rodata.str1.8
	.align 8
.LC9:
	.ascii	"# Disk DescriptorFile\nversion=1\nCID=%x\n"
	.string	"parentCID=ffffffff\ncreateType=\"monolithicSparse\"\n\n# Extent description\nRW %lu SPARSE \"%s\"\n\n# The Disk Data Base \n#DDB\n\nddb.virtualHWVersion = \"%d\"\nddb.geometry.cylinders = \"%lu\"\nddb.geometry.heads = \"16\"\nddb.geometry.sectors = \"63\"\nddb.adapterType = \"ide\"\n"
	.align 8
.LC10:
	.string	"# Disk DescriptorFile\nversion=1\nCID=%x\nparentCID=%x\ncreateType=\"monolithicSparse\"\nparentFileNameHint=\"%s\"\n\n# Extent description\nRW %lu SPARSE \"%s\"\n\n# The Disk Data Base \n#DDB\n\n"
	.text
	.p2align 4,,15
	.type	vmdk_create, @function
vmdk_create:
.LFB111:
	.loc 1 699 0
	movq	%rbp, -40(%rsp)
.LCFI39:
	movq	%r14, -16(%rsp)
.LCFI40:
	movq	%rdx, %rbp
	movq	%r15, -8(%rsp)
.LCFI41:
	movq	%rbx, -48(%rsp)
.LCFI42:
	movq	%rsi, %r14
	movq	%r12, -32(%rsp)
.LCFI43:
	movq	%r13, -24(%rsp)
.LCFI44:
	subq	$22280, %rsp
.LCFI45:
	.loc 1 725 0
	testq	%rdx, %rdx
	.loc 1 699 0
	movq	%rdi, 24(%rsp)
	movl	%ecx, %r15d
	.loc 1 725 0
	je	.L190
.LBB64:
.LBB65:
	.loc 1 211 0
	xorl	%eax, %eax
	movl	$420, %edx
	movl	$578, %esi
	call	open64
	movl	%eax, %r12d
	.loc 1 212 0
	movl	$-1, %eax
	testl	%r12d, %r12d
	js	.L189
	.loc 1 214 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	open64
	.loc 1 215 0
	testl	%eax, %eax
	.loc 1 214 0
	movl	%eax, %r13d
	.loc 1 215 0
	js	.L266
	.loc 1 221 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%eax, %edi
	call	lseek64
	incq	%rax
	je	.L195
	.loc 1 223 0
	leaq	48(%rsp), %rbx
	movl	$512, %edx
	movl	%r13d, %edi
	movq	%rbx, %rsi
	call	read
	cmpq	$512, %rax
	je	.L267
.L195:
	.loc 1 314 0
	movl	%r13d, %edi
	call	close
.L266:
	.loc 1 315 0
	movl	%r12d, %edi
	call	close
	movl	$-1, %eax
.L189:
.LBE65:
.LBE64:
	.loc 1 801 0
	movq	22232(%rsp), %rbx
	movq	22240(%rsp), %rbp
	movq	22248(%rsp), %r12
	movq	22256(%rsp), %r13
	movq	22264(%rsp), %r14
	movq	22272(%rsp), %r15
	addq	$22280, %rsp
	ret
	.p2align 4,,7
.L190:
	.loc 1 729 0
	movq	24(%rsp), %rdi
	xorl	%eax, %eax
	movl	$420, %edx
	movl	$577, %esi
	call	open64
	movl	%eax, %r12d
	.loc 1 732 0
	movl	$-1, %eax
	.loc 1 731 0
	testl	%r12d, %r12d
	js	.L189
	.loc 1 734 0
	leaq	22144(%rsp), %rbx
	xorl	%esi, %esi
	movl	$73, %edx
	.loc 2 120 0
	movl	$1447904331, 40(%rsp)
	.loc 1 734 0
	movq	%rbx, %rdi
	call	memset
	.loc 1 741 0
	leaq	127(%r14), %rax
.LBB66:
	.loc 2 125 0
	movl	$128, %ecx
.LBE66:
	.loc 1 767 0
	movl	%r12d, %edi
	.loc 2 124 0
	movl	$1, 22144(%rsp)
	movl	$3, 22148(%rsp)
	.loc 1 741 0
	cqto
	.loc 2 125 0
	movq	%r14, 22152(%rsp)
	movq	$128, 22160(%rsp)
	.loc 1 741 0
	idivq	%rcx
	.loc 2 124 0
	movl	$512, 22184(%rsp)
	.loc 2 125 0
	movq	$1, 22168(%rsp)
	movq	$20, 22176(%rsp)
	movq	$21, 22188(%rsp)
	.loc 1 761 0
	movb	$10, 22213(%rsp)
	.loc 1 762 0
	movb	$32, 22214(%rsp)
	.loc 1 763 0
	movb	$13, 22215(%rsp)
	.loc 1 764 0
	movb	$10, 22216(%rsp)
	.loc 1 743 0
	leal	511(%rax), %ebp
	shrl	$9, %ebp
	.loc 1 744 0
	mov	%ebp, %eax
	.loc 1 749 0
	leal	0(,%rbp,4), %edx
	.loc 1 744 0
	leaq	511(,%rax,4), %rax
	.loc 1 749 0
	mov	%edx, %edx
	.loc 1 744 0
	movq	%rax, %r13
	shrq	$9, %r13
	.loc 1 749 0
	mov	%r13d, %eax
	leaq	21(%rax,%rdx), %rsi
	.loc 1 750 0
	leaq	(%rsi,%rax), %rax
	.loc 2 125 0
	movq	%rsi, 22196(%rsp)
	.loc 1 767 0
	leaq	40(%rsp), %rsi
	.loc 1 750 0
	leaq	127(%rax,%rdx), %rax
	cqto
	idivq	%rcx
	.loc 1 767 0
	movl	$4, %edx
	.loc 1 750 0
	salq	$7, %rax
	.loc 2 125 0
	movq	%rax, 22204(%rsp)
	.loc 1 767 0
	call	write
	.loc 1 768 0
	movl	$73, %edx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	write
	.loc 1 770 0
	movq	22204(%rsp), %rsi
	movl	%r12d, %edi
	.loc 1 774 0
	xorl	%ebx, %ebx
	.loc 1 770 0
	salq	$9, %rsi
	call	ftruncate64
.LBB67:
	.loc 2 125 0
	movq	22188(%rsp), %rsi
.LBE67:
	xorl	%edx, %edx
	movl	%r12d, %edi
	salq	$9, %rsi
	call	lseek64
	.loc 1 774 0
	movl	%r13d, %eax
	addl	22188(%rsp), %eax
	cmpl	%ebp, %ebx
	movl	%eax, 36(%rsp)
	jae	.L260
	.p2align 4,,7
.L268:
	.loc 1 776 0
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	movl	%r12d, %edi
	.loc 1 774 0
	incl	%ebx
	.loc 1 776 0
	call	write
	.loc 1 774 0
	addl	$4, 36(%rsp)
	cmpl	%ebp, %ebx
	jb	.L268
.L260:
.LBB68:
	.loc 2 125 0
	movq	22196(%rsp), %rsi
.LBE68:
	xorl	%edx, %edx
	movl	%r12d, %edi
	.loc 1 780 0
	xorl	%ebx, %ebx
	.loc 2 125 0
	salq	$9, %rsi
	call	lseek64
	.loc 1 780 0
	addl	22196(%rsp), %r13d
	cmpl	%ebp, %ebx
	movl	%r13d, 36(%rsp)
	jae	.L262
	.p2align 4,,7
.L269:
	.loc 1 782 0
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	movl	%r12d, %edi
	.loc 1 780 0
	incl	%ebx
	.loc 1 782 0
	call	write
	.loc 1 780 0
	addl	$4, 36(%rsp)
	cmpl	%ebp, %ebx
	jb	.L269
.L262:
	.loc 1 786 0
	movq	24(%rsp), %rdi
	movl	$92, %esi
	.loc 1 792 0
	leaq	21120(%rsp), %rbp
	.loc 1 786 0
	call	strrchr
	.loc 1 787 0
	testq	%rax, %rax
	leaq	1(%rax), %rbx
	cmove	24(%rsp), %rbx
	.loc 1 788 0
	movl	$47, %esi
	movq	%rbx, %rdi
	call	strrchr
	movq	%rax, %rdx
	.loc 1 789 0
	leaq	1(%rax), %rax
	.loc 1 790 0
	movl	$58, %esi
	.loc 1 789 0
	testq	%rdx, %rdx
	cmovne	%rax, %rbx
	.loc 1 790 0
	movq	%rbx, %rdi
	call	strrchr
	.loc 1 791 0
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	cmovne	%rdx, %rbx
	.loc 1 792 0
	xorl	%edi, %edi
	andl	$4, %r15d
	call	time
	cmpl	$1, %r15d
	movq	%rax, %rsi
	movabsq	$-9076969306111049207, %rdx
	movq	%r14, %rax
	sbbl	%r9d, %r9d
	movq	%r14, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	andl	$-2, %r9d
	addl	$6, %r9d
	movq	%rbx, %r8
	movq	%rbp, %rdi
	xorl	%eax, %eax
	addq	%r14, %rdx
	sarq	$9, %rdx
	subq	%rcx, %rdx
	movq	%r14, %rcx
	movq	%rdx, (%rsp)
	movq	%rsi, %rdx
	movl	$.LC9, %esi
	call	sprintf
.LBB69:
	.loc 2 125 0
	movq	22168(%rsp), %rsi
.LBE69:
	xorl	%edx, %edx
	movl	%r12d, %edi
	salq	$9, %rsi
	call	lseek64
	.loc 1 797 0
	movq	%rbp, %rdx
	.p2align 4,,7
.L257:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L257
	movl	%ecx, %eax
	movq	%rbp, %rsi
	movl	%r12d, %edi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%rbp, %rdx
	call	write
.L265:
	.loc 1 799 0
	movl	%r12d, %edi
	call	close
	.loc 1 800 0
	xorl	%eax, %eax
	jmp	.L189
.L267:
.LBB70:
.LBB71:
	.loc 1 227 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%r12d, %edi
	call	lseek64
	incq	%rax
	je	.L195
	.loc 1 229 0
	movl	$512, %edx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	write
	incq	%rax
	je	.L195
	.loc 1 232 0
	leaq	21040(%rsp), %rdi
	movl	$73, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 233 0
	movq	52(%rsp), %rax
	.loc 1 235 0
	movl	%r12d, %edi
	.loc 1 233 0
	movq	%rax, 21040(%rsp)
	movq	60(%rsp), %rax
	movq	%rax, 21048(%rsp)
	movq	68(%rsp), %rax
	movq	%rax, 21056(%rsp)
	movq	76(%rsp), %rax
	movq	%rax, 21064(%rsp)
	movq	84(%rsp), %rax
	movq	%rax, 21072(%rsp)
	movq	92(%rsp), %rax
	movq	%rax, 21080(%rsp)
	movq	100(%rsp), %rax
	movq	%rax, 21088(%rsp)
	movq	108(%rsp), %rax
	movq	%rax, 21096(%rsp)
	movq	116(%rsp), %rax
	movq	%rax, 21104(%rsp)
	movzbl	124(%rsp), %eax
	.loc 1 235 0
	movq	21100(%rsp), %rsi
	salq	$9, %rsi
	.loc 1 233 0
	movb	%al, 21112(%rsp)
	.loc 1 235 0
	call	ftruncate64
	.loc 1 237 0
	xorl	%edx, %edx
	movl	$512, %esi
	movl	%r13d, %edi
	call	lseek64
	incq	%rax
	je	.L195
	.loc 1 239 0
	leaq	10800(%rsp), %rbx
	movl	$10240, %edx
	movl	%r13d, %edi
	movq	%rbx, %rsi
	call	read
	cmpq	$10240, %rax
	jne	.L195
	.loc 1 242 0
	movl	$.LC2, %esi
	movq	%rbx, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L201
	.loc 1 243 0
	leaq	4(%rax), %rdi
	.loc 1 244 0
	leaq	44(%rsp), %rdx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	sscanf
.L201:
	.loc 1 248 0
	movq	24(%rsp), %rdi
	movl	$92, %esi
	.loc 1 255 0
	leaq	560(%rsp), %r14
	.loc 1 248 0
	call	strrchr
	.loc 1 249 0
	testq	%rax, %rax
	leaq	1(%rax), %rbx
	cmove	24(%rsp), %rbx
	.loc 1 250 0
	movl	$47, %esi
	movq	%rbx, %rdi
	call	strrchr
	movq	%rax, %rdx
	.loc 1 251 0
	leaq	1(%rax), %rax
	.loc 1 252 0
	movl	$58, %esi
	.loc 1 251 0
	testq	%rdx, %rdx
	cmovne	%rax, %rbx
	.loc 1 252 0
	movq	%rbx, %rdi
	call	strrchr
	.loc 1 253 0
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	.loc 1 255 0
	movl	21048(%rsp), %r9d
	movq	%rbp, %r8
	movl	$.LC10, %esi
	movq	%r14, %rdi
	.loc 1 253 0
	cmovne	%rdx, %rbx
	.loc 1 255 0
	movl	44(%rsp), %edx
	xorl	%eax, %eax
	movq	%rbx, (%rsp)
	movl	%edx, %ecx
	call	sprintf
	.loc 1 259 0
	xorl	%edx, %edx
	movl	$512, %esi
	movl	%r12d, %edi
	call	lseek64
	incq	%rax
	je	.L195
	.loc 1 261 0
	movq	%r14, %rdx
.L209:
	movl	(%rdx), %eax
	addq	$4, %rdx
	leal	-16843009(%rax), %ecx
	notl	%eax
	andl	%eax, %ecx
	andl	$-2139062144, %ecx
	je	.L209
	movl	%ecx, %eax
	movq	%r14, %rsi
	movl	%r12d, %edi
	shrl	$16, %eax
	testl	$32896, %ecx
	cmove	%eax, %ecx
	leaq	2(%rdx), %rax
	cmove	%rax, %rdx
	addb	%cl, %cl
	sbbq	$3, %rdx
	subq	%r14, %rdx
	call	write
	incq	%rax
	je	.L195
	.loc 1 271 0
	movslq	21080(%rsp),%rax
	.loc 1 264 0
	movq	21092(%rsp), %r14
	.loc 1 271 0
	imulq	21056(%rsp), %rax
	.loc 1 265 0
	movq	21084(%rsp), %rbx
	.loc 1 266 0
	movq	21048(%rsp), %rcx
	.loc 1 264 0
	salq	$9, %r14
	.loc 1 265 0
	salq	$9, %rbx
	.loc 1 266 0
	salq	$9, %rcx
	.loc 1 272 0
	movq	%rax, %rdx
	salq	$9, %rdx
	je	.L195
	.loc 1 274 0
	movq	%rcx, %rax
	movq	%rdx, %rsi
	cqto
	idivq	%rsi
	.loc 1 275 0
	leal	0(,%rax,4), %eax
	.loc 1 278 0
	mov	%eax, %ebp
	movq	%rbp, %rdi
	call	qemu_malloc
	.loc 1 279 0
	testq	%rax, %rax
	.loc 1 278 0
	movq	%rax, 16(%rsp)
	.loc 1 279 0
	je	.L195
	.loc 1 281 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	call	lseek64
	incq	%rax
	je	.L214
	.loc 1 283 0
	movq	16(%rsp), %rsi
	movq	%rbp, %rdx
	movl	%r13d, %edi
	call	read
	cmpq	%rbp, %rax
	movq	%rax, %r15
	je	.L270
.L214:
	.loc 1 312 0
	movq	16(%rsp), %rdi
	call	qemu_free
	jmp	.L195
.L270:
	.loc 1 285 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	lseek64
	incq	%rax
	je	.L214
	.loc 1 287 0
	movq	16(%rsp), %rsi
	movq	%r15, %rdx
	movl	%r12d, %edi
	call	write
	incq	%rax
	je	.L214
	.loc 1 289 0
	movq	16(%rsp), %rdi
	call	qemu_free
	.loc 1 292 0
	movq	%r15, %rdi
	call	qemu_malloc
	.loc 1 293 0
	testq	%rax, %rax
	.loc 1 292 0
	movq	%rax, %rbx
	.loc 1 293 0
	je	.L214
	.loc 1 295 0
	xorl	%edx, %edx
	movq	%r14, %rsi
	movl	%r13d, %edi
	call	lseek64
	incq	%rax
	je	.L220
	.loc 1 297 0
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movl	%r13d, %edi
	call	read
	cmpq	%r15, %rax
	movq	%rax, %rbp
	je	.L271
.L220:
	.loc 1 310 0
	movq	%rbx, %rdi
	call	qemu_free
	.p2align 4,,2
	jmp	.L214
.L271:
	.loc 1 299 0
	xorl	%edx, %edx
	movq	%r14, %rsi
	movl	%r12d, %edi
	call	lseek64
	incq	%rax
	je	.L220
	.loc 1 301 0
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	write
	incq	%rax
	je	.L220
	.loc 1 303 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 1 305 0
	movl	%r13d, %edi
	call	close
	jmp	.L265
.LBE71:
.LBE70:
.LFE111:
	.size	vmdk_create, .-vmdk_create
	.p2align 4,,15
	.type	vmdk_close, @function
vmdk_close:
.LFB112:
	.loc 1 804 0
	pushq	%rbx
.LCFI46:
	.loc 1 805 0
	movq	56(%rdi), %rbx
	.loc 1 807 0
	movq	24(%rbx), %rdi
	call	qemu_free
	.loc 1 808 0
	movq	56(%rbx), %rdi
	call	qemu_free
	.loc 1 809 0
	movq	(%rbx), %rdi
	call	bdrv_delete
.LBB72:
	.loc 1 320 0
	movq	(%rbx), %rax
.LBB73:
	.loc 1 321 0
	movq	2640(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L275
.LBE73:
.LBE72:
	.loc 1 812 0
	popq	%rbx
	ret
	.p2align 4,,7
.L275:
	popq	%rbx
.LBB74:
.LBB75:
	.loc 1 322 0
	jmp	bdrv_close
.LBE75:
.LBE74:
.LFE112:
	.size	vmdk_close, .-vmdk_close
	.p2align 4,,15
	.type	vmdk_flush, @function
vmdk_flush:
.LFB113:
	.loc 1 815 0
	.loc 1 816 0
	movq	56(%rdi), %rax
	.loc 1 817 0
	movq	(%rax), %rdi
	jmp	bdrv_flush
.LFE113:
	.size	vmdk_flush, .-vmdk_flush
	.comm	bdrv_first,8,8
	.local	activeBDRV
	.comm	activeBDRV,16,16
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x2830
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI4-.LFB100
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI8-.LFB104
	.byte	0x86
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI8
	.byte	0xe
	.uleb128 0x2d60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI12-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x8f
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI19-.LCFI15
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI21-.LFB108
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI25-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI32-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x5070
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI40-.LFB111
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI45-.LCFI40
	.byte	0xe
	.uleb128 0x5710
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI46-.LFB112
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x2830
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI4-.LFB100
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI8-.LFB104
	.byte	0x86
	.uleb128 0x6
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI8
	.byte	0xe
	.uleb128 0x2d60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI12-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x8f
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI19-.LCFI15
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI21-.LFB108
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI25-.LFB109
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI32-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x5070
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI40-.LFB111
	.byte	0x8e
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI45-.LCFI40
	.byte	0xe
	.uleb128 0x5710
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI46-.LFB112
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE21:
	.file 4 "/usr/include/stdint.h"
	.file 5 "qemu-common.h"
	.file 6 "block_int.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "block.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "/usr/include/bits/stat.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/libio.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1ebd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF277
	.byte	0x1
	.long	.LASF278
	.long	.LASF279
	.uleb128 0x2
	.long	.LASF9
	.byte	0x9
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
	.byte	0xb
	.byte	0x86
	.long	0x38
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF12
	.byte	0xb
	.byte	0x88
	.long	0x46
	.uleb128 0x2
	.long	.LASF13
	.byte	0xb
	.byte	0x89
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0xb
	.byte	0x8b
	.long	0x46
	.uleb128 0x2
	.long	.LASF15
	.byte	0xb
	.byte	0x8c
	.long	0x38
	.uleb128 0x2
	.long	.LASF16
	.byte	0xb
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0xb
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0xb
	.byte	0x95
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF19
	.byte	0xb
	.byte	0xa4
	.long	0x53
	.uleb128 0x2
	.long	.LASF20
	.byte	0xb
	.byte	0xa9
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x7
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF22
	.byte	0x7
	.byte	0xc6
	.long	0x53
	.uleb128 0x8
	.long	0x156
	.long	.LASF26
	.byte	0x10
	.byte	0xc
	.byte	0x79
	.uleb128 0x9
	.long	.LASF23
	.byte	0xc
	.byte	0x7a
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF24
	.byte	0xc
	.byte	0x7b
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x166
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.long	0x17d
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.long	0x349
	.long	.LASF27
	.byte	0xd8
	.byte	0xd
	.byte	0x2d
	.uleb128 0xc
	.long	.LASF28
	.byte	0xe
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF29
	.byte	0xe
	.value	0x115
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF30
	.byte	0xe
	.value	0x116
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF31
	.byte	0xe
	.value	0x117
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF32
	.byte	0xe
	.value	0x118
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF33
	.byte	0xe
	.value	0x119
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF34
	.byte	0xe
	.value	0x11a
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF35
	.byte	0xe
	.value	0x11b
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF36
	.byte	0xe
	.value	0x11c
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF37
	.byte	0xe
	.value	0x11e
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF38
	.byte	0xe
	.value	0x11f
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF39
	.byte	0xe
	.value	0x120
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF40
	.byte	0xe
	.value	0x122
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF41
	.byte	0xe
	.value	0x124
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF42
	.byte	0xe
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.long	.LASF43
	.byte	0xe
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.long	.LASF44
	.byte	0xe
	.value	0x12c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF45
	.byte	0xe
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF46
	.byte	0xe
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.long	.LASF47
	.byte	0xe
	.value	0x132
	.long	0x393
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xc
	.long	.LASF48
	.byte	0xe
	.value	0x136
	.long	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.long	.LASF49
	.byte	0xe
	.value	0x13f
	.long	0xe3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.long	.LASF50
	.byte	0xe
	.value	0x148
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF51
	.byte	0xe
	.value	0x149
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.long	.LASF52
	.byte	0xe
	.value	0x14a
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.long	.LASF53
	.byte	0xe
	.value	0x14b
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.long	.LASF54
	.byte	0xe
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.long	.LASF55
	.byte	0xe
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.long	.LASF56
	.byte	0xe
	.value	0x150
	.long	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF57
	.byte	0xe
	.byte	0xb4
	.uleb128 0x8
	.long	0x387
	.long	.LASF58
	.byte	0x18
	.byte	0xe
	.byte	0xba
	.uleb128 0x9
	.long	.LASF59
	.byte	0xe
	.byte	0xbb
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xe
	.byte	0xbc
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF61
	.byte	0xe
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x350
	.uleb128 0x5
	.byte	0x8
	.long	0x17d
	.uleb128 0xa
	.long	0x3a3
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x349
	.uleb128 0xa
	.long	0x3b9
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x4
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF63
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x8
	.long	0x4b9
	.long	.LASF65
	.byte	0x90
	.byte	0xa
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF66
	.byte	0xa
	.byte	0x2d
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0xa
	.byte	0x32
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0xa
	.byte	0x3a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF69
	.byte	0xa
	.byte	0x3b
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF70
	.byte	0xa
	.byte	0x3d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF71
	.byte	0xa
	.byte	0x3e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF72
	.byte	0xa
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF73
	.byte	0xa
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF74
	.byte	0xa
	.byte	0x47
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF75
	.byte	0xa
	.byte	0x4b
	.long	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF76
	.byte	0xa
	.byte	0x4d
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF77
	.byte	0xa
	.byte	0x58
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF78
	.byte	0xa
	.byte	0x59
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF79
	.byte	0xa
	.byte	0x5a
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF80
	.byte	0xa
	.byte	0x67
	.long	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xa
	.long	0x4c9
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0xe
	.long	0x4d5
	.byte	0x1
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4db
	.uleb128 0x6
	.long	0x3b9
	.uleb128 0x2
	.long	.LASF81
	.byte	0x5
	.byte	0x6e
	.long	0x4eb
	.uleb128 0x10
	.long	0x69f
	.long	.LASF81
	.value	0xac0
	.byte	0x5
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF82
	.byte	0x6
	.byte	0x5d
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x6
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF84
	.byte	0x6
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF85
	.byte	0x6
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF86
	.byte	0x6
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x6
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF87
	.byte	0x6
	.byte	0x65
	.long	0xc4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF88
	.byte	0x6
	.byte	0x66
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x6
	.byte	0x68
	.long	0xc50
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF89
	.byte	0x6
	.byte	0x69
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF90
	.byte	0x6
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF91
	.byte	0x6
	.byte	0x6c
	.long	0xc56
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF92
	.byte	0x6
	.byte	0x6e
	.long	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x9
	.long	.LASF93
	.byte	0x6
	.byte	0x6f
	.long	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0x9
	.long	.LASF94
	.byte	0x6
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0x9
	.long	.LASF95
	.byte	0x6
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0x9
	.long	.LASF96
	.byte	0x6
	.byte	0x74
	.long	0xa10
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0x9
	.long	.LASF97
	.byte	0x6
	.byte	0x77
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0x9
	.long	.LASF98
	.byte	0x6
	.byte	0x7a
	.long	0x3cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0x9
	.long	.LASF99
	.byte	0x6
	.byte	0x7b
	.long	0x3cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0x9
	.long	.LASF100
	.byte	0x6
	.byte	0x7c
	.long	0x3cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0x9
	.long	.LASF101
	.byte	0x6
	.byte	0x7d
	.long	0x3cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.long	.LASF102
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.long	.LASF103
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.long	.LASF104
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.long	.LASF105
	.byte	0x6
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.long	.LASF106
	.byte	0x6
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.long	.LASF107
	.byte	0x6
	.byte	0x83
	.long	0x16d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.byte	0x84
	.long	0xa10
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF109
	.byte	0x8
	.byte	0x5
	.long	0x6aa
	.uleb128 0x10
	.long	0x8a6
	.long	.LASF109
	.value	0x110
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.long	.LASF110
	.byte	0x6
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF111
	.byte	0x6
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF112
	.byte	0x6
	.byte	0x24
	.long	0x9f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF113
	.byte	0x6
	.byte	0x25
	.long	0xa16
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF114
	.byte	0x6
	.byte	0x27
	.long	0xa41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF115
	.byte	0x6
	.byte	0x29
	.long	0xa66
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF116
	.byte	0x6
	.byte	0x2a
	.long	0xa78
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF117
	.byte	0x6
	.byte	0x2c
	.long	0xa9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF118
	.byte	0x6
	.byte	0x2d
	.long	0xa78
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF119
	.byte	0x6
	.byte	0x2f
	.long	0xac2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF120
	.byte	0x6
	.byte	0x30
	.long	0xadd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF121
	.byte	0x6
	.byte	0x31
	.long	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF122
	.byte	0x6
	.byte	0x35
	.long	0xb2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF123
	.byte	0x6
	.byte	0x38
	.long	0xb5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.byte	0x39
	.long	0xb6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF125
	.byte	0x6
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF126
	.byte	0x6
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF127
	.byte	0x6
	.byte	0x3e
	.long	0xa41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF128
	.byte	0x6
	.byte	0x40
	.long	0xa66
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF129
	.byte	0x6
	.byte	0x41
	.long	0xb8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF130
	.byte	0x6
	.byte	0x42
	.long	0xba0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x6
	.byte	0x44
	.long	0xa66
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF132
	.byte	0x6
	.byte	0x47
	.long	0xbc1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x6
	.byte	0x49
	.long	0xadd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF134
	.byte	0x6
	.byte	0x4a
	.long	0xadd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF135
	.byte	0x6
	.byte	0x4c
	.long	0xbe2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF136
	.byte	0x6
	.byte	0x4d
	.long	0xc03
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF137
	.byte	0x6
	.byte	0x50
	.long	0xaf3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF138
	.byte	0x6
	.byte	0x51
	.long	0xaf3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF139
	.byte	0x6
	.byte	0x52
	.long	0xc1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.long	.LASF140
	.byte	0x6
	.byte	0x53
	.long	0xc1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x6
	.byte	0x56
	.long	0xc3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF142
	.byte	0x6
	.byte	0x58
	.long	0xb22
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.byte	0x59
	.long	0xc44
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0x8
	.long	0x8cf
	.long	.LASF143
	.byte	0x10
	.byte	0x8
	.byte	0x14
	.uleb128 0x9
	.long	.LASF144
	.byte	0x8
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x8
	.byte	0x18
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF143
	.byte	0x8
	.byte	0x19
	.long	0x8a6
	.uleb128 0x10
	.long	0x941
	.long	.LASF146
	.value	0x198
	.byte	0x8
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF147
	.byte	0x8
	.byte	0x1c
	.long	0x941
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF148
	.byte	0x8
	.byte	0x1f
	.long	0x951
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF149
	.byte	0x8
	.byte	0x20
	.long	0x3c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF150
	.byte	0x8
	.byte	0x21
	.long	0x3c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x9
	.long	.LASF151
	.byte	0x8
	.byte	0x22
	.long	0x3c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF152
	.byte	0x8
	.byte	0x23
	.long	0x3cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0xa
	.long	0x951
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.long	0x961
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF146
	.byte	0x8
	.byte	0x24
	.long	0x8da
	.uleb128 0x2
	.long	.LASF153
	.byte	0x8
	.byte	0x50
	.long	0x977
	.uleb128 0x8
	.long	0x9ba
	.long	.LASF153
	.byte	0x20
	.byte	0x8
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x6
	.byte	0x88
	.long	0xa10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x6
	.byte	0x89
	.long	0xb28
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF89
	.byte	0x6
	.byte	0x8a
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.byte	0x8b
	.long	0xb22
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF154
	.byte	0x8
	.byte	0x51
	.long	0x9c5
	.uleb128 0xe
	.long	0x9d6
	.byte	0x1
	.uleb128 0xf
	.long	0xf9
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x9f0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x4d5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d6
	.uleb128 0x12
	.long	0xa10
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4e0
	.uleb128 0x5
	.byte	0x8
	.long	0x9f6
	.uleb128 0x12
	.long	0xa3b
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0xa3b
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3b9
	.uleb128 0x5
	.byte	0x8
	.long	0xa1c
	.uleb128 0x12
	.long	0xa66
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x4d5
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa47
	.uleb128 0xe
	.long	0xa78
	.byte	0x1
	.uleb128 0xf
	.long	0xa10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa6c
	.uleb128 0x12
	.long	0xa9d
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa7e
	.uleb128 0x12
	.long	0xac2
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xaa3
	.uleb128 0x12
	.long	0xadd
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xac8
	.uleb128 0x12
	.long	0xaf3
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xae3
	.uleb128 0x12
	.long	0xb22
	.byte	0x1
	.long	0xb22
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0xa3b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0xb28
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x96c
	.uleb128 0x5
	.byte	0x8
	.long	0x9ba
	.uleb128 0x5
	.byte	0x8
	.long	0xaf9
	.uleb128 0x12
	.long	0xb5d
	.byte	0x1
	.long	0xb22
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x4d5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0xb28
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb34
	.uleb128 0xe
	.long	0xb6f
	.byte	0x1
	.uleb128 0xf
	.long	0xb22
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb63
	.uleb128 0x12
	.long	0xb8a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x122
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb75
	.uleb128 0x12
	.long	0xba0
	.byte	0x1
	.long	0x122
	.uleb128 0xf
	.long	0xa10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb90
	.uleb128 0x12
	.long	0xbbb
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0xbbb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x961
	.uleb128 0x5
	.byte	0x8
	.long	0xba6
	.uleb128 0x12
	.long	0xbdc
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0xbdc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbbb
	.uleb128 0x5
	.byte	0x8
	.long	0xbc7
	.uleb128 0x12
	.long	0xbfd
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0xbfd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8cf
	.uleb128 0x5
	.byte	0x8
	.long	0xbe8
	.uleb128 0x12
	.long	0xc1e
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc09
	.uleb128 0x12
	.long	0xc3e
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa10
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc24
	.uleb128 0x5
	.byte	0x8
	.long	0x6aa
	.uleb128 0x5
	.byte	0x8
	.long	0x4c9
	.uleb128 0x5
	.byte	0x8
	.long	0x69f
	.uleb128 0xa
	.long	0xc67
	.long	0x3b9
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0xa
	.long	0xc78
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x14
	.long	0xd0d
	.byte	0x28
	.byte	0x1
	.byte	0x2b
	.uleb128 0x9
	.long	.LASF155
	.byte	0x1
	.byte	0x21
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF156
	.byte	0x1
	.byte	0x22
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF157
	.byte	0x1
	.byte	0x23
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF158
	.byte	0x1
	.byte	0x24
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF159
	.byte	0x1
	.byte	0x25
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF160
	.byte	0x1
	.byte	0x26
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF161
	.byte	0x1
	.byte	0x27
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF162
	.byte	0x1
	.byte	0x28
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF103
	.byte	0x1
	.byte	0x29
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF163
	.byte	0x1
	.byte	0x2a
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x1
	.byte	0x2b
	.long	0xc78
	.uleb128 0x14
	.long	0xdc9
	.byte	0x49
	.byte	0x1
	.byte	0x3a
	.uleb128 0x9
	.long	.LASF155
	.byte	0x1
	.byte	0x2e
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF156
	.byte	0x1
	.byte	0x2f
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF165
	.byte	0x1
	.byte	0x30
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF158
	.byte	0x1
	.byte	0x31
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF166
	.byte	0x1
	.byte	0x32
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF167
	.byte	0x1
	.byte	0x33
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF168
	.byte	0x1
	.byte	0x34
	.long	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF169
	.byte	0x1
	.byte	0x35
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF170
	.byte	0x1
	.byte	0x36
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF171
	.byte	0x1
	.byte	0x37
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF172
	.byte	0x1
	.byte	0x38
	.long	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF173
	.byte	0x1
	.byte	0x39
	.long	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x2
	.long	.LASF174
	.byte	0x1
	.byte	0x3a
	.long	0xd18
	.uleb128 0x8
	.long	0xea8
	.long	.LASF175
	.byte	0xd0
	.byte	0x1
	.byte	0x3e
	.uleb128 0x11
	.string	"hd"
	.byte	0x1
	.byte	0x3f
	.long	0xa10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF176
	.byte	0x1
	.byte	0x40
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF177
	.byte	0x1
	.byte	0x41
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF178
	.byte	0x1
	.byte	0x42
	.long	0xea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF179
	.byte	0x1
	.byte	0x43
	.long	0xea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF180
	.byte	0x1
	.byte	0x44
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF181
	.byte	0x1
	.byte	0x45
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF182
	.byte	0x1
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF183
	.byte	0x1
	.byte	0x48
	.long	0xea8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF184
	.byte	0x1
	.byte	0x49
	.long	0xeae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF185
	.byte	0x1
	.byte	0x4a
	.long	0xeae
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF186
	.byte	0x1
	.byte	0x4c
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF187
	.byte	0x1
	.byte	0x4d
	.long	0x3c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.long	.LASF188
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3c4
	.uleb128 0xa
	.long	0xebe
	.long	0x3c4
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1
	.byte	0x4f
	.long	0xdd4
	.uleb128 0x8
	.long	0xf1c
	.long	.LASF189
	.byte	0x14
	.byte	0x1
	.byte	0x51
	.uleb128 0x9
	.long	.LASF190
	.byte	0x1
	.byte	0x52
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF191
	.byte	0x1
	.byte	0x53
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF192
	.byte	0x1
	.byte	0x54
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF193
	.byte	0x1
	.byte	0x55
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF194
	.byte	0x1
	.byte	0x56
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF189
	.byte	0x1
	.byte	0x57
	.long	0xec9
	.uleb128 0x8
	.long	0xf4f
	.long	.LASF195
	.byte	0x10
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.string	"hd"
	.byte	0x1
	.byte	0x5a
	.long	0xa10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF196
	.byte	0x1
	.byte	0x5b
	.long	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF195
	.byte	0x1
	.byte	0x5c
	.long	0xf27
	.uleb128 0x15
	.long	0x1003
	.long	.LASF198
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x61
	.long	0x4d5
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF197
	.byte	0x1
	.byte	0x61
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.byte	0x61
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF201
	.byte	0x1
	.byte	0x63
	.long	0x3c4
	.uleb128 0x19
	.long	0x1003
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1a
	.long	0x1014
	.uleb128 0x19
	.long	0x101e
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1a
	.long	0x102f
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1c
	.long	0x1039
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1044
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x101e
	.long	.LASF199
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x3c4
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x3c4
	.byte	0x0
	.uleb128 0x1e
	.long	0x1051
	.long	.LASF200
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x3c4
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0x3c4
	.uleb128 0x20
	.uleb128 0x21
	.string	"__v"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.uleb128 0x21
	.string	"__x"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x10db
	.long	.LASF202
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x3c4
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0x75
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF203
	.byte	0x1
	.byte	0x75
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x77
	.long	0x10db
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF204
	.byte	0x1
	.byte	0x78
	.long	0x10e1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.string	"cid"
	.byte	0x1
	.byte	0x79
	.long	0x3c4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.long	.LASF205
	.byte	0x1
	.byte	0x7a
	.long	0x111
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.byte	0x7a
	.long	0x111
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	.LASF207
	.byte	0x1
	.byte	0x7b
	.long	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xebe
	.uleb128 0xa
	.long	0x10f2
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x27ff
	.byte	0x0
	.uleb128 0x15
	.long	0x1146
	.long	.LASF208
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	0x3f
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0xa8
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xab
	.long	0x10db
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF209
	.byte	0x1
	.byte	0xac
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	.LASF210
	.byte	0x1
	.byte	0xad
	.long	0x3c4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.long	0x13ed
	.long	.LASF211
	.byte	0x1
	.value	0x171
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x170
	.long	0xa10
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF92
	.byte	0x1
	.value	0x170
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF156
	.byte	0x1
	.value	0x170
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x172
	.long	0x10db
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	.LASF201
	.byte	0x1
	.value	0x173
	.long	0x3c4
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF180
	.byte	0x1
	.value	0x174
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x174
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x174
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF217
	.byte	0x1
	.value	0x1c6
	.quad	.L24
	.uleb128 0x2a
	.long	0x123d
	.long	0x1003
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1a
	.long	0x1014
	.uleb128 0x19
	.long	0x101e
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x1a
	.long	0x102f
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x1c
	.long	0x1039
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1044
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x138b
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x28
	.long	.LASF212
	.byte	0x1
	.value	0x18f
	.long	0xdc9
	.byte	0x4
	.byte	0x91
	.sleb128 11424
	.uleb128 0x2a
	.long	0x1278
	.long	0x13ed
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	0x1299
	.long	0x13ed
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2a
	.long	0x12ba
	.long	0x1408
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x2c
	.long	0x1419
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	0x1311
	.long	0x1423
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1a
	.long	0x1435
	.uleb128 0x1a
	.long	0x1440
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.long	0x144c
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.long	0x1456
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x1462
	.byte	0x3
	.byte	0x91
	.sleb128 1184
	.uleb128 0x1c
	.long	0x146e
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x2e
	.long	0x147a
	.quad	.L54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x1332
	.long	0x13ed
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	0x1353
	.long	0x13ed
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1d
	.long	0x1483
	.uleb128 0x1c
	.long	0x148f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	0x149d
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x2c
	.long	0x14b0
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	0x14bc
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x28
	.long	.LASF212
	.byte	0x1
	.value	0x183
	.long	0xd0d
	.byte	0x4
	.byte	0x91
	.sleb128 11504
	.uleb128 0x2a
	.long	0x13ce
	.long	0x1408
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x2c
	.long	0x1419
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0x1408
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2c
	.long	0x1419
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1408
	.long	.LASF213
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.long	0x3cf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x7d
	.long	0x3cf
	.byte	0x0
	.uleb128 0x1e
	.long	0x1423
	.long	.LASF214
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x3c4
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x3c4
	.byte	0x0
	.uleb128 0x2f
	.long	0x149d
	.long	.LASF215
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x30
	.string	"bs"
	.byte	0x1
	.value	0x146
	.long	0xa10
	.uleb128 0x31
	.long	.LASF92
	.byte	0x1
	.value	0x146
	.long	0x6f
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x148
	.long	0x10db
	.uleb128 0x33
	.long	.LASF205
	.byte	0x1
	.value	0x149
	.long	0x111
	.uleb128 0x33
	.long	.LASF204
	.byte	0x1
	.value	0x14a
	.long	0x10e1
	.uleb128 0x33
	.long	.LASF216
	.byte	0x1
	.value	0x14b
	.long	0xc67
	.uleb128 0x34
	.long	.LASF218
	.byte	0x1
	.value	0x169
	.uleb128 0x20
	.uleb128 0x33
	.long	.LASF219
	.byte	0x1
	.value	0x152
	.long	0x111
	.uleb128 0x33
	.long	.LASF220
	.byte	0x1
	.value	0x153
	.long	0x3da
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x14c9
	.byte	0x1
	.long	.LASF65
	.byte	0x3
	.value	0x1c6
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x31
	.long	.LASF221
	.byte	0x3
	.value	0x1c5
	.long	0x6f
	.uleb128 0x31
	.long	.LASF222
	.byte	0x3
	.value	0x1c5
	.long	0x14c9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3da
	.uleb128 0x24
	.long	0x166d
	.long	.LASF223
	.byte	0x1
	.value	0x205
	.byte	0x1
	.long	0x3cf
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x203
	.long	0xa10
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF224
	.byte	0x1
	.value	0x203
	.long	0x166d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF190
	.byte	0x1
	.value	0x204
	.long	0x3cf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF225
	.byte	0x1
	.value	0x204
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x206
	.long	0x10db
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF191
	.byte	0x1
	.value	0x207
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF193
	.byte	0x1
	.value	0x207
	.long	0x46
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF192
	.byte	0x1
	.value	0x207
	.long	0x46
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.long	.LASF226
	.byte	0x1
	.value	0x208
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x208
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x208
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.LASF227
	.byte	0x1
	.value	0x209
	.long	0x3c4
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.LASF228
	.byte	0x1
	.value	0x209
	.long	0xea8
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x209
	.long	0x3c4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF196
	.byte	0x1
	.value	0x20a
	.long	0x3cf
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0x231
	.quad	.L106
	.uleb128 0x2a
	.long	0x163d
	.long	0x1673
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x1a
	.long	0x1685
	.uleb128 0x1a
	.long	0x1690
	.uleb128 0x1a
	.long	0x169c
	.uleb128 0x1a
	.long	0x16a8
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0xe0
	.uleb128 0x1c
	.long	0x16b4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	0x16c0
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x16ca
	.byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x1c
	.long	0x16d7
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x1c
	.long	0x16e3
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.long	0x1701
	.byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x23
	.uleb128 0xc0
	.byte	0x94
	.byte	0x4
	.byte	0xa
	.value	0x200
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.uleb128 0x19
	.long	0x1408
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x1a
	.long	0x1419
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf1c
	.uleb128 0x2f
	.long	0x16f2
	.long	.LASF230
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x30
	.string	"bs"
	.byte	0x1
	.value	0x1d1
	.long	0xa10
	.uleb128 0x31
	.long	.LASF196
	.byte	0x1
	.value	0x1d1
	.long	0x3cf
	.uleb128 0x31
	.long	.LASF190
	.byte	0x1
	.value	0x1d2
	.long	0x3cf
	.uleb128 0x31
	.long	.LASF225
	.byte	0x1
	.value	0x1d2
	.long	0x3f
	.uleb128 0x33
	.long	.LASF231
	.byte	0x1
	.value	0x1d4
	.long	0x3cf
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1d5
	.long	0x10db
	.uleb128 0x33
	.long	.LASF232
	.byte	0x1
	.value	0x1d6
	.long	0x16f2
	.uleb128 0x20
	.uleb128 0x32
	.string	"ps"
	.byte	0x1
	.value	0x1db
	.long	0x10db
	.uleb128 0x20
	.uleb128 0x33
	.long	.LASF233
	.byte	0x1
	.value	0x1e3
	.long	0x10db
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x1701
	.long	0x3b9
	.uleb128 0x37
	.long	0x61
	.byte	0x0
	.uleb128 0x6
	.long	0x53
	.uleb128 0x24
	.long	0x1793
	.long	.LASF234
	.byte	0x1
	.value	0x25a
	.byte	0x1
	.long	0x3f
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x258
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF235
	.byte	0x1
	.value	0x258
	.long	0x122
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF236
	.byte	0x1
	.value	0x259
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF237
	.byte	0x1
	.value	0x259
	.long	0x4d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x25b
	.long	0x10db
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.long	.LASF238
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.LASF196
	.byte	0x1
	.value	0x25d
	.long	0x3cf
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x24
	.long	0x1831
	.long	.LASF239
	.byte	0x1
	.value	0x26a
	.byte	0x1
	.long	0x3f
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x268
	.long	0xa10
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF235
	.byte	0x1
	.value	0x268
	.long	0x122
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x269
	.long	0xa3b
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF236
	.byte	0x1
	.value	0x269
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x26b
	.long	0x10db
	.byte	0x1
	.byte	0x5f
	.uleb128 0x28
	.long	.LASF238
	.byte	0x1
	.value	0x26c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x26c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x26c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.LASF196
	.byte	0x1
	.value	0x26d
	.long	0x3cf
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x24
	.long	0x1965
	.long	.LASF240
	.byte	0x1
	.value	0x28d
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x28b
	.long	0xa10
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF235
	.byte	0x1
	.value	0x28b
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x28c
	.long	0x4d5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF236
	.byte	0x1
	.value	0x28c
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x28e
	.long	0x10db
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF224
	.byte	0x1
	.value	0x28f
	.long	0xf1c
	.byte	0x4
	.byte	0x91
	.sleb128 20496
	.uleb128 0x28
	.long	.LASF238
	.byte	0x1
	.value	0x290
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x290
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF196
	.byte	0x1
	.value	0x291
	.long	0x3cf
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.LASF241
	.byte	0x1
	.value	0x292
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	cid_update.0
	.uleb128 0x2a
	.long	0x1937
	.long	0x1965
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1a
	.long	0x1976
	.uleb128 0x1a
	.long	0x1980
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x1c
	.long	0x198b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x1994
	.byte	0x4
	.byte	0x91
	.sleb128 10256
	.uleb128 0x1c
	.long	0x199f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	0x19aa
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	0x19b5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x19c1
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1a
	.long	0x19d3
	.uleb128 0x1a
	.long	0x19de
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1c
	.long	0x19ea
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x19c1
	.long	.LASF242
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x1f
	.string	"bs"
	.byte	0x1
	.byte	0x91
	.long	0xa10
	.uleb128 0x1f
	.string	"cid"
	.byte	0x1
	.byte	0x91
	.long	0x3c4
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0x93
	.long	0x10db
	.uleb128 0x18
	.long	.LASF204
	.byte	0x1
	.byte	0x94
	.long	0x10e1
	.uleb128 0x18
	.long	.LASF243
	.byte	0x1
	.byte	0x94
	.long	0x10e1
	.uleb128 0x18
	.long	.LASF205
	.byte	0x1
	.byte	0x95
	.long	0x111
	.uleb128 0x18
	.long	.LASF244
	.byte	0x1
	.byte	0x95
	.long	0x111
	.byte	0x0
	.uleb128 0x2f
	.long	0x19f5
	.long	.LASF245
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x30
	.string	"bs"
	.byte	0x1
	.value	0x1f0
	.long	0xa10
	.uleb128 0x31
	.long	.LASF224
	.byte	0x1
	.value	0x1f0
	.long	0x166d
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1f2
	.long	0x10db
	.byte	0x0
	.uleb128 0x24
	.long	0x1c5a
	.long	.LASF246
	.byte	0x1
	.value	0x2bb
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF92
	.byte	0x1
	.value	0x2b9
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x26
	.long	.LASF247
	.byte	0x1
	.value	0x2b9
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.long	.LASF93
	.byte	0x1
	.value	0x2ba
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF156
	.byte	0x1
	.value	0x2ba
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.string	"fd"
	.byte	0x1
	.value	0x2bc
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x2bc
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF212
	.byte	0x1
	.value	0x2bd
	.long	0xdc9
	.byte	0x4
	.byte	0x91
	.sleb128 22144
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x28
	.long	.LASF201
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x33
	.long	.LASF248
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF250
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.uleb128 0x33
	.long	.LASF251
	.byte	0x1
	.value	0x2be
	.long	0x3c4
	.uleb128 0x33
	.long	.LASF252
	.byte	0x1
	.value	0x2bf
	.long	0x111
	.uleb128 0x28
	.long	.LASF204
	.byte	0x1
	.value	0x2d1
	.long	0xc67
	.byte	0x4
	.byte	0x91
	.sleb128 21120
	.uleb128 0x28
	.long	.LASF253
	.byte	0x1
	.value	0x2d2
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF254
	.byte	0x1
	.value	0x2d2
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	0x1bd9
	.long	0x1c5a
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x1a
	.long	0x1c6b
	.uleb128 0x1a
	.long	0x1c76
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x1c
	.long	0x1c81
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.long	0x1c8c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.long	0x1c97
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x1c
	.long	0x1ca2
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	0x1cad
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x1cb8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	0x1cc3
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	0x1cce
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.long	0x1cd9
	.byte	0x4
	.byte	0x91
	.sleb128 21040
	.uleb128 0x1d
	.long	0x1ce4
	.uleb128 0x1c
	.long	0x1cef
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1cfa
	.uleb128 0x1d
	.long	0x1d05
	.uleb128 0x1d
	.long	0x1d10
	.uleb128 0x1d
	.long	0x1d1b
	.uleb128 0x1c
	.long	0x1d26
	.byte	0x4
	.byte	0x91
	.sleb128 10800
	.uleb128 0x1c
	.long	0x1d31
	.byte	0x3
	.byte	0x91
	.sleb128 560
	.uleb128 0x1c
	.long	0x1d3c
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1d
	.long	0x1d47
	.uleb128 0x2e
	.long	0x1d52
	.quad	.L195
	.uleb128 0x2e
	.long	0x1d5a
	.quad	.L214
	.uleb128 0x2e
	.long	0x1d62
	.quad	.L220
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x1bfa
	.long	0x1d7c
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x2c
	.long	0x1d8d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x1c1b
	.long	0x13ed
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2a
	.long	0x1c3c
	.long	0x13ed
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.long	0x13ed
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x2c
	.long	0x13fe
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1d6b
	.long	.LASF255
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x38
	.long	.LASF92
	.byte	0x1
	.byte	0xba
	.long	0x6f
	.uleb128 0x38
	.long	.LASF93
	.byte	0x1
	.byte	0xba
	.long	0x6f
	.uleb128 0x18
	.long	.LASF256
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.uleb128 0x18
	.long	.LASF257
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.uleb128 0x18
	.long	.LASF258
	.byte	0x1
	.byte	0xbd
	.long	0x3c4
	.uleb128 0x18
	.long	.LASF205
	.byte	0x1
	.byte	0xbe
	.long	0x111
	.uleb128 0x18
	.long	.LASF259
	.byte	0x1
	.byte	0xbe
	.long	0x111
	.uleb128 0x18
	.long	.LASF260
	.byte	0x1
	.byte	0xbe
	.long	0x111
	.uleb128 0x18
	.long	.LASF253
	.byte	0x1
	.byte	0xbf
	.long	0x6f
	.uleb128 0x18
	.long	.LASF254
	.byte	0x1
	.byte	0xbf
	.long	0x6f
	.uleb128 0x18
	.long	.LASF212
	.byte	0x1
	.byte	0xc0
	.long	0xdc9
	.uleb128 0x18
	.long	.LASF261
	.byte	0x1
	.byte	0xc1
	.long	0x3c4
	.uleb128 0x18
	.long	.LASF249
	.byte	0x1
	.byte	0xc1
	.long	0x3c4
	.uleb128 0x18
	.long	.LASF170
	.byte	0x1
	.byte	0xc2
	.long	0x122
	.uleb128 0x18
	.long	.LASF169
	.byte	0x1
	.byte	0xc2
	.long	0x122
	.uleb128 0x18
	.long	.LASF165
	.byte	0x1
	.byte	0xc2
	.long	0x122
	.uleb128 0x18
	.long	.LASF250
	.byte	0x1
	.byte	0xc2
	.long	0x122
	.uleb128 0x18
	.long	.LASF262
	.byte	0x1
	.byte	0xc3
	.long	0x10e1
	.uleb128 0x18
	.long	.LASF263
	.byte	0x1
	.byte	0xc3
	.long	0x10e1
	.uleb128 0x21
	.string	"hdr"
	.byte	0x1
	.byte	0xc3
	.long	0x1d6b
	.uleb128 0x18
	.long	.LASF252
	.byte	0x1
	.byte	0xc4
	.long	0x111
	.uleb128 0x34
	.long	.LASF217
	.byte	0x1
	.value	0x139
	.uleb128 0x34
	.long	.LASF264
	.byte	0x1
	.value	0x137
	.uleb128 0x34
	.long	.LASF265
	.byte	0x1
	.value	0x135
	.byte	0x0
	.uleb128 0xa
	.long	0x1d7c
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x1e
	.long	0x1d97
	.long	.LASF266
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.long	0x3cf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x7d
	.long	0x3cf
	.byte	0x0
	.uleb128 0x39
	.long	0x1ded
	.long	.LASF267
	.byte	0x1
	.value	0x324
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x323
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x325
	.long	0x10db
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	0x1ded
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x2c
	.long	0x1dfb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x1e07
	.long	.LASF268
	.byte	0x1
	.value	0x140
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"bs"
	.byte	0x1
	.value	0x13f
	.long	0xa10
	.byte	0x0
	.uleb128 0x39
	.long	0x1e40
	.long	.LASF269
	.byte	0x1
	.value	0x32f
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.value	0x32e
	.long	0xa10
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x330
	.long	0x10db
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF270
	.byte	0xd
	.byte	0x91
	.long	0x38d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF271
	.byte	0xd
	.byte	0x92
	.long	0x38d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF272
	.byte	0xd
	.byte	0x93
	.long	0x38d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF273
	.byte	0x1
	.value	0x334
	.long	0x69f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_vmdk
	.uleb128 0x3d
	.long	.LASF274
	.byte	0x6
	.byte	0x94
	.long	0xa10
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
	.uleb128 0x23
	.long	.LASF275
	.byte	0x1
	.byte	0x5e
	.long	0xf4f
	.byte	0x9
	.byte	0x3
	.quad	activeBDRV
	.uleb128 0x3c
	.long	.LASF276
	.byte	0x1
	.value	0x145
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	parent_open
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x3b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1ec1
	.long	0x1e67
	.string	"bdrv_vmdk"
	.long	0x1e7e
	.string	"bdrv_first"
	.long	0x1ea9
	.string	"parent_open"
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
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"translation"
.LASF79:
	.string	"st_ctim"
.LASF9:
	.string	"size_t"
.LASF215:
	.string	"vmdk_parent_open"
.LASF75:
	.string	"st_blksize"
.LASF240:
	.string	"vmdk_write"
.LASF180:
	.string	"l1_size"
.LASF234:
	.string	"vmdk_is_allocated"
.LASF82:
	.string	"total_sectors"
.LASF21:
	.string	"int32_t"
.LASF120:
	.string	"bdrv_set_key"
.LASF151:
	.string	"date_nsec"
.LASF275:
	.string	"activeBDRV"
.LASF39:
	.string	"_IO_save_end"
.LASF253:
	.string	"real_filename"
.LASF127:
	.string	"bdrv_pread"
.LASF12:
	.string	"__gid_t"
.LASF209:
	.string	"p_bs"
.LASF102:
	.string	"cyls"
.LASF134:
	.string	"bdrv_snapshot_delete"
.LASF78:
	.string	"st_mtim"
.LASF223:
	.string	"get_cluster_offset"
.LASF32:
	.string	"_IO_write_base"
.LASF250:
	.string	"gt_size"
.LASF48:
	.string	"_lock"
.LASF185:
	.string	"l2_cache_counts"
.LASF261:
	.string	"gde_entries"
.LASF237:
	.string	"pnum"
.LASF239:
	.string	"vmdk_read"
.LASF65:
	.string	"stat"
.LASF37:
	.string	"_IO_save_base"
.LASF112:
	.string	"bdrv_probe"
.LASF263:
	.string	"s_desc"
.LASF220:
	.string	"file_buf"
.LASF233:
	.string	"act_s"
.LASF192:
	.string	"l2_index"
.LASF143:
	.string	"BlockDriverInfo"
.LASF45:
	.string	"_cur_column"
.LASF181:
	.string	"l1_entry_sectors"
.LASF128:
	.string	"bdrv_pwrite"
.LASF10:
	.string	"__dev_t"
.LASF213:
	.string	"le64_to_cpu"
.LASF55:
	.string	"_mode"
.LASF221:
	.string	"__path"
.LASF104:
	.string	"secs"
.LASF84:
	.string	"removable"
.LASF152:
	.string	"vm_clock_nsec"
.LASF232:
	.string	"whole_grain"
.LASF2:
	.string	"long int"
.LASF93:
	.string	"backing_file"
.LASF251:
	.string	"gt_count"
.LASF58:
	.string	"_IO_marker"
.LASF89:
	.string	"opaque"
.LASF191:
	.string	"l1_index"
.LASF274:
	.string	"bdrv_first"
.LASF149:
	.string	"vm_state_size"
.LASF169:
	.string	"rgd_offset"
.LASF219:
	.string	"end_name"
.LASF241:
	.string	"cid_update"
.LASF142:
	.string	"free_aiocb"
.LASF179:
	.string	"l1_backup_table"
.LASF256:
	.string	"snp_fd"
.LASF7:
	.string	"signed char"
.LASF19:
	.string	"__blksize_t"
.LASF218:
	.string	"failure"
.LASF264:
	.string	"fail_rgd"
.LASF27:
	.string	"_IO_FILE"
.LASF70:
	.string	"st_uid"
.LASF98:
	.string	"rd_bytes"
.LASF96:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF73:
	.string	"st_rdev"
.LASF138:
	.string	"bdrv_media_changed"
.LASF226:
	.string	"min_index"
.LASF81:
	.string	"BlockDriverState"
.LASF129:
	.string	"bdrv_truncate"
.LASF164:
	.string	"VMDK3Header"
.LASF170:
	.string	"gd_offset"
.LASF95:
	.string	"media_changed"
.LASF227:
	.string	"min_count"
.LASF5:
	.string	"char"
.LASF117:
	.string	"bdrv_create"
.LASF126:
	.string	"protocol_name"
.LASF165:
	.string	"capacity"
.LASF57:
	.string	"_IO_lock_t"
.LASF124:
	.string	"bdrv_aio_cancel"
.LASF163:
	.string	"sectors_per_track"
.LASF183:
	.string	"l2_cache"
.LASF92:
	.string	"filename"
.LASF228:
	.string	"l2_table"
.LASF276:
	.string	"parent_open"
.LASF14:
	.string	"__mode_t"
.LASF156:
	.string	"flags"
.LASF133:
	.string	"bdrv_snapshot_goto"
.LASF29:
	.string	"_IO_read_ptr"
.LASF116:
	.string	"bdrv_close"
.LASF61:
	.string	"_pos"
.LASF270:
	.string	"stdin"
.LASF271:
	.string	"stdout"
.LASF186:
	.string	"cluster_sectors"
.LASF40:
	.string	"_markers"
.LASF101:
	.string	"wr_ops"
.LASF177:
	.string	"l1_backup_table_offset"
.LASF67:
	.string	"st_ino"
.LASF107:
	.string	"device_name"
.LASF103:
	.string	"heads"
.LASF49:
	.string	"_offset"
.LASF118:
	.string	"bdrv_flush"
.LASF71:
	.string	"st_gid"
.LASF115:
	.string	"bdrv_write"
.LASF198:
	.string	"vmdk_probe"
.LASF140:
	.string	"bdrv_set_locked"
.LASF260:
	.string	"rgd_buf"
.LASF154:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF197:
	.string	"buf_size"
.LASF43:
	.string	"_flags2"
.LASF266:
	.string	"cpu_to_le64"
.LASF74:
	.string	"st_size"
.LASF225:
	.string	"allocate"
.LASF31:
	.string	"_IO_read_base"
.LASF56:
	.string	"_unused2"
.LASF246:
	.string	"vmdk_create"
.LASF26:
	.string	"timespec"
.LASF91:
	.string	"boot_sector_data"
.LASF212:
	.string	"header"
.LASF193:
	.string	"l2_offset"
.LASF168:
	.string	"num_gtes_per_gte"
.LASF210:
	.string	"cur_pcid"
.LASF111:
	.string	"instance_size"
.LASF257:
	.string	"p_fd"
.LASF145:
	.string	"vm_state_offset"
.LASF44:
	.string	"_old_offset"
.LASF20:
	.string	"__blkcnt_t"
.LASF202:
	.string	"vmdk_read_cid"
.LASF199:
	.string	"be32_to_cpu"
.LASF229:
	.string	"found"
.LASF13:
	.string	"__ino_t"
.LASF86:
	.string	"encrypted"
.LASF157:
	.string	"disk_sectors"
.LASF3:
	.string	"long long int"
.LASF171:
	.string	"grain_offset"
.LASF167:
	.string	"desc_size"
.LASF166:
	.string	"desc_offset"
.LASF255:
	.string	"vmdk_snapshot_create"
.LASF235:
	.string	"sector_num"
.LASF34:
	.string	"_IO_write_end"
.LASF160:
	.string	"l1dir_size"
.LASF203:
	.string	"parent"
.LASF83:
	.string	"read_only"
.LASF121:
	.string	"bdrv_make_empty"
.LASF268:
	.string	"vmdk_parent_close"
.LASF231:
	.string	"parent_cluster_offset"
.LASF158:
	.string	"granularity"
.LASF35:
	.string	"_IO_buf_base"
.LASF242:
	.string	"vmdk_write_cid"
.LASF247:
	.string	"total_size"
.LASF59:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF131:
	.string	"bdrv_write_compressed"
.LASF130:
	.string	"bdrv_getlength"
.LASF277:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF114:
	.string	"bdrv_read"
.LASF88:
	.string	"change_opaque"
.LASF259:
	.string	"gd_buf"
.LASF100:
	.string	"rd_ops"
.LASF72:
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
.LASF252:
	.string	"desc_template"
.LASF60:
	.string	"_sbuf"
.LASF136:
	.string	"bdrv_get_info"
.LASF187:
	.string	"parent_cid"
.LASF135:
	.string	"bdrv_snapshot_list"
.LASF28:
	.string	"_flags"
.LASF248:
	.string	"grains"
.LASF190:
	.string	"offset"
.LASF211:
	.string	"vmdk_open"
.LASF172:
	.string	"filler"
.LASF244:
	.string	"tmp_str"
.LASF196:
	.string	"cluster_offset"
.LASF265:
	.string	"fail_gd"
.LASF68:
	.string	"st_nlink"
.LASF106:
	.string	"type"
.LASF80:
	.string	"__unused"
.LASF273:
	.string	"bdrv_vmdk"
.LASF207:
	.string	"cid_str_size"
.LASF108:
	.string	"next"
.LASF182:
	.string	"l2_size"
.LASF258:
	.string	"p_cid"
.LASF173:
	.string	"check_bytes"
.LASF99:
	.string	"wr_bytes"
.LASF245:
	.string	"vmdk_L2update"
.LASF66:
	.string	"st_dev"
.LASF206:
	.string	"cid_str"
.LASF174:
	.string	"VMDK4Header"
.LASF119:
	.string	"bdrv_is_allocated"
.LASF162:
	.string	"cylinders"
.LASF25:
	.string	"long long unsigned int"
.LASF62:
	.string	"uint8_t"
.LASF269:
	.string	"vmdk_flush"
.LASF16:
	.string	"__off_t"
.LASF200:
	.string	"bswap32"
.LASF41:
	.string	"_chain"
.LASF189:
	.string	"VmdkMetaData"
.LASF113:
	.string	"bdrv_open"
.LASF238:
	.string	"index_in_cluster"
.LASF87:
	.string	"change_cb"
.LASF18:
	.string	"__time_t"
.LASF161:
	.string	"file_sectors"
.LASF137:
	.string	"bdrv_is_inserted"
.LASF278:
	.string	"block-vmdk.c"
.LASF155:
	.string	"version"
.LASF38:
	.string	"_IO_backup_base"
.LASF47:
	.string	"_shortbuf"
.LASF204:
	.string	"desc"
.LASF176:
	.string	"l1_table_offset"
.LASF195:
	.string	"ActiveBDRVState"
.LASF146:
	.string	"QEMUSnapshotInfo"
.LASF17:
	.string	"__off64_t"
.LASF125:
	.string	"aiocb_size"
.LASF147:
	.string	"id_str"
.LASF279:
	.string	"/home/remco/Projects/Argos/src"
.LASF201:
	.string	"magic"
.LASF139:
	.string	"bdrv_eject"
.LASF36:
	.string	"_IO_buf_end"
.LASF148:
	.string	"name"
.LASF122:
	.string	"bdrv_aio_read"
.LASF90:
	.string	"boot_sector_enabled"
.LASF243:
	.string	"tmp_desc"
.LASF188:
	.string	"is_parent"
.LASF272:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF97:
	.string	"sync_aiocb"
.LASF64:
	.string	"uint64_t"
.LASF24:
	.string	"tv_nsec"
.LASF46:
	.string	"_vtable_offset"
.LASF141:
	.string	"bdrv_ioctl"
.LASF236:
	.string	"nb_sectors"
.LASF254:
	.string	"temp_str"
.LASF175:
	.string	"BDRVVmdkState"
.LASF123:
	.string	"bdrv_aio_write"
.LASF194:
	.string	"valid"
.LASF214:
	.string	"le32_to_cpu"
.LASF69:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF30:
	.string	"_IO_read_end"
.LASF109:
	.string	"BlockDriver"
.LASF249:
	.string	"gd_size"
.LASF132:
	.string	"bdrv_snapshot_create"
.LASF76:
	.string	"st_blocks"
.LASF150:
	.string	"date_sec"
.LASF63:
	.string	"uint32_t"
.LASF85:
	.string	"locked"
.LASF42:
	.string	"_fileno"
.LASF230:
	.string	"get_whole_cluster"
.LASF159:
	.string	"l1dir_offset"
.LASF94:
	.string	"is_temporary"
.LASF262:
	.string	"p_desc"
.LASF110:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF144:
	.string	"cluster_size"
.LASF216:
	.string	"parent_img_name"
.LASF217:
	.string	"fail"
.LASF153:
	.string	"BlockDriverAIOCB"
.LASF33:
	.string	"_IO_write_ptr"
.LASF267:
	.string	"vmdk_close"
.LASF22:
	.string	"int64_t"
.LASF222:
	.string	"__statbuf"
.LASF15:
	.string	"__nlink_t"
.LASF205:
	.string	"p_name"
.LASF178:
	.string	"l1_table"
.LASF184:
	.string	"l2_cache_offsets"
.LASF224:
	.string	"m_data"
.LASF23:
	.string	"tv_sec"
.LASF208:
	.string	"vmdk_is_cid_valid"
.LASF77:
	.string	"st_atim"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
