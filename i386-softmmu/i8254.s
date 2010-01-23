	.file	"i8254.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	pit_get_count, @function
pit_get_count:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/i8254.c"
	.loc 1 65 0
	pushq	%rbx
.LCFI0:
	.loc 1 65 0
	movq	%rdi, %rbx
	.loc 1 69 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %rdi
	subq	16(%rbx), %rdi
	movl	ticks_per_sec(%rip), %edx
	movl	$1193182, %esi
	call	muldiv64
	.loc 1 70 0
	movzbl	13(%rbx), %ecx
	.loc 1 69 0
	movq	%rax, %rdx
	.loc 1 70 0
	cmpl	$5, %ecx
	ja	.L8
	movl	$1, %eax
	salq	%cl, %rax
	testb	$51, %al
	jne	.L6
	testb	$8, %al
	jne	.L7
	.p2align 4,,7
.L8:
	.loc 1 82 0
	movl	(%rbx), %ecx
	movq	%rdx, %rax
	xorl	%edx, %edx
	.loc 1 86 0
	popq	%rbx
	.loc 1 82 0
	movslq	%ecx,%rsi
	divq	%rsi
	movl	%ecx, %eax
	subl	%edx, %eax
	.loc 1 86 0
	ret
	.p2align 4,,7
.L6:
	.loc 1 75 0
	movl	(%rbx), %eax
	.loc 1 86 0
	popq	%rbx
	.loc 1 75 0
	subl	%edx, %eax
	andl	$65535, %eax
	.loc 1 86 0
	ret
	.p2align 4,,7
.L7:
	.loc 1 79 0
	movl	(%rbx), %ecx
	leaq	(%rdx,%rdx), %rsi
	xorl	%edx, %edx
	.loc 1 86 0
	popq	%rbx
	.loc 1 79 0
	movq	%rsi, %rax
	movslq	%ecx,%r8
	divq	%r8
	movl	%ecx, %eax
	subl	%edx, %eax
	.loc 1 86 0
	ret
.LFE194:
	.size	pit_get_count, .-pit_get_count
	.p2align 4,,15
	.type	pit_get_out1, @function
pit_get_out1:
.LFB195:
	.loc 1 90 0
	pushq	%rbx
