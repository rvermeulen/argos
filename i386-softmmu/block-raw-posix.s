	.file	"block-raw-posix.c"
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
	.string	"host_device"
.globl bdrv_host_device
	.data
	.align 32
	.type	bdrv_host_device, @object
	.size	bdrv_host_device, 272
bdrv_host_device:
	.quad	.LC0
	.long	40
	.zero	4
	.quad	0
	.quad	hdev_open
	.quad	0
	.quad	0
	.quad	raw_close
	.quad	0
	.quad	raw_flush
	.zero	24
	.quad	raw_aio_read
	.quad	raw_aio_write
	.quad	raw_aio_cancel
	.long	208
	.zero	12
	.quad	raw_pread
	.quad	raw_pwrite
	.zero	8
	.quad	raw_getlength
	.zero	48
	.quad	raw_is_inserted
	.quad	raw_media_changed
	.quad	raw_eject
	.quad	raw_set_locked
	.quad	raw_ioctl
	.zero	16
	.section	.rodata.str1.1
.LC1:
	.string	"raw"
.LC2:
	.string	"file"
.globl bdrv_raw
	.data
	.align 32
	.type	bdrv_raw, @object
	.size	bdrv_raw, 272
bdrv_raw:
	.quad	.LC1
	.long	40
	.zero	4
	.quad	0
	.quad	raw_open
	.quad	0
	.quad	0
	.quad	raw_close
	.quad	raw_create
	.quad	raw_flush
	.zero	24
	.quad	raw_aio_read
	.quad	raw_aio_write
	.quad	raw_aio_cancel
	.long	208
	.zero	4
	.quad	.LC2
	.quad	raw_pread
	.quad	raw_pwrite
	.quad	raw_truncate
	.quad	raw_getlength
	.zero	104
	.align 4
	.type	aio_sig_num, @object
	.size	aio_sig_num, 4
aio_sig_num:
	.long	12
	.local	aio_initialized
	.comm	aio_initialized,4,4
	.text
	.p2align 4,,15
	.type	raw_open, @function
raw_open:
.LFB261:
	.file 1 "/home/remco/Projects/Argos/src/block-raw-posix.c"
	.loc 1 94 0
	pushq	%rbx
.LCFI0:
	.loc 1 101 0
	movl	%edx, %eax
	.loc 1 95 0
	movq	56(%rdi), %rbx
	.loc 1 101 0
	andl	$3, %eax
	.loc 1 94 0
	movq	%rsi, %rcx
	.loc 1 100 0
	xorl	%esi, %esi
	.loc 1 101 0
	cmpl	$2, %eax
	.loc 1 98 0
	movl	$0, 8(%rbx)
	.loc 1 101 0
	je	.L9
	.loc 1 105 0
	movl	$1, 8(%rdi)
.L3:
	.loc 1 108 0
	movl	%esi, %eax
	.loc 1 114 0
	movl	$0, 4(%rbx)
	.loc 1 116 0
	movq	%rcx, %rdi
	.loc 1 108 0
	orl	$576, %eax
	testb	$4, %dl
	cmovne	%eax, %esi
	.loc 1 111 0
	movl	%esi, %eax
	orb	$64, %ah
	andl	$32, %edx
	.loc 1 116 0
	movl	$420, %edx
	.loc 1 111 0
	cmovne	%eax, %esi
	.loc 1 116 0
	xorl	%eax, %eax
	call	open64
	.loc 1 117 0
	testl	%eax, %eax
	js	.L10
	.loc 1 123 0
	movl	%eax, (%rbx)
	.loc 1 124 0
	xorl	%edx, %edx
	.loc 1 125 0
	popq	%rbx
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L9:
	.loc 1 102 0
	movb	$2, %sil
	jmp	.L3
	.p2align 4,,7
.L10:
	.loc 1 118 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 120 0
	movl	$-13, %edx
	.loc 1 125 0
	popq	%rbx
	.loc 1 118 0
	negl	%eax
	.loc 1 120 0
	cmpl	$-30, %eax
	cmovne	%eax, %edx
	.loc 1 125 0
	movl	%edx, %eax
	ret
.LFE261:
	.size	raw_open, .-raw_open
	.p2align 4,,15
	.type	aio_signal_handler, @function
aio_signal_handler:
.LFB264:
	.loc 1 247 0
	.loc 1 249 0
	movq	cpu_single_env(%rip), %rdi
	.loc 1 250 0
	testq	%rdi, %rdi
	je	.L11
	.loc 1 252 0
	movl	$1, %esi
	jmp	cpu_interrupt
	.p2align 4,,7
.L11:
	rep ; ret
.LFE264:
	.size	aio_signal_handler, .-aio_signal_handler
	.p2align 4,,15
.globl qemu_aio_init
	.type	qemu_aio_init, @function
qemu_aio_init:
.LFB265:
	.loc 1 263 0
	pushq	%rbx
.LCFI1:
	subq	$192, %rsp
.LCFI2:
	.loc 1 266 0
	movl	$1, aio_initialized(%rip)
	.loc 1 268 0
	leaq	32(%rsp), %rbx
	leaq	8(%rbx), %rdi
	call	sigfillset
	.loc 1 271 0
	movl	aio_sig_num(%rip), %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	.loc 1 269 0
	movl	$0, 168(%rsp)
	.loc 1 270 0
	movq	$aio_signal_handler, 32(%rsp)
	.loc 1 271 0
	call	sigaction
.LBB2:
	.loc 1 278 0
	cld
	movq	%rsp, %rdi
	xorl	%eax, %eax
	movl	$4, %ecx
	rep
	stosq
	.loc 1 282 0
	movq	%rsp, %rdi
	.loc 1 279 0
	movl	$1, (%rsp)
	.loc 1 280 0
	movl	$1, 4(%rsp)
	.loc 1 281 0
	movl	$36500000, 24(%rsp)
	.loc 1 282 0
	call	aio_init
.LBE2:
	addq	$192, %rsp
	popq	%rbx
	ret
.LFE265:
	.size	qemu_aio_init, .-qemu_aio_init
	.p2align 4,,15
.globl qemu_aio_poll
	.type	qemu_aio_poll, @function
qemu_aio_poll:
.LFB266:
	.loc 1 288 0
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
.L15:
	.loc 1 293 0
	movl	$first_aio, %r12d
.L32:
	.loc 1 295 0
	movq	(%r12), %rbx
	.loc 1 296 0
	testq	%rbx, %rbx
	je	.L20
	.p2align 4,,7
.L35:
	.loc 1 298 0
	leaq	32(%rbx), %rbp
	movq	%rbp, %rdi
	call	aio_error64
	.loc 1 299 0
	cmpl	$125, %eax
	.loc 1 298 0
	movl	%eax, %edx
	.loc 1 299 0
	je	.L33
	.loc 1 303 0
	cmpl	$115, %eax
	jne	.L34
	.loc 1 321 0
	leaq	200(%rbx), %r12
	.loc 1 295 0
	movq	(%r12), %rbx
	.loc 1 296 0
	testq	%rbx, %rbx
	jne	.L35
.L20:
	.loc 1 292 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L33:
	.loc 1 301 0
	movq	200(%rbx), %rax
	.loc 1 302 0
	movq	%rbx, %rdi
	.loc 1 301 0
	movq	%rax, (%r12)
	.loc 1 302 0
	call	qemu_aio_release
	jmp	.L32
.L34:
	.loc 1 305 0
	testl	%eax, %eax
	je	.L36
	.loc 1 312 0
	negl	%edx
.L27:
	.loc 1 315 0
	movq	200(%rbx), %rax
	.loc 1 317 0
	movl	%edx, %esi
	.loc 1 315 0
	movq	%rax, (%r12)
	.loc 1 317 0
	movq	16(%rbx), %rdi
	call	*8(%rbx)
	.loc 1 318 0
	movq	%rbx, %rdi
	call	qemu_aio_release
	jmp	.L15
.L36:
	.loc 1 306 0
	movq	%rbp, %rdi
	call	aio_return64
	.loc 1 308 0
	xorl	%edx, %edx
	.loc 1 307 0
	cltq
	.loc 1 308 0
	cmpq	56(%rbx), %rax
	movl	$-22, %eax
	cmovne	%eax, %edx
	jmp	.L27
.LFE266:
	.size	qemu_aio_poll, .-qemu_aio_poll
	.p2align 4,,15
.globl qemu_aio_wait_end
	.type	qemu_aio_wait_end, @function
qemu_aio_wait_end:
.LFB270:
	.loc 1 369 0
	.loc 1 370 0
	xorl	%edx, %edx
	movl	$wait_oset, %esi
	movl	$2, %edi
	jmp	sigprocmask
.LFE270:
	.size	qemu_aio_wait_end, .-qemu_aio_wait_end
	.p2align 4,,15
.globl qemu_aio_wait_start
	.type	qemu_aio_wait_start, @function
qemu_aio_wait_start:
.LFB268:
	.loc 1 343 0
	pushq	%rbx
.LCFI6:
	addq	$-128, %rsp
.LCFI7:
	.loc 1 346 0
	movl	aio_initialized(%rip), %eax
	testl	%eax, %eax
	je	.L40
.L39:
	.loc 1 348 0
	movq	%rsp, %rdi
	call	sigemptyset
	.loc 1 349 0
	movl	aio_sig_num(%rip), %esi
	movq	%rsp, %rdi
	call	sigaddset
	.loc 1 350 0
	movq	%rsp, %rsi
	movl	$wait_oset, %edx
	xorl	%edi, %edi
	call	sigprocmask
	subq	$-128, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L40:
	.loc 1 347 0
	call	qemu_aio_init
	.p2align 4,,6
	jmp	.L39
.LFE268:
	.size	qemu_aio_wait_start, .-qemu_aio_wait_start
	.p2align 4,,15
.globl qemu_aio_wait
	.type	qemu_aio_wait, @function
qemu_aio_wait:
.LFB269:
	.loc 1 354 0
	pushq	%rbx
.LCFI8:
	subq	$144, %rsp
.LCFI9:
	.loc 1 359 0
	call	qemu_bh_poll
	testl	%eax, %eax
	je	.L43
	.loc 1 366 0
	addq	$144, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L43:
	.loc 1 362 0
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	call	sigemptyset
	.loc 1 363 0
	movl	aio_sig_num(%rip), %esi
	movq	%rbx, %rdi
	call	sigaddset
	.loc 1 364 0
	leaq	12(%rsp), %rsi
	movq	%rbx, %rdi
	call	sigwait
	.loc 1 365 0
	call	qemu_aio_poll
	.loc 1 366 0
	addq	$144, %rsp
	popq	%rbx
	ret
.LFE269:
	.size	qemu_aio_wait, .-qemu_aio_wait
	.p2align 4,,15
.globl qemu_aio_flush
	.type	qemu_aio_flush, @function
qemu_aio_flush:
.LFB267:
	.loc 1 330 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 331 0
	call	qemu_aio_wait_start
	.loc 1 332 0
	call	qemu_aio_poll
	.loc 1 334 0
	cmpq	$0, first_aio(%rip)
	je	.L49
	.p2align 4,,7
.L51:
	call	qemu_aio_wait
	cmpq	$0, first_aio(%rip)
	jne	.L51
.L49:
	.loc 1 336 0
	addq	$8, %rsp
	jmp	qemu_aio_wait_end
.LFE267:
	.size	qemu_aio_flush, .-qemu_aio_flush
	.p2align 4,,15
	.type	raw_aio_cancel, @function
raw_aio_cancel:
.LFB274:
	.loc 1 433 0
	pushq	%rbp
.LCFI11:
	.loc 1 438 0
	leaq	32(%rdi), %rbp
	.loc 1 433 0
	pushq	%rbx
.LCFI12:
	movq	%rdi, %rbx
	.loc 1 438 0
	movq	%rbp, %rsi
	.loc 1 433 0
	subq	$8, %rsp
.LCFI13:
	.loc 1 438 0
	movl	32(%rdi), %edi
	call	aio_cancel64
	.loc 1 439 0
	decl	%eax
	je	.L54
.L53:
	leaq	200(%rbx), %rcx
	.loc 1 446 0
	movl	$first_aio, %edx
	jmp	.L56
	.p2align 4,,7
.L63:
	.loc 1 450 0
	cmpq	%rbx, %rax
	je	.L62
	.loc 1 447 0
	movq	%rcx, %rdx
.L56:
	.loc 1 448 0
	movq	(%rdx), %rax
	testq	%rax, %rax
	jne	.L63
	.loc 1 447 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L54:
	.loc 1 442 0
	movq	%rbp, %rdi
	call	aio_error64
	cmpl	$115, %eax
	jne	.L53
	movq	%rbp, %rdi
	call	aio_error64
	cmpl	$115, %eax
	.p2align 4,,2
	je	.L54
	.p2align 4,,4
	jmp	.L53
.L62:
	.loc 1 451 0
	movq	200(%rbx), %rax
	.loc 1 452 0
	movq	%rbx, %rdi
	.loc 1 451 0
	movq	%rax, (%rdx)
	.loc 1 447 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 452 0
	jmp	qemu_aio_release
.LFE274:
	.size	raw_aio_cancel, .-raw_aio_cancel
	.p2align 4,,15
	.type	raw_close, @function
raw_close:
.LFB275:
	.loc 1 460 0
	pushq	%rbx
.LCFI14:
	.loc 1 461 0
	movq	56(%rdi), %rbx
	.loc 1 462 0
	movl	(%rbx), %edi
	testl	%edi, %edi
	js	.L64
	.loc 1 463 0
	call	close
	.loc 1 464 0
	movl	$-1, (%rbx)
.L64:
	.loc 1 466 0
	popq	%rbx
	ret
.LFE275:
	.size	raw_close, .-raw_close
	.p2align 4,,15
	.type	raw_truncate, @function
