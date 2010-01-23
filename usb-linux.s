	.file	"usb-linux.c"
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
	.string	"Audio"
.LC1:
	.string	"Communication"
.LC2:
	.string	"HID"
.LC3:
	.string	"Hub"
.LC4:
	.string	"Physical"
.LC5:
	.string	"Printer"
.LC6:
	.string	"Storage"
.LC7:
	.string	"Data"
.LC8:
	.string	"Application Specific"
.LC9:
	.string	"Vendor Specific"
.LC10:
	.string	"Still Image"
.LC11:
	.string	"Smart Card"
.LC12:
	.string	"Content Security"
	.section	.rodata
	.align 32
	.type	usb_class_info, @object
	.size	usb_class_info, 224
usb_class_info:
	.long	1
	.zero	4
	.quad	.LC0
	.long	2
	.zero	4
	.quad	.LC1
	.long	3
	.zero	4
	.quad	.LC2
	.long	9
	.zero	4
	.quad	.LC3
	.long	5
	.zero	4
	.quad	.LC4
	.long	7
	.zero	4
	.quad	.LC5
	.long	8
	.zero	4
	.quad	.LC6
	.long	10
	.zero	4
	.quad	.LC7
	.long	254
	.zero	4
	.quad	.LC8
	.long	255
	.zero	4
	.quad	.LC9
	.long	6
	.zero	4
	.quad	.LC10
	.long	11
	.zero	4
	.quad	.LC11
	.long	13
	.zero	4
	.quad	.LC12
	.long	-1
	.zero	4
	.quad	0
	.local	pending_urbs
	.comm	pending_urbs,8,8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"usb_host: error - device has no matching configuration"
	.section	.rodata.str1.1
.LC14:
	.string	"USBDEVFS_DISCONNECT"
.LC16:
	.string	"USBDEVFS_CLAIMINTERFACE"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"usb_host: warning - device already grabbed\n"
	.text
	.p2align 4,,15
	.type	usb_host_update_interfaces, @function
usb_host_update_interfaces:
.LFB107:
	.file 1 "usb-linux.c"
	.loc 1 142 0
	pushq	%r12
.LCFI0:
	.loc 1 148 0
	movl	$1, %eax
	.loc 1 142 0
	pushq	%rbp
.LCFI1:
	pushq	%rbx
.LCFI2:
	movq	%rdi, %rbx
	subq	$32, %rsp
.LCFI3:
	.loc 1 147 0
	testl	%esi, %esi
	je	.L1
	.loc 1 151 0
	movzbl	1188(%rdi), %eax
	.loc 1 152 0
	movl	2212(%rdi), %ecx
	cmpl	%eax, %ecx
	jl	.L4
	.loc 1 156 0
	movl	%eax, %edx
	.loc 1 171 0
	jle	.L29
	.p2align 4,,7
.L33:
	.loc 1 162 0
	leal	1(%rdx), %eax
	cltq
	cmpb	$2, 1188(%rax,%rbx)
	je	.L7
	.loc 1 163 0
	movslq	%edx,%rax
	movzbl	1188(%rax,%rbx), %eax
	addl	%eax, %edx
	.loc 1 171 0
	cmpl	%edx, %ecx
.L34:
	jg	.L33
.L29:
	.loc 1 175 0
	movl	$.LC13, %edi
	call	puts
.L4:
	.loc 1 207 0
	xorl	%eax, %eax
.L1:
	.loc 1 217 0
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L7:
	.loc 1 166 0
	movslq	%edx,%rax
	movzbl	1188(%rax,%rbx), %edi
	.loc 1 168 0
	leal	5(%rdx), %eax
	cltq
	movzbl	1188(%rax,%rbx), %eax
	cmpl	%esi, %eax
	je	.L6
	.loc 1 171 0
	addl	%edi, %edx
	cmpl	%edx, %ecx
	jmp	.L34
.L6:
	.loc 1 174 0
	cmpl	%edx, %ecx
	jle	.L29
	.loc 1 178 0
	leal	4(%rdx), %eax
	cltq
	movzbl	1188(%rax,%rbx), %ebp
.LBB2:
	.loc 1 184 0
	xorl	%eax, %eax
	movl	$0, 12(%rsp)
	cmpl	%ebp, %eax
	jge	.L27
	leaq	16(%rsp), %r12
	jmp	.L15
.L13:
	movl	12(%rsp), %eax
	incl	%eax
	cmpl	%ebp, %eax
	movl	%eax, 12(%rsp)
	jge	.L35
.L15:
	.loc 1 187 0
	movl	1144(%rbx), %edi
	.loc 1 186 0
	movl	%eax, 16(%rsp)
	.loc 1 187 0
	movq	%r12, %rdx
	xorl	%eax, %eax
	movl	$3222295826, %esi
	.loc 1 185 0
	movl	$21782, 20(%rsp)
	.loc 1 187 0
	call	ioctl
	.loc 1 188 0
	testl	%eax, %eax
	jns	.L13
	call	__errno_location
	cmpl	$61, (%rax)
	.p2align 4,,4
	je	.L13
	.loc 1 189 0
	movl	$.LC14, %edi
.L31:
.LBE2:
	.loc 1 204 0
	call	perror
	.loc 1 207 0
	xorl	%eax, %eax
	jmp	.L1
.L35:
	.loc 1 197 0
	testl	%ebp, %ebp
	movl	$0, 12(%rsp)
	je	.L27
.L22:
	.loc 1 198 0
	movl	1144(%rbx), %edi
	leaq	12(%rsp), %rdx
	xorl	%eax, %eax
	movl	$2147767567, %esi
	call	ioctl
	.loc 1 199 0
	testl	%eax, %eax
	js	.L36
	.loc 1 197 0
	movl	12(%rsp), %eax
	incl	%eax
	cmpl	%ebp, %eax
	movl	%eax, 12(%rsp)
	jl	.L22
.L27:
	.loc 1 216 0
	movl	$1, %eax
	jmp	.L1
.L36:
	.loc 1 200 0
	call	__errno_location
	cmpl	$16, (%rax)
	.loc 1 204 0
	movl	$.LC16, %edi
	.loc 1 200 0
	jne	.L31
	.loc 1 201 0
	movq	stderr(%rip), %rcx
	movl	$43, %edx
	movl	$1, %esi
	movl	$.LC15, %edi
	call	fwrite
	.loc 1 207 0
	xorl	%eax, %eax
	jmp	.L1
.LFE107:
	.size	usb_host_update_interfaces, .-usb_host_update_interfaces
	.p2align 4,,15
	.type	usb_host_handle_reset, @function
usb_host_handle_reset:
.LFB108:
	.loc 1 220 0
	.loc 1 220 0
	rep ; ret
.LFE108:
	.size	usb_host_handle_reset, .-usb_host_handle_reset
	.p2align 4,,15
	.type	usb_host_handle_destroy, @function
usb_host_handle_destroy:
.LFB109:
	.loc 1 230 0
	pushq	%rbx
.LCFI4:
	.loc 1 230 0
	movq	%rdi, %rbx
	.loc 1 233 0
	movl	1144(%rdi), %edi
	testl	%edi, %edi
	js	.L39
	.loc 1 234 0
	call	close
.L39:
	.loc 1 235 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE109:
	.size	usb_host_handle_destroy, .-usb_host_handle_destroy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"invalid descriptor data - configuration"
	.section	.rodata.str1.1
.LC17:
	.string	"usb_linux_update_endp_table"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"usb_host: malformed endpoint type"
	.text
	.p2align 4,,15
	.type	usb_linux_update_endp_table, @function
usb_linux_update_endp_table:
.LFB113:
	.loc 1 492 0
	movq	%rbx, -48(%rsp)
.LCFI5:
	movq	%r15, -8(%rsp)
.LCFI6:
	movq	%rdi, %rbx
	movq	%rbp, -40(%rsp)
.LCFI7:
	movq	%r12, -32(%rsp)
.LCFI8:
	.loc 1 506 0
	movl	$3222820096, %esi
	.loc 1 492 0
	movq	%r13, -24(%rsp)
.LCFI9:
	movq	%r14, -16(%rsp)
.LCFI10:
	subq	$120, %rsp
.LCFI11:
	.loc 1 503 0
	leaq	31(%rsp), %rax
	.loc 1 498 0
	movb	$-128, 32(%rsp)
	.loc 1 499 0
	movb	$8, 33(%rsp)
	.loc 1 500 0
	movw	$0, 34(%rsp)
	.loc 1 501 0
	movw	$0, 36(%rsp)
	.loc 1 506 0
	leaq	32(%rsp), %r15
	.loc 1 503 0
	movq	%rax, 48(%rsp)
	.loc 1 502 0
	movw	$1, 38(%rsp)
	.loc 1 506 0
	xorl	%eax, %eax
	.loc 1 504 0
	movl	$50, 40(%rsp)
	.loc 1 506 0
	movl	1144(%rdi), %edi
	movq	%r15, %rdx
	call	ioctl
	.loc 1 507 0
	testl	%eax, %eax
	js	.L70
	.loc 1 513 0
	movzbl	31(%rsp), %edx
	.loc 1 514 0
	movl	$1, %eax
	.loc 1 513 0
	testb	%dl, %dl
	je	.L40
	.loc 1 519 0
	movl	2212(%rbx), %r14d
	.loc 1 518 0
	leaq	1206(%rbx), %r13
	.loc 1 519 0
	subl	$18, %r14d
	.loc 1 522 0
	cmpb	$2, 1207(%rbx)
	jne	.L44
	cmpb	%dl, 1211(%rbx)
	je	.L43
.L44:
	.loc 1 524 0
	movl	$.LC18, %edi
	call	puts
	.loc 1 550 0
	movl	$1, %eax
.L40:
	.loc 1 595 0
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rbp
	movq	88(%rsp), %r12
	movq	96(%rsp), %r13
	movq	104(%rsp), %r14
	movq	112(%rsp), %r15
	addq	$120, %rsp
	ret
.L43:
	.loc 1 527 0
	movzbl	1206(%rbx), %r12d
	jmp	.L76
	.p2align 4,,7
.L78:
	.loc 1 530 0
	movslq	%r12d,%rbp
	cmpb	$4, 1(%rbp,%r13)
	je	.L77
.L75:
	.loc 1 556 0
	movzbl	(%rbp,%r13), %eax
	addl	%eax, %r12d
.L76:
	.loc 1 591 0
	cmpl	%r14d, %r12d
	jl	.L78
.L46:
	.loc 1 594 0
	xorl	%eax, %eax
	jmp	.L40
	.p2align 4,,7
.L70:
	.loc 1 549 0
	movl	$.LC17, %edi
	call	perror
	.loc 1 550 0
	movl	$1, %eax
	jmp	.L40
