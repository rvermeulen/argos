	.file	"ssd0303.c"
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
	.string	"ssd0303: error: Reads not implemented\n"
	.text
	.p2align 4,,15
	.type	ssd0303_recv, @function
ssd0303_recv:
.LFB110:
	.file 1 "/home/remco/Projects/Argos/src/hw/ssd0303.c"
	.loc 1 62 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 63 0
	movq	stderr(%rip), %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	.loc 1 65 0
	movl	$-1, %eax
	addq	$8, %rsp
	ret
.LFE110:
	.size	ssd0303_recv, .-ssd0303_recv
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"ssd0303: error: Unexpected byte 0x%x\n"
	.align 8
.LC2:
	.string	"ssd0303: error: Unknown command: 0x%x\n"
	.text
	.p2align 4,,15
	.type	ssd0303_send, @function
ssd0303_send:
.LFB111:
	.loc 1 68 0
	subq	$8, %rsp
.LCFI1:
	.loc 1 71 0
	movl	80(%rdi), %eax
	.loc 1 68 0
	movl	%esi, %ecx
	.loc 1 71 0
	cmpl	$1, %eax
	je	.L13
	jb	.L6
	cmpl	$2, %eax
	je	.L15
.L4:
	.loc 1 175 0
	xorl	%eax, %eax
	addq	$8, %rsp
	.p2align 4,,5
	ret
	.p2align 4,,7
.L6:
	.loc 1 74 0
	cmpb	$-128, %sil
	.p2align 4,,4
	je	.L52
	.loc 1 76 0
	cmpb	$64, %cl
	.loc 1 79 0
	movzbl	%sil, %edx
	movl	$.LC1, %esi
	.loc 1 76 0
	je	.L53
