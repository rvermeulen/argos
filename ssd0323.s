	.file	"ssd0323.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"ssd0323: error: Unknown command: 0x%x\n"
	.text
	.p2align 4,,15
.globl ssd0323_xfer_ssi
	.type	ssd0323_xfer_ssi, @function
ssd0323_xfer_ssi:
.LFB110:
	.file 1 "/home/remco/Projects/Argos/src/hw/ssd0323.c"
	.loc 1 64 0
	pushq	%rbx
.LCFI0:
	.loc 1 66 0
	movl	80(%rdi), %eax
	.loc 1 64 0
	movq	%rdi, %rbx
	.loc 1 66 0
	testl	%eax, %eax
	je	.L12
	decl	%eax
	je	.L73
.L1:
	.loc 1 170 0
	popq	%rbx
	xorl	%eax, %eax
	ret
	.p2align 4,,7
.L12:
	.loc 1 93 0
	movl	8(%rdi), %edx
	testl	%edx, %edx
	.p2align 4,,4
	je	.L74
	.loc 1 96 0
	movslq	%edx,%rax
	.loc 1 98 0
	incl	%edx
	.loc 1 96 0
	movl	%esi, 12(%rdi,%rax,4)
	movl	12(%rdi), %eax
	.loc 1 99 0
	cmpl	$168, %eax
	je	.L67
.L76:
	jle	.L75
	cmpl	$184, %eax
	je	.L51
	.p2align 4,,9
	jg	.L62
	cmpl	$175, %eax
	.p2align 4,,7
	jg	.L63
	cmpl	$174, %eax
	.p2align 4,,7
	jge	.L53
	movl	%edx, 8(%rbx)
	cmpl	$173, %eax
.L71:
	.p2align 4,,3
	je	.L49
	.p2align 4,,7
.L56:
	.loc 1 164 0
	movq	stderr(%rip), %rdi
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	$.LC0, %esi
	call	fprintf
	jmp	.L15
	.p2align 4,,7
.L74:
	.loc 1 94 0
	movl	%esi, %eax
	.loc 1 98 0
	incl	%edx
	.loc 1 94 0
	movl	%esi, 12(%rdi)
	.loc 1 99 0
	cmpl	$168, %eax
	jne	.L76
.L67:
	movl	%edx, 8(%rbx)
.L49:
	.loc 1 150 0
	cmpl	$1, 8(%rbx)
	jle	.L1
.L15:
	.loc 1 166 0
	movl	$0, 8(%rbx)
	.loc 1 170 0
	xorl	%eax, %eax
	popq	%rbx
	ret
	.p2align 4,,7
.L75:
	.loc 1 99 0
	cmpl	$134, %eax
	jg	.L59
	cmpl	$132, %eax
	.p2align 4,,3
	jge	.L53
	cmpl	$117, %eax
	.p2align 4,,5
	je	.L20
	.p2align 4,,7
	jg	.L60
	cmpl	$21, %eax
	.p2align 4,,7
	je	.L16
.L68:
	movl	%edx, 8(%rbx)
	.p2align 4,,7
	jmp	.L56
	.p2align 4,,7
.L73:
	.loc 1 69 0
	movl	48(%rdi), %ecx
	movl	60(%rdi), %edx
	movl	%ecx, %eax
	sall	$6, %eax
	.loc 1 70 0
	testb	$4, 76(%rdi)
	.loc 1 69 0
	leal	(%rdx,%rax), %eax
	cltq
	movb	%sil, 84(%rax,%rdi)
	.loc 1 70 0
	je	.L5
	.loc 1 71 0
	incl	%ecx
	.loc 1 72 0
	cmpl	56(%rdi), %ecx
	jg	.L77
	movl	%ecx, 48(%rdi)
.L6:
	.loc 1 76 0
	cmpl	68(%rbx), %edx
	jle	.L8
	.loc 1 77 0
	movl	64(%rbx), %edx
	movl	%edx, 60(%rbx)
	jmp	.L8