raw_truncate:
.LFB276:
	.loc 1 469 0
	subq	$8, %rsp
.LCFI15:
	.loc 1 470 0
	movq	56(%rdi), %rax
	.loc 1 472 0
	movl	$-95, %edx
	.loc 1 471 0
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L66
	.loc 1 473 0
	movl	(%rax), %edi
	call	ftruncate64
	.loc 1 475 0
	xorl	%edx, %edx
	.loc 1 473 0
	testl	%eax, %eax
	js	.L69
.L66:
	.loc 1 476 0
	movl	%edx, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L69:
	.loc 1 474 0
	call	__errno_location
	movl	(%rax), %edx
	.loc 1 476 0
	addq	$8, %rsp
	.loc 1 474 0
	negl	%edx
	.loc 1 476 0
	movl	%edx, %eax
	ret
.LFE276:
	.size	raw_truncate, .-raw_truncate
	.p2align 4,,15
	.type	raw_create, @function
raw_create:
.LFB278:
	.loc 1 527 0
	pushq	%rbp
.LCFI16:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI17:
	subq	$8, %rsp
.LCFI18:
	.loc 1 530 0
	testl	%ecx, %ecx
	setne	%cl
	testq	%rdx, %rdx
	.loc 1 531 0
	movl	$-95, %edx
	.loc 1 530 0
	setne	%al
	orl	%ecx, %eax
	testb	$1, %al
	jne	.L70
	.loc 1 533 0
	movl	$420, %edx
	xorl	%eax, %eax
	movl	$577, %esi
	call	open64
	.loc 1 535 0
	testl	%eax, %eax
	.loc 1 533 0
	movl	%eax, %ebx
	.loc 1 536 0
	movl	$-5, %edx
	.loc 1 535 0
	js	.L70
	.loc 1 537 0
	salq	$9, %rbp
	movl	%eax, %edi
	movq	%rbp, %rsi
	call	ftruncate64
	.loc 1 538 0
	movl	%ebx, %edi
	call	close
	.loc 1 539 0
	xorl	%edx, %edx
.L70:
	.loc 1 540 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
.LFE278:
	.size	raw_create, .-raw_create
	.p2align 4,,15
	.type	raw_flush, @function
raw_flush:
.LFB279:
	.loc 1 543 0
	.loc 1 544 0
	movq	56(%rdi), %rax
	.loc 1 545 0
	movl	(%rax), %edi
	jmp	fsync
.LFE279:
	.size	raw_flush, .-raw_flush
	.section	.rodata.str1.1
.LC3:
	.string	"/dev/cd"
.LC4:
	.string	"/dev/fd"
.LC5:
	.string	"/dev/sg"
	.text
	.p2align 4,,15
	.type	hdev_open, @function
hdev_open:
.LFB280:
	.loc 1 632 0
	.loc 1 663 0
	movl	%edx, %eax
	.loc 1 632 0
	movq	%rbp, -24(%rsp)
.LCFI19:
	movq	%r12, -16(%rsp)
.LCFI20:
	.loc 1 663 0
	andl	$3, %eax
	.loc 1 632 0
	movq	%r13, -8(%rsp)
.LCFI21:
	movq	%rbx, -32(%rsp)
.LCFI22:
	.loc 1 662 0
	xorl	%ebp, %ebp
	.loc 1 632 0
	subq	$40, %rsp
.LCFI23:
	.loc 1 663 0
	cmpl	$2, %eax
	.loc 1 632 0
	movq	%rdi, %r12
	movq	%rsi, %r13
	.loc 1 633 0
	movq	56(%rdi), %rbx
	.loc 1 663 0
	je	.L86
	.loc 1 667 0
	movl	$1, 8(%rdi)
.L76:
	.loc 1 671 0
	movl	%ebp, %eax
	.loc 1 674 0
	movl	$0, 4(%rbx)
	.loc 1 676 0
	movl	$.LC3, %esi
	.loc 1 671 0
	orb	$64, %ah
	andl	$32, %edx
	.loc 1 676 0
	movq	%r13, %rdi
	.loc 1 671 0
	cmovne	%eax, %ebp
	.loc 1 676 0
	xorl	%edx, %edx
	call	strstart
	testl	%eax, %eax
	je	.L78
	.loc 1 678 0
	orl	$2048, %ebp
	.loc 1 679 0
	movl	$1, 4(%rbx)
.L79:
	.loc 1 689 0
	xorl	%eax, %eax
	movl	$420, %edx
	movl	%ebp, %esi
	movq	%r13, %rdi
	call	open64
	.loc 1 690 0
	testl	%eax, %eax
	js	.L87
.L83:
	.loc 1 699 0
	cmpl	$2, 4(%rbx)
	.loc 1 696 0
	movl	%eax, (%rbx)
	.loc 1 699 0
	je	.L88
.L85:
	.loc 1 706 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 705 0
	xorl	%edx, %edx
	.loc 1 706 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movl	%edx, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L78:
	.loc 1 680 0
	xorl	%edx, %edx
	movl	$.LC4, %esi
	movq	%r13, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L80
	.loc 1 682 0
	movl	%ebp, 12(%rbx)
	.loc 1 684 0
	orl	$2048, %ebp
	.loc 1 689 0
	xorl	%eax, %eax
	.loc 1 681 0
	movl	$2, 4(%rbx)
	.loc 1 689 0
	movl	$420, %edx
	movl	%ebp, %esi
	movq	%r13, %rdi
	call	open64
	.loc 1 690 0
	testl	%eax, %eax
	jns	.L83
	.p2align 4,,7
.L87:
	.loc 1 691 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 693 0
	movl	$-13, %edx
	.loc 1 706 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	.loc 1 691 0
	negl	%eax
	.loc 1 693 0
	cmpl	$-30, %eax
	cmovne	%eax, %edx
	.loc 1 706 0
	addq	$40, %rsp
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L86:
	.loc 1 664 0
	movb	$2, %bpl
	jmp	.L76
	.p2align 4,,7
.L88:
	.loc 1 700 0
	movl	%eax, %edi
	call	close
	.loc 1 701 0
	movl	$-1, (%rbx)
	.loc 1 702 0
	movl	$1, 36(%rbx)
	jmp	.L85
.L80:
	.loc 1 685 0
	xorl	%edx, %edx
	movl	$.LC5, %esi
	movq	%r13, %rdi
	call	strstart
	testl	%eax, %eax
	je	.L79
	.loc 1 686 0
	movl	$1, 24(%r12)
	jmp	.L79
.LFE280:
	.size	hdev_open, .-hdev_open
	.p2align 4,,15
	.type	fd_open, @function
fd_open:
.LFB281:
	.loc 1 714 0
	movq	%rbp, -16(%rsp)
.LCFI24:
	movq	%rbx, -24(%rsp)
.LCFI25:
	.loc 1 719 0
	xorl	%edx, %edx
	.loc 1 714 0
	movq	%r12, -8(%rsp)
.LCFI26:
	subq	$24, %rsp
.LCFI27:
	.loc 1 715 0
	movq	56(%rdi), %rbx
	.loc 1 714 0
	movq	%rdi, %rbp
	.loc 1 718 0
	cmpl	$2, 4(%rbx)
	je	.L99
.L89:
	.loc 1 757 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L99:
	.loc 1 720 0
	movl	(%rbx), %eax
	movl	%eax, %r12d
	notl	%r12d
	shrl	$31, %r12d
	.loc 1 721 0
	testl	%eax, %eax
	js	.L98
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	subq	16(%rbx), %rax
	cmpq	$999, %rax
	jg	.L100
	.loc 1 729 0
	movl	(%rbx), %edi
	testl	%edi, %edi
	js	.L98
.L92:
	.loc 1 752 0
	testl	%r12d, %r12d
	jne	.L96
	.loc 1 753 0
	movl	$1, 36(%rbx)
.L96:
	.loc 1 754 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 755 0
	movl	$0, 32(%rbx)
	.loc 1 754 0
	movq	%rax, 16(%rbx)
	.loc 1 756 0
	xorl	%edx, %edx
	.loc 1 757 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L100:
	.loc 1 723 0
	movl	(%rbx), %edi
	call	close
	.loc 1 724 0
	movl	$-1, (%rbx)
	.p2align 4,,7
.L98:
	.loc 1 730 0
	movl	32(%rbx), %esi
	testl	%esi, %esi
	je	.L93
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	subq	24(%rbx), %rax
	.loc 1 735 0
	movl	$-5, %edx
	.loc 1 730 0
	cmpq	$999, %rax
	jle	.L89
.L93:
	.loc 1 737 0
	movl	12(%rbx), %esi
	leaq	580(%rbp), %rdi
	xorl	%eax, %eax
	call	open64
	.loc 1 738 0
	testl	%eax, %eax
	.loc 1 737 0
	movl	%eax, (%rbx)
	.loc 1 738 0
	jns	.L92
	.loc 1 739 0
	movq	rt_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 741 0
	testl	%r12d, %r12d
	.loc 1 739 0
	movq	%rax, 24(%rbx)
	.loc 1 740 0
	movl	$1, 32(%rbx)
	.loc 1 741 0
	je	.L95
	.loc 1 742 0
	movl	$1, 36(%rbx)
.L95:
	.loc 1 746 0
	movl	$-5, %edx
	jmp	.L89
.LFE281:
	.size	fd_open, .-fd_open
	.p2align 4,,15
	.type	raw_getlength, @function
raw_getlength:
.LFB277:
	.loc 1 479 0
	pushq	%rbx
.LCFI28:
	.loc 1 480 0
	movq	56(%rdi), %rax
	.loc 1 481 0
	movl	(%rax), %ebx
	.loc 1 492 0
	call	fd_open
	.loc 1 493 0
	testl	%eax, %eax
	js	.L103
	.loc 1 520 0
	movl	%ebx, %edi
	movl	$2, %edx
	xorl	%esi, %esi
	.loc 1 523 0
	popq	%rbx
	.loc 1 520 0
	jmp	lseek64
	.p2align 4,,7
.L103:
	.loc 1 523 0
	popq	%rbx
	.loc 1 494 0
	cltq
	.loc 1 523 0
	ret
.LFE277:
	.size	raw_getlength, .-raw_getlength
	.p2align 4,,15
	.type	raw_pwrite, @function
raw_pwrite:
.LFB263:
	.loc 1 199 0
	movq	%rbp, -24(%rsp)
.LCFI29:
	movq	%r12, -16(%rsp)
.LCFI30:
	movq	%rsi, %rbp
	movq	%r13, -8(%rsp)
.LCFI31:
	movq	%rbx, -32(%rsp)
.LCFI32:
	subq	$40, %rsp
.LCFI33:
	.loc 1 199 0
	movq	%rdx, %r13
	movl	%ecx, %r12d
	.loc 1 200 0
	movq	56(%rdi), %rbx
	.loc 1 203 0
	call	fd_open
	.loc 1 204 0
	testl	%eax, %eax
	js	.L104
	.loc 1 207 0
	testq	%rbp, %rbp
	js	.L106
	movl	(%rbx), %edi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	lseek64
	cmpq	$-1, %rax
	je	.L110
.L106:
	.loc 1 219 0
	movl	(%rbx), %edi
	.loc 1 217 0
	movl	$0, 8(%rbx)
	.loc 1 219 0
	movslq	%r12d,%rdx
	movq	%r13, %rsi
	call	write
.L109:
.L104:
	.loc 1 231 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L110:
	.loc 1 208 0
	incl	8(%rbx)
	jmp	.L104
.LFE263:
	.size	raw_pwrite, .-raw_pwrite
	.p2align 4,,15
	.type	raw_pread, @function
raw_pread:
.LFB262:
	.loc 1 146 0
	movq	%rbx, -48(%rsp)
.LCFI34:
	movq	%r12, -32(%rsp)
.LCFI35:
	movq	%rdi, %rbx
	movq	%r14, -16(%rsp)
.LCFI36:
	movq	%r15, -8(%rsp)
.LCFI37:
	movq	%rsi, %r14
	movq	%rbp, -40(%rsp)
.LCFI38:
	movq	%r13, -24(%rsp)
.LCFI39:
	subq	$56, %rsp
.LCFI40:
	.loc 1 146 0
	movq	%rdx, %r15
	movl	%ecx, %r12d
	.loc 1 147 0
	movq	56(%rdi), %rbp
	.loc 1 150 0
	call	fd_open
	.loc 1 151 0
	testl	%eax, %eax
	js	.L111
	.loc 1 154 0
	testq	%r14, %r14
	js	.L113
	movl	(%rbp), %edi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	lseek64
	cmpq	$-1, %rax
	je	.L120
.L113:
	.loc 1 166 0
	movl	(%rbp), %edi
	movslq	%r12d,%r13
	.loc 1 164 0
	movl	$0, 8(%rbp)
	.loc 1 166 0
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	read
	.loc 1 167 0
	cmpl	%r12d, %eax
	je	.L111
	.loc 1 176 0
	cmpl	$1, 2704(%rbx)
	je	.L121
.L111:
	.loc 1 195 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
.L121:
	.loc 1 177 0
	movl	(%rbp), %edi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	lseek64
	.loc 1 178 0
	movl	(%rbp), %edi
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	read
	.loc 1 179 0
	cmpl	%r12d, %eax
	je	.L111
.L116:
	.loc 1 181 0
	movl	(%rbp), %edi
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	lseek64
	.loc 1 182 0
	movl	(%rbp), %edi
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	read
	jmp	.L111
.L120:
	.loc 1 155 0
	incl	8(%rbp)
	jmp	.L111
.LFE262:
	.size	raw_pread, .-raw_pread
	.p2align 4,,15
	.type	raw_aio_setup, @function
raw_aio_setup:
.LFB271:
	.loc 1 376 0
	movq	%rbx, -48(%rsp)