.L50:
	.loc 1 165 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 175 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L13:
	.loc 1 83 0
	movl	52(%rdi), %edx
	cmpl	$131, %edx
	jg	.L4
	.loc 1 84 0
	movl	48(%rdi), %ecx
	.loc 1 86 0
	movl	$1, 76(%rdi)
	.loc 1 84 0
	imull	$132, %ecx, %eax
	leal	(%rdx,%rax), %eax
	cltq
	movb	%sil, 88(%rax,%rdi)
	.loc 1 85 0
	leal	1(%rdx), %eax
	movl	%eax, 52(%rdi)
	.loc 1 175 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L53:
	.loc 1 77 0
	movl	$1, 80(%rdi)
	.loc 1 175 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L15:
	.loc 1 92 0
	movl	84(%rdi), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 96 0
	movzbl	%sil, %eax
	.loc 1 95 0
	movl	$0, 80(%rdi)
	.loc 1 96 0
	cmpl	$227, %eax
	ja	.L43
	mov	%eax, %eax
	jmp	*.L45(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L45:
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
	.quad	.L20
	.quad	.L20
	.quad	.L20
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L21
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L22
	.quad	.L43
	.quad	.L41
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L24
	.quad	.L25
	.quad	.L43
	.quad	.L43
	.quad	.L26
	.quad	.L27
	.quad	.L28
	.quad	.L29
	.quad	.L41
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L41
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L41
	.quad	.L43
	.quad	.L41
	.quad	.L43
	.quad	.L43
	.quad	.L41
	.quad	.L41
	.quad	.L41
	.quad	.L41
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L43
	.quad	.L49
	.text
	.p2align 4,,7
.L52:
	.loc 1 75 0
	movl	$2, 80(%rdi)
	.loc 1 175 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.L49:
	movl	$0, 84(%rdi)
	.p2align 4,,2
	jmp	.L4
.L43:
	.loc 1 165 0
	movzbl	%cl, %edx
	movl	$.LC2, %esi
	movl	$0, 84(%rdi)
	jmp	.L50
.L41:
	.loc 1 160 0
	movl	$1, 84(%rdi)
	jmp	.L4
.L34:
	.loc 1 140 0
	movl	%ecx, %eax
	movl	$0, 84(%rdi)
	andl	$7, %eax
	movl	%eax, 48(%rdi)
	jmp	.L4
.L33:
	movl	$0, 84(%rdi)
	.loc 1 137 0
	movl	$1, 68(%rdi)
	jmp	.L4
.L32:
	movl	$0, 84(%rdi)
	.loc 1 134 0
	movl	$0, 68(%rdi)
	jmp	.L4
.L29:
	movl	$0, 84(%rdi)
	.loc 1 125 0
	movl	$1, 72(%rdi)
	jmp	.L4
.L28:
	movl	$0, 84(%rdi)
	.loc 1 122 0
	movl	$0, 72(%rdi)
	jmp	.L4
.L27:
	movl	$0, 84(%rdi)
	.loc 1 119 0
	movl	$1, 64(%rdi)
	jmp	.L4
.L26:
	movl	$0, 84(%rdi)
	.loc 1 116 0
	movl	$0, 64(%rdi)
	jmp	.L4
.L25:
	movl	$0, 84(%rdi)
	.loc 1 113 0
	movl	$1, 60(%rdi)
	jmp	.L4
.L24:
	movl	$0, 84(%rdi)
	.loc 1 110 0
	movl	$0, 60(%rdi)
	jmp	.L4
.L22:
	movl	$0, 84(%rdi)
	.loc 1 104 0
	movl	$0, 56(%rdi)
	jmp	.L4
.L21:
	.loc 1 101 0
	movl	52(%rdi), %edx
	movl	%ecx, %eax
	movl	$0, 84(%rdi)
	andl	$15, %eax
	sall	$4, %eax
	andl	$15, %edx
	orl	%eax, %edx
	movl	%edx, 52(%rdi)
	jmp	.L4
.L20:
	.loc 1 98 0
	movl	52(%rdi), %eax
	movl	%ecx, %edx
	movl	$0, 84(%rdi)
	andl	$15, %edx
	andl	$240, %eax
	orl	%edx, %eax
	movl	%eax, 52(%rdi)
	jmp	.L4
.LFE111:
	.size	ssd0303_send, .-ssd0303_send
	.p2align 4,,15
	.type	ssd0303_event, @function
ssd0303_event:
.LFB112:
	.loc 1 178 0
	.loc 1 180 0
	cmpl	$2, %esi
	je	.L60
	rep ; ret
	.p2align 4,,7
.L60:
	.loc 1 182 0
	movl	$0, 80(%rdi)
	ret
.LFE112:
	.size	ssd0303_event, .-ssd0303_event
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"ssd0303: error: Bad color depth\n"
	.text
	.p2align 4,,15
	.type	ssd0303_update_display, @function
ssd0303_update_display:
.LFB113:
	.loc 1 193 0
	pushq	%r15
.LCFI2:
	pushq	%r14
.LCFI3:
	pushq	%r13
.LCFI4:
	pushq	%r12
.LCFI5:
	pushq	%rbp
.LCFI6:
	pushq	%rbx
.LCFI7:
	subq	$72, %rsp
.LCFI8:
	.loc 1 193 0
	movq	%rdi, 8(%rsp)
	.loc 1 205 0
	movl	76(%rdi), %r9d
	testl	%r9d, %r9d
	je	.L62
	.loc 1 206 0
	movq	40(%rdi), %rax
	movl	12(%rax), %eax
	cmpl	$32, %eax
	ja	.L69
	mov	%eax, %eax
	jmp	*.L71(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L71:
	.quad	.L61
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L66
	.quad	.L66
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L67
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L69
	.quad	.L68
	.text
.L66:
	.loc 1 213 0
	movl	$2, %eax
.L63:
	.loc 1 225 0
	leal	0(,%rax,4), %r12d
	.loc 1 226 0
	leaq	16(%rsp), %rbp
	movl	$255, %esi
	movslq	%r12d,%r14
	movq	%rbp, %rdi
	.loc 1 227 0
	leaq	(%rbp,%r14), %rbx
	.loc 1 226 0
	movq	%r14, %rdx
	call	memset
	.loc 1 227 0
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rdi
	call	memset
	.loc 1 228 0
	movq	8(%rsp), %rax
	movl	64(%rax), %r8d
	testl	%r8d, %r8d
	je	.L72
	.loc 1 229 0
	movq	%rbp, 48(%rsp)
.L96:
	.loc 1 236 0
	movq	%rbp, 56(%rsp)
.L73:
	.loc 1 238 0
	movq	8(%rsp), %rdx
	movl	$96, %esi
	movq	40(%rdx), %rax
	movq	(%rax), %rbp
	movl	%r12d, %eax
	.loc 1 239 0
	movl	$0, 4(%rsp)
	imull	%esi, %eax
	movslq	%eax,%r15
.L89:
	.loc 1 240 0
	movq	8(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	$95, %r12d
	.loc 1 241 0
	movq	8(%rsp), %rdx
	.loc 1 240 0
	addl	56(%rax), %ecx
	movl	%ecx, %eax
	.loc 1 242 0
	andl	$7, %ecx
	.loc 1 240 0
	andl	$63, %eax
	.loc 1 241 0
	sarl	$3, %eax
	imull	$132, %eax, %eax
	cltq
	leaq	124(%rax,%rdx), %rbx
	.loc 1 242 0
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %r13d
	.p2align 4,,7
.L84:
	.loc 1 244 0
	movzbl	(%rbx), %eax
	movq	%rbp, %rdi
	movq	%r14, %rdx
	andl	%r13d, %eax
	cmpb	$1, %al
	sbbq	%rax, %rax
	.loc 1 245 0
	addq	%r14, %rbp
	.loc 1 246 0
	incq	%rbx
	.loc 1 244 0
	notq	%rax
	andl	$8, %eax
	movq	48(%rsp,%rax), %rsi
	call	memcpy
	decl	%r12d
	jns	.L84
	movl	$2, %r12d
.L88:
	.loc 1 249 0
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	subq	%r15, %rsi
	.loc 1 250 0
	addq	%r15, %rbp
	.loc 1 249 0
	call	memcpy
	decl	%r12d
	jns	.L88
	.loc 1 239 0
	incl	4(%rsp)
	cmpl	$15, 4(%rsp)
	jle	.L89
.L62:
.LBB2:
	.file 2 "./console.h"
	.loc 2 88 0
	movq	8(%rsp), %rdx
.LBB3:
	.loc 2 89 0
	movl	$64, %r8d
	movl	$384, %ecx
	xorl	%esi, %esi
.LBE3:
	.loc 2 88 0
	movq	40(%rdx), %rax
.LBB4:
	.loc 2 89 0
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	*48(%rax)
.L61:
.LBE4:
.LBE2:
	.loc 1 255 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L69:
	.loc 1 222 0
	movq	stderr(%rip), %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	.loc 1 255 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L67:
	.loc 1 216 0
	movl	$3, %eax
	jmp	.L63
.L68:
	.loc 1 219 0
	movl	$4, %eax
	jmp	.L63
.L72:
	.loc 1 231 0
	movq	8(%rsp), %rdx
	movl	72(%rdx), %edi
	testl	%edi, %edi
	je	.L74
	.loc 1 232 0
	movq	%rbp, 48(%rsp)
	.loc 1 233 0
	movq	%rbx, 56(%rsp)
	jmp	.L73
.L74:
	.loc 1 235 0
	movq	%rbx, 48(%rsp)
	jmp	.L96
.LFE113:
	.size	ssd0303_update_display, .-ssd0303_update_display
	.p2align 4,,15
	.type	ssd0303_invalidate_display, @function
ssd0303_invalidate_display:
.LFB114:
	.loc 1 258 0
	.loc 1 260 0
	movl	$1, 76(%rdi)
	ret
.LFE114:
	.size	ssd0303_invalidate_display, .-ssd0303_invalidate_display
	.p2align 4,,15
.globl ssd0303_init
	.type	ssd0303_init, @function
ssd0303_init:
.LFB115:
	.loc 1 264 0
	pushq	%r12
.LCFI9:
	movq	%rdi, %r12
	movq	%rsi, %rdi
	movl	%edx, %esi
	.loc 1 267 0
	movl	$1144, %edx
	.loc 1 264 0
	pushq	%rbx
.LCFI10:
	subq	$8, %rsp
.LCFI11:
	.loc 1 267 0
	call	i2c_slave_init
	.loc 1 272 0
	movq	%r12, %rdi
	.loc 1 267 0
	movq	%rax, %rbx
	.loc 1 268 0
	movq	%r12, 40(%rax)
	.loc 1 272 0
	movl	$ssd0303_invalidate_display, %edx
	movl	$ssd0303_update_display, %esi
	.loc 1 269 0
	movq	$ssd0303_event, (%rax)
	.loc 1 270 0
	movq	$ssd0303_recv, 8(%rax)
	.loc 1 271 0
	movq	$ssd0303_send, 16(%rax)
	.loc 1 272 0
	movq	%rax, %r8
	xorl	%ecx, %ecx
	call	graphic_console_init
.LBB5:
	.loc 2 93 0
	movq	40(%rbx), %rax
.LBB6:
	.loc 2 94 0
	movl	$64, %edx
	movl	$384, %esi
	movq	56(%rax), %r11
.LBE6:
.LBE5:
	addq	$8, %rsp
.LBB7:
.LBB8:
	movq	%rax, %rdi
.LBE8:
.LBE7:
	popq	%rbx
	popq	%r12
.LBB9:
.LBB10:
	jmp	*%r11
.LBE10:
.LBE9:
.LFE115:
	.size	ssd0303_init, .-ssd0303_init
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
	.byte	0x4
	.long	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x80
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI9-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
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
	.byte	0x4
	.long	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x80
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
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI9-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
	.file 3 "./qemu-common.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xa1e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF113
	.byte	0x1
	.long	.LASF114
	.long	.LASF115
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
	.byte	0x8
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
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
	.byte	0x6
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x7
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x7
	.byte	0xb4
	.uleb128 0x9
	.long	0x2c4
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xc
	.long	.LASF45
	.byte	0x7
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x7
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x7
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
	.byte	0x5
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x6f
	.long	0x317
	.uleb128 0x9
	.long	0x3f6
	.long	.LASF50
	.byte	0x68
	.byte	0x3
	.byte	0x6f
	.uleb128 0xc
	.long	.LASF51
	.byte	0x2
	.byte	0x42
	.long	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x2
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
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
	.uleb128 0xc
	.long	.LASF54
	.byte	0x2
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF55
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF56
	.byte	0x2
	.byte	0x48
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF57
	.byte	0x2
	.byte	0x49
	.long	0x505
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x4b
	.long	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x4c
	.long	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF60
	.byte	0x2
	.byte	0x4d
	.long	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF61
	.byte	0x2
	.byte	0x4f
	.long	0x58f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF62
	.byte	0x2
	.byte	0x51
	.long	0x5ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.byte	0x52
	.long	0x5d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.byte	0x54
	.long	0x606
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x3
	.byte	0x74
	.long	0x401
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.uleb128 0x2
	.long	.LASF66
	.byte	0x3
	.byte	0x75
	.long	0x412
	.uleb128 0x9
	.long	0x465
	.long	.LASF66
	.byte	0x28
	.byte	0x3
	.byte	0x75
	.uleb128 0xc
	.long	.LASF67
	.byte	0x4
	.byte	0x1a
	.long	0x4dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF68
	.byte	0x4
	.byte	0x1b
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF69
	.byte	0x4
	.byte	0x1c
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF70
	.byte	0x4
	.byte	0x1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF71
	.byte	0x4
	.byte	0x20
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x1
	.uleb128 0xf
	.long	0x490
	.long	.LASF80
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.uleb128 0x10
	.long	.LASF73
	.sleb128 0
	.uleb128 0x10
	.long	.LASF74
	.sleb128 1
	.uleb128 0x10
	.long	.LASF75
	.sleb128 2
	.uleb128 0x10
	.long	.LASF76
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x4
	.byte	0x11
	.long	0x49b
	.uleb128 0x6
	.byte	0x8
	.long	0x4a1
	.uleb128 0x11
	.long	0x4b6
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x4b6
	.uleb128 0x12
	.long	0x2f6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x407
	.uleb128 0x2
	.long	.LASF78
	.byte	0x4
	.byte	0x13
	.long	0x4c7
	.uleb128 0x6
	.byte	0x8
	.long	0x4cd
	.uleb128 0x11
	.long	0x4dd
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x4b6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x4
	.byte	0x15
	.long	0x4e8
	.uleb128 0x6
	.byte	0x8
	.long	0x4ee
	.uleb128 0x13
	.long	0x4ff
	.byte	0x1
	.uleb128 0x12
	.long	0x4b6
	.uleb128 0x12
	.long	0x46b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x6
	.byte	0x8
	.long	0x465
	.uleb128 0x13
	.long	0x52b
	.byte	0x1
	.uleb128 0x12
	.long	0x52b
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x6
	.byte	0x8
	.long	0x50b
	.uleb128 0x13
	.long	0x54d
	.byte	0x1
	.uleb128 0x12
	.long	0x52b
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x537
	.uleb128 0x13
	.long	0x55f
	.byte	0x1
	.uleb128 0x12
	.long	0x52b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x553
	.uleb128 0x13
	.long	0x58f
	.byte	0x1
	.uleb128 0x12
	.long	0x52b
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
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x13
	.long	0x5ba
	.byte	0x1
	.uleb128 0x12
	.long	0x52b
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x301
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x595
	.uleb128 0x13
	.long	0x5d6
	.byte	0x1
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c0
	.uleb128 0x13
	.long	0x606
	.byte	0x1
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
	.long	0x4ff
	.uleb128 0x12
	.long	0x4ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5dc
	.uleb128 0xf
	.long	0x62b
	.long	.LASF81
	.byte	0x4
	.byte	0x1
	.byte	0x22
	.uleb128 0x10
	.long	.LASF82
	.sleb128 0
	.uleb128 0x10
	.long	.LASF83
	.sleb128 1
	.uleb128 0x10
	.long	.LASF84
	.sleb128 2
	.byte	0x0
	.uleb128 0xf
	.long	0x644
	.long	.LASF85
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.uleb128 0x10
	.long	.LASF86
	.sleb128 0
	.uleb128 0x10
	.long	.LASF87
	.sleb128 1
	.byte	0x0
	.uleb128 0x14
	.long	0x703
	.value	0x478
	.byte	0x1
	.byte	0x3b
	.uleb128 0xd
	.string	"i2c"
	.byte	0x1
	.byte	0x2e
	.long	0x407
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"ds"
	.byte	0x1
	.byte	0x2f
	.long	0x703
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"row"
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"col"
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.long	.LASF88
	.byte	0x1
	.byte	0x32
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF89
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.long	.LASF90
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF91
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.long	.LASF92
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF93
	.byte	0x1
	.byte	0x37
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.long	.LASF94
	.byte	0x1
	.byte	0x38
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF95
	.byte	0x1
	.byte	0x39
	.long	0x62b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.long	.LASF96
	.byte	0x1
	.byte	0x3a
	.long	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x30c
	.uleb128 0x7
	.long	0x71a
	.long	0x2f6
	.uleb128 0x15
	.long	0x5b
	.value	0x41f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x1
	.byte	0x3b
	.long	0x644
	.uleb128 0x16
	.long	0x755
	.long	.LASF98
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"i2c"
	.byte	0x1
	.byte	0x3d
	.long	0x4b6
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x16
	.long	0x7a6
	.long	.LASF99
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"i2c"
	.byte	0x1
	.byte	0x43
	.long	0x4b6
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.byte	0x43
	.long	0x2f6
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x45
	.long	0x7a6
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x46
	.long	0x62b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x71a
	.uleb128 0x1b
	.long	0x7ee
	.long	.LASF101
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"i2c"
	.byte	0x1
	.byte	0xb1
	.long	0x4b6
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0xb1
	.long	0x46b
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xb3
	.long	0x7a6
	.byte	0x0
	.uleb128 0x1b
	.long	0x8cb
	.long	.LASF102
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.byte	0xc0
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0xc2
	.long	0x7a6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x1
	.byte	0xc3
	.long	0x4ff
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.byte	0xc4
	.long	0x4ff
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0xc5
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.byte	0xc6
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0xc7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF105
	.byte	0x1
	.byte	0xc8
	.long	0x8cb
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.byte	0xc9
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.byte	0xca
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.byte	0xcb
	.long	0x2f6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	0x8db
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1f
	.long	0x8e8
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x8f1
	.uleb128 0x20
	.long	0x8fa
	.uleb128 0x20
	.long	0x903
	.uleb128 0x20
	.long	0x90c
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x8db
	.long	0x9d
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x21
	.long	0x916
	.long	.LASF58
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.byte	0x57
	.long	0x703
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
	.long	0x94e
	.long	.LASF109
	.byte	0x1
	.value	0x102
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF56
	.byte	0x1
	.value	0x101
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x103
	.long	0x7a6
	.byte	0x0
	.uleb128 0x26
	.long	0x9cb
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.value	0x108
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.string	"ds"
	.byte	0x1
	.value	0x107
	.long	0x703
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"bus"
	.byte	0x1
	.value	0x107
	.long	0x9cb
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF70
	.byte	0x1
	.value	0x107
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x109
	.long	0x7a6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x9d1
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x1f
	.long	0x9de
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x9e7
	.uleb128 0x20
	.long	0x9f0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f6
	.uleb128 0x21
	.long	0x9fa
	.long	.LASF59
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.byte	0x5c
	.long	0x703
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
	.uleb128 0x29
	.long	.LASF110
	.byte	0x6
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF111
	.byte	0x6
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF112
	.byte	0x6
	.byte	0x93
	.long	0x2ca
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.long	0xa22
	.long	0x94e
	.string	"ssd0303_init"
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
.LASF60:
	.string	"dpy_refresh"
.LASF90:
	.string	"flash"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF20:
	.string	"_IO_buf_base"
.LASF81:
	.string	"ssd0303_mode"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"linesize"
.LASF44:
	.string	"_IO_marker"
.LASF56:
	.string	"opaque"
.LASF61:
	.string	"dpy_copy"
.LASF83:
	.string	"SSD0303_DATA"
.LASF65:
	.string	"i2c_bus"
.LASF57:
	.string	"gui_timer"
.LASF94:
	.string	"mode"
.LASF43:
	.string	"_IO_FILE"
.LASF76:
	.string	"I2C_NACK"
.LASF6:
	.string	"unsigned char"
.LASF105:
	.string	"colors"
.LASF5:
	.string	"char"
.LASF102:
	.string	"ssd0303_update_display"
.LASF104:
	.string	"line"
.LASF106:
	.string	"colortab"
.LASF42:
	.string	"_IO_lock_t"
.LASF87:
	.string	"SSD0303_CMD_SKIP1"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF110:
	.string	"stdin"
.LASF97:
	.string	"ssd0303_state"
.LASF25:
	.string	"_markers"
.LASF114:
	.string	"/home/remco/Projects/Argos/src/hw/ssd0303.c"
.LASF79:
	.string	"i2c_event_cb"
.LASF80:
	.string	"i2c_event"
.LASF50:
	.string	"DisplayState"
.LASF91:
	.string	"enabled"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF95:
	.string	"cmd_state"
.LASF41:
	.string	"_unused2"
.LASF85:
	.string	"ssd0303_cmd"
.LASF29:
	.string	"_old_offset"
.LASF69:
	.string	"send"
.LASF99:
	.string	"ssd0303_send"
.LASF3:
	.string	"long long int"
.LASF54:
	.string	"width"
.LASF77:
	.string	"i2c_send_cb"
.LASF92:
	.string	"inverse"
.LASF96:
	.string	"framebuffer"
.LASF19:
	.string	"_IO_write_end"
.LASF53:
	.string	"depth"
.LASF67:
	.string	"event"
.LASF108:
	.string	"mask"
.LASF86:
	.string	"SSD0303_CMD_NONE"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF113:
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
	.string	"I2C_FINISH"
.LASF93:
	.string	"redraw"
.LASF107:
	.string	"dest_width"
.LASF13:
	.string	"_flags"
.LASF70:
	.string	"address"
.LASF66:
	.string	"i2c_slave"
.LASF63:
	.string	"mouse_set"
.LASF68:
	.string	"recv"
.LASF98:
	.string	"ssd0303_recv"
.LASF71:
	.string	"next"
.LASF72:
	.string	"QEMUTimer"
.LASF82:
	.string	"SSD0303_IDLE"
.LASF34:
	.string	"_offset"
.LASF88:
	.string	"start_line"
.LASF84:
	.string	"SSD0303_CMD"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF109:
	.string	"ssd0303_invalidate_display"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF103:
	.string	"dest"
.LASF11:
	.string	"__off64_t"
.LASF115:
	.string	"/home/remco/Projects/Argos/src"
.LASF21:
	.string	"_IO_buf_end"
.LASF59:
	.string	"dpy_resize"
.LASF112:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF74:
	.string	"I2C_START_SEND"
.LASF31:
	.string	"_vtable_offset"
.LASF7:
	.string	"signed char"
.LASF89:
	.string	"mirror"
.LASF58:
	.string	"dpy_update"
.LASF15:
	.string	"_IO_read_end"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF64:
	.string	"cursor_define"
.LASF62:
	.string	"dpy_fill"
.LASF4:
	.string	"short unsigned int"
.LASF111:
	.string	"stdout"
.LASF78:
	.string	"i2c_recv_cb"
.LASF18:
	.string	"_IO_write_ptr"
.LASF116:
	.string	"ssd0303_init"
.LASF101:
	.string	"ssd0303_event"
.LASF73:
	.string	"I2C_START_RECV"
.LASF51:
	.string	"data"
.LASF100:
	.string	"old_cmd_state"
.LASF55:
	.string	"height"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
