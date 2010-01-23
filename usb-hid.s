	.file	"usb-hid.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 32
	.type	qemu_keyboard_hid_report_descriptor, @object
	.size	qemu_keyboard_hid_report_descriptor, 63
qemu_keyboard_hid_report_descriptor:
	.byte	5
	.byte	1
	.byte	9
	.byte	6
	.byte	-95
	.byte	1
	.byte	117
	.byte	1
	.byte	-107
	.byte	8
	.byte	5
	.byte	7
	.byte	25
	.byte	-32
	.byte	41
	.byte	-25
	.byte	21
	.byte	0
	.byte	37
	.byte	1
	.byte	-127
	.byte	2
	.byte	-107
	.byte	1
	.byte	117
	.byte	8
	.byte	-127
	.byte	1
	.byte	-107
	.byte	5
	.byte	117
	.byte	1
	.byte	5
	.byte	8
	.byte	25
	.byte	1
	.byte	41
	.byte	5
	.byte	-111
	.byte	2
	.byte	-107
	.byte	1
	.byte	117
	.byte	3
	.byte	-111
	.byte	1
	.byte	-107
	.byte	6
	.byte	117
	.byte	8
	.byte	21
	.byte	0
	.byte	37
	.byte	-1
	.byte	5
	.byte	7
	.byte	25
	.byte	0
	.byte	41
	.byte	-1
	.byte	-127
	.byte	0
	.byte	-64
	.align 32
	.type	qemu_tablet_hid_report_descriptor, @object
	.size	qemu_tablet_hid_report_descriptor, 74
qemu_tablet_hid_report_descriptor:
	.byte	5
	.byte	1
	.byte	9
	.byte	1
	.byte	-95
	.byte	1
	.byte	9
	.byte	1
	.byte	-95
	.byte	0
	.byte	5
	.byte	9
	.byte	25
	.byte	1
	.byte	41
	.byte	3
	.byte	21
	.byte	0
	.byte	37
	.byte	1
	.byte	-107
	.byte	3
	.byte	117
	.byte	1
	.byte	-127
	.byte	2
	.byte	-107
	.byte	1
	.byte	117
	.byte	5
	.byte	-127
	.byte	1
	.byte	5
	.byte	1
	.byte	9
	.byte	48
	.byte	9
	.byte	49
	.byte	21
	.byte	0
	.byte	38
	.byte	-1
	.byte	127
	.byte	53
	.byte	0
	.byte	70
	.byte	-2
	.byte	127
	.byte	117
	.byte	16
	.byte	-107
	.byte	2
	.byte	-127
	.byte	2
	.byte	5
	.byte	1
	.byte	9
	.byte	56
	.byte	21
	.byte	-127
	.byte	37
	.byte	127
	.byte	53
	.byte	0
	.byte	69
	.byte	0
	.byte	117
	.byte	8
	.byte	-107
	.byte	1
	.byte	-127
	.byte	2
	.byte	-64
	.byte	-64
	.align 32
	.type	qemu_mouse_hid_report_descriptor, @object
	.size	qemu_mouse_hid_report_descriptor, 50
qemu_mouse_hid_report_descriptor:
	.byte	5
	.byte	1
	.byte	9
	.byte	2
	.byte	-95
	.byte	1
	.byte	9
	.byte	1
	.byte	-95
	.byte	0
	.byte	5
	.byte	9
	.byte	25
	.byte	1
	.byte	41
	.byte	3
	.byte	21
	.byte	0
	.byte	37
	.byte	1
	.byte	-107
	.byte	3
	.byte	117
	.byte	1
	.byte	-127
	.byte	2
	.byte	-107
	.byte	1
	.byte	117
	.byte	5
	.byte	-127
	.byte	1
	.byte	5
	.byte	1
	.byte	9
	.byte	48
	.byte	9
	.byte	49
	.byte	21
	.byte	-127
	.byte	37
	.byte	127
	.byte	117
	.byte	8
	.byte	-107
	.byte	2
	.byte	-127
	.byte	6
	.byte	-64
	.byte	-64
	.align 32
	.type	qemu_keyboard_config_descriptor, @object
	.size	qemu_keyboard_config_descriptor, 34
qemu_keyboard_config_descriptor:
	.byte	9
	.byte	2
	.byte	34
	.byte	0
	.byte	1
	.byte	1
	.byte	6
	.byte	-96
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	1
	.byte	1
	.byte	7
	.byte	9
	.byte	33
	.byte	17
	.byte	1
	.byte	0
	.byte	1
	.byte	34
	.byte	63
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	8
	.byte	0
	.byte	10
	.align 32
	.type	qemu_tablet_config_descriptor, @object
	.size	qemu_tablet_config_descriptor, 34
qemu_tablet_config_descriptor:
	.byte	9
	.byte	2
	.byte	34
	.byte	0
	.byte	1
	.byte	1
	.byte	5
	.byte	-96
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	1
	.byte	2
	.byte	7
	.byte	9
	.byte	33
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	34
	.byte	74
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	8
	.byte	0
	.byte	10
	.align 32
	.type	qemu_mouse_config_descriptor, @object
	.size	qemu_mouse_config_descriptor, 34
qemu_mouse_config_descriptor:
	.byte	9
	.byte	2
	.byte	34
	.byte	0
	.byte	1
	.byte	1
	.byte	4
	.byte	-96
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	1
	.byte	2
	.byte	7
	.byte	9
	.byte	33
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	34
	.byte	50
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	3
	.byte	0
	.byte	10
	.align 16
	.type	qemu_mouse_dev_descriptor, @object
	.size	qemu_mouse_dev_descriptor, 18
qemu_mouse_dev_descriptor:
	.byte	18
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	39
	.byte	6
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	1
	.byte	1
	.align 32
	.type	usb_hid_usage_keys, @object
	.size	usb_hid_usage_keys, 256
usb_hid_usage_keys:
	.byte	0
	.byte	41
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	45
	.byte	46
	.byte	42
	.byte	43
	.byte	20
	.byte	26
	.byte	8
	.byte	21
	.byte	23
	.byte	28
	.byte	24
	.byte	12
	.byte	18
	.byte	19
	.byte	47
	.byte	48
	.byte	40
	.byte	-32
	.byte	4
	.byte	22
	.byte	7
	.byte	9
	.byte	10
	.byte	11
	.byte	13
	.byte	14
	.byte	15
	.byte	51
	.byte	52
	.byte	53
	.byte	-31
	.byte	49
	.byte	29
	.byte	27
	.byte	6
	.byte	25
	.byte	5
	.byte	17
	.byte	16
	.byte	54
	.byte	55
	.byte	56
	.byte	-27
	.byte	85
	.byte	-30
	.byte	44
	.byte	50
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	83
	.byte	71
	.byte	95
	.byte	96
	.byte	97
	.byte	86
	.byte	92
	.byte	93
	.byte	94
	.byte	87
	.byte	89
	.byte	90
	.byte	91
	.byte	98
	.byte	99
	.byte	0
	.byte	0
	.byte	0
	.byte	68
	.byte	69
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	-24
	.byte	-23
	.byte	113
	.byte	114
	.byte	115
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-123
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-29
	.byte	-25
	.byte	101
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	88
	.byte	-28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	84
	.byte	0
	.byte	70
	.byte	-26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	72
	.byte	0
	.byte	74
	.byte	82
	.byte	75
	.byte	0
	.byte	80
	.byte	0
	.byte	79
	.byte	0
	.byte	77
	.byte	81
	.byte	78
	.byte	73
	.byte	76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.text
	.p2align 4,,15
	.type	usb_mouse_event, @function
