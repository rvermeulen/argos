	.file	"i8259.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	pic_get_irq, @function
pic_get_irq:
.LFB198:
	.file 1 "/home/remco/Projects/Argos/src/hw/i8259.c"
	.loc 1 115 0
	.loc 1 118 0
	movzbl	2(%rdi), %eax
	movzbl	1(%rdi), %edx
	notl	%eax
.LBB2:
.LBB3:
	.loc 1 105 0
	andl	%eax, %edx
	je	.L20
	.loc 1 109 0
	movzbl	4(%rdi), %r8d
	.loc 1 107 0
	xorl	%esi, %esi
	.loc 1 109 0
	movl	%r8d, %ecx
	jmp	.L21
	.p2align 4,,7
.L24:
	incl	%esi
	leal	(%r8,%rsi), %ecx
.L21:
	andl	$7, %ecx
	movl	%edx, %eax
	sarl	%cl, %eax
	testb	$1, %al
	je	.L24
.LBE3:
.LBE2:
	.loc 1 120 0
	cmpl	$8, %esi
.LBB4:
.LBB5:
	.loc 1 109 0
	movl	%esi, %r9d
.LBE5:
.LBE4:
	.loc 1 120 0
	je	.L20
	.loc 1 126 0
	cmpb	$0, 12(%rdi)
	.loc 1 125 0
	movzbl	3(%rdi), %edx
	.loc 1 126 0
	je	.L8
	.loc 1 127 0
	movl	%edx, %eax
	andl	$-5, %eax
	cmpq	%rdi, 24(%rdi)
	cmove	%eax, %edx
.L8:
.LBB6:
.LBB7:
	.loc 1 105 0
	testl	%edx, %edx
	movl	$8, %ecx
	je	.L10
	.loc 1 109 0
	movzbl	4(%rdi), %r8d
	.loc 1 107 0
	xorl	%esi, %esi
	.loc 1 109 0
	movl	%r8d, %ecx
	jmp	.L22
	.p2align 4,,7
.L25:
	incl	%esi
	leal	(%r8,%rsi), %ecx
.L22:
	andl	$7, %ecx
	movl	%edx, %eax
	sarl	%cl, %eax
	testb	$1, %al
	je	.L25
	movl	%esi, %ecx
.L10:
.LBE7:
.LBE6:
	.loc 1 129 0
	cmpl	%ecx, %r9d
	.loc 1 133 0
	movl	$-1, %eax
	.loc 1 129 0
	jge	.L1
	.loc 1 131 0
	movzbl	4(%rdi), %eax
	addl	%r9d, %eax
	andl	$7, %eax
.L1:
	.loc 1 135 0
	rep ; ret
	.p2align 4,,7
.L20:
	.loc 1 121 0
	movl	$-1, %eax
	ret
.LFE198:
	.size	pic_get_irq, .-pic_get_irq
	.p2align 4,,15
.globl pic_update_irq
	.type	pic_update_irq, @function
pic_update_irq:
.LFB199:
	.loc 1 141 0
	pushq	%rbx
.LCFI0:
	.loc 1 141 0
	movq	%rdi, %rbx
	.loc 1 145 0
	leaq	32(%rdi), %rdi
	call	pic_get_irq
	.loc 1 146 0
	testl	%eax, %eax
	js	.L27
.LBB8:
.LBB9:
	.loc 1 79 0
	movzbl	15(%rbx), %edx
	testb	$4, %dl
	je	.L28
	.loc 1 82 0
	orb	$4, 1(%rbx)
	.loc 1 83 0
	movzbl	(%rbx), %eax
.L33:
	.loc 1 93 0
	orl	$4, %eax
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	.loc 1 79 0
	andl	$4, %edx
	je	.L36
	.loc 1 85 0
	andb	$-5, 1(%rbx)
.L36:
	.loc 1 95 0
	andl	$-5, %eax
	movb	%al, (%rbx)
.L27:
.LBE11:
.LBE10:
	.loc 1 152 0
	movq	%rbx, %rdi
	call	pic_get_irq
	.loc 1 153 0
	testl	%eax, %eax
	js	.L26
.LBB12:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 13 0
	movq	64(%rbx), %rdi
.LBB13:
	.loc 2 14 0
	movl	$1, %esi
.LBE13:
.LBE12:
	.loc 1 175 0
	popq	%rbx
.LBB14:
.LBB15:
	.loc 2 14 0
	jmp	qemu_set_irq
	.p2align 4,,7
.L28:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 1 91 0
	movzbl	(%rbx), %eax
	testb	$4, %al
	jne	.L33
	.loc 1 92 0
	orb	$4, 1(%rbx)
	jmp	.L33
	.p2align 4,,7
.L26:
.LBE17:
.LBE16:
	.loc 1 175 0
	popq	%rbx
	.p2align 4,,4
	ret
.LFE199:
	.size	pic_update_irq, .-pic_update_irq
	.p2align 4,,15
	.type	i8259_set_irq, @function
i8259_set_irq:
.LFB200:
	.loc 1 182 0
.LBB18:
	.loc 1 76 0
	movl	%esi, %eax
.LBE18:
	.loc 1 182 0
	pushq	%rbx
.LCFI1:
	.loc 1 182 0
	movq	%rdi, %rbx
.LBB19:
	.loc 1 76 0
	sarl	$3, %eax
	movl	%esi, %ecx
.LBB20:
	.loc 1 78 0
	movl	$1, %r8d
.LBE20:
	.loc 1 76 0
	cltq
	andl	$7, %ecx
	salq	$5, %rax
.LBB21:
	.loc 1 78 0
	sall	%cl, %r8d
.LBE21:
	.loc 1 76 0
	leaq	(%rax,%rdi), %rdi
.LBB22:
	.loc 1 79 0
	movzbl	15(%rdi), %eax
	testl	%r8d, %eax
	je	.L47
	.loc 1 81 0
	testl	%edx, %edx
	je	.L48
	.loc 1 82 0
	orb	%r8b, 1(%rdi)
	.loc 1 83 0
	orb	%r8b, (%rdi)
.LBE22:
.LBE19:
	.loc 1 204 0
	movq	80(%rbx), %rax
	testq	%rax, %rax
	je	.L55
	.p2align 4,,7
.L58:
	.loc 1 205 0
	movq	88(%rbx), %rdi
	call	*%rax
	.loc 1 206 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	pic_update_irq
	.p2align 4,,7
.L47:
.LBB23:
.LBB24:
	.loc 1 95 0
	movl	%r8d, %eax
	.loc 1 90 0
	testl	%edx, %edx
	.loc 1 95 0
	notl	%eax
	.loc 1 90 0
	jne	.L57