.LCFI41:
	movq	%rbp, -40(%rsp)
.LCFI42:
	movq	%rdi, %rbx
	movq	%r12, -32(%rsp)
.LCFI43:
	movq	%r13, -24(%rsp)
.LCFI44:
	movl	%ecx, %ebp
	movq	%r14, -16(%rsp)
.LCFI45:
	movq	%r15, -8(%rsp)
.LCFI46:
	subq	$56, %rsp
.LCFI47:
	.loc 1 376 0
	movq	%rdx, (%rsp)
	movq	%rsi, %r13
	movq	%r8, %r14
	movq	%r9, %r12
	.loc 1 377 0
	movq	56(%rdi), %r15
	.loc 1 380 0
	call	fd_open
	.loc 1 381 0
	xorl	%ecx, %ecx
	.loc 1 380 0
	testl	%eax, %eax
	js	.L122
	.loc 1 383 0
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	qemu_aio_get
	.loc 1 385 0
	xorl	%ecx, %ecx
	.loc 1 384 0
	testq	%rax, %rax
	.loc 1 383 0
	movq	%rax, %rdx
	.loc 1 384 0
	je	.L122
	.loc 1 386 0
	movl	(%r15), %eax
	.loc 1 390 0
	testl	%ebp, %ebp
	.loc 1 386 0
	movl	%eax, 32(%rdx)
	.loc 1 387 0
	movl	aio_sig_num(%rip), %eax
	.loc 1 388 0
	movl	$0, 76(%rdx)
	.loc 1 387 0
	movl	%eax, 72(%rdx)
	.loc 1 389 0
	movq	(%rsp), %rax
	movq	%rax, 48(%rdx)
	.loc 1 390 0
	js	.L128
	.loc 1 393 0
	sall	$9, %ebp
.L127:
	movslq	%ebp,%rax
	.loc 1 394 0
	salq	$9, %r13
	.loc 1 397 0
	movq	%rdx, %rcx
	.loc 1 393 0
	movq	%rax, 56(%rdx)
	.loc 1 394 0
	movq	%r13, 160(%rdx)
	.loc 1 395 0
	movq	first_aio(%rip), %rax
	movq	%rax, 200(%rdx)
	.loc 1 396 0
	movq	%rdx, first_aio(%rip)
.L122:
	.loc 1 398 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	%rcx, %rax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L128:
	.loc 1 391 0
	negl	%ebp
	jmp	.L127
.LFE271:
	.size	raw_aio_setup, .-raw_aio_setup
	.p2align 4,,15
	.type	raw_aio_write, @function
raw_aio_write:
.LFB273:
	.loc 1 419 0
	pushq	%rbx
.LCFI48:
	.loc 1 422 0
	call	raw_aio_setup
	.loc 1 424 0
	xorl	%edx, %edx
	.loc 1 423 0
	testq	%rax, %rax
	.loc 1 422 0
	movq	%rax, %rbx
	.loc 1 423 0
	je	.L129
	.loc 1 425 0
	leaq	32(%rax), %rdi
	call	aio_write64
	testl	%eax, %eax
	.loc 1 429 0
	movq	%rbx, %rdx
	.loc 1 425 0
	js	.L132
.L129:
	.loc 1 430 0
	popq	%rbx
	movq	%rdx, %rax
	ret
.L132:
	.loc 1 426 0
	movq	%rbx, %rdi
	call	qemu_aio_release
	.loc 1 427 0
	xorl	%edx, %edx
	.p2align 4,,2
	jmp	.L129
.LFE273:
	.size	raw_aio_write, .-raw_aio_write
	.p2align 4,,15
	.type	raw_aio_read, @function
raw_aio_read:
.LFB272:
	.loc 1 403 0
	pushq	%rbx
.LCFI49:
	.loc 1 406 0
	call	raw_aio_setup
	.loc 1 408 0
	xorl	%edx, %edx
	.loc 1 407 0
	testq	%rax, %rax
	.loc 1 406 0
	movq	%rax, %rbx
	.loc 1 407 0
	je	.L133
	.loc 1 409 0
	leaq	32(%rax), %rdi
	call	aio_read64
	testl	%eax, %eax
	.loc 1 413 0
	movq	%rbx, %rdx
	.loc 1 409 0
	js	.L136
.L133:
	.loc 1 414 0
	popq	%rbx
	movq	%rdx, %rax
	ret
.L136:
	.loc 1 410 0
	movq	%rbx, %rdi
	call	qemu_aio_release
	.loc 1 411 0
	xorl	%edx, %edx
	.p2align 4,,2
	jmp	.L133
.LFE272:
	.size	raw_aio_read, .-raw_aio_read
	.p2align 4,,15
	.type	raw_is_inserted, @function
raw_is_inserted:
.LFB282:
	.loc 1 768 0
	subq	$8, %rsp
.LCFI50:
	.loc 1 769 0
	movq	56(%rdi), %rcx
	.loc 1 772 0
	movl	4(%rcx), %eax
	cmpl	$1, %eax
	je	.L139
	cmpl	$2, %eax
	je	.L142
	.loc 1 784 0
	movl	$1, %eax
	.loc 1 786 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L139:
	.loc 1 774 0
	movl	(%rcx), %edi
	xorl	%eax, %eax
	movl	$2147483647, %edx
	movl	$21286, %esi
	call	ioctl
	.loc 1 776 0
	cmpl	$4, %eax
	sete	%al
	.loc 1 786 0
	addq	$8, %rsp
	.loc 1 776 0
	movzbl	%al, %eax
	.loc 1 786 0
	ret
	.p2align 4,,7
.L142:
	.loc 1 781 0
	call	fd_open
	.loc 1 782 0
	notl	%eax
	.loc 1 786 0
	addq	$8, %rsp
	.loc 1 782 0
	shrl	$31, %eax
	.loc 1 786 0
	ret
.LFE282:
	.size	raw_is_inserted, .-raw_is_inserted
	.p2align 4,,15
	.type	raw_media_changed, @function
raw_media_changed:
.LFB283:
	.loc 1 790 0
	pushq	%rbx
.LCFI51:
	.loc 1 791 0
	movq	56(%rdi), %rbx
	.loc 1 809 0
	movl	$-95, %eax
	.loc 1 793 0
	cmpl	$2, 4(%rbx)
	jne	.L144
.LBB3:
	.loc 1 800 0
	call	fd_open
	.loc 1 801 0
	movl	36(%rbx), %eax
	.loc 1 802 0
	movl	$0, 36(%rbx)
.L144:
.LBE3:
	.loc 1 811 0
	popq	%rbx
	ret
.LFE283:
	.size	raw_media_changed, .-raw_media_changed
	.section	.rodata.str1.1
.LC6:
	.string	"CDROMEJECT"
.LC7:
	.string	"FDEJECT"
	.text
	.p2align 4,,15
	.type	raw_eject, @function
raw_eject:
.LFB284:
	.loc 1 814 0
	pushq	%rbp
.LCFI52:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI53:
	subq	$8, %rsp
.LCFI54:
	.loc 1 815 0
	movq	56(%rdi), %rbx
	.loc 1 817 0
	movl	4(%rbx), %eax
	cmpl	$1, %eax
	je	.L150
	cmpl	$2, %eax
	jne	.L162
.LBB4:
	.loc 1 830 0
	movl	(%rbx), %edi
	testl	%edi, %edi
	js	.L156
	.loc 1 831 0
	.p2align 4,,5
	call	close
	.loc 1 832 0
	movl	$-1, (%rbx)
.L156:
	.loc 1 834 0
	movl	12(%rbx), %esi
	leaq	580(%rbp), %rdi
	xorl	%eax, %eax
	orl	$2048, %esi
	call	open64
	.loc 1 835 0
	testl	%eax, %eax
	.loc 1 834 0
	movl	%eax, %ebx
	.loc 1 835 0
	js	.L149
	.loc 1 836 0
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	$602, %esi
	xorl	%eax, %eax
	call	ioctl
	testl	%eax, %eax
	js	.L163
.L158:
	.loc 1 838 0
	movl	%ebx, %edi
	call	close
.L149:
.LBE4:
	.loc 1 845 0
	xorl	%eax, %eax
.L148:
	.loc 1 846 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L150:
	.loc 1 819 0
	testl	%esi, %esi
	jne	.L164
	.loc 1 823 0
	xorl	%edx, %edx
	movl	$21273, %esi
.L161:
	movl	(%rbx), %edi
	xorl	%eax, %eax
	call	ioctl
	testl	%eax, %eax
	jns	.L149
	.loc 1 824 0
	movl	$.LC6, %edi
	call	perror
	jmp	.L149
	.p2align 4,,7
.L164:
	.loc 1 820 0
	xorl	%edx, %edx
	movl	$21257, %esi
	jmp	.L161
.L162:
	.loc 1 843 0
	movl	$-95, %eax
	.p2align 4,,5
	jmp	.L148
.L163:
.LBB5:
	.loc 1 837 0
	movl	$.LC7, %edi
	call	perror
	jmp	.L158
.LBE5:
.LFE284:
	.size	raw_eject, .-raw_eject
	.p2align 4,,15
	.type	raw_set_locked, @function
raw_set_locked:
.LFB285:
	.loc 1 849 0
	subq	$8, %rsp
.LCFI55:
	.loc 1 850 0
	movq	56(%rdi), %rcx
	.loc 1 861 0
	movl	$-95, %eax
	.loc 1 852 0
	cmpl	$1, 4(%rcx)
	jne	.L165
	.loc 1 854 0
	movl	(%rcx), %edi
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	$21289, %esi
	call	ioctl
	.loc 1 863 0
	xorl	%eax, %eax
.L165:
	.loc 1 864 0
	addq	$8, %rsp
	ret
.LFE285:
	.size	raw_set_locked, .-raw_set_locked
	.p2align 4,,15
	.type	raw_ioctl, @function
raw_ioctl:
.LFB286:
	.loc 1 867 0
	.loc 1 868 0
	movq	56(%rdi), %rax
	.loc 1 870 0
	movl	(%rax), %edi
	xorl	%eax, %eax
	jmp	ioctl
.LFE286:
	.size	raw_ioctl, .-raw_ioctl
	.comm	bdrv_first,8,8
	.local	first_aio
	.comm	first_aio,8,8
	.local	wait_oset
	.comm	wait_oset,128,32
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
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.byte	0x4
	.long	.LCFI0-.LFB261
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
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI1-.LFB265
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI3-.LFB266
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.byte	0x4
	.long	.LCFI6-.LFB268
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI8-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI10-.LFB267
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.byte	0x4
	.long	.LCFI11-.LFB274
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI14-.LFB275
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
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI15-.LFB276
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.byte	0x4
	.long	.LCFI16-.LFB278
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI22-.LFB280
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI27-.LFB281
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.byte	0x4
	.long	.LCFI28-.LFB277
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.byte	0x4
	.long	.LCFI30-.LFB263
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI33-.LCFI30
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI35-.LFB262
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI40-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI42-.LFB271
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI47-.LCFI42
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI48-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.byte	0x4
	.long	.LCFI49-.LFB272
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
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.byte	0x4
	.long	.LCFI50-.LFB282
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI51-.LFB283
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI52-.LFB284
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.byte	0x4
	.long	.LCFI55-.LFB285
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.align 8
.LEFDE50:
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
	.quad	.LFB261
	.quad	.LFE261-.LFB261
	.byte	0x4
	.long	.LCFI0-.LFB261
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
	.quad	.LFB264
	.quad	.LFE264-.LFB264
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB265
	.quad	.LFE265-.LFB265
	.byte	0x4
	.long	.LCFI1-.LFB265
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0xd0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB266
	.quad	.LFE266-.LFB266
	.byte	0x4
	.long	.LCFI3-.LFB266
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB270
	.quad	.LFE270-.LFB270
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB268
	.quad	.LFE268-.LFB268
	.byte	0x4
	.long	.LCFI6-.LFB268
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB269
	.quad	.LFE269-.LFB269
	.byte	0x4
	.long	.LCFI8-.LFB269
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0xa0
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB267
	.quad	.LFE267-.LFB267
	.byte	0x4
	.long	.LCFI10-.LFB267
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB274
	.quad	.LFE274-.LFB274
	.byte	0x4
	.long	.LCFI11-.LFB274
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB275
	.quad	.LFE275-.LFB275
	.byte	0x4
	.long	.LCFI14-.LFB275
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
	.quad	.LFB276
	.quad	.LFE276-.LFB276
	.byte	0x4
	.long	.LCFI15-.LFB276
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB278
	.quad	.LFE278-.LFB278
	.byte	0x4
	.long	.LCFI16-.LFB278
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB279
	.quad	.LFE279-.LFB279
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB280
	.quad	.LFE280-.LFB280
	.byte	0x4
	.long	.LCFI22-.LFB280
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB281
	.quad	.LFE281-.LFB281
	.byte	0x4
	.long	.LCFI27-.LFB281
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB277
	.quad	.LFE277-.LFB277
	.byte	0x4
	.long	.LCFI28-.LFB277
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB263
	.quad	.LFE263-.LFB263
	.byte	0x4
	.long	.LCFI30-.LFB263
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI33-.LCFI30
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB262
	.quad	.LFE262-.LFB262
	.byte	0x4
	.long	.LCFI35-.LFB262
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI40-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB271
	.quad	.LFE271-.LFB271
	.byte	0x4
	.long	.LCFI42-.LFB271
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI47-.LCFI42
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
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB273
	.quad	.LFE273-.LFB273
	.byte	0x4
	.long	.LCFI48-.LFB273
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB272
	.quad	.LFE272-.LFB272
	.byte	0x4
	.long	.LCFI49-.LFB272
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
	.quad	.LFB282
	.quad	.LFE282-.LFB282
	.byte	0x4
	.long	.LCFI50-.LFB282
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB283
	.quad	.LFE283-.LFB283
	.byte	0x4
	.long	.LCFI51-.LFB283
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB284
	.quad	.LFE284-.LFB284
	.byte	0x4
	.long	.LCFI52-.LFB284
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB285
	.quad	.LFE285-.LFB285
	.byte	0x4
	.long	.LCFI55-.LFB285
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB286
	.quad	.LFE286-.LFB286
	.align 8
