	.file	"vmware_vga.c"
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
	.string	"Dos"
.LC1:
	.string	"Windows 3.1"
.LC2:
	.string	"Windows 95"
.LC3:
	.string	"Windows 98"
.LC4:
	.string	"Windows ME"
.LC5:
	.string	"Windows NT"
.LC6:
	.string	"Windows 2000"
.LC7:
	.string	"Linux"
.LC8:
	.string	"OS/2"
.LC9:
	.string	"an unknown OS"
.LC10:
	.string	"BSD"
.LC11:
	.string	"Whistler"
.LC12:
	.string	"Windows 2003"
	.data
	.align 32
	.type	vmsvga_guest_id, @object
	.size	vmsvga_guest_id, 176
vmsvga_guest_id:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC12
	.section	.rodata
	.align 16
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 16
__FUNCTION__.0:
	.string	"vmsvga_fifo_run"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"%s: Unknown command 0x%02x in SVGA command FIFO\n"
	.text
	.p2align 4,,15
	.type	vmsvga_fifo_run, @function
vmsvga_fifo_run:
.LFB206:
	.file 1 "/home/remco/Projects/Argos/src/hw/vmware_vga.c"
	.loc 1 479 0
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	.loc 1 481 0
	xorl	%r13d, %r13d
	.loc 1 479 0
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	movq	%rdi, %rbx
	subq	$8312, %rsp
.LCFI6:
.L160:
.LBB2:
.LBB3:
	.loc 1 464 0
	movl	67144(%rbx), %edx
	testl	%edx, %edx
	je	.L151
	.p2align 4,,7
.L164:
	movl	67140(%rbx), %eax
	testl	%eax, %eax
	je	.L151
	movq	67232(%rbx), %rsi
	movl	12(%rsi), %ecx