.L56:
	.loc 1 95 0
	andb	%al, (%rdi)
.L54:
.LBE24:
.LBE23:
	.loc 1 204 0
	movq	80(%rbx), %rax
	testq	%rax, %rax
	jne	.L58
.L55:
	.loc 1 206 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	pic_update_irq
	.p2align 4,,7
.L57:
.LBB25:
.LBB26:
	.loc 1 91 0
	movzbl	(%rdi), %ecx
	movzbl	%cl, %eax
	testl	%r8d, %eax
	jne	.L52
	.loc 1 92 0
	orb	%r8b, 1(%rdi)
.L52:
	.loc 1 93 0
	orl	%r8d, %ecx
	movb	%cl, (%rdi)
	jmp	.L54
	.p2align 4,,7
.L48:
	.loc 1 85 0
	movl	%r8d, %eax
	notl	%eax
	andb	%al, 1(%rdi)
	jmp	.L56
.LBE26:
.LBE25:
.LFE200:
	.size	i8259_set_irq, .-i8259_set_irq
	.p2align 4,,15
.globl pic_read_irq
	.type	pic_read_irq, @function
pic_read_irq:
.LFB202:
	.loc 1 224 0
	pushq	%rbp
.LCFI2:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI3:
	subq	$8, %rsp
.LCFI4:
	.loc 1 227 0
	call	pic_get_irq
	.loc 1 228 0
	testl	%eax, %eax
	.loc 1 227 0
	movl	%eax, %ecx
	.loc 1 228 0
	js	.L60
.LBB27:
.LBB28:
	.loc 1 212 0
	cmpb	$0, 10(%rbp)
	jne	.L77
	.loc 1 216 0
	movl	$1, %eax
	sall	%cl, %eax
	orb	%al, 3(%rbp)
.L63:
	.loc 1 219 0
	movzbl	15(%rbp), %eax
	sarl	%cl, %eax
	testb	$1, %al
	jne	.L65
	.loc 1 220 0
	movl	$-2, %eax
	roll	%cl, %eax
	andb	%al, 1(%rbp)
.L65:
.LBE28:
.LBE27:
	.loc 1 230 0
	cmpl	$2, %ecx
	je	.L78
	.loc 1 241 0
	movzbl	5(%rbp), %eax
.L76:
	leal	(%rax,%rcx), %ebx
	.loc 1 248 0
	movq	%rbp, %rdi
	call	pic_update_irq
	.loc 1 259 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L77:
.LBB29:
.LBB30:
	.loc 1 213 0
	cmpb	$0, 11(%rbp)
	je	.L63
	.loc 1 214 0
	leal	1(%rcx), %eax
	andl	$7, %eax
	movb	%al, 4(%rbp)
	jmp	.L63
	.p2align 4,,7
.L60:
.LBE30:
.LBE29:
	.loc 1 246 0
	movzbl	5(%rbp), %eax
	.loc 1 248 0
	movq	%rbp, %rdi
	.loc 1 246 0
	leal	7(%rax), %ebx
	.loc 1 248 0
	call	pic_update_irq
	.loc 1 259 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L78:
	.loc 1 231 0
	leaq	32(%rbp), %rbx
	movq	%rbx, %rdi
	call	pic_get_irq
	.loc 1 232 0
	testl	%eax, %eax
	.loc 1 231 0
	movl	%eax, %ecx
	.loc 1 232 0
	js	.L67
.LBB31:
.LBB32:
	.loc 1 212 0
	cmpb	$0, 10(%rbx)
	jne	.L79
	.loc 1 216 0
	movl	$1, %eax
	sall	%cl, %eax
	orb	%al, 3(%rbx)
.L70:
	.loc 1 219 0
	movzbl	15(%rbx), %eax
	sarl	%cl, %eax
	testb	$1, %al
	jne	.L73
	.loc 1 220 0
	movl	$-2, %eax
	roll	%cl, %eax
	andb	%al, 1(%rbx)
.L73:
.LBE32:
.LBE31:
	.loc 1 238 0
	movzbl	37(%rbp), %eax
	jmp	.L76
.L79:
.LBB33:
.LBB34:
	.loc 1 213 0
	cmpb	$0, 11(%rbx)
	je	.L70
	.loc 1 214 0
	leal	1(%rcx), %eax
	andl	$7, %eax
	movb	%al, 4(%rbx)
	jmp	.L70
.L67:
.LBE34:
.LBE33:
	.loc 1 238 0
	movzbl	37(%rbp), %eax
	.loc 1 236 0
	movl	$7, %ecx
	jmp	.L76
.LFE202:
	.size	pic_read_irq, .-pic_read_irq
	.p2align 4,,15
	.type	pic_reset, @function
pic_reset:
.LFB203:
	.loc 1 262 0
	.loc 1 265 0
	movb	$0, (%rdi)
	.loc 1 266 0
	movb	$0, 1(%rdi)
	.loc 1 267 0
	movb	$0, 2(%rdi)
	.loc 1 268 0
	movb	$0, 3(%rdi)
	.loc 1 269 0
	movb	$0, 4(%rdi)
	.loc 1 270 0
	movb	$0, 5(%rdi)
	.loc 1 271 0
	movb	$0, 6(%rdi)
	.loc 1 272 0
	movb	$0, 7(%rdi)
	.loc 1 273 0
	movb	$0, 8(%rdi)
	.loc 1 274 0
	movb	$0, 9(%rdi)
	.loc 1 275 0
	movb	$0, 10(%rdi)
	.loc 1 276 0
	movb	$0, 11(%rdi)
	.loc 1 277 0
	movb	$0, 12(%rdi)
	.loc 1 278 0
	movb	$0, 13(%rdi)
	.loc 1 279 0
	movb	$0, 14(%rdi)
	ret
.LFE203:
	.size	pic_reset, .-pic_reset
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"level sensitive irq not supported"
	.text
	.p2align 4,,15
	.type	pic_ioport_write, @function
pic_ioport_write:
.LFB204:
	.loc 1 284 0
	movq	%rbx, -16(%rsp)
.LCFI5:
	movq	%rbp, -8(%rsp)
.LCFI6:
	subq	$24, %rsp
.LCFI7:
	.loc 1 292 0
	andl	$1, %esi
	.loc 1 284 0
	movq	%rdi, %rbp
	movl	%edx, %ebx
	.loc 1 292 0
	jne	.L82
	.loc 1 293 0
	testb	$16, %dl
	jne	.L129
	.loc 1 303 0
	testb	$8, %dl
	je	.L87
	.loc 1 304 0
	testb	$4, %dl
	.p2align 4,,5
	je	.L88
	.loc 1 305 0
	movb	$1, 7(%rdi)