.LEFDE51:
	.file 2 "/home/remco/Projects/Argos/src/qemu-common.h"
	.file 3 "/home/remco/Projects/Argos/src/block_int.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "/home/remco/Projects/Argos/src/block.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 8 "../cpu-defs.h"
	.file 9 "../argos-tag.h"
	.file 10 "../argos.h"
	.file 11 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "/usr/include/bits/types.h"
	.file 15 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 16 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 17 "/usr/include/setjmp.h"
	.file 18 "/usr/include/bits/setjmp.h"
	.file 19 "/usr/include/bits/sigset.h"
	.file 20 "/home/remco/Projects/Argos/src/exec-all.h"
	.file 21 "/usr/include/bits/sigaction.h"
	.file 22 "/usr/include/signal.h"
	.file 23 "/usr/include/bits/siginfo.h"
	.file 24 "/usr/include/aio.h"
	.file 25 "/usr/include/time.h"
	.file 26 "/usr/include/sys/select.h"
	.file 27 "../cpu-all.h"
	.file 28 "/home/remco/Projects/Argos/src/argos-memmap.h"
	.file 29 "/home/remco/Projects/Argos/src/qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x27aa
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF421
	.byte	0x1
	.long	.LASF422
	.long	.LASF423
	.uleb128 0x2
	.long	.LASF9
	.byte	0xf
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
	.byte	0xe
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF11
	.byte	0xe
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF12
	.byte	0xe
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF13
	.byte	0xe
	.byte	0x8f
	.long	0x3f
	.uleb128 0x2
	.long	.LASF14
	.byte	0xe
	.byte	0x91
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF15
	.byte	0xe
	.byte	0xb4
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xc6
	.long	0x53
	.uleb128 0x8
	.long	0x10d
	.byte	0x80
	.byte	0x13
	.byte	0x20
	.uleb128 0x9
	.long	.LASF22
	.byte	0x13
	.byte	0x1f
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x11d
	.long	0x38
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF18
	.byte	0x13
	.byte	0x20
	.long	0xf6
	.uleb128 0x2
	.long	.LASF19
	.byte	0x1a
	.byte	0x26
	.long	0x11d
	.uleb128 0x3
	.long	.LASF20
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.long	0x14a
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF21
	.byte	0xc
	.byte	0x31
	.long	0x155
	.uleb128 0xc
	.long	0x321
	.long	.LASF53
	.byte	0xd8
	.byte	0xc
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF23
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF24
	.byte	0xd
	.value	0x115
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF25
	.byte	0xd
	.value	0x116
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF26
	.byte	0xd
	.value	0x117
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF27
	.byte	0xd
	.value	0x118
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF28
	.byte	0xd
	.value	0x119
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF29
	.byte	0xd
	.value	0x11a
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF30
	.byte	0xd
	.value	0x11b
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF31
	.byte	0xd
	.value	0x11c
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF32
	.byte	0xd
	.value	0x11e
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF33
	.byte	0xd
	.value	0x11f
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF34
	.byte	0xd
	.value	0x120
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF35
	.byte	0xd
	.value	0x122
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF36
	.byte	0xd
	.value	0x124
	.long	0x365
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF37
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF38
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF39
	.byte	0xd
	.value	0x12c
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF40
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF41
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF42
	.byte	0xd
	.value	0x132
	.long	0x36b
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF43
	.byte	0xd
	.value	0x136
	.long	0x37b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF44
	.byte	0xd
	.value	0x13f
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF45
	.byte	0xd
	.value	0x148
	.long	0xcd
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF46
	.byte	0xd
	.value	0x149
	.long	0xcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF47
	.byte	0xd
	.value	0x14a
	.long	0xcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF48
	.byte	0xd
	.value	0x14b
	.long	0xcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF49
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF50
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF51
	.byte	0xd
	.value	0x150
	.long	0x381
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF52
	.byte	0xd
	.byte	0xb4
	.uleb128 0xc
	.long	0x35f
	.long	.LASF54
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0x9
	.long	.LASF55
	.byte	0xd
	.byte	0xbb
	.long	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF56
	.byte	0xd
	.byte	0xbc
	.long	0x365
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF57
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x5
	.byte	0x8
	.long	0x155
	.uleb128 0xa
	.long	0x37b
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x321
	.uleb128 0xa
	.long	0x391
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF62
	.byte	0x12
	.byte	0x20
	.long	0x3c8
	.uleb128 0xa
	.long	0x3d8
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x40f
	.long	.LASF63
	.byte	0xc8
	.byte	0x11
	.byte	0x24
	.uleb128 0x9
	.long	.LASF64
	.byte	0x11
	.byte	0x29
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x11
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF66
	.byte	0x11
	.byte	0x2b
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x11
	.byte	0x31
	.long	0x41a
	.uleb128 0xa
	.long	0x42a
	.long	0x3d8
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x31
	.long	0x3a7
	.uleb128 0x2
	.long	.LASF69
	.byte	0x8
	.byte	0x49
	.long	0x3b2
	.uleb128 0xc
	.long	0x485
	.long	.LASF70
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.byte	0x70
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF72
	.byte	0x8
	.byte	0x71
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF73
	.byte	0x8
	.byte	0x72
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0x8
	.byte	0x74
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x75
	.long	0x440
	.uleb128 0x3
	.long	.LASF75
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF76
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF77
	.byte	0x10
	.byte	0x3b
	.long	0x490
	.uleb128 0x2
	.long	.LASF78
	.byte	0x10
	.byte	0x3c
	.long	0x497
	.uleb128 0x2
	.long	.LASF79
	.byte	0x10
	.byte	0x3e
	.long	0x4bf
	.uleb128 0x3
	.long	.LASF80
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4ef
	.long	.LASF81
	.byte	0x2
	.byte	0x10
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF82
	.byte	0x10
	.byte	0x6e
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x10
	.byte	0x70
	.long	0x88
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x10
	.byte	0x72
	.long	0x4c6
	.uleb128 0xf
	.long	.LASF84
	.byte	0x7
	.value	0x198
	.long	0x4b4
	.uleb128 0x10
	.long	0x550
	.long	.LASF85
	.byte	0x10
	.byte	0x7
	.value	0x19d
	.uleb128 0xd
	.long	.LASF86
	.byte	0x7
	.value	0x19e
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF87
	.byte	0x7
	.value	0x19f
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF88
	.byte	0x7
	.value	0x1a0
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF89
	.byte	0x7
	.value	0x1a1
	.long	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x7
	.value	0x1a2
	.long	0x506
	.uleb128 0x11
	.long	0x5a8
	.byte	0x10
	.byte	0x7
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x7
	.value	0x1a5
	.long	0x5a8
	.uleb128 0x12
	.string	"_w"
	.byte	0x7
	.value	0x1a6
	.long	0x5b8
	.uleb128 0x12
	.string	"_l"
	.byte	0x7
	.value	0x1a7
	.long	0x5c8
	.uleb128 0x12
	.string	"_q"
	.byte	0x7
	.value	0x1a8
	.long	0x5d8
	.uleb128 0x12
	.string	"_s"
	.byte	0x7
	.value	0x1a9
	.long	0x5e8
	.uleb128 0x12
	.string	"_d"
	.byte	0x7
	.value	0x1aa
	.long	0x5f8
	.byte	0x0
	.uleb128 0xa
	.long	0x5b8
	.long	0x391
	.uleb128 0xb
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x5c8
	.long	0x39c
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x5d8
	.long	0x3a7
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5e8
	.long	0x3b2
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x5f8
	.long	0x49e
	.uleb128 0xb
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x608
	.long	0x4a9
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF90
	.byte	0x7
	.value	0x1ab
	.long	0x55c
	.uleb128 0x11
	.long	0x649
	.byte	0x8
	.byte	0x7
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x7
	.value	0x1ae
	.long	0x649
	.uleb128 0x12
	.string	"_w"
	.byte	0x7
	.value	0x1af
	.long	0x659
	.uleb128 0x12
	.string	"_l"
	.byte	0x7
	.value	0x1b0
	.long	0x669
	.uleb128 0x12
	.string	"q"
	.byte	0x7
	.value	0x1b1
	.long	0x3b2
	.byte	0x0
	.uleb128 0xa
	.long	0x659
	.long	0x391
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x669
	.long	0x39c
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x679
	.long	0x3a7
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF91
	.byte	0x7
	.value	0x1b2
	.long	0x614
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.byte	0x2f
	.long	0x3a7
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa
	.byte	0x34
	.long	0x3a7
	.uleb128 0x2
	.long	.LASF94
	.byte	0xa
	.byte	0x35
	.long	0x690
	.uleb128 0xc
	.long	0x6cf
	.long	.LASF95
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.uleb128 0x9
	.long	.LASF96
	.byte	0x9
	.byte	0x38
	.long	0x685
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x9
	.byte	0x39
	.long	0x690
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x9
	.byte	0x3d
	.long	0x6a6
	.uleb128 0xc
	.long	0x84f
	.long	.LASF99
	.byte	0xd0
	.byte	0xb
	.byte	0x36
	.uleb128 0x9
	.long	.LASF100
	.byte	0xb
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF101
	.byte	0xb
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0xb
	.byte	0x3d
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF102
	.byte	0xb
	.byte	0x3f
	.long	0x84f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF103
	.byte	0xb
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF104
	.byte	0xb
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF105
	.byte	0xb
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF106
	.byte	0xb
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF107
	.byte	0xb
	.byte	0x4a
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF108
	.byte	0xb
	.byte	0x4b
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF109
	.byte	0xb
	.byte	0x4c
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF110
	.byte	0xb
	.byte	0x4e
	.long	0x855
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF111
	.byte	0xb
	.byte	0x50
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF112
	.byte	0xb
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF113
	.byte	0xb
	.byte	0x54
	.long	0x865
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF114
	.byte	0xb
	.byte	0x56
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF115
	.byte	0xb
	.byte	0x58
	.long	0x875
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF116
	.byte	0xb
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF117
	.byte	0xb
	.byte	0x5c
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF118
	.byte	0xb
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF119
	.byte	0xb
	.byte	0x60
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF120
	.byte	0xb
	.byte	0x62
	.long	0x875
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF121
	.byte	0xb
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF122
	.byte	0xb
	.byte	0x66
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF123
	.byte	0xb
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x14a
	.uleb128 0xa
	.long	0x865
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x875
	.long	0x690
	.uleb128 0xb
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x690
	.uleb128 0x2
	.long	.LASF124
	.byte	0xb
	.byte	0x69
	.long	0x6da
	.uleb128 0x11
	.long	0x8a6
	.byte	0x10
	.byte	0x7
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x7
	.value	0x20a
	.long	0x4fa
	.uleb128 0x12
	.string	"mmx"
	.byte	0x7
	.value	0x20e
	.long	0x679
	.byte	0x0
	.uleb128 0x11
	.long	0x8dc
	.byte	0x8
	.byte	0x7
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x7
	.value	0x215
	.long	0x490
	.uleb128 0x12
	.string	"d"
	.byte	0x7
	.value	0x216
	.long	0x497
	.uleb128 0x12
	.string	"i32"
	.byte	0x7
	.value	0x217
	.long	0x3f
	.uleb128 0x12
	.string	"i64"
	.byte	0x7
	.value	0x218
	.long	0xeb
	.byte	0x0
	.uleb128 0x14
	.long	0x904
	.byte	0x10
	.byte	0x7
	.value	0x246
	.uleb128 0xd
	.long	.LASF125
	.byte	0x7
	.value	0x246
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x7
	.value	0x246
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xea0
	.long	.LASF126
	.value	0xb820
	.byte	0x7
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF127
	.byte	0x7
	.value	0x1df
	.long	0xea0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x7
	.value	0x1e0
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF128
	.byte	0x7
	.value	0x1e1
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF129
	.byte	0x7
	.value	0x1e6
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF130
	.byte	0x7
	.value	0x1e6
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF131
	.byte	0x7
	.value	0x1e6
	.long	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF132
	.byte	0x7
	.value	0x1e7
	.long	0xeb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF133
	.byte	0x7
	.value	0x1e9
	.long	0x87b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF134
	.byte	0x7
	.value	0x1ec
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF135
	.byte	0x7
	.value	0x1ed
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF136
	.byte	0x7
	.value	0x1ee
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x7
	.value	0x1ef
	.long	0xe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF137
	.byte	0x7
	.value	0x1f0
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF138
	.byte	0x7
	.value	0x1f3
	.long	0xec0
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x7
	.value	0x1f4
	.long	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x7
	.value	0x1f5
	.long	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x7
	.value	0x1f6
	.long	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x7
	.value	0x1f7
	.long	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x7
	.value	0x1f9
	.long	0xed0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF139
	.byte	0x7
	.value	0x1fa
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF140
	.byte	0x7
	.value	0x201
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF141
	.byte	0x7
	.value	0x202
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF142
	.byte	0x7
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF143
	.byte	0x7
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF144
	.byte	0x7
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF145
	.byte	0x7
	.value	0x207
	.long	0x649
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF146
	.byte	0x7
	.value	0x20f
	.long	0xee0
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF147
	.byte	0x7
	.value	0x212
	.long	0x4ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x7
	.value	0x213
	.long	0x4fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF148
	.byte	0x7
	.value	0x219
	.long	0x8a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF149
	.byte	0x7
	.value	0x21b
	.long	0x4ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF150
	.byte	0x7
	.value	0x21c
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF151
	.byte	0x7
	.value	0x21d
	.long	0xef0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF152
	.byte	0x7
	.value	0x21e
	.long	0x608
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF153
	.byte	0x7
	.value	0x21f
	.long	0x679
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF154
	.byte	0x7
	.value	0x222
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF155
	.byte	0x7
	.value	0x223
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF156
	.byte	0x7
	.value	0x224
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF157
	.byte	0x7
	.value	0x225
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF158
	.byte	0x7
	.value	0x226
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF159
	.byte	0x7
	.value	0x228
	.long	0x435
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF160
	.byte	0x7
	.value	0x229
	.long	0x435
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF161
	.byte	0x7
	.value	0x22a
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF162
	.byte	0x7
	.value	0x22b
	.long	0x39c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x7
	.value	0x22c
	.long	0x39c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF164
	.byte	0x7
	.value	0x22d
	.long	0x39c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x7
	.value	0x22e
	.long	0x39c
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF166
	.byte	0x7
	.value	0x22f
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x7
	.value	0x238
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x7
	.value	0x23b
	.long	0x40f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF168
	.byte	0x7
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF169
	.byte	0x7
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF170
	.byte	0x7
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF171
	.byte	0x7
	.value	0x23f
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x7
	.value	0x240
	.long	0xea0
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF172
	.byte	0x7
	.value	0x241
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x7
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF174
	.byte	0x7
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x7
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF176
	.byte	0x7
	.value	0x246
	.long	0xfc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF177
	.byte	0x7
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF178
	.byte	0x7
	.value	0x246
	.long	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF179
	.byte	0x7
	.value	0x246
	.long	0xfc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF180
	.byte	0x7
	.value	0x246
	.long	0xfdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF181
	.byte	0x7
	.value	0x246
	.long	0xff0
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF182
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF183
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF184
	.byte	0x7
	.value	0x246
	.long	0x1000
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF185
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF186
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF187
	.byte	0x7
	.value	0x246
	.long	0xcd
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF188
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF189
	.byte	0x7
	.value	0x246
	.long	0xcd
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF190
	.byte	0x7
	.value	0x246
	.long	0x6f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF191
	.byte	0x7
	.value	0x249
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF192
	.byte	0x7
	.value	0x24a
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF193
	.byte	0x7
	.value	0x24b
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF194
	.byte	0x7
	.value	0x24c
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF195
	.byte	0x7
	.value	0x24d
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x7
	.value	0x24e
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF197
	.byte	0x7
	.value	0x24f
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF198
	.byte	0x7
	.value	0x250
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF199
	.byte	0x7
	.value	0x251
	.long	0x1010
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF200
	.byte	0x7
	.value	0x252
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF201
	.byte	0x7
	.value	0x253
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF202
	.byte	0x7
	.value	0x254
	.long	0x3a7
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF203
	.byte	0x7
	.value	0x25b
	.long	0x1020
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF204
	.byte	0x7
	.value	0x25f
	.long	0x102c
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xeb0
	.long	0x42a
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xec0
	.long	0x6cf
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xed0
	.long	0x550
	.uleb128 0xb
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xee0
	.long	0x42a
	.uleb128 0xb
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xef0
	.long	0x886
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xf00
	.long	0x608
	.uleb128 0xb
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0xfc3
	.long	.LASF205
	.byte	0x68
	.byte	0x7
	.value	0x246
	.uleb128 0x13
	.string	"pc"
	.byte	0x14
	.byte	0x93
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF206
	.byte	0x14
	.byte	0x94
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF89
	.byte	0x14
	.byte	0x95
	.long	0x3b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF207
	.byte	0x14
	.byte	0x96
	.long	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF208
	.byte	0x14
	.byte	0x98
	.long	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF209
	.byte	0x14
	.byte	0x9e
	.long	0x122d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF210
	.byte	0x14
	.byte	0xa0
	.long	0xfc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF211
	.byte	0x14
	.byte	0xa3
	.long	0x1233
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF212
	.byte	0x14
	.byte	0xa4
	.long	0x1243
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF213
	.byte	0x14
	.byte	0xa8
	.long	0x659
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF214
	.byte	0x14
	.byte	0xac
	.long	0x1253
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF215
	.byte	0x14
	.byte	0xb2
	.long	0x1233
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF216
	.byte	0x14
	.byte	0xb3
	.long	0xfc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf00
	.uleb128 0xa
	.long	0xfdf
	.long	0x485
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xff0
	.long	0xfc3
	.uleb128 0x17
	.long	0x61
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0x1000
	.long	0x42a
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1010
	.long	0x8dc
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x1020
	.long	0x3a7
	.uleb128 0xb
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x69b
	.uleb128 0x18
	.long	.LASF245
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x1026
	.uleb128 0xf
	.long	.LASF126
	.byte	0x7
	.value	0x260
	.long	0x904
	.uleb128 0x19
	.long	0x104a
	.byte	0x1
	.uleb128 0x1a
	.long	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1050
	.uleb128 0x6
	.long	0x391
	.uleb128 0x2
	.long	.LASF217
	.byte	0x2
	.byte	0x6e
	.long	0x1060
	.uleb128 0x1b
	.long	0x1214
	.long	.LASF217
	.value	0xac0
	.byte	0x2
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF218
	.byte	0x3
	.byte	0x5d
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF219
	.byte	0x3
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF220
	.byte	0x3
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF221
	.byte	0x3
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF222
	.byte	0x3
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.string	"sg"
	.byte	0x3
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF223
	.byte	0x3
	.byte	0x65
	.long	0x1225
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF224
	.byte	0x3
	.byte	0x66
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"drv"
	.byte	0x3
	.byte	0x68
	.long	0x1808
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF189
	.byte	0x3
	.byte	0x69
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF225
	.byte	0x3
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF226
	.byte	0x3
	.byte	0x6c
	.long	0x180e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF227
	.byte	0x3
	.byte	0x6e
	.long	0x181f
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x9
	.long	.LASF228
	.byte	0x3
	.byte	0x6f
	.long	0x181f
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0x9
	.long	.LASF229
	.byte	0x3
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0x9
	.long	.LASF230
	.byte	0x3
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0x9
	.long	.LASF231
	.byte	0x3
	.byte	0x74
	.long	0x15d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0x9
	.long	.LASF232
	.byte	0x3
	.byte	0x77
	.long	0xcd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0x9
	.long	.LASF233
	.byte	0x3
	.byte	0x7a
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0x9
	.long	.LASF234
	.byte	0x3
	.byte	0x7b
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0x9
	.long	.LASF235
	.byte	0x3
	.byte	0x7c
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0x9
	.long	.LASF236
	.byte	0x3
	.byte	0x7d
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.long	.LASF237
	.byte	0x3
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.long	.LASF238
	.byte	0x3
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.long	.LASF239
	.byte	0x3
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.long	.LASF240
	.byte	0x3
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.long	.LASF241
	.byte	0x3
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.long	.LASF242
	.byte	0x3
	.byte	0x83
	.long	0x13a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0x9
	.long	.LASF243
	.byte	0x3
	.byte	0x84
	.long	0x15d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF244
	.byte	0x1d
	.byte	0x6
	.long	0x121f
	.uleb128 0x18
	.long	.LASF244
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x103e
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x391
	.uleb128 0xa
	.long	0x1243
	.long	0xfc3
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x1253
	.long	0x42a
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x1263
	.long	0x3a7
	.uleb128 0xb
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF246
	.byte	0x5
	.byte	0x5
	.long	0x126e
	.uleb128 0x1b
	.long	0x146a
	.long	.LASF246
	.value	0x110
	.byte	0x5
	.byte	0x5
	.uleb128 0x9
	.long	.LASF247
	.byte	0x3
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF248
	.byte	0x3
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF249
	.byte	0x3
	.byte	0x24
	.long	0x15b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF250
	.byte	0x3
	.byte	0x25
	.long	0x15da
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF251
	.byte	0x3
	.byte	0x27
	.long	0x15ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF252
	.byte	0x3
	.byte	0x29
	.long	0x1624
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF253
	.byte	0x3
	.byte	0x2a
	.long	0x1636
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF254
	.byte	0x3
	.byte	0x2c
	.long	0x165b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF255
	.byte	0x3
	.byte	0x2d
	.long	0x1636
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF256
	.byte	0x3
	.byte	0x2f
	.long	0x1680
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF257
	.byte	0x3
	.byte	0x30
	.long	0x169b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF258
	.byte	0x3
	.byte	0x31
	.long	0x16b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF259
	.byte	0x3
	.byte	0x35
	.long	0x16ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF260
	.byte	0x3
	.byte	0x38
	.long	0x171b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF261
	.byte	0x3
	.byte	0x39
	.long	0x172d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF262
	.byte	0x3
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF263
	.byte	0x3
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF264
	.byte	0x3
	.byte	0x3e
	.long	0x15ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF265
	.byte	0x3
	.byte	0x40
	.long	0x1624
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF266
	.byte	0x3
	.byte	0x41
	.long	0x1748
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF267
	.byte	0x3
	.byte	0x42
	.long	0x175e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF268
	.byte	0x3
	.byte	0x44
	.long	0x1624
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF269
	.byte	0x3
	.byte	0x47
	.long	0x177f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF270
	.byte	0x3
	.byte	0x49
	.long	0x169b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF271
	.byte	0x3
	.byte	0x4a
	.long	0x169b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF272
	.byte	0x3
	.byte	0x4c
	.long	0x17a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF273
	.byte	0x3
	.byte	0x4d
	.long	0x17c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF274
	.byte	0x3
	.byte	0x50
	.long	0x16b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF275
	.byte	0x3
	.byte	0x51
	.long	0x16b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF276
	.byte	0x3
	.byte	0x52
	.long	0x17dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.long	.LASF277
	.byte	0x3
	.byte	0x53
	.long	0x17dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF278
	.byte	0x3
	.byte	0x56
	.long	0x17fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF279
	.byte	0x3
	.byte	0x58
	.long	0x16e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF243
	.byte	0x3
	.byte	0x59
	.long	0x1802
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xc
	.long	0x1493
	.long	.LASF280
	.byte	0x10
	.byte	0x5
	.byte	0x14
	.uleb128 0x9
	.long	.LASF281
	.byte	0x5
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF282
	.byte	0x5
	.byte	0x18
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF280
	.byte	0x5
	.byte	0x19
	.long	0x146a
	.uleb128 0x1b
	.long	0x1505
	.long	.LASF283
	.value	0x198
	.byte	0x5
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF284
	.byte	0x5
	.byte	0x1c
	.long	0x1505
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF285
	.byte	0x5
	.byte	0x1f
	.long	0x1515
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF286
	.byte	0x5
	.byte	0x20
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF287
	.byte	0x5
	.byte	0x21
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x9
	.long	.LASF288
	.byte	0x5
	.byte	0x22
	.long	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF289
	.byte	0x5
	.byte	0x23
	.long	0x3b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0xa
	.long	0x1515
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.long	0x1525
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF283
	.byte	0x5
	.byte	0x24
	.long	0x149e
	.uleb128 0x2
	.long	.LASF290
	.byte	0x5
	.byte	0x50
	.long	0x153b
	.uleb128 0xc
	.long	0x157e
	.long	.LASF290
	.byte	0x20
	.byte	0x5
	.byte	0x50
	.uleb128 0x13
	.string	"bs"
	.byte	0x3
	.byte	0x88
	.long	0x15d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"cb"
	.byte	0x3
	.byte	0x89
	.long	0x16e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF189
	.byte	0x3
	.byte	0x8a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF243
	.byte	0x3
	.byte	0x8b
	.long	0x16e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF291
	.byte	0x5
	.byte	0x51
	.long	0x1589
	.uleb128 0x19
	.long	0x159a
	.byte	0x1
	.uleb128 0x1a
	.long	0xcd
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x15b4
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x104a
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x159a
	.uleb128 0x1d
	.long	0x15d4
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x6f
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1055
	.uleb128 0x5
	.byte	0x8
	.long	0x15ba
	.uleb128 0x1d
	.long	0x15ff
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x122d
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x15e0
	.uleb128 0x1d
	.long	0x1624
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x104a
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1605
	.uleb128 0x19
	.long	0x1636
	.byte	0x1
	.uleb128 0x1a
	.long	0x15d4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x162a
	.uleb128 0x1d
	.long	0x165b
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x6f
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x6f
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x163c
	.uleb128 0x1d
	.long	0x1680
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1661
	.uleb128 0x1d
	.long	0x169b
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1686
	.uleb128 0x1d
	.long	0x16b1
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x16a1
	.uleb128 0x1d
	.long	0x16e0
	.byte	0x1
	.long	0x16e0
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x122d
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x16e6
	.uleb128 0x1a
	.long	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1530
	.uleb128 0x5
	.byte	0x8
	.long	0x157e
	.uleb128 0x5
	.byte	0x8
	.long	0x16b7
	.uleb128 0x1d
	.long	0x171b
	.byte	0x1
	.long	0x16e0
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.uleb128 0x1a
	.long	0x104a
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x16e6
	.uleb128 0x1a
	.long	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x16f2
	.uleb128 0x19
	.long	0x172d
	.byte	0x1
	.uleb128 0x1a
	.long	0x16e0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1721
	.uleb128 0x1d
	.long	0x1748
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0xeb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1733
	.uleb128 0x1d
	.long	0x175e
	.byte	0x1
	.long	0xeb
	.uleb128 0x1a
	.long	0x15d4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x174e
	.uleb128 0x1d
	.long	0x1779
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x1779
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1525
	.uleb128 0x5
	.byte	0x8
	.long	0x1764
	.uleb128 0x1d
	.long	0x179a
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x179a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1779
	.uleb128 0x5
	.byte	0x8
	.long	0x1785
	.uleb128 0x1d
	.long	0x17bb
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x17bb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1493
	.uleb128 0x5
	.byte	0x8
	.long	0x17a6
	.uleb128 0x1d
	.long	0x17dc
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17c7
	.uleb128 0x1d
	.long	0x17fc
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0x15d4
	.uleb128 0x1a
	.long	0x38
	.uleb128 0x1a
	.long	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17e2
	.uleb128 0x5
	.byte	0x8
	.long	0x126e
	.uleb128 0x5
	.byte	0x8
	.long	0x1263
	.uleb128 0xa
	.long	0x181f
	.long	0x391
	.uleb128 0x17
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0xa
	.long	0x1830
	.long	0x7a
	.uleb128 0x17
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x1e
	.long	0x1853
	.long	.LASF424
	.byte	0x8
	.byte	0x17
	.byte	0x22
	.uleb128 0x1f
	.long	.LASF292
	.byte	0x17
	.byte	0x23
	.long	0x3f
	.uleb128 0x1f
	.long	.LASF293
	.byte	0x17
	.byte	0x24
	.long	0xcd
	.byte	0x0
	.uleb128 0x2
	.long	.LASF294
	.byte	0x17
	.byte	0x25
	.long	0x1830
	.uleb128 0x8
	.long	0x1883
	.byte	0x8
	.byte	0x17
	.byte	0x43
	.uleb128 0x9
	.long	.LASF295
	.byte	0x17
	.byte	0x41
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF296
	.byte	0x17
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.long	0x18b6
	.byte	0x10
	.byte	0x17
	.byte	0x4b
	.uleb128 0x9
	.long	.LASF297
	.byte	0x17
	.byte	0x48
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF298
	.byte	0x17
	.byte	0x49
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF299
	.byte	0x17
	.byte	0x4a
	.long	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x18e9
	.byte	0x10
	.byte	0x17
	.byte	0x53
	.uleb128 0x9
	.long	.LASF295
	.byte	0x17
	.byte	0x50
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF296
	.byte	0x17
	.byte	0x51
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF299
	.byte	0x17
	.byte	0x52
	.long	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x1938
	.byte	0x20
	.byte	0x17
	.byte	0x5d
	.uleb128 0x9
	.long	.LASF295
	.byte	0x17
	.byte	0x58
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF296
	.byte	0x17
	.byte	0x59
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF300
	.byte	0x17
	.byte	0x5a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF301
	.byte	0x17
	.byte	0x5b
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF302
	.byte	0x17
	.byte	0x5c
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x8
	.long	0x194f
	.byte	0x8
	.byte	0x17
	.byte	0x63
	.uleb128 0x9
	.long	.LASF303
	.byte	0x17
	.byte	0x62
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x1974
	.byte	0x10
	.byte	0x17
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF304
	.byte	0x17
	.byte	0x68
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF305
	.byte	0x17
	.byte	0x69
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x20
	.long	0x19ca
	.byte	0x70
	.byte	0x17
	.byte	0x6b
	.uleb128 0x1f
	.long	.LASF306
	.byte	0x17
	.byte	0x3c
	.long	0x19ca
	.uleb128 0x1f
	.long	.LASF307
	.byte	0x17
	.byte	0x43
	.long	0x185e
	.uleb128 0x1f
	.long	.LASF308
	.byte	0x17
	.byte	0x4b
	.long	0x1883
	.uleb128 0x21
	.string	"_rt"
	.byte	0x17
	.byte	0x53
	.long	0x18b6
	.uleb128 0x1f
	.long	.LASF309
	.byte	0x17
	.byte	0x5d
	.long	0x18e9
	.uleb128 0x1f
	.long	.LASF310
	.byte	0x17
	.byte	0x63
	.long	0x1938
	.uleb128 0x1f
	.long	.LASF311
	.byte	0x17
	.byte	0x6a
	.long	0x194f
	.byte	0x0
	.uleb128 0xa
	.long	0x19da
	.long	0x3f
	.uleb128 0xb
	.long	0x61
	.byte	0x1b
	.byte	0x0
	.uleb128 0xc
	.long	0x1a1f
	.long	.LASF312
	.byte	0x80
	.byte	0x17
	.byte	0x34
	.uleb128 0x9
	.long	.LASF313
	.byte	0x17
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF314
	.byte	0x17
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF315
	.byte	0x17
	.byte	0x38
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF316
	.byte	0x17
	.byte	0x6b
	.long	0x1974
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF317
	.byte	0x17
	.byte	0x6c
	.long	0x19da
	.uleb128 0x14
	.long	0x1a52
	.byte	0x10
	.byte	0x17
	.value	0x123
	.uleb128 0xd
	.long	.LASF318
	.byte	0x17
	.value	0x121
	.long	0x1a5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF319
	.byte	0x17
	.value	0x122
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.long	0x1a5e
	.byte	0x1
	.uleb128 0x1a
	.long	0x1853
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a52
	.uleb128 0x11
	.long	0x1a92
	.byte	0x30
	.byte	0x17
	.value	0x124
	.uleb128 0x22
	.long	.LASF306
	.byte	0x17
	.value	0x119
	.long	0x1a92
	.uleb128 0x22
	.long	.LASF320
	.byte	0x17
	.value	0x11d
	.long	0xb7
	.uleb128 0x22
	.long	.LASF321
	.byte	0x17
	.value	0x123
	.long	0x1a2a
	.byte	0x0
	.uleb128 0xa
	.long	0x1aa2
	.long	0x3f
	.uleb128 0xb
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0xc
	.long	0x1aeb
	.long	.LASF322
	.byte	0x40
	.byte	0x19
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF323
	.byte	0x17
	.value	0x113
	.long	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF324
	.byte	0x17
	.value	0x114
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF325
	.byte	0x17
	.value	0x115
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF326
	.byte	0x17
	.value	0x124
	.long	0x1a64
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF327
	.byte	0x16
	.byte	0x54
	.long	0x1af6
	.uleb128 0x5
	.byte	0x8
	.long	0x1afc
	.uleb128 0x19
	.long	0x1b08
	.byte	0x1
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x20
	.long	0x1b27
	.byte	0x8
	.byte	0x15
	.byte	0x24
	.uleb128 0x1f
	.long	.LASF328
	.byte	0x15
	.byte	0x20
	.long	0x1aeb
	.uleb128 0x1f
	.long	.LASF329
	.byte	0x15
	.byte	0x22
	.long	0x1b43
	.byte	0x0
	.uleb128 0x19
	.long	0x1b3d
	.byte	0x1
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x1b3d
	.uleb128 0x1a
	.long	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a1f
	.uleb128 0x5
	.byte	0x8
	.long	0x1b27
	.uleb128 0xc
	.long	0x1b90
	.long	.LASF330
	.byte	0x98
	.byte	0x15
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF331
	.byte	0x15
	.byte	0x24
	.long	0x1b08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF332
	.byte	0x15
	.byte	0x2c
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF333
	.byte	0x15
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF334
	.byte	0x15
	.byte	0x32
	.long	0x1b90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x122b
	.uleb128 0xc
	.long	0x1c5b
	.long	.LASF335
	.byte	0xa8
	.byte	0x18
	.byte	0x24
	.uleb128 0x9
	.long	.LASF336
	.byte	0x18
	.byte	0x25
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF337
	.byte	0x18
	.byte	0x26
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF338
	.byte	0x18
	.byte	0x27
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF339
	.byte	0x18
	.byte	0x28
	.long	0x1c5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF340
	.byte	0x18
	.byte	0x29
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF341
	.byte	0x18
	.byte	0x2a
	.long	0x1aa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF342
	.byte	0x18
	.byte	0x2d
	.long	0x1c62
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF343
	.byte	0x18
	.byte	0x2e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF344
	.byte	0x18
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.long	.LASF345
	.byte	0x18
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF346
	.byte	0x18
	.byte	0x31
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF347
	.byte	0x18
	.byte	0x37
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF348
	.byte	0x18
	.byte	0x39
	.long	0x13a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c61
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x8
	.long	0x1b96
	.uleb128 0xc
	.long	0x1ce5
	.long	.LASF349
	.byte	0x20
	.byte	0x18
	.byte	0x59
	.uleb128 0x9
	.long	.LASF350
	.byte	0x18
	.byte	0x5a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF351
	.byte	0x18
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF352
	.byte	0x18
	.byte	0x5c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF353
	.byte	0x18
	.byte	0x5d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF354
	.byte	0x18
	.byte	0x5e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF355
	.byte	0x18
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF356
	.byte	0x18
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF357
	.byte	0x18
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0xc
	.long	0x1d61
	.long	.LASF358
	.byte	0x28
	.byte	0x1
	.byte	0x4d
	.uleb128 0x13
	.string	"fd"
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF241
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF359
	.byte	0x1
	.byte	0x50
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF360
	.byte	0x1
	.byte	0x53
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF361
	.byte	0x1
	.byte	0x54
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF362
	.byte	0x1
	.byte	0x55
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF363
	.byte	0x1
	.byte	0x56
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF364
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.long	.LASF358
	.byte	0x1
	.byte	0x59
	.long	0x1ce5
	.uleb128 0xc
	.long	0x1da4
	.long	.LASF365
	.byte	0xd0
	.byte	0x1
	.byte	0xec
	.uleb128 0x9
	.long	.LASF366
	.byte	0x1
	.byte	0xed
	.long	0x1530
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF335
	.byte	0x1
	.byte	0xee
	.long	0x1b96
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF243
	.byte	0x1
	.byte	0xef
	.long	0x1da4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d6c
	.uleb128 0x2
	.long	.LASF365
	.byte	0x1
	.byte	0xf0
	.long	0x1d6c
	.uleb128 0x24
	.long	0x1e2f
	.long	.LASF368
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x3f
	.quad	.LFB261
	.quad	.LFE261
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.byte	0x5d
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF227
	.byte	0x1
	.byte	0x5d
	.long	0x6f
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF89
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.byte	0x5f
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"fd"
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1d61
	.uleb128 0x29
	.long	0x1e6e
	.long	.LASF369
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.quad	.LFB264
	.quad	.LFE264
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF370
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"env"
	.byte	0x1
	.byte	0xf9
	.long	0x1e6e
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1032
	.uleb128 0x2a
	.long	0x1ec4
	.byte	0x1
	.long	.LASF371
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB265
	.quad	.LFE265
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"act"
	.byte	0x1
	.value	0x108
	.long	0x1b49
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x2b
	.string	"ai"
	.byte	0x1
	.value	0x115
	.long	0x1c68
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x1f1f
	.byte	0x1
	.long	.LASF372
	.byte	0x1
	.value	0x120
	.byte	0x1
	.quad	.LFB266
	.quad	.LFE266
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"acb"
	.byte	0x1
	.value	0x121
	.long	0x1f1f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF373
	.byte	0x1
	.value	0x121
	.long	0x1f25
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.long	.LASF393
	.byte	0x1
	.value	0x145
	.quad	.L20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1daa
	.uleb128 0x5
	.byte	0x8
	.long	0x1f1f
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF377
	.byte	0x1
	.value	0x171
	.byte	0x1
	.quad	.LFB270
	.quad	.LFE270
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	0x1f77
	.byte	0x1
	.long	.LASF374
	.byte	0x1
	.value	0x157
	.byte	0x1
	.quad	.LFB268
	.quad	.LFE268
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x158
	.long	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x1fb6
	.byte	0x1
	.long	.LASF375
	.byte	0x1
	.value	0x162
	.byte	0x1
	.quad	.LFB269
	.quad	.LFE269
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x163
	.long	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF376
	.byte	0x1
	.value	0x164
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF378
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.quad	.LFB267
	.quad	.LFE267
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x202a
	.long	.LASF379
	.byte	0x1
	.value	0x1b1
	.byte	0x1
	.quad	.LFB274
	.quad	.LFE274
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF380
	.byte	0x1
	.value	0x1b0
	.long	0x16e0
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1b2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.string	"acb"
	.byte	0x1
	.value	0x1b3
	.long	0x1f1f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF373
	.byte	0x1
	.value	0x1b4
	.long	0x1f25
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x30
	.long	0x2063
	.long	.LASF381
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.quad	.LFB275
	.quad	.LFE275
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x1cb
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1cd
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.long	0x20ae
	.long	.LASF382
	.byte	0x1
	.value	0x1d5
	.byte	0x1
	.long	0x3f
	.quad	.LFB276
	.quad	.LFE276
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x1d4
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF383
	.byte	0x1
	.value	0x1d4
	.long	0xeb
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1d6
	.long	0x1e2f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x33
	.long	0x2117
	.long	.LASF384
	.byte	0x1
	.value	0x20f
	.byte	0x1
	.long	0x3f
	.quad	.LFB278
	.quad	.LFE278
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF227
	.byte	0x1
	.value	0x20d
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF385
	.byte	0x1
	.value	0x20d
	.long	0xeb
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF228
	.byte	0x1
	.value	0x20e
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF89
	.byte	0x1
	.value	0x20e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x210
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	0x2150
	.long	.LASF386
	.byte	0x1
	.value	0x21f
	.byte	0x1
	.quad	.LFB279
	.quad	.LFE279
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x21e
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x220
	.long	0x1e2f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x33
	.long	0x21d2
	.long	.LASF387
	.byte	0x1
	.value	0x278
	.byte	0x1
	.long	0x3f
	.quad	.LFB280
	.quad	.LFE280
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x277
	.long	0x15d4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	.LASF227
	.byte	0x1
	.value	0x277
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF89
	.byte	0x1
	.value	0x277
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x279
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x27a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.LASF367
	.byte	0x1
	.value	0x27a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x27a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x33
	.long	0x221d
	.long	.LASF388
	.byte	0x1
	.value	0x2ca
	.byte	0x1
	.long	0x3f
	.quad	.LFB281
	.quad	.LFE281
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x2c9
	.long	0x15d4
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x2cb
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.long	.LASF389
	.byte	0x1
	.value	0x2cc
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x33
	.long	0x2281
	.long	.LASF390
	.byte	0x1
	.value	0x1df
	.byte	0x1
	.long	0xeb
	.quad	.LFB277
	.quad	.LFE277
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x1de
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1e0
	.long	0x1e2f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x1e1
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF207
	.byte	0x1
	.value	0x1e2
	.long	0xeb
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1ea
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.long	0x22fe
	.long	.LASF391
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x3f
	.quad	.LFB263
	.quad	.LFE263
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.byte	0xc5
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.byte	0xc5
	.long	0xeb
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.byte	0xc6
	.long	0x104a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.long	.LASF392
	.byte	0x1
	.byte	0xc6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.byte	0xc8
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x35
	.long	.LASF394
	.byte	0x1
	.byte	0xe4
	.quad	.L109
	.byte	0x0
	.uleb128 0x24
	.long	0x237b
	.long	.LASF395
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x3f
	.quad	.LFB262
	.quad	.LFE262
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.string	"bs"
	.byte	0x1
	.byte	0x90
	.long	0x15d4
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.byte	0x90
	.long	0xeb
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.byte	0x91
	.long	0x122d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.long	.LASF392
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.byte	0x93
	.long	0x1e2f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x94
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x35
	.long	.LASF396
	.byte	0x1
	.byte	0xc0
	.quad	.L116
	.byte	0x0
	.uleb128 0x33
	.long	0x240c
	.long	.LASF397
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	0x1f1f
	.quad	.LFB271
	.quad	.LFE271
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x175
	.long	0x15d4
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF398
	.byte	0x1
	.value	0x176
	.long	0xeb
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x176
	.long	0x122d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF399
	.byte	0x1
	.value	0x176
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.string	"cb"
	.byte	0x1
	.value	0x177
	.long	0x16e6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	.LASF189
	.byte	0x1
	.value	0x177
	.long	0xcd
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x179
	.long	0x1e2f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.string	"acb"
	.byte	0x1
	.value	0x17a
	.long	0x1f1f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x33
	.long	0x2490
	.long	.LASF400
	.byte	0x1
	.value	0x1a3
	.byte	0x1
	.long	0x16e0
	.quad	.LFB273
	.quad	.LFE273
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x1a0
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF398
	.byte	0x1
	.value	0x1a1
	.long	0xeb
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x1a1
	.long	0x104a
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF399
	.byte	0x1
	.value	0x1a1
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.string	"cb"
	.byte	0x1
	.value	0x1a2
	.long	0x16e6
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	.LASF189
	.byte	0x1
	.value	0x1a2
	.long	0xcd
	.byte	0x1
	.byte	0x59
	.uleb128 0x2b
	.string	"acb"
	.byte	0x1
	.value	0x1a4
	.long	0x1f1f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.long	0x2514
	.long	.LASF401
	.byte	0x1
	.value	0x193
	.byte	0x1
	.long	0x16e0
	.quad	.LFB272
	.quad	.LFE272
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x190
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF398
	.byte	0x1
	.value	0x191
	.long	0xeb
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x191
	.long	0x122d
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	.LASF399
	.byte	0x1
	.value	0x191
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.string	"cb"
	.byte	0x1
	.value	0x192
	.long	0x16e6
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	.LASF189
	.byte	0x1
	.value	0x192
	.long	0xcd
	.byte	0x1
	.byte	0x59
	.uleb128 0x2b
	.string	"acb"
	.byte	0x1
	.value	0x194
	.long	0x1f1f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.long	0x255f
	.long	.LASF402
	.byte	0x1
	.value	0x300
	.byte	0x1
	.long	0x3f
	.quad	.LFB282
	.quad	.LFE282
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x2ff
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x301
	.long	0x1e2f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x302
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x33
	.long	0x25bc
	.long	.LASF403
	.byte	0x1
	.value	0x316
	.byte	0x1
	.long	0x3f
	.quad	.LFB283
	.quad	.LFE283
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x315
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x317
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x31c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x261a
	.long	.LASF404
	.byte	0x1
	.value	0x32e
	.byte	0x1
	.long	0x3f
	.quad	.LFB284
	.quad	.LFE284
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x32d
	.long	0x15d4
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	.LASF405
	.byte	0x1
	.value	0x32d
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x32f
	.long	0x1e2f
	.byte	0x1
	.byte	0x53
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x33d
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x2665
	.long	.LASF406
	.byte	0x1
	.value	0x351
	.byte	0x1
	.long	0x3f
	.quad	.LFB285
	.quad	.LFE285
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x350
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF221
	.byte	0x1
	.value	0x350
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x352
	.long	0x1e2f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x33
	.long	0x26be
	.long	.LASF407
	.byte	0x1
	.value	0x363
	.byte	0x1
	.long	0x3f
	.quad	.LFB286
	.quad	.LFE286
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.string	"bs"
	.byte	0x1
	.value	0x362
	.long	0x15d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"req"
	.byte	0x1
	.value	0x362
	.long	0x38
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x362
	.long	0xcd
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x364
	.long	0x1e2f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x37
	.long	.LASF408
	.byte	0xc
	.byte	0x91
	.long	0x365
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF409
	.byte	0xc
	.byte	0x92
	.long	0x365
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.long	.LASF410
	.byte	0x1b
	.value	0x32c
	.long	0x1e6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF411
	.byte	0x1c
	.byte	0x26
	.long	0x122d
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.long	.LASF412
	.byte	0x1b
	.value	0x376
	.long	0x122d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF413
	.byte	0x1d
	.byte	0xd
	.long	0x270e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x1214
	.uleb128 0x39
	.long	.LASF414
	.byte	0x1
	.value	0x224
	.long	0x1263
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_raw
	.uleb128 0x39
	.long	.LASF415
	.byte	0x1
	.value	0x384
	.long	0x1263
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_host_device
	.uleb128 0x3a
	.long	.LASF416
	.byte	0x3
	.byte	0x94
	.long	0x15d4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
	.uleb128 0x28
	.long	.LASF417
	.byte	0x1
	.byte	0xf2
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	aio_sig_num
	.uleb128 0x28
	.long	.LASF418
	.byte	0x1
	.byte	0xf3
	.long	0x1f1f
	.byte	0x9
	.byte	0x3
	.quad	first_aio
	.uleb128 0x28
	.long	.LASF419
	.byte	0x1
	.byte	0xf4
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	aio_initialized
	.uleb128 0x2d
	.long	.LASF420
	.byte	0x1
	.value	0x154
	.long	0x128
	.byte	0x9
	.byte	0x3
	.quad	wait_oset
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x17
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
	.uleb128 0x21
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0x0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x33
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.long	0xb6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x27ae
	.long	0x1e74
	.string	"qemu_aio_init"
	.long	0x1ec4
	.string	"qemu_aio_poll"
	.long	0x1f2b
	.string	"qemu_aio_wait_end"
	.long	0x1f47
	.string	"qemu_aio_wait_start"
	.long	0x1f77
	.string	"qemu_aio_wait"
	.long	0x1fb6
	.string	"qemu_aio_flush"
	.long	0x2714
	.string	"bdrv_raw"
	.long	0x272b
	.string	"bdrv_host_device"
	.long	0x2742
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
	.section	.debug_str,"MS",@progbits,1