.L77:
	.loc 1 530 0
	cmpb	$0, 4(%rbp,%r13)
	je	.L75
	.loc 1 537 0
	movzbl	2(%rbp,%r13), %eax
	.loc 1 547 0
	movl	1144(%rbx), %edi
	movq	%r15, %rdx
	movl	$3222820096, %esi
	.loc 1 539 0
	movb	$-127, 32(%rsp)
	.loc 1 540 0
	movb	$10, 33(%rsp)
	.loc 1 541 0
	movw	$0, 34(%rsp)
	.loc 1 543 0
	movw	$1, 38(%rsp)
	.loc 1 545 0
	movl	$50, 40(%rsp)
	.loc 1 542 0
	movw	%ax, 36(%rsp)
	.loc 1 544 0
	leaq	30(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc 1 547 0
	xorl	%eax, %eax
	call	ioctl
	.loc 1 548 0
	testl	%eax, %eax
	js	.L70
	.loc 1 555 0
	movzbl	30(%rsp), %eax
	cmpb	%al, 3(%rbp,%r13)
	jne	.L75
	.loc 1 562 0
	cmpl	%r14d, %r12d
	jl	.L72
	.p2align 4,,3
	jmp	.L46
	.p2align 4,,7
.L79:
	movzbl	(%rbp,%r13), %eax
	addl	%eax, %r12d
	cmpl	%r14d, %r12d
	.p2align 4,,3
	jge	.L46
	movslq	%r12d,%rbp
.L72:
	cmpb	$5, 1(%rbp,%r13)
	jne	.L79
	jmp	.L52
.L64:
	.loc 1 572 0
	cmpl	$2, %eax
	.loc 1 580 0
	movl	$3, %edx
	.loc 1 572 0
	.p2align 4,,2
	je	.L58
	.loc 1 583 0
	movl	$1, %edx
	.loc 1 572 0
	cmpl	$3, %eax
.L73:
	.p2align 4,,3
	je	.L58
	.loc 1 586 0
	movl	$.LC19, %edi
	call	puts
	.loc 1 587 0
	movl	$3, %edx
.L58:
	.loc 1 589 0
	movzbl	(%rsp), %eax
	andl	$15, %eax
	decl	%eax
	cltq
	movb	%dl, 1168(%rax,%rbx)
	.loc 1 591 0
	movzbl	(%rbp,%r13), %eax
	addl	%eax, %r12d
.L52:
	.loc 1 564 0
	cmpl	%r14d, %r12d
	jge	.L46
	.loc 1 568 0
	movslq	%r12d,%rbp
	cmpb	$5, 1(%rbp,%r13)
	jne	.L76
	.loc 1 571 0
	movzbl	2(%rbp,%r13), %eax
	.loc 1 577 0
	xorl	%edx, %edx
	.loc 1 571 0
	movb	%al, (%rsp)
	.loc 1 572 0
	movzbl	3(%rbp,%r13), %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L58
	jg	.L64
	.loc 1 574 0
	movl	$2, %edx
	.loc 1 572 0
	testl	%eax, %eax
	jmp	.L73
.LFE113:
	.size	usb_linux_update_endp_table, .-usb_linux_update_endp_table
	.p2align 4,,15
	.type	usb_host_handle_control, @function
usb_host_handle_control:
.LFB110:
	.loc 1 246 0
	movq	%rbp, -24(%rsp)
.LCFI12:
	movq	%r12, -16(%rsp)
.LCFI13:
	movq	%rdi, %rbp
	movq	%r13, -8(%rsp)
.LCFI14:
	movq	%rbx, -32(%rsp)
.LCFI15:
	.loc 1 250 0
	xorl	%r13d, %r13d
	.loc 1 246 0
	subq	$88, %rsp
.LCFI16:
	.loc 1 253 0
	cmpl	$5, %esi
	.loc 1 246 0
	movl	%edx, %r12d
	movl	%r8d, %edx
	.loc 1 253 0
	je	.L95
	.loc 1 257 0
	cmpl	$267, %esi
	je	.L96
	.loc 1 264 0
	cmpl	$9, %esi
	je	.L97
.L87:
	.loc 1 276 0
	movl	%esi, %eax
	.loc 1 277 0
	movb	%sil, 17(%rsp)
	.loc 1 280 0
	movw	%dx, 22(%rsp)
	.loc 1 276 0
	sarl	$8, %eax
	.loc 1 278 0
	movw	%r12w, 18(%rsp)
	.loc 1 279 0
	movw	%cx, 20(%rsp)
	.loc 1 276 0
	movb	%al, 16(%rsp)
	.loc 1 281 0
	movl	$50, 24(%rsp)
	.loc 1 283 0
	leaq	16(%rsp), %rdx
	.loc 1 282 0
	movq	%r9, 32(%rsp)
	.loc 1 283 0
	movl	1144(%rbp), %edi
	movl	$3222820096, %esi
	xorl	%eax, %eax
	call	ioctl
	movl	%eax, %ebx
.L82:
	.loc 1 286 0
	testl	%ebx, %ebx
	js	.L98
	.loc 1 294 0
	testl	%r13d, %r13d
	jne	.L99
.L94:
	.loc 1 300 0
	movl	%ebx, %eax
	.loc 1 302 0
	movq	64(%rsp), %rbp
	movq	56(%rsp), %rbx
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L95:
	.loc 1 255 0
	movb	%r12b, 56(%rdi)
	.loc 1 302 0
	movq	56(%rsp), %rbx
	.loc 1 256 0
	xorl	%eax, %eax
	.loc 1 302 0
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L99:
	.loc 1 298 0
	movzbl	%r12b,%esi
	movq	%rbp, %rdi
	call	usb_host_update_interfaces
	jmp	.L94
	.p2align 4,,7
.L98:
	.loc 1 287 0
	call	__errno_location
	.loc 1 289 0
	cmpl	$110, (%rax)
	.loc 1 302 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	.loc 1 289 0
	sete	%al
	.loc 1 302 0
	addq	$88, %rsp
	.loc 1 289 0
	movzbl	%al, %eax
	subl	$3, %eax
	.loc 1 302 0
	ret
	.p2align 4,,7
.L96:
	.loc 1 260 0
	movl	%ecx, 8(%rsp)
	.loc 1 261 0
	movl	%r12d, 12(%rsp)
	.loc 1 262 0
	leaq	8(%rsp), %rdx
	movl	1144(%rdi), %edi
	movl	$2148029700, %esi
	xorl	%eax, %eax
	call	ioctl
	.loc 1 263 0
	movq	%rbp, %rdi
	.loc 1 262 0
	movl	%eax, %ebx
	.loc 1 263 0
	call	usb_linux_update_endp_table
	jmp	.L82
.L97:
	.loc 1 269 0
	movzbl	%r12b,%eax
	cmpl	%eax, 1184(%rdi)
	je	.L87
	.loc 1 271 0
	movl	$1, %r13d
	.loc 1 270 0
	movl	%eax, 1184(%rdi)
	jmp	.L87
.LFE110:
	.size	usb_host_handle_control, .-usb_host_handle_control
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"usb_host_handle_isoch: del_pending_urb failed %p\n"
	.align 8
.LC22:
	.string	"usb_host_handle_isoch: SUBMITURB ioctl=%d errno=%d\n"
	.align 8
.LC20:
	.string	"usb_host_handle_isoch: malloc failed"
	.align 8
.LC21:
	.string	"usb_host_handle_isoch: add_pending_urb failed %p\n"
	.text
	.p2align 4,,15
	.type	usb_host_handle_data, @function
usb_host_handle_data:
.LFB111:
	.loc 1 307 0
	movq	%rbx, -32(%rsp)
.LCFI17:
	movq	%r13, -8(%rsp)
.LCFI18:
	movq	%rsi, %rbx
	movq	%rbp, -24(%rsp)
.LCFI19:
	movq	%r12, -16(%rsp)
.LCFI20:
	subq	$88, %rsp
.LCFI21:
	.loc 1 311 0
	movzbl	5(%rsi), %edx
	.loc 1 307 0
	movq	%rdi, %r13
	.loc 1 313 0
	movzbl	%dl, %eax
	decl	%eax
	cltq
	cmpb	$0, 1168(%rax,%rdi)
	jne	.L101
.LBB3:
.LBB4:
	.loc 1 412 0
	movl	%edx, %eax
	.loc 1 407 0
	movq	$0, 8(%rsp)
	.loc 1 412 0
	movl	%edx, %r12d
	orl	$-128, %eax
	cmpl	$105, (%rsi)
	.loc 1 414 0
	movl	$68, %edi
	.loc 1 412 0
	cmove	%eax, %r12d
	.loc 1 414 0
	call	qemu_mallocz
	.loc 1 416 0
	testq	%rax, %rax
	.loc 1 414 0
	movq	%rax, %rbp
	.loc 1 416 0
	je	.L138
	.loc 1 422 0
	movb	%r12b, 1(%rax)
	.loc 1 421 0
	movb	$0, (%rax)
	.loc 1 440 0
	movq	%rbp, %rdx
	.loc 1 423 0
	movl	$0, 4(%rax)
	.loc 1 424 0
	movl	$2, 8(%rax)
	.loc 1 440 0
	movl	$2151175434, %esi
	.loc 1 425 0
	movq	8(%rbx), %rax
	movq	%rax, 16(%rbp)
	.loc 1 426 0
	movl	16(%rbx), %eax
	.loc 1 427 0
	movl	$0, 28(%rbp)
	.loc 1 428 0
	movl	$0, 32(%rbp)
	.loc 1 429 0
	movl	$0, 40(%rbp)
	.loc 1 433 0
	movl	$0, 44(%rbp)
	.loc 1 426 0
	movl	%eax, 24(%rbp)
	.loc 1 435 0
	movq	%r13, 48(%rbp)
	.loc 1 436 0
	movl	$1, 36(%rbp)
	.loc 1 437 0
	movl	16(%rbx), %eax
	.loc 1 438 0
	movl	$0, 60(%rbp)
	.loc 1 439 0
	movl	$0, 64(%rbp)
	.loc 1 437 0
	movl	%eax, 56(%rbp)
	.loc 1 440 0
	movl	1144(%r13), %edi
	xorl	%eax, %eax
	call	ioctl
	.loc 1 441 0
	testl	%eax, %eax
	.loc 1 440 0
	movl	%eax, %r12d
	.loc 1 441 0
	jne	.L105
.LBB5:
.LBB6:
	.loc 1 92 0
	movl	$24, %edi
	call	qemu_mallocz
	.loc 1 93 0
	testq	%rax, %rax
	.loc 1 92 0
	movq	%rax, %rdx
	.loc 1 93 0
	je	.L107
	.loc 1 94 0
	movq	%rbp, (%rax)
	.loc 1 95 0
	movl	$0, 8(%rax)
	.loc 1 96 0
	movq	pending_urbs(%rip), %rax
	movq	%rax, 16(%rdx)
	.loc 1 97 0
	movq	%rdx, pending_urbs(%rip)
.L109:
.LBE6:
.LBE5:
	.loc 1 472 0
	movl	1144(%r13), %edi
	leaq	8(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074287885, %esi
	call	ioctl
	.loc 1 473 0
	testl	%eax, %eax
	.loc 1 472 0
	movl	%eax, %r12d
	.loc 1 473 0
	jne	.L124
.LBB7:
	.loc 1 104 0
	movq	8(%rsp), %rsi
.LBB8:
	.loc 1 105 0
	movq	pending_urbs(%rip), %rdi
	.loc 1 106 0
	xorl	%edx, %edx
	jmp	.L137
	.p2align 4,,7
.L139:
	.loc 1 109 0
	movq	%rdi, %rdx
	.loc 1 110 0
	movq	16(%rdi), %rdi
.L137:
	testq	%rdi, %rdi
	je	.L119
	cmpq	%rsi, (%rdi)
	jne	.L139
	.loc 1 113 0
	testq	%rdi, %rdi
	je	.L119
	cmpq	%rsi, (%rdi)
	.p2align 4,,5
	je	.L140
.L119:
.LBE8:
.LBE7:
	.loc 1 478 0
	movl	$.LC23, %edi
	xorl	%eax, %eax
	call	printf
.L124:
	.loc 1 480 0
	movl	%r12d, %eax
	.p2align 4,,7
.L100:
.LBE4:
.LBE3:
	.loc 1 340 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L101:
	.loc 1 320 0
	movl	%edx, %eax
	orl	$-128, %eax
	cmpl	$105, (%rsi)
	cmove	%eax, %edx
	.loc 1 321 0
	movzbl	%dl, %eax
	.loc 1 325 0
	leaq	16(%rsp), %rdx
	.loc 1 321 0
	movl	%eax, 16(%rsp)
	.loc 1 322 0
	movl	16(%rsi), %eax
	.loc 1 323 0
	movl	$50, 24(%rsp)
	.loc 1 322 0
	movl	%eax, 20(%rsp)
	.loc 1 324 0
	movq	8(%rsi), %rax
	.loc 1 325 0
	movl	$3222820098, %esi
	.loc 1 324 0
	movq	%rax, 32(%rsp)
	.loc 1 325 0
	movl	1144(%rdi), %edi
	xorl	%eax, %eax
	call	ioctl
	.loc 1 326 0
	testl	%eax, %eax
	jns	.L100
	.loc 1 327 0
	call	__errno_location
	.loc 1 329 0
	cmpl	$110, (%rax)
	.p2align 4,,4
	jmp	.L136
	.p2align 4,,7
.L105:
.LBB9:
.LBB10:
	.loc 1 446 0
	.p2align 4,,6
	call	__errno_location
	movl	(%rax), %edx
	movq	%rax, %rbx
	movl	%r12d, %esi
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 448 0
	movq	%rbp, %rdi
	call	qemu_free
	.loc 1 450 0
	cmpl	$110, (%rbx)
.L136:
.LBE10:
.LBE9:
	.loc 1 329 0
	sete	%al
	.loc 1 340 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	.loc 1 329 0
	movzbl	%al, %eax
	subl	$3, %eax
	.loc 1 340 0
	addq	$88, %rsp
	ret
.L138:
.LBB11:
.LBB12:
	.loc 1 417 0
	movl	$.LC20, %edi
	call	puts
	xorl	%eax, %eax
	jmp	.L100
.L107:
	.loc 1 443 0
	movq	%rbp, %rsi
	movl	$.LC21, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L109
.L140:
.LBB13:
.LBB14:
	.loc 1 114 0
	testq	%rdx, %rdx
	je	.L120
	.loc 1 115 0
	movq	16(%rdi), %rax
	movq	%rax, 16(%rdx)
.L121:
	.loc 1 119 0
	.p2align 4,,5
	call	qemu_free
	movq	8(%rsp), %rsi
.LBE14:
.LBE13:
	.loc 1 475 0
	movl	28(%rsi), %r12d
	.loc 1 476 0
	movq	%rsi, %rdi
	call	qemu_free
	.loc 1 480 0
	movl	%r12d, %eax
	jmp	.L100
.L120:
.LBB15:
.LBB16:
	.loc 1 117 0
	movq	16(%rdi), %rax
	movq	%rax, pending_urbs(%rip)
	jmp	.L121
.LBE16:
.LBE15:
.LBE12:
.LBE11:
.LFE111:
	.size	usb_host_handle_data, .-usb_host_handle_data
	.p2align 4,,15
	.type	get_tag_value, @function
get_tag_value:
.LFB115:
	.loc 1 715 0
	pushq	%r15
.LCFI22:
	movq	%r8, %r15
	pushq	%r14
.LCFI23:
	movq	%rdi, %r14
	movq	%rdx, %rdi
	pushq	%r13
.LCFI24:
	movl	%esi, %r13d
	.loc 1 718 0
	movq	%rcx, %rsi
	.loc 1 715 0
	pushq	%r12
.LCFI25:
	pushq	%rbp
.LCFI26:
	pushq	%rbx
.LCFI27:
	movq	%rcx, %rbx
	subq	$8, %rsp
.LCFI28:
	.loc 1 718 0
	call	strstr
	movq	%rax, %rbp
	.loc 1 720 0
	movl	$-1, %eax
	.loc 1 719 0
	testq	%rbp, %rbp
	je	.L141
	.loc 1 721 0
	movq	%rbx, %rdi
	call	strlen
	addq	%rax, %rbp
	call	__ctype_b_loc
	movq	(%rax), %rdx
	jmp	.L143
	.p2align 4,,7
.L145:
	.loc 1 723 0
	incq	%rbp
.L143:
	movzbl	(%rbp), %ebx
	movsbq	%bl,%rax
	testb	$32, 1(%rdx,%rax,2)
	jne	.L145
	leal	-1(%r13), %eax
	.loc 1 724 0
	movq	%r14, %r12
	movslq	%eax,%r13
	jmp	.L146
	.p2align 4,,7
.L152:
	.loc 1 728 0
	movsbl	%bl,%esi
	movq	%r15, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L147
	.loc 1 726 0
	movq	%r12, %rax
	subq	%r14, %rax
	cmpq	%r13, %rax
	jge	.L150
	.loc 1 727 0
	movb	%bl, (%r12)
	incq	%r12
.L150:
	.loc 1 728 0
	incq	%rbp
	movzbl	(%rbp), %ebx
.L146:
	testb	%bl, %bl
	jne	.L152
.L147:
	.loc 1 731 0
	movl	%r12d, %eax
	.loc 1 730 0
	movb	$0, (%r12)
	.loc 1 731 0
	subl	%r14d, %eax
.L141:
	.loc 1 732 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE115:
	.size	get_tag_value, .-get_tag_value
	.section	.rodata.str1.1
.LC25:
	.string	"/proc/bus/usb/devices"
.LC24:
	.string	"r"
.LC37:
	.string	" ("
.LC38:
	.string	"Cls="
.LC27:
	.string	" "
.LC28:
	.string	"Bus="
.LC29:
	.string	"Dev#="
.LC30:
	.string	"Spd="
.LC33:
	.string	"Vendor="
.LC34:
	.string	"ProdID="
.LC35:
	.string	""
.LC36:
	.string	"Product="
.LC26:
	.string	"Could not open %s\n"
	.text
	.p2align 4,,15
	.type	usb_host_scan, @function
usb_host_scan:
.LFB116:
	.loc 1 735 0
	pushq	%r15
.LCFI29:
	pushq	%r14
.LCFI30:
	pushq	%r13
.LCFI31:
	pushq	%r12
.LCFI32:
	pushq	%rbp
.LCFI33:
	pushq	%rbx
.LCFI34:
	subq	$2632, %rsp
.LCFI35:
	.loc 1 735 0
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	.loc 1 743 0
	movl	$.LC25, %edi
	movl	$.LC24, %esi
	call	fopen64
	.loc 1 744 0
	testq	%rax, %rax
	.loc 1 743 0
	movq	%rax, %rbp
	.loc 1 744 0
	je	.L203
	leaq	576(%rsp), %r12
	leaq	1600(%rsp), %rbx
	.loc 1 748 0
	xorl	%r13d, %r13d
	.loc 1 749 0
	movl	$0, 28(%rsp)
	movl	$0, 32(%rsp)
	xorl	%r15d, %r15d
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movq	%r12, %r14
	movl	$0, 44(%rsp)
	.loc 1 750 0
	movl	$0, 24(%rsp)
	.p2align 4,,7
.L202:
	.loc 1 752 0
	movq	%rbp, %rdx
	movl	$1024, %esi
	movq	%rbx, %rdi
	call	fgets
	testq	%rax, %rax
	je	.L156
.L207:
	.loc 1 754 0
	movzbl	1600(%rsp), %eax
	testb	%al, %al
	je	.L158
	.loc 1 755 0
	movq	%rbx, %rcx
	.p2align 4,,7
.L159:
	movl	(%rcx), %eax
	addq	$4, %rcx
	leal	-16843009(%rax), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$-2139062144, %edx
	je	.L159
	movl	%edx, %eax
	shrl	$16, %eax
	testl	$32896, %edx
	cmove	%eax, %edx
	leaq	2(%rcx), %rax
	cmove	%rax, %rcx
	addb	%dl, %dl
	sbbq	$3, %rcx
	subq	%rbx, %rcx
	movb	$0, 1599(%rsp,%rcx)
	movzbl	1600(%rsp), %eax
.L158:
	.loc 1 756 0
	cmpb	$84, %al
	je	.L204
	.loc 1 783 0
	cmpb	$80, %al
	je	.L205
	.loc 1 790 0
	cmpb	$83, %al
	je	.L206
	.loc 1 794 0
	cmpb	$68, %al
	.p2align 4,,5
	jne	.L202
	cmpb	$58, 1601(%rsp)
	jne	.L202
	.loc 1 795 0
	leaq	576(%rsp), %rdi
	movl	$.LC37, %r8d
	movl	$.LC38, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
.L166:
	.loc 1 797 0
	leaq	576(%rsp), %rdi
	movl	$16, %edx
	xorl	%esi, %esi
	call	strtoul
	movl	%eax, 36(%rsp)
	.loc 1 752 0
	movq	%rbp, %rdx
	movl	$1024, %esi
	movq	%rbx, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L207
.L156:
	.loc 1 801 0
	testl	%r13d, %r13d
	je	.L164
	movl	28(%rsp), %eax
	orl	32(%rsp), %eax
	jne	.L208
.L164:
	.loc 1 807 0
	movq	%rbp, %rdi
	call	fclose
	.loc 1 808 0
	movl	24(%rsp), %eax
.L153:
	.loc 1 809 0
	addq	$2632, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L204:
	.loc 1 756 0
	cmpb	$58, 1601(%rsp)
	jne	.L202
	.loc 1 757 0
	testl	%r13d, %r13d
	je	.L162
	movl	28(%rsp), %eax
	orl	32(%rsp), %eax
	jne	.L209
.L162:
	.loc 1 764 0
	movl	$.LC27, %r8d
	movl	$.LC28, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	movq	%r12, %rdi
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
.LBB17:
.LBB18:
	.file 2 "/usr/include/stdlib.h"
	.loc 2 286 0
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	call	strtol
.LBE18:
.LBE17:
	.loc 1 767 0
	movl	$.LC27, %r8d
	movl	$.LC29, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	movq	%r12, %rdi
	.loc 2 285 0
	movl	%eax, %r15d
	.loc 1 767 0
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
.LBB19:
.LBB20:
	.loc 2 286 0
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	call	strtol
.LBE20:
.LBE19:
	.loc 1 770 0
	movl	$.LC27, %r8d
	movl	$.LC30, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	movq	%r12, %rdi
	.loc 2 285 0
	movl	%eax, 44(%rsp)
	.loc 1 770 0
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
.LBB21:
.LBB22:
	.loc 1 772 0
	movzbl	576(%rsp), %edx
	movzbl	%dl, %eax
	subl	$52, %eax
	jne	.L174
	movzbl	577(%rsp), %eax
	subl	$56, %eax
	jne	.L174
	movzbl	578(%rsp), %eax
	subl	$48, %eax
	je	.L210
.L174:
.LBE22:
.LBE21:
	testl	%eax, %eax
	.loc 1 773 0
	movl	$2, 40(%rsp)
	.loc 1 772 0
	je	.L177
.LBB23:
.LBB24:
	.loc 1 774 0
	movzbl	%dl, %eax
	subl	$49, %eax
	jne	.L181
	movzbl	577(%rsp), %eax
	subl	$46, %eax
	jne	.L181
	movzbl	578(%rsp), %eax
	subl	$53, %eax
	jne	.L181
	movzbl	579(%rsp), %eax
.L181:
.LBE24:
.LBE23:
	.loc 1 775 0
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 40(%rsp)
.L177:
	.loc 1 780 0
	incl	%r13d
	.loc 1 778 0
	movb	$0, 64(%rsp)
	.loc 1 779 0
	movl	$255, 36(%rsp)
	.loc 1 781 0
	movl	$0, 32(%rsp)
	.loc 1 782 0
	movl	$0, 28(%rsp)
	jmp	.L202
.L205:
	.loc 1 783 0
	cmpb	$58, 1601(%rsp)
	jne	.L202
	.loc 1 784 0
	leaq	576(%rsp), %rdi
	movl	$.LC27, %r8d
	movl	$.LC33, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
	.loc 1 786 0
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	call	strtoul
	.loc 1 787 0
	leaq	576(%rsp), %rdi
	movl	$.LC27, %r8d
	movl	$.LC34, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	.loc 1 786 0
	movl	%eax, 28(%rsp)
	.loc 1 787 0
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
	.loc 1 789 0
	leaq	576(%rsp), %rdi
	movl	$16, %edx
	xorl	%esi, %esi
	call	strtoul
	movl	%eax, 32(%rsp)
	jmp	.L202
.L206:
	.loc 1 790 0
	cmpb	$58, 1601(%rsp)
	jne	.L202
	.loc 1 791 0
	movl	$.LC35, %r8d
	movl	$.LC36, %ecx
	movq	%rbx, %rdx
	movl	$1024, %esi
	movq	%r14, %rdi
	call	get_tag_value
	testl	%eax, %eax
	js	.L202
	.loc 1 793 0
	leaq	64(%rsp), %rdi
	movq	%r14, %rdx
	movl	$512, %esi
	call	pstrcpy
	jmp	.L202
.L209:
	.loc 1 759 0
	movl	40(%rsp), %eax
	movl	32(%rsp), %r9d
	movl	%r15d, %esi
	movl	28(%rsp), %r8d
	movl	36(%rsp), %ecx
	movl	44(%rsp), %edx
	movq	56(%rsp), %rdi
	movl	%eax, 8(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	call	*48(%rsp)
	.loc 1 761 0
	testl	%eax, %eax
	.loc 1 759 0
	movl	%eax, 24(%rsp)
	.loc 1 761 0
	je	.L162
	jmp	.L164
.L210:
.LBB25:
.LBB26:
	.loc 1 772 0
	movzbl	579(%rsp), %eax
	jmp	.L174
.L208:
.LBE26:
.LBE25:
	.loc 1 803 0
	movl	40(%rsp), %eax
	movl	32(%rsp), %r9d
	movl	%r15d, %esi
	movl	28(%rsp), %r8d
	movl	36(%rsp), %ecx
	movl	44(%rsp), %edx
	movq	56(%rsp), %rdi
	movl	%eax, 8(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	call	*48(%rsp)
	movl	%eax, 24(%rsp)
	jmp	.L164
.L203:
	.loc 1 745 0
	xorl	%eax, %eax
	movl	$.LC25, %esi
	movl	$.LC26, %edi
	call	term_printf
	.loc 1 746 0
	xorl	%eax, %eax
	jmp	.L153
.LFE116:
	.size	usb_host_scan, .-usb_host_scan
	.section	.rodata.str1.1
.LC39:
	.string	"/proc/bus/usb/%03d/%03d"
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"usb_host_device_open: reading device data failed"
	.section	.rodata.str1.1
.LC42:
	.string	"host:%s"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"usb_host_device_open: USBDEVFS_CONNECTINFO"
	.text
	.p2align 4,,15
.globl usb_host_device_open
	.type	usb_host_device_open, @function
usb_host_device_open:
.LFB114:
	.loc 1 599 0
	movq	%rbp, -40(%rsp)
.LCFI36:
	movq	%r12, -32(%rsp)
.LCFI37:
	.loc 1 600 0
	movl	$-1, %ebp
	.loc 1 599 0
	movq	%r13, -24(%rsp)
.LCFI38:
	movq	%rbx, -48(%rsp)
.LCFI39:
	movq	%rdi, %r13
	movq	%r14, -16(%rsp)
.LCFI40:
	movq	%r15, -8(%rsp)
.LCFI41:
	.loc 1 607 0
	movl	$2224, %edi
	.loc 1 599 0
	subq	$1176, %rsp
.LCFI42:
	.loc 1 607 0
	call	qemu_mallocz
	.loc 1 608 0
	testq	%rax, %rax
	.loc 1 607 0
	movq	%rax, %r12
	.loc 1 608 0
	je	.L229
.LBB27:
.LBB28:
	.loc 1 849 0
	movl	$46, %esi
	movq	%r13, %rdi
.LBE28:
	.loc 1 844 0
	leaq	64(%rsp), %r15
.LBB29:
	.loc 1 849 0
	call	strchr
	.loc 1 850 0
	testq	%rax, %rax
	.loc 1 849 0
	movq	%rax, %rbp
	.loc 1 850 0
	je	.L215
	.loc 1 851 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	strtoul
	.loc 1 852 0
	leaq	1(%rbp), %rdi
	.loc 1 851 0
	movq	%rax, %rbx
	.loc 1 852 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	.loc 1 851 0
	movl	%eax, %r14d
	.loc 1 852 0
	call	strtoul
	.loc 1 853 0
	movl	%ebx, 24(%rsp)
	.loc 1 855 0
	leaq	16(%rsp), %rbx
	movl	$usb_host_find_device_scan, %esi
	.loc 1 852 0
	movl	%eax, %ebp
	.loc 1 854 0
	movl	%eax, 28(%rsp)
	.loc 1 855 0
	movq	%rbx, %rdi
	call	usb_host_scan
	.loc 1 856 0
	testl	%eax, %eax
	jne	.L231
.L214:
.LBE29:
.LBE27:
	.loc 1 619 0
	leaq	96(%rsp), %rbx
	movl	%ebp, %r8d
	movl	%r14d, %ecx
	movl	$.LC39, %edx
	movl	$1024, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	snprintf
	.loc 1 621 0
	xorl	%eax, %eax
	movl	$2050, %esi
	movq	%rbx, %rdi
	call	open64
	.loc 1 622 0
	testl	%eax, %eax
	.loc 1 621 0
	movl	%eax, %ebp
	.loc 1 622 0
	js	.L234
	.loc 1 628 0
	leaq	1188(%r12), %rsi
	movl	%eax, %edi
	movl	$1024, %edx
	call	read
	.loc 1 629 0
	testl	%eax, %eax
	.loc 1 628 0
	movl	%eax, 2212(%r12)
	.loc 1 630 0
	movl	$.LC40, %edi
	.loc 1 629 0
	jle	.L232
	.loc 1 644 0
	movl	%ebp, 1144(%r12)
	.loc 1 645 0
	movl	$1, 1184(%r12)
	.loc 1 648 0
	movl	$1, %esi
	movq	%r12, %rdi
	call	usb_host_update_interfaces
	testl	%eax, %eax
	je	.L213
	.loc 1 651 0
	leaq	8(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1074287889, %esi
	movl	%ebp, %edi
	call	ioctl
	.loc 1 652 0
	testl	%eax, %eax
	js	.L235
	.loc 1 661 0
	movq	%r12, %rdi
	call	usb_linux_update_endp_table
	.loc 1 662 0
	testl	%eax, %eax
	.p2align 4,,2
	jne	.L213
	.loc 1 666 0
	cmpb	$1, 12(%rsp)
	.loc 1 669 0
	movq	$usb_generic_handle_packet, 8(%r12)
	.loc 1 671 0
	movq	$usb_host_handle_reset, 32(%r12)
	.loc 1 672 0
	movq	$usb_host_handle_control, 40(%r12)
	.loc 1 673 0
	movq	$usb_host_handle_data, 48(%r12)
	.loc 1 674 0
	movq	$usb_host_handle_destroy, 16(%r12)
	.loc 1 666 0
	sbbl	%eax, %eax
	andl	$2, %eax
	movl	%eax, 24(%r12)
	.loc 1 676 0
	cmpb	$0, 64(%rsp)
	jne	.L227
	.loc 1 677 0
	leaq	57(%r12), %rdi
	movq	%r13, %rcx
	movl	$.LC42, %edx
	movl	$32, %esi
	xorl	%eax, %eax
	call	snprintf
.L228:
	.loc 1 704 0
	movq	%r12, %rax
	.loc 1 703 0
	movl	$0, 2216(%r12)
	jmp	.L211
	.p2align 4,,7
.L215:
.LBB30:
.LBB31:
	.loc 1 860 0
	movl	$58, %esi
	movq	%r13, %rdi
	call	strchr
	.loc 1 861 0
	testq	%rax, %rax
	.loc 1 860 0
	movq	%rax, %rbx
	.loc 1 861 0
	je	.L233
	.loc 1 862 0
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%r13, %rdi
	call	strtoul
	.loc 1 863 0
	leaq	1(%rbx), %rdi
	.loc 1 864 0
	leaq	16(%rsp), %rbx
	.loc 1 863 0
	xorl	%esi, %esi
	movl	$16, %edx
	.loc 1 862 0
	movl	%eax, 16(%rsp)
	.loc 1 863 0
	call	strtoul
	.loc 1 864 0
	movl	$usb_host_find_device_scan, %esi
	movq	%rbx, %rdi
	.loc 1 863 0
	movl	%eax, 20(%rsp)
	.loc 1 864 0
	call	usb_host_scan
	.loc 1 865 0
	testl	%eax, %eax
	je	.L233
	.loc 1 866 0
	movl	24(%rsp), %r14d
	.loc 1 867 0
	movl	28(%rsp), %ebp
	.p2align 4,,7
.L231:
	.loc 1 868 0
	leaq	16(%rbx), %rdx
	movl	$32, %esi
	movq	%r15, %rdi
	call	pstrcpy
	jmp	.L214
.L235:
.LBE31:
.LBE30:
	.loc 1 653 0
	movl	$.LC41, %edi
	.p2align 4,,7
.L232:
	call	perror
	.p2align 4,,7
.L213:
	.loc 1 706 0
	testq	%r12, %r12
	je	.L229
	.loc 1 707 0
	movq	%r12, %rdi
	call	qemu_free
.L229:
	.loc 1 708 0
	movl	%ebp, %edi
	call	close
.L233:
	.loc 1 709 0
	xorl	%eax, %eax
.L211:
	.loc 1 710 0
	movq	1128(%rsp), %rbx
	movq	1136(%rsp), %rbp
	movq	1144(%rsp), %r12
	movq	1152(%rsp), %r13
	movq	1160(%rsp), %r14
	movq	1168(%rsp), %r15
	addq	$1176, %rsp
	ret
.L227:
	.loc 1 680 0
	leaq	57(%r12), %rdi
	movq	%r15, %rdx
	movl	$32, %esi
	call	pstrcpy
	jmp	.L228
.L234:
	.loc 1 623 0
	movq	%rbx, %rdi
	call	perror
	.p2align 4,,6
	jmp	.L233
.LFE114:
	.size	usb_host_device_open, .-usb_host_device_open
	.p2align 4,,15
	.type	usb_host_find_device_scan, @function
usb_host_find_device_scan:
.LFB117:
	.loc 1 823 0
	movq	%rbx, -24(%rsp)
.LCFI43:
	movq	%rbp, -16(%rsp)
.LCFI44:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI45:
	subq	$24, %rsp
.LCFI46:
	.loc 1 825 0
	cmpl	%r8d, (%rdi)
	.loc 1 823 0
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	32(%rsp), %rdx
	.loc 1 825 0
	je	.L241
.L239:
	cmpl	%ebp, 8(%rbx)
	je	.L242
.L237:
	.loc 1 836 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 834 0
	xorl	%eax, %eax
	.loc 1 836 0
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L242:
	.loc 1 825 0
	cmpl	%r12d, 12(%rbx)
	jne	.L237
.L238:
	.loc 1 829 0
	leaq	16(%rbx), %rdi
	movl	$32, %esi
	call	pstrcpy
	.loc 1 830 0
	movl	%ebp, 8(%rbx)
	.loc 1 831 0
	movl	%r12d, 12(%rbx)
	.loc 1 832 0
	movl	$1, %eax
	.loc 1 836 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L241:
	.loc 1 825 0
	cmpl	%r9d, 4(%rdi)
	jne	.L239
	jmp	.L238
.LFE117:
	.size	usb_host_find_device_scan, .-usb_host_find_device_scan
	.section	.rodata.str1.1
.LC43:
	.string	"12"
.LC31:
	.string	"480"
.LC44:
	.string	"?"
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"  Device %d.%d, speed %s Mb/s\n"
	.section	.rodata.str1.1
.LC46:
	.string	"    %s:"
.LC48:
	.string	" USB device %04x:%04x"
.LC50:
	.string	"\n"
.LC49:
	.string	", %s"
.LC47:
	.string	"    Class %02x:"
.LC32:
	.string	"1.5"
	.text
	.p2align 4,,15
	.type	usb_host_info_device, @function
usb_host_info_device:
.LFB121:
	.loc 1 950 0
	pushq	%r13
.LCFI47:
	movl	%r8d, %r13d
	pushq	%r12
.LCFI48:
	movl	%r9d, %r12d
	pushq	%rbp
.LCFI49:
	pushq	%rbx
.LCFI50:
	movl	%ecx, %ebx
.LBB32:
.LBB33:
	.loc 1 922 0
	movl	$.LC43, %ecx
.LBE33:
.LBE32:
	.loc 1 950 0
	subq	$8, %rsp
.LCFI51:
	.loc 1 950 0
	movl	56(%rsp), %eax
	movq	48(%rsp), %rbp
.LBB34:
.LBB35:
	.loc 1 917 0
	cmpl	$1, %eax
	je	.L244
	jle	.L262
	.loc 1 925 0
	movl	$.LC31, %ecx
	.loc 1 917 0
	cmpl	$2, %eax
.L261:
	je	.L244
	.loc 1 928 0
	movl	$.LC44, %ecx
.L244:
	.loc 1 932 0
	xorl	%eax, %eax
	movl	$.LC45, %edi
	call	term_printf
.LBB36:
.LBB37:
	.loc 1 903 0
	movl	usb_class_info(%rip), %eax
	movl	$usb_class_info, %edx
	cmpl	$-1, %eax
	je	.L251
	movzbl	%bl, %ecx
	.p2align 4,,7
.L254:
	.loc 1 904 0
	cmpl	%ecx, %eax
	je	.L251
	.loc 1 903 0
	addq	$16, %rdx
	movl	(%rdx), %eax
	cmpl	$-1, %eax
	jne	.L254
.L251:
	.loc 1 906 0
	movq	8(%rdx), %rsi
.LBE37:
.LBE36:
	.loc 1 935 0
	testq	%rsi, %rsi
	je	.L256
	.loc 1 936 0
	movl	$.LC46, %edi
	xorl	%eax, %eax
	call	term_printf
.L257:
	.loc 1 939 0
	xorl	%eax, %eax
	movl	%r12d, %edx
	movl	%r13d, %esi
	movl	$.LC48, %edi
	call	term_printf
	.loc 1 940 0
	cmpb	$0, (%rbp)
	jne	.L263
	.loc 1 942 0
	xorl	%eax, %eax
	movl	$.LC50, %edi
	call	term_printf
.LBE35:
.LBE34:
	.loc 1 954 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L263:
.LBB38:
.LBB39:
	.loc 1 941 0
	movq	%rbp, %rsi
	movl	$.LC49, %edi
	xorl	%eax, %eax
	call	term_printf
	.loc 1 942 0
	xorl	%eax, %eax
	movl	$.LC50, %edi
	call	term_printf
.LBE39:
.LBE38:
	.loc 1 954 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L256:
.LBB40:
.LBB41:
	.loc 1 938 0
	movl	%ebx, %esi
	movl	$.LC47, %edi
	xorl	%eax, %eax
	call	term_printf
	jmp	.L257
.L262:
	.loc 1 919 0
	movl	$.LC32, %ecx
	.loc 1 917 0
	testl	%eax, %eax
	jmp	.L261
.LBE41:
.LBE40:
.LFE121:
	.size	usb_host_info_device, .-usb_host_info_device
	.p2align 4,,15
.globl usb_host_info
	.type	usb_host_info, @function
usb_host_info:
.LFB122:
	.loc 1 957 0
	.loc 1 958 0
	movl	$usb_host_info_device, %esi
	xorl	%edi, %edi
	jmp	usb_host_scan
.LFE122:
	.size	usb_host_info, .-usb_host_info
	.comm	sigact,152,32
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
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI0-.LFB107
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI4-.LFB109
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI6-.LFB113
	.byte	0x8f
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI6
	.byte	0xe
	.uleb128 0x80
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI13-.LFB110
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI18-.LFB111
	.byte	0x8d
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI18
	.byte	0xe
	.uleb128 0x60
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI22-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI29-.LFB116
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0xa80
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
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI37-.LFB114
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0x83
	.uleb128 0x7
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI42-.LCFI39
	.byte	0xe
	.uleb128 0x4a0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI44-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI46-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI47-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE22:
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
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI0-.LFB107
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI4-.LFB109
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI6-.LFB113
	.byte	0x8f
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI6
	.byte	0xe
	.uleb128 0x80
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI13-.LFB110
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI18-.LFB111
	.byte	0x8d
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI18
	.byte	0xe
	.uleb128 0x60
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI22-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI29-.LFB116
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0xa80
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
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI37-.LFB114
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0x83
	.uleb128 0x7
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI42-.LCFI39
	.byte	0xe
	.uleb128 0x4a0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI44-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI46-.LCFI44
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI47-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE23:
	.file 3 "hw/usb.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/linux/usbdevice_fs.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 10 "/usr/include/bits/sigaction.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/bits/siginfo.h"
	.file 13 "/usr/include/bits/sigset.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1872
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF225
	.byte	0x1
	.long	.LASF226
	.long	.LASF227
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
	.byte	0x8
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF12
	.byte	0x8
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF13
	.byte	0x8
	.byte	0x8f
	.long	0x3f
	.uleb128 0x7
	.long	0xd2
	.long	0x3f
	.uleb128 0x8
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x8
	.byte	0x91
	.long	0x53
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0xa
	.long	0xfc
	.byte	0x80
	.byte	0xd
	.byte	0x20
	.uleb128 0xb
	.long	.LASF18
	.byte	0xd
	.byte	0x1f
	.long	0xfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x10c
	.long	0x38
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF15
	.byte	0xd
	.byte	0x20
	.long	0xe5
	.uleb128 0x3
	.long	.LASF16
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x12e
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0x31
	.long	0x139
	.uleb128 0xc
	.long	0x305
	.long	.LASF49
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.value	0x115
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.value	0x116
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.value	0x117
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.value	0x118
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF24
	.byte	0x7
	.value	0x119
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x7
	.value	0x11a
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.value	0x11b
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x7
	.value	0x11c
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x7
	.value	0x11e
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF29
	.byte	0x7
	.value	0x11f
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF30
	.byte	0x7
	.value	0x120
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF31
	.byte	0x7
	.value	0x122
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF32
	.byte	0x7
	.value	0x124
	.long	0x349
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF33
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.value	0x12c
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.value	0x132
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.value	0x136
	.long	0x35f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.value	0x13f
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.value	0x148
	.long	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.value	0x149
	.long	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.value	0x14a
	.long	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.value	0x14b
	.long	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.value	0x150
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0xb4
	.uleb128 0xc
	.long	0x343
	.long	.LASF50
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xb
	.long	.LASF51
	.byte	0x7
	.byte	0xbb
	.long	0x343
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x7
	.byte	0xbc
	.long	0x349
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF53
	.byte	0x7
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30c
	.uleb128 0x5
	.byte	0x8
	.long	0x139
	.uleb128 0x7
	.long	0x35f
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x305
	.uleb128 0x7
	.long	0x375
	.long	0x7a
	.uleb128 0x8
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x4
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF56
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF57
	.byte	0x3
	.byte	0x70
	.long	0x3a1
	.uleb128 0xf
	.long	0x493
	.long	.LASF57
	.value	0x478
	.byte	0x3
	.byte	0x70
	.uleb128 0xb
	.long	.LASF58
	.byte	0x3
	.byte	0x75
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x3
	.byte	0x76
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x77
	.long	0x55c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF61
	.byte	0x3
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF62
	.byte	0x3
	.byte	0x7e
	.long	0x55c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF63
	.byte	0x3
	.byte	0x80
	.long	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF64
	.byte	0x3
	.byte	0x81
	.long	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF65
	.byte	0x3
	.byte	0x82
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF66
	.byte	0x3
	.byte	0x83
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xb
	.long	.LASF67
	.byte	0x3
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.long	.LASF68
	.byte	0x3
	.byte	0x86
	.long	0x597
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF69
	.byte	0x3
	.byte	0x87
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF70
	.byte	0x3
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xb
	.long	.LASF71
	.byte	0x3
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xb
	.long	.LASF72
	.byte	0x3
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xb
	.long	.LASF73
	.byte	0x3
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.byte	0x71
	.long	0x49e
	.uleb128 0xc
	.long	0x529
	.long	.LASF74
	.byte	0x38
	.byte	0x3
	.byte	0x71
	.uleb128 0x10
	.string	"pid"
	.byte	0x3
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF75
	.byte	0x3
	.byte	0x9f
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF76
	.byte	0x3
	.byte	0xa0
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.long	.LASF77
	.byte	0x3
	.byte	0xa1
	.long	0x58b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"len"
	.byte	0x3
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF78
	.byte	0x3
	.byte	0xa4
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF79
	.byte	0x3
	.byte	0xa5
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF80
	.byte	0x3
	.byte	0xa6
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF81
	.byte	0x3
	.byte	0xa7
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x11
	.long	0x53e
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x53e
	.uleb128 0x12
	.long	0x544
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x396
	.uleb128 0x5
	.byte	0x8
	.long	0x493
	.uleb128 0x5
	.byte	0x8
	.long	0x529
	.uleb128 0x13
	.long	0x55c
	.byte	0x1
	.uleb128 0x12
	.long	0x53e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x550
	.uleb128 0x11
	.long	0x58b
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x53e
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x58b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x375
	.uleb128 0x5
	.byte	0x8
	.long	0x562
	.uleb128 0x7
	.long	0x5a7
	.long	0x375
	.uleb128 0x8
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x5b8
	.long	0x375
	.uleb128 0x14
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x3
	.byte	0x99
	.long	0x5c3
	.uleb128 0x13
	.long	0x5d4
	.byte	0x1
	.uleb128 0x12
	.long	0x544
	.uleb128 0x12
	.long	0xdd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5b8
	.uleb128 0x5
	.byte	0x8
	.long	0x5e0
	.uleb128 0x13
	.long	0x5ec
	.byte	0x1
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x630
	.long	.LASF83
	.byte	0x18
	.byte	0x5
	.byte	0x31
	.uleb128 0x10
	.string	"ep"
	.byte	0x5
	.byte	0x32
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"len"
	.byte	0x5
	.byte	0x33
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF84
	.byte	0x5
	.byte	0x34
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF77
	.byte	0x5
	.byte	0x35
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x659
	.long	.LASF85
	.byte	0x8
	.byte	0x5
	.byte	0x38
	.uleb128 0xb
	.long	.LASF86
	.byte	0x5
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x5
	.byte	0x3a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xc
	.long	0x682
	.long	.LASF88
	.byte	0x8
	.byte	0x5
	.byte	0x49
	.uleb128 0xb
	.long	.LASF89
	.byte	0x5
	.byte	0x4a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x5
	.byte	0x4b
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xc
	.long	0x6b9
	.long	.LASF91
	.byte	0xc
	.byte	0x5
	.byte	0x59
	.uleb128 0xb
	.long	.LASF92
	.byte	0x5
	.byte	0x5a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x5
	.byte	0x5b
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF94
	.byte	0x5
	.byte	0x5c
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x77c
	.long	.LASF95
	.byte	0x38
	.byte	0x5
	.byte	0x5f
	.uleb128 0xb
	.long	.LASF96
	.byte	0x5
	.byte	0x60
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x5
	.byte	0x61
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF94
	.byte	0x5
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF98
	.byte	0x5
	.byte	0x63
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF99
	.byte	0x5
	.byte	0x64
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF100
	.byte	0x5
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF93
	.byte	0x5
	.byte	0x66
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF101
	.byte	0x5
	.byte	0x67
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF102
	.byte	0x5
	.byte	0x68
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF103
	.byte	0x5
	.byte	0x69
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF104
	.byte	0x5
	.byte	0x6a
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF105
	.byte	0x5
	.byte	0x6c
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF106
	.byte	0x5
	.byte	0x6d
	.long	0x77c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x7
	.long	0x78b
	.long	0x682
	.uleb128 0x15
	.long	0x61
	.byte	0x0
	.uleb128 0xc
	.long	0x7c2
	.long	.LASF107
	.byte	0x10
	.byte	0x5
	.byte	0x71
	.uleb128 0xb
	.long	.LASF108
	.byte	0x5
	.byte	0x72
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF109
	.byte	0x5
	.byte	0x73
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF77
	.byte	0x5
	.byte	0x75
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.long	0x7e5
	.long	.LASF228
	.byte	0x8
	.byte	0xc
	.byte	0x22
	.uleb128 0x17
	.long	.LASF110
	.byte	0xc
	.byte	0x23
	.long	0x3f
	.uleb128 0x17
	.long	.LASF111
	.byte	0xc
	.byte	0x24
	.long	0xdd
	.byte	0x0
	.uleb128 0x2
	.long	.LASF112
	.byte	0xc
	.byte	0x25
	.long	0x7c2
	.uleb128 0xa
	.long	0x815
	.byte	0x8
	.byte	0xc
	.byte	0x43
	.uleb128 0xb
	.long	.LASF113
	.byte	0xc
	.byte	0x41
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF114
	.byte	0xc
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.long	0x848
	.byte	0x10
	.byte	0xc
	.byte	0x4b
	.uleb128 0xb
	.long	.LASF115
	.byte	0xc
	.byte	0x48
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF116
	.byte	0xc
	.byte	0x49
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF117
	.byte	0xc
	.byte	0x4a
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x87b
	.byte	0x10
	.byte	0xc
	.byte	0x53
	.uleb128 0xb
	.long	.LASF113
	.byte	0xc
	.byte	0x50
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF114
	.byte	0xc
	.byte	0x51
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF117
	.byte	0xc
	.byte	0x52
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x8ca
	.byte	0x20
	.byte	0xc
	.byte	0x5d
	.uleb128 0xb
	.long	.LASF113
	.byte	0xc
	.byte	0x58
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF114
	.byte	0xc
	.byte	0x59
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF118
	.byte	0xc
	.byte	0x5a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF119
	.byte	0xc
	.byte	0x5b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF120
	.byte	0xc
	.byte	0x5c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x8e1
	.byte	0x8
	.byte	0xc
	.byte	0x63
	.uleb128 0xb
	.long	.LASF121
	.byte	0xc
	.byte	0x62
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x906
	.byte	0x10
	.byte	0xc
	.byte	0x6a
	.uleb128 0xb
	.long	.LASF122
	.byte	0xc
	.byte	0x68
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF123
	.byte	0xc
	.byte	0x69
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.long	0x95c
	.byte	0x70
	.byte	0xc
	.byte	0x6b
	.uleb128 0x17
	.long	.LASF124
	.byte	0xc
	.byte	0x3c
	.long	0x95c
	.uleb128 0x17
	.long	.LASF125
	.byte	0xc
	.byte	0x43
	.long	0x7f0
	.uleb128 0x17
	.long	.LASF126
	.byte	0xc
	.byte	0x4b
	.long	0x815
	.uleb128 0x19
	.string	"_rt"
	.byte	0xc
	.byte	0x53
	.long	0x848
	.uleb128 0x17
	.long	.LASF127
	.byte	0xc
	.byte	0x5d
	.long	0x87b
	.uleb128 0x17
	.long	.LASF128
	.byte	0xc
	.byte	0x63
	.long	0x8ca
	.uleb128 0x17
	.long	.LASF129
	.byte	0xc
	.byte	0x6a
	.long	0x8e1
	.byte	0x0
	.uleb128 0x7
	.long	0x96c
	.long	0x3f
	.uleb128 0x8
	.long	0x61
	.byte	0x1b
	.byte	0x0
	.uleb128 0xc
	.long	0x9b1
	.long	.LASF130
	.byte	0x80
	.byte	0xc
	.byte	0x34
	.uleb128 0xb
	.long	.LASF131
	.byte	0xc
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF132
	.byte	0xc
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF133
	.byte	0xc
	.byte	0x38
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF134
	.byte	0xc
	.byte	0x6b
	.long	0x906
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF135
	.byte	0xc
	.byte	0x6c
	.long	0x96c
	.uleb128 0x2
	.long	.LASF136
	.byte	0xb
	.byte	0x54
	.long	0x5da
	.uleb128 0x18
	.long	0x9e6
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.uleb128 0x17
	.long	.LASF137
	.byte	0xa
	.byte	0x20
	.long	0x9bc
	.uleb128 0x17
	.long	.LASF138
	.byte	0xa
	.byte	0x22
	.long	0xa02
	.byte	0x0
	.uleb128 0x13
	.long	0x9fc
	.byte	0x1
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x9fc
	.uleb128 0x12
	.long	0xdd
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9b1
	.uleb128 0x5
	.byte	0x8
	.long	0x9e6
	.uleb128 0xc
	.long	0xa4f
	.long	.LASF139
	.byte	0x98
	.byte	0xa
	.byte	0x1a
	.uleb128 0xb
	.long	.LASF140
	.byte	0xa
	.byte	0x24
	.long	0x9c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF141
	.byte	0xa
	.byte	0x2c
	.long	0x10c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF142
	.byte	0xa
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF143
	.byte	0xa
	.byte	0x32
	.long	0xa51
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xa4f
	.uleb128 0xc
	.long	0xac6
	.long	.LASF144
	.byte	0x18
	.byte	0x1
	.byte	0x24
	.uleb128 0xb
	.long	.LASF145
	.byte	0x1
	.byte	0x25
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF146
	.byte	0x1
	.byte	0x26
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF147
	.byte	0x1
	.byte	0x27
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF148
	.byte	0x1
	.byte	0x28
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF149
	.byte	0x1
	.byte	0x29
	.long	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.byte	0x2a
	.long	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.byte	0x2b
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1
	.byte	0x30
	.long	0xad1
	.uleb128 0x11
	.long	0xb04
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0xdd
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x6f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0xb1f
	.long	.LASF151
	.byte	0x1
	.byte	0x1
	.byte	0x41
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1
	.byte	0x42
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xf
	.long	0xbb2
	.long	.LASF152
	.value	0x8b0
	.byte	0x1
	.byte	0x46
	.uleb128 0x10
	.string	"dev"
	.byte	0x1
	.byte	0x47
	.long	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"fd"
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.uleb128 0xb
	.long	.LASF153
	.byte	0x1
	.byte	0x49
	.long	0xc2
	.byte	0x3
	.byte	0x23
	.uleb128 0x47c
	.uleb128 0xb
	.long	.LASF154
	.byte	0x1
	.byte	0x4a
	.long	0x544
	.byte	0x3
	.byte	0x23
	.uleb128 0x488
	.uleb128 0xb
	.long	.LASF155
	.byte	0x1
	.byte	0x4b
	.long	0xbb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0xb
	.long	.LASF156
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xb
	.long	.LASF157
	.byte	0x1
	.byte	0x4d
	.long	0x5a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xb
	.long	.LASF158
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a4
	.uleb128 0xb
	.long	.LASF159
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a8
	.byte	0x0
	.uleb128 0x7
	.long	0xbc2
	.long	0xb04
	.uleb128 0x8
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF152
	.byte	0x1
	.byte	0x50
	.long	0xb1f
	.uleb128 0xc
	.long	0xc04
	.long	.LASF160
	.byte	0x18
	.byte	0x1
	.byte	0x52
	.uleb128 0x10
	.string	"urb"
	.byte	0x1
	.byte	0x53
	.long	0xc04
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.byte	0x54
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF161
	.byte	0x1
	.byte	0x55
	.long	0xc0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6b9
	.uleb128 0x5
	.byte	0x8
	.long	0xbcd
	.uleb128 0x2
	.long	.LASF160
	.byte	0x1
	.byte	0x56
	.long	0xbcd
	.uleb128 0x1b
	.long	0xc74
	.long	.LASF162
	.byte	0x30
	.byte	0x1
	.value	0x32b
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.value	0x32c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF164
	.byte	0x1
	.value	0x32d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x1
	.value	0x32e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.value	0x32f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF166
	.byte	0x1
	.value	0x330
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x1
	.value	0x331
	.long	0xc1b
	.uleb128 0x1b
	.long	0xcac
	.long	.LASF167
	.byte	0x10
	.byte	0x1
	.value	0x36e
	.uleb128 0xd
	.long	.LASF168
	.byte	0x1
	.value	0x36f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF169
	.byte	0x1
	.value	0x370
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1d
	.long	0xd70
	.long	.LASF175
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	0x3f
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x8d
	.long	0xd70
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	.LASF170
	.byte	0x1
	.byte	0x8f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF171
	.byte	0x1
	.byte	0x8f
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF172
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.long	.LASF173
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	.LASF186
	.byte	0x1
	.byte	0xce
	.quad	.L4
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x20
	.long	.LASF174
	.byte	0x1
	.byte	0xb7
	.long	0x78b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbc2
	.uleb128 0x25
	.long	0xda2
	.long	.LASF176
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xdb
	.long	0x53e
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0xdd9
	.long	.LASF177
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xe5
	.long	0x53e
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xe7
	.long	0xd70
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x26
	.long	0xe96
	.long	.LASF178
	.byte	0x1
	.value	0x1ec
	.byte	0x1
	.long	0x3f
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1eb
	.long	0xd70
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF179
	.byte	0x1
	.value	0x1ed
	.long	0x58b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF76
	.byte	0x1
	.value	0x1ee
	.long	0x375
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF96
	.byte	0x1
	.value	0x1ee
	.long	0x375
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.long	.LASF156
	.byte	0x1
	.value	0x1ee
	.long	0x375
	.byte	0x2
	.byte	0x91
	.sleb128 31
	.uleb128 0x28
	.long	.LASF180
	.byte	0x1
	.value	0x1ee
	.long	0x375
	.byte	0x2
	.byte	0x91
	.sleb128 30
	.uleb128 0x29
	.string	"ct"
	.byte	0x1
	.value	0x1ef
	.long	0xa57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x28
	.long	.LASF86
	.byte	0x1
	.value	0x1f0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x1f0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.LASF92
	.byte	0x1
	.value	0x1f0
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1f0
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1d
	.long	0xf54
	.long	.LASF181
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xf0
	.long	0x53e
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x1
	.byte	0xf1
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF183
	.byte	0x1
	.byte	0xf2
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x1
	.byte	0xf3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.byte	0xf4
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.byte	0xf5
	.long	0x58b
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0xf7
	.long	0xd70
	.uleb128 0x22
	.string	"ct"
	.byte	0x1
	.byte	0xf8
	.long	0xa57
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.string	"si"
	.byte	0x1
	.byte	0xf9
	.long	0x630
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.byte	0xfa
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0xfb
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF187
	.byte	0x1
	.value	0x113
	.quad	.L87
	.byte	0x0
	.uleb128 0x26
	.long	0x1075
	.long	.LASF188
	.byte	0x1
	.value	0x133
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.string	"dev"
	.byte	0x1
	.value	0x132
	.long	0x53e
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x132
	.long	0x544
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x134
	.long	0xd70
	.uleb128 0x29
	.string	"bt"
	.byte	0x1
	.value	0x135
	.long	0x5ec
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x136
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	.LASF76
	.byte	0x1
	.value	0x137
	.long	0x375
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x1075
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x2e
	.long	0x1087
	.uleb128 0x2e
	.long	0x1093
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x30
	.long	0x109d
	.uleb128 0x31
	.long	0x10a7
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	0x10b3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	0x10bf
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	0x10cb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	0x1043
	.long	0x10d8
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x2e
	.long	0x10e9
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x31
	.long	0x10f4
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x1106
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2e
	.long	0x1117
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x31
	.long	0x1122
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	0x112d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x10d8
	.long	.LASF189
	.byte	0x1
	.value	0x195
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x34
	.string	"dev"
	.byte	0x1
	.value	0x194
	.long	0x53e
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x194
	.long	0x544
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x196
	.long	0xd70
	.uleb128 0x2c
	.string	"urb"
	.byte	0x1
	.value	0x197
	.long	0xc04
	.uleb128 0x35
	.long	.LASF190
	.byte	0x1
	.value	0x197
	.long	0xc04
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.value	0x198
	.long	0x3f
	.uleb128 0x35
	.long	.LASF76
	.byte	0x1
	.value	0x199
	.long	0x375
	.byte	0x0
	.uleb128 0x36
	.long	0x1100
	.long	.LASF191
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x37
	.string	"urb"
	.byte	0x1
	.byte	0x5a
	.long	0xc04
	.uleb128 0x21
	.long	.LASF190
	.byte	0x1
	.byte	0x5c
	.long	0x1100
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc10
	.uleb128 0x36
	.long	0x1139
	.long	.LASF192
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x37
	.string	"urb"
	.byte	0x1
	.byte	0x67
	.long	0xc04
	.uleb128 0x21
	.long	.LASF190
	.byte	0x1
	.byte	0x69
	.long	0x1100
	.uleb128 0x21
	.long	.LASF193
	.byte	0x1
	.byte	0x6a
	.long	0x1100
	.byte	0x0
	.uleb128 0x26
	.long	0x11bb
	.long	.LASF194
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.long	0x3f
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x2c8
	.long	0xdf
	.byte	0x1
	.byte	0x5e
	.uleb128 0x38
	.long	.LASF195
	.byte	0x1
	.value	0x2c8
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"str"
	.byte	0x1
	.value	0x2c9
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"tag"
	.byte	0x1
	.value	0x2c9
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF196
	.byte	0x1
	.value	0x2ca
	.long	0x6f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x2cc
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.string	"q"
	.byte	0x1
	.value	0x2cd
	.long	0xdf
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x26
	.long	0x13a5
	.long	.LASF197
	.byte	0x1
	.value	0x2df
	.byte	0x1
	.long	0x3f
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.long	.LASF58
	.byte	0x1
	.value	0x2de
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x38
	.long	.LASF198
	.byte	0x1
	.value	0x2de
	.long	0x13a5
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x2e0
	.long	0x13ab
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	.LASF199
	.byte	0x1
	.value	0x2e1
	.long	0x13b1
	.byte	0x3
	.byte	0x91
	.sleb128 1600
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.value	0x2e2
	.long	0x13b1
	.byte	0x3
	.byte	0x91
	.sleb128 576
	.uleb128 0x28
	.long	.LASF165
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x28
	.long	.LASF65
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x28
	.long	.LASF61
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x28
	.long	.LASF200
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF201
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x28
	.long	.LASF164
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x28
	.long	.LASF163
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x2e4
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.long	.LASF166
	.byte	0x1
	.value	0x2e5
	.long	0x13c2
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2b
	.long	.LASF202
	.byte	0x1
	.value	0x326
	.quad	.L164
	.uleb128 0x2b
	.long	.LASF186
	.byte	0x1
	.value	0x31f
	.quad	.L166
	.uleb128 0x32
	.long	0x12ed
	.long	0x13d3
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x2e
	.long	0x13e6
	.byte	0x0
	.uleb128 0x32
	.long	0x130c
	.long	0x13d3
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x2e
	.long	0x13e6
	.byte	0x0
	.uleb128 0x39
	.long	0x134e
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x35
	.long	.LASF203
	.byte	0x1
	.value	0x304
	.long	0x2d
	.uleb128 0x35
	.long	.LASF204
	.byte	0x1
	.value	0x304
	.long	0x2d
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x35
	.long	.LASF205
	.byte	0x1
	.value	0x304
	.long	0x13f3
	.uleb128 0x28
	.long	.LASF206
	.byte	0x1
	.value	0x304
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x35
	.long	.LASF203
	.byte	0x1
	.value	0x306
	.long	0x2d
	.uleb128 0x35
	.long	.LASF204
	.byte	0x1
	.value	0x306
	.long	0x2d
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x35
	.long	.LASF205
	.byte	0x1
	.value	0x306
	.long	0x13f3
	.uleb128 0x28
	.long	.LASF206
	.byte	0x1
	.value	0x306
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xac6
	.uleb128 0x5
	.byte	0x8
	.long	0x12e
	.uleb128 0x7
	.long	0x13c2
	.long	0x7a
	.uleb128 0x14
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x7
	.long	0x13d3
	.long	0x7a
	.uleb128 0x14
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x3a
	.long	0x13f3
	.byte	0x1
	.long	.LASF208
	.byte	0x2
	.value	0x11d
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x3b
	.long	.LASF207
	.byte	0x2
	.value	0x11c
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x13f9
	.uleb128 0x6
	.long	0x81
	.uleb128 0x3c
	.long	0x14ff
	.byte	0x1
	.long	.LASF209
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	0x53e
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.long	.LASF66
	.byte	0x1
	.value	0x256
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x258
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x258
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.string	"dev"
	.byte	0x1
	.value	0x259
	.long	0xd70
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"ci"
	.byte	0x1
	.value	0x25a
	.long	0x659
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.value	0x25b
	.long	0x13b1
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x28
	.long	.LASF165
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF65
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	.LASF166
	.byte	0x1
	.value	0x25d
	.long	0x11e
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2b
	.long	.LASF186
	.byte	0x1
	.value	0x2c1
	.quad	.L213
	.uleb128 0x2d
	.long	0x14ff
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x2e
	.long	0x1511
	.uleb128 0x2e
	.long	0x151d
	.uleb128 0x2e
	.long	0x1529
	.uleb128 0x2e
	.long	0x1535
	.uleb128 0x2e
	.long	0x1541
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0xe0
	.uleb128 0x31
	.long	0x154d
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	0x1557
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x1563
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x156f
	.long	.LASF210
	.byte	0x1
	.value	0x34c
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF211
	.byte	0x1
	.value	0x349
	.long	0x4d
	.uleb128 0x3b
	.long	.LASF212
	.byte	0x1
	.value	0x349
	.long	0x4d
	.uleb128 0x3b
	.long	.LASF166
	.byte	0x1
	.value	0x34a
	.long	0xdf
	.uleb128 0x3b
	.long	.LASF213
	.byte	0x1
	.value	0x34a
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF66
	.byte	0x1
	.value	0x34b
	.long	0x6f
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x34d
	.long	0x6f
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.value	0x34e
	.long	0x3f
	.uleb128 0x2c
	.string	"fs"
	.byte	0x1
	.value	0x34f
	.long	0xc74
	.byte	0x0
	.uleb128 0x26
	.long	0x160e
	.long	.LASF214
	.byte	0x1
	.value	0x337
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.long	.LASF58
	.byte	0x1
	.value	0x333
	.long	0xdd
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF165
	.byte	0x1
	.value	0x333
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF65
	.byte	0x1
	.value	0x333
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF201
	.byte	0x1
	.value	0x334
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.long	.LASF163
	.byte	0x1
	.value	0x335
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x38
	.long	.LASF164
	.byte	0x1
	.value	0x335
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LASF166
	.byte	0x1
	.value	0x336
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.long	.LASF61
	.byte	0x1
	.value	0x336
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x338
	.long	0x160e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc74
	.uleb128 0x26
	.long	0x172d
	.long	.LASF215
	.byte	0x1
	.value	0x3b6
	.byte	0x1
	.long	0x3f
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x38
	.long	.LASF58
	.byte	0x1
	.value	0x3b1
	.long	0xdd
	.byte	0x1
	.byte	0x55
	.uleb128 0x38
	.long	.LASF165
	.byte	0x1
	.value	0x3b1
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.long	.LASF65
	.byte	0x1
	.value	0x3b1
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.long	.LASF201
	.byte	0x1
	.value	0x3b2
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF163
	.byte	0x1
	.value	0x3b3
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.long	.LASF164
	.byte	0x1
	.value	0x3b3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF166
	.byte	0x1
	.value	0x3b4
	.long	0x6f
	.byte	0x1
	.byte	0x56
	.uleb128 0x38
	.long	.LASF61
	.byte	0x1
	.value	0x3b5
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	0x16f6
	.long	0x172d
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2e
	.long	0x173b
	.uleb128 0x2e
	.long	0x1747
	.uleb128 0x2e
	.long	0x1753
	.uleb128 0x2e
	.long	0x175f
	.uleb128 0x2e
	.long	0x176b
	.uleb128 0x2e
	.long	0x1777
	.uleb128 0x2e
	.long	0x1783
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x30
	.long	0x178f
	.uleb128 0x31
	.long	0x179b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x17a8
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x3d
	.long	0x17ba
	.byte	0x1
	.byte	0x52
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x31
	.long	0x17c6
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x17a8
	.long	.LASF216
	.byte	0x1
	.value	0x392
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF165
	.byte	0x1
	.value	0x38e
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF65
	.byte	0x1
	.value	0x38e
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF201
	.byte	0x1
	.value	0x38e
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF163
	.byte	0x1
	.value	0x38f
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF164
	.byte	0x1
	.value	0x38f
	.long	0x3f
	.uleb128 0x3b
	.long	.LASF166
	.byte	0x1
	.value	0x390
	.long	0x6f
	.uleb128 0x3b
	.long	.LASF61
	.byte	0x1
	.value	0x391
	.long	0x3f
	.uleb128 0x35
	.long	.LASF217
	.byte	0x1
	.value	0x393
	.long	0x6f
	.uleb128 0x35
	.long	.LASF218
	.byte	0x1
	.value	0x393
	.long	0x6f
	.byte	0x0
	.uleb128 0x33
	.long	0x17d1
	.long	.LASF219
	.byte	0x1
	.value	0x385
	.byte	0x1
	.long	0x6f
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF168
	.byte	0x1
	.value	0x384
	.long	0x375
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x386
	.long	0x17d1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x17d7
	.uleb128 0x6
	.long	0xc80
	.uleb128 0x3f
	.byte	0x1
	.long	.LASF229
	.byte	0x1
	.value	0x3bd
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x40
	.long	.LASF220
	.byte	0x6
	.byte	0x91
	.long	0x349
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF221
	.byte	0x6
	.byte	0x92
	.long	0x349
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF222
	.byte	0x6
	.byte	0x93
	.long	0x349
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF223
	.byte	0x1
	.byte	0x3e
	.long	0xa08
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	sigact
	.uleb128 0x20
	.long	.LASF224
	.byte	0x1
	.byte	0x58
	.long	0x1100
	.byte	0x9
	.byte	0x3
	.quad	pending_urbs
	.uleb128 0x7
	.long	0x185a
	.long	0x17d7
	.uleb128 0x8
	.long	0x61
	.byte	0xd
	.byte	0x0
	.uleb128 0x28
	.long	.LASF167
	.byte	0x1
	.value	0x373
	.long	0x1870
	.byte	0x9
	.byte	0x3
	.quad	usb_class_info
	.uleb128 0x6
	.long	0x184a
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1876
	.long	0x13fe
	.string	"usb_host_device_open"
	.long	0x17dc
	.string	"usb_host_info"
	.long	0x181f
	.string	"sigact"
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF145:
	.string	"bRequestType"
.LASF224:
	.string	"pending_urbs"
.LASF97:
	.string	"endpoint"
.LASF204:
	.string	"__s2_len"
.LASF105:
	.string	"usercontext"
.LASF208:
	.string	"atoi"
.LASF181:
	.string	"usb_host_handle_control"
.LASF153:
	.string	"pipe_fds"
.LASF30:
	.string	"_IO_save_end"
.LASF131:
	.string	"si_signo"
.LASF226:
	.string	"usb-linux.c"
.LASF219:
	.string	"usb_class_str"
.LASF216:
	.string	"usb_info_device"
.LASF23:
	.string	"_IO_write_base"
.LASF67:
	.string	"state"
.LASF190:
	.string	"purb"
.LASF39:
	.string	"_lock"
.LASF72:
	.string	"setup_len"
.LASF222:
	.string	"stderr"
.LASF87:
	.string	"altsetting"
.LASF122:
	.string	"si_band"
.LASF179:
	.string	"descriptors"
.LASF82:
	.string	"USBCallback"
.LASF28:
	.string	"_IO_save_base"
.LASF110:
	.string	"sival_int"
.LASF191:
	.string	"add_pending_urb"
.LASF143:
	.string	"sa_restorer"
.LASF212:
	.string	"paddr"
.LASF36:
	.string	"_cur_column"
.LASF46:
	.string	"_mode"
.LASF26:
	.string	"_IO_buf_base"
.LASF17:
	.string	"FILE"
.LASF207:
	.string	"__nptr"
.LASF2:
	.string	"long int"
.LASF187:
	.string	"do_request"
.LASF50:
	.string	"_IO_marker"
.LASF58:
	.string	"opaque"
.LASF57:
	.string	"USBDevice"
.LASF92:
	.string	"length"
.LASF175:
	.string	"usb_host_update_interfaces"
.LASF103:
	.string	"error_count"
.LASF194:
	.string	"get_tag_value"
.LASF211:
	.string	"pbus_num"
.LASF49:
	.string	"_IO_FILE"
.LASF178:
	.string	"usb_linux_update_endp_table"
.LASF160:
	.string	"PendingURB"
.LASF85:
	.string	"usbdevfs_setinterface"
.LASF155:
	.string	"endp_table"
.LASF6:
	.string	"unsigned char"
.LASF118:
	.string	"si_status"
.LASF141:
	.string	"sa_mask"
.LASF174:
	.string	"ctrl"
.LASF144:
	.string	"usb_ctrltransfer"
.LASF124:
	.string	"_pad"
.LASF76:
	.string	"devep"
.LASF137:
	.string	"sa_handler"
.LASF183:
	.string	"value"
.LASF188:
	.string	"usb_host_handle_data"
.LASF93:
	.string	"actual_length"
.LASF5:
	.string	"char"
.LASF126:
	.string	"_timer"
.LASF73:
	.string	"setup_index"
.LASF168:
	.string	"class"
.LASF192:
	.string	"del_pending_urb"
.LASF48:
	.string	"_IO_lock_t"
.LASF136:
	.string	"__sighandler_t"
.LASF120:
	.string	"si_stime"
.LASF98:
	.string	"flags"
.LASF20:
	.string	"_IO_read_ptr"
.LASF59:
	.string	"handle_packet"
.LASF132:
	.string	"si_errno"
.LASF53:
	.string	"_pos"
.LASF108:
	.string	"ifno"
.LASF203:
	.string	"__s1_len"
.LASF31:
	.string	"_markers"
.LASF109:
	.string	"ioctl_code"
.LASF74:
	.string	"USBPacket"
.LASF99:
	.string	"buffer"
.LASF185:
	.string	"intf_update_required"
.LASF61:
	.string	"speed"
.LASF149:
	.string	"wLength"
.LASF86:
	.string	"interface"
.LASF156:
	.string	"configuration"
.LASF111:
	.string	"sival_ptr"
.LASF184:
	.string	"index"
.LASF189:
	.string	"usb_host_handle_isoch"
.LASF172:
	.string	"nb_interfaces"
.LASF0:
	.string	"long unsigned int"
.LASF195:
	.string	"buf_size"
.LASF91:
	.string	"usbdevfs_iso_packet_desc"
.LASF94:
	.string	"status"
.LASF34:
	.string	"_flags2"
.LASF173:
	.string	"nb_configurations"
.LASF22:
	.string	"_IO_read_base"
.LASF107:
	.string	"usbdevfs_ioctl"
.LASF75:
	.string	"devaddr"
.LASF47:
	.string	"_unused2"
.LASF220:
	.string	"stdin"
.LASF135:
	.string	"siginfo_t"
.LASF128:
	.string	"_sigfault"
.LASF35:
	.string	"_old_offset"
.LASF102:
	.string	"number_of_packets"
.LASF88:
	.string	"usbdevfs_connectinfo"
.LASF205:
	.string	"__s1"
.LASF140:
	.string	"__sigaction_handler"
.LASF146:
	.string	"bRequest"
.LASF101:
	.string	"start_frame"
.LASF95:
	.string	"usbdevfs_urb"
.LASF3:
	.string	"long long int"
.LASF79:
	.string	"complete_opaque"
.LASF150:
	.string	"USBScanFunc"
.LASF25:
	.string	"_IO_write_end"
.LASF201:
	.string	"class_id"
.LASF158:
	.string	"descr_len"
.LASF84:
	.string	"timeout"
.LASF83:
	.string	"usbdevfs_bulktransfer"
.LASF65:
	.string	"addr"
.LASF51:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF159:
	.string	"urbs_ready"
.LASF225:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF157:
	.string	"descr"
.LASF41:
	.string	"__pad1"
.LASF42:
	.string	"__pad2"
.LASF43:
	.string	"__pad3"
.LASF44:
	.string	"__pad4"
.LASF45:
	.string	"__pad5"
.LASF104:
	.string	"signr"
.LASF52:
	.string	"_sbuf"
.LASF68:
	.string	"setup_buf"
.LASF214:
	.string	"usb_host_find_device_scan"
.LASF200:
	.string	"device_count"
.LASF197:
	.string	"usb_host_scan"
.LASF127:
	.string	"_sigchld"
.LASF169:
	.string	"class_name"
.LASF18:
	.string	"__val"
.LASF19:
	.string	"_flags"
.LASF14:
	.string	"__clock_t"
.LASF151:
	.string	"endp_data"
.LASF69:
	.string	"data_buf"
.LASF142:
	.string	"sa_flags"
.LASF96:
	.string	"type"
.LASF161:
	.string	"next"
.LASF213:
	.string	"product_name_size"
.LASF123:
	.string	"si_fd"
.LASF13:
	.string	"__pid_t"
.LASF125:
	.string	"_kill"
.LASF70:
	.string	"remote_wakeup"
.LASF40:
	.string	"_offset"
.LASF209:
	.string	"usb_host_device_open"
.LASF16:
	.string	"long long unsigned int"
.LASF148:
	.string	"wIndex"
.LASF66:
	.string	"devname"
.LASF54:
	.string	"uint8_t"
.LASF55:
	.string	"uint16_t"
.LASF11:
	.string	"__off_t"
.LASF32:
	.string	"_chain"
.LASF117:
	.string	"si_sigval"
.LASF115:
	.string	"si_tid"
.LASF202:
	.string	"the_end"
.LASF177:
	.string	"usb_host_handle_destroy"
.LASF164:
	.string	"product_id"
.LASF217:
	.string	"class_str"
.LASF223:
	.string	"sigact"
.LASF218:
	.string	"speed_str"
.LASF139:
	.string	"sigaction"
.LASF133:
	.string	"si_code"
.LASF130:
	.string	"siginfo"
.LASF196:
	.string	"stopchars"
.LASF29:
	.string	"_IO_backup_base"
.LASF38:
	.string	"_shortbuf"
.LASF182:
	.string	"request"
.LASF63:
	.string	"handle_control"
.LASF147:
	.string	"wValue"
.LASF229:
	.string	"usb_host_info"
.LASF138:
	.string	"sa_sigaction"
.LASF81:
	.string	"cancel_opaque"
.LASF12:
	.string	"__off64_t"
.LASF116:
	.string	"si_overrun"
.LASF129:
	.string	"_sigpoll"
.LASF227:
	.string	"/home/remco/Projects/Argos/src"
.LASF186:
	.string	"fail"
.LASF27:
	.string	"_IO_buf_end"
.LASF114:
	.string	"si_uid"
.LASF162:
	.string	"FindDeviceState"
.LASF62:
	.string	"handle_reset"
.LASF215:
	.string	"usb_host_info_device"
.LASF176:
	.string	"usb_host_handle_reset"
.LASF8:
	.string	"short int"
.LASF198:
	.string	"func"
.LASF100:
	.string	"buffer_length"
.LASF165:
	.string	"bus_num"
.LASF37:
	.string	"_vtable_offset"
.LASF180:
	.string	"alt_interface"
.LASF121:
	.string	"si_addr"
.LASF7:
	.string	"signed char"
.LASF154:
	.string	"packet"
.LASF171:
	.string	"config_descr_len"
.LASF106:
	.string	"iso_frame_desc"
.LASF152:
	.string	"USBHostDevice"
.LASF10:
	.string	"__uid_t"
.LASF21:
	.string	"_IO_read_end"
.LASF56:
	.string	"uint32_t"
.LASF134:
	.string	"_sifields"
.LASF60:
	.string	"handle_destroy"
.LASF210:
	.string	"usb_host_find_device"
.LASF33:
	.string	"_fileno"
.LASF113:
	.string	"si_pid"
.LASF170:
	.string	"dev_descr_len"
.LASF80:
	.string	"cancel_cb"
.LASF4:
	.string	"short unsigned int"
.LASF221:
	.string	"stdout"
.LASF90:
	.string	"slow"
.LASF24:
	.string	"_IO_write_ptr"
.LASF206:
	.string	"__result"
.LASF78:
	.string	"complete_cb"
.LASF199:
	.string	"line"
.LASF166:
	.string	"product_name"
.LASF112:
	.string	"sigval_t"
.LASF15:
	.string	"__sigset_t"
.LASF77:
	.string	"data"
.LASF71:
	.string	"setup_state"
.LASF193:
	.string	"prev"
.LASF228:
	.string	"sigval"
.LASF89:
	.string	"devnum"
.LASF167:
	.string	"usb_class_info"
.LASF119:
	.string	"si_utime"
.LASF64:
	.string	"handle_data"
.LASF163:
	.string	"vendor_id"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