.L88:
	.loc 1 306 0
	testb	$2, %bl
	.p2align 4,,3
	je	.L89
	.loc 1 307 0
	movl	%ebx, %eax
	andl	$1, %eax
	movb	%al, 6(%rbp)
.L89:
	.loc 1 308 0
	testb	$64, %bl
	je	.L81
	.loc 1 309 0
	shrl	$5, %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	movb	%al, 8(%rbp)
	jmp	.L81
	.p2align 4,,7
.L82:
	.loc 1 349 0
	movzbl	9(%rdi), %eax
	cmpl	$1, %eax
	je	.L112
	jle	.L130
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L117
	cmpl	$3, %eax
	.p2align 4,,7
	je	.L120
	.p2align 4,,7
.L81:
	.loc 1 373 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L87:
	.loc 1 311 0
	shrl	$5, %edx
	.loc 1 312 0
	cmpl	$7, %edx
	ja	.L81
	mov	%edx, %eax
	jmp	*.L108(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L108:
	.quad	.L94
	.quad	.L96
	.quad	.L81
	.quad	.L104
	.quad	.L94
	.quad	.L96
	.quad	.L105
	.quad	.L106
	.text
	.p2align 4,,7
.L129:
	.loc 1 295 0
	.p2align 4,,5
	call	pic_reset
.LBB35:
	.loc 2 18 0
	movq	24(%rbp), %rax
.LBB36:
	.loc 2 19 0
	xorl	%esi, %esi
.LBE36:
	.loc 2 18 0
	movq	64(%rax), %rdi
.LBB37:
	.loc 2 19 0
	call	qemu_set_irq
.LBE37:
.LBE35:
	.loc 1 299 0
	movl	%ebx, %eax
	.loc 1 298 0
	movb	$1, 9(%rbp)
	.loc 1 299 0
	andl	$1, %eax
	movb	%al, 13(%rbp)
	.loc 1 300 0
	movl	%ebx, %eax
	andl	$2, %eax
	.loc 1 301 0
	andl	$8, %ebx
	.loc 1 300 0
	movb	%al, 14(%rbp)
	.loc 1 301 0
	je	.L81
	.loc 1 302 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	hw_error
	.p2align 4,,7
.L112:
	.loc 1 356 0
	movl	%edx, %eax
	andl	$-8, %eax
	.loc 1 357 0
	cmpb	$0, 14(%rdi)
	.loc 1 356 0
	movb	%al, 5(%rdi)
	.loc 1 357 0
	movl	$2, %eax
	je	.L125
.L117:
	.loc 1 360 0
	movzbl	13(%rbp), %eax
	.loc 1 361 0
	cmpb	$1, %al
	sbbl	%eax, %eax
	notl	%eax
	andl	$3, %eax
.L125:
	movb	%al, 9(%rbp)
	.loc 1 373 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L130:
	.loc 1 349 0
	testl	%eax, %eax
	jne	.L81
	.loc 1 352 0
	movb	%dl, 2(%rbp)
.L126:
	.loc 1 353 0
	movq	24(%rbp), %rdi
	.loc 1 373 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 353 0
	jmp	pic_update_irq
.L120:
	.loc 1 367 0
	movl	%edx, %eax
	.loc 1 368 0
	shrl	%ebx
	.loc 1 369 0
	movb	$0, 9(%rdi)
	.loc 1 367 0
	shrl	$4, %eax
	andl	$1, %eax
	movb	%al, 12(%rdi)
	.loc 1 368 0
	movl	%ebx, %eax
	andl	$1, %eax
	movb	%al, 10(%rdi)
	jmp	.L81
.L106:
	.loc 1 338 0
	movl	%ebx, %ecx
	.loc 1 339 0
	movl	$-2, %eax
	.loc 1 338 0
	andl	$7, %ecx
	.loc 1 339 0
	roll	%cl, %eax
	andb	%al, 3(%rdi)
.L128:
	.loc 1 340 0
	leal	1(%rcx), %eax
.L127:
	.loc 1 334 0
	andl	$7, %eax
	movb	%al, 4(%rbp)
	jmp	.L126
.L105:
	leal	1(%rbx), %eax
	jmp	.L127
.L96:
.LBB38:
	.loc 1 103 0
	movzbl	3(%rdi), %r9d
	movzbl	%r9b, %esi
.LBB39:
	.loc 1 105 0
	testl	%esi, %esi
	je	.L81
	.loc 1 109 0
	movzbl	4(%rbp), %r8d
	.loc 1 107 0
	xorl	%edi, %edi
	.loc 1 109 0
	movl	%r8d, %ecx
	jmp	.L124
.L131:
	incl	%edi
	leal	(%r8,%rdi), %ecx
.L124:
	andl	$7, %ecx
	movl	%esi, %eax
	sarl	%cl, %eax
	testb	$1, %al
	je	.L131
.LBE39:
.LBE38:
	.loc 1 320 0
	cmpl	$8, %edi
.LBB40:
.LBB41:
	.loc 1 109 0
	movl	%edi, %ecx
.LBE41:
.LBE40:
	.loc 1 320 0
	je	.L81
	.loc 1 321 0
	movzbl	4(%rbp), %eax
	leal	(%rax,%rcx), %ecx
	.loc 1 322 0
	movl	$-2, %eax
	.loc 1 321 0
	andl	$7, %ecx
	.loc 1 322 0
	roll	%cl, %eax
	andl	%eax, %r9d
	.loc 1 323 0
	cmpl	$5, %edx
	.loc 1 322 0
	movb	%r9b, 3(%rbp)
	.loc 1 323 0
	jne	.L126
	jmp	.L128
	.p2align 4,,7
.L94:
	.loc 1 315 0
	sarl	$2, %edx
	movb	%dl, 11(%rdi)
	jmp	.L81
.L104:
	.loc 1 329 0
	andl	$7, %ebx
	.loc 1 330 0
	movl	$-2, %eax
	movl	%ebx, %ecx
	roll	%cl, %eax
	andb	%al, 3(%rdi)
	jmp	.L126
.LFE204:
	.size	pic_ioport_write, .-pic_ioport_write
	.p2align 4,,15
	.type	pic_poll_read, @function
pic_poll_read:
.LFB205:
	.loc 1 376 0
	movq	%rbx, -24(%rsp)
.LCFI8:
	movq	%rbp, -16(%rsp)
.LCFI9:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI10:
	subq	$24, %rsp
.LCFI11:
	.loc 1 376 0
	movl	%esi, %ebp
	.loc 1 379 0
	call	pic_get_irq
	.loc 1 380 0
	testl	%eax, %eax
	.loc 1 379 0
	movl	%eax, %r12d
	.loc 1 380 0
	js	.L133
	.loc 1 381 0
	movl	%ebp, %edx
	shrl	$7, %edx
	jne	.L138
	.loc 1 385 0
	movl	$-2, %eax
	movl	%r12d, %ecx
	roll	%cl, %eax
	andb	%al, 1(%rbx)
	.loc 1 386 0
	andb	%al, 3(%rbx)
	.loc 1 387 0
	testl	%edx, %edx
	setne	%dl
	cmpl	$2, %r12d
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L137
.L136:
	.loc 1 395 0
	movl	%r12d, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L138:
	.loc 1 382 0
	movq	24(%rbx), %rax
	.loc 1 385 0
	movl	%r12d, %ecx
	.loc 1 382 0
	andb	$-5, 3(%rax)
	.loc 1 383 0
	andb	$-5, 1(%rax)
	.loc 1 385 0
	movl	$-2, %eax
	roll	%cl, %eax
	andb	%al, 1(%rbx)
	.loc 1 386 0
	andb	%al, 3(%rbx)
	.loc 1 387 0
	testl	%edx, %edx
	setne	%dl
	cmpl	$2, %r12d
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L136
.L137:
	.loc 1 391 0
	movq	24(%rbx), %rdi
	call	pic_update_irq
.L139:
	.loc 1 395 0
	movl	%r12d, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L133:
	.loc 1 391 0
	movq	24(%rbx), %rdi
	.loc 1 390 0
	movl	$7, %r12d
	.loc 1 391 0
	call	pic_update_irq
	jmp	.L139
.LFE205:
	.size	pic_poll_read, .-pic_poll_read
	.p2align 4,,15
	.type	pic_ioport_read, @function
pic_ioport_read:
.LFB206:
	.loc 1 398 0
	pushq	%rbx
.LCFI12:
	.loc 1 403 0
	movl	%esi, %eax
	.loc 1 404 0
	andl	$1, %esi
	.loc 1 405 0
	cmpb	$0, 7(%rdi)
	.loc 1 398 0
	movq	%rdi, %rbx
	.loc 1 405 0
	jne	.L147
	.loc 1 409 0
	testl	%esi, %esi
	jne	.L143
	.loc 1 410 0
	cmpb	$0, 6(%rdi)
	je	.L144
	.loc 1 411 0
	movzbl	3(%rdi), %eax
	.loc 1 422 0
	popq	%rbx
	.p2align 4,,4
	ret
	.p2align 4,,7
.L143:
	.loc 1 415 0
	movzbl	2(%rdi), %eax
	.loc 1 422 0
	popq	%rbx
	.p2align 4,,4
	ret
	.p2align 4,,7
.L147:
	.loc 1 406 0
	movl	%eax, %esi
	.p2align 4,,5
	call	pic_poll_read
	.loc 1 407 0
	movb	$0, 7(%rbx)
	.loc 1 422 0
	popq	%rbx
	.p2align 4,,1
	ret
	.p2align 4,,7
.L144:
	.loc 1 413 0
	movzbl	1(%rdi), %eax
	.loc 1 422 0
	popq	%rbx
	.p2align 4,,1
	ret
.LFE206:
	.size	pic_ioport_read, .-pic_ioport_read
	.p2align 4,,15
.globl pic_intack_read
	.type	pic_intack_read, @function
pic_intack_read:
.LFB207:
	.loc 1 427 0
	pushq	%rbx
.LCFI13:
	.loc 1 430 0
	xorl	%esi, %esi
	.loc 1 427 0
	movq	%rdi, %rbx
	.loc 1 430 0
	call	pic_poll_read
	.loc 1 431 0
	cmpl	$2, %eax
	je	.L150
	.loc 1 434 0
	movb	$1, 6(%rbx)
	.loc 1 437 0
	popq	%rbx
	ret
	.p2align 4,,7
.L150:
	.loc 1 432 0
	leaq	32(%rbx), %rdi
	movl	$128, %esi
	call	pic_poll_read
	.loc 1 434 0
	movb	$1, 6(%rbx)
	.loc 1 432 0
	addl	$8, %eax
	.loc 1 437 0
	popq	%rbx
	ret
.LFE207:
	.size	pic_intack_read, .-pic_intack_read
	.p2align 4,,15
	.type	elcr_ioport_write, @function
elcr_ioport_write:
.LFB208:
	.loc 1 440 0
	.loc 1 442 0
	movzbl	16(%rdi), %eax
	andl	%edx, %eax
	movb	%al, 15(%rdi)
	ret
.LFE208:
	.size	elcr_ioport_write, .-elcr_ioport_write
	.p2align 4,,15
	.type	elcr_ioport_read, @function
elcr_ioport_read:
.LFB209:
	.loc 1 446 0
	.loc 1 448 0
	movzbl	15(%rdi), %eax
	.loc 1 449 0
	ret
.LFE209:
	.size	elcr_ioport_read, .-elcr_ioport_read
	.p2align 4,,15
	.type	pic_save, @function
pic_save:
.LFB210:
	.loc 1 452 0
	pushq	%r12
.LCFI14:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI15:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI16:
.LBB42:
.LBB43:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	(%rsi), %esi
	call	qemu_put_byte
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	movzbl	1(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	movzbl	2(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	movzbl	3(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	movzbl	4(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	movzbl	5(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	movzbl	6(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	movzbl	7(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	movzbl	8(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	movzbl	9(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	movzbl	10(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	movzbl	11(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	movzbl	12(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	movzbl	13(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	movzbl	14(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	movzbl	15(%rbx), %esi
.LBE73:
.LBE72:
	addq	$8, %rsp
.LBB74:
.LBB75:
	movq	%r12, %rdi
.LBE75:
.LBE74:
	popq	%rbx
	popq	%r12
.LBB76:
.LBB77:
	jmp	qemu_put_byte
.LBE77:
.LBE76:
.LFE210:
	.size	pic_save, .-pic_save
	.p2align 4,,15
	.type	pic_load, @function
pic_load:
.LFB211:
	.loc 1 474 0
	pushq	%rbp
.LCFI17:
	.loc 1 478 0
	movl	$-22, %eax
	.loc 1 474 0
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI18:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI19:
	.loc 1 477 0
	decl	%edx
	jne	.L170
.LBB78:
.LBB79:
	.loc 3 62 0
	call	qemu_get_byte
.LBE79:
.LBE78:
.LBB80:
.LBB81:
	movq	%rbx, %rdi
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	movb	%al, (%rbp)
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	call	qemu_get_byte
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	movq	%rbx, %rdi
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	movb	%al, 1(%rbp)
.LBE89:
.LBE88:
.LBB90:
.LBB91:
	call	qemu_get_byte
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	movq	%rbx, %rdi
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	movb	%al, 2(%rbp)
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	call	qemu_get_byte
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	movq	%rbx, %rdi
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	movb	%al, 3(%rbp)
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	call	qemu_get_byte
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movq	%rbx, %rdi
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	movb	%al, 4(%rbp)
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	call	qemu_get_byte
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	movq	%rbx, %rdi
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	movb	%al, 5(%rbp)
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	call	qemu_get_byte
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	movq	%rbx, %rdi
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	movb	%al, 6(%rbp)
.LBE119:
.LBE118:
.LBB120:
.LBB121:
	call	qemu_get_byte
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	movq	%rbx, %rdi
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	movb	%al, 7(%rbp)
.LBE125:
.LBE124:
.LBB126:
.LBB127:
	call	qemu_get_byte
.LBE127:
.LBE126:
.LBB128:
.LBB129:
	movq	%rbx, %rdi
.LBE129:
.LBE128:
.LBB130:
.LBB131:
	movb	%al, 8(%rbp)
.LBE131:
.LBE130:
.LBB132:
.LBB133:
	call	qemu_get_byte
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	movq	%rbx, %rdi
.LBE135:
.LBE134:
.LBB136:
.LBB137:
	movb	%al, 9(%rbp)
.LBE137:
.LBE136:
.LBB138:
.LBB139:
	call	qemu_get_byte
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	movq	%rbx, %rdi
.LBE141:
.LBE140:
.LBB142:
.LBB143:
	movb	%al, 10(%rbp)
.LBE143:
.LBE142:
.LBB144:
.LBB145:
	call	qemu_get_byte
.LBE145:
.LBE144:
.LBB146:
.LBB147:
	movq	%rbx, %rdi
.LBE147:
.LBE146:
.LBB148:
.LBB149:
	movb	%al, 11(%rbp)
.LBE149:
.LBE148:
.LBB150:
.LBB151:
	call	qemu_get_byte
.LBE151:
.LBE150:
.LBB152:
.LBB153:
	movq	%rbx, %rdi
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	movb	%al, 12(%rbp)
.LBE155:
.LBE154:
.LBB156:
.LBB157:
	call	qemu_get_byte
.LBE157:
.LBE156:
.LBB158:
.LBB159:
	movq	%rbx, %rdi
.LBE159:
.LBE158:
.LBB160:
.LBB161:
	movb	%al, 13(%rbp)
.LBE161:
.LBE160:
.LBB162:
.LBB163:
	call	qemu_get_byte
.LBE163:
.LBE162:
.LBB164:
.LBB165:
	movq	%rbx, %rdi
.LBE165:
.LBE164:
.LBB166:
.LBB167:
	movb	%al, 14(%rbp)
.LBE167:
.LBE166:
.LBB168:
.LBB169:
	call	qemu_get_byte
	movb	%al, 15(%rbp)
.LBE169:
.LBE168:
	.loc 1 496 0
	xorl	%eax, %eax
.L170:
	.loc 1 497 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE211:
	.size	pic_load, .-pic_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"i8259"
	.text
	.p2align 4,,15
	.type	pic_init1, @function
pic_init1:
.LFB212:
	.loc 1 501 0
	movq	%rbx, -24(%rsp)
.LCFI20:
	movq	%rbp, -16(%rsp)
.LCFI21:
	.loc 1 502 0
	movq	%rdx, %r8
	.loc 1 501 0
	movq	%r12, -8(%rsp)
.LCFI22:
	movl	%esi, %ebp
	subq	$24, %rsp
.LCFI23:
	.loc 1 501 0
	movl	%edi, %r12d
	movq	%rdx, %rbx
	.loc 1 502 0
	movl	$pic_ioport_write, %ecx
	movl	$1, %edx
	movl	$2, %esi
	call	register_ioport_write
	.loc 1 503 0
	movq	%rbx, %r8
	movl	$pic_ioport_read, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	register_ioport_read
	.loc 1 504 0
	testl	%ebp, %ebp
	js	.L189
	.loc 1 505 0
	movq	%rbx, %r8
	movl	$elcr_ioport_write, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	call	register_ioport_write
	.loc 1 506 0
	movq	%rbx, %r8
	movl	$elcr_ioport_read, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebp, %edi
	call	register_ioport_read
.L189:
	.loc 1 508 0
	movl	%r12d, %esi
	movq	%rbx, %r9
	movl	$.LC1, %edi
	movl	$pic_load, %r8d
	movl	$pic_save, %ecx
	movl	$1, %edx
	call	register_savevm
	.loc 1 509 0
	movq	%rbx, %rsi
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movl	$pic_reset, %edi
	addq	$24, %rsp
	jmp	qemu_register_reset
.LFE212:
	.size	pic_init1, .-pic_init1
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"pic%d: irr=%02x imr=%02x isr=%02x hprio=%d irq_base=%02x rr_sel=%d elcr=%02x fnm=%d\n"
	.text
	.p2align 4,,15
.globl pic_info
	.type	pic_info, @function
pic_info:
.LFB213:
	.loc 1 513 0
	pushq	%rbx
.LCFI24:
	.loc 1 520 0
	xorl	%ebx, %ebx
	.loc 1 513 0
	subq	$32, %rsp
.LCFI25:
	.loc 1 517 0
	movq	isa_pic(%rip), %rdx
	testq	%rdx, %rdx
	jne	.L195
.L190:
	.loc 1 527 0
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L195:
	.loc 1 521 0
	movslq	%ebx,%rax
	.loc 1 522 0
	movl	$.LC2, %edi
	.loc 1 521 0
	salq	$5, %rax
	addq	%rdx, %rax
	.loc 1 522 0
	movzbl	12(%rax), %esi
	movzbl	4(%rax), %r9d
	movzbl	3(%rax), %r8d
	movzbl	2(%rax), %ecx
	movzbl	1(%rax), %edx
	movl	%esi, 24(%rsp)
	movzbl	15(%rax), %esi
	movl	%esi, 16(%rsp)
	movzbl	6(%rax), %esi
	movl	%esi, 8(%rsp)
	movzbl	5(%rax), %eax
	movl	%ebx, %esi
	.loc 1 520 0
	incl	%ebx
	.loc 1 522 0
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	term_printf
	.loc 1 520 0
	cmpl	$1, %ebx
	jg	.L190
	movq	isa_pic(%rip), %rdx
	jmp	.L195
.LFE213:
	.size	pic_info, .-pic_info
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"irq statistic code not compiled.\n"
	.text
	.p2align 4,,15
.globl irq_info
	.type	irq_info, @function
irq_info:
.LFB214:
	.loc 1 530 0
	.loc 1 532 0
	movl	$.LC3, %edi
	xorl	%eax, %eax
	jmp	term_printf
.LFE214:
	.size	irq_info, .-irq_info
	.p2align 4,,15
.globl i8259_init
	.type	i8259_init, @function
i8259_init:
.LFB215:
	.loc 1 547 0
	pushq	%rbp
.LCFI26:
	movq	%rdi, %rbp
	.loc 1 550 0
	movl	$96, %edi
	.loc 1 547 0
	pushq	%rbx
.LCFI27:
	subq	$8, %rsp
.LCFI28:
	.loc 1 550 0
	call	qemu_mallocz
	.loc 1 551 0
	testq	%rax, %rax
	.loc 1 550 0
	movq	%rax, %rbx
	.loc 1 551 0
	je	.L201
	.loc 1 553 0
	movq	%rax, %rdx
	movl	$1232, %esi
	movl	$32, %edi
	call	pic_init1
	.loc 1 554 0
	leaq	32(%rbx), %rdx
	movl	$1233, %esi
	movl	$160, %edi
	call	pic_init1
	.loc 1 555 0
	movb	$-8, 16(%rbx)
	.loc 1 556 0
	movb	$-34, 48(%rbx)
	.loc 1 561 0
	movq	%rbx, %rsi
	.loc 1 557 0
	movq	%rbp, 64(%rbx)
	.loc 1 558 0
	movq	%rbx, 24(%rbx)
	.loc 1 561 0
	movl	$16, %edx
	.loc 1 559 0
	movq	%rbx, 56(%rbx)
	.loc 1 560 0
	movq	%rbx, isa_pic(%rip)
	.loc 1 562 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 561 0
	movl	$i8259_set_irq, %edi
	jmp	qemu_allocate_irqs
.L201:
	.loc 1 562 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	ret
.LFE215:
	.size	i8259_init, .-i8259_init
	.p2align 4,,15
.globl pic_set_alt_irq_func
	.type	pic_set_alt_irq_func, @function
pic_set_alt_irq_func:
.LFB216:
	.loc 1 566 0
	.loc 1 567 0
	movq	%rsi, 80(%rdi)
	.loc 1 568 0
	movq	%rdx, 88(%rdi)
	ret
.LFE216:
	.size	pic_set_alt_irq_func, .-pic_set_alt_irq_func
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
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI0-.LFB199
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI1-.LFB200
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
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI2-.LFB202
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI7-.LFB204
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI9-.LFB205
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI12-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI13-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI14-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI17-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI22-.LFB212
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI24-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI26-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE34:
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
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI0-.LFB199
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.byte	0x4
	.long	.LCFI1-.LFB200
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
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.byte	0x4
	.long	.LCFI2-.LFB202
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI7-.LFB204
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI9-.LFB205
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI12-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI13-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI14-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI17-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI22-.LFB212
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI24-.LFB213
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI26-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE35:
	.file 4 "/usr/include/stdint.h"
	.file 5 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 6 "../qemu-common.h"
	.file 7 "../argos-tag.h"
	.file 8 "../argos.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1222
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF125
	.byte	0x1
	.long	.LASF126
	.long	.LASF127
	.uleb128 0x2
	.long	.LASF9
	.byte	0xc
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
	.byte	0xb
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
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
	.byte	0x9
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0xa
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0xa
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0xa
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0xa
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0xa
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0xa
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0xa
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0xa
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0xa
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0xa
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0xa
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0xa
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0xa
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0xa
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0xa
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0xa
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0xa
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0xa
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xa
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
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
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.byte	0x2f
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x8
	.byte	0x34
	.long	0x2f1
	.uleb128 0x7
	.long	0x350
	.long	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.uleb128 0xa
	.long	.LASF56
	.byte	0x7
	.byte	0x38
	.long	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x7
	.byte	0x39
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x3d
	.long	0x327
	.uleb128 0x6
	.byte	0x8
	.long	0x350
	.uleb128 0x6
	.byte	0x8
	.long	0x367
	.uleb128 0xd
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x73
	.long	0x377
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x7b
	.long	0x388
	.uleb128 0x6
	.byte	0x8
	.long	0x38e
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.uleb128 0xf
	.long	0x3aa
	.byte	0x1
	.uleb128 0x10
	.long	0x9b
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x2
	.byte	0x8
	.long	0x394
	.uleb128 0x6
	.byte	0x8
	.long	0x36c
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x1a
	.long	0x3c6
	.uleb128 0x7
	.long	0x419
	.long	.LASF63
	.byte	0x60
	.byte	0x5
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF64
	.byte	0x1
	.byte	0x3b
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF65
	.byte	0x1
	.byte	0x3c
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF66
	.byte	0x1
	.byte	0x3d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1
	.byte	0x3f
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF68
	.byte	0x1
	.byte	0x40
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x7
	.long	0x528
	.long	.LASF69
	.byte	0x20
	.byte	0x1
	.byte	0x23
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.byte	0x24
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"irr"
	.byte	0x1
	.byte	0x25
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"imr"
	.byte	0x1
	.byte	0x26
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"isr"
	.byte	0x1
	.byte	0x27
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x28
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x29
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x2a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x2b
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x2c
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x2d
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.byte	0x2e
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.byte	0x2f
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.byte	0x30
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.byte	0x31
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.byte	0x32
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.byte	0x33
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF83
	.byte	0x1
	.byte	0x34
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF84
	.byte	0x1
	.byte	0x35
	.long	0x528
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3bb
	.uleb128 0x2
	.long	.LASF69
	.byte	0x1
	.byte	0x36
	.long	0x41f
	.uleb128 0xb
	.long	0x549
	.long	0x52e
	.uleb128 0xc
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3aa
	.uleb128 0x12
	.long	0x60a
	.long	.LASF88
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0x3f
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x72
	.long	0x60a
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF85
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF86
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x74
	.long	0x3f
	.uleb128 0x16
	.long	0x5d0
	.long	0x610
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x17
	.long	0x621
	.uleb128 0x17
	.long	0x62a
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x19
	.long	0x635
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x610
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x17
	.long	0x621
	.uleb128 0x17
	.long	0x62a
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x19
	.long	0x635
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x52e
	.uleb128 0x1c
	.long	0x641
	.long	.LASF89
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x66
	.long	0x60a
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x1
	.byte	0x66
	.long	0x3f
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x68
	.long	0x3f
	.byte	0x0
	.uleb128 0x1f
	.long	0x717
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x8c
	.long	0x528
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0x8e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.string	"irq"
	.byte	0x1
	.byte	0x8e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.long	0x6b9
	.long	0x717
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x17
	.long	0x724
	.uleb128 0x17
	.long	0x72d
	.uleb128 0x17
	.long	0x738
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.long	0x743
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x6f9
	.long	0x717
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x17
	.long	0x724
	.uleb128 0x17
	.long	0x72d
	.uleb128 0x17
	.long	0x738
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x21
	.long	0x743
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x74f
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x22
	.long	0x75c
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x74f
	.long	.LASF91
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x4b
	.long	0x60a
	.uleb128 0x1d
	.string	"irq"
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.byte	0x4d
	.long	0x3f
	.byte	0x0
	.uleb128 0x23
	.long	0x768
	.long	.LASF93
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x37d
	.byte	0x0
	.uleb128 0x24
	.long	0x7f1
	.long	.LASF94
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.long	.LASF95
	.byte	0x1
	.byte	0xb5
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.string	"irq"
	.byte	0x1
	.byte	0xb5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.long	.LASF92
	.byte	0x1
	.byte	0xb5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.byte	0xb7
	.long	0x528
	.uleb128 0x16
	.long	0x7e3
	.long	0x717
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x22
	.long	0x724
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.long	0x72d
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.long	0x738
	.byte	0x0
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x19
	.long	0x743
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x88b
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0x3f
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0xdf
	.long	0x528
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"irq"
	.byte	0x1
	.byte	0xe1
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0xe1
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.long	.LASF98
	.byte	0x1
	.byte	0xe1
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	0x86a
	.long	0x88b
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x17
	.long	0x898
	.uleb128 0x17
	.long	0x8a1
	.byte	0x0
	.uleb128 0x1a
	.long	0x88b
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x17
	.long	0x898
	.uleb128 0x17
	.long	0x8a1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x8ad
	.long	.LASF99
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0xd2
	.long	0x60a
	.uleb128 0x1d
	.string	"irq"
	.byte	0x1
	.byte	0xd2
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.long	0x8e5
	.long	.LASF100
	.byte	0x1
	.value	0x106
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x105
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x107
	.long	0x60a
	.byte	0x0
	.uleb128 0x28
	.long	0x9b1
	.long	.LASF101
	.byte	0x1
	.value	0x11c
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x11b
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF102
	.byte	0x1
	.value	0x11b
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x11b
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x11d
	.long	0x60a
	.uleb128 0x2c
	.long	.LASF87
	.byte	0x1
	.value	0x11e
	.long	0x3f
	.uleb128 0x2d
	.string	"cmd"
	.byte	0x1
	.value	0x11e
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"irq"
	.byte	0x1
	.value	0x11e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.long	0x981
	.long	0x9b1
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x22
	.long	0x9be
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1a
	.long	0x610
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x17
	.long	0x621
	.uleb128 0x22
	.long	0x62a
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x19
	.long	0x635
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x9ca
	.long	.LASF103
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x37d
	.byte	0x0
	.uleb128 0x2e
	.long	0xa16
	.long	.LASF104
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	0x2f1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x177
	.long	0x60a
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF105
	.byte	0x1
	.value	0x177
	.long	0x2f1
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x179
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x2e
	.long	0xa88
	.long	.LASF106
	.byte	0x1
	.value	0x18e
	.byte	0x1
	.long	0x2f1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x18d
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF105
	.byte	0x1
	.value	0x18d
	.long	0x2f1
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x18d
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x18f
	.long	0x60a
	.uleb128 0x2f
	.long	.LASF102
	.byte	0x1
	.value	0x190
	.long	0x46
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x191
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0xac7
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.value	0x1ab
	.byte	0x1
	.long	0x2f1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1aa
	.long	0x528
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0x1ac
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0xb1b
	.long	.LASF108
	.byte	0x1
	.value	0x1b8
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x1b7
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF102
	.byte	0x1
	.value	0x1b7
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x1b7
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1b9
	.long	0x60a
	.byte	0x0
	.uleb128 0x2e
	.long	0xb71
	.long	.LASF109
	.byte	0x1
	.value	0x1be
	.byte	0x1
	.long	0x2f1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x1bd
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF105
	.byte	0x1
	.value	0x1bd
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1bd
	.long	0x35b
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1bf
	.long	0x60a
	.byte	0x0
	.uleb128 0x28
	.long	0xdf1
	.long	.LASF110
	.byte	0x1
	.value	0x1c4
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x1c3
	.long	0x3b5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x1c3
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1c5
	.long	0x60a
	.uleb128 0x16
	.long	0xbd8
	.long	0xdf1
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xbfc
	.long	0xdf1
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xc20
	.long	0xdf1
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xc44
	.long	0xdf1
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xc68
	.long	0xdf1
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xc8c
	.long	0xdf1
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xcb0
	.long	0xdf1
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xcd4
	.long	0xdf1
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xcf8
	.long	0xdf1
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xd1c
	.long	0xdf1
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xd40
	.long	0xdf1
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xd64
	.long	0xdf1
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xd88
	.long	0xdf1
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xdac
	.long	0xdf1
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x16
	.long	0xdd0
	.long	0xdf1
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.uleb128 0x1a
	.long	0xdf1
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x17
	.long	0xdfe
	.uleb128 0x17
	.long	0xe07
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0xe12
	.long	.LASF111
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x3b5
	.uleb128 0x1d
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x361
	.byte	0x0
	.uleb128 0x2e
	.long	0x10a4
	.long	.LASF112
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	0x3f
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x1d9
	.long	0x3b5
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF95
	.byte	0x1
	.value	0x1d9
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF113
	.byte	0x1
	.value	0x1d9
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1db
	.long	0x60a
	.uleb128 0x16
	.long	0xe8b
	.long	0x10a4
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xeaf
	.long	0x10a4
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xed3
	.long	0x10a4
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xef7
	.long	0x10a4
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xf1b
	.long	0x10a4
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xf3f
	.long	0x10a4
	.quad	.LBB104
	.quad	.LBE104
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xf63
	.long	0x10a4
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xf87
	.long	0x10a4
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xfab
	.long	0x10a4
	.quad	.LBB122
	.quad	.LBE122
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xfcf
	.long	0x10a4
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0xff3
	.long	0x10a4
	.quad	.LBB134
	.quad	.LBE134
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0x1017
	.long	0x10a4
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0x103b
	.long	0x10a4
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0x105f
	.long	0x10a4
	.quad	.LBB152
	.quad	.LBE152
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x16
	.long	0x1083
	.long	0x10a4
	.quad	.LBB158
	.quad	.LBE158
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.uleb128 0x1a
	.long	0x10a4
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x17
	.long	0x10b1
	.uleb128 0x17
	.long	0x10ba
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x10c5
	.long	.LASF114
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x3b5
	.uleb128 0x1d
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0x419
	.byte	0x0
	.uleb128 0x28
	.long	0x110d
	.long	.LASF115
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF116
	.byte	0x1
	.value	0x1f4
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF117
	.byte	0x1
	.value	0x1f4
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1f4
	.long	0x60a
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x31
	.long	0x1146
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.value	0x201
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x202
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x203
	.long	0x60a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.value	0x212
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	0x11a1
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.value	0x223
	.byte	0x1
	.long	0x11a1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x29
	.long	.LASF65
	.byte	0x1
	.value	0x222
	.long	0x37d
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x224
	.long	0x528
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x31
	.long	0x11f0
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.value	0x236
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x234
	.long	0x528
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF67
	.byte	0x1
	.value	0x234
	.long	0x549
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.long	.LASF68
	.byte	0x1
	.value	0x235
	.long	0x9b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x33
	.long	.LASF121
	.byte	0x9
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF122
	.byte	0x9
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF123
	.byte	0xd
	.value	0x376
	.long	0x419
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF124
	.byte	0x5
	.byte	0x1b
	.long	0x528
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x26
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x88
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1226
	.long	0x641
	.string	"pic_update_irq"
	.long	0x7f1
	.string	"pic_read_irq"
	.long	0xa88
	.string	"pic_intack_read"
	.long	0x110d
	.string	"pic_info"
	.long	0x1146
	.string	"irq_info"
	.long	0x1162
	.string	"i8259_init"
	.long	0x11a7
	.string	"pic_set_alt_irq_func"
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF77:
	.string	"auto_eoi"
.LASF97:
	.string	"pic_read_irq"
.LASF99:
	.string	"pic_intack"
.LASF84:
	.string	"pics_state"
.LASF24:
	.string	"_IO_save_end"
.LASF83:
	.string	"elcr_mask"
.LASF65:
	.string	"parent_irq"
.LASF81:
	.string	"single_mode"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF66:
	.string	"irq_request_opaque"
.LASF100:
	.string	"pic_reset"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF82:
	.string	"elcr"
.LASF94:
	.string	"i8259_set_irq"
.LASF44:
	.string	"_IO_marker"
.LASF71:
	.string	"priority_add"
.LASF57:
	.string	"netidx"
.LASF95:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF61:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF58:
	.string	"argos_rtag_t"
.LASF55:
	.string	"argos_rtag"
.LASF104:
	.string	"pic_poll_read"
.LASF62:
	.string	"SetIRQFunc"
.LASF42:
	.string	"_IO_lock_t"
.LASF59:
	.string	"QEMUFile"
.LASF75:
	.string	"special_mask"
.LASF76:
	.string	"init_state"
.LASF53:
	.string	"argos_paddr_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"double"
.LASF108:
	.string	"elcr_ioport_write"
.LASF93:
	.string	"qemu_irq_raise"
.LASF47:
	.string	"_pos"
.LASF121:
	.string	"stdin"
.LASF122:
	.string	"stdout"
.LASF25:
	.string	"_markers"
.LASF117:
	.string	"elcr_addr"
.LASF73:
	.string	"read_reg_select"
.LASF87:
	.string	"priority"
.LASF118:
	.string	"pic_info"
.LASF116:
	.string	"io_addr"
.LASF41:
	.string	"_unused2"
.LASF90:
	.string	"irq2"
.LASF88:
	.string	"pic_get_irq"
.LASF128:
	.string	"irq_info"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF112:
	.string	"pic_load"
.LASF111:
	.string	"qemu_put_8s"
.LASF29:
	.string	"_old_offset"
.LASF113:
	.string	"version_id"
.LASF109:
	.string	"elcr_ioport_read"
.LASF3:
	.string	"long long int"
.LASF115:
	.string	"pic_init1"
.LASF19:
	.string	"_IO_write_end"
.LASF64:
	.string	"pics"
.LASF127:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF102:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF85:
	.string	"mask"
.LASF107:
	.string	"pic_intack_read"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF67:
	.string	"alt_irq_func"
.LASF125:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF114:
	.string	"qemu_get_8s"
.LASF72:
	.string	"irq_base"
.LASF79:
	.string	"special_fully_nested_mode"
.LASF54:
	.string	"argos_netidx_t"
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
.LASF13:
	.string	"_flags"
.LASF74:
	.string	"poll"
.LASF89:
	.string	"get_priority"
.LASF63:
	.string	"PicState2"
.LASF124:
	.string	"isa_pic"
.LASF96:
	.string	"pic_update_irq"
.LASF52:
	.string	"long double"
.LASF34:
	.string	"_offset"
.LASF91:
	.string	"pic_set_irq1"
.LASF120:
	.string	"pic_set_alt_irq_func"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF69:
	.string	"PicState"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF126:
	.string	"/home/remco/Projects/Argos/src/hw/i8259.c"
.LASF11:
	.string	"__off64_t"
.LASF119:
	.string	"i8259_init"
.LASF80:
	.string	"init4"
.LASF21:
	.string	"_IO_buf_end"
.LASF70:
	.string	"last_irr"
.LASF105:
	.string	"addr1"
.LASF8:
	.string	"short int"
.LASF86:
	.string	"cur_priority"
.LASF123:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF110:
	.string	"pic_save"
.LASF15:
	.string	"_IO_read_end"
.LASF78:
	.string	"rotate_on_auto_eoi"
.LASF103:
	.string	"qemu_irq_lower"
.LASF49:
	.string	"uint32_t"
.LASF27:
	.string	"_fileno"
.LASF98:
	.string	"intno"
.LASF92:
	.string	"level"
.LASF68:
	.string	"alt_irq_opaque"
.LASF50:
	.string	"float"
.LASF101:
	.string	"pic_ioport_write"
.LASF18:
	.string	"_IO_write_ptr"
.LASF106:
	.string	"pic_ioport_read"
.LASF56:
	.string	"origin"
.LASF60:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