.LASF215:
	.string	"jmp_next"
.LASF185:
	.string	"nb_watchpoints"
.LASF51:
	.string	"_unused2"
.LASF201:
	.string	"cpuid_ext3_features"
.LASF37:
	.string	"_fileno"
.LASF218:
	.string	"total_sectors"
.LASF306:
	.string	"_pad"
.LASF101:
	.string	"stop_condition"
.LASF257:
	.string	"bdrv_set_key"
.LASF66:
	.string	"__saved_mask"
.LASF171:
	.string	"exception_next_eip"
.LASF77:
	.string	"float32"
.LASF188:
	.string	"cpu_index"
.LASF381:
	.string	"raw_close"
.LASF140:
	.string	"fpip"
.LASF92:
	.string	"argos_paddr_t"
.LASF296:
	.string	"si_uid"
.LASF320:
	.string	"_tid"
.LASF199:
	.string	"cpuid_model"
.LASF366:
	.string	"common"
.LASF31:
	.string	"_IO_buf_end"
.LASF42:
	.string	"_shortbuf"
.LASF400:
	.string	"raw_aio_write"
.LASF246:
	.string	"BlockDriver"
.LASF349:
	.string	"aioinit"
.LASF74:
	.string	"addend"
.LASF347:
	.string	"aio_offset"
