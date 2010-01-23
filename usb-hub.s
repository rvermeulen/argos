	.file	"usb-hub.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	qemu_hub_hub_descriptor, @object
	.size	qemu_hub_hub_descriptor, 7
qemu_hub_hub_descriptor:
	.byte	0
	.byte	41
	.byte	0
	.byte	10
	.byte	0
	.byte	1
	.byte	0
	.align 16
	.type	qemu_hub_config_descriptor, @object
	.size	qemu_hub_config_descriptor, 25
qemu_hub_config_descriptor:
	.byte	9
	.byte	2
	.byte	25
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	-64
	.byte	0
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	2
	.byte	0
	.byte	-1
	.align 16
	.type	qemu_hub_dev_descriptor, @object
	.size	qemu_hub_dev_descriptor, 18
qemu_hub_dev_descriptor:
	.byte	18
	.byte	1
	.byte	16
	.byte	1
	.byte	9
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	3
	.byte	2
	.byte	1
	.byte	1
	.text
	.p2align 4,,15
	.type	usb_hub_attach, @function
usb_hub_attach:
.LFB100:
	.file 1 "/home/remco/Projects/Argos/src/hw/usb-hub.c"
	.loc 1 168 0
	movq	%rbx, -24(%rsp)
.LCFI0:
	movq	%rbp, -16(%rsp)