.L59:
	.loc 1 99 0
	cmpl	$162, %eax
	jg	.L61
	cmpl	$161, %eax
	.p2align 4,,3
	jge	.L31
	cmpl	$160, %eax
	.p2align 4,,5
	jne	.L68
	.loc 1 119 0
	cmpl	$1, %edx
	.p2align 4,,5
	jle	.L69
	.loc 1 120 0
	movl	16(%rbx), %eax
	movl	%eax, 76(%rbx)
	.p2align 4,,3
	jmp	.L15
	.p2align 4,,7
.L5:
	.loc 1 80 0
	incl	%edx
	.loc 1 81 0
	cmpl	68(%rdi), %edx
	.p2align 4,,2
	jg	.L78
.L66:
	.loc 1 85 0
	cmpl	56(%rbx), %ecx
	movl	%edx, 60(%rbx)
	jle	.L8
	.loc 1 86 0
	movl	52(%rbx), %ecx
	movl	%ecx, 48(%rbx)
	.p2align 4,,7
.L8:
	.loc 1 89 0
	movl	$1, 72(%rbx)
	.loc 1 170 0
	xorl	%eax, %eax
	popq	%rbx
	ret
.L62:
	.loc 1 99 0
	cmpl	$191, %eax
	jg	.L64
	cmpl	$190, %eax
	movl	%edx, 8(%rbx)
	jge	.L49
	cmpl	$188, %eax
	.p2align 4,,3
	jmp	.L71
.L51:
	.loc 1 155 0
	cmpl	$8, %edx
.L70:
	.p2align 4,,3
	jg	.L15
.L69:
	movl	%edx, 8(%rbx)
.L79:
	.loc 1 170 0
	popq	%rbx
	xorl	%eax, %eax
	.p2align 4,,2
	ret
.L53:
	.loc 1 158 0
	testl	%edx, %edx
	.p2align 4,,3
	jg	.L15
	movl	%edx, 8(%rbx)
	.p2align 4,,3
	jmp	.L79
.L61:
	.loc 1 99 0
	cmpl	$164, %eax
	movl	%edx, 8(%rbx)
	.p2align 4,,3
	jl	.L56
	.loc 1 132 0
	movl	8(%rbx), %eax
	testl	%eax, %eax
	jg	.L15
	.loc 1 170 0
	popq	%rbx
	xorl	%eax, %eax
	ret
.L78:
	.loc 1 83 0
	movl	64(%rdi), %edx
	.loc 1 82 0
	incl	%ecx
	movl	%ecx, 48(%rdi)
	jmp	.L66
.L77:
	.loc 1 73 0
	movl	52(%rdi), %ecx
	.loc 1 74 0
	incl	%edx
	movl	%edx, 60(%rdi)
	.loc 1 73 0
	movl	%ecx, 48(%rdi)
	jmp	.L6
.L63:
	.loc 1 99 0
	subl	$177, %eax
	movl	%edx, 8(%rbx)
	cmpl	$2, %eax
	ja	.L56
	jmp	.L49
.L64:
	cmpl	$227, %eax
	.p2align 4,,3
	je	.L53
	cmpl	$255, %eax
	.p2align 4,,7
	je	.L15
	movl	%edx, 8(%rbx)
	.p2align 4,,5
	jmp	.L56
.L16:
	.loc 1 102 0
	cmpl	$2, %edx
	.p2align 4,,5
	jle	.L69
	.loc 1 103 0
	movl	16(%rbx), %eax
	leal	63(%rax), %edx
	cmpl	$-1, %eax
	cmovg	%eax, %edx
	andl	$-64, %edx
	subl	%edx, %eax
	.loc 1 104 0
	movl	20(%rbx), %edx
	.loc 1 103 0
	movl	%eax, 64(%rbx)
	movl	%eax, 60(%rbx)
	.loc 1 104 0
	leal	63(%rdx), %eax
	cmpl	$-1, %edx
	cmovg	%edx, %eax
	andl	$-64, %eax
	subl	%eax, %edx
	movl	%edx, 68(%rbx)
	jmp	.L15