usb_mouse_event:
.LFB113:
	.file 1 "/home/remco/Projects/Argos/src/hw/usb-hid.c"
	.loc 1 387 0
	.loc 1 389 0
	leaq	1144(%rdi), %rax
	.loc 1 391 0
	addl	%esi, 1144(%rdi)
	.loc 1 392 0
	addl	%edx, 4(%rax)
	.loc 1 393 0
	addl	%ecx, 8(%rax)
	.loc 1 394 0
	movl	%r8d, 12(%rax)
	.loc 1 395 0
	movl	$1, 1196(%rdi)
	ret
.LFE113:
	.size	usb_mouse_event, .-usb_mouse_event
	.p2align 4,,15
	.type	usb_tablet_event, @function
usb_tablet_event:
.LFB114:
	.loc 1 400 0
	.loc 1 402 0
	leaq	1144(%rdi), %rax
	.loc 1 406 0
	addl	%ecx, 8(%rax)
	.loc 1 404 0
	movl	%esi, 16(%rax)
	.loc 1 405 0
	movl	%edx, 20(%rax)
	.loc 1 407 0
	movl	%r8d, 12(%rax)
	.loc 1 408 0
	movl	$1, 1196(%rdi)
	ret
.LFE114:
	.size	usb_tablet_event, .-usb_tablet_event
	.p2align 4,,15
	.type	usb_keyboard_event, @function
usb_keyboard_event:
.LFB115:
	.loc 1 412 0
	.loc 1 419 0
	movzwl	1144(%rdi), %ecx
	movl	%esi, %eax
	.loc 1 414 0
	leaq	1144(%rdi), %r8
	.loc 1 419 0
	andl	$127, %eax
	.loc 1 422 0
	movl	$1, 1196(%rdi)
	.loc 1 419 0
	movl	%ecx, %edx
	shrw	%dx
	andl	$128, %edx
	orl	%edx, %eax
	.loc 1 420 0
	movl	%ecx, %edx
	.loc 1 419 0
	cltq
	.loc 1 420 0
	andb	$254, %dh
	.loc 1 419 0
	movzbl	usb_hid_usage_keys(%rax), %r9d
	.loc 1 424 0
	movzbl	%r9b, %eax
	cmpl	$231, %eax
	jg	.L11
	cmpl	$225, %eax
	jge	.L8
	testl	%eax, %eax
	je	.L29
	cmpl	$224, %eax
	.p2align 4,,5
	je	.L6
	movw	%dx, 1144(%rdi)
	.p2align 4,,7
.L4:
	.loc 1 443 0
	testb	%sil, %sil
	jns	.L12
	.loc 1 444 0
	movl	20(%r8), %esi
	movl	%esi, %edx
	decl	%edx
	js	.L3
	.p2align 4,,7
.L17:
	.loc 1 445 0
	movslq	%edx,%rcx
	cmpb	%r9b, 3(%r8,%rcx)
	je	.L30
	.loc 1 444 0
	decl	%edx
	jns	.L17
	rep ; ret
	.p2align 4,,7
.L11:
	.loc 1 424 0
	cmpl	$239, %eax
	movw	%dx, 1144(%rdi)
	jg	.L4
.L10:
	.loc 1 439 0
	movl	%r9d, %ecx
	movl	$1, %eax
	andl	$15, %ecx
	sall	%cl, %eax
	orw	%ax, (%r8)
	.loc 1 440 0
	ret
	.p2align 4,,7
.L8:
	.loc 1 434 0
	testb	%sil, %sil
	movw	%dx, 1144(%rdi)
	jns	.L10
	.loc 1 435 0
	movl	%r9d, %ecx
	movl	$-2, %eax
	andl	$15, %ecx
	roll	%cl, %eax
	andw	%ax, (%r8)
	.loc 1 436 0
	ret
	.p2align 4,,7
.L12:
	.loc 1 451 0
	movl	20(%r8), %esi
	movl	%esi, %edx
	jmp	.L31
	.p2align 4,,7
.L33:
	.loc 1 452 0
	movslq	%edx,%rax
	cmpb	%r9b, 3(%r8,%rax)
	je	.L3
.L31:
	.loc 1 451 0
	decl	%edx
	jns	.L33
	.loc 1 454 0
	cmpl	$15, %esi
	.p2align 4,,3
	ja	.L3
	.loc 1 455 0
	movslq	%esi,%rax
	incl	%esi
	movb	%r9b, 3(%r8,%rax)
	movl	%esi, 20(%r8)
	ret
	.p2align 4,,7
.L29:
	movw	%dx, 1144(%rdi)
.L3:
	rep ; ret
.L30:
	.loc 1 446 0
	leal	-1(%rsi), %eax
	movl	%eax, 20(%r8)
	cltq
	movzbl	3(%r8,%rax), %edx
	movb	%dl, 3(%r8,%rcx)
	.loc 1 447 0
	movb	$0, 3(%r8,%rax)
	.loc 1 448 0
	ret
.L6:
	.loc 1 429 0
	testb	$2, %dh
	je	.L8
	.loc 1 430 0
	xorb	$3, %dh
	movw	%dx, 1144(%rdi)
	.loc 1 431 0
	ret
.LFE115:
	.size	usb_keyboard_event, .-usb_keyboard_event
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"QEMU USB Mouse"
	.text
	.p2align 4,,15
	.type	usb_mouse_poll, @function
usb_mouse_poll:
.LFB117:
	.loc 1 470 0
	movq	%rbx, -32(%rsp)
.LCFI0:
	.loc 1 472 0
	leaq	1144(%rdi), %rbx
	.loc 1 470 0
	movq	%rbp, -24(%rsp)
.LCFI1:
	movq	%r12, -16(%rsp)
.LCFI2:
	movq	%r13, -8(%rsp)
.LCFI3:
	subq	$40, %rsp
.LCFI4:
	.loc 1 474 0
	movl	24(%rbx), %eax
	.loc 1 470 0
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movl	%edx, %r13d
	.loc 1 474 0
	testl	%eax, %eax
	je	.L55
.L35:
.LBB2:
	.loc 1 460 0
	movl	1144(%rbp), %eax
.LBB3:
	.loc 1 461 0
	movl	$-128, %r8d
	cmpl	%r8d, %eax
	jl	.L37
	.loc 1 463 0
	movl	$127, %r8d
	cmpl	$128, %eax
	cmovl	%eax, %r8d
.L37:
.LBE3:
.LBE2:
.LBB4:
	.loc 1 460 0
	movl	4(%rbx), %edx
.LBB5:
	.loc 1 461 0
	movl	$-128, %esi
	cmpl	%esi, %edx
	jl	.L42
	.loc 1 463 0
	movl	$127, %esi
	cmpl	$128, %edx
	cmovl	%edx, %esi
.L42:
.LBE5:
.LBE4:
.LBB6:
	.loc 1 460 0
	movl	8(%rbx), %eax
.LBB7:
	.loc 1 461 0
	movl	$-128, %edi
	cmpl	%edi, %eax
	jl	.L47
	.loc 1 463 0
	movl	$127, %edi
	cmpl	$128, %eax
	cmovl	%eax, %edi