.LCFI1:
	movq	%r12, -8(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 1 170 0
	movslq	24(%rdi),%rax
	.loc 1 168 0
	movq	%rsi, %r12
	.loc 1 170 0
	leaq	(%rax,%rax,2), %rbx
	salq	$4, %rbx
	addq	16(%rdi), %rbx
	.loc 1 172 0
	testq	%rsi, %rsi
	.loc 1 170 0
	leaq	1152(%rbx), %rbp
	.loc 1 172 0
	je	.L2
	.loc 1 173 0
	cmpq	$0, 1152(%rbx)
	jne	.L11
.L3:
	.loc 1 176 0
	movzwl	40(%rbp), %edx
	.loc 1 177 0
	orw	$1, 42(%rbp)
	.loc 1 176 0
	movl	%edx, %eax
	orl	$1, %eax
	movw	%ax, 40(%rbp)
	.loc 1 178 0
	movl	24(%r12), %ecx
	testl	%ecx, %ecx
	je	.L12
	.loc 1 181 0
	andb	$253, %ah
	movw	%ax, 40(%rbp)
.L5:
	.loc 1 182 0
	movq	%r12, (%rbp)
	.loc 1 184 0
	movq	%r12, %rdi
	.loc 1 199 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	.loc 1 184 0
	movl	$256, %esi
	.loc 1 199 0
	addq	$24, %rsp
	.loc 1 184 0
	jmp	usb_send_msg
	.p2align 4,,7
.L12:
	.loc 1 179 0
	orw	$513, %dx
	movw	%dx, 40(%rbp)
	jmp	.L5
	.p2align 4,,7
.L11:
	.loc 1 174 0
	xorl	%esi, %esi
	call	usb_attach
	.p2align 4,,2
	jmp	.L3
	.p2align 4,,7
.L2:
	.loc 1 186 0
	movq	1152(%rbx), %r12
	.loc 1 187 0
	testq	%r12, %r12
	je	.L1
	.loc 1 188 0
	movzwl	40(%rbp), %eax
	.loc 1 189 0
	movzwl	42(%rbp), %edx
	.loc 1 188 0
	movl	%eax, %esi
	.loc 1 189 0
	movl	%edx, %ecx
	.loc 1 188 0
	andl	$-2, %esi
	.loc 1 189 0
	orl	$1, %ecx
	.loc 1 190 0
	testb	$2, %sil
	je	.L9
	.loc 1 191 0
	andl	$-4, %eax
	.loc 1 192 0
	orl	$3, %edx
	.loc 1 191 0
	movw	%ax, 40(%rbp)
	.loc 1 192 0
	movw	%dx, 42(%rbp)
.L8:
	.loc 1 195 0
	movl	$257, %esi
	movq	%r12, %rdi
	call	usb_send_msg
	.loc 1 196 0
	movq	$0, 1152(%rbx)
.L1:
	.loc 1 199 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L9:
	movw	%cx, 42(%rbp)
	movw	%si, 40(%rbp)
	jmp	.L8
.LFE100:
	.size	usb_hub_attach, .-usb_hub_attach
	.p2align 4,,15
	.type	usb_hub_handle_reset, @function
usb_hub_handle_reset:
.LFB101:
	.loc 1 202 0
	.loc 1 202 0
	rep ; ret
.LFE101:
	.size	usb_hub_handle_reset, .-usb_hub_handle_reset
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"QEMU 0.9.1"
.LC0:
	.string	"314159"
.LC1:
	.string	"QEMU USB Hub"
	.text
	.p2align 4,,15
	.type	usb_hub_handle_control, @function
usb_hub_handle_control:
.LFB102:
	.loc 1 208 0
	.loc 1 212 0
	cmpl	$8961, %esi
	.loc 1 208 0
	movq	%rdi, %r8
	pushq	%rbx
.LCFI4:
	.loc 1 208 0
	movq	%r9, %rdi
	.loc 1 212 0
	je	.L62
	jg	.L86
	.loc 1 297 0
	xorl	%r9d, %r9d
	.loc 1 212 0
	cmpl	$9, %esi
	je	.L15
	.p2align 4,,7
	jg	.L87
	cmpl	$3, %esi
	.p2align 4,,5
	je	.L23
	.p2align 4,,9
	jg	.L88
	decl	%esi
	.p2align 4,,8
	jne	.L20
	.loc 1 220 0
	decl	%edx
	.p2align 4,,9
	jne	.L20
	.loc 1 221 0
	movl	$0, 1128(%r8)
.L64:
.LBB2:
	.loc 1 399 0
	xorl	%r9d, %r9d
	.p2align 4,,7
.L15:
.LBE2:
	.loc 1 433 0
	popq	%rbx
	movl	%r9d, %eax
	ret
	.p2align 4,,7
.L86:
	.loc 1 212 0
	cmpl	$32776, %esi
	je	.L42
	jg	.L90
	cmpl	$32768, %esi
	.p2align 4,,7
	je	.L16
	.p2align 4,,9
	jg	.L91
	cmpl	$8963, %esi
	.p2align 4,,7
	jne	.L20
.LBB3:
	.loc 1 338 0
	leal	-1(%rcx), %eax
	.loc 1 341 0
	cmpl	%eax, 1144(%r8)
	.p2align 4,,2
	jbe	.L20
	.loc 1 343 0
	mov	%eax, %eax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	%r8, %rax
	.loc 1 345 0
	cmpl	$4, %edx
	.loc 1 343 0
	leaq	1152(%rax), %rbx
	.loc 1 344 0
	movq	1152(%rax), %rdi
	.loc 1 345 0
	je	.L57
	jg	.L61
	cmpl	$2, %edx
	jne	.L20
	.loc 1 347 0
	orw	$4, 40(%rbx)
.LBE3:
.LBB4:
	.loc 1 399 0
	xorl	%r9d, %r9d
	.p2align 4,,5
	jmp	.L15
	.p2align 4,,7
.L62:
	.loc 1 367 0
	leal	-1(%rcx), %eax
	.loc 1 370 0
	cmpl	%eax, 1144(%r8)
	jbe	.L20
	.loc 1 372 0
	mov	%eax, %eax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	.loc 1 374 0
	cmpl	$20, %edx
	.loc 1 372 0
	leaq	1152(%rax,%r8), %rcx
	.loc 1 374 0
	ja	.L20
	mov	%edx, %eax
	jmp	*.L73(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L73:
	.quad	.L20
	.quad	.L65
	.quad	.L67
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L69
	.quad	.L66
	.quad	.L68
	.quad	.L70
	.quad	.L71
	.text
	.p2align 4,,7
.L87:
.LBE4:
	.loc 1 212 0
	cmpl	$513, %esi
	je	.L21
	.p2align 4,,7
	jle	.L103
	cmpl	$8193, %esi
	.p2align 4,,7
	je	.L50
	cmpl	$8195, %esi
	.p2align 4,,7
	jne	.L20
.L50:
	.loc 1 334 0
	xorl	%r9d, %r9d
	.loc 1 330 0
	cmpl	$1, %edx
	.p2align 4,,3
	jbe	.L15
	.p2align 4,,7
.L20:
	.loc 1 433 0
	popq	%rbx
	.loc 1 429 0
	movl	$-3, %r9d
	.loc 1 433 0
	movl	%r9d, %eax
	ret
	.p2align 4,,7
.L90:
	.loc 1 212 0
	cmpl	$40960, %esi
	je	.L46
	.p2align 4,,5
	jle	.L104
	cmpl	$40966, %esi
	.p2align 4,,7
	je	.L74
	cmpl	$41728, %esi
	.p2align 4,,7
	jne	.L20
.LBB5:
	.loc 1 316 0
	leal	-1(%rcx), %eax
	.loc 1 318 0
	cmpl	%eax, 1144(%r8)
	jbe	.L20
	.loc 1 320 0
	mov	%eax, %eax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	1152(%rax,%r8), %rax
	.loc 1 321 0
	movzwl	40(%rax), %edx
	movb	%dl, (%r9)
	.loc 1 322 0
	movzbw	41(%rax), %dx
	movb	%dl, 1(%r9)
	.loc 1 323 0
	movzwl	42(%rax), %edx
	movb	%dl, 2(%r9)
	.loc 1 324 0
	movzbw	43(%rax), %ax
	movb	%al, 3(%r9)
.L99:
.LBE5:
	.loc 1 433 0
	popq	%rbx
.LBB6:
	.loc 1 325 0
	movl	$4, %r9d
.LBE6:
	.loc 1 433 0
	movl	%r9d, %eax
	ret
	.p2align 4,,7
.L42:
	.loc 1 293 0
	movb	$1, (%r9)
.L100:
	.loc 1 433 0
	popq	%rbx
	.loc 1 301 0
	movl	$1, %r9d
	.loc 1 433 0
	movl	%r9d, %eax
	ret
.L91:
	.loc 1 212 0
	cmpl	$32774, %esi
	jne	.L20
	.loc 1 246 0
	movl	%edx, %eax
	sarl	$8, %eax
	cmpl	$2, %eax
	je	.L30
	.p2align 4,,3
	jg	.L41
	decl	%eax
	.p2align 4,,4
	jne	.L20
	.loc 1 248 0
	movq	qemu_hub_dev_descriptor(%rip), %rax
	movq	%rax, (%r9)
	movq	qemu_hub_dev_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movzwl	qemu_hub_dev_descriptor+16(%rip), %eax
	movw	%ax, 16(%r9)
	.loc 1 250 0
	movl	$18, %r9d
	.loc 1 433 0
	popq	%rbx
	movl	%r9d, %eax
	ret
	.p2align 4,,7
.L88:
	.loc 1 212 0
	cmpl	$5, %esi
	jne	.L20
.LBB7:
	.loc 1 399 0
	xorl	%r9d, %r9d
.LBE7:
	.loc 1 242 0
	movb	%dl, 56(%r8)
	jmp	.L15
.L103:
	.loc 1 304 0
	xorl	%r9d, %r9d
	.loc 1 212 0
	cmpl	$11, %esi
.L98:
	.loc 1 228 0
	jne	.L20
	.loc 1 433 0
	popq	%rbx
	movl	%r9d, %eax
	ret
.L104:
	.loc 1 212 0
	cmpl	$32778, %esi
	.p2align 4,,3
	jne	.L20
	.loc 1 300 0
	movb	$0, (%r9)
	.p2align 4,,5
	jmp	.L100
.L71:
.LBB8:
	.loc 1 394 0
	andw	$-17, 42(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	.p2align 4,,3
	jmp	.L15
.L70:
	.loc 1 391 0
	andw	$-9, 42(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L68:
	.loc 1 385 0
	andw	$-5, 42(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L66:
	.loc 1 379 0
	andw	$-3, 42(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L69:
	.loc 1 388 0
	andw	$-2, 42(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L67:
	.loc 1 382 0
	andw	$-5, 40(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L65:
	.loc 1 376 0
	andw	$-3, 40(%rcx)
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L21:
.LBE8:
	.loc 1 228 0
	testl	%edx, %edx
	sete	%dl
	xorl	%eax, %eax
	cmpl	$129, %ecx
	setne	%al
	.loc 1 231 0
	xorl	%r9d, %r9d
	.loc 1 228 0
	testl	%edx, %eax
	jmp	.L98
.L16:
	.loc 1 214 0
	movl	1128(%r8), %eax
	.loc 1 216 0
	movb	$0, 1(%r9)
	.loc 1 214 0
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, (%r9)
	.loc 1 217 0
	movl	$2, %r9d
	.loc 1 433 0
	popq	%rbx
	movl	%r9d, %eax
	ret
.L23:
	.loc 1 234 0
	decl	%edx
	jne	.L20
.LBB9:
	.loc 1 399 0
	xorl	%r9d, %r9d
.LBE9:
	.loc 1 235 0
	movl	$1, 1128(%r8)
	jmp	.L15
.L46:
	.loc 1 308 0
	movb	$0, (%r9)
	.loc 1 309 0
	movb	$0, 1(%r9)
	.loc 1 310 0
	movb	$0, 2(%r9)
	.loc 1 311 0
	movb	$0, 3(%r9)
	jmp	.L99
.L74:
.LBB10:
	.loc 1 405 0
	movl	qemu_hub_hub_descriptor(%rip), %eax
	.loc 1 404 0
	xorl	%r10d, %r10d
	.loc 1 411 0
	movl	$7, %ecx
	.loc 1 405 0
	movl	%eax, (%r9)
	movzwl	qemu_hub_hub_descriptor+4(%rip), %eax
	movw	%ax, 4(%r9)
	movzbl	qemu_hub_hub_descriptor+6(%rip), %eax
	movb	%al, 6(%r9)
	.loc 1 407 0
	movl	1144(%r8), %eax
	movb	%al, 2(%r9)
	.loc 1 410 0
	movl	1144(%r8), %esi
	leal	15(%rsi), %edx
	movl	%esi, %eax
	addl	$8, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	7(%rax), %r9d
	.loc 1 411 0
	cmpl	%r9d, %ecx
	jae	.L94
.L79:
	.loc 1 412 0
	mov	%ecx, %eax
	.loc 1 411 0
	incl	%ecx
	.loc 1 413 0
	incl	%r10d
	.loc 1 411 0
	cmpl	%r9d, %ecx
	.loc 1 412 0
	movb	$0, (%rax,%rdi)
	.loc 1 411 0
	jb	.L79
	movl	1144(%r8), %esi
.L94:
	.loc 1 417 0
	leal	14(%rsi), %edx
	movl	%esi, %eax
	addl	$7, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	%eax, %r9d
	jmp	.L97
.L105:
	.loc 1 419 0
	mov	%ecx, %eax
	.loc 1 420 0
	incl	%r10d
	.loc 1 418 0
	incl	%ecx
	.loc 1 419 0
	movb	$-1, (%rax,%rdi)
.L97:
	.loc 1 418 0
	cmpl	%r9d, %ecx
	jb	.L105
	.loc 1 423 0
	leal	7(%r10), %r9d
	.loc 1 424 0
	movb	%r9b, (%rdi)
.LBE10:
	.loc 1 433 0
	movl	%r9d, %eax
	popq	%rbx
	ret
.L41:
	.loc 1 246 0
	cmpl	$3, %eax
	jne	.L20
	.loc 1 263 0
	movzbl	%dl,%eax
	cmpl	$1, %eax
	je	.L35
	.p2align 4,,5
	jle	.L106
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L36
	cmpl	$3, %eax
	.p2align 4,,7
	jne	.L20
	.loc 1 282 0
	movl	$.LC2, %esi
.L101:
	call	set_usb_string
	.loc 1 433 0
	popq	%rbx
	.loc 1 282 0
	movl	%eax, %r9d
	.loc 1 433 0
	movl	%r9d, %eax
	ret
.L30:
	.loc 1 253 0
	movq	qemu_hub_config_descriptor(%rip), %rax
	movq	%rax, (%r9)
	movq	qemu_hub_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_hub_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movzbl	qemu_hub_config_descriptor+24(%rip), %eax
	movb	%al, 24(%r9)
	.loc 1 258 0
	movl	1144(%r8), %eax
	leal	15(%rax), %edx
	addl	$8, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movb	%al, 22(%r9)
	.loc 1 260 0
	movl	$25, %r9d
	.loc 1 433 0
	popq	%rbx
	movl	%r9d, %eax
	ret
.L61:
.LBB11:
	.loc 1 345 0
	cmpl	$8, %edx
	jne	.L20
	jmp	.L64
.L57:
	.loc 1 350 0
	testq	%rdi, %rdi
	.p2align 4,,7
	je	.L64
	.loc 1 351 0
	movl	$258, %esi
	.p2align 4,,7
	call	usb_send_msg
	.loc 1 352 0
	orw	$16, 42(%rbx)
	.loc 1 354 0
	orw	$2, 40(%rbx)
.LBE11:
.LBB12:
	.loc 1 399 0
	xorl	%r9d, %r9d
	jmp	.L15
.L106:
.LBE12:
	.loc 1 263 0
	testl	%eax, %eax
	jne	.L20
	.loc 1 266 0
	movb	$4, (%r9)
	.loc 1 267 0
	movb	$3, 1(%r9)
	.loc 1 268 0
	movb	$9, 2(%r9)
	.loc 1 269 0
	movb	$4, 3(%r9)
	jmp	.L99
.L35:
	.loc 1 274 0
	movl	$.LC0, %esi
	jmp	.L101
.L36:
	.loc 1 278 0
	movl	$.LC1, %esi
	jmp	.L101
.LFE102:
	.size	usb_hub_handle_control, .-usb_hub_handle_control
	.p2align 4,,15
	.type	usb_hub_handle_data, @function
usb_hub_handle_data:
.LFB103:
	.loc 1 436 0
	pushq	%rbx
.LCFI5:
	.loc 1 440 0
	cmpl	$105, (%rsi)
	.loc 1 436 0
	movq	%rsi, %r9
	.loc 1 440 0
	je	.L136
.L127:
	.loc 1 473 0
	movl	$-3, %eax
.L107:
	.loc 1 477 0
	popq	%rbx
	ret
	.p2align 4,,7
.L136:
	.loc 1 442 0
	cmpb	$1, 5(%rsi)
	jne	.L127
.LBB13:
	.loc 1 446 0
	movl	1144(%rdi), %esi
	movl	%esi, %eax
	leal	15(%rsi), %edx
	addl	$8, %eax
	movl	%eax, %r10d
	cmovs	%edx, %r10d
	.loc 1 447 0
	movl	16(%r9), %edx
	.loc 1 446 0
	sarl	$3, %r10d
	.loc 1 447 0
	cmpl	$1, %edx
	je	.L137
	.loc 1 449 0
	cmpl	%r10d, %edx
	.loc 1 450 0
	movl	$-4, %eax
	.loc 1 449 0
	jl	.L107
.L113:
	.loc 1 452 0
	xorl	%r11d, %r11d
	.loc 1 453 0
	xorl	%r8d, %r8d
	cmpl	$0, %esi
	jle	.L120
	leaq	1194(%rdi), %rax
	movl	$1, %edx
	.p2align 4,,7
.L119:
	.loc 1 455 0
	cmpw	$0, (%rax)
	je	.L117
	.loc 1 456 0
	leal	1(%r8), %ecx
	movl	%edx, %ebx
	sall	%cl, %ebx
	orl	%ebx, %r11d
.L117:
	.loc 1 453 0
	incl	%r8d
	addq	$48, %rax
	cmpl	%r8d, %esi
	jg	.L119
	.loc 1 458 0
	testl	%r11d, %r11d
	je	.L120
	.loc 1 459 0
	xorl	%r8d, %r8d
	jmp	.L135
	.p2align 4,,7
.L138:
	.loc 1 460 0
	leal	0(,%r8,8), %ecx
	movq	8(%r9), %rdx
	movl	%r11d, %eax
	movslq	%r8d,%rsi
	.loc 1 459 0
	incl	%r8d
	.loc 1 460 0
	shrl	%cl, %eax
	movb	%al, (%rdx,%rsi)
.L135:
	.loc 1 459 0
	cmpl	%r10d, %r8d
	jl	.L138
.LBE13:
	.loc 1 477 0
	popq	%rbx
.LBB14:
	.loc 1 462 0
	movl	%r10d, %eax
.LBE14:
	.loc 1 477 0
	ret
.L120:
	popq	%rbx
.LBB15:
	.loc 1 464 0
	movl	$-2, %eax
.LBE15:
	.loc 1 477 0
	ret
.L137:
.LBB16:
	.loc 1 448 0
	movl	$1, %r10d
	.p2align 4,,5
	jmp	.L113
.LBE16:
.LFE103:
	.size	usb_hub_handle_data, .-usb_hub_handle_data
	.p2align 4,,15
	.type	usb_hub_handle_packet, @function
usb_hub_handle_packet:
.LFB105:
	.loc 1 499 0
	movq	%rbx, -24(%rsp)
.LCFI6:
	movq	%rbp, -16(%rsp)
.LCFI7:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI8:
	subq	$24, %rsp
.LCFI9:
	.loc 1 505 0
	cmpl	$3, 92(%rdi)
	.loc 1 499 0
	movq	%rsi, %rbp
	.loc 1 505 0
	je	.L154
.L140:
	.loc 1 514 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	.loc 1 515 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 514 0
	jmp	usb_generic_handle_packet
	.p2align 4,,7
.L154:
	.loc 1 505 0
	movzbl	56(%rdi), %eax
	testb	%al, %al
	je	.L140
	cmpb	%al, 4(%rsi)
	je	.L140
	movl	(%rsi), %ecx
	cmpl	$45, %ecx
	sete	%dl
	cmpl	$225, %ecx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L155
.L141:
.LBB17:
.LBB18:
	.loc 1 485 0
	movl	1144(%rbx), %ecx
	xorl	%r12d, %r12d
	cmpl	$0, %ecx
	.p2align 4,,7
.L153:
	jle	.L150
	.loc 1 486 0
	movslq	%r12d,%rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	%rbx, %rax
	leaq	1152(%rax), %rdx
	.loc 1 487 0
	movq	1152(%rax), %rax
	.loc 1 488 0
	testq	%rax, %rax
	je	.L144
	testb	$2, 40(%rdx)
	jne	.L156
.L144:
	.loc 1 485 0
	incl	%r12d
	cmpl	%r12d, %ecx
	jmp	.L153
.L156:
	.loc 1 489 0
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	*8(%rax)
	.loc 1 490 0
	cmpl	$-1, %eax
	jne	.L147
	movl	1144(%rbx), %ecx
	.loc 1 485 0
	incl	%r12d
	cmpl	%r12d, %ecx
	jmp	.L153
.L155:
.LBE18:
.LBE17:
	.loc 1 505 0
	cmpl	$105, %ecx
	jne	.L140
	jmp	.L141
.L150:
.LBB19:
.LBB20:
	.loc 1 494 0
	movl	$-1, %eax
.L147:
.LBE20:
.LBE19:
	.loc 1 515 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE105:
	.size	usb_hub_handle_packet, .-usb_hub_handle_packet
	.p2align 4,,15
	.type	usb_hub_handle_destroy, @function
usb_hub_handle_destroy:
.LFB106:
	.loc 1 518 0
	.loc 1 521 0
	jmp	qemu_free
.LFE106:
	.size	usb_hub_handle_destroy, .-usb_hub_handle_destroy
	.p2align 4,,15
.globl usb_hub_init
	.type	usb_hub_init, @function
usb_hub_init:
.LFB107:
	.loc 1 525 0
	pushq	%r12
.LCFI10:
	.loc 1 531 0
	xorl	%eax, %eax
	.loc 1 530 0
	cmpl	$8, %edi
	.loc 1 525 0
	pushq	%rbp
.LCFI11:
	pushq	%rbx
.LCFI12:
	.loc 1 525 0
	movl	%edi, %ebx
	.loc 1 530 0
	jg	.L158
	.loc 1 532 0
	movl	$1536, %edi
	call	qemu_mallocz
	movq	%rax, %rbp
	.loc 1 534 0
	xorl	%eax, %eax
	.loc 1 533 0
	testq	%rbp, %rbp
	je	.L158
	.loc 1 544 0
	leaq	57(%rbp), %rdi
	.loc 1 535 0
	movl	$1, 24(%rbp)
	.loc 1 536 0
	movq	$usb_hub_handle_packet, 8(%rbp)
	.loc 1 539 0
	movq	$usb_hub_handle_reset, 32(%rbp)
	.loc 1 540 0
	movq	$usb_hub_handle_control, 40(%rbp)
	.loc 1 544 0
	movl	$.LC1, %edx
	.loc 1 541 0
	movq	$usb_hub_handle_data, 48(%rbp)
	.loc 1 542 0
	movq	$usb_hub_handle_destroy, 16(%rbp)
	.loc 1 544 0
	movl	$32, %esi
	call	pstrcpy
	.loc 1 547 0
	xorl	%r12d, %r12d
	cmpl	$0, %ebx
	.loc 1 546 0
	movl	%ebx, 1144(%rbp)
	jmp	.L167
	.p2align 4,,7
.L168:
	.loc 1 548 0
	movslq	%r12d,%rbx
	.loc 1 549 0
	movl	%r12d, %edx
	movl	$usb_hub_attach, %ecx
	.loc 1 548 0
	leaq	(%rbx,%rbx,2), %rbx
	.loc 1 549 0
	movq	%rbp, %rsi
	.loc 1 547 0
	incl	%r12d
	.loc 1 548 0
	salq	$4, %rbx
	leaq	1152(%rbx,%rbp), %rbx
	.loc 1 549 0
	movq	%rbx, %rdi
	call	qemu_register_usb_port
	.loc 1 550 0
	movw	$256, 40(%rbx)
	.loc 1 551 0
	movw	$0, 42(%rbx)
	.loc 1 547 0
	cmpl	%r12d, 1144(%rbp)
.L167:
	jg	.L168
	.loc 1 553 0
	movq	%rbp, %rax
.L158:
	.loc 1 554 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE107:
	.size	usb_hub_init, .-usb_hub_init
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI3-.LFB100
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI4-.LFB102
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI5-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI7-.LFB105
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI10-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE12:
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI3-.LFB100
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI4-.LFB102
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
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI5-.LFB103
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI7-.LFB105
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI10-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE13:
	.file 2 "/home/remco/Projects/Argos/src/hw/usb.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xaf9
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF108
	.byte	0x1
	.long	.LASF109
	.long	.LASF110
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
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
	.byte	0x6
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
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
	.byte	0x4
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xb4
	.uleb128 0x9
	.long	0x2c4
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xba
	.uleb128 0xc
	.long	.LASF45
	.byte	0x5
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x5
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
	.byte	0x2
	.byte	0x6f
	.long	0x31c
	.uleb128 0x9
	.long	0x36f
	.long	.LASF50
	.byte	0x28
	.byte	0x2
	.byte	0x6f
	.uleb128 0xe
	.string	"dev"
	.byte	0x2
	.byte	0x92
	.long	0x517
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x2
	.byte	0x93
	.long	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x2
	.byte	0x94
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF53
	.byte	0x2
	.byte	0x95
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF54
	.byte	0x2
	.byte	0x96
	.long	0x5b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x2
	.byte	0x70
	.long	0x37a
	.uleb128 0xf
	.long	0x46c
	.long	.LASF55
	.value	0x478
	.byte	0x2
	.byte	0x70
	.uleb128 0xc
	.long	.LASF52
	.byte	0x2
	.byte	0x75
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x2
	.byte	0x76
	.long	0x523
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x2
	.byte	0x77
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x7e
	.long	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF60
	.byte	0x2
	.byte	0x80
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF61
	.byte	0x2
	.byte	0x81
	.long	0x523
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF62
	.byte	0x2
	.byte	0x82
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.byte	0x83
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.long	.LASF65
	.byte	0x2
	.byte	0x86
	.long	0x570
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF66
	.byte	0x2
	.byte	0x87
	.long	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF67
	.byte	0x2
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xc
	.long	.LASF68
	.byte	0x2
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xc
	.long	.LASF69
	.byte	0x2
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x2
	.byte	0x71
	.long	0x477
	.uleb128 0x9
	.long	0x502
	.long	.LASF71
	.byte	0x38
	.byte	0x2
	.byte	0x71
	.uleb128 0xe
	.string	"pid"
	.byte	0x2
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x9f
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0xa0
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.long	.LASF74
	.byte	0x2
	.byte	0xa1
	.long	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0xa4
	.long	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF76
	.byte	0x2
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0xa6
	.long	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.byte	0xa7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x10
	.long	0x517
	.byte	0x1
	.long	0x3f
	.uleb128 0x11
	.long	0x517
	.uleb128 0x11
	.long	0x51d
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x36f
	.uleb128 0x6
	.byte	0x8
	.long	0x46c
	.uleb128 0x6
	.byte	0x8
	.long	0x502
	.uleb128 0x12
	.long	0x535
	.byte	0x1
	.uleb128 0x11
	.long	0x517
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x529
	.uleb128 0x10
	.long	0x564
	.byte	0x1
	.long	0x3f
	.uleb128 0x11
	.long	0x517
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x3f
	.uleb128 0x11
	.long	0x564
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0x7
	.long	0x580
	.long	0x2f6
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x591
	.long	0x2f6
	.uleb128 0x13
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x2
	.byte	0x8e
	.long	0x59c
	.uleb128 0x6
	.byte	0x8
	.long	0x5a2
	.uleb128 0x12
	.long	0x5b3
	.byte	0x1
	.uleb128 0x11
	.long	0x5b3
	.uleb128 0x11
	.long	0x517
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x31c
	.uleb128 0x2
	.long	.LASF80
	.byte	0x2
	.byte	0x99
	.long	0x5ca
	.uleb128 0x12
	.long	0x5db
	.byte	0x1
	.uleb128 0x11
	.long	0x51d
	.uleb128 0x11
	.long	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bf
	.uleb128 0x9
	.long	0x618
	.long	.LASF81
	.byte	0x30
	.byte	0x1
	.byte	0x1f
	.uleb128 0xc
	.long	.LASF82
	.byte	0x1
	.byte	0x20
	.long	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x1
	.byte	0x21
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF84
	.byte	0x1
	.byte	0x22
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x1
	.byte	0x23
	.long	0x5e1
	.uleb128 0xf
	.long	0x65d
	.long	.LASF85
	.value	0x600
	.byte	0x1
	.byte	0x25
	.uleb128 0xe
	.string	"dev"
	.byte	0x1
	.byte	0x26
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF86
	.byte	0x1
	.byte	0x27
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.uleb128 0xc
	.long	.LASF87
	.byte	0x1
	.byte	0x28
	.long	0x65d
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.byte	0x0
	.uleb128 0x7
	.long	0x66d
	.long	0x618
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x1
	.byte	0x29
	.long	0x623
	.uleb128 0x14
	.long	0x6c7
	.long	.LASF89
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0xa7
	.long	0x5b3
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"dev"
	.byte	0x1
	.byte	0xa7
	.long	0x517
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xa9
	.long	0x6c7
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0xaa
	.long	0x6cd
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x66d
	.uleb128 0x6
	.byte	0x8
	.long	0x618
	.uleb128 0x14
	.long	0x6ff
	.long	.LASF90
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"dev"
	.byte	0x1
	.byte	0xc9
	.long	0x517
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0x856
	.long	.LASF91
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"dev"
	.byte	0x1
	.byte	0xce
	.long	0x517
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0xce
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.byte	0xce
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.byte	0xcf
	.long	0x564
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xd1
	.long	0x6c7
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0xd2
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.value	0x1ac
	.quad	.L20
	.uleb128 0x1c
	.long	0x7c5
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x16f
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x1
	.value	0x170
	.long	0x6cd
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"dev"
	.byte	0x1
	.value	0x171
	.long	0x517
	.byte	0x0
	.uleb128 0x1c
	.long	0x7f7
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x152
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x1
	.value	0x153
	.long	0x6cd
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"dev"
	.byte	0x1
	.value	0x154
	.long	0x517
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1c
	.long	0x81b
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x13c
	.long	0x46
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x1
	.value	0x13d
	.long	0x6cd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x194
	.long	0x46
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.value	0x194
	.long	0x46
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x194
	.long	0x46
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x8f4
	.long	.LASF97
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	0x3f
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"dev"
	.byte	0x1
	.value	0x1b3
	.long	0x517
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x1b3
	.long	0x51d
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x1b5
	.long	0x6c7
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.value	0x1b6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.value	0x1d8
	.quad	.L127
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.value	0x1bb
	.long	0x6cd
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x1
	.value	0x1bc
	.long	0x46
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x97e
	.long	.LASF100
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x3f
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"dev"
	.byte	0x1
	.value	0x1f2
	.long	0x517
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"p"
	.byte	0x1
	.value	0x1f2
	.long	0x51d
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x1f4
	.long	0x6c7
	.uleb128 0x25
	.long	0x97e
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x26
	.long	0x990
	.uleb128 0x26
	.long	0x99a
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x27
	.long	0x9a4
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x9b0
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.long	0x9bc
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.long	0x9c6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x9d3
	.long	.LASF101
	.byte	0x1
	.value	0x1e0
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x1df
	.long	0x6c7
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x1df
	.long	0x51d
	.uleb128 0x24
	.long	.LASF82
	.byte	0x1
	.value	0x1e1
	.long	0x6cd
	.uleb128 0x1f
	.string	"dev"
	.byte	0x1
	.value	0x1e2
	.long	0x517
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x1e3
	.long	0x3f
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.value	0x1e3
	.long	0x3f
	.byte	0x0
	.uleb128 0x2a
	.long	0xa0b
	.long	.LASF102
	.byte	0x1
	.value	0x206
	.byte	0x1
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x22
	.string	"dev"
	.byte	0x1
	.value	0x205
	.long	0x517
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x207
	.long	0x6c7
	.byte	0x0
	.uleb128 0x2b
	.long	0xa64
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.value	0x20d
	.byte	0x1
	.long	0x517
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF86
	.byte	0x1
	.value	0x20c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x20e
	.long	0x6c7
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x1
	.value	0x20f
	.long	0x6cd
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x210
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x2d
	.long	.LASF103
	.byte	0x4
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF104
	.byte	0x4
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xa8e
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x11
	.byte	0x0
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0x56
	.long	0xaa3
	.byte	0x9
	.byte	0x3
	.quad	qemu_hub_dev_descriptor
	.uleb128 0xd
	.long	0xa7e
	.uleb128 0x7
	.long	0xab8
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x18
	.byte	0x0
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x6b
	.long	0xacd
	.byte	0x9
	.byte	0x3
	.quad	qemu_hub_config_descriptor
	.uleb128 0xd
	.long	0xaa8
	.uleb128 0x7
	.long	0xae2
	.long	0x30c
	.uleb128 0x8
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x18
	.long	.LASF107
	.byte	0x1
	.byte	0x9a
	.long	0xaf7
	.byte	0x9
	.byte	0x3
	.quad	qemu_hub_hub_descriptor
	.uleb128 0xd
	.long	0xad2
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x15
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
	.uleb128 0x1a
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1f
	.value	0x2
	.long	.Ldebug_info0
	.long	0xafd
	.long	0xa0b
	.string	"usb_hub_init"
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF102:
	.string	"usb_hub_handle_destroy"
.LASF92:
	.string	"request"
.LASF24:
	.string	"_IO_save_end"
.LASF91:
	.string	"usb_hub_handle_control"
.LASF17:
	.string	"_IO_write_base"
.LASF64:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF69:
	.string	"setup_len"
.LASF88:
	.string	"port1"
.LASF80:
	.string	"USBCallback"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF87:
	.string	"ports"
.LASF40:
	.string	"_mode"
.LASF89:
	.string	"usb_hub_attach"
.LASF2:
	.string	"long int"
.LASF95:
	.string	"limit"
.LASF96:
	.string	"var_hub_size"
.LASF44:
	.string	"_IO_marker"
.LASF52:
	.string	"opaque"
.LASF101:
	.string	"usb_hub_broadcast_packet"
.LASF55:
	.string	"USBDevice"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF73:
	.string	"devep"
.LASF93:
	.string	"value"
.LASF5:
	.string	"char"
.LASF83:
	.string	"wPortStatus"
.LASF70:
	.string	"setup_index"
.LASF42:
	.string	"_IO_lock_t"
.LASF105:
	.string	"qemu_hub_dev_descriptor"
.LASF14:
	.string	"_IO_read_ptr"
.LASF56:
	.string	"handle_packet"
.LASF85:
	.string	"USBHubState"
.LASF47:
	.string	"_pos"
.LASF103:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF106:
	.string	"qemu_hub_config_descriptor"
.LASF71:
	.string	"USBPacket"
.LASF58:
	.string	"speed"
.LASF34:
	.string	"_offset"
.LASF53:
	.string	"index"
.LASF0:
	.string	"long unsigned int"
.LASF99:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF86:
	.string	"nb_ports"
.LASF72:
	.string	"devaddr"
.LASF41:
	.string	"_unused2"
.LASF79:
	.string	"usb_attachfn"
.LASF29:
	.string	"_old_offset"
.LASF107:
	.string	"qemu_hub_hub_descriptor"
.LASF50:
	.string	"USBPort"
.LASF3:
	.string	"long long int"
.LASF76:
	.string	"complete_opaque"
.LASF19:
	.string	"_IO_write_end"
.LASF100:
	.string	"usb_hub_handle_packet"
.LASF62:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF51:
	.string	"attach"
.LASF108:
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
.LASF81:
	.string	"USBHubPort"
.LASF13:
	.string	"_flags"
.LASF66:
	.string	"data_buf"
.LASF109:
	.string	"/home/remco/Projects/Argos/src/hw/usb-hub.c"
.LASF54:
	.string	"next"
.LASF67:
	.string	"remote_wakeup"
.LASF12:
	.string	"long long unsigned int"
.LASF63:
	.string	"devname"
.LASF48:
	.string	"uint8_t"
.LASF94:
	.string	"length"
.LASF49:
	.string	"uint16_t"
.LASF65:
	.string	"setup_buf"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF60:
	.string	"handle_control"
.LASF78:
	.string	"cancel_opaque"
.LASF11:
	.string	"__off64_t"
.LASF110:
	.string	"/home/remco/Projects/Argos/src"
.LASF98:
	.string	"fail"
.LASF21:
	.string	"_IO_buf_end"
.LASF59:
	.string	"handle_reset"
.LASF82:
	.string	"port"
.LASF8:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF90:
	.string	"usb_hub_handle_reset"
.LASF15:
	.string	"_IO_read_end"
.LASF57:
	.string	"handle_destroy"
.LASF27:
	.string	"_fileno"
.LASF111:
	.string	"usb_hub_init"
.LASF77:
	.string	"cancel_cb"
.LASF4:
	.string	"short unsigned int"
.LASF104:
	.string	"stdout"
.LASF97:
	.string	"usb_hub_handle_data"
.LASF18:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"complete_cb"
.LASF74:
	.string	"data"
.LASF68:
	.string	"setup_state"
.LASF84:
	.string	"wPortChange"
.LASF61:
	.string	"handle_data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