.LCFI1:
	.loc 1 90 0
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	.loc 1 94 0
	subq	16(%rbx), %rdi
	movl	ticks_per_sec(%rip), %edx
	movl	$1193182, %esi
	call	muldiv64
	movq	%rax, %rsi
	.loc 1 95 0
	movzbl	13(%rbx), %eax
	cmpl	$5, %eax
	ja	.L13
	mov	%eax, %eax
	jmp	*.L21(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L21:
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L18
	.quad	.L20
	.quad	.L20
	.text
	.p2align 4,,7
.L13:
	.loc 1 98 0
	movslq	(%rbx),%rax
	.loc 1 118 0
	popq	%rbx
	.loc 1 98 0
	cmpq	%rsi, %rax
	setbe	%al
	.loc 1 114 0
	movzbl	%al, %eax
	.loc 1 118 0
	ret
.L20:
	.loc 1 114 0
	movslq	(%rbx),%rax
	.loc 1 118 0
	popq	%rbx
	.loc 1 114 0
	cmpq	%rsi, %rax
	sete	%al
	movzbl	%al, %eax
	.loc 1 118 0
	ret
.L14:
	.loc 1 101 0
	movslq	(%rbx),%rax
	.loc 1 118 0
	popq	%rbx
	.loc 1 101 0
	cmpq	%rsi, %rax
	seta	%al
	.loc 1 114 0
	movzbl	%al, %eax
	.loc 1 118 0
	ret
.L15:
	.loc 1 104 0
	movslq	(%rbx),%rdx
	movq	%rsi, %rax
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	.loc 1 118 0
	popq	%rbx
	.loc 1 104 0
	testq	%rdx, %rdx
	sete	%dl
	xorl	%eax, %eax
	testq	%rsi, %rsi
	setne	%al
	.loc 1 105 0
	testl	%edx, %eax
	setne	%al
	.loc 1 114 0
	movzbl	%al, %eax
	.loc 1 118 0
	ret
.L18:
	.loc 1 110 0
	movl	(%rbx), %edi
	movq	%rsi, %rax
	movslq	%edi,%rdx
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	leal	1(%rdi), %eax
	.loc 1 118 0
	popq	%rbx
	.loc 1 110 0
	sarl	%eax
	cltq
	cmpq	%rax, %rdx
	setb	%al
	.loc 1 114 0
	movzbl	%al, %eax
	.loc 1 118 0
	ret
.LFE195:
	.size	pit_get_out1, .-pit_get_out1
	.p2align 4,,15
.globl pit_get_out
	.type	pit_get_out, @function
pit_get_out:
.LFB196:
	.loc 1 121 0
	.loc 1 122 0
	movslq	%esi,%rsi
	leaq	(%rsi,%rsi,2), %rsi
	salq	$4, %rsi
	leaq	(%rsi,%rdi), %rdi
	.loc 1 123 0
	movq	%rdx, %rsi
	jmp	pit_get_out1
.LFE196:
	.size	pit_get_out, .-pit_get_out
	.p2align 4,,15
.globl pit_get_gate
	.type	pit_get_gate, @function
pit_get_gate:
.LFB199:
	.loc 1 210 0
	.loc 1 211 0
	movslq	%esi,%rsi
	leaq	(%rsi,%rsi,2), %rsi
	salq	$4, %rsi
	.loc 1 212 0
	movzbl	15(%rsi,%rdi), %eax
	.loc 1 213 0
	ret
.LFE199:
	.size	pit_get_gate, .-pit_get_gate
	.p2align 4,,15
.globl pit_get_initial_count
	.type	pit_get_initial_count, @function
pit_get_initial_count:
.LFB200:
	.loc 1 216 0
	.loc 1 217 0
	movslq	%esi,%rsi
	leaq	(%rsi,%rsi,2), %rsi
	salq	$4, %rsi
	.loc 1 218 0
	movl	(%rsi,%rdi), %eax
	.loc 1 219 0
	ret
.LFE200:
	.size	pit_get_initial_count, .-pit_get_initial_count
	.p2align 4,,15
.globl pit_get_mode
	.type	pit_get_mode, @function
pit_get_mode:
.LFB201:
	.loc 1 222 0
	.loc 1 223 0
	movslq	%esi,%rsi
	leaq	(%rsi,%rsi,2), %rsi
	salq	$4, %rsi
	.loc 1 224 0
	movzbl	13(%rsi,%rdi), %eax
	.loc 1 225 0
	ret
.LFE201:
	.size	pit_get_mode, .-pit_get_mode
	.p2align 4,,15
	.type	pit_latch_count, @function
pit_latch_count:
.LFB203:
	.loc 1 238 0
	pushq	%rbx
.LCFI2:
	.loc 1 239 0
	cmpb	$0, 6(%rdi)
	.loc 1 238 0
	movq	%rdi, %rbx
	.loc 1 239 0
	je	.L29
	.loc 1 243 0
	popq	%rbx
	ret
	.p2align 4,,7
.L29:
	.loc 1 240 0
	call	pit_get_count
	movw	%ax, 4(%rbx)
	.loc 1 241 0
	movzbl	12(%rbx), %eax
	movb	%al, 6(%rbx)
	.loc 1 243 0
	popq	%rbx
	.p2align 4,,1
	ret
.LFE203:
	.size	pit_latch_count, .-pit_latch_count
	.p2align 4,,15
	.type	pit_ioport_read, @function
pit_ioport_read:
.LFB205:
	.loc 1 311 0
	.loc 1 317 0
	andl	$3, %esi
	.loc 1 311 0
	pushq	%rbx
.LCFI3:
	.loc 1 317 0
	leaq	(%rsi,%rsi,2), %rsi
	salq	$4, %rsi
	leaq	(%rsi,%rdi), %rbx
	.loc 1 318 0
	cmpb	$0, 7(%rbx)
	je	.L31
	.loc 1 320 0
	movzbl	8(%rbx), %eax
	.loc 1 319 0
	movb	$0, 7(%rbx)
	.loc 1 361 0
	popq	%rbx
	ret
	.p2align 4,,7
.L31:
	.loc 1 321 0
	movzbl	6(%rbx), %eax
	testb	%al, %al
	jne	.L48
	.loc 1 338 0
	movzbl	9(%rbx), %eax
	cmpl	$3, %eax
	je	.L44
	.p2align 4,,3
	jle	.L49
	cmpl	$4, %eax
	.p2align 4,,5
	je	.L45
.L42:
	.loc 1 341 0
	movq	%rbx, %rdi
	.p2align 4,,7
	call	pit_get_count
	.loc 1 361 0
	popq	%rbx
	.loc 1 342 0
	andl	$255, %eax
	.loc 1 361 0
	.p2align 4,,1
	ret
	.p2align 4,,7
.L48:
	.loc 1 322 0
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L37
	cmpl	$3, %eax
	.p2align 4,,3
	je	.L38
	.loc 1 325 0
	movzbl	4(%rbx), %eax
	.loc 1 330 0
	movb	$0, 6(%rbx)
.L50:
	.loc 1 361 0
	popq	%rbx
	ret
	.p2align 4,,7
.L49:
	.loc 1 338 0
	cmpl	$2, %eax
	.p2align 4,,3
	jne	.L42
	.loc 1 345 0
	movq	%rbx, %rdi
	call	pit_get_count
	.loc 1 361 0
	popq	%rbx
	.loc 1 346 0
	movzbl	%ah, %eax
	.loc 1 361 0
	.p2align 4,,1
	ret
.L37:
	.loc 1 329 0
	movzbl	5(%rbx), %eax
	.loc 1 330 0
	movb	$0, 6(%rbx)
	jmp	.L50
.L38:
	.loc 1 333 0
	movzbl	4(%rbx), %eax
	.loc 1 334 0
	movb	$2, 6(%rbx)
	.loc 1 361 0
	popq	%rbx
	ret
.L44:
	.loc 1 349 0
	movq	%rbx, %rdi
	call	pit_get_count
	.loc 1 351 0
	movb	$4, 9(%rbx)
	.loc 1 350 0
	andl	$255, %eax
	.loc 1 361 0
	popq	%rbx
	ret
.L45:
	.loc 1 354 0
	movq	%rbx, %rdi
	call	pit_get_count
	.loc 1 356 0
	movb	$3, 9(%rbx)
	.loc 1 355 0
	movzbl	%ah, %eax
	.loc 1 361 0
	popq	%rbx
	ret
.LFE205:
	.size	pit_ioport_read, .-pit_ioport_read
	.p2align 4,,15
	.type	pit_irq_timer_update, @function
pit_irq_timer_update:
.LFB206:
	.loc 1 364 0
	movq	%rbx, -24(%rsp)
.LCFI4:
	movq	%rbp, -16(%rsp)
.LCFI5:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI6:
	subq	$24, %rsp
.LCFI7:
	.loc 1 368 0
	cmpq	$0, 32(%rdi)
	.loc 1 364 0
	movq	%rsi, %rbp
	.loc 1 368 0
	jne	.L76
	.loc 1 383 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L76:
.LBB2:
.LBB3:
	.loc 1 133 0
	movq	%rsi, %rdi
	subq	16(%rbx), %rdi
	movl	ticks_per_sec(%rip), %edx
	movl	$1193182, %esi
	call	muldiv64
	movq	%rax, %r8
	.loc 1 134 0
	movzbl	13(%rbx), %eax
	cmpl	$3, %eax
	je	.L63
	jle	.L77
	cmpl	$5, %eax
	.p2align 4,,3
	jle	.L67
.L56:
	.loc 1 138 0
	movslq	(%rbx),%rdi
	cmpq	%r8, %rdi
	.p2align 4,,5
	ja	.L53
.L70:
	.loc 1 163 0
	movq	$-1, %r12
	.p2align 4,,7
.L59:
.LBE3:
.LBE2:
	.loc 1 371 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	pit_get_out1
	.loc 1 372 0
	movq	40(%rbx), %rdi
	.loc 1 371 0
	movl	%eax, %esi
	.loc 1 372 0
	call	qemu_set_irq
	.loc 1 379 0
	cmpq	$-1, %r12
	.loc 1 378 0
	movq	%r12, 24(%rbx)
	.loc 1 379 0
	je	.L74
	.loc 1 380 0
	movq	32(%rbx), %rdi
	movq	%r12, %rsi
	.loc 1 383 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 380 0
	jmp	qemu_mod_timer
	.p2align 4,,7
.L77:
.LBB4:
.LBB5:
	.loc 1 134 0
	cmpl	$2, %eax
	jne	.L56
	.loc 1 144 0
	movslq	(%rbx),%rcx
	xorl	%edx, %edx
	movq	%r8, %rax
	divq	%rcx
	movq	%rax, %rsi
	imulq	%rcx, %rsi
	.loc 1 145 0
	cmpq	%rsi, %r8
	.loc 1 148 0
	leaq	1(%rcx,%rsi), %rdi
	.loc 1 145 0
	sete	%dl
	xorl	%eax, %eax
	testq	%r8, %r8
	setne	%al
	testl	%edx, %eax
	je	.L53
	.loc 1 146 0
	leaq	(%rcx,%rsi), %rdi
	.p2align 4,,7
.L53:
	.loc 1 169 0
	movl	ticks_per_sec(%rip), %esi
	movl	$1193182, %edx
	call	muldiv64
	movq	%rax, %rdi
	addq	16(%rbx), %rdi
	.loc 1 173 0
	leaq	1(%rbp), %rax
	cmpq	%rdi, %rbp
	movq	%rdi, %r12
	cmovae	%rax, %r12
	jmp	.L59
.L63:
	.loc 1 151 0
	movl	(%rbx), %edi
	movq	%r8, %rax
	xorl	%edx, %edx
	movslq	%edi,%r9
	divq	%r9
	movq	%rax, %rsi
	.loc 1 152 0
	leal	1(%rdi), %eax
	.loc 1 151 0
	imulq	%r9, %rsi
	.loc 1 152 0
	sarl	%eax
	.loc 1 153 0
	cltq
	subq	%rsi, %r8
	.loc 1 154 0
	leaq	(%rax,%rsi), %rdi
	leaq	(%r9,%rsi), %rdx
	cmpq	%rax, %r8
	cmovae	%rdx, %rdi
	jmp	.L53
.L74:
.LBE5:
.LBE4:
	.loc 1 382 0
	movq	32(%rbx), %rdi
	.loc 1 383 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 382 0
	jmp	qemu_del_timer
.L67:
.LBB6:
.LBB7:
	.loc 1 160 0
	movl	(%rbx), %eax
	movslq	%eax,%rdi
	cmpq	%r8, %rdi
	ja	.L53
	.loc 1 162 0
	jne	.L70
	.loc 1 163 0
	incl	%eax
	movslq	%eax,%rdi
	.p2align 4,,2
	jmp	.L53
.LBE7:
.LBE6:
.LFE206:
	.size	pit_irq_timer_update, .-pit_irq_timer_update
	.p2align 4,,15
	.type	pit_ioport_write, @function
pit_ioport_write:
.LFB204:
	.loc 1 246 0
	.loc 1 251 0
	andl	$3, %esi
	.loc 1 246 0
	movq	%r12, -16(%rsp)
.LCFI8:
	movq	%rbx, -32(%rsp)
.LCFI9:
	movq	%rbp, -24(%rsp)
.LCFI10:
	movq	%r13, -8(%rsp)
.LCFI11:
	subq	$40, %rsp
.LCFI12:
	.loc 1 252 0
	cmpl	$3, %esi
	.loc 1 246 0
	movl	%edx, %r12d
	.loc 1 252 0
	je	.L108
	.loc 1 289 0
	mov	%esi, %eax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	(%rax,%rdi), %rbp
	.loc 1 290 0
	movzbl	10(%rbp), %eax
	cmpl	$3, %eax
	je	.L100
	jg	.L104
	cmpl	$2, %eax
	je	.L97
.L94:
.LBB8:
.LBB9:
	.loc 1 230 0
	movl	$65536, %ebx
	testl	%r12d, %r12d
	cmovne	%r12d, %ebx
.L107:
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	.loc 1 231 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 232 0
	movl	%ebx, (%rbp)
	.loc 1 231 0
	movq	%rax, 16(%rbp)
	.loc 1 233 0
	movq	%rbp, %rdi
.LBE11:
.LBE10:
	.loc 1 308 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
.LBB12:
.LBB13:
	.loc 1 231 0
	movq	%rax, %rsi
.LBE13:
.LBE12:
	.loc 1 308 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
.LBB14:
.LBB15:
	.loc 1 233 0
	jmp	pit_irq_timer_update
	.p2align 4,,7
.L104:
.LBE15:
.LBE14:
	.loc 1 290 0
	cmpl	$4, %eax
	jne	.L94
.LBB16:
	.loc 1 228 0
	movzbl	11(%rbp), %ebx
.LBB17:
	.loc 1 231 0
	movq	vm_clock(%rip), %rdi
.LBE17:
	.loc 1 228 0
	sall	$8, %r12d
.LBB18:
	.loc 1 230 0
	movl	$65536, %eax
	orl	%r12d, %ebx
	cmove	%eax, %ebx
	.loc 1 231 0
	call	qemu_get_clock
	.loc 1 232 0
	movl	%ebx, (%rbp)
	.loc 1 231 0
	movq	%rax, %rsi
	movq	%rax, 16(%rbp)
	.loc 1 233 0
	movq	%rbp, %rdi
	call	pit_irq_timer_update
.LBE18:
.LBE16:
	.loc 1 304 0
	movb	$3, 10(%rbp)
	jmp	.L78
	.p2align 4,,7
.L108:
	.loc 1 253 0
	movl	%edx, %ebx
	shrl	$6, %ebx
	.loc 1 254 0
	cmpl	$3, %ebx
	je	.L109
	.loc 1 274 0
	movslq	%ebx,%rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	(%rax,%rdi), %rbp
	.loc 1 275 0
	movl	%edx, %eax
	shrl	$4, %eax
	.loc 1 276 0
	andl	$3, %eax
	je	.L110
	.loc 1 279 0
	movb	%al, 12(%rbp)
	.loc 1 280 0
	movb	%al, 9(%rbp)
	.loc 1 281 0
	movb	%al, 10(%rbp)
	.loc 1 283 0
	movl	%edx, %eax
	shrl	%eax
	andl	$7, %eax
	movb	%al, 13(%rbp)
	.loc 1 284 0
	movl	%edx, %eax
	andl	$1, %eax
	movb	%al, 14(%rbp)
	.loc 1 308 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L100:
	.loc 1 299 0
	movb	%dl, 11(%rbp)
	.loc 1 300 0
	movb	$4, 10(%rbp)
.L78:
	.loc 1 308 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L110:
	.loc 1 277 0
	movq	%rbp, %rdi
	.loc 1 308 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 277 0
	jmp	pit_latch_count
.L97:
.LBB19:
.LBB20:
	.loc 1 230 0
	movl	%edx, %ebx
	movl	$65536, %eax
	sall	$8, %ebx
	cmove	%eax, %ebx
	jmp	.L107
.L109:
.LBE20:
.LBE19:
	.loc 1 256 0
	xorb	%bl, %bl
	movl	$2, %r13d
	movq	%rdi, %rbp
.L87:
	.loc 1 258 0
	movl	%r13d, %eax
	movl	%ebx, %ecx
	sall	%cl, %eax
	testl	%r12d, %eax
	je	.L83
	.loc 1 259 0
	testb	$32, %r12b
	je	.L111
.L85:
	.loc 1 262 0
	testb	$16, %r12b
	jne	.L83
	cmpb	$0, 7(%rbp)
	.p2align 4,,5
	je	.L112
	.p2align 4,,7
.L83:
	.loc 1 256 0
	incl	%ebx
	addq	$48, %rbp
	cmpl	$2, %ebx
	.p2align 4,,2
	jle	.L87
	.p2align 4,,4
	jmp	.L78
.L112:
	.loc 1 265 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	pit_get_out1
	movzbl	12(%rbp), %edx
	sall	$7, %eax
	.loc 1 269 0
	movb	$1, 7(%rbp)
	.loc 1 265 0
	sall	$4, %edx
	orl	%edx, %eax
	movzbl	13(%rbp), %edx
	addl	%edx, %edx
	orl	%edx, %eax
	orb	14(%rbp), %al
	movb	%al, 8(%rbp)
	jmp	.L83
.L111:
	.loc 1 260 0
	movq	%rbp, %rdi
	call	pit_latch_count
	jmp	.L85
.LFE204:
	.size	pit_ioport_write, .-pit_ioport_write
	.p2align 4,,15
.globl pit_set_gate
	.type	pit_set_gate, @function
pit_set_gate:
.LFB198:
	.loc 1 179 0
	.loc 1 180 0
	movslq	%esi,%rsi
	.loc 1 179 0
	movq	%rbx, -16(%rsp)
.LCFI13:
	movq	%rbp, -8(%rsp)
.LCFI14:
	.loc 1 180 0
	leaq	(%rsi,%rsi,2), %rsi
	.loc 1 179 0
	subq	$24, %rsp
.LCFI15:
	.loc 1 179 0
	movl	%edx, %ebp
	.loc 1 180 0
	salq	$4, %rsi
	leaq	(%rsi,%rdi), %rbx
	.loc 1 182 0
	movzbl	13(%rbx), %eax
	cmpl	$3, %eax
	jg	.L124
	cmpl	$2, %eax
	jl	.L128
.L122:
	.loc 1 198 0
	movzbl	15(%rbx), %eax
	cmpl	%ebp, %eax
	jl	.L129
	.loc 1 206 0
	movb	%bpl, 15(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L124:
	.loc 1 182 0
	cmpl	$5, %eax
.L125:
	je	.L122
	.loc 1 206 0
	movb	%bpl, 15(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L129:
	.loc 1 200 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	.loc 1 201 0
	movq	%rbx, %rdi
	.loc 1 200 0
	movq	%rax, 16(%rbx)
	movq	%rax, %rsi
	.loc 1 201 0
	call	pit_irq_timer_update
	.loc 1 206 0
	movb	%bpl, 15(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L128:
	.loc 1 182 0
	decl	%eax
	jmp	.L125
.LFE198:
	.size	pit_set_gate, .-pit_set_gate
	.p2align 4,,15
	.type	pit_irq_timer, @function
pit_irq_timer:
.LFB207:
	.loc 1 386 0
	.loc 1 389 0
	movq	24(%rdi), %rsi
	jmp	pit_irq_timer_update
.LFE207:
	.size	pit_irq_timer, .-pit_irq_timer
	.p2align 4,,15
	.type	pit_save, @function
pit_save:
.LFB208:
	.loc 1 393 0
	pushq	%r12
.LCFI16:
	movl	$2, %r12d
	pushq	%rbp
.LCFI17:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI18:
	movq	%rsi, %rbx
	.p2align 4,,7
.L147:
	.loc 1 400 0
	movl	(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBB21:
.LBB22:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 37 0
	movzwl	4(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be16
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 2 42 0
	movzbl	6(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	movzbl	7(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	movzbl	8(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	movzbl	9(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	movzbl	10(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	movzbl	11(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	movzbl	12(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	movzbl	13(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	movzbl	14(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	movzbl	15(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE42:
.LBE41:
	.loc 1 412 0
	movq	16(%rbx), %rsi
	movq	%rbp, %rdi
	call	qemu_put_be64
	.loc 1 413 0
	cmpq	$0, 32(%rbx)
	jne	.L150
.L134:
	addq	$48, %rbx
	decl	%r12d
	jns	.L147
	.loc 1 398 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.p2align 4,,1
	ret
	.p2align 4,,7
.L150:
	.loc 1 414 0
	movq	24(%rbx), %rsi
	movq	%rbp, %rdi
	call	qemu_put_be64
	.loc 1 415 0
	movq	32(%rbx), %rsi
	movq	%rbp, %rdi
	call	qemu_put_timer
	jmp	.L134
.LFE208:
	.size	pit_save, .-pit_save
	.p2align 4,,15
	.type	pit_load, @function
pit_load:
.LFB209:
	.loc 1 421 0
	pushq	%r12
.LCFI19:
	.loc 1 426 0
	decl	%edx
	.loc 1 427 0
	movl	$-22, %eax
	.loc 1 421 0
	pushq	%rbp
.LCFI20:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI21:
	.loc 1 426 0
	jne	.L151
	movq	%rsi, %rbx
	movl	$2, %r12d
	.p2align 4,,7
.L168:
	.loc 1 431 0
	movq	%rbp, %rdi
	call	qemu_get_be32
.LBB43:
.LBB44:
	.loc 2 57 0
	movq	%rbp, %rdi
.LBE44:
.LBE43:
	.loc 1 431 0
	movl	%eax, (%rbx)
.LBB45:
.LBB46:
	.loc 2 57 0
	call	qemu_get_be16
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	.loc 2 62 0
	movq	%rbp, %rdi
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	.loc 2 57 0
	movw	%ax, 4(%rbx)
.LBE50:
.LBE49:
.LBB51:
.LBB52:
	.loc 2 62 0
	call	qemu_get_byte
.LBE52:
.LBE51:
.LBB53:
.LBB54:
	movq	%rbp, %rdi
.LBE54:
.LBE53:
.LBB55:
.LBB56:
	movb	%al, 6(%rbx)
.LBE56:
.LBE55:
.LBB57:
.LBB58:
	call	qemu_get_byte
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	movq	%rbp, %rdi
.LBE60:
.LBE59:
.LBB61:
.LBB62:
	movb	%al, 7(%rbx)
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	call	qemu_get_byte
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	movq	%rbp, %rdi
.LBE66:
.LBE65:
.LBB67:
.LBB68:
	movb	%al, 8(%rbx)
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	call	qemu_get_byte
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	movq	%rbp, %rdi
.LBE72:
.LBE71:
.LBB73:
.LBB74:
	movb	%al, 9(%rbx)
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	call	qemu_get_byte
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	movq	%rbp, %rdi
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	movb	%al, 10(%rbx)
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	call	qemu_get_byte
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	movq	%rbp, %rdi
.LBE84:
.LBE83:
.LBB85:
.LBB86:
	movb	%al, 11(%rbx)
.LBE86:
.LBE85:
.LBB87:
.LBB88:
	call	qemu_get_byte
.LBE88:
.LBE87:
.LBB89:
.LBB90:
	movq	%rbp, %rdi
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	movb	%al, 12(%rbx)
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	call	qemu_get_byte
.LBE94:
.LBE93:
.LBB95:
.LBB96:
	movq	%rbp, %rdi
.LBE96:
.LBE95:
.LBB97:
.LBB98:
	movb	%al, 13(%rbx)
.LBE98:
.LBE97:
.LBB99:
.LBB100:
	call	qemu_get_byte
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	movq	%rbp, %rdi
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	movb	%al, 14(%rbx)
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	call	qemu_get_byte
.LBE106:
.LBE105:
	.loc 1 443 0
	movq	%rbp, %rdi
.LBB107:
.LBB108:
	.loc 2 62 0
	movb	%al, 15(%rbx)
.LBE108:
.LBE107:
	.loc 1 443 0
	call	qemu_get_be64
	.loc 1 444 0
	cmpq	$0, 32(%rbx)
	.loc 1 443 0
	movq	%rax, 16(%rbx)
	.loc 1 444 0
	jne	.L171
.L155:
	addq	$48, %rbx
	decl	%r12d
	jns	.L168
	.loc 1 449 0
	xorl	%eax, %eax
.L151:
	.loc 1 450 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L171:
	.loc 1 445 0
	movq	%rbp, %rdi
	call	qemu_get_be64
	.loc 1 446 0
	movq	32(%rbx), %rsi
	.loc 1 445 0
	movq	%rax, 24(%rbx)
	.loc 1 446 0
	movq	%rbp, %rdi
	call	qemu_get_timer
	jmp	.L155
.LFE209:
	.size	pit_load, .-pit_load
	.p2align 4,,15
	.type	pit_reset, @function
pit_reset:
.LFB210:
	.loc 1 453 0
	pushq	%rbp
.LCFI22:
	.loc 1 458 0
	xorl	%ebp, %ebp
	.loc 1 453 0
	pushq	%rbx
.LCFI23:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI24:
	.p2align 4,,7
.L178:
	.loc 1 461 0
	cmpl	$2, %ebp
	.loc 1 460 0
	movb	$3, 13(%rbx)
	.loc 1 461 0
	setne	15(%rbx)
.LBB109:
.LBB110:
	.loc 1 231 0
	movq	vm_clock(%rip), %rdi
.LBE110:
.LBE109:
	.loc 1 458 0
	incl	%ebp
.LBB111:
.LBB112:
	.loc 1 231 0
	call	qemu_get_clock
	.loc 1 232 0
	movl	$65536, (%rbx)
	.loc 1 231 0
	movq	%rax, 16(%rbx)
	.loc 1 233 0
	movq	%rbx, %rdi
	.loc 1 231 0
	movq	%rax, %rsi
	addq	$48, %rbx
	.loc 1 233 0
	call	pit_irq_timer_update
.LBE112:
.LBE111:
	.loc 1 458 0
	cmpl	$2, %ebp
	jle	.L178
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE210:
	.size	pit_reset, .-pit_reset
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i8254"
	.text
	.p2align 4,,15
.globl pit_init
	.type	pit_init, @function
pit_init:
.LFB211:
	.loc 1 467 0
	pushq	%r12
.LCFI25:
	movl	%edi, %r12d
	.loc 1 473 0
	movl	$pit_state, %edx
	.loc 1 467 0
	pushq	%rbx
.LCFI26:
	movq	%rsi, %rbx
	.loc 1 473 0
	movl	$pit_irq_timer, %esi
	.loc 1 467 0
	subq	$8, %rsp
.LCFI27:
	.loc 1 473 0
	movq	vm_clock(%rip), %rdi
	call	qemu_new_timer
	.loc 1 476 0
	movl	$pit_state, %r9d
	movl	$pit_load, %r8d
	movl	$pit_save, %ecx
	movl	$1, %edx
	movl	%r12d, %esi
	movl	$.LC0, %edi
	.loc 1 474 0
	movq	%rbx, pit_state+40(%rip)
	.loc 1 473 0
	movq	%rax, pit_state+32(%rip)
	.loc 1 476 0
	call	register_savevm
	.loc 1 478 0
	movl	$pit_state, %esi
	movl	$pit_reset, %edi
	call	qemu_register_reset
	.loc 1 479 0
	movl	%r12d, %edi
	movl	$pit_state, %r8d
	movl	$pit_ioport_write, %ecx
	movl	$1, %edx
	movl	$4, %esi
	call	register_ioport_write
	.loc 1 480 0
	movl	%r12d, %edi
	movl	$pit_state, %r8d
	movl	$pit_ioport_read, %ecx
	movl	$1, %edx
	movl	$3, %esi
	call	register_ioport_read
	.loc 1 482 0
	movl	$pit_state, %edi
	call	pit_reset
	.loc 1 485 0
	addq	$8, %rsp
	movl	$pit_state, %eax
	popq	%rbx
	popq	%r12
	ret
.LFE211:
	.size	pit_init, .-pit_init
	.local	pit_state
	.comm	pit_state,144,32
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.byte	0x4
	.long	.LCFI0-.LFB194
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI1-.LFB195
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI2-.LFB203
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI3-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI5-.LFB206
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI12-.LFB204
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI15-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI16-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI19-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI22-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI25-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE30:
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.byte	0x4
	.long	.LCFI0-.LFB194
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI1-.LFB195
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
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI2-.LFB203
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI3-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI5-.LFB206
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI12-.LFB204
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI15-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI16-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI19-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI22-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI25-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE31:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/sys/types.h"
	.file 5 "../qemu-common.h"
	.file 6 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 7 "../argos-tag.h"
	.file 8 "../argos.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "../cpu-all.h"
	.file 14 "../qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xf99
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF124
	.byte	0x1
	.long	.LASF125
	.long	.LASF126
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xc6
	.long	0x4d
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x281
	.long	.LASF44
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF14
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF15
	.byte	0xa
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0xa
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0xa
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0xa
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0xa
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0xa
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0xa
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0xa
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0xa
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0xa
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0xa
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0xa
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0xa
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0xa
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0xa
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0xa
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0xa
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0xa
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0xa
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0xa
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0xa
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0xa
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0xa
	.byte	0xb4
	.uleb128 0x7
	.long	0x2bf
	.long	.LASF45
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x288
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x2db
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x281
	.uleb128 0xb
	.long	0x2f1
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0x3
	.long	.LASF53
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF55
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x8
	.byte	0x2f
	.long	0x307
	.uleb128 0x2
	.long	.LASF57
	.byte	0x8
	.byte	0x34
	.long	0x307
	.uleb128 0x7
	.long	0x371
	.long	.LASF58
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.uleb128 0xa
	.long	.LASF59
	.byte	0x7
	.byte	0x38
	.long	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0x39
	.long	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x3d
	.long	0x348
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x6
	.byte	0x8
	.long	0x388
	.uleb128 0xd
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF62
	.byte	0x5
	.byte	0x73
	.long	0x398
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x77
	.long	0x3a9
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.uleb128 0x2
	.long	.LASF64
	.byte	0x5
	.byte	0x7b
	.long	0x3ba
	.uleb128 0x6
	.byte	0x8
	.long	0x3c0
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x38d
	.uleb128 0x2
	.long	.LASF66
	.byte	0x6
	.byte	0x34
	.long	0x3d7
	.uleb128 0x7
	.long	0x3f2
	.long	.LASF66
	.byte	0x90
	.byte	0x6
	.byte	0x34
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1
	.byte	0x39
	.long	0x501
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF68
	.byte	0xe
	.byte	0x6
	.long	0x3fd
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.uleb128 0x7
	.long	0x4f0
	.long	.LASF69
	.byte	0x30
	.byte	0x1
	.byte	0x24
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.byte	0x25
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x26
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x27
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x28
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x29
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x2a
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x2b
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.byte	0x2c
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.byte	0x2d
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.byte	0x2e
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xf
	.string	"bcd"
	.byte	0x1
	.byte	0x2f
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.byte	0x30
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.byte	0x31
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.byte	0x33
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF83
	.byte	0x1
	.byte	0x34
	.long	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"irq"
	.byte	0x1
	.byte	0x35
	.long	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x39e
	.uleb128 0x2
	.long	.LASF69
	.byte	0x1
	.byte	0x36
	.long	0x403
	.uleb128 0xb
	.long	0x511
	.long	0x4f6
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x10
	.long	0x557
	.long	.LASF85
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x3f
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x40
	.long	0x557
	.byte	0x1
	.byte	0x53
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0x42
	.long	0x312
	.byte	0x1
	.byte	0x51
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f6
	.uleb128 0x10
	.long	0x5b0
	.long	.LASF86
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x3f
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x59
	.long	0x557
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0x59
	.long	0xa3
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0x5b
	.long	0x312
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0x5c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.long	0x606
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0x3f
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"pit"
	.byte	0x1
	.byte	0x78
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0x78
	.long	0xa3
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.long	0x557
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3cc
	.uleb128 0x15
	.long	0x653
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x3f
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"pit"
	.byte	0x1
	.byte	0xd1
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xd1
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xd3
	.long	0x557
	.byte	0x0
	.uleb128 0x15
	.long	0x69a
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	0x3f
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"pit"
	.byte	0x1
	.byte	0xd7
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xd7
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xd9
	.long	0x557
	.byte	0x0
	.uleb128 0x15
	.long	0x6e1
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0x3f
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"pit"
	.byte	0x1
	.byte	0xdd
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xdd
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xdf
	.long	0x557
	.byte	0x0
	.uleb128 0x17
	.long	0x70b
	.long	.LASF93
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xed
	.long	0x557
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x18
	.long	0x78b
	.long	.LASF94
	.byte	0x1
	.value	0x137
	.byte	0x1
	.long	0x307
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x136
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.value	0x136
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.value	0x136
	.long	0x37c
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.string	"pit"
	.byte	0x1
	.value	0x138
	.long	0x606
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x139
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x1
	.value	0x139
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x13a
	.long	0x557
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1e
	.long	0x81f
	.long	.LASF97
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x16b
	.long	0x557
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.value	0x16b
	.long	0xa3
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.long	.LASF98
	.byte	0x1
	.value	0x16d
	.long	0xa3
	.uleb128 0x1d
	.long	.LASF99
	.byte	0x1
	.value	0x16e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	0x81f
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x21
	.long	0x830
	.uleb128 0x21
	.long	0x839
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x23
	.long	0x844
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.long	0x84d
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.long	0x858
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	0x863
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x86f
	.long	.LASF100
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	0xa3
	.byte	0x1
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.byte	0x7f
	.long	0x557
	.uleb128 0x27
	.long	.LASF87
	.byte	0x1
	.byte	0x80
	.long	0xa3
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.byte	0x82
	.long	0x312
	.uleb128 0x28
	.long	.LASF101
	.byte	0x1
	.byte	0x82
	.long	0x312
	.uleb128 0x28
	.long	.LASF102
	.byte	0x1
	.byte	0x82
	.long	0x312
	.uleb128 0x28
	.long	.LASF103
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x0
	.uleb128 0x17
	.long	0x953
	.long	.LASF104
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0xf5
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF96
	.byte	0x1
	.byte	0xf5
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xf5
	.long	0x307
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.string	"pit"
	.byte	0x1
	.byte	0xf7
	.long	0x606
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.byte	0xf8
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF105
	.byte	0x1
	.byte	0xf8
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xf9
	.long	0x557
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	0x90a
	.long	0x953
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x21
	.long	0x960
	.uleb128 0x2a
	.long	0x969
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	0x930
	.long	0x953
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x21
	.long	0x960
	.uleb128 0x2a
	.long	0x969
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x20
	.long	0x953
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x21
	.long	0x960
	.uleb128 0x2a
	.long	0x969
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x975
	.long	.LASF106
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.byte	0xe3
	.long	0x557
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.byte	0xe3
	.long	0x3f
	.byte	0x0
	.uleb128 0x2c
	.long	0x9c7
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"pit"
	.byte	0x1
	.byte	0xb2
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xb4
	.long	0x557
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1e
	.long	0x9ff
	.long	.LASF108
	.byte	0x1
	.value	0x182
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x181
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x183
	.long	0x557
	.byte	0x0
	.uleb128 0x1e
	.long	0xbe5
	.long	.LASF109
	.byte	0x1
	.value	0x189
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.value	0x188
	.long	0x3c6
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x188
	.long	0x9b
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"pit"
	.byte	0x1
	.value	0x18a
	.long	0x606
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x18b
	.long	0x557
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x18c
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0xa80
	.long	0xbe5
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x21
	.long	0xbf2
	.uleb128 0x21
	.long	0xbfb
	.byte	0x0
	.uleb128 0x29
	.long	0xaa4
	.long	0xc11
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xac8
	.long	0xc11
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xaec
	.long	0xc11
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xb10
	.long	0xc11
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xb34
	.long	0xc11
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xb58
	.long	0xc11
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xb7c
	.long	0xc11
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xba0
	.long	0xc11
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x29
	.long	0xbc4
	.long	0xc11
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.uleb128 0x20
	.long	0xc11
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x21
	.long	0xc1e
	.uleb128 0x21
	.long	0xc27
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xc06
	.long	.LASF110
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"f"
	.byte	0x2
	.byte	0x23
	.long	0x3c6
	.uleb128 0x26
	.string	"pv"
	.byte	0x2
	.byte	0x23
	.long	0xc06
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc0c
	.uleb128 0xd
	.long	0x2fc
	.uleb128 0x2b
	.long	0xc32
	.long	.LASF111
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x3c6
	.uleb128 0x26
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0x382
	.byte	0x0
	.uleb128 0x18
	.long	0xe28
	.long	.LASF112
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	0x3f
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"f"
	.byte	0x1
	.value	0x1a4
	.long	0x3c6
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x1a4
	.long	0x9b
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF113
	.byte	0x1
	.value	0x1a4
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.string	"pit"
	.byte	0x1
	.value	0x1a6
	.long	0x606
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1a7
	.long	0x557
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1a8
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0xcc3
	.long	0xe28
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x21
	.long	0xe35
	.uleb128 0x21
	.long	0xe3e
	.byte	0x0
	.uleb128 0x29
	.long	0xce7
	.long	0xe4f
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xd0b
	.long	0xe4f
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xd2f
	.long	0xe4f
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xd53
	.long	0xe4f
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xd77
	.long	0xe4f
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xd9b
	.long	0xe4f
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xdbf
	.long	0xe4f
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xde3
	.long	0xe4f
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x29
	.long	0xe07
	.long	0xe4f
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.uleb128 0x20
	.long	0xe4f
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x21
	.long	0xe5c
	.uleb128 0x21
	.long	0xe65
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xe49
	.long	.LASF114
	.byte	0x2
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"f"
	.byte	0x2
	.byte	0x37
	.long	0x3c6
	.uleb128 0x26
	.string	"pv"
	.byte	0x2
	.byte	0x37
	.long	0xe49
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0x2b
	.long	0xe70
	.long	.LASF115
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x3c6
	.uleb128 0x26
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0xe70
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0x1e
	.long	0xee8
	.long	.LASF116
	.byte	0x1
	.value	0x1c5
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x1c4
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"pit"
	.byte	0x1
	.value	0x1c6
	.long	0x606
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1c7
	.long	0x557
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1c8
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.long	0x953
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x21
	.long	0x960
	.uleb128 0x21
	.long	0x969
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0xf3f
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0x606
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x1d2
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"irq"
	.byte	0x1
	.value	0x1d2
	.long	0x3af
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"pit"
	.byte	0x1
	.value	0x1d4
	.long	0x606
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1d5
	.long	0x557
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF118
	.byte	0x9
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF119
	.byte	0x9
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF120
	.byte	0xd
	.value	0x376
	.long	0xe70
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF121
	.byte	0xe
	.byte	0x12
	.long	0xf74
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x3f2
	.uleb128 0x2e
	.long	.LASF122
	.byte	0xe
	.byte	0x1c
	.long	0xa3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.long	.LASF123
	.byte	0x1
	.byte	0x3c
	.long	0x3cc
	.byte	0x9
	.byte	0x3
	.quad	pit_state
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x78
	.value	0x2
	.long	.Ldebug_info0
	.long	0xf9d
	.long	0x5b0
	.string	"pit_get_out"
	.long	0x60c
	.string	"pit_get_gate"
	.long	0x653
	.string	"pit_get_initial_count"
	.long	0x69a
	.string	"pit_get_mode"
	.long	0x975
	.string	"pit_set_gate"
	.long	0xee8
	.string	"pit_init"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF66:
	.string	"PITState"
.LASF9:
	.string	"size_t"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF75:
	.string	"read_state"
.LASF23:
	.string	"_IO_save_base"
.LASF82:
	.string	"next_transition_time"
.LASF31:
	.string	"_cur_column"
.LASF81:
	.string	"count_load_time"
.LASF77:
	.string	"write_latch"
.LASF91:
	.string	"pit_get_initial_count"
.LASF41:
	.string	"_mode"
.LASF101:
	.string	"next_time"
.LASF83:
	.string	"irq_timer"
.LASF2:
	.string	"long int"
.LASF104:
	.string	"pit_ioport_write"
.LASF45:
	.string	"_IO_marker"
.LASF99:
	.string	"irq_level"
.LASF60:
	.string	"netidx"
.LASF95:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF113:
	.string	"version_id"
.LASF65:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF79:
	.string	"mode"
.LASF44:
	.string	"_IO_FILE"
.LASF116:
	.string	"pit_reset"
.LASF6:
	.string	"unsigned char"
.LASF61:
	.string	"argos_rtag_t"
.LASF58:
	.string	"argos_rtag"
.LASF107:
	.string	"pit_set_gate"
.LASF90:
	.string	"pit_get_gate"
.LASF73:
	.string	"status_latched"
.LASF114:
	.string	"qemu_get_be16s"
.LASF43:
	.string	"_IO_lock_t"
.LASF62:
	.string	"QEMUFile"
.LASF110:
	.string	"qemu_put_be16s"
.LASF56:
	.string	"argos_paddr_t"
.LASF67:
	.string	"channels"
.LASF15:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"double"
.LASF48:
	.string	"_pos"
.LASF118:
	.string	"stdin"
.LASF26:
	.string	"_markers"
.LASF76:
	.string	"write_state"
.LASF69:
	.string	"PITChannelState"
.LASF42:
	.string	"_unused2"
.LASF74:
	.string	"status"
.LASF29:
	.string	"_flags2"
.LASF88:
	.string	"channel"
.LASF17:
	.string	"_IO_read_base"
.LASF97:
	.string	"pit_irq_timer_update"
.LASF87:
	.string	"current_time"
.LASF106:
	.string	"pit_load_count"
.LASF111:
	.string	"qemu_put_8s"
.LASF30:
	.string	"_old_offset"
.LASF85:
	.string	"pit_get_count"
.LASF3:
	.string	"long long int"
.LASF84:
	.string	"counter"
.LASF78:
	.string	"rw_mode"
.LASF20:
	.string	"_IO_write_end"
.LASF72:
	.string	"count_latched"
.LASF126:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF109:
	.string	"pit_save"
.LASF70:
	.string	"count"
.LASF96:
	.string	"addr"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF124:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF115:
	.string	"qemu_get_8s"
.LASF57:
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
.LASF14:
	.string	"_flags"
.LASF63:
	.string	"QEMUTimer"
.LASF55:
	.string	"long double"
.LASF80:
	.string	"gate"
.LASF35:
	.string	"_offset"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF93:
	.string	"pit_latch_count"
.LASF50:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF68:
	.string	"QEMUClock"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF71:
	.string	"latched_count"
.LASF100:
	.string	"pit_get_next_transition_time"
.LASF121:
	.string	"vm_clock"
.LASF108:
	.string	"pit_irq_timer"
.LASF125:
	.string	"/home/remco/Projects/Argos/src/hw/i8254.c"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF92:
	.string	"pit_get_mode"
.LASF11:
	.string	"__off64_t"
.LASF22:
	.string	"_IO_buf_end"
.LASF123:
	.string	"pit_state"
.LASF8:
	.string	"short int"
.LASF52:
	.string	"uint64_t"
.LASF120:
	.string	"phys_ram_dirty"
.LASF32:
	.string	"_vtable_offset"
.LASF117:
	.string	"pit_init"
.LASF122:
	.string	"ticks_per_sec"
.LASF16:
	.string	"_IO_read_end"
.LASF51:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF103:
	.string	"period2"
.LASF89:
	.string	"pit_get_out"
.LASF53:
	.string	"float"
.LASF119:
	.string	"stdout"
.LASF102:
	.string	"base"
.LASF19:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"int64_t"
.LASF105:
	.string	"access"
.LASF98:
	.string	"expire_time"
.LASF112:
	.string	"pit_load"
.LASF59:
	.string	"origin"
.LASF94:
	.string	"pit_ioport_read"
.LASF86:
	.string	"pit_get_out1"
.LASF64:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