.L60:
	.loc 1 99 0
	cmpl	$129, %eax
	jne	.L68
.L31:
	.loc 1 125 0
	cmpl	$1, %edx
	jmp	.L70
.L20:
	.loc 1 107 0
	cmpl	$2, %edx
	.p2align 4,,5
	jle	.L69
	.loc 1 108 0
	movl	16(%rbx), %ecx
	movslq	%ecx,%rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$5, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	$80, %esi
	imull	%esi, %eax
	subl	%eax, %ecx
	movl	%ecx, 52(%rbx)
	movl	%ecx, 48(%rbx)
	.loc 1 109 0
	movl	20(%rbx), %ecx
	movslq	%ecx,%rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$5, %esi
	subl	%edx, %esi
	movl	$80, %edx
	movl	%esi, %eax
	imull	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, 56(%rbx)
	jmp	.L15
.LFE110:
	.size	ssd0323_xfer_ssi, .-ssd0323_xfer_ssi
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"ssd0323: error: Bad color depth\n"
	.text
	.p2align 4,,15
	.type	ssd0323_update_display, @function
ssd0323_update_display:
.LFB111:
	.loc 1 173 0
	pushq	%r15
.LCFI1:
	pushq	%r14
.LCFI2:
	pushq	%r13
.LCFI3:
	pushq	%r12
.LCFI4:
	pushq	%rbp
.LCFI5:
	pushq	%rbx
.LCFI6:
	subq	$424, %rsp