.L47:
.LBE7:
.LBE6:
	.loc 1 489 0
	movl	12(%rbx), %ecx
	.loc 1 485 0
	subl	%esi, %edx
	.loc 1 486 0
	subl	%edi, %eax
	.loc 1 484 0
	subl	%r8d, (%rbx)
	.loc 1 485 0
	movl	%edx, 4(%rbx)
	.loc 1 490 0
	movl	$1, %edx
	.loc 1 486 0
	movl	%eax, 8(%rbx)
	.loc 1 488 0
	xorl	%eax, %eax
	.loc 1 497 0
	movb	%r8b, 1(%r12)
	.loc 1 490 0
	testb	$1, %cl
	.loc 1 498 0
	movb	%sil, 2(%r12)
	.loc 1 490 0
	cmovne	%edx, %eax
	.loc 1 492 0
	movl	%eax, %edx
	orl	$2, %edx
	testb	$2, %cl
	cmovne	%edx, %eax
	.loc 1 494 0
	movl	%eax, %edx
	orl	$4, %edx
	andl	$4, %ecx
	cmovne	%edx, %eax
	.loc 1 500 0
	cmpl	$3, %r13d
	.loc 1 496 0
	movb	%al, (%r12)
	.loc 1 499 0
	movl	$3, %eax
	.loc 1 500 0
	jle	.L54
	.loc 1 501 0
	movb	%dil, 3(%r12)
	.loc 1 502 0
	movb	$4, %al
.L54:
	.loc 1 505 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L55:
	.loc 1 475 0
	movq	%rdi, %rsi
	movl	$.LC0, %ecx
	xorl	%edx, %edx
	movl	$usb_mouse_event, %edi
	call	qemu_add_mouse_event_handler
	.loc 1 477 0
	movl	$1, 24(%rbx)
	.loc 1 475 0
	movq	%rax, 32(%rbx)
	jmp	.L35
.LFE117:
	.size	usb_mouse_poll, .-usb_mouse_poll
	.section	.rodata.str1.1
.LC1:
	.string	"QEMU USB Tablet"
	.text
	.p2align 4,,15
	.type	usb_tablet_poll, @function
usb_tablet_poll:
.LFB118:
	.loc 1 508 0
	pushq	%rbp
.LCFI5:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI6:
	.loc 1 510 0
	leaq	1144(%rdi), %rbx
	.loc 1 508 0
	subq	$8, %rsp
.LCFI7:
	.loc 1 512 0
	movl	24(%rbx), %edx
	testl	%edx, %edx
	je	.L66
.L57:
.LBB8:
	.loc 1 460 0
	movl	8(%rbx), %eax
.LBB9:
	.loc 1 461 0
	movl	$-128, %esi
	cmpl	%esi, %eax
	jl	.L59
	.loc 1 463 0
	movl	$127, %esi
	cmpl	$128, %eax
	cmovl	%eax, %esi
.L59:
.LBE9:
.LBE8:
	.loc 1 524 0
	movl	12(%rbx), %ecx
	.loc 1 519 0
	subl	%esi, %eax
	.loc 1 525 0
	movl	$1, %edx
	.loc 1 519 0
	movl	%eax, 8(%rbx)
	.loc 1 522 0
	negl	%esi
	.loc 1 523 0
	xorl	%eax, %eax
	.loc 1 525 0
	testb	$1, %cl
	cmovne	%edx, %eax
	.loc 1 527 0
	movl	%eax, %edx
	orl	$2, %edx
	testb	$2, %cl
	cmovne	%edx, %eax
	.loc 1 529 0
	movl	%eax, %edx
	orl	$4, %edx
	andl	$4, %ecx
	cmovne	%edx, %eax
	.loc 1 531 0
	movb	%al, (%rbp)
	.loc 1 532 0
	movl	16(%rbx), %eax
	movb	%al, 1(%rbp)
	.loc 1 533 0
	movl	16(%rbx), %eax
	sarl	$8, %eax
	movb	%al, 2(%rbp)
	.loc 1 534 0
	movl	20(%rbx), %eax
	movb	%al, 3(%rbp)
	.loc 1 535 0
	movl	20(%rbx), %eax
	.loc 1 536 0
	movb	%sil, 5(%rbp)
	.loc 1 535 0
	sarl	$8, %eax
	movb	%al, 4(%rbp)
	.loc 1 540 0
	addq	$8, %rsp
	movl	$6, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L66:
	.loc 1 513 0
	movq	%rdi, %rsi
	movl	$.LC1, %ecx
	movl	$1, %edx
	movl	$usb_tablet_event, %edi
	call	qemu_add_mouse_event_handler
	.loc 1 515 0
	movl	$1, 24(%rbx)
	.loc 1 513 0
	movq	%rax, 32(%rbx)
	jmp	.L57
.LFE118:
	.size	usb_tablet_poll, .-usb_tablet_poll
	.p2align 4,,15
	.type	usb_keyboard_poll, @function
usb_keyboard_poll:
.LFB119:
	.loc 1 543 0
	.loc 1 545 0
	xorl	%eax, %eax
	.loc 1 544 0
	cmpl	$1, %edx
	.loc 1 543 0
	pushq	%rbx
.LCFI8:
	.loc 1 543 0
	movq	%rdi, %rcx
	movl	%edx, %ebx
	.loc 1 544 0
	jle	.L67
	.loc 1 547 0
	movzwl	(%rdi), %eax
	.loc 1 548 0
	movb	$0, 1(%rsi)
	.loc 1 547 0
	movb	%al, (%rsi)
	.loc 1 549 0
	cmpl	$6, 20(%rdi)
	jg	.L75
	.loc 1 552 0
	cmpl	$9, %ebx
	movl	$8, %edx
	leaq	2(%rsi), %rdi
	cmovl	%ebx, %edx
	leaq	3(%rcx), %rsi
	subl	$2, %edx
	movslq	%edx,%rdx
	call	memcpy
.L72:
	.loc 1 554 0
	movl	$8, %eax
	cmpl	$9, %ebx
	cmovl	%ebx, %eax
.L67:
	.loc 1 555 0
	popq	%rbx
	ret
	.p2align 4,,7
.L75:
	.loc 1 550 0
	cmpl	$9, %ebx
	movl	$8, %edx
	leaq	2(%rsi), %rdi
	cmovl	%ebx, %edx
	movl	$1, %esi
	subl	$2, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L72
.LFE119:
	.size	usb_keyboard_poll, .-usb_keyboard_poll
	.p2align 4,,15
	.type	usb_mouse_handle_reset, @function
usb_mouse_handle_reset:
.LFB121:
	.loc 1 571 0
	.loc 1 574 0
	movl	$0, 1144(%rdi)
	.loc 1 575 0
	movl	$0, 1148(%rdi)
	.loc 1 576 0
	movl	$0, 1152(%rdi)
	.loc 1 577 0
	movl	$0, 1160(%rdi)
	.loc 1 578 0
	movl	$0, 1164(%rdi)
	.loc 1 579 0
	movl	$0, 1156(%rdi)
	.loc 1 580 0
	movl	$1, 1188(%rdi)
	ret
.LFE121:
	.size	usb_mouse_handle_reset, .-usb_mouse_handle_reset
	.p2align 4,,15
	.type	usb_keyboard_handle_reset, @function
usb_keyboard_handle_reset:
.LFB122:
	.loc 1 584 0
	pushq	%rbx
.LCFI9:
	.loc 1 587 0
	movq	%rdi, %rsi
	.loc 1 584 0
	movq	%rdi, %rbx
	.loc 1 587 0
	movl	$usb_keyboard_event, %edi
	call	qemu_add_kbd_event_handler
	.loc 1 588 0
	movl	$1, 1188(%rbx)
	popq	%rbx
	ret
.LFE122:
	.size	usb_keyboard_handle_reset, .-usb_keyboard_handle_reset
	.section	.rodata.str1.1
.LC7:
	.string	"Endpoint1 Interrupt Pipe"
.LC6:
	.string	"HID Keyboard"
.LC5:
	.string	"HID Tablet"
.LC4:
	.string	"HID Mouse"
.LC3:
	.string	"QEMU 0.9.1"
.LC2:
	.string	"1"
	.text
	.p2align 4,,15
	.type	usb_hid_handle_control, @function