.LBE3:
.LBE2:
	.loc 1 463 0
	cmpl	%ecx, 8(%rsi)
	je	.L151
	.loc 1 471 0
	movl	%ecx, %eax
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rsi,%rax,4), %edi
	.loc 1 472 0
	leal	4(%rcx), %eax
	movl	%eax, 12(%rsi)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L134
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L134:
	.loc 1 470 0
	cmpl	$30, %edi
	ja	.L159
	mov	%edi, %eax
	jmp	*.L133(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L133:
	.quad	.L160
	.quad	.L9
	.quad	.L19
	.quad	.L42
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L112
	.quad	.L113
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L159
	.quad	.L67
	.quad	.L159
	.quad	.L159
	.quad	.L100
	.quad	.L159
	.quad	.L114
	.quad	.L9
	.quad	.L160
	.quad	.L160
	.quad	.L121
	.quad	.L160
	.quad	.L160
	.text
.L100:
.LBB4:
.LBB5:
	.loc 1 472 0
	movq	67232(%rbx), %rax
	addl	$4, 12(%rax)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L101
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L101:
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	.loc 1 472 0
	addl	$4, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L103
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L103:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 1 472 0
	addl	$4, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L105
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L105:
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %r8d
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L107
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L107:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %esi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L109
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L109:
.LBE13:
.LBE12:
	.loc 1 552 0
	movl	%r8d, %r13d
	imull	%esi, %r13d
.L111:
	.p2align 4,,7
.L159:
	.loc 1 470 0
	decl	%r13d
	cmpl	$-1, %r13d
	je	.L150
.L163:
.LBB14:
.LBB15:
	.loc 1 472 0
	movq	67232(%rbx), %rax
	addl	$4, 12(%rax)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L159
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.LBE15:
.LBE14:
	.loc 1 470 0
	decl	%r13d
	cmpl	$-1, %r13d
	jne	.L163
.L150:
	.loc 1 584 0
	movl	%edi, %edx
	xorl	%eax, %eax
	movl	$__FUNCTION__.0, %esi
	movl	$.LC13, %edi
	call	printf
.LBB16:
.LBB17:
	.loc 1 464 0
	movl	67144(%rbx), %edx
	testl	%edx, %edx
	jne	.L164
.L151:
.LBE17:
.LBE16:
	.loc 1 589 0
	movl	$0, 67220(%rbx)
	addq	$8312, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L121:
	.loc 1 566 0
	movl	$12, %r13d
	jmp	.L159
.L9:
.LBB18:
.LBB19:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %r9d
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L10
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L10:
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %r8d
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L12
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L12:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L14
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L14:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %esi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L16
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L16:
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 1 322 0
	movl	75436(%rbx), %eax
	movslq	%eax,%rdx
	incl	%eax
	salq	$4, %rdx
	.loc 1 323 0
	andl	$511, %eax
	.loc 1 322 0
	addq	%rbx, %rdx
	.loc 1 323 0
	movl	%eax, 75436(%rbx)
	.loc 1 322 0
	leaq	67240(%rdx), %rcx
	.loc 1 324 0
	movl	%r9d, 67240(%rdx)
	.loc 1 325 0
	movl	%r8d, 4(%rcx)
	.loc 1 326 0
	movl	%edi, 8(%rcx)
	.loc 1 327 0
	movl	%esi, 12(%rcx)
	jmp	.L160
.L114:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 1 472 0
	movq	67232(%rbx), %rax
	addl	$4, 12(%rax)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L115
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L115:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 1 472 0
	addl	$4, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L117
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L117:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %esi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L119
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L119:
.LBE33:
.LBE32:
	.loc 1 470 0
	shrl	$2, %esi
	leal	7(%rsi), %r13d
	jmp	.L159
.L67:
.LBB34:
.LBB35:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %esi
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L68
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L68:
.LBE35:
.LBE34:
	.loc 1 470 0
	movl	%esi, 88(%rsp)
.LBB36:
.LBB37:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L70
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L70:
.LBE37:
.LBE36:
	.loc 1 470 0
	movl	%edx, 96(%rsp)
.LBB38:
.LBB39:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L72
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L72:
.LBE39:
.LBE38:
	.loc 1 470 0
	movl	%edx, 100(%rsp)
.LBB40:
.LBB41:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %r10d
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L74
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L74:
.LBE41:
.LBE40:
	.loc 1 470 0
	movl	%r10d, 80(%rsp)
.LBB42:
.LBB43:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %r9d
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L76
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L76:
.LBE43:
.LBE42:
	.loc 1 470 0
	movl	%r9d, 84(%rsp)
.LBB44:
.LBB45:
	.loc 1 472 0
	addl	$4, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L78
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L78:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %esi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L80
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L80:
.LBE47:
.LBE46:
	.loc 1 530 0
	leal	31(%r10), %edx
	xorl	%r13d, %r13d
	.loc 1 470 0
	movl	%esi, %eax
	movl	%esi, 92(%rsp)
	.loc 1 530 0
	sarl	$5, %edx
	imull	%r9d, %edx
	cmpl	$0, %edx
	jle	.L144
	movl	%edx, %r8d
.L87:
.LBB48:
.LBB49:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
.LBE49:
.LBE48:
	.loc 1 531 0
	movslq	%r13d,%rdi
.LBB50:
.LBB51:
	.loc 1 471 0
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %esi
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L85
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L85:
.LBE51:
.LBE50:
	.loc 1 530 0
	incl	%r13d
	.loc 1 470 0
	movl	%esi, 104(%rsp,%rdi,4)
	.loc 1 530 0
	cmpl	%r13d, %r8d
	jg	.L87
	movl	92(%rsp), %eax
.L144:
	.loc 1 532 0
	imull	%r10d, %eax
	xorl	%r13d, %r13d
	addl	$31, %eax
	sarl	$5, %eax
	imull	%r9d, %eax
	cmpl	$0, %eax
	jmp	.L157
.L165:
.LBB52:
.LBB53:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
.LBE53:
.LBE52:
	.loc 1 533 0
	movslq	%r13d,%rdi
.LBB54:
.LBB55:
	.loc 1 471 0
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %esi
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L91
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L91:
.LBE55:
.LBE54:
	.loc 1 532 0
	movl	92(%rsp), %eax
	incl	%r13d
	.loc 1 470 0
	movl	%esi, 4200(%rsp,%rdi,4)
	.loc 1 532 0
	imull	%r10d, %eax
	addl	$31, %eax
	sarl	$5, %eax
	imull	%r9d, %eax
	cmpl	%r13d, %eax
.L157:
	jg	.L165
.LBB56:
.LBB57:
	.loc 1 453 0
	movl	80(%rsp), %eax
.LBE57:
	.loc 1 451 0
	leaq	80(%rsp), %rdi
.LBB58:
	.loc 1 453 0
	addl	$31, %eax
	sarl	$5, %eax
	imull	84(%rsp), %eax
	movl	%eax, %edx
	jmp	.L158
.L166:
	.loc 1 454 0
	movslq	%edx,%rax
	notl	24(%rdi,%rax,4)
.L158:
	.loc 1 453 0
	decl	%edx
	jns	.L166
	.loc 1 456 0
	movq	1720(%rbx), %r10
	cmpq	$0, 96(%r10)
	je	.L160
	.loc 1 457 0
	leaq	24(%rdi), %rax
	movl	20(%rdi), %r8d
	movl	16(%rdi), %ecx
	movl	12(%rdi), %edx
	movl	4(%rdi), %esi
	leaq	4120(%rdi), %r9
	movq	%rax, (%rsp)
	movl	(%rdi), %edi
	call	*96(%r10)
	jmp	.L160
.L113:
.LBE58:
.LBE56:
	.loc 1 558 0
	movl	$7, %r13d
	jmp	.L159
.L112:
	.loc 1 555 0
	movl	$6, %r13d
	.p2align 4,,7
	jmp	.L159
.L42:
.LBB59:
.LBB60:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %r10d
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L43
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L43:
.LBE60:
.LBE59:
.LBB61:
.LBB62:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %esi
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L45
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L45:
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 28(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L47
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L47:
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 24(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L49
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L49:
.LBE66:
.LBE65:
.LBB67:
.LBB68:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 20(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L51
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L51:
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %r15d
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L53
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L53:
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	.loc 1 356 0
	movl	67136(%rbx), %ecx
	.loc 1 357 0
	movl	20(%rsp), %r9d
	.loc 1 358 0
	movl	%r15d, %r12d
	.loc 1 354 0
	movq	67168(%rbx), %rdi
	.loc 1 356 0
	movl	%ecx, %r8d
	.loc 1 357 0
	imull	%ecx, %r9d
	.loc 1 356 0
	imull	67120(%rbx), %r8d
	.loc 1 367 0
	cmpl	%esi, 24(%rsp)
	jle	.L55
	.loc 1 368 0
	movl	%ecx, %edx
	leal	-1(%rsi,%r15), %eax
	.loc 1 369 0
	imull	28(%rsp), %ecx
	.loc 1 368 0
	imull	%r10d, %edx
	imull	%r8d, %eax
	movslq	%edx,%rdx
	addq	%rdi, %rdx
	cltq
	leaq	(%rdx,%rax), %rsi
	.loc 1 369 0
	movslq	%ecx,%rdx
	movl	24(%rsp), %ecx
	addq	%rdi, %rdx
	.loc 1 368 0
	movq	%rsi, 64(%rsp)
	.loc 1 369 0
	leal	-1(%rcx,%r15), %eax
	imull	%r8d, %eax
	.loc 1 370 0
	testl	%r15d, %r15d
	.loc 1 369 0
	cltq
	leaq	(%rdx,%rax), %rdi
	movq	%rdi, 72(%rsp)
	.loc 1 370 0
	jle	.L60
	movslq	%r9d,%r14
	movslq	%r8d,%rbp
.L59:
	.loc 1 371 0
	movq	%r14, %rdx
	.loc 1 370 0
	decl	%r12d
	.loc 1 371 0
	call	memmove
	.loc 1 370 0
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdi
	subq	%rbp, %rsi
	subq	%rbp, %rdi
	testl	%r12d, %r12d
	movq	%rsi, 64(%rsp)
	movq	%rdi, 72(%rsp)
	jg	.L59
.L60:
.LBB73:
.LBB74:
	.loc 1 322 0
	movl	75436(%rbx), %eax
	movslq	%eax,%rdx
	incl	%eax
	.loc 1 323 0
	andl	$511, %eax
	.loc 1 322 0
	salq	$4, %rdx
	.loc 1 323 0
	movl	%eax, 75436(%rbx)
	.loc 1 324 0
	movl	28(%rsp), %eax
	.loc 1 322 0
	addq	%rbx, %rdx
	leaq	67240(%rdx), %rcx
	.loc 1 324 0
	movl	%eax, 67240(%rdx)
	.loc 1 325 0
	movl	24(%rsp), %eax
	movl	%eax, 4(%rcx)
	.loc 1 326 0
	movl	20(%rsp), %eax
	.loc 1 327 0
	movl	%r15d, 12(%rcx)
	.loc 1 326 0
	movl	%eax, 8(%rcx)
	jmp	.L160
.L19:
.LBE74:
.LBE73:
.LBE72:
.LBE71:
.LBB75:
.LBB76:
	.loc 1 471 0
	movq	67232(%rbx), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %eax
	.loc 1 472 0
	addl	$4, %edx
	.loc 1 471 0
	shrl	$2, %eax
	mov	%eax, %eax
	movl	(%rcx,%rax,4), %esi
	.loc 1 472 0
	movl	%edx, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L20
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L20:
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 56(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L22
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L22:
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 52(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L24
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L24:
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 48(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rcx
	movl	4(%rcx), %eax
	cmpl	%eax, 12(%rcx)
	jb	.L26
	.loc 1 474 0
	movl	(%rcx), %eax
	movl	%eax, 12(%rcx)
	movq	67232(%rbx), %rcx
.L26:
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	.loc 1 471 0
	movl	12(%rcx), %eax
	movl	%eax, %edx
	.loc 1 472 0
	addl	$4, %eax
	.loc 1 471 0
	shrl	$2, %edx
	mov	%edx, %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 44(%rsp)
	.loc 1 472 0
	movl	%eax, 12(%rcx)
	.loc 1 473 0
	movq	67232(%rbx), %rdx
	movl	4(%rdx), %eax
	cmpl	%eax, 12(%rdx)
	jb	.L28
	.loc 1 474 0
	movl	(%rdx), %eax
	movl	%eax, 12(%rdx)
.L28:
.LBE84:
.LBE83:
.LBB85:
.LBB86:
	.loc 1 393 0
	movl	67136(%rbx), %r8d
	.loc 1 394 0
	movl	67120(%rbx), %r10d
	.loc 1 410 0
	leaq	60(%rsp), %rdi
	.loc 1 398 0
	movl	56(%rsp), %edx
	movl	52(%rsp), %eax
	.loc 1 414 0
	movl	44(%rsp), %r12d
	.loc 1 395 0
	movl	48(%rsp), %r9d
	.loc 1 394 0
	imull	%r8d, %r10d
	.loc 1 409 0
	movb	%sil, 60(%rsp)
	.loc 1 410 0
	shrl	$8, %esi
	.loc 1 398 0
	imull	%r8d, %edx
	.loc 1 410 0
	movb	%sil, 61(%rsp)
	.loc 1 411 0
	shrl	$8, %esi
	.loc 1 414 0
	decl	%r12d
	.loc 1 411 0
	movb	%sil, 62(%rsp)
	.loc 1 412 0
	shrl	$8, %esi
	movb	%sil, 63(%rsp)
	.loc 1 398 0
	imull	%r10d, %eax
	movslq	%edx,%rdx
	addq	67168(%rbx), %rdx
	.loc 1 395 0
	imull	%r8d, %r9d
	.loc 1 398 0
	cltq
	addq	%rax, %rdx
	.loc 1 414 0
	cmpl	$-1, %r12d
	.loc 1 398 0
	movq	%rdx, 32(%rsp)
	.loc 1 414 0
	je	.L30
	.loc 1 417 0
	testl	%r9d, %r9d
	.loc 1 415 0
	movq	%rdx, %rbp
	.loc 1 416 0
	movq	%rdi, %rsi
	.loc 1 417 0
	movl	%r9d, %ecx
	jle	.L138
	movslq	%r8d,%rdx
.L35:
	.loc 1 418 0
	movzbl	(%rsi), %eax
	incq	%rsi
	movb	%al, (%rbp)
	.loc 1 419 0
	movq	%rsi, %rax
	.loc 1 418 0
	incq	%rbp
	.loc 1 419 0
	subq	%rdi, %rax
	.loc 1 420 0
	cmpq	%rdx, %rax
	cmove	%rdi, %rsi
	.loc 1 417 0
	decl	%ecx
	testl	%ecx, %ecx
	jg	.L35
.L138:
	.loc 1 423 0
	testl	%r12d, %r12d
	.loc 1 422 0
	movq	32(%rsp), %rbp
	.loc 1 423 0
	jle	.L30
	movslq	%r10d,%r15
	movslq	%r9d,%r14
.L39:
	.loc 1 425 0
	movq	32(%rsp), %rsi
	.loc 1 424 0
	addq	%r15, %rbp
	.loc 1 425 0
	movq	%r14, %rdx
	movq	%rbp, %rdi
	.loc 1 423 0
	decl	%r12d
	.loc 1 425 0
	call	memcpy
	.loc 1 423 0
	testl	%r12d, %r12d
	jg	.L39
.L30:
.LBB87:
.LBB88:
	.loc 1 322 0
	movl	75436(%rbx), %eax
	movslq	%eax,%rdx
	incl	%eax
	.loc 1 323 0
	andl	$511, %eax
	.loc 1 322 0
	salq	$4, %rdx
	.loc 1 323 0
	movl	%eax, 75436(%rbx)
	.loc 1 324 0
	movl	56(%rsp), %eax
	.loc 1 322 0
	addq	%rbx, %rdx
	leaq	67240(%rdx), %rcx
	.loc 1 324 0
	movl	%eax, 67240(%rdx)
	.loc 1 325 0
	movl	52(%rsp), %eax
	movl	%eax, 4(%rcx)
	.loc 1 326 0
	movl	48(%rsp), %eax
	movl	%eax, 8(%rcx)
	.loc 1 327 0
	movl	44(%rsp), %eax
	movl	%eax, 12(%rcx)
	jmp	.L160
.L55:
.LBE88:
.LBE87:
.LBE86:
.LBE85:
.LBB89:
.LBB90:
	.loc 1 373 0
	movl	%ecx, %edx
	movl	%r8d, %eax
	imull	%r10d, %edx
	imull	%esi, %eax
	.loc 1 374 0
	imull	28(%rsp), %ecx
	.loc 1 373 0
	movslq	%edx,%rdx
	addq	%rdi, %rdx
	cltq
	leaq	(%rdx,%rax), %rsi
	.loc 1 374 0
	movl	24(%rsp), %eax
	.loc 1 373 0
	movq	%rsi, 64(%rsp)
	.loc 1 374 0
	imull	%r8d, %eax
	movslq	%ecx,%rdx
	addq	%rdi, %rdx
	.loc 1 375 0
	testl	%r15d, %r15d
	.loc 1 374 0
	cltq
	leaq	(%rdx,%rax), %rdi
	movq	%rdi, 72(%rsp)
	.loc 1 375 0
	jle	.L60
	movslq	%r9d,%r14
	movslq	%r8d,%rbp
.L64:
	.loc 1 376 0
	movq	%r14, %rdx
	.loc 1 375 0
	decl	%r12d
	.loc 1 376 0
	call	memmove
	.loc 1 375 0
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdi
	addq	%rbp, %rsi
	addq	%rbp, %rdi
	testl	%r12d, %r12d
	movq	%rsi, 64(%rsp)
	movq	%rdi, 72(%rsp)
	jg	.L64
	jmp	.L60
.LBE90:
.LBE89:
.LFE206:
	.size	vmsvga_fifo_run, .-vmsvga_fifo_run
	.p2align 4,,15
	.type	vmsvga_index_read, @function
vmsvga_index_read:
.LFB207:
	.loc 1 594 0
	.loc 1 596 0
	movl	67176(%rdi), %eax
	.loc 1 597 0
	ret
.LFE207:
	.size	vmsvga_index_read, .-vmsvga_index_read
	.p2align 4,,15
	.type	vmsvga_index_write, @function
vmsvga_index_write:
.LFB208:
	.loc 1 600 0
	.loc 1 602 0
	movl	%edx, 67176(%rdi)
	ret
.LFE208:
	.size	vmsvga_index_write, .-vmsvga_index_write
	.section	.rodata
	.align 16
	.type	__FUNCTION__.4, @object
	.size	__FUNCTION__.4, 18
__FUNCTION__.4:
	.string	"vmsvga_value_read"
	.section	.rodata.str1.1
.LC14:
	.string	"%s: Bad register %02x\n"
	.text
	.p2align 4,,15
	.type	vmsvga_value_read, @function
vmsvga_value_read:
.LFB209:
	.loc 1 607 0
	subq	$8, %rsp
.LCFI7:
	.loc 1 610 0
	movl	67176(%rdi), %edx
	cmpl	$16, %edx
	je	.L187
	jg	.L208
	cmpl	$7, %edx
	je	.L200
	.p2align 4,,9
	jg	.L209
	cmpl	$3, %edx
	.p2align 4,,7
	je	.L174
	.p2align 4,,9
	jg	.L210
	cmpl	$1, %edx
	.p2align 4,,7
	je	.L172
	.p2align 4,,9
	jle	.L216
	.loc 1 618 0
	movl	67120(%rdi), %ecx
	.p2align 4,,4
	jmp	.L169
	.p2align 4,,7
.L208:
	.loc 1 610 0
	cmpl	$25, %edx
	.p2align 4,,4
	je	.L198
	.p2align 4,,4
	jg	.L212
	cmpl	$20, %edx
	.p2align 4,,7
	je	.L192
	.p2align 4,,9
	jg	.L213
	cmpl	$18, %edx
	.p2align 4,,7
	je	.L190
	.p2align 4,,9
	jg	.L191
	.loc 1 669 0
	movq	1720(%rdi), %rax
	.loc 1 670 0
	movl	$227, %ecx
	cmpq	$0, 88(%rax)
	movl	$3, %eax
	cmove	%eax, %ecx
	jmp	.L169
	.p2align 4,,7
.L187:
	.loc 1 658 0
	movl	67224(%rdi), %ecx
.L169:
	.loc 1 723 0
	movl	%ecx, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L209:
	.loc 1 610 0
	cmpl	$11, %edx
	je	.L182
	jle	.L217
	cmpl	$13, %edx
	.loc 1 649 0
	movl	$-536870912, %ecx
	.loc 1 610 0
	.p2align 4,,5
	je	.L169
	.p2align 4,,7
	jl	.L183
	.loc 1 652 0
	xorl	%ecx, %ecx
	.loc 1 610 0
	cmpl	$14, %edx
	.p2align 4,,3
	je	.L169
	cmpl	$15, %edx
	.p2align 4,,5
	je	.L186
.L206:
	.loc 1 716 0
	cmpl	$1791, %edx
	.p2align 4,,3
	jle	.L207
	movl	67180(%rdi), %eax
	addl	$1792, %eax
	cmpl	%eax, %edx
	jge	.L207
	.loc 1 718 0
	movq	67184(%rdi), %rax
	movslq	%edx,%rdx
	movl	-7168(%rax,%rdx,4), %ecx
	jmp	.L169
	.p2align 4,,7
.L212:
	.loc 1 610 0
	cmpl	$29, %edx
	je	.L201
	jg	.L214
	cmpl	$27, %edx
	.p2align 4,,7
	je	.L199
	.p2align 4,,9
	jg	.L200
	.p2align 4,,7
.L198:
	.loc 1 698 0
	movl	67152(%rdi), %ecx
	.loc 1 723 0
	addq	$8, %rsp
	movl	%ecx, %eax
	ret
	.p2align 4,,7
.L200:
	.loc 1 704 0
	movl	67132(%rdi), %ecx
	.loc 1 723 0
	addq	$8, %rsp
	.loc 1 704 0
	addl	$7, %ecx
	andl	$-8, %ecx
	.loc 1 723 0
	movl	%ecx, %eax
	ret
.L213:
	.loc 1 610 0
	cmpl	$23, %edx
	je	.L195
	jg	.L196
	.loc 1 686 0
	movl	67220(%rdi), %ecx
	.p2align 4,,4
	jmp	.L169
.L214:
	.loc 1 610 0
	cmpl	$32, %edx
	.p2align 4,,4
	jle	.L215
	leal	-1024(%rdx), %eax
	cmpl	$767, %eax
	ja	.L206
.L215:
	.loc 1 722 0
	xorl	%ecx, %ecx
	.p2align 4,,3
	jmp	.L169
.L210:
	.loc 1 610 0
	cmpl	$5, %edx
	.loc 1 627 0
	movl	$1770, %ecx
	.loc 1 610 0
	je	.L169
	.p2align 4,,5
	jle	.L218
	.loc 1 630 0
	movl	67132(%rdi), %ecx
	.p2align 4,,2
	jmp	.L169
.L217:
	.loc 1 610 0
	cmpl	$9, %edx
	.p2align 4,,4
	je	.L180
	.p2align 4,,4
	jle	.L215
	.loc 1 641 0
	movl	67212(%rdi), %ecx
	.p2align 4,,4
	jmp	.L169
.L182:
	.loc 1 643 0
	movl	67216(%rdi), %ecx
	jmp	.L169
.L174:
	.loc 1 621 0
	movl	67124(%rdi), %ecx
	jmp	.L169
.L192:
	.loc 1 682 0
	movl	67144(%rdi), %ecx
	jmp	.L169
.L201:
	.loc 1 707 0
	movl	67180(%rdi), %ecx
	jmp	.L169
.L183:
	.loc 1 646 0
	movl	67132(%rdi), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	imull	67192(%rdi), %ecx
	jmp	.L169
.L207:
	.loc 1 719 0
	movl	$__FUNCTION__.4, %esi
	movl	$.LC14, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 722 0
	xorl	%ecx, %ecx
	jmp	.L169
.L196:
	.loc 1 692 0
	movl	67148(%rdi), %ecx
	jmp	.L169
.L195:
	.loc 1 689 0
	movl	67200(%rdi), %ecx
	jmp	.L169
.L190:
	.loc 1 676 0
	movl	16(%rdi), %ecx
	subl	$536936448, %ecx
	jmp	.L169
.L180:
	.loc 1 639 0
	movl	67208(%rdi), %ecx
	jmp	.L169
.L199:
	.loc 1 701 0
	movl	67160(%rdi), %ecx
	jmp	.L169
.L172:
	.loc 1 615 0
	movl	67140(%rdi), %ecx
	jmp	.L169
.L216:
	.loc 1 610 0
	testl	%edx, %edx
	jne	.L206
	.loc 1 612 0
	movl	67204(%rdi), %ecx
	jmp	.L169
.L186:
	.loc 1 655 0
	movl	16(%rdi), %ecx
	subl	$65536, %ecx
	jmp	.L169
.L218:
	.loc 1 624 0
	movl	$2360, %ecx
	jmp	.L169
.L191:
	.loc 1 679 0
	movl	$65536, %ecx
	.p2align 4,,3
	jmp	.L169
.LFE209:
	.size	vmsvga_value_read, .-vmsvga_value_read
	.section	.rodata
	.align 16
	.type	__FUNCTION__.3, @object
	.size	__FUNCTION__.3, 19
__FUNCTION__.3:
	.string	"vmsvga_value_write"
	.section	.rodata.str1.1
.LC16:
	.string	"%s: guest runs %s.\n"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"%s: Bad colour depth: %i bits\n"
	.text
	.p2align 4,,15
	.type	vmsvga_value_write, @function
vmsvga_value_write:
.LFB210:
	.loc 1 726 0
	pushq	%rbx
.LCFI8:
	.loc 1 726 0
	movl	%edx, %ecx
	.loc 1 728 0
	movl	67176(%rdi), %edx
	.loc 1 726 0
	movq	%rdi, %rbx
	.loc 1 728 0
	cmpl	$23, %edx
	je	.L239
	jg	.L254
	cmpl	$3, %edx
	je	.L228
	.p2align 4,,9
	jg	.L255
	cmpl	$1, %edx
	.p2align 4,,7
	je	.L223
	.p2align 4,,9
	jle	.L259
	.loc 1 748 0
	movl	%ecx, 67192(%rdi)
.L258:
	.loc 1 754 0
	movl	$1, 67128(%rbx)
.L219:
	.loc 1 832 0
	popq	%rbx
	ret
	.p2align 4,,7
.L254:
	.loc 1 728 0
	cmpl	$27, %edx
	je	.L244
	jg	.L257
	cmpl	$25, %edx
	.p2align 4,,7
	je	.L242
	.p2align 4,,9
	jg	.L243
	.loc 1 798 0
	movl	%ecx, 67148(%rdi)
	.loc 1 832 0
	popq	%rbx
	.p2align 4,,3
	ret
	.p2align 4,,7
.L239:
	.loc 1 790 0
	leal	-20481(%rcx), %eax
	.loc 1 788 0
	movl	%ecx, 67200(%rdi)
	.loc 1 790 0
	cmpl	$21, %eax
	ja	.L219
	.loc 1 792 0
	mov	%eax, %eax
	movl	$__FUNCTION__.3, %esi
	movl	$.LC16, %edi
	.loc 1 832 0
	popq	%rbx
	.loc 1 792 0
	movq	vmsvga_guest_id(,%rax,8), %rdx
	xorl	%eax, %eax
	jmp	printf
	.p2align 4,,7
.L255:
	.loc 1 728 0
	cmpl	$20, %edx
	je	.L232
	jg	.L256
	leal	-6(%rdx), %eax
	cmpl	$1, %eax
	.p2align 4,,5
	ja	.L252
	.loc 1 759 0
	cmpl	%ecx, 67132(%rdi)
	.p2align 4,,2
	je	.L219
	.loc 1 760 0
	movl	%ecx, %edx
	movl	$__FUNCTION__.3, %esi
	movl	$.LC15, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 761 0
	movl	$0, 67144(%rbx)
	.loc 1 832 0
	popq	%rbx
	ret
	.p2align 4,,7
.L257:
	.loc 1 728 0
	cmpl	$30, %edx
	jl	.L252
	cmpl	$32, %edx
	.p2align 4,,2
	jle	.L219
	leal	-1024(%rdx), %eax
	cmpl	$767, %eax
	.p2align 4,,3
	jbe	.L219
	.p2align 4,,7
.L252:
	.loc 1 825 0
	cmpl	$1791, %edx
	.p2align 4,,3
	jle	.L253
	movl	67180(%rbx), %eax
	addl	$1792, %eax
	cmpl	%eax, %edx
	jl	.L260
.L253:
	.loc 1 832 0
	popq	%rbx
	.loc 1 830 0
	movl	$__FUNCTION__.3, %esi
	movl	$.LC14, %edi
	xorl	%eax, %eax
	jmp	printf
	.p2align 4,,7
.L228:
	.loc 1 753 0
	movl	%ecx, 67196(%rdi)
	jmp	.L258
	.p2align 4,,7
.L244:
	.loc 1 810 0
	cmpl	$1, %ecx
	sete	%al
	orl	67160(%rdi), %eax
	.loc 1 811 0
	xorl	%r8d, %r8d
	andl	$1, %eax
	testl	%ecx, %ecx
	cmovne	%eax, %r8d
	.loc 1 813 0
	movq	1720(%rdi), %rax
	.loc 1 811 0
	movl	%r8d, 67160(%rdi)
	.loc 1 813 0
	movq	88(%rax), %r11
	testq	%r11, %r11
	setne	%dl
	xorl	%eax, %eax
	cmpl	$1, %ecx
	setbe	%al
	testl	%edx, %eax
	je	.L219
	.loc 1 832 0
	popq	%rbx
	.loc 1 814 0
	movl	67156(%rdi), %esi
	movl	%r8d, %edx
	movl	67152(%rdi), %edi
	jmp	*%r11
.L243:
	.loc 1 806 0
	movl	%ecx, 67156(%rdi)
	.loc 1 832 0
	popq	%rbx
	ret
.L256:
	.loc 1 728 0
	cmpl	$21, %edx
	jne	.L252
	.loc 1 783 0
	movl	$1, 67220(%rdi)
	.loc 1 832 0
	popq	%rbx
	.loc 1 784 0
	jmp	vmsvga_fifo_run
.L223:
	.loc 1 736 0
	xorl	%eax, %eax
	testl	%ecx, %ecx
	.loc 1 735 0
	movl	%ecx, 67140(%rdi)
	.loc 1 736 0
	je	.L225
	movl	67144(%rdi), %eax
	andl	$1, %eax
.L225:
	movl	%eax, 67144(%rbx)
	.loc 1 737 0
	movl	$-1, 67120(%rbx)
	.loc 1 741 0
	movq	%rbx, %rdi
	.loc 1 738 0
	movl	$-1, 67124(%rbx)
	.loc 1 739 0
	movl	$1, 67128(%rbx)
	.loc 1 741 0
	call	*1808(%rbx)
	.loc 1 743 0
	movl	67140(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L219
	.loc 1 744 0
	movl	67132(%rbx), %eax
	addl	$7, %eax
	sarl	$3, %eax
	imull	67192(%rbx), %eax
	imull	67196(%rbx), %eax
	movl	%eax, 67224(%rbx)
	.loc 1 832 0
	popq	%rbx
	ret
.L232:
	.loc 1 766 0
	testl	%ecx, %ecx
	je	.L233
	.loc 1 767 0
	movl	16(%rdi), %edx
	subl	$65536, %edx
	addq	67168(%rdi), %rdx
	movq	%rdx, 67232(%rdi)
	.loc 1 769 0
	movl	(%rdx), %esi
	movl	4(%rdx), %edi
	movl	%esi, %eax
	orl	%edi, %eax
	orl	8(%rdx), %eax
	orl	12(%rdx), %eax
	testb	$3, %al
	jne	.L219
	.loc 1 772 0
	mov	%esi, %eax
	cmpq	$16, %rax
	jl	.L219
	.loc 1 774 0
	cmpl	$65536, %edi
	ja	.L219
	.loc 1 776 0
	leal	10240(%rsi), %eax
	cmpl	%eax, %edi
	jb	.L219
.L233:
	.loc 1 779 0
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	%eax, 67144(%rbx)
	.loc 1 832 0
	popq	%rbx
	ret
.L242:
	.loc 1 802 0
	movl	%ecx, 67152(%rdi)
	.loc 1 832 0
	popq	%rbx
	ret
.L260:
	.loc 1 827 0
	movq	67184(%rbx), %rax
	movslq	%edx,%rdx
	movl	%ecx, -7168(%rax,%rdx,4)
	.loc 1 832 0
	popq	%rbx
	ret
.L259:
	.loc 1 728 0
	testl	%edx, %edx
	jne	.L252
	.loc 1 730 0
	leal	1879048192(%rcx), %eax
	cmpl	$2, %eax
	ja	.L219
	.loc 1 731 0
	movl	%ecx, 67204(%rdi)
	.loc 1 832 0
	popq	%rbx
	ret
.LFE210:
	.size	vmsvga_value_write, .-vmsvga_value_write
	.section	.rodata
	.align 16
	.type	__FUNCTION__.2, @object
	.size	__FUNCTION__.2, 17
__FUNCTION__.2:
	.string	"vmsvga_bios_read"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"%s: what are we supposed to return?\n"
	.text
	.p2align 4,,15
	.type	vmsvga_bios_read, @function
vmsvga_bios_read:
.LFB211:
	.loc 1 836 0
	subq	$8, %rsp
.LCFI9:
	.loc 1 837 0
	movl	$__FUNCTION__.2, %esi
	movl	$.LC17, %edi
	xorl	%eax, %eax
	call	printf
	.loc 1 839 0
	movl	$51966, %eax
	addq	$8, %rsp
	ret
.LFE211:
	.size	vmsvga_bios_read, .-vmsvga_bios_read
	.section	.rodata
	.align 16
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 18
__FUNCTION__.1:
	.string	"vmsvga_bios_write"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"%s: what are we supposed to do with (%08x)?\n"
	.text
	.p2align 4,,15
	.type	vmsvga_bios_write, @function
vmsvga_bios_write:
.LFB212:
	.loc 1 842 0
	.loc 1 843 0
	movl	$__FUNCTION__.1, %esi
	movl	$.LC18, %edi
	xorl	%eax, %eax
	jmp	printf
.LFE212:
	.size	vmsvga_bios_write, .-vmsvga_bios_write
	.p2align 4,,15
	.type	vmsvga_update_display, @function
vmsvga_update_display:
.LFB214:
	.loc 1 858 0
	pushq	%r15
.LCFI10:
	movq	%rdi, %r15
	pushq	%r14
.LCFI11:
	pushq	%r13
.LCFI12:
	pushq	%r12
.LCFI13:
	pushq	%rbp
.LCFI14:
	pushq	%rbx
.LCFI15:
	subq	$24, %rsp
.LCFI16:
	.loc 1 860 0
	movl	67140(%rdi), %esi
	testl	%esi, %esi
	je	.L286
.LBB91:
.LBB92:
	.loc 1 849 0
	movq	67120(%rdi), %rax
	cmpq	%rax, 67192(%rdi)
	je	.L267
	.loc 1 850 0
	movl	67192(%rdi), %esi
	.loc 1 851 0
	movl	67196(%rdi), %edx
.LBB93:
	.file 2 "../console.h"
	.loc 2 93 0
	movq	1720(%rdi), %rax
.LBE93:
	.loc 1 850 0
	movl	%esi, 67120(%rdi)
	.loc 1 851 0
	movl	%edx, 67124(%rdi)
.LBB94:
.LBB95:
	.loc 2 94 0
	movq	%rax, %rdi
	call	*56(%rax)
.LBE95:
.LBE94:
	.loc 1 853 0
	movl	$1, 67128(%r15)
.L267:
.LBE92:
.LBE91:
	.loc 1 869 0
	movq	%r15, %rdi
	call	vmsvga_fifo_run
.LBB96:
.LBB97:
	.loc 1 334 0
	movl	67128(%r15), %eax
	testl	%eax, %eax
	je	.L268
	.loc 1 335 0
	movl	75436(%r15), %ecx
.LBE97:
.LBE96:
	.loc 1 876 0
	testl	%eax, %eax
.LBB98:
.LBB99:
	.loc 1 335 0
	movl	%ecx, 75432(%r15)
.LBE99:
.LBE98:
	.loc 1 876 0
	jne	.L287
.L263:
	.loc 1 880 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L286:
	.loc 1 862 0
	movq	1800(%r15), %r11
	.loc 1 880 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 1 862 0
	jmp	*%r11
.L268:
.LBB100:
.LBB101:
	.loc 2 89 0
	movl	75432(%r15), %ecx
	cmpl	75436(%r15), %ecx
	je	.L263
	.p2align 4,,7
.L278:
	.loc 1 341 0
	movslq	%ecx,%rax
	incl	%ecx
	salq	$4, %rax
	.loc 1 342 0
	andl	$511, %ecx
	.loc 1 341 0
	addq	%r15, %rax
	.loc 1 342 0
	movl	%ecx, 75432(%r15)
	.loc 1 341 0
	leaq	67240(%rax), %rdx
.LBB102:
	.loc 1 291 0
	movl	67240(%rax), %eax
	movl	%eax, 20(%rsp)
	movl	4(%rdx), %eax
	movl	%eax, 16(%rsp)
	movl	8(%rdx), %eax
	movl	%eax, 12(%rsp)
	movl	12(%rdx), %edx
.LBB103:
	.loc 1 295 0
	movl	12(%rsp), %esi
.LBE103:
	.loc 1 291 0
	movl	%edx, 8(%rsp)
.LBB104:
	.loc 1 294 0
	movl	67136(%r15), %eax
	.loc 1 293 0
	movl	%edx, %r12d
	.loc 1 296 0
	movl	16(%rsp), %edx
	.loc 1 298 0
	movq	1720(%r15), %r9
	.loc 1 297 0
	movq	67168(%r15), %rbp
	.loc 1 294 0
	movl	%eax, %ecx
	imull	67120(%r15), %ecx
	.loc 1 295 0
	imull	%eax, %esi
	.loc 1 298 0
	movq	(%r9), %rbx
	.loc 1 296 0
	imull	20(%rsp), %eax
	imull	%ecx, %edx
	addl	%edx, %eax
	.loc 1 297 0
	cltq
	addq	%rax, %rbp
	.loc 1 298 0
	addq	%rax, %rbx
	.loc 1 300 0
	testl	%r12d, %r12d
	jle	.L284
	movslq	%esi,%r14
	movslq	%ecx,%r13
	.p2align 4,,7
.L275:
	.loc 1 301 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	.loc 1 300 0
	decl	%r12d
	addq	%r13, %rbp
	addq	%r13, %rbx
	.loc 1 301 0
	call	memcpy
	.loc 1 300 0
	testl	%r12d, %r12d
	jg	.L275
	movq	1720(%r15), %r9
.L284:
.LBB105:
.LBB106:
	.loc 2 89 0
	movl	12(%rsp), %ecx
	movl	8(%rsp), %r8d
	movq	%r9, %rdi
	movl	16(%rsp), %edx
	movl	20(%rsp), %esi
	call	*48(%r9)
.LBE106:
.LBE105:
.LBE104:
.LBE102:
	movl	75432(%r15), %ecx
	cmpl	75436(%r15), %ecx
	jne	.L278
	movl	67128(%r15), %eax
.LBE101:
.LBE100:
	.loc 1 876 0
	testl	%eax, %eax
	je	.L263
.L287:
.LBB107:
.LBB108:
	.loc 1 310 0
	movl	67120(%r15), %edx
	movq	1720(%r15), %rax
	imull	67136(%r15), %edx
.LBE108:
.LBE107:
	.loc 1 877 0
	movl	$0, 67128(%r15)
.LBB109:
.LBB110:
	.loc 1 310 0
	movq	67168(%r15), %rsi
	movq	(%rax), %rdi
	imull	67124(%r15), %edx
	movslq	%edx,%rdx
	call	memcpy
.LBB111:
	.loc 2 88 0
	movq	1720(%r15), %rax
	movl	67120(%r15), %ecx
.LBB112:
	.loc 2 89 0
	xorl	%edx, %edx
	movl	67124(%r15), %r8d
	xorl	%esi, %esi
	movq	48(%rax), %r11
.LBE112:
.LBE111:
.LBE110:
.LBE109:
	.loc 1 880 0
	addq	$24, %rsp
.LBB113:
.LBB114:
.LBB115:
.LBB116:
	.loc 2 89 0
	movq	%rax, %rdi
.LBE116:
.LBE115:
.LBE114:
.LBE113:
	.loc 1 880 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 89 0
	jmp	*%r11
.LBE120:
.LBE119:
.LBE118:
.LBE117:
.LFE214:
	.size	vmsvga_update_display, .-vmsvga_update_display
	.p2align 4,,15
	.type	vmsvga_invalidate_display, @function
vmsvga_invalidate_display:
.LFB216:
	.loc 1 926 0
	.loc 1 926 0
	movq	%rdi, %rax
	.loc 1 928 0
	movl	67140(%rdi), %edi
	testl	%edi, %edi
	je	.L290
	.loc 1 935 0
	movl	$1, 67128(%rax)
	.loc 1 936 0
	ret
	.p2align 4,,7
.L290:
	.loc 1 930 0
	movq	%rax, %rdi
	movq	1808(%rax), %r11
	jmp	*%r11
.LFE216:
	.size	vmsvga_invalidate_display, .-vmsvga_invalidate_display
	.p2align 4,,15
	.type	vmsvga_screen_dump, @function
vmsvga_screen_dump:
.LFB217:
	.loc 1 941 0
	.loc 1 941 0
	movq	%rdi, %r8
	movq	%rsi, %rdi
	.loc 1 943 0
	movl	67140(%r8), %r9d
	testl	%r9d, %r9d
	je	.L294
	.loc 1 950 0
	cmpl	$32, 67132(%r8)
	je	.L295
	rep ; ret
	.p2align 4,,7
.L294:
	.loc 1 945 0
	movq	%r8, %rdi
	movq	1816(%r8), %r11
	jmp	*%r11
	.p2align 4,,7
.L295:
	.loc 1 951 0
	movq	1720(%r8), %rax
	movl	67124(%r8), %ecx
	movl	67120(%r8), %edx
	movq	67168(%r8), %rsi
	movl	8(%rax), %r8d
	jmp	ppm_save
.LFE217:
	.size	vmsvga_screen_dump, .-vmsvga_screen_dump
	.p2align 4,,15
	.type	pci_vmsvga_save, @function
pci_vmsvga_save:
.LFB221:
	.loc 1 1130 0
	pushq	%r13
.LCFI17:
	movq	%rsi, %r13
	.loc 1 1132 0
	movq	%rdi, %rsi
	.loc 1 1130 0
	pushq	%r12
.LCFI18:
.LBB121:
	.loc 1 1033 0
	leaq	552(%r13), %r12
.LBE121:
	.loc 1 1130 0
	pushq	%rbx
.LCFI19:
	.loc 1 1130 0
	movq	%rdi, %rbx
	.loc 1 1132 0
	movq	%r13, %rdi
	call	pci_device_save
.LBB122:
.LBB123:
	.loc 1 1034 0
	movl	67132(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1035 0
	movl	67140(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1036 0
	movl	67144(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1037 0
	movl	67148(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1038 0
	movl	67152(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1039 0
	movl	67156(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1040 0
	movl	67160(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1041 0
	movl	67176(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1042 0
	movl	67180(%r12), %edx
	movq	67184(%r12), %rsi
	movq	%rbx, %rdi
	sall	$2, %edx
	call	qemu_put_buffer
	.loc 1 1043 0
	movl	67192(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1044 0
	movl	67196(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
.LBB124:
.LBB125:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 32 0
	movl	67752(%r13), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	movl	67756(%r13), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
.LBE127:
.LBE126:
	.loc 1 1047 0
	movl	67220(%r12), %esi
	movq	%rbx, %rdi
	call	qemu_put_be32
	.loc 1 1048 0
	movq	%rbx, %rdi
	movl	67224(%r12), %esi
.LBE123:
.LBE122:
	popq	%rbx
	popq	%r12
	popq	%r13
.LBB128:
.LBB129:
	jmp	qemu_put_be32
.LBE129:
.LBE128:
.LFE221:
	.size	pci_vmsvga_save, .-pci_vmsvga_save
	.section	.rodata
	.type	__FUNCTION__.5, @object
	.size	__FUNCTION__.5, 12
__FUNCTION__.5:
	.string	"vmsvga_load"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"%s: need colour depth of %i bits to resume operation.\n"
	.text
	.p2align 4,,15
	.type	pci_vmsvga_load, @function
pci_vmsvga_load:
.LFB222:
	.loc 1 1137 0
	movq	%r12, -16(%rsp)
.LCFI20:
	movq	%rsi, %r12
	movq	%rbx, -32(%rsp)
.LCFI21:
	movq	%rbp, -24(%rsp)
.LCFI22:
	movq	%r13, -8(%rsp)
.LCFI23:
	.loc 1 1141 0
	movq	%rdi, %rsi
	.loc 1 1137 0
	subq	$40, %rsp
.LCFI24:
	.loc 1 1137 0
	movq	%rdi, %rbx
	.loc 1 1141 0
	movq	%r12, %rdi
	call	pci_device_load
	.loc 1 1142 0
	testl	%eax, %eax
	js	.L300
.LBB130:
	.loc 1 1052 0
	leaq	552(%r12), %rbp
.LBB131:
	.loc 1 1054 0
	movq	%rbx, %rdi
	call	qemu_get_be32
	.loc 1 1055 0
	movq	%rbx, %rdi
	.loc 1 1054 0
	movl	%eax, %r13d
	.loc 1 1055 0
	call	qemu_get_be32
	.loc 1 1056 0
	movq	%rbx, %rdi
	.loc 1 1055 0
	movl	%eax, 67140(%rbp)
	.loc 1 1056 0
	call	qemu_get_be32
	.loc 1 1057 0
	movq	%rbx, %rdi
	.loc 1 1056 0
	movl	%eax, 67144(%rbp)
	.loc 1 1057 0
	call	qemu_get_be32
	.loc 1 1058 0
	movq	%rbx, %rdi
	.loc 1 1057 0
	movl	%eax, 67148(%rbp)
	.loc 1 1058 0
	call	qemu_get_be32
	.loc 1 1059 0
	movq	%rbx, %rdi
	.loc 1 1058 0
	movl	%eax, 67152(%rbp)
	.loc 1 1059 0
	call	qemu_get_be32
	.loc 1 1060 0
	movq	%rbx, %rdi
	.loc 1 1059 0
	movl	%eax, 67156(%rbp)
	.loc 1 1060 0
	call	qemu_get_be32
	.loc 1 1061 0
	movq	%rbx, %rdi
	.loc 1 1060 0
	movl	%eax, 67160(%rbp)
	.loc 1 1061 0
	call	qemu_get_be32
	.loc 1 1062 0
	movl	67180(%rbp), %edx
	movq	67184(%rbp), %rsi
	movq	%rbx, %rdi
	.loc 1 1061 0
	movl	%eax, 67176(%rbp)
	.loc 1 1062 0
	sall	$2, %edx
	call	qemu_get_buffer
	.loc 1 1063 0
	movq	%rbx, %rdi
	call	qemu_get_be32
	.loc 1 1064 0
	movq	%rbx, %rdi
	.loc 1 1063 0
	movl	%eax, 67192(%rbp)
	.loc 1 1064 0
	call	qemu_get_be32
.LBB132:
.LBB133:
	.loc 3 52 0
	movq	%rbx, %rdi
.LBE133:
.LBE132:
	.loc 1 1064 0
	movl	%eax, 67196(%rbp)
.LBB134:
.LBB135:
	.loc 3 52 0
	call	qemu_get_be32
.LBE135:
.LBE134:
.LBB136:
.LBB137:
	movq	%rbx, %rdi
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	movl	%eax, 67752(%r12)
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	call	qemu_get_be32
.LBE141:
.LBE140:
	.loc 1 1067 0
	movq	%rbx, %rdi
.LBB142:
.LBB143:
	.loc 3 52 0
	movl	%eax, 67756(%r12)
.LBE143:
.LBE142:
	.loc 1 1067 0
	call	qemu_get_be32
	.loc 1 1068 0
	movq	%rbx, %rdi
	.loc 1 1067 0
	movl	%eax, 67220(%rbp)
	.loc 1 1068 0
	call	qemu_get_be32
	.loc 1 1070 0
	movl	67140(%rbp), %r11d
	.loc 1 1068 0
	movl	%eax, 67224(%rbp)
	.loc 1 1070 0
	testl	%r11d, %r11d
	jne	.L308
.L304:
	.loc 1 1077 0
	movl	67144(%rbp), %r10d
	.loc 1 1076 0
	movl	$1, 67128(%rbp)
	.loc 1 1077 0
	testl	%r10d, %r10d
	je	.L306
	.loc 1 1078 0
	movl	16(%rbp), %eax
	subl	$65536, %eax
	addq	67168(%rbp), %rax
	movq	%rax, 67232(%rbp)
.L306:
	xorl	%edx, %edx
.L305:
.LBE131:
.LBE130:
	.loc 1 1147 0
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovs	%edx, %eax
.L300:
	.loc 1 1150 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L308:
.LBB144:
.LBB145:
	.loc 1 1070 0
	cmpl	%r13d, 67132(%rbp)
	je	.L304
	.loc 1 1071 0
	movl	%r13d, %edx
	movl	$__FUNCTION__.5, %esi
	movl	$.LC19, %edi
	xorl	%eax, %eax
	call	printf
	movl	$-22, %edx
	jmp	.L305
.LBE145:
.LBE144:
.LFE222:
	.size	pci_vmsvga_load, .-pci_vmsvga_load
	.section	.rodata.str1.1
.LC20:
	.string	"QEMUware SVGA"
.LC21:
	.string	"vmware_vga"
	.text
	.p2align 4,,15
.globl pci_vmsvga_init
	.type	pci_vmsvga_init, @function
pci_vmsvga_init:
.LFB223:
	.loc 1 1164 0
	pushq	%r15
.LCFI25:
	.loc 1 1168 0
	xorl	%r9d, %r9d
	.loc 1 1164 0
	movq	%rdx, %r15
	.loc 1 1168 0
	movl	$75992, %edx
	.loc 1 1164 0
	pushq	%r14
.LCFI26:
	movq	%rcx, %r14
	.loc 1 1168 0
	movl	$-1, %ecx
	.loc 1 1164 0
	pushq	%r13
.LCFI27:
	movq	%rsi, %r13
	.loc 1 1168 0
	movl	$.LC20, %esi
	.loc 1 1164 0
	pushq	%r12
.LCFI28:
	movl	%r8d, %r12d
	.loc 1 1168 0
	xorl	%r8d, %r8d
	.loc 1 1164 0
	pushq	%rbp
.LCFI29:
	pushq	%rbx
.LCFI30:
	subq	$8, %rsp
.LCFI31:
	.loc 1 1168 0
	call	pci_register_device
.LBB146:
	.loc 1 1086 0
	leaq	552(%rax), %rbx
.LBE146:
	.loc 1 1171 0
	movb	$-83, (%rax)
	.loc 1 1172 0
	movb	$21, 1(%rax)
	.loc 1 1173 0
	movb	$5, 2(%rax)
	.loc 1 1174 0
	movb	$4, 3(%rax)
.LBB147:
.LBB148:
	.loc 1 1093 0
	movl	$131072, %edi
.LBE148:
.LBE147:
	.loc 1 1175 0
	movb	$7, 4(%rax)
	.loc 1 1176 0
	movb	$0, 10(%rax)
	.loc 1 1168 0
	movq	%rax, %rbp
	.loc 1 1177 0
	movb	$3, 11(%rax)
	.loc 1 1178 0
	movb	$8, 12(%rax)
	.loc 1 1179 0
	movb	$64, 13(%rax)
	.loc 1 1180 0
	movb	$0, 14(%rax)
	.loc 1 1181 0
	movb	$97, 16(%rax)
	.loc 1 1182 0
	movb	$69, 17(%rax)
	.loc 1 1183 0
	movb	$0, 18(%rax)
	.loc 1 1184 0
	movb	$0, 19(%rax)
	.loc 1 1185 0
	movb	$0, 24(%rax)
	.loc 1 1186 0
	movb	$0, 25(%rax)
	.loc 1 1187 0
	movb	$0, 26(%rax)
	.loc 1 1188 0
	movb	$-32, 27(%rax)
	.loc 1 1189 0
	movb	$-83, 44(%rax)
	.loc 1 1190 0
	movb	$21, 45(%rax)
	.loc 1 1191 0
	movb	$5, 46(%rax)
	.loc 1 1192 0
	movb	$4, 47(%rax)
	.loc 1 1193 0
	movb	$-1, 60(%rax)
.LBB149:
.LBB150:
	.loc 1 1088 0
	movq	%r13, 1720(%rbx)
	.loc 1 1089 0
	movq	%r15, 67168(%rbx)
	.loc 1 1090 0
	movl	%r12d, 16(%rbx)
	.loc 1 1092 0
	movl	$32768, 67180(%rbx)
	.loc 1 1093 0
	call	qemu_malloc
	movq	%rax, 67184(%rbx)
.LBB151:
.LBB152:
	.loc 1 890 0
	movq	1720(%rbx), %rax
	.loc 1 884 0
	movl	$0, 67176(%rbx)
	.loc 1 885 0
	movl	$0, 67140(%rbx)
	.loc 1 886 0
	movl	$0, 67144(%rbx)
	.loc 1 887 0
	movl	$-1, 67120(%rbx)
	.loc 1 888 0
	movl	$-1, 67124(%rbx)
	.loc 1 889 0
	movl	$-1879048190, 67204(%rbx)
	.loc 1 890 0
	movl	12(%rax), %edx
	movl	$24, %eax
	.loc 1 892 0
	movl	$0, 67160(%rbx)
	.loc 1 893 0
	movl	$0, 75432(%rbx)
	.loc 1 894 0
	movl	$0, 75436(%rbx)
	.loc 1 890 0
	testl	%edx, %edx
	cmove	%eax, %edx
	.loc 1 891 0
	leal	7(%rdx), %eax
	.loc 1 890 0
	movl	%edx, 67132(%rbx)
	.loc 1 891 0
	sarl	$3, %eax
	movl	%eax, 67136(%rbx)
	.loc 1 895 0
	leal	-8(%rdx), %eax
	cmpl	$24, %eax
	ja	.L311
	mov	%eax, %eax
	jmp	*.L317(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L317:
	.quad	.L312
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L313
	.quad	.L314
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L316
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L311
	.quad	.L316
	.text
	.p2align 4,,7
.L316:
	.loc 1 917 0
	movl	$16711680, 67208(%rbx)
	.loc 1 918 0
	movl	$65280, 67212(%rbx)
	.loc 1 919 0
	movl	$255, 67216(%rbx)
	.p2align 4,,7
.L311:
.LBE152:
.LBE151:
	.loc 1 1103 0
	movslq	%r14d,%rdx
	movslq	%r12d,%rsi
.LBB153:
.LBB154:
	.loc 1 922 0
	movl	$0, 67220(%rbx)
.LBE154:
.LBE153:
	.loc 1 1103 0
	movl	$3758096384, %edi
	call	cpu_register_physical_memory
	.loc 1 1106 0
	movq	%rbx, %r8
	movl	$vmsvga_index_read, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17760, %edi
	call	register_ioport_read
	.loc 1 1108 0
	movq	%rbx, %r8
	movl	$vmsvga_index_write, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17760, %edi
	call	register_ioport_write
	.loc 1 1110 0
	movq	%rbx, %r8
	movl	$vmsvga_value_read, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17761, %edi
	call	register_ioport_read
	.loc 1 1112 0
	movq	%rbx, %r8
	movl	$vmsvga_value_write, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17761, %edi
	call	register_ioport_write
	.loc 1 1114 0
	movq	%rbx, %r8
	movl	$vmsvga_bios_read, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17762, %edi
	call	register_ioport_read
	.loc 1 1116 0
	movq	%rbx, %r8
	movl	$vmsvga_bios_write, %ecx
	movl	$4, %edx
	movl	$1, %esi
	movl	$17762, %edi
	call	register_ioport_write
	.loc 1 1119 0
	movq	%rbx, %r8
	movq	%r13, %rdi
	movl	$vmsvga_screen_dump, %ecx
	movl	$vmsvga_invalidate_display, %edx
	movl	$vmsvga_update_display, %esi
	call	graphic_console_init
	.loc 1 1123 0
	movl	%r12d, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	vga_common_init
	.loc 1 1125 0
	movq	%rbx, %rdi
	call	vga_init
.LBE150:
.LBE149:
	.loc 1 1197 0
	addq	$8, %rsp
	movq	%rbp, %r9
	movl	$pci_vmsvga_load, %r8d
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movl	$pci_vmsvga_save, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC21, %edi
	jmp	register_savevm
.L312:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
	.loc 1 897 0
	movl	$7, 67208(%rbx)
	.loc 1 898 0
	movl	$56, 67212(%rbx)
	.loc 1 899 0
	movl	$192, 67216(%rbx)
	jmp	.L311
.L313:
	.loc 1 902 0
	movl	$31, 67208(%rbx)
	.loc 1 903 0
	movl	$992, 67212(%rbx)
	.loc 1 904 0
	movl	$31744, 67216(%rbx)
	jmp	.L311
.L314:
	.loc 1 907 0
	movl	$31, 67208(%rbx)
	.loc 1 908 0
	movl	$2016, 67212(%rbx)
	.loc 1 909 0
	movl	$63488, 67216(%rbx)
	jmp	.L311
.LBE158:
.LBE157:
.LBE156:
.LBE155:
.LFE223:
	.size	pci_vmsvga_init, .-pci_vmsvga_init
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI0-.LFB206
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
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20b0
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI7-.LFB209
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI8-.LFB210
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
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI9-.LFB211
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI10-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
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
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x50
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
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI17-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI20-.LFB222
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI20
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI25-.LFB223
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI0-.LFB206
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
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20b0
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI7-.LFB209
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI8-.LFB210
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
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI9-.LFB211
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI10-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
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
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x50
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
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.byte	0x4
	.long	.LCFI17-.LFB221
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI20-.LFB222
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI20
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI25-.LFB223
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
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
.LEFDE25:
	.file 4 "/usr/include/stdint.h"
	.file 5 "../cpu-defs.h"
	.file 6 "../qemu-common.h"
	.file 7 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 8 "/usr/include/sys/types.h"
	.file 9 "/home/remco/Projects/Argos/src/hw/vga_int.h"
	.file 10 "../argos-tag.h"
	.file 11 "../argos.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "/usr/include/bits/types.h"
	.file 15 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 16 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x2a5b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF244
	.byte	0x1
	.long	.LASF245
	.long	.LASF246
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
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xe
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x8
	.byte	0xc5
	.long	0x3f
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x292
	.long	.LASF44
	.byte	0xd8
	.byte	0xc
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF14
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF15
	.byte	0xd
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0xd
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0xd
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0xd
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0xd
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0xd
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0xd
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0xd
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0xd
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0xd
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0xd
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0xd
	.value	0x122
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0xd
	.value	0x124
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0xd
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0xd
	.value	0x132
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0xd
	.value	0x136
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0xd
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0xd
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0xd
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xd
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0xd
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xd
	.value	0x150
	.long	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xd
	.byte	0xb4
	.uleb128 0x8
	.long	0x2d0
	.long	.LASF45
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0xb
	.long	.LASF46
	.byte	0xd
	.byte	0xbb
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0xd
	.byte	0xbc
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x299
	.uleb128 0x5
	.byte	0x8
	.long	0xc6
	.uleb128 0xc
	.long	0x2ec
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x292
	.uleb128 0xc
	.long	0x302
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x49
	.long	0x323
	.uleb128 0x3
	.long	.LASF54
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF55
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF56
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF57
	.byte	0xb
	.byte	0x2f
	.long	0x318
	.uleb128 0x2
	.long	.LASF58
	.byte	0xb
	.byte	0x34
	.long	0x318
	.uleb128 0x8
	.long	0x38d
	.long	.LASF59
	.byte	0x8
	.byte	0xa
	.byte	0x37
	.uleb128 0xb
	.long	.LASF60
	.byte	0xa
	.byte	0x38
	.long	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF61
	.byte	0xa
	.byte	0x39
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0xa
	.byte	0x3d
	.long	0x364
	.uleb128 0x5
	.byte	0x8
	.long	0x38d
	.uleb128 0xc
	.long	0x3ae
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0xc
	.long	0x3be
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0xe
	.long	0x3ca
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x6f
	.long	0x3d5
	.uleb128 0x8
	.long	0x4b4
	.long	.LASF63
	.byte	0x68
	.byte	0x6
	.byte	0x6f
	.uleb128 0xb
	.long	.LASF64
	.byte	0x2
	.byte	0x42
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF65
	.byte	0x2
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF66
	.byte	0x2
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"bgr"
	.byte	0x2
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF67
	.byte	0x2
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF68
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF69
	.byte	0x2
	.byte	0x48
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF70
	.byte	0x2
	.byte	0x49
	.long	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF71
	.byte	0x2
	.byte	0x4b
	.long	0x5d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF72
	.byte	0x2
	.byte	0x4c
	.long	0x5f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF73
	.byte	0x2
	.byte	0x4d
	.long	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF74
	.byte	0x2
	.byte	0x4f
	.long	0x637
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF75
	.byte	0x2
	.byte	0x51
	.long	0x662
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF76
	.byte	0x2
	.byte	0x52
	.long	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF77
	.byte	0x2
	.byte	0x54
	.long	0x6ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.byte	0x73
	.long	0x4bf
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.uleb128 0x2
	.long	.LASF80
	.byte	0x6
	.byte	0x78
	.long	0x4d6
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.uleb128 0x2
	.long	.LASF81
	.byte	0x6
	.byte	0x79
	.long	0x4e7
	.uleb128 0x12
	.long	0x58a
	.long	.LASF81
	.value	0x228
	.byte	0x6
	.byte	0x79
	.uleb128 0xb
	.long	.LASF82
	.byte	0x7
	.byte	0x2f
	.long	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"bus"
	.byte	0x7
	.byte	0x32
	.long	0x7d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.long	.LASF83
	.byte	0x7
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.long	.LASF84
	.byte	0x7
	.byte	0x34
	.long	0x7da
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.long	.LASF85
	.byte	0x7
	.byte	0x35
	.long	0x7ea
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.long	.LASF86
	.byte	0x7
	.byte	0x38
	.long	0x7fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.long	.LASF87
	.byte	0x7
	.byte	0x39
	.long	0x800
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.long	.LASF88
	.byte	0x7
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x10
	.string	"irq"
	.byte	0x7
	.byte	0x3e
	.long	0x806
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.long	.LASF89
	.byte	0x7
	.byte	0x41
	.long	0x80c
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF90
	.byte	0x6
	.byte	0x7b
	.long	0x595
	.uleb128 0x5
	.byte	0x8
	.long	0x59b
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x4b4
	.uleb128 0x5
	.byte	0x8
	.long	0x302
	.uleb128 0x5
	.byte	0x8
	.long	0x4c5
	.uleb128 0xe
	.long	0x5d3
	.byte	0x1
	.uleb128 0xf
	.long	0x5d3
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3d5
	.uleb128 0x5
	.byte	0x8
	.long	0x5b3
	.uleb128 0xe
	.long	0x5f5
	.byte	0x1
	.uleb128 0xf
	.long	0x5d3
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5df
	.uleb128 0xe
	.long	0x607
	.byte	0x1
	.uleb128 0xf
	.long	0x5d3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x5fb
	.uleb128 0xe
	.long	0x637
	.byte	0x1
	.uleb128 0xf
	.long	0x5d3
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x60d
	.uleb128 0xe
	.long	0x662
	.byte	0x1
	.uleb128 0xf
	.long	0x5d3
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x318
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x63d
	.uleb128 0xe
	.long	0x67e
	.byte	0x1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x668
	.uleb128 0xe
	.long	0x6ae
	.byte	0x1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x5a7
	.uleb128 0xf
	.long	0x5a7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x684
	.uleb128 0x2
	.long	.LASF92
	.byte	0x2
	.byte	0x61
	.long	0x6bf
	.uleb128 0x5
	.byte	0x8
	.long	0x3be
	.uleb128 0x2
	.long	.LASF93
	.byte	0x2
	.byte	0x62
	.long	0x6bf
	.uleb128 0x2
	.long	.LASF94
	.byte	0x2
	.byte	0x63
	.long	0x6db
	.uleb128 0x5
	.byte	0x8
	.long	0x6e1
	.uleb128 0xe
	.long	0x6f2
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x7
	.byte	0xc
	.long	0x6fd
	.uleb128 0xe
	.long	0x718
	.byte	0x1
	.uleb128 0xf
	.long	0x718
	.uleb128 0xf
	.long	0x318
	.uleb128 0xf
	.long	0x318
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4dc
	.uleb128 0x2
	.long	.LASF96
	.byte	0x7
	.byte	0xe
	.long	0x729
	.uleb128 0x13
	.long	0x743
	.byte	0x1
	.long	0x318
	.uleb128 0xf
	.long	0x718
	.uleb128 0xf
	.long	0x318
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x7
	.byte	0x10
	.long	0x74e
	.uleb128 0xe
	.long	0x76e
	.byte	0x1
	.uleb128 0xf
	.long	0x718
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x318
	.uleb128 0xf
	.long	0x318
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x8
	.long	0x7b3
	.long	.LASF98
	.byte	0x18
	.byte	0x7
	.byte	0x16
	.uleb128 0xb
	.long	.LASF99
	.byte	0x7
	.byte	0x17
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF100
	.byte	0x7
	.byte	0x18
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF101
	.byte	0x7
	.byte	0x19
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF102
	.byte	0x7
	.byte	0x1a
	.long	0x7b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x743
	.uleb128 0x2
	.long	.LASF98
	.byte	0x7
	.byte	0x1b
	.long	0x76e
	.uleb128 0xc
	.long	0x7d4
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4cb
	.uleb128 0xc
	.long	0x7ea
	.long	0x7a
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x7fa
	.long	0x7b9
	.uleb128 0xd
	.long	0x61
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x71e
	.uleb128 0x5
	.byte	0x8
	.long	0x6f2
	.uleb128 0x5
	.byte	0x8
	.long	0x58a
	.uleb128 0xc
	.long	0x81c
	.long	0x3f
	.uleb128 0xd
	.long	0x61
	.byte	0x3
	.byte	0x0
	.uleb128 0x14
	.long	0xbeb
	.long	.LASF103
	.long	0x10630
	.byte	0x9
	.byte	0x97
	.uleb128 0xb
	.long	.LASF104
	.byte	0x9
	.byte	0x98
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF105
	.byte	0x9
	.byte	0x98
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF106
	.byte	0x9
	.byte	0x98
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF107
	.byte	0x9
	.byte	0x98
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF108
	.byte	0x9
	.byte	0x98
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF109
	.byte	0x9
	.byte	0x98
	.long	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF110
	.byte	0x9
	.byte	0x98
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF111
	.byte	0x9
	.byte	0x98
	.long	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF113
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"sr"
	.byte	0x9
	.byte	0x98
	.long	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xb
	.long	.LASF114
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.uleb128 0x10
	.string	"gr"
	.byte	0x9
	.byte	0x98
	.long	0x7c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xb
	.long	.LASF115
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x246
	.uleb128 0x10
	.string	"ar"
	.byte	0x9
	.byte	0x98
	.long	0xbeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.long	.LASF116
	.byte	0x9
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.uleb128 0xb
	.long	.LASF117
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x10
	.string	"cr"
	.byte	0x9
	.byte	0x98
	.long	0x7c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x261
	.uleb128 0x10
	.string	"msr"
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x361
	.uleb128 0x10
	.string	"fcr"
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x362
	.uleb128 0xb
	.long	.LASF118
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x363
	.uleb128 0xb
	.long	.LASF119
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x364
	.uleb128 0xb
	.long	.LASF120
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x365
	.uleb128 0xb
	.long	.LASF121
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x366
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x367
	.uleb128 0xb
	.long	.LASF123
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x368
	.uleb128 0xb
	.long	.LASF124
	.byte	0x9
	.byte	0x98
	.long	0x39e
	.byte	0x3
	.byte	0x23
	.uleb128 0x369
	.uleb128 0xb
	.long	.LASF125
	.byte	0x9
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x36c
	.uleb128 0xb
	.long	.LASF126
	.byte	0x9
	.byte	0x98
	.long	0xbfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.byte	0x98
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x670
	.uleb128 0xb
	.long	.LASF128
	.byte	0x9
	.byte	0x98
	.long	0xc22
	.byte	0x3
	.byte	0x23
	.uleb128 0x678
	.uleb128 0xb
	.long	.LASF129
	.byte	0x9
	.byte	0x98
	.long	0xc49
	.byte	0x3
	.byte	0x23
	.uleb128 0x680
	.uleb128 0xb
	.long	.LASF130
	.byte	0x9
	.byte	0x98
	.long	0xc65
	.byte	0x3
	.byte	0x23
	.uleb128 0x688
	.uleb128 0xb
	.long	.LASF131
	.byte	0x9
	.byte	0x98
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x690
	.uleb128 0xb
	.long	.LASF132
	.byte	0x9
	.byte	0x98
	.long	0xc6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x692
	.uleb128 0xb
	.long	.LASF133
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6a8
	.uleb128 0xb
	.long	.LASF134
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ac
	.uleb128 0xb
	.long	.LASF135
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b0
	.uleb128 0x10
	.string	"ds"
	.byte	0x9
	.byte	0x98
	.long	0xc7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b8
	.uleb128 0xb
	.long	.LASF136
	.byte	0x9
	.byte	0x98
	.long	0xc81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c0
	.uleb128 0xb
	.long	.LASF137
	.byte	0x9
	.byte	0x98
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c8
	.uleb128 0xb
	.long	.LASF138
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cc
	.uleb128 0xb
	.long	.LASF139
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cd
	.uleb128 0xb
	.long	.LASF140
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d4
	.uleb128 0xb
	.long	.LASF142
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d8
	.uleb128 0xb
	.long	.LASF143
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6dc
	.uleb128 0xb
	.long	.LASF144
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e0
	.uleb128 0xb
	.long	.LASF145
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e1
	.uleb128 0xb
	.long	.LASF146
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e4
	.uleb128 0xb
	.long	.LASF147
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e8
	.uleb128 0xb
	.long	.LASF148
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ec
	.uleb128 0xb
	.long	.LASF149
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f0
	.uleb128 0xb
	.long	.LASF150
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f4
	.uleb128 0xb
	.long	.LASF151
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f5
	.uleb128 0xb
	.long	.LASF152
	.byte	0x9
	.byte	0x98
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f8
	.uleb128 0xb
	.long	.LASF153
	.byte	0x9
	.byte	0x98
	.long	0xcab
	.byte	0x3
	.byte	0x23
	.uleb128 0x700
	.uleb128 0xb
	.long	.LASF154
	.byte	0x9
	.byte	0x98
	.long	0x6b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x708
	.uleb128 0xb
	.long	.LASF155
	.byte	0x9
	.byte	0x98
	.long	0x6c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x710
	.uleb128 0xb
	.long	.LASF156
	.byte	0x9
	.byte	0x98
	.long	0x6d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x718
	.uleb128 0xb
	.long	.LASF157
	.byte	0x9
	.byte	0x98
	.long	0xcb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0xb
	.long	.LASF158
	.byte	0x9
	.byte	0x98
	.long	0xccd
	.byte	0x3
	.byte	0x23
	.uleb128 0x820
	.uleb128 0xb
	.long	.LASF159
	.byte	0x9
	.byte	0x98
	.long	0xce9
	.byte	0x3
	.byte	0x23
	.uleb128 0x828
	.uleb128 0xb
	.long	.LASF160
	.byte	0x9
	.byte	0x98
	.long	0xcef
	.byte	0x3
	.byte	0x23
	.uleb128 0x830
	.uleb128 0xb
	.long	.LASF161
	.byte	0x9
	.byte	0x98
	.long	0xcff
	.byte	0x3
	.byte	0x23
	.uleb128 0xc30
	.byte	0x0
	.uleb128 0xc
	.long	0xbfb
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0x14
	.byte	0x0
	.uleb128 0xc
	.long	0xc0c
	.long	0x302
	.uleb128 0x15
	.long	0x61
	.value	0x2ff
	.byte	0x0
	.uleb128 0x13
	.long	0xc1c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xc1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x81c
	.uleb128 0x5
	.byte	0x8
	.long	0xc0c
	.uleb128 0xe
	.long	0xc43
	.byte	0x1
	.uleb128 0xf
	.long	0xc1c
	.uleb128 0xf
	.long	0xc43
	.uleb128 0xf
	.long	0xc43
	.uleb128 0xf
	.long	0xc43
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x318
	.uleb128 0x5
	.byte	0x8
	.long	0xc28
	.uleb128 0xe
	.long	0xc65
	.byte	0x1
	.uleb128 0xf
	.long	0xc1c
	.uleb128 0xf
	.long	0x4d
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc4f
	.uleb128 0xc
	.long	0xc7b
	.long	0x30d
	.uleb128 0xd
	.long	0x61
	.byte	0x9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3ca
	.uleb128 0xc
	.long	0xc91
	.long	0x318
	.uleb128 0xd
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x13
	.long	0xcab
	.byte	0x1
	.long	0x46
	.uleb128 0xf
	.long	0x46
	.uleb128 0xf
	.long	0x46
	.uleb128 0xf
	.long	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc91
	.uleb128 0xc
	.long	0xcc1
	.long	0x318
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xe
	.long	0xccd
	.byte	0x1
	.uleb128 0xf
	.long	0xc1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcc1
	.uleb128 0xe
	.long	0xce9
	.byte	0x1
	.uleb128 0xf
	.long	0xc1c
	.uleb128 0xf
	.long	0x5a7
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xcd3
	.uleb128 0xc
	.long	0xcff
	.long	0x318
	.uleb128 0xd
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.long	0xd10
	.long	0x318
	.uleb128 0x15
	.long	0x61
	.value	0x3e7f
	.byte	0x0
	.uleb128 0x16
	.long	0xd4b
	.byte	0x10
	.byte	0x1
	.byte	0x38
	.uleb128 0x10
	.string	"id"
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"on"
	.byte	0x1
	.byte	0x37
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x16
	.long	0xd9a
	.byte	0x10
	.byte	0x1
	.byte	0x56
	.uleb128 0x10
	.string	"min"
	.byte	0x1
	.byte	0x50
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"max"
	.byte	0x1
	.byte	0x51
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF162
	.byte	0x1
	.byte	0x52
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF163
	.byte	0x1
	.byte	0x53
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF164
	.byte	0x1
	.byte	0x55
	.long	0xd9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0xda9
	.long	0x318
	.uleb128 0x17
	.long	0x61
	.byte	0x0
	.uleb128 0x18
	.long	0xdc8
	.byte	0x8
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF164
	.byte	0x1
	.byte	0x4e
	.long	0xc43
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x56
	.long	0xdc8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd4b
	.uleb128 0x8
	.long	0xe0b
	.long	.LASF165
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"w"
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.long	0x1364
	.long	.LASF166
	.long	0x126b0
	.byte	0x1
	.byte	0x27
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.byte	0x29
	.long	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF105
	.byte	0x1
	.byte	0x29
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1
	.byte	0x29
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF107
	.byte	0x1
	.byte	0x29
	.long	0x38
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.byte	0x29
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF109
	.byte	0x1
	.byte	0x29
	.long	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF110
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF111
	.byte	0x1
	.byte	0x29
	.long	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF112
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF113
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"sr"
	.byte	0x1
	.byte	0x29
	.long	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xb
	.long	.LASF114
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.uleb128 0x10
	.string	"gr"
	.byte	0x1
	.byte	0x29
	.long	0x7c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0xb
	.long	.LASF115
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x246
	.uleb128 0x10
	.string	"ar"
	.byte	0x1
	.byte	0x29
	.long	0xbeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.uleb128 0xb
	.long	.LASF117
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x10
	.string	"cr"
	.byte	0x1
	.byte	0x29
	.long	0x7c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x261
	.uleb128 0x10
	.string	"msr"
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x361
	.uleb128 0x10
	.string	"fcr"
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x362
	.uleb128 0xb
	.long	.LASF118
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x363
	.uleb128 0xb
	.long	.LASF119
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x364
	.uleb128 0xb
	.long	.LASF120
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x365
	.uleb128 0xb
	.long	.LASF121
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x366
	.uleb128 0xb
	.long	.LASF122
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x367
	.uleb128 0xb
	.long	.LASF123
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x368
	.uleb128 0xb
	.long	.LASF124
	.byte	0x1
	.byte	0x29
	.long	0x39e
	.byte	0x3
	.byte	0x23
	.uleb128 0x369
	.uleb128 0xb
	.long	.LASF125
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x36c
	.uleb128 0xb
	.long	.LASF126
	.byte	0x1
	.byte	0x29
	.long	0xbfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xb
	.long	.LASF127
	.byte	0x1
	.byte	0x29
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x670
	.uleb128 0xb
	.long	.LASF128
	.byte	0x1
	.byte	0x29
	.long	0xc22
	.byte	0x3
	.byte	0x23
	.uleb128 0x678
	.uleb128 0xb
	.long	.LASF129
	.byte	0x1
	.byte	0x29
	.long	0xc49
	.byte	0x3
	.byte	0x23
	.uleb128 0x680
	.uleb128 0xb
	.long	.LASF130
	.byte	0x1
	.byte	0x29
	.long	0xc65
	.byte	0x3
	.byte	0x23
	.uleb128 0x688
	.uleb128 0xb
	.long	.LASF131
	.byte	0x1
	.byte	0x29
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0x690
	.uleb128 0xb
	.long	.LASF132
	.byte	0x1
	.byte	0x29
	.long	0xc6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x692
	.uleb128 0xb
	.long	.LASF133
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6a8
	.uleb128 0xb
	.long	.LASF134
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ac
	.uleb128 0xb
	.long	.LASF135
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b0
	.uleb128 0x10
	.string	"ds"
	.byte	0x1
	.byte	0x29
	.long	0xc7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x6b8
	.uleb128 0xb
	.long	.LASF136
	.byte	0x1
	.byte	0x29
	.long	0xc81
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c0
	.uleb128 0xb
	.long	.LASF137
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x6c8
	.uleb128 0xb
	.long	.LASF138
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cc
	.uleb128 0xb
	.long	.LASF139
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6cd
	.uleb128 0xb
	.long	.LASF140
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d4
	.uleb128 0xb
	.long	.LASF142
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6d8
	.uleb128 0xb
	.long	.LASF143
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6dc
	.uleb128 0xb
	.long	.LASF144
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e0
	.uleb128 0xb
	.long	.LASF145
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e1
	.uleb128 0xb
	.long	.LASF146
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e4
	.uleb128 0xb
	.long	.LASF147
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6e8
	.uleb128 0xb
	.long	.LASF148
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6ec
	.uleb128 0xb
	.long	.LASF149
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f0
	.uleb128 0xb
	.long	.LASF150
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f4
	.uleb128 0xb
	.long	.LASF151
	.byte	0x1
	.byte	0x29
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f5
	.uleb128 0xb
	.long	.LASF152
	.byte	0x1
	.byte	0x29
	.long	0x318
	.byte	0x3
	.byte	0x23
	.uleb128 0x6f8
	.uleb128 0xb
	.long	.LASF153
	.byte	0x1
	.byte	0x29
	.long	0xcab
	.byte	0x3
	.byte	0x23
	.uleb128 0x700
	.uleb128 0xb
	.long	.LASF154
	.byte	0x1
	.byte	0x29
	.long	0x6b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x708
	.uleb128 0xb
	.long	.LASF155
	.byte	0x1
	.byte	0x29
	.long	0x6c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x710
	.uleb128 0xb
	.long	.LASF156
	.byte	0x1
	.byte	0x29
	.long	0x6d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x718
	.uleb128 0xb
	.long	.LASF157
	.byte	0x1
	.byte	0x29
	.long	0xcb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x720
	.uleb128 0xb
	.long	.LASF158
	.byte	0x1
	.byte	0x29
	.long	0xccd
	.byte	0x3
	.byte	0x23
	.uleb128 0x820
	.uleb128 0xb
	.long	.LASF159
	.byte	0x1
	.byte	0x29
	.long	0xce9
	.byte	0x3
	.byte	0x23
	.uleb128 0x828
	.uleb128 0xb
	.long	.LASF160
	.byte	0x1
	.byte	0x29
	.long	0xcef
	.byte	0x3
	.byte	0x23
	.uleb128 0x830
	.uleb128 0xb
	.long	.LASF161
	.byte	0x1
	.byte	0x29
	.long	0xcff
	.byte	0x3
	.byte	0x23
	.uleb128 0xc30
	.uleb128 0xb
	.long	.LASF67
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10630
	.uleb128 0xb
	.long	.LASF68
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10634
	.uleb128 0xb
	.long	.LASF167
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10638
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x1063c
	.uleb128 0xb
	.long	.LASF168
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10640
	.uleb128 0xb
	.long	.LASF169
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10644
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x32
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10648
	.uleb128 0xb
	.long	.LASF170
	.byte	0x1
	.byte	0x38
	.long	0xd10
	.byte	0x4
	.byte	0x23
	.uleb128 0x1064c
	.uleb128 0xb
	.long	.LASF171
	.byte	0x1
	.byte	0x3e
	.long	0x5a7
	.byte	0x4
	.byte	0x23
	.uleb128 0x10660
	.uleb128 0xb
	.long	.LASF172
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10668
	.uleb128 0xb
	.long	.LASF173
	.byte	0x1
	.byte	0x41
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x1066c
	.uleb128 0xb
	.long	.LASF174
	.byte	0x1
	.byte	0x42
	.long	0xc43
	.byte	0x4
	.byte	0x23
	.uleb128 0x10670
	.uleb128 0xb
	.long	.LASF175
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10678
	.uleb128 0xb
	.long	.LASF176
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x1067c
	.uleb128 0xb
	.long	.LASF177
	.byte	0x1
	.byte	0x45
	.long	0x318
	.byte	0x4
	.byte	0x23
	.uleb128 0x10680
	.uleb128 0xb
	.long	.LASF178
	.byte	0x1
	.byte	0x46
	.long	0x318
	.byte	0x4
	.byte	0x23
	.uleb128 0x10684
	.uleb128 0xb
	.long	.LASF179
	.byte	0x1
	.byte	0x47
	.long	0x318
	.byte	0x4
	.byte	0x23
	.uleb128 0x10688
	.uleb128 0xb
	.long	.LASF180
	.byte	0x1
	.byte	0x48
	.long	0x318
	.byte	0x4
	.byte	0x23
	.uleb128 0x1068c
	.uleb128 0xb
	.long	.LASF181
	.byte	0x1
	.byte	0x49
	.long	0x318
	.byte	0x4
	.byte	0x23
	.uleb128 0x10690
	.uleb128 0xb
	.long	.LASF182
	.byte	0x1
	.byte	0x4a
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10694
	.uleb128 0xb
	.long	.LASF183
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x10698
	.uleb128 0x1b
	.long	0xda9
	.byte	0x4
	.byte	0x23
	.uleb128 0x106a0
	.uleb128 0xb
	.long	.LASF184
	.byte	0x1
	.byte	0x5c
	.long	0x1364
	.byte	0x4
	.byte	0x23
	.uleb128 0x106a8
	.uleb128 0xb
	.long	.LASF185
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x126a8
	.uleb128 0xb
	.long	.LASF186
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0x126ac
	.byte	0x0
	.uleb128 0xc
	.long	0x1375
	.long	0xdce
	.uleb128 0x15
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x14
	.long	0x13a2
	.long	.LASF187
	.long	0x128d8
	.byte	0x1
	.byte	0x60
	.uleb128 0xb
	.long	.LASF188
	.byte	0x1
	.byte	0x61
	.long	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF189
	.byte	0x1
	.byte	0x62
	.long	0xe0b
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.byte	0x0
	.uleb128 0x1c
	.long	0x1429
	.long	.LASF190
	.value	0x2018
	.byte	0x1
	.value	0x1b2
	.uleb128 0x9
	.long	.LASF67
	.byte	0x1
	.value	0x1b3
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1
	.value	0x1b4
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"id"
	.byte	0x1
	.value	0x1b5
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"bpp"
	.byte	0x1
	.value	0x1b6
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF191
	.byte	0x1
	.value	0x1b7
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF192
	.byte	0x1
	.value	0x1b8
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF193
	.byte	0x1
	.value	0x1b9
	.long	0x1429
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF194
	.byte	0x1
	.value	0x1ba
	.long	0x1429
	.byte	0x3
	.byte	0x23
	.uleb128 0x1018
	.byte	0x0
	.uleb128 0xc
	.long	0x143a
	.long	0x318
	.uleb128 0x15
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x1e
	.long	0x1e3d
	.long	.LASF198
	.byte	0x1
	.value	0x1df
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.value	0x1de
	.long	0x1e3d
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.string	"cmd"
	.byte	0x1
	.value	0x1e0
	.long	0x318
	.uleb128 0x21
	.long	.LASF195
	.byte	0x1
	.value	0x1e0
	.long	0x318
	.uleb128 0x22
	.long	.LASF196
	.byte	0x1
	.value	0x1e1
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x20
	.string	"dx"
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x20
	.string	"dy"
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.uleb128 0x22
	.long	.LASF170
	.byte	0x1
	.value	0x1e3
	.long	0x13a2
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x23
	.long	.LASF247
	.byte	0x1
	.value	0x245
	.quad	.L111
	.uleb128 0x24
	.long	.LASF197
	.long	0x1e53
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.0
	.uleb128 0x25
	.long	0x1520
	.long	0x1e58
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x26
	.long	0x1e6a
	.byte	0x0
	.uleb128 0x25
	.long	0x1556
	.long	0x1e75
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x158c
	.long	0x1e75
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x15c2
	.long	0x1e75
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x15fa
	.long	0x1e75
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1632
	.long	0x1e75
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1668
	.long	0x1e75
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x16a0
	.long	0x1e75
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x16d8
	.long	0x1e75
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1710
	.long	0x1e75
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1748
	.long	0x1e75
	.quad	.LBB24
	.quad	.LBE24
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1794
	.long	0x1e9e
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x26
	.long	0x1eac
	.uleb128 0x26
	.long	0x1eb6
	.uleb128 0x26
	.long	0x1ec0
	.uleb128 0x26
	.long	0x1eca
	.uleb128 0x26
	.long	0x1ed4
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x29
	.long	0x1ede
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x17ca
	.long	0x1e75
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1800
	.long	0x1e75
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1838
	.long	0x1e75
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1870
	.long	0x1e75
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x18a8
	.long	0x1e75
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x18e0
	.long	0x1e75
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1918
	.long	0x1e75
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1950
	.long	0x1e75
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1986
	.long	0x1e75
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x28
	.long	0x1e91
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x19be
	.long	0x1e75
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x19ea
	.long	0x1e75
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1a16
	.long	0x1e75
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1a49
	.long	0x1ef1
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x26
	.long	0x1eff
	.uleb128 0x2b
	.long	0x1f09
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x29
	.long	0x1f13
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1a81
	.long	0x1e75
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1ab9
	.long	0x1e75
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1af2
	.long	0x1e75
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1b2b
	.long	0x1e75
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1b64
	.long	0x1e75
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1b9c
	.long	0x1e75
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1c4c
	.long	0x1f24
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x26
	.long	0x1f32
	.uleb128 0x26
	.long	0x1f3c
	.uleb128 0x26
	.long	0x1f47
	.uleb128 0x26
	.long	0x1f52
	.uleb128 0x26
	.long	0x1f5d
	.uleb128 0x26
	.long	0x1f68
	.uleb128 0x26
	.long	0x1f72
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x29
	.long	0x1f7c
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1f88
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1f94
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.long	0x1fa0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0x1fac
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2c
	.long	0x1e9e
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x26
	.long	0x1eac
	.uleb128 0x26
	.long	0x1eb6
	.uleb128 0x26
	.long	0x1ec0
	.uleb128 0x26
	.long	0x1eca
	.uleb128 0x26
	.long	0x1ed4
	.uleb128 0x27
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x29
	.long	0x1ede
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1c84
	.long	0x1e75
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x29
	.long	0x1e91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1cbd
	.long	0x1e75
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1cf6
	.long	0x1e75
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1d2f
	.long	0x1e75
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1d68
	.long	0x1e75
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x26
	.long	0x1e87
	.uleb128 0x27
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x29
	.long	0x1e91
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x1fc9
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x26
	.long	0x1fd7
	.uleb128 0x26
	.long	0x1fe1
	.uleb128 0x26
	.long	0x1feb
	.uleb128 0x26
	.long	0x1ff5
	.uleb128 0x26
	.long	0x1fff
	.uleb128 0x26
	.long	0x2009
	.uleb128 0x27
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x28
	.long	0x2013
	.uleb128 0x29
	.long	0x201f
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x202b
	.byte	0x1
	.byte	0x5a
	.uleb128 0x29
	.long	0x2037
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.long	0x2043
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0x204f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	0x205b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x29
	.long	0x2067
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	0x2073
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.long	0x207f
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x2c
	.long	0x1e9e
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x26
	.long	0x1eac
	.uleb128 0x26
	.long	0x1eb6
	.uleb128 0x26
	.long	0x1ec0
	.uleb128 0x26
	.long	0x1eca
	.uleb128 0x26
	.long	0x1ed4
	.uleb128 0x27
	.quad	.LBB88
	.quad	.LBE88
	.uleb128 0x29
	.long	0x1ede
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe0b
	.uleb128 0xc
	.long	0x1e53
	.long	0x75
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x6
	.long	0x1e43
	.uleb128 0x2d
	.long	0x1e75
	.long	.LASF199
	.byte	0x1
	.value	0x1cf
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x1ce
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x2d
	.long	0x1e9e
	.long	.LASF200
	.byte	0x1
	.value	0x1d6
	.byte	0x1
	.long	0x318
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x1d5
	.long	0x1e3d
	.uleb128 0x20
	.string	"cmd"
	.byte	0x1
	.value	0x1d7
	.long	0x318
	.byte	0x0
	.uleb128 0x2f
	.long	0x1eeb
	.long	.LASF201
	.byte	0x1
	.value	0x141
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x13f
	.long	0x1e3d
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x140
	.long	0x3f
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x140
	.long	0x3f
	.uleb128 0x2e
	.string	"w"
	.byte	0x1
	.value	0x140
	.long	0x3f
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.value	0x140
	.long	0x3f
	.uleb128 0x21
	.long	.LASF202
	.byte	0x1
	.value	0x142
	.long	0x1eeb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xdce
	.uleb128 0x2f
	.long	0x1f1e
	.long	.LASF203
	.byte	0x1
	.value	0x1c3
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x1c1
	.long	0x1e3d
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x1c2
	.long	0x1f1e
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.value	0x1c4
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x13a2
	.uleb128 0x2f
	.long	0x1fb9
	.long	.LASF204
	.byte	0x1
	.value	0x15e
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x15c
	.long	0x1e3d
	.uleb128 0x2e
	.string	"x0"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x2e
	.string	"y0"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x2e
	.string	"x1"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x2e
	.string	"y1"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x2e
	.string	"w"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x21
	.long	.LASF171
	.byte	0x1
	.value	0x162
	.long	0x5a7
	.uleb128 0x21
	.long	.LASF205
	.byte	0x1
	.value	0x164
	.long	0x3f
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.value	0x165
	.long	0x3f
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.value	0x166
	.long	0x3f
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.value	0x167
	.long	0x1fb9
	.byte	0x0
	.uleb128 0xc
	.long	0x1fc9
	.long	0x5a7
	.uleb128 0xd
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.long	0x208c
	.long	.LASF207
	.byte	0x1
	.value	0x183
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x181
	.long	0x1e3d
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x182
	.long	0x318
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.uleb128 0x2e
	.string	"w"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.value	0x182
	.long	0x3f
	.uleb128 0x21
	.long	.LASF171
	.byte	0x1
	.value	0x187
	.long	0x5a7
	.uleb128 0x21
	.long	.LASF168
	.byte	0x1
	.value	0x189
	.long	0x3f
	.uleb128 0x21
	.long	.LASF205
	.byte	0x1
	.value	0x18a
	.long	0x3f
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.value	0x18b
	.long	0x3f
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.value	0x18c
	.long	0x3f
	.uleb128 0x21
	.long	.LASF208
	.byte	0x1
	.value	0x18d
	.long	0x3f
	.uleb128 0x20
	.string	"fst"
	.byte	0x1
	.value	0x18e
	.long	0x5a7
	.uleb128 0x20
	.string	"dst"
	.byte	0x1
	.value	0x18f
	.long	0x5a7
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.value	0x190
	.long	0x5a7
	.uleb128 0x20
	.string	"col"
	.byte	0x1
	.value	0x191
	.long	0x3ae
	.byte	0x0
	.uleb128 0x30
	.long	0x20e4
	.long	.LASF209
	.byte	0x1
	.value	0x252
	.byte	0x1
	.long	0x318
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x250
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x250
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"tag"
	.byte	0x1
	.value	0x251
	.long	0x398
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x253
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x1e
	.long	0x2138
	.long	.LASF211
	.byte	0x1
	.value	0x258
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x257
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x257
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF172
	.byte	0x1
	.value	0x257
	.long	0x318
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x259
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x30
	.long	0x21b4
	.long	.LASF212
	.byte	0x1
	.value	0x25f
	.byte	0x1
	.long	0x318
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x25d
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x25d
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"tag"
	.byte	0x1
	.value	0x25e
	.long	0x398
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.long	.LASF213
	.byte	0x1
	.value	0x260
	.long	0x318
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x261
	.long	0x1e3d
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF197
	.long	0x21c4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.4
	.byte	0x0
	.uleb128 0xc
	.long	0x21c4
	.long	0x75
	.uleb128 0xd
	.long	0x61
	.byte	0x11
	.byte	0x0
	.uleb128 0x6
	.long	0x21b4
	.uleb128 0x1e
	.long	0x2231
	.long	.LASF214
	.byte	0x1
	.value	0x2d6
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x2d5
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x2d5
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF215
	.byte	0x1
	.value	0x2d5
	.long	0x318
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x2d7
	.long	0x1e3d
	.uleb128 0x24
	.long	.LASF197
	.long	0x2241
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.3
	.byte	0x0
	.uleb128 0xc
	.long	0x2241
	.long	0x75
	.uleb128 0xd
	.long	0x61
	.byte	0x12
	.byte	0x0
	.uleb128 0x6
	.long	0x2231
	.uleb128 0x30
	.long	0x22a8
	.long	.LASF216
	.byte	0x1
	.value	0x344
	.byte	0x1
	.long	0x318
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x342
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x342
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"tag"
	.byte	0x1
	.value	0x343
	.long	0x398
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	.LASF197
	.long	0x22b8
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.2
	.byte	0x0
	.uleb128 0xc
	.long	0x22b8
	.long	0x75
	.uleb128 0xd
	.long	0x61
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.long	0x22a8
	.uleb128 0x1e
	.long	0x231b
	.long	.LASF217
	.byte	0x1
	.value	0x34a
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x349
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	.LASF210
	.byte	0x1
	.value	0x349
	.long	0x318
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF64
	.byte	0x1
	.value	0x349
	.long	0x318
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	.LASF197
	.long	0x231b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__FUNCTION__.1
	.byte	0x0
	.uleb128 0x6
	.long	0x21b4
	.uleb128 0x1e
	.long	0x24c0
	.long	.LASF218
	.byte	0x1
	.value	0x35a
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x359
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x35b
	.long	0x1e3d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	0x239f
	.long	0x24c0
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x26
	.long	0x24ce
	.uleb128 0x2c
	.long	0x24d9
	.quad	.LBB93
	.quad	.LBE93
	.uleb128 0x2b
	.long	0x24e6
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x24ef
	.uleb128 0x26
	.long	0x24f8
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x23cb
	.long	0x2502
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x26
	.long	0x2510
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x29
	.long	0x251a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x246d
	.long	0x2527
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x26
	.long	0x2535
	.uleb128 0x2b
	.long	0x253f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2b
	.long	0x2549
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.long	0x2553
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.long	0x255d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	0x243d
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x29
	.long	0x2567
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0x2573
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	0x257f
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.long	0x258b
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	0x2597
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	0x25a3
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2c
	.long	0x25b0
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x26
	.long	0x25bd
	.uleb128 0x26
	.long	0x25c6
	.uleb128 0x26
	.long	0x25cf
	.uleb128 0x26
	.long	0x25d8
	.uleb128 0x26
	.long	0x25e1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x248c
	.long	0x25eb
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x26
	.long	0x25f9
	.byte	0x0
	.uleb128 0x2c
	.long	0x25b0
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x2b
	.long	0x25bd
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x25c6
	.uleb128 0x26
	.long	0x25cf
	.uleb128 0x2b
	.long	0x25d8
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x25e1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x24d9
	.long	.LASF219
	.byte	0x1
	.value	0x350
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x34f
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x34
	.long	0x2502
	.long	.LASF72
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x35
	.string	"s"
	.byte	0x2
	.byte	0x5c
	.long	0xc7b
	.uleb128 0x35
	.string	"w"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.uleb128 0x35
	.string	"h"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x2527
	.long	.LASF220
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x14b
	.long	0x1e3d
	.uleb128 0x21
	.long	.LASF202
	.byte	0x1
	.value	0x14d
	.long	0x1eeb
	.byte	0x0
	.uleb128 0x2f
	.long	0x25b0
	.long	.LASF221
	.byte	0x1
	.value	0x123
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x121
	.long	0x1e3d
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.uleb128 0x2e
	.string	"w"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.value	0x125
	.long	0x3f
	.uleb128 0x21
	.long	.LASF205
	.byte	0x1
	.value	0x126
	.long	0x3f
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.value	0x127
	.long	0x3f
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.value	0x128
	.long	0x3f
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.value	0x129
	.long	0x5a7
	.uleb128 0x20
	.string	"dst"
	.byte	0x1
	.value	0x12a
	.long	0x5a7
	.byte	0x0
	.uleb128 0x34
	.long	0x25eb
	.long	.LASF71
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x35
	.string	"s"
	.byte	0x2
	.byte	0x57
	.long	0xc7b
	.uleb128 0x35
	.string	"x"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x35
	.string	"y"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x35
	.string	"w"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x35
	.string	"h"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x2604
	.long	.LASF223
	.byte	0x1
	.value	0x134
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x133
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x1e
	.long	0x263e
	.long	.LASF224
	.byte	0x1
	.value	0x39e
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x39d
	.long	0xac
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x39f
	.long	0x1e3d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.long	0x2684
	.long	.LASF225
	.byte	0x1
	.value	0x3ad
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x3ac
	.long	0xac
	.byte	0x1
	.byte	0x58
	.uleb128 0x31
	.long	.LASF226
	.byte	0x1
	.value	0x3ac
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x3ae
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x1e
	.long	0x2732
	.long	.LASF227
	.byte	0x1
	.value	0x46a
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x469
	.long	0x5a1
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x469
	.long	0xac
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x46b
	.long	0x2732
	.uleb128 0x25
	.long	0x26ed
	.long	0x2738
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x2b
	.long	0x2746
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	0x2750
	.byte	0x0
	.uleb128 0x25
	.long	0x2711
	.long	0x275b
	.quad	.LBB124
	.quad	.LBE124
	.uleb128 0x26
	.long	0x2768
	.uleb128 0x26
	.long	0x2771
	.byte	0x0
	.uleb128 0x2c
	.long	0x275b
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x26
	.long	0x2768
	.uleb128 0x26
	.long	0x2771
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1375
	.uleb128 0x2f
	.long	0x275b
	.long	.LASF228
	.byte	0x1
	.value	0x409
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x408
	.long	0x1e3d
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x408
	.long	0x5a1
	.byte	0x0
	.uleb128 0x34
	.long	0x277c
	.long	.LASF229
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x35
	.string	"f"
	.byte	0x3
	.byte	0x1e
	.long	0x5a1
	.uleb128 0x35
	.string	"pv"
	.byte	0x3
	.byte	0x1e
	.long	0x277c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2782
	.uleb128 0x6
	.long	0x318
	.uleb128 0x30
	.long	0x2860
	.long	.LASF230
	.byte	0x1
	.value	0x471
	.byte	0x1
	.long	0x3f
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x470
	.long	0x5a1
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.value	0x470
	.long	0xac
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	.LASF231
	.byte	0x1
	.value	0x470
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x472
	.long	0x2732
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x473
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.long	0x2860
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x2b
	.long	0x2872
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	0x287c
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x29
	.long	0x2886
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.long	0x283d
	.long	0x28b2
	.quad	.LBB132
	.quad	.LBE132
	.uleb128 0x26
	.long	0x28bf
	.uleb128 0x26
	.long	0x28c8
	.byte	0x0
	.uleb128 0x2c
	.long	0x28b2
	.quad	.LBB136
	.quad	.LBE136
	.uleb128 0x26
	.long	0x28bf
	.uleb128 0x26
	.long	0x28c8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x289d
	.long	.LASF232
	.byte	0x1
	.value	0x41c
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x41b
	.long	0x1e3d
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x41b
	.long	0x5a1
	.uleb128 0x21
	.long	.LASF66
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.uleb128 0x36
	.long	.LASF197
	.long	0x28ad
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.long	0x28ad
	.long	0x75
	.uleb128 0xd
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.long	0x289d
	.uleb128 0x34
	.long	0x28d3
	.long	.LASF233
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x35
	.string	"f"
	.byte	0x3
	.byte	0x32
	.long	0x5a1
	.uleb128 0x35
	.string	"pv"
	.byte	0x3
	.byte	0x32
	.long	0xc43
	.byte	0x0
	.uleb128 0x37
	.long	0x29a4
	.byte	0x1
	.long	.LASF248
	.byte	0x1
	.value	0x48c
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"bus"
	.byte	0x1
	.value	0x48a
	.long	0x7d4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"ds"
	.byte	0x1
	.value	0x48a
	.long	0xc7b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF234
	.byte	0x1
	.value	0x48a
	.long	0x5a7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.long	.LASF235
	.byte	0x1
	.value	0x48b
	.long	0x38
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	.LASF236
	.byte	0x1
	.value	0x48b
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x48d
	.long	0x2732
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.long	0x2979
	.long	0x29a4
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x2b
	.long	0x29b2
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	0x29bc
	.uleb128 0x26
	.long	0x29c7
	.uleb128 0x26
	.long	0x29d3
	.uleb128 0x26
	.long	0x29df
	.byte	0x0
	.uleb128 0x33
	.long	0x2988
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x28
	.long	0x29eb
	.byte	0x0
	.uleb128 0x2c
	.long	0x29f8
	.quad	.LBB151
	.quad	.LBE151
	.uleb128 0x26
	.long	0x2a06
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x29f8
	.long	.LASF237
	.byte	0x1
	.value	0x43e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x43b
	.long	0x1e3d
	.uleb128 0x2e
	.string	"ds"
	.byte	0x1
	.value	0x43b
	.long	0xc7b
	.uleb128 0x38
	.long	.LASF234
	.byte	0x1
	.value	0x43c
	.long	0x5a7
	.uleb128 0x38
	.long	.LASF235
	.byte	0x1
	.value	0x43c
	.long	0x38
	.uleb128 0x38
	.long	.LASF236
	.byte	0x1
	.value	0x43d
	.long	0x3f
	.uleb128 0x21
	.long	.LASF238
	.byte	0x1
	.value	0x43f
	.long	0x3f
	.byte	0x0
	.uleb128 0x2f
	.long	0x2a11
	.long	.LASF239
	.byte	0x1
	.value	0x373
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x372
	.long	0x1e3d
	.byte	0x0
	.uleb128 0x39
	.long	.LASF240
	.byte	0xc
	.byte	0x91
	.long	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF241
	.byte	0xc
	.byte	0x92
	.long	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF242
	.byte	0x10
	.value	0x376
	.long	0x5a7
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x2a49
	.long	0x6f
	.uleb128 0xd
	.long	0x61
	.byte	0x15
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF243
	.byte	0x1
	.byte	0xe6
	.long	0x2a39
	.byte	0x9
	.byte	0x3
	.quad	vmsvga_guest_id
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x22
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2a5f
	.long	0x28d3
	.string	"pci_vmsvga_init"
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
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB90-.Ltext0
	.quad	.LBE90-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	.LBB101-.Ltext0
	.quad	.LBE101-.Ltext0
	.quad	.LBB99-.Ltext0
	.quad	.LBE99-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB103-.Ltext0
	.quad	.LBE103-.Ltext0
	.quad	.LBB104-.Ltext0
	.quad	.LBE104-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB131-.Ltext0
	.quad	.LBE131-.Ltext0
	.quad	.LBB145-.Ltext0
	.quad	.LBE145-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB148-.Ltext0
	.quad	.LBE148-.Ltext0
	.quad	.LBB156-.Ltext0
	.quad	.LBE156-.Ltext0
	.quad	.LBB150-.Ltext0
	.quad	.LBE150-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF113:
	.string	"sr_index"
.LASF12:
	.string	"int32_t"
.LASF73:
	.string	"dpy_refresh"
.LASF201:
	.string	"vmsvga_update_rect_delayed"
.LASF25:
	.string	"_IO_save_end"
.LASF150:
	.string	"cursor_start"
.LASF166:
	.string	"vmsvga_state_s"
.LASF195:
	.string	"colour"
.LASF207:
	.string	"vmsvga_fill_rect"
.LASF243:
	.string	"vmsvga_guest_id"
.LASF18:
	.string	"_IO_write_base"
.LASF145:
	.string	"last_ch"
.LASF146:
	.string	"last_width"
.LASF175:
	.string	"new_width"
.LASF34:
	.string	"_lock"
.LASF192:
	.string	"hot_y"
.LASF103:
	.string	"VGAState"
.LASF23:
	.string	"_IO_save_base"
.LASF247:
	.string	"badcmd"
.LASF147:
	.string	"last_height"
.LASF31:
	.string	"_cur_column"
.LASF202:
	.string	"rect"
.LASF171:
	.string	"vram"
.LASF68:
	.string	"height"
.LASF41:
	.string	"_mode"
.LASF96:
	.string	"PCIConfigReadFunc"
.LASF161:
	.string	"last_ch_attr"
.LASF232:
	.string	"vmsvga_load"
.LASF144:
	.string	"last_cw"
.LASF151:
	.string	"cursor_end"
.LASF2:
	.string	"long int"
.LASF65:
	.string	"linesize"
.LASF228:
	.string	"vmsvga_save"
.LASF45:
	.string	"_IO_marker"
.LASF130:
	.string	"get_resolution"
.LASF61:
	.string	"netidx"
.LASF69:
	.string	"opaque"
.LASF74:
	.string	"dpy_copy"
.LASF4:
	.string	"short unsigned int"
.LASF153:
	.string	"rgb_to_pixel"
.LASF245:
	.string	"/home/remco/Projects/Argos/src/hw/vmware_vga.c"
.LASF203:
	.string	"vmsvga_cursor_define"
.LASF154:
	.string	"update"
.LASF89:
	.string	"irq_state"
.LASF117:
	.string	"cr_index"
.LASF118:
	.string	"st00"
.LASF172:
	.string	"index"
.LASF91:
	.string	"IRQState"
.LASF128:
	.string	"get_bpp"
.LASF160:
	.string	"last_palette"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF129:
	.string	"get_offsets"
.LASF124:
	.string	"dac_cache"
.LASF148:
	.string	"last_scr_width"
.LASF6:
	.string	"unsigned char"
.LASF62:
	.string	"argos_rtag_t"
.LASF59:
	.string	"argos_rtag"
.LASF181:
	.string	"wblue"
.LASF180:
	.string	"wgreen"
.LASF157:
	.string	"invalidated_y_table"
.LASF136:
	.string	"font_offsets"
.LASF83:
	.string	"devfn"
.LASF206:
	.string	"line"
.LASF43:
	.string	"_IO_lock_t"
.LASF78:
	.string	"QEMUFile"
.LASF173:
	.string	"scratch_size"
.LASF111:
	.string	"pci_dev"
.LASF120:
	.string	"dac_state"
.LASF82:
	.string	"config"
.LASF226:
	.string	"filename"
.LASF219:
	.string	"vmsvga_size"
.LASF132:
	.string	"vbe_regs"
.LASF57:
	.string	"argos_paddr_t"
.LASF142:
	.string	"start_addr"
.LASF191:
	.string	"hot_x"
.LASF15:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"double"
.LASF152:
	.string	"cursor_offset"
.LASF233:
	.string	"qemu_get_be32s"
.LASF184:
	.string	"redraw_fifo"
.LASF48:
	.string	"_pos"
.LASF240:
	.string	"stdin"
.LASF102:
	.string	"map_func"
.LASF224:
	.string	"vmsvga_invalidate_display"
.LASF81:
	.string	"PCIDevice"
.LASF95:
	.string	"PCIConfigWriteFunc"
.LASF26:
	.string	"_markers"
.LASF194:
	.string	"image"
.LASF213:
	.string	"caps"
.LASF204:
	.string	"vmsvga_copy_rect"
.LASF211:
	.string	"vmsvga_index_write"
.LASF63:
	.string	"DisplayState"
.LASF42:
	.string	"_unused2"
.LASF222:
	.string	"start"
.LASF214:
	.string	"vmsvga_value_write"
.LASF29:
	.string	"_flags2"
.LASF218:
	.string	"vmsvga_update_display"
.LASF17:
	.string	"_IO_read_base"
.LASF125:
	.string	"dac_8bit"
.LASF208:
	.string	"column"
.LASF30:
	.string	"_old_offset"
.LASF94:
	.string	"vga_hw_screen_dump_ptr"
.LASF196:
	.string	"args"
.LASF227:
	.string	"pci_vmsvga_save"
.LASF176:
	.string	"new_height"
.LASF231:
	.string	"version_id"
.LASF237:
	.string	"vmsvga_init"
.LASF3:
	.string	"long long int"
.LASF239:
	.string	"vmsvga_reset"
.LASF67:
	.string	"width"
.LASF169:
	.string	"enable"
.LASF215:
	.string	"value"
.LASF112:
	.string	"latch"
.LASF230:
	.string	"pci_vmsvga_load"
.LASF229:
	.string	"qemu_put_be32s"
.LASF138:
	.string	"shift_control"
.LASF20:
	.string	"_IO_write_end"
.LASF66:
	.string	"depth"
.LASF189:
	.string	"chip"
.LASF199:
	.string	"vmsvga_fifo_empty"
.LASF149:
	.string	"last_scr_height"
.LASF137:
	.string	"graphic_mode"
.LASF139:
	.string	"double_scan"
.LASF246:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF165:
	.string	"vmsvga_rect_s"
.LASF99:
	.string	"addr"
.LASF182:
	.string	"syncing"
.LASF21:
	.string	"_IO_buf_base"
.LASF193:
	.string	"mask"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF244:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF98:
	.string	"PCIIORegion"
.LASF209:
	.string	"vmsvga_index_read"
.LASF58:
	.string	"argos_netidx_t"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF47:
	.string	"_sbuf"
.LASF72:
	.string	"dpy_resize"
.LASF88:
	.string	"irq_index"
.LASF70:
	.string	"gui_timer"
.LASF225:
	.string	"vmsvga_screen_dump"
.LASF14:
	.string	"_flags"
.LASF64:
	.string	"data"
.LASF210:
	.string	"address"
.LASF197:
	.string	"__FUNCTION__"
.LASF162:
	.string	"next_cmd"
.LASF76:
	.string	"mouse_set"
.LASF164:
	.string	"fifo"
.LASF87:
	.string	"config_write"
.LASF86:
	.string	"config_read"
.LASF101:
	.string	"type"
.LASF114:
	.string	"gr_index"
.LASF53:
	.string	"target_phys_addr_t"
.LASF79:
	.string	"QEMUTimer"
.LASF56:
	.string	"long double"
.LASF140:
	.string	"line_offset"
.LASF235:
	.string	"vga_ram_offset"
.LASF109:
	.string	"base_ctrl"
.LASF133:
	.string	"vbe_start_addr"
.LASF35:
	.string	"_offset"
.LASF106:
	.string	"vram_size"
.LASF205:
	.string	"bypl"
.LASF168:
	.string	"bypp"
.LASF131:
	.string	"vbe_index"
.LASF100:
	.string	"size"
.LASF104:
	.string	"vram_ptr"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF50:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF122:
	.string	"dac_read_index"
.LASF248:
	.string	"pci_vmsvga_init"
.LASF198:
	.string	"vmsvga_fifo_run"
.LASF186:
	.string	"redraw_fifo_last"
.LASF241:
	.string	"stdout"
.LASF80:
	.string	"PCIBus"
.LASF121:
	.string	"dac_sub_index"
.LASF185:
	.string	"redraw_fifo_first"
.LASF221:
	.string	"vmsvga_update_rect"
.LASF135:
	.string	"vbe_bank_mask"
.LASF187:
	.string	"pci_vmsvga_state_s"
.LASF190:
	.string	"vmsvga_cursor_definition_s"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF143:
	.string	"plane_updated"
.LASF123:
	.string	"dac_write_index"
.LASF174:
	.string	"scratch"
.LASF11:
	.string	"__off64_t"
.LASF236:
	.string	"vga_ram_size"
.LASF163:
	.string	"stop"
.LASF141:
	.string	"line_compare"
.LASF183:
	.string	"fb_size"
.LASF22:
	.string	"_IO_buf_end"
.LASF127:
	.string	"bank_offset"
.LASF167:
	.string	"invalidated"
.LASF84:
	.string	"name"
.LASF107:
	.string	"bios_offset"
.LASF105:
	.string	"vram_offset"
.LASF116:
	.string	"ar_flip_flop"
.LASF8:
	.string	"short int"
.LASF52:
	.string	"uint64_t"
.LASF179:
	.string	"wred"
.LASF242:
	.string	"phys_ram_dirty"
.LASF32:
	.string	"_vtable_offset"
.LASF93:
	.string	"vga_hw_invalidate_ptr"
.LASF134:
	.string	"vbe_line_offset"
.LASF220:
	.string	"vmsvga_update_rect_flush"
.LASF92:
	.string	"vga_hw_update_ptr"
.LASF156:
	.string	"screen_dump"
.LASF108:
	.string	"bios_size"
.LASF71:
	.string	"dpy_update"
.LASF16:
	.string	"_IO_read_end"
.LASF212:
	.string	"vmsvga_value_read"
.LASF177:
	.string	"guest"
.LASF200:
	.string	"vmsvga_fifo_read"
.LASF85:
	.string	"io_regions"
.LASF188:
	.string	"card"
.LASF51:
	.string	"uint32_t"
.LASF158:
	.string	"cursor_invalidate"
.LASF223:
	.string	"vmsvga_update_screen"
.LASF110:
	.string	"it_shift"
.LASF28:
	.string	"_fileno"
.LASF216:
	.string	"vmsvga_bios_read"
.LASF115:
	.string	"ar_index"
.LASF178:
	.string	"svgaid"
.LASF97:
	.string	"PCIMapIORegionFunc"
.LASF77:
	.string	"cursor_define"
.LASF159:
	.string	"cursor_draw_line"
.LASF75:
	.string	"dpy_fill"
.LASF54:
	.string	"float"
.LASF119:
	.string	"st01"
.LASF19:
	.string	"_IO_write_ptr"
.LASF238:
	.string	"iomemtype"
.LASF126:
	.string	"palette"
.LASF60:
	.string	"origin"
.LASF234:
	.string	"vga_ram_base"
.LASF155:
	.string	"invalidate"
.LASF170:
	.string	"cursor"
.LASF217:
	.string	"vmsvga_bios_write"
.LASF90:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