.LASF311:
	.string	"_sigpoll"
.LASF169:
	.string	"error_code"
.LASF418:
	.string	"first_aio"
.LASF23:
	.string	"_flags"
.LASF224:
	.string	"change_opaque"
.LASF243:
	.string	"next"
.LASF178:
	.string	"mem_write_vaddr"
.LASF391:
	.string	"raw_pwrite"
.LASF11:
	.string	"__off_t"
.LASF340:
	.string	"aio_nbytes"
.LASF263:
	.string	"protocol_name"
.LASF278:
	.string	"bdrv_ioctl"
.LASF402:
	.string	"raw_is_inserted"
.LASF43:
	.string	"_lock"
.LASF25:
	.string	"_IO_read_end"
.LASF394:
	.string	"label__raw_write__success"
.LASF274:
	.string	"bdrv_is_inserted"
.LASF291:
	.string	"BlockDriverCompletionFunc"
.LASF409:
	.string	"stdout"
.LASF314:
	.string	"si_errno"
.LASF130:
	.string	"t1tag"
.LASF233:
	.string	"rd_bytes"
.LASF277:
	.string	"bdrv_set_locked"
.LASF229:
	.string	"is_temporary"
.LASF309:
	.string	"_sigchld"
.LASF16:
	.string	"int32_t"