.LCFI7:
	.loc 1 173 0
	movq	%rdi, 24(%rsp)
	.loc 1 186 0
	movl	72(%rdi), %r8d
	testl	%r8d, %r8d
	je	.L81
	.loc 1 187 0
	movq	(%rdi), %rsi
	movl	12(%rsi), %eax
	cmpl	$32, %eax
	ja	.L99
	mov	%eax, %eax
	jmp	*.L90(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L90:
	.quad	.L80
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L85
	.quad	.L85
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L86
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L99
	.quad	.L87
	.text
.L136:
	sall	$9, %edi
	.loc 1 233 0
	movq	(%rsi), %rbx
	.loc 1 234 0
	movl	$0, 20(%rsp)
	movslq	%edi,%rdi
	movq	%rdi, 8(%rsp)
.L122:
	.loc 1 236 0
	movl	20(%rsp), %eax
	movq	24(%rsp), %rdx
	.loc 1 237 0
	xorl	%r15d, %r15d
	.loc 1 236 0
	sall	$6, %eax
	cltq
	leaq	84(%rax,%rdx), %r14
	.p2align 4,,7
.L117:
.LBB2:
	.loc 1 239 0
	movzbl	(%r14), %eax
	movl	$15, %ebp
	movl	$3, %r12d
	shrb	$4, %al
	andq	%rax, %rbp
	.p2align 4,,7
.L112:
	.loc 1 241 0
	movq	288(%rsp,%rbp,8), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	.loc 1 242 0
	addq	%r13, %rbx
	.loc 1 241 0
	call	memcpy
	decl	%r12d
	jns	.L112
	.loc 1 244 0
	movzbl	(%r14), %eax
	movl	$3, %r12d
	movq	%rax, %rbp
	andl	$15, %ebp
	.p2align 4,,7
.L116:
	.loc 1 246 0
	movq	288(%rsp,%rbp,8), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	.loc 1 247 0
	addq	%r13, %rbx
	.loc 1 246 0
	call	memcpy
	decl	%r12d
	jns	.L116
.LBE2:
	.loc 1 237 0
	incl	%r15d
.LBB3:
	.loc 1 249 0
	incq	%r14
.LBE3:
	.loc 1 237 0
	cmpl	$63, %r15d
	jle	.L117
	movl	$2, %r12d
.L121:
	.loc 1 252 0
	movq	%rbx, %rsi
	subq	8(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	%rbx, %rdi
	call	memcpy
	.loc 1 254 0
	addq	8(%rsp), %rbx
	decl	%r12d
	jns	.L121
	.loc 1 234 0
	incl	20(%rsp)
	cmpl	$63, 20(%rsp)
	jle	.L122
.L81:
.LBB4:
	.file 2 "./console.h"
	.loc 2 88 0
	movq	24(%rsp), %rdx
.LBB5:
	.loc 2 89 0
	movl	$256, %r8d
	movl	$512, %ecx
	xorl	%esi, %esi
.LBE5:
	.loc 2 88 0
	movq	(%rdx), %rax
.LBB6:
	.loc 2 89 0
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	*48(%rax)
.L80:
.LBE6:
.LBE4:
	.loc 1 259 0
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L99:
.LBB7:
	.loc 1 227 0
	movq	stderr(%rip), %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	jmp	.L80
.L87:
.LBE7:
	.loc 1 200 0
	movl	$4, %edi
.L82:
	.loc 1 206 0
	leaq	32(%rsp), %r8
	.loc 1 207 0
	xorl	%r12d, %r12d
	movslq	%edi,%r13
	jmp	.L102
.L137:
.LBB8:
	.loc 1 210 0
	cmpl	$15, %eax
	jne	.L99
	.loc 1 212 0
	movl	%r12d, %eax
	sarl	$3, %eax
	leal	(%rax,%r12,2), %ecx
	.loc 1 213 0
	movl	%ecx, %eax
	sall	$5, %eax
	orl	%ecx, %eax
	movb	%al, (%r8)
	.loc 1 214 0
	leal	0(,%rcx,4), %eax
	sarl	$3, %ecx
.L135:
	.loc 1 219 0
	orl	%ecx, %eax
	movb	%al, 1(%r8)
.L94:
.LBE8:
	.loc 1 207 0
	incl	%r12d
.LBB9:
	.loc 1 230 0
	addq	%r13, %r8
.LBE9:
	.loc 1 207 0
	cmpl	$15, %r12d
	jg	.L136
.L102:
.LBB10:
	.loc 1 209 0
	movslq	%r12d,%rax
	movq	%r8, 288(%rsp,%rax,8)
	.loc 1 210 0
	movl	12(%rsi), %eax
	cmpl	$16, %eax
	je	.L96
	jle	.L137
	cmpl	$24, %eax
	je	.L98
	cmpl	$32, %eax
	.p2align 4,,7
	jne	.L99
.L98:
	.loc 1 223 0
	movl	%r12d, %ecx
	sall	$4, %ecx
	orl	%r12d, %ecx
	.loc 1 224 0
	movb	%cl, 2(%r8)
	movb	%cl, 1(%r8)
	movb	%cl, (%r8)
	jmp	.L94
.L96:
	.loc 1 217 0
	movl	%r12d, %eax
	sarl	$3, %eax
	leal	(%rax,%r12,2), %ecx
	.loc 1 218 0
	movl	%ecx, %edx
	leal	(%rcx,%rcx), %eax
	sall	$6, %edx
	orl	%ecx, %edx
	andl	$32, %eax
	orl	%eax, %edx
	.loc 1 219 0
	leal	0(,%rcx,8), %eax
	sarl	$2, %ecx
	.loc 1 218 0
	movb	%dl, (%r8)
	jmp	.L135
.L86:
.LBE10:
	.loc 1 197 0
	movl	$3, %edi
	jmp	.L82
.L85:
	.loc 1 194 0
	movl	$2, %edi
	jmp	.L82
.LFE111:
	.size	ssd0323_update_display, .-ssd0323_update_display
	.p2align 4,,15
	.type	ssd0323_invalidate_display, @function
ssd0323_invalidate_display:
.LFB112:
	.loc 1 262 0
	.loc 1 264 0
	movl	$1, 72(%rdi)
	ret
.LFE112:
	.size	ssd0323_invalidate_display, .-ssd0323_invalidate_display
	.p2align 4,,15
	.type	ssd0323_cd, @function
ssd0323_cd:
.LFB113:
	.loc 1 269 0
	.loc 1 272 0
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	movl	%eax, 80(%rdi)
	ret
.LFE113:
	.size	ssd0323_cd, .-ssd0323_cd
	.p2align 4,,15
.globl ssd0323_init
	.type	ssd0323_init, @function
ssd0323_init:
.LFB114:
	.loc 1 276 0
	movq	%rbx, -24(%rsp)
.LCFI8:
	movq	%r12, -16(%rsp)
.LCFI9:
	movq	%rdi, %r12
	movq	%r13, -8(%rsp)
.LCFI10:
	.loc 1 280 0
	movl	$5208, %edi
	.loc 1 276 0
	subq	$24, %rsp
.LCFI11:
	.loc 1 276 0
	movq	%rsi, %r13
	.loc 1 280 0
	call	qemu_mallocz
	.loc 1 282 0
	xorl	%ecx, %ecx
	.loc 1 280 0
	movq	%rax, %rbx
	.loc 1 282 0
	movq	%rax, %r8
	movq	%r12, %rdi
	.loc 1 281 0
	movq	%r12, (%rax)
	.loc 1 282 0
	movl	$ssd0323_invalidate_display, %edx
	movl	$ssd0323_update_display, %esi
	call	graphic_console_init
.LBB11:
	.loc 2 93 0
	movq	(%rbx), %rax
.LBB12:
	.loc 2 94 0
	movl	$256, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	*56(%rax)
.LBE12:
.LBE11:
	.loc 1 285 0
	movl	$63, 68(%rbx)
	.loc 1 286 0
	movl	$79, 56(%rbx)
	.loc 1 288 0
	movq	%rbx, %rsi
	movl	$1, %edx
	movl	$ssd0323_cd, %edi
	call	qemu_allocate_irqs
	.loc 1 289 0
	movq	(%rax), %rax
	.loc 1 292 0
	movq	8(%rsp), %r12
	.loc 1 289 0
	movq	%rax, (%r13)
	.loc 1 292 0
	movq	%rbx, %rax
	movq	16(%rsp), %r13
	movq	(%rsp), %rbx
	addq	$24, %rsp
	ret
.LFE114:
	.size	ssd0323_init, .-ssd0323_init
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI0-.LFB110
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x1e0
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
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI9-.LFB114
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
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
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI0-.LFB110
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
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x1e0
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
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI9-.LFB114
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE9:
	.file 3 "./qemu-common.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x93d
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF96
	.byte	0x1
	.long	.LASF97
	.long	.LASF98
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
	.long	0x276
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
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
	.long	0x27d
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x2d0
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xb
	.long	0x2e6
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x4
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x6f
	.long	0x307
	.uleb128 0x7
	.long	0x3e6
	.long	.LASF50
	.byte	0x68
	.byte	0x3
	.byte	0x6f
	.uleb128 0xa
	.long	.LASF51
	.byte	0x2
	.byte	0x42
	.long	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x2
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF53
	.byte	0x2
	.byte	0x44
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"bgr"
	.byte	0x2
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF54
	.byte	0x2
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF55
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF56
	.byte	0x2
	.byte	0x48
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF57
	.byte	0x2
	.byte	0x49
	.long	0x409
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF58
	.byte	0x2
	.byte	0x4b
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF59
	.byte	0x2
	.byte	0x4c
	.long	0x451
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF60
	.byte	0x2
	.byte	0x4d
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF61
	.byte	0x2
	.byte	0x4f
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF62
	.byte	0x2
	.byte	0x51
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF63
	.byte	0x2
	.byte	0x52
	.long	0x4da
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF64
	.byte	0x2
	.byte	0x54
	.long	0x50a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0xe
	.long	.LASF66
	.byte	0x1
	.uleb128 0x2
	.long	.LASF65
	.byte	0x3
	.byte	0x7b
	.long	0x3f7
	.uleb128 0x6
	.byte	0x8
	.long	0x3fd
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x6
	.byte	0x8
	.long	0x3e6
	.uleb128 0xf
	.long	0x42f
	.byte	0x1
	.uleb128 0x10
	.long	0x42f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x40f
	.uleb128 0xf
	.long	0x451
	.byte	0x1
	.uleb128 0x10
	.long	0x42f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x43b
	.uleb128 0xf
	.long	0x463
	.byte	0x1
	.uleb128 0x10
	.long	0x42f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x457
	.uleb128 0xf
	.long	0x493
	.byte	0x1
	.uleb128 0x10
	.long	0x42f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x469
	.uleb128 0xf
	.long	0x4be
	.byte	0x1
	.uleb128 0x10
	.long	0x42f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x2f1
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x499
	.uleb128 0xf
	.long	0x4da
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c4
	.uleb128 0xf
	.long	0x50a
	.byte	0x1
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x403
	.uleb128 0x10
	.long	0x403
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4e0
	.uleb128 0x11
	.long	0x529
	.long	.LASF99
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.uleb128 0x12
	.long	.LASF68
	.sleb128 0
	.uleb128 0x12
	.long	.LASF69
	.sleb128 1
	.byte	0x0
	.uleb128 0x13
	.long	0x5f6
	.value	0x1458
	.byte	0x1
	.byte	0x3d
	.uleb128 0xd
	.string	"ds"
	.byte	0x1
	.byte	0x2e
	.long	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cmd"
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x32
	.long	0x5fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"row"
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"col"
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x37
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.byte	0x3b
	.long	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.byte	0x3c
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0xb
	.long	0x60c
	.long	0x3f
	.uleb128 0xc
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.long	0x61d
	.long	0x2e6
	.uleb128 0x14
	.long	0x5b
	.value	0x13ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x1
	.byte	0x3d
	.long	0x529
	.uleb128 0x15
	.long	0x66f
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x3f
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x41
	.long	0x66f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x18
	.long	0x784
	.long	.LASF86
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0xac
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0x66f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.byte	0xaf
	.long	0x403
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0xb0
	.long	0x403
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0xb1
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.byte	0xb4
	.long	0x3f
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.byte	0xb5
	.long	0x784
	.byte	0x3
	.byte	0x91
	.sleb128 288
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.byte	0xb6
	.long	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0xb7
	.long	0x9d
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0xb8
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	0x73d
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0xee
	.long	0x3f
	.byte	0x0
	.uleb128 0x1d
	.long	0x772
	.long	0x7a4
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1e
	.long	0x7b1
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	0x7ba
	.uleb128 0x1f
	.long	0x7c3
	.uleb128 0x1f
	.long	0x7cc
	.uleb128 0x1f
	.long	0x7d5
	.byte	0x0
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xd0
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x794
	.long	0x9d
	.uleb128 0xc
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	0x7a4
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.long	0x7df
	.long	.LASF58
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.byte	0x57
	.long	0x5f6
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x22
	.string	"y"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x22
	.string	"w"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.uleb128 0x22
	.string	"h"
	.byte	0x2
	.byte	0x57
	.long	0x3f
	.byte	0x0
	.uleb128 0x23
	.long	0x817
	.long	.LASF87
	.byte	0x1
	.value	0x106
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x105
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x107
	.long	0x66f
	.byte	0x0
	.uleb128 0x23
	.long	0x869
	.long	.LASF88
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x10c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF89
	.byte	0x1
	.value	0x10c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x10e
	.long	0x66f
	.byte	0x0
	.uleb128 0x27
	.long	0x8ea
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.value	0x114
	.byte	0x1
	.long	0x9b
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"ds"
	.byte	0x1
	.value	0x113
	.long	0x5f6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.value	0x113
	.long	0x8ea
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x115
	.long	0x66f
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"cmd"
	.byte	0x1
	.value	0x116
	.long	0x8ea
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	0x8f0
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x1e
	.long	0x8fd
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	0x906
	.uleb128 0x1f
	.long	0x90f
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ec
	.uleb128 0x21
	.long	0x919
	.long	.LASF59
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.byte	0x5c
	.long	0x5f6
	.uleb128 0x22
	.string	"w"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.uleb128 0x22
	.string	"h"
	.byte	0x2
	.byte	0x5c
	.long	0x3f
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x5
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x5
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF95
	.byte	0x5
	.byte	0x93
	.long	0x2ba
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.long	0x941
	.long	0x628
	.string	"ssd0323_xfer_ssi"
	.long	0x869
	.string	"ssd0323_init"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF60:
	.string	"dpy_refresh"
.LASF24:
	.string	"_IO_save_end"
.LASF63:
	.string	"mouse_set"
.LASF62:
	.string	"dpy_fill"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF88:
	.string	"ssd0323_cd"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"linesize"
.LASF69:
	.string	"SSD0323_DATA"
.LASF44:
	.string	"_IO_marker"
.LASF56:
	.string	"opaque"
.LASF91:
	.string	"ssd0323_init"
.LASF57:
	.string	"gui_timer"
.LASF78:
	.string	"mode"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF92:
	.string	"cmd_p"
.LASF83:
	.string	"colors"
.LASF72:
	.string	"row_start"
.LASF68:
	.string	"SSD0323_CMD"
.LASF99:
	.string	"ssd0323_mode"
.LASF5:
	.string	"char"
.LASF82:
	.string	"line"
.LASF84:
	.string	"colortab"
.LASF42:
	.string	"_IO_lock_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF93:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF86:
	.string	"ssd0323_update_display"
.LASF97:
	.string	"/home/remco/Projects/Argos/src/hw/ssd0323.c"
.LASF50:
	.string	"DisplayState"
.LASF70:
	.string	"cmd_len"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF41:
	.string	"_unused2"
.LASF77:
	.string	"remap"
.LASF29:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF54:
	.string	"width"
.LASF67:
	.string	"IRQState"
.LASF79:
	.string	"framebuffer"
.LASF19:
	.string	"_IO_write_end"
.LASF53:
	.string	"depth"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF96:
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
.LASF75:
	.string	"col_end"
.LASF76:
	.string	"redraw"
.LASF85:
	.string	"dest_width"
.LASF13:
	.string	"_flags"
.LASF80:
	.string	"ssd0323_state"
.LASF66:
	.string	"QEMUTimer"
.LASF34:
	.string	"_offset"
.LASF90:
	.string	"ssd0323_xfer_ssi"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF81:
	.string	"dest"
.LASF11:
	.string	"__off64_t"
.LASF98:
	.string	"/home/remco/Projects/Argos/src"
.LASF21:
	.string	"_IO_buf_end"
.LASF59:
	.string	"dpy_resize"
.LASF87:
	.string	"ssd0323_invalidate_display"
.LASF64:
	.string	"cursor_define"
.LASF95:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF74:
	.string	"col_start"
.LASF31:
	.string	"_vtable_offset"
.LASF71:
	.string	"cmd_data"
.LASF7:
	.string	"signed char"
.LASF58:
	.string	"dpy_update"
.LASF15:
	.string	"_IO_read_end"
.LASF61:
	.string	"dpy_copy"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF89:
	.string	"level"
.LASF4:
	.string	"short unsigned int"
.LASF94:
	.string	"stdout"
.LASF18:
	.string	"_IO_write_ptr"
.LASF73:
	.string	"row_end"
.LASF51:
	.string	"data"
.LASF55:
	.string	"height"
.LASF65:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