usb_hid_handle_control:
.LFB123:
	.loc 1 593 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 595 0
	xorl	%ecx, %ecx
	.loc 1 597 0
	cmpl	$8459, %esi
	.loc 1 593 0
	movl	%r8d, %eax
	movq	%r9, %r8
	.loc 1 597 0
	je	.L138
	jg	.L143
	cmpl	$9, %esi
	je	.L79
	.p2align 4,,9
	jg	.L144
	cmpl	$3, %esi
	.p2align 4,,7
	je	.L85
	.p2align 4,,9
	jg	.L145
	decl	%esi
	.p2align 4,,8
	jne	.L84
	.loc 1 605 0
	decl	%edx
	.p2align 4,,9
	jne	.L84
	.loc 1 606 0
	movl	$0, 1128(%rdi)
	.p2align 4,,4
	jmp	.L79
	.p2align 4,,7
.L143:
	.loc 1 597 0
	cmpl	$32778, %esi
	.p2align 4,,3
	je	.L114
	.p2align 4,,4
	jg	.L146
	cmpl	$32774, %esi
	.p2align 4,,7
	je	.L89
	.p2align 4,,9
	jg	.L147
	cmpl	$32768, %esi
	.p2align 4,,7
	jne	.L84
	.loc 1 599 0
	movl	1128(%rdi), %eax
	.loc 1 602 0
	movl	$2, %ecx
	.loc 1 601 0
	movb	$0, 1(%r9)
	.loc 1 599 0
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, (%r9)
	jmp	.L79
	.p2align 4,,7
.L138:
	.loc 1 745 0
	cmpl	$3, 1184(%rdi)
	je	.L154
.L84:
	.loc 1 760 0
	movl	$-3, %ecx
.L79:
	.loc 1 764 0
	movl	%ecx, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L154:
	.loc 1 748 0
	movl	%edx, 1188(%rdi)
	.loc 1 764 0
	movl	%ecx, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L146:
	.loc 1 597 0
	cmpl	$41217, %esi
	je	.L125
	jg	.L148
	cmpl	$33030, %esi
	.p2align 4,,7
	jne	.L84
	.loc 1 704 0
	sarl	$8, %edx
	cmpl	$34, %edx
	.p2align 4,,5
	jne	.L84
	.loc 1 706 0
	movl	1184(%rdi), %eax
	cmpl	$1, %eax
	je	.L155
	.loc 1 710 0
	cmpl	$2, %eax
	je	.L156
	.loc 1 714 0
	cmpl	$3, %eax
	jne	.L79
	.loc 1 715 0
	movq	qemu_keyboard_hid_report_descriptor(%rip), %rax
	.loc 1 717 0
	movl	$63, %ecx
	.loc 1 715 0
	movq	%rax, (%r9)
	movq	qemu_keyboard_hid_report_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_keyboard_hid_report_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_keyboard_hid_report_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movq	qemu_keyboard_hid_report_descriptor+32(%rip), %rax
	movq	%rax, 32(%r9)
	movq	qemu_keyboard_hid_report_descriptor+40(%rip), %rax
	movq	%rax, 40(%r9)
	movq	qemu_keyboard_hid_report_descriptor+48(%rip), %rax
	movq	%rax, 48(%r9)
	movl	qemu_keyboard_hid_report_descriptor+56(%rip), %eax
	movl	%eax, 56(%r9)
	movzwl	qemu_keyboard_hid_report_descriptor+60(%rip), %eax
	movw	%ax, 60(%r9)
	movzbl	qemu_keyboard_hid_report_descriptor+62(%rip), %eax
	movb	%al, 62(%r9)
	jmp	.L79
	.p2align 4,,7
.L144:
	.loc 1 597 0
	cmpl	$8457, %esi
	je	.L131
	jg	.L141
	cmpl	$11, %esi
	.p2align 4,,7
	jne	.L84
	.p2align 4,,9
	jmp	.L79
	.p2align 4,,7
.L114:
	.loc 1 696 0
	movb	$0, (%r9)
	.loc 1 697 0
	movl	$1, %ecx
.L157:
	.loc 1 764 0
	movl	%ecx, %eax
	addq	$8, %rsp
	.p2align 4,,1
	ret
.L147:
	.loc 1 597 0
	cmpl	$32776, %esi
	.p2align 4,,2
	jne	.L84
	.loc 1 697 0
	movl	$1, %ecx
	.loc 1 689 0
	movb	$1, (%r9)
	jmp	.L157
.L145:
	.loc 1 597 0
	cmpl	$5, %esi
	.p2align 4,,3
	jne	.L84
	.loc 1 621 0
	movb	%dl, 56(%rdi)
	.p2align 4,,3
	jmp	.L79
.L141:
	.loc 1 755 0
	movl	%edx, 1192(%rdi)
	.p2align 4,,2
	jmp	.L79
.L148:
	.loc 1 597 0
	cmpl	$41218, %esi
	.p2align 4,,2
	je	.L140
	cmpl	$41219, %esi
	.p2align 4,,2
	jne	.L84
	.loc 1 739 0
	cmpl	$3, 1184(%rdi)
	.p2align 4,,2
	jne	.L84
	.loc 1 742 0
	movl	1188(%rdi), %eax
	.loc 1 741 0
	movl	$1, %ecx
	.loc 1 752 0
	movb	%al, (%r8)
	jmp	.L79
.L131:
	.loc 1 733 0
	cmpl	$3, 1184(%rdi)
	jne	.L84
.LBB10:
.LBB11:
	.loc 1 559 0
	testl	%eax, %eax
.LBE11:
	.loc 1 558 0
	leaq	1144(%rdi), %rdx
.LBB12:
	.loc 1 559 0
	jle	.L79
	.loc 1 565 0
	movzbl	(%r9), %eax
	movb	%al, 2(%rdx)
	jmp	.L79
.L125:
.LBE12:
.LBE10:
	.loc 1 725 0
	movl	1184(%rdi), %edx
	cmpl	$1, %edx
	je	.L158
	.loc 1 727 0
	cmpl	$2, %edx
	je	.L159
	.loc 1 729 0
	cmpl	$3, %edx
	jne	.L79
	.loc 1 730 0
	addq	$1144, %rdi
	movl	%eax, %edx
	movq	%r9, %rsi
	call	usb_keyboard_poll
	movl	%eax, %ecx
	jmp	.L79
.L89:
	.loc 1 625 0
	movl	%edx, %eax
	sarl	$8, %eax
	cmpl	$2, %eax
	je	.L92
	.p2align 4,,3
	jg	.L111
	decl	%eax
	.p2align 4,,4
	jne	.L84
	.loc 1 627 0
	movq	qemu_mouse_dev_descriptor(%rip), %rax
	.loc 1 629 0
	movl	$18, %ecx
	.loc 1 627 0
	movq	%rax, (%r9)
	movq	qemu_mouse_dev_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movzwl	qemu_mouse_dev_descriptor+16(%rip), %eax
	movw	%ax, 16(%r9)
	jmp	.L79
.L85:
	.loc 1 613 0
	decl	%edx
	jne	.L84
	.loc 1 614 0
	movl	$1, 1128(%rdi)
	jmp	.L79
.L140:
	.loc 1 752 0
	movl	1192(%rdi), %eax
	.loc 1 751 0
	movl	$1, %ecx
	.loc 1 752 0
	movb	%al, (%r8)
	jmp	.L79