.LASF64:
	.string	"__jmpbuf"
.LASF377:
	.string	"qemu_aio_wait_end"
.LASF420:
	.string	"wait_oset"
.LASF330:
	.string	"sigaction"
.LASF129:
	.string	"t0tag"
.LASF337:
	.string	"aio_lio_opcode"
.LASF273:
	.string	"bdrv_get_info"
.LASF117:
	.string	"load_addr_type"
.LASF12:
	.string	"__off64_t"
.LASF369:
	.string	"aio_signal_handler"
.LASF209:
	.string	"tc_ptr"
.LASF69:
	.string	"target_phys_addr_t"
.LASF173:
	.string	"interrupt_request"
.LASF289:
	.string	"vm_clock_nsec"
.LASF355:
	.string	"aio_numusers"
.LASF334:
	.string	"sa_restorer"
.LASF29:
	.string	"_IO_write_end"
.LASF179:
	.string	"tlb_table"
.LASF379:
	.string	"raw_aio_cancel"
.LASF114:
	.string	"load_value"
.LASF18:
	.string	"__sigset_t"
.LASF134:
	.string	"cc_src"
.LASF127:
	.string	"regs"
.LASF404:
	.string	"raw_eject"
.LASF206:
	.string	"cs_base"
.LASF261:
	.string	"bdrv_aio_cancel"
.LASF108:
	.string	"storedby_eip"
.LASF360:
	.string	"fd_open_flags"
.LASF283:
	.string	"QEMUSnapshotInfo"
.LASF423:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF417:
	.string	"aio_sig_num"
.LASF362:
	.string	"fd_error_time"
.LASF322:
	.string	"sigevent"
.LASF268:
	.string	"bdrv_write_compressed"
.LASF126:
	.string	"CPUX86State"
.LASF156:
	.string	"sysenter_eip"
.LASF374:
	.string	"qemu_aio_wait_start"
.LASF401:
	.string	"raw_aio_read"
.LASF238:
	.string	"heads"
.LASF14:
	.string	"__clock_t"
.LASF241:
	.string	"type"
.LASF293:
	.string	"sival_ptr"
.LASF213:
	.string	"tb_next_offset"
.LASF10:
	.string	"__uid_t"
.LASF302:
	.string	"si_stime"
.LASF357:
	.string	"aio_reserved"
.LASF141:
	.string	"prev_fpip"
.LASF210:
	.string	"phys_hash_next"
.LASF144:
	.string	"fpuc"
.LASF358:
	.string	"BDRVRawState"
.LASF247:
	.string	"format_name"
.LASF251:
	.string	"bdrv_read"
.LASF143:
	.string	"fpus"
.LASF102:
	.string	"logfile"
.LASF403:
	.string	"raw_media_changed"
.LASF36:
	.string	"_chain"
.LASF63:
	.string	"__jmp_buf_tag"
.LASF216:
	.string	"jmp_first"
.LASF132:
	.string	"regtags"
.LASF6:
	.string	"unsigned char"
.LASF242:
	.string	"device_name"
.LASF386:
	.string	"raw_flush"
.LASF350:
	.string	"aio_threads"
.LASF142:
	.string	"fpstt"
.LASF52:
	.string	"_IO_lock_t"
.LASF137:
	.string	"hflags"
.LASF75:
	.string	"float"
.LASF3:
	.string	"long long int"
.LASF146:
	.string	"fpregs"
.LASF380:
	.string	"blockacb"
.LASF336:
	.string	"aio_fildes"
.LASF339:
	.string	"aio_buf"
.LASF335:
	.string	"aiocb"
.LASF139:
	.string	"a20_mask"
.LASF116:
	.string	"load_addr"
.LASF170:
	.string	"exception_is_int"
.LASF72:
	.string	"addr_write"
.LASF323:
	.string	"sigev_value"
.LASF341:
	.string	"aio_sigevent"
.LASF84:
	.string	"CPU86_LDouble"
.LASF172:
	.string	"smbase"
.LASF408:
	.string	"stdin"
.LASF383:
	.string	"offset"
.LASF113:
	.string	"instruction_netidx"