.L111:
	.loc 1 625 0
	cmpl	$3, %eax
	jne	.L84
	.loc 1 647 0
	movzbl	%dl,%eax
	cmpl	$7, %eax
	ja	.L84
	mov	%eax, %eax
	.p2align 4,,3
	jmp	*.L109(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L109:
	.quad	.L100
	.quad	.L101
	.quad	.L102
	.quad	.L103
	.quad	.L104
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.text
.L107:
	.loc 1 678 0
	movl	$.LC7, %esi
.L153:
	.loc 1 662 0
	movq	%r8, %rdi
	call	set_usb_string
	.loc 1 730 0
	movl	%eax, %ecx
	jmp	.L79
.L106:
	.loc 1 675 0
	movl	$.LC6, %esi
	jmp	.L153
.L105:
	.loc 1 672 0
	movl	$.LC5, %esi
	jmp	.L153
.L104:
	.loc 1 669 0
	movl	$.LC4, %esi
	jmp	.L153
.L103:
	.loc 1 666 0
	movl	$.LC3, %esi
	jmp	.L153
.L102:
	.loc 1 662 0
	leaq	57(%rdi), %rsi
	jmp	.L153
.L101:
	.loc 1 658 0
	movl	$.LC2, %esi
	jmp	.L153
.L100:
	.loc 1 654 0
	movl	$4, %ecx
	.loc 1 650 0
	movb	$4, (%r9)
	.loc 1 651 0
	movb	$3, 1(%r9)
	.loc 1 652 0
	movb	$9, 2(%r9)
	.loc 1 653 0
	movb	$4, 3(%r9)
	jmp	.L79
	.p2align 4,,7
.L92:
	.loc 1 632 0
	movl	1184(%rdi), %eax
	cmpl	$1, %eax
	je	.L160
	.loc 1 636 0
	cmpl	$2, %eax
	je	.L161
	.loc 1 640 0
	cmpl	$3, %eax
	jne	.L79
	.loc 1 641 0
	movq	qemu_keyboard_config_descriptor(%rip), %rax
	movq	%rax, (%r9)
	movq	qemu_keyboard_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_keyboard_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_keyboard_config_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movzwl	qemu_keyboard_config_descriptor+32(%rip), %eax
.L152:
	.loc 1 643 0
	movl	$34, %ecx
	.loc 1 641 0
	movw	%ax, 32(%r8)
	jmp	.L79
.L158:
	.loc 1 726 0
	movl	%eax, %edx
	movq	%r9, %rsi
	call	usb_mouse_poll
	.loc 1 730 0
	movl	%eax, %ecx
	jmp	.L79
.L159:
	.loc 1 728 0
	movl	%eax, %edx
	movq	%r9, %rsi
	call	usb_tablet_poll
	.loc 1 730 0
	movl	%eax, %ecx
	jmp	.L79
.L160:
	.loc 1 633 0
	movq	qemu_mouse_config_descriptor(%rip), %rax
	movq	%rax, (%r9)
	movq	qemu_mouse_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_mouse_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_mouse_config_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movzwl	qemu_mouse_config_descriptor+32(%rip), %eax
	jmp	.L152
.L161:
	.loc 1 637 0
	movq	qemu_tablet_config_descriptor(%rip), %rax
	movq	%rax, (%r9)
	movq	qemu_tablet_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_tablet_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_tablet_config_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movzwl	qemu_tablet_config_descriptor+32(%rip), %eax
	jmp	.L152
.L155:
	.loc 1 707 0
	movq	qemu_mouse_hid_report_descriptor(%rip), %rax
	.loc 1 709 0
	movl	$50, %ecx
	.loc 1 707 0
	movq	%rax, (%r9)
	movq	qemu_mouse_hid_report_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_mouse_hid_report_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_mouse_hid_report_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movq	qemu_mouse_hid_report_descriptor+32(%rip), %rax
	movq	%rax, 32(%r9)
	movq	qemu_mouse_hid_report_descriptor+40(%rip), %rax
	movq	%rax, 40(%r9)
	movzwl	qemu_mouse_hid_report_descriptor+48(%rip), %eax
	movw	%ax, 48(%r9)
	jmp	.L79
.L156:
	.loc 1 711 0
	movq	qemu_tablet_hid_report_descriptor(%rip), %rax
	.loc 1 713 0
	movl	$74, %ecx
	.loc 1 711 0
	movq	%rax, (%r9)
	movq	qemu_tablet_hid_report_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_tablet_hid_report_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_tablet_hid_report_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movq	qemu_tablet_hid_report_descriptor+32(%rip), %rax
	movq	%rax, 32(%r9)
	movq	qemu_tablet_hid_report_descriptor+40(%rip), %rax
	movq	%rax, 40(%r9)
	movq	qemu_tablet_hid_report_descriptor+48(%rip), %rax
	movq	%rax, 48(%r9)
	movq	qemu_tablet_hid_report_descriptor+56(%rip), %rax
	movq	%rax, 56(%r9)
	movq	qemu_tablet_hid_report_descriptor+64(%rip), %rax
	movq	%rax, 64(%r9)
	movzwl	qemu_tablet_hid_report_descriptor+72(%rip), %eax
	movw	%ax, 72(%r9)
	jmp	.L79
.LFE123:
	.size	usb_hid_handle_control, .-usb_hid_handle_control
	.p2align 4,,15
	.type	usb_hid_handle_data, @function
usb_hid_handle_data:
.LFB124:
	.loc 1 767 0
	subq	$8, %rsp
.LCFI11:
	.loc 1 769 0
	xorl	%ecx, %ecx
	.loc 1 771 0
	cmpl	$105, (%rsi)
	je	.L177
.L173:
	.loc 1 791 0
	movl	$-3, %ecx
.L163:
	.loc 1 794 0
	movl	%ecx, %eax
.L162:
	.loc 1 795 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L177:
	.loc 1 773 0
	cmpb	$1, 5(%rsi)
	jne	.L173
	.loc 1 775 0
	cmpq	$0, 1192(%rdi)
	.loc 1 776 0
	movl	$-2, %eax
	.loc 1 775 0
	je	.L162
	.loc 1 778 0
	movl	1184(%rdi), %edx
	.loc 1 777 0
	movl	$0, 1196(%rdi)
	.loc 1 778 0
	cmpl	$1, %edx
	je	.L178
	.loc 1 780 0
	cmpl	$2, %edx
	je	.L179
	.loc 1 782 0
	cmpl	$3, %edx
	jne	.L163
	.loc 1 783 0
	movl	16(%rsi), %edx
	movq	8(%rsi), %rsi
	addq	$1144, %rdi
	call	usb_keyboard_poll
	movl	%eax, %ecx
.L180:
	.loc 1 794 0
	movl	%ecx, %eax
	jmp	.L162
.L178:
	.loc 1 779 0
	movl	16(%rsi), %edx
	movq	8(%rsi), %rsi
	call	usb_mouse_poll
	.loc 1 783 0
	movl	%eax, %ecx
	jmp	.L180
.L179:
	.loc 1 781 0
	movl	16(%rsi), %edx
	movq	8(%rsi), %rsi
	call	usb_tablet_poll
	.loc 1 783 0
	movl	%eax, %ecx
	jmp	.L180
.LFE124:
	.size	usb_hid_handle_data, .-usb_hid_handle_data
	.p2align 4,,15
	.type	usb_hid_handle_destroy, @function
usb_hid_handle_destroy:
.LFB125:
	.loc 1 798 0
	pushq	%rbx
.LCFI12:
	.loc 1 801 0
	cmpl	$3, 1184(%rdi)
	.loc 1 798 0
	movq	%rdi, %rbx
	.loc 1 801 0
	je	.L182
	.loc 1 802 0
	movq	1176(%rdi), %rdi
	call	qemu_remove_mouse_event_handler
.L182:
	.loc 1 804 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE125:
	.size	usb_hid_handle_destroy, .-usb_hid_handle_destroy
	.p2align 4,,15
.globl usb_tablet_init
	.type	usb_tablet_init, @function
usb_tablet_init:
.LFB126:
	.loc 1 808 0
	pushq	%rbx
.LCFI13:
	.loc 1 811 0
	movl	$1200, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 813 0
	xorl	%eax, %eax
	.loc 1 812 0
	testq	%rbx, %rbx
	je	.L183
	.loc 1 825 0
	leaq	57(%rbx), %rdi
	.loc 1 814 0
	movl	$1, 24(%rbx)
	.loc 1 815 0
	movq	$usb_generic_handle_packet, 8(%rbx)
	.loc 1 817 0
	movq	$usb_mouse_handle_reset, 32(%rbx)
	.loc 1 818 0
	movq	$usb_hid_handle_control, 40(%rbx)
	.loc 1 825 0
	movl	$.LC1, %edx
	.loc 1 819 0
	movq	$usb_hid_handle_data, 48(%rbx)
	.loc 1 820 0
	movq	$usb_hid_handle_destroy, 16(%rbx)
	.loc 1 825 0
	movl	$32, %esi
	.loc 1 821 0
	movl	$2, 1184(%rbx)
	.loc 1 823 0
	movl	$1, 1196(%rbx)
	.loc 1 825 0
	call	pstrcpy
	.loc 1 827 0
	movq	%rbx, %rax
.L183:
	.loc 1 828 0
	popq	%rbx
	ret
.LFE126:
	.size	usb_tablet_init, .-usb_tablet_init
	.p2align 4,,15
.globl usb_mouse_init
	.type	usb_mouse_init, @function
usb_mouse_init:
.LFB127:
	.loc 1 831 0
	pushq	%rbx
.LCFI14:
	.loc 1 834 0
	movl	$1200, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 836 0
	xorl	%eax, %eax
	.loc 1 835 0
	testq	%rbx, %rbx
	je	.L185
	.loc 1 848 0
	leaq	57(%rbx), %rdi
	.loc 1 837 0
	movl	$1, 24(%rbx)
	.loc 1 838 0
	movq	$usb_generic_handle_packet, 8(%rbx)
	.loc 1 840 0
	movq	$usb_mouse_handle_reset, 32(%rbx)
	.loc 1 841 0
	movq	$usb_hid_handle_control, 40(%rbx)
	.loc 1 848 0
	movl	$.LC0, %edx
	.loc 1 842 0
	movq	$usb_hid_handle_data, 48(%rbx)
	.loc 1 843 0
	movq	$usb_hid_handle_destroy, 16(%rbx)
	.loc 1 848 0
	movl	$32, %esi
	.loc 1 844 0
	movl	$1, 1184(%rbx)
	.loc 1 846 0
	movl	$1, 1196(%rbx)
	.loc 1 848 0
	call	pstrcpy
	.loc 1 850 0
	movq	%rbx, %rax
.L185:
	.loc 1 851 0
	popq	%rbx
	ret
.LFE127:
	.size	usb_mouse_init, .-usb_mouse_init
	.section	.rodata.str1.1
.LC8:
	.string	"QEMU USB Keyboard"
	.text
	.p2align 4,,15
.globl usb_keyboard_init
	.type	usb_keyboard_init, @function
usb_keyboard_init:
.LFB128:
	.loc 1 854 0
	pushq	%rbx
.LCFI15:
	.loc 1 857 0
	movl	$1200, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 859 0
	xorl	%eax, %eax
	.loc 1 858 0
	testq	%rbx, %rbx
	je	.L187
	.loc 1 869 0
	leaq	57(%rbx), %rdi
	.loc 1 860 0
	movl	$1, 24(%rbx)
	.loc 1 861 0
	movq	$usb_generic_handle_packet, 8(%rbx)
	.loc 1 863 0
	movq	$usb_keyboard_handle_reset, 32(%rbx)
	.loc 1 864 0
	movq	$usb_hid_handle_control, 40(%rbx)
	.loc 1 869 0
	movl	$.LC8, %edx
	.loc 1 865 0
	movq	$usb_hid_handle_data, 48(%rbx)
	.loc 1 866 0
	movq	$usb_hid_handle_destroy, 16(%rbx)
	.loc 1 869 0
	movl	$32, %esi
	.loc 1 867 0
	movl	$3, 1184(%rbx)
	.loc 1 869 0
	call	pstrcpy
	.loc 1 871 0
	movq	%rbx, %rax
.L187:
	.loc 1 872 0
	popq	%rbx
	ret
.LFE128:
	.size	usb_keyboard_init, .-usb_keyboard_init
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI0-.LFB117
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI5-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI8-.LFB119
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
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI9-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI10-.LFB123
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI11-.LFB124
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI12-.LFB125
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
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI13-.LFB126
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI14-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI15-.LFB128
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE26:
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI0-.LFB117
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI5-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI8-.LFB119
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
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI9-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI10-.LFB123
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI11-.LFB124
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI12-.LFB125
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
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI13-.LFB126
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI14-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI15-.LFB128
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE27:
	.file 2 "/home/remco/Projects/Argos/src/hw/usb.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "./console.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xf13
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF131
	.byte	0x1
	.long	.LASF132
	.long	.LASF133
	.uleb128 0x2
	.long	.LASF9
	.byte	0x8
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
	.byte	0x7
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0x8e
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0xba
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.long	0x286
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x9
	.long	0x2c4
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0x7
	.long	0x2e0
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0x7
	.long	0x2f6
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x32
	.long	0x62
	.uleb128 0xd
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0xd
	.long	0x31c
	.uleb128 0xe
	.long	0x33c
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x9
	.long	0x38f
	.long	.LASF51
	.byte	0x28
	.byte	0x4
	.byte	0xf
	.uleb128 0xc
	.long	.LASF52
	.byte	0x4
	.byte	0x10
	.long	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x4
	.byte	0x11
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF55
	.byte	0x4
	.byte	0x13
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF56
	.byte	0x4
	.byte	0x16
	.long	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x33c
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x17
	.long	0x33c
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF57
	.byte	0x2
	.byte	0x70
	.long	0x3b7
	.uleb128 0x10
	.long	0x4a9
	.long	.LASF57
	.value	0x478
	.byte	0x2
	.byte	0x70
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x75
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x76
	.long	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF60
	.byte	0x2
	.byte	0x77
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF61
	.byte	0x2
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF62
	.byte	0x2
	.byte	0x7e
	.long	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.byte	0x80
	.long	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.byte	0x81
	.long	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF65
	.byte	0x2
	.byte	0x82
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF66
	.byte	0x2
	.byte	0x83
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xc
	.long	.LASF67
	.byte	0x2
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.long	.LASF68
	.byte	0x2
	.byte	0x86
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF69
	.byte	0x2
	.byte	0x87
	.long	0x5b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xc
	.long	.LASF71
	.byte	0x2
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x2
	.byte	0x71
	.long	0x4b4
	.uleb128 0x9
	.long	0x53f
	.long	.LASF74
	.byte	0x38
	.byte	0x2
	.byte	0x71
	.uleb128 0x11
	.string	"pid"
	.byte	0x2
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x9f
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF76
	.byte	0x2
	.byte	0xa0
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0xa1
	.long	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"len"
	.byte	0x2
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.byte	0xa4
	.long	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF80
	.byte	0x2
	.byte	0xa6
	.long	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF81
	.byte	0x2
	.byte	0xa7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x12
	.long	0x554
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x554
	.uleb128 0xf
	.long	0x55a
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ac
	.uleb128 0x6
	.byte	0x8
	.long	0x4a9
	.uleb128 0x6
	.byte	0x8
	.long	0x53f
	.uleb128 0xe
	.long	0x572
	.byte	0x1
	.uleb128 0xf
	.long	0x554
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x566
	.uleb128 0x12
	.long	0x5a1
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x554
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3a6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x578
	.uleb128 0x7
	.long	0x5b7
	.long	0x2f6
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x5c8
	.long	0x2f6
	.uleb128 0x13
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x2
	.byte	0x99
	.long	0x5d3
	.uleb128 0xe
	.long	0x5e4
	.byte	0x1
	.uleb128 0xf
	.long	0x55a
	.uleb128 0xf
	.long	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c8
	.uleb128 0x9
	.long	0x660
	.long	.LASF83
	.byte	0x28
	.byte	0x1
	.byte	0x2e
	.uleb128 0x11
	.string	"dx"
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"dy"
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"dz"
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF84
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF85
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF86
	.byte	0x1
	.byte	0x32
	.long	0x660
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x39b
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1
	.byte	0x33
	.long	0x5ea
	.uleb128 0x9
	.long	0x6b6
	.long	.LASF87
	.byte	0x18
	.byte	0x1
	.byte	0x35
	.uleb128 0xc
	.long	.LASF88
	.byte	0x1
	.byte	0x36
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF89
	.byte	0x1
	.byte	0x37
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x38
	.long	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.long	.LASF90
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x7
	.long	0x6c6
	.long	0x2f6
	.uleb128 0x8
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x1
	.byte	0x3a
	.long	0x671
	.uleb128 0x14
	.long	0x6f0
	.byte	0x28
	.byte	0x1
	.byte	0x41
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x3f
	.long	0x666
	.uleb128 0x15
	.string	"kbd"
	.byte	0x1
	.byte	0x40
	.long	0x6c6
	.byte	0x0
	.uleb128 0x10
	.long	0x751
	.long	.LASF91
	.value	0x4b0
	.byte	0x1
	.byte	0x3c
	.uleb128 0x11
	.string	"dev"
	.byte	0x1
	.byte	0x3d
	.long	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.long	0x6d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.uleb128 0xc
	.long	.LASF92
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xc
	.long	.LASF94
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xc
	.long	.LASF95
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1
	.byte	0x46
	.long	0x6f0
	.uleb128 0x17
	.long	0x7d9
	.long	.LASF96
	.byte	0x1
	.value	0x183
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x181
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"dx1"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"dy1"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dz1"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.value	0x182
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.string	"hs"
	.byte	0x1
	.value	0x184
	.long	0x7d9
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x185
	.long	0x7df
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x751
	.uleb128 0x6
	.byte	0x8
	.long	0x666
	.uleb128 0x17
	.long	0x85d
	.long	.LASF97
	.byte	0x1
	.value	0x190
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x18e
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.value	0x18f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.value	0x18f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dz"
	.byte	0x1
	.value	0x18f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.value	0x18f
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.string	"hs"
	.byte	0x1
	.value	0x191
	.long	0x7d9
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x192
	.long	0x7df
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.long	0x8d6
	.long	.LASF98
	.byte	0x1
	.value	0x19c
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0x19b
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF99
	.byte	0x1
	.value	0x19b
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"hs"
	.byte	0x1
	.value	0x19d
	.long	0x7d9
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x19e
	.long	0x8d6
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.long	.LASF100
	.byte	0x1
	.value	0x19f
	.long	0x2f6
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x19f
	.long	0x2f6
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1a0
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6c6
	.uleb128 0x1d
	.long	0x9e7
	.long	.LASF101
	.byte	0x1
	.value	0x1d6
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"hs"
	.byte	0x1
	.value	0x1d5
	.long	0x7d9
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x1d5
	.long	0x3a6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x1d5
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.string	"dx"
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.uleb128 0x1a
	.string	"dy"
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.uleb128 0x1a
	.string	"dz"
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"l"
	.byte	0x1
	.value	0x1d7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1d8
	.long	0x7df
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x998
	.long	0x9e7
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	0x9f9
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0xa05
	.uleb128 0x20
	.long	0xa11
	.byte	0x0
	.uleb128 0x1e
	.long	0x9c1
	.long	0x9e7
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x20
	.long	0x9f9
	.uleb128 0x20
	.long	0xa05
	.uleb128 0x20
	.long	0xa11
	.byte	0x0
	.uleb128 0x21
	.long	0x9e7
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.long	0x9f9
	.uleb128 0x20
	.long	0xa05
	.uleb128 0x20
	.long	0xa11
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xa1e
	.long	.LASF102
	.byte	0x1
	.value	0x1cc
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x1cb
	.long	0x3f
	.uleb128 0x24
	.long	.LASF103
	.byte	0x1
	.value	0x1cb
	.long	0x3f
	.uleb128 0x24
	.long	.LASF104
	.byte	0x1
	.value	0x1cb
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0xabd
	.long	.LASF105
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.long	0x3f
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"hs"
	.byte	0x1
	.value	0x1fb
	.long	0x7d9
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x1fb
	.long	0x3a6
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x1fb
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.string	"dz"
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.string	"l"
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1fe
	.long	0x7df
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.long	0x9e7
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x20
	.long	0x9f9
	.uleb128 0x20
	.long	0xa05
	.uleb128 0x20
	.long	0xa11
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xb09
	.long	.LASF106
	.byte	0x1
	.value	0x21f
	.byte	0x1
	.long	0x3f
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.value	0x21e
	.long	0x8d6
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.value	0x21e
	.long	0x3a6
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x21e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x17
	.long	0xb41
	.long	.LASF107
	.byte	0x1
	.value	0x23b
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.value	0x23a
	.long	0x554
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x23c
	.long	0x7d9
	.byte	0x0
	.uleb128 0x17
	.long	0xb79
	.long	.LASF108
	.byte	0x1
	.value	0x248
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.value	0x247
	.long	0x554
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x249
	.long	0x7d9
	.byte	0x0
	.uleb128 0x1d
	.long	0xc40
	.long	.LASF109
	.byte	0x1
	.value	0x251
	.byte	0x1
	.long	0x3f
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.value	0x24f
	.long	0x554
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0x24f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.value	0x24f
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.value	0x250
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.value	0x250
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.value	0x250
	.long	0x3a6
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x252
	.long	0x7d9
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x253
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF116
	.byte	0x1
	.value	0x2f7
	.quad	.L84
	.uleb128 0x21
	.long	0xc40
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1f
	.long	0xc52
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0xc5c
	.uleb128 0x20
	.long	0xc68
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xc75
	.long	.LASF114
	.byte	0x1
	.value	0x22e
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x22d
	.long	0x8d6
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x22d
	.long	0x3a6
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x22d
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0xcdb
	.long	.LASF115
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	0x3f
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.value	0x2fe
	.long	0x554
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x2fe
	.long	0x55a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x300
	.long	0x7d9
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x301
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.LASF116
	.byte	0x1
	.value	0x316
	.quad	.L173
	.byte	0x0
	.uleb128 0x17
	.long	0xd15
	.long	.LASF117
	.byte	0x1
	.value	0x31e
	.byte	0x1
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.value	0x31d
	.long	0x554
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x31f
	.long	0x7d9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x26
	.long	0xd46
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.value	0x328
	.byte	0x1
	.long	0x554
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x329
	.long	0x7d9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x26
	.long	0xd77
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.value	0x33f
	.byte	0x1
	.long	0x554
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x340
	.long	0x7d9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x26
	.long	0xda8
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.value	0x356
	.byte	0x1
	.long	0x554
	.quad	.LFB128
	.quad	.LFE128
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x357
	.long	0x7d9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x27
	.long	.LASF121
	.byte	0x5
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.long	.LASF122
	.byte	0x5
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xdd2
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x11
	.byte	0x0
	.uleb128 0x28
	.long	.LASF123
	.byte	0x1
	.byte	0x49
	.long	0xde7
	.byte	0x9
	.byte	0x3
	.quad	qemu_mouse_dev_descriptor
	.uleb128 0xd
	.long	0xdc2
	.uleb128 0x7
	.long	0xdfc
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x28
	.long	.LASF124
	.byte	0x1
	.byte	0x5d
	.long	0xe11
	.byte	0x9
	.byte	0x3
	.quad	qemu_mouse_config_descriptor
	.uleb128 0xd
	.long	0xdec
	.uleb128 0x7
	.long	0xe26
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x28
	.long	.LASF125
	.byte	0x1
	.byte	0x94
	.long	0xe3b
	.byte	0x9
	.byte	0x3
	.quad	qemu_tablet_config_descriptor
	.uleb128 0xd
	.long	0xe16
	.uleb128 0x7
	.long	0xe50
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.byte	0xcb
	.long	0xe65
	.byte	0x9
	.byte	0x3
	.quad	qemu_keyboard_config_descriptor
	.uleb128 0xd
	.long	0xe40
	.uleb128 0x7
	.long	0xe7a
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x31
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x1
	.value	0x102
	.long	0xe90
	.byte	0x9
	.byte	0x3
	.quad	qemu_mouse_hid_report_descriptor
	.uleb128 0xd
	.long	0xe6a
	.uleb128 0x7
	.long	0xea5
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x49
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x1
	.value	0x10c
	.long	0xebb
	.byte	0x9
	.byte	0x3
	.quad	qemu_tablet_hid_report_descriptor
	.uleb128 0xd
	.long	0xe95
	.uleb128 0x7
	.long	0xed0
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x3e
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x1
	.value	0x134
	.long	0xee6
	.byte	0x9
	.byte	0x3
	.quad	qemu_keyboard_hid_report_descriptor
	.uleb128 0xd
	.long	0xec0
	.uleb128 0x7
	.long	0xefb
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x1
	.value	0x15d
	.long	0xf11
	.byte	0x9
	.byte	0x3
	.quad	usb_hid_usage_keys
	.uleb128 0xd
	.long	0xeeb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x4b
	.value	0x2
	.long	.Ldebug_info0
	.long	0xf17
	.long	0xd15
	.string	"usb_tablet_init"
	.long	0xd46
	.string	"usb_mouse_init"
	.long	0xd77
	.string	"usb_keyboard_init"
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
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF95:
	.string	"changed"
.LASF79:
	.string	"complete_opaque"
.LASF110:
	.string	"request"
.LASF24:
	.string	"_IO_save_end"
.LASF117:
	.string	"usb_hid_handle_destroy"
.LASF96:
	.string	"usb_mouse_event"
.LASF17:
	.string	"_IO_write_base"
.LASF67:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF72:
	.string	"setup_len"
.LASF22:
	.string	"_IO_save_base"
.LASF125:
	.string	"qemu_tablet_config_descriptor"
.LASF127:
	.string	"qemu_mouse_hid_report_descriptor"
.LASF104:
	.string	"vmax"
.LASF30:
	.string	"_cur_column"
.LASF101:
	.string	"usb_mouse_poll"
.LASF40:
	.string	"_mode"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF58:
	.string	"opaque"
.LASF113:
	.string	"length"
.LASF43:
	.string	"_IO_FILE"
.LASF108:
	.string	"usb_keyboard_handle_reset"
.LASF118:
	.string	"usb_tablet_init"
.LASF6:
	.string	"unsigned char"
.LASF86:
	.string	"eh_entry"
.LASF109:
	.string	"usb_hid_handle_control"
.LASF88:
	.string	"modifiers"
.LASF102:
	.string	"int_clamp"
.LASF111:
	.string	"value"
.LASF5:
	.string	"char"
.LASF73:
	.string	"setup_index"
.LASF124:
	.string	"qemu_mouse_config_descriptor"
.LASF42:
	.string	"_IO_lock_t"
.LASF119:
	.string	"usb_mouse_init"
.LASF76:
	.string	"devep"
.LASF106:
	.string	"usb_keyboard_poll"
.LASF60:
	.string	"handle_destroy"
.LASF89:
	.string	"leds"
.LASF14:
	.string	"_IO_read_ptr"
.LASF59:
	.string	"handle_packet"
.LASF92:
	.string	"kind"
.LASF47:
	.string	"_pos"
.LASF121:
	.string	"stdin"
.LASF122:
	.string	"stdout"
.LASF25:
	.string	"_markers"
.LASF61:
	.string	"speed"
.LASF54:
	.string	"qemu_put_mouse_event_absolute"
.LASF98:
	.string	"usb_keyboard_event"
.LASF112:
	.string	"index"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF75:
	.string	"devaddr"
.LASF41:
	.string	"_unused2"
.LASF103:
	.string	"vmin"
.LASF120:
	.string	"usb_keyboard_init"
.LASF29:
	.string	"_old_offset"
.LASF83:
	.string	"USBMouseState"
.LASF90:
	.string	"keys"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF128:
	.string	"qemu_tablet_hid_report_descriptor"
.LASF85:
	.string	"mouse_grabbed"
.LASF99:
	.string	"keycode"
.LASF65:
	.string	"addr"
.LASF50:
	.string	"QEMUPutMouseEvent"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF131:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF46:
	.string	"_sbuf"
.LASF68:
	.string	"setup_buf"
.LASF97:
	.string	"usb_tablet_event"
.LASF13:
	.string	"_flags"
.LASF69:
	.string	"data_buf"
.LASF53:
	.string	"qemu_put_mouse_event_opaque"
.LASF56:
	.string	"next"
.LASF129:
	.string	"qemu_keyboard_hid_report_descriptor"
.LASF34:
	.string	"_offset"
.LASF51:
	.string	"QEMUPutMouseEntry"
.LASF107:
	.string	"usb_mouse_handle_reset"
.LASF12:
	.string	"long long unsigned int"
.LASF70:
	.string	"remote_wakeup"
.LASF66:
	.string	"devname"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF63:
	.string	"handle_control"
.LASF81:
	.string	"cancel_opaque"
.LASF91:
	.string	"USBHIDState"
.LASF11:
	.string	"__off64_t"
.LASF133:
	.string	"/home/remco/Projects/Argos/src"
.LASF114:
	.string	"usb_keyboard_write"
.LASF87:
	.string	"USBKeyboardState"
.LASF55:
	.string	"qemu_put_mouse_event_name"
.LASF74:
	.string	"USBPacket"
.LASF21:
	.string	"_IO_buf_end"
.LASF62:
	.string	"handle_reset"
.LASF115:
	.string	"usb_hid_handle_data"
.LASF100:
	.string	"hid_code"
.LASF82:
	.string	"USBCallback"
.LASF8:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF94:
	.string	"idle"
.LASF130:
	.string	"usb_hid_usage_keys"
.LASF7:
	.string	"signed char"
.LASF123:
	.string	"qemu_mouse_dev_descriptor"
.LASF15:
	.string	"_IO_read_end"
.LASF84:
	.string	"buttons_state"
.LASF27:
	.string	"_fileno"
.LASF57:
	.string	"USBDevice"
.LASF80:
	.string	"cancel_cb"
.LASF126:
	.string	"qemu_keyboard_config_descriptor"
.LASF4:
	.string	"short unsigned int"
.LASF105:
	.string	"usb_tablet_poll"
.LASF93:
	.string	"protocol"
.LASF116:
	.string	"fail"
.LASF18:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"complete_cb"
.LASF52:
	.string	"qemu_put_mouse_event"
.LASF77:
	.string	"data"
.LASF71:
	.string	"setup_state"
.LASF132:
	.string	"/home/remco/Projects/Argos/src/hw/usb-hid.c"
.LASF64:
	.string	"handle_data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