.LASF414:
	.string	"bdrv_raw"
.LASF345:
	.string	"__error_code"
.LASF284:
	.string	"id_str"
.LASF183:
	.string	"singlestep_enabled"
.LASF354:
	.string	"aio_debug"
.LASF28:
	.string	"_IO_write_ptr"
.LASF97:
	.string	"netidx"
.LASF203:
	.string	"envmap"
.LASF95:
	.string	"argos_rtag"
.LASF109:
	.string	"executed_eip"
.LASF207:
	.string	"size"
.LASF415:
	.string	"bdrv_host_device"
.LASF226:
	.string	"boot_sector_data"
.LASF21:
	.string	"FILE"
.LASF276:
	.string	"bdrv_eject"
.LASF371:
	.string	"qemu_aio_init"
.LASF150:
	.string	"mxcsr"
.LASF155:
	.string	"sysenter_esp"
.LASF9:
	.string	"size_t"
.LASF196:
	.string	"cpuid_features"
.LASF161:
	.string	"intercept"
.LASF338:
	.string	"aio_reqprio"
.LASF280:
	.string	"BlockDriverInfo"
.LASF163:
	.string	"intercept_cr_write"
.LASF235:
	.string	"rd_ops"
.LASF406:
	.string	"raw_set_locked"
.LASF32:
	.string	"_IO_save_base"
.LASF348:
	.string	"__unused"
.LASF231:
	.string	"backing_hd"
.LASF125:
	.string	"vaddr"
.LASF100:
	.string	"running"
.LASF78:
	.string	"float64"
.LASF332:
	.string	"sa_mask"
.LASF93:
	.string	"argos_netidx_t"
.LASF176:
	.string	"current_tb"
.LASF111:
	.string	"instruction_size"
.LASF46:
	.string	"__pad2"
.LASF47:
	.string	"__pad3"
.LASF49:
	.string	"__pad5"
.LASF160:
	.string	"vm_vmcb"
.LASF184:
	.string	"watchpoint"
.LASF303:
	.string	"si_addr"
.LASF107:
	.string	"loadedby_eip"
.LASF370:
	.string	"signum"
.LASF255:
	.string	"bdrv_flush"
.LASF385:
	.string	"total_size"
.LASF294:
	.string	"sigval_t"
.LASF351:
	.string	"aio_num"
.LASF313:
	.string	"si_signo"
.LASF82:
	.string	"float_rounding_mode"
.LASF395:
	.string	"raw_pread"
.LASF292:
	.string	"sival_int"
.LASF315:
	.string	"si_code"
.LASF55:
	.string	"_next"
.LASF259:
	.string	"bdrv_aio_read"
.LASF413:
	.string	"rt_clock"
.LASF399:
	.string	"nb_sectors"
.LASF135:
	.string	"cc_dst"
.LASF267:
	.string	"bdrv_getlength"
.LASF151:
	.string	"xmm_regs"
.LASF208:
	.string	"cflags"
.LASF120:
	.string	"store_value_netidx"
.LASF15:
	.string	"__ssize_t"
.LASF221:
	.string	"locked"
.LASF22:
	.string	"__val"
.LASF253:
	.string	"bdrv_close"
.LASF286:
	.string	"vm_state_size"
.LASF384:
	.string	"raw_create"
.LASF122:
	.string	"store_addr_type"
.LASF219:
	.string	"read_only"
.LASF269:
	.string	"bdrv_snapshot_create"
.LASF167:
	.string	"jmp_env"
.LASF308:
	.string	"_timer"
.LASF211:
	.string	"page_next"
.LASF202:
	.string	"cpuid_apic_id"
.LASF252:
	.string	"bdrv_write"
.LASF91:
	.string	"MMXReg"
.LASF285:
	.string	"name"
.LASF149:
	.string	"sse_status"
.LASF177:
	.string	"mem_write_pc"
.LASF56:
	.string	"_sbuf"
.LASF237:
	.string	"cyls"
.LASF85:
	.string	"SegmentCache"
.LASF230:
	.string	"media_changed"
.LASF248:
	.string	"instance_size"
.LASF157:
	.string	"efer"
.LASF300:
	.string	"si_status"
.LASF363:
	.string	"fd_got_error"
.LASF327:
	.string	"__sighandler_t"
.LASF321:
	.string	"_sigev_thread"
.LASF343:
	.string	"__abs_prio"
.LASF4:
	.string	"short unsigned int"
.LASF136:
	.string	"cc_op"
.LASF7:
	.string	"signed char"
.LASF214:
	.string	"tb_next"
.LASF318:
	.string	"_function"
.LASF387:
	.string	"hdev_open"
.LASF103:
	.string	"instruction_cnt"
.LASF275:
	.string	"bdrv_media_changed"
.LASF272:
	.string	"bdrv_snapshot_list"
.LASF197:
	.string	"cpuid_ext_features"
.LASF227:
	.string	"filename"
.LASF392:
	.string	"count"
.LASF198:
	.string	"cpuid_xlevel"
.LASF266:
	.string	"bdrv_truncate"
.LASF83:
	.string	"floatx80_rounding_precision"
.LASF373:
	.string	"pacb"
.LASF162:
	.string	"intercept_cr_read"
.LASF186:
	.string	"watchpoint_hit"
.LASF26:
	.string	"_IO_read_base"
.LASF60:
	.string	"uint32_t"
.LASF44:
	.string	"_offset"
.LASF352:
	.string	"aio_locks"
.LASF79:
	.string	"floatx80"
.LASF19:
	.string	"sigset_t"
.LASF159:
	.string	"vm_hsave"
.LASF239:
	.string	"secs"
.LASF182:
	.string	"nb_breakpoints"
.LASF222:
	.string	"encrypted"
.LASF112:
	.string	"logged"
.LASF175:
	.string	"old_exception"
.LASF27:
	.string	"_IO_write_base"
.LASF249:
	.string	"bdrv_probe"
.LASF90:
	.string	"XMMReg"
.LASF271:
	.string	"bdrv_snapshot_delete"
.LASF153:
	.string	"mmx_t0"
.LASF324:
	.string	"sigev_signo"
.LASF187:
	.string	"next_cpu"
.LASF181:
	.string	"breakpoints"
.LASF254:
	.string	"bdrv_create"
.LASF264:
	.string	"bdrv_pread"
.LASF397:
	.string	"raw_aio_setup"
.LASF361:
	.string	"fd_open_time"
.LASF174:
	.string	"user_mode_only"
.LASF2:
	.string	"long int"
.LASF329:
	.string	"sa_sigaction"
.LASF104:
	.string	"instruction_stage"
.LASF166:
	.string	"intercept_exceptions"
.LASF123:
	.string	"store_size"
.LASF65:
	.string	"__mask_was_saved"
.LASF54:
	.string	"_IO_marker"
.LASF88:
	.string	"limit"
.LASF325:
	.string	"sigev_notify"
.LASF189:
	.string	"opaque"
.LASF368:
	.string	"raw_open"
.LASF58:
	.string	"uint8_t"
.LASF331:
	.string	"__sigaction_handler"
.LASF342:
	.string	"__next_prio"
.LASF245:
	.string	"APICState"
.LASF138:
	.string	"segs"
.LASF13:
	.string	"__pid_t"
.LASF191:
	.string	"cpuid_level"
.LASF240:
	.string	"translation"
.LASF205:
	.string	"TranslationBlock"
.LASF81:
	.string	"float_status"
.LASF260:
	.string	"bdrv_aio_write"
.LASF80:
	.string	"long double"
.LASF217:
	.string	"BlockDriverState"
.LASF115:
	.string	"load_value_netidx"
.LASF0:
	.string	"long unsigned int"
.LASF131:
	.string	"t2tag"
.LASF148:
	.string	"fp_convert"
.LASF326:
	.string	"_sigev_un"
.LASF70:
	.string	"CPUTLBEntry"
.LASF398:
	.string	"sector_num"
.LASF405:
	.string	"eject_flag"
.LASF421:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF228:
	.string	"backing_file"
.LASF5:
	.string	"char"
.LASF39:
	.string	"_old_offset"
.LASF416:
	.string	"bdrv_first"
.LASF30:
	.string	"_IO_buf_base"
.LASF154:
	.string	"sysenter_cs"
.LASF410:
	.string	"cpu_single_env"
.LASF121:
	.string	"store_addr"
.LASF99:
	.string	"argos_shellcode_context_s"
.LASF124:
	.string	"argos_shellcode_context_t"
.LASF288:
	.string	"date_nsec"
.LASF61:
	.string	"uint64_t"
.LASF50:
	.string	"_mode"
.LASF422:
	.string	"/home/remco/Projects/Argos/src/block-raw-posix.c"
.LASF53:
	.string	"_IO_FILE"
.LASF98:
	.string	"argos_rtag_t"
.LASF165:
	.string	"intercept_dr_write"
.LASF105:
	.string	"trace_stage"
.LASF364:
	.string	"fd_media_changed"
.LASF316:
	.string	"_sifields"
.LASF290:
	.string	"BlockDriverAIOCB"
.LASF204:
	.string	"apic_state"
.LASF365:
	.string	"RawAIOCB"
.LASF295:
	.string	"si_pid"
.LASF376:
	.string	"nb_sigs"
.LASF270:
	.string	"bdrv_snapshot_goto"
.LASF45:
	.string	"__pad1"
.LASF48:
	.string	"__pad4"
.LASF223:
	.string	"change_cb"
.LASF35:
	.string	"_markers"
.LASF57:
	.string	"_pos"
.LASF17:
	.string	"int64_t"
.LASF34:
	.string	"_IO_save_end"
.LASF304:
	.string	"si_band"
.LASF388:
	.string	"fd_open"
.LASF378:
	.string	"qemu_aio_flush"
.LASF382:
	.string	"raw_truncate"
.LASF76:
	.string	"double"
.LASF312:
	.string	"siginfo"
.LASF164:
	.string	"intercept_dr_read"
.LASF73:
	.string	"addr_code"
.LASF299:
	.string	"si_sigval"
.LASF282:
	.string	"vm_state_offset"
.LASF118:
	.string	"load_size"
.LASF212:
	.string	"page_addr"
.LASF265:
	.string	"bdrv_pwrite"
.LASF262:
	.string	"aiocb_size"
.LASF232:
	.string	"sync_aiocb"
.LASF396:
	.string	"label__raw_read__success"
.LASF411:
	.string	"phys_ram_base"
.LASF393:
	.string	"the_end"
.LASF307:
	.string	"_kill"
.LASF87:
	.string	"base"
.LASF279:
	.string	"free_aiocb"
.LASF200:
	.string	"cpuid_ext2_features"
.LASF234:
	.string	"wr_bytes"
.LASF310:
	.string	"_sigfault"
.LASF145:
	.string	"fptags"
.LASF180:
	.string	"tb_jmp_cache"
.LASF301:
	.string	"si_utime"
.LASF20:
	.string	"long long unsigned int"
.LASF375:
	.string	"qemu_aio_wait"
.LASF328:
	.string	"sa_handler"
.LASF40:
	.string	"_cur_column"
.LASF133:
	.string	"shellcode_context"
.LASF305:
	.string	"si_fd"
.LASF195:
	.string	"cpuid_version"
.LASF424:
	.string	"sigval"
.LASF33:
	.string	"_IO_backup_base"
.LASF281:
	.string	"cluster_size"
.LASF372:
	.string	"qemu_aio_poll"
.LASF346:
	.string	"__return_value"
.LASF24:
	.string	"_IO_read_ptr"
.LASF106:
	.string	"is_system_call"
.LASF236:
	.string	"wr_ops"
.LASF59:
	.string	"uint16_t"
.LASF152:
	.string	"xmm_t0"
.LASF298:
	.string	"si_overrun"
.LASF359:
	.string	"lseek_err_cnt"
.LASF317:
	.string	"siginfo_t"
.LASF190:
	.string	"cpu_model_str"
.LASF356:
	.string	"aio_idle_time"
.LASF38:
	.string	"_flags2"
.LASF419:
	.string	"aio_initialized"
.LASF407:
	.string	"raw_ioctl"
.LASF128:
	.string	"eflags"
.LASF412:
	.string	"phys_ram_dirty"
.LASF220:
	.string	"removable"
.LASF250:
	.string	"bdrv_open"
.LASF367:
	.string	"open_flags"
.LASF353:
	.string	"aio_usedba"
.LASF94:
	.string	"argos_bytemap_t"
.LASF147:
	.string	"fp_status"
.LASF287:
	.string	"date_sec"
.LASF297:
	.string	"si_tid"
.LASF389:
	.string	"last_media_present"
.LASF96:
	.string	"origin"
.LASF119:
	.string	"store_value"
.LASF68:
	.string	"target_ulong"
.LASF258:
	.string	"bdrv_make_empty"
.LASF256:
	.string	"bdrv_is_allocated"
.LASF1:
	.string	"unsigned int"
.LASF67:
	.string	"jmp_buf"
.LASF110:
	.string	"instruction"
.LASF390:
	.string	"raw_getlength"
.LASF319:
	.string	"_attribute"
.LASF8:
	.string	"short int"
.LASF192:
	.string	"cpuid_vendor1"
.LASF193:
	.string	"cpuid_vendor2"
.LASF194:
	.string	"cpuid_vendor3"
.LASF62:
	.string	"__jmp_buf"
.LASF41:
	.string	"_vtable_offset"
.LASF225:
	.string	"boot_sector_enabled"
.LASF244:
	.string	"QEMUClock"
.LASF168:
	.string	"exception_index"
.LASF344:
	.string	"__policy"
.LASF71:
	.string	"addr_read"
.LASF333:
	.string	"sa_flags"
.LASF158:
	.string	"star"
.LASF89:
	.string	"flags"
.LASF86:
	.string	"selector"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
