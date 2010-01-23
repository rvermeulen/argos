	.file	"apic.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 16
	.type	ioapic_mem_write, @object
	.size	ioapic_mem_write, 24
ioapic_mem_write:
	.quad	ioapic_mem_writel
	.quad	ioapic_mem_writel
	.quad	ioapic_mem_writel
	.align 16
	.type	ioapic_mem_read, @object
	.size	ioapic_mem_read, 24
ioapic_mem_read:
	.quad	ioapic_mem_readl
	.quad	ioapic_mem_readl
	.quad	ioapic_mem_readl
	.local	last_apic_id
	.comm	last_apic_id,4,4
	.align 16
	.type	apic_mem_write, @object
	.size	apic_mem_write, 24
apic_mem_write:
	.quad	apic_mem_writeb
	.quad	apic_mem_writew
	.quad	apic_mem_writel
	.align 16
	.type	apic_mem_read, @object
	.size	apic_mem_read, 24
apic_mem_read:
	.quad	apic_mem_readb
	.quad	apic_mem_readw
	.quad	apic_mem_readl
	.text
	.p2align 4,,15
.globl cpu_set_apic_base
	.type	cpu_set_apic_base, @function
cpu_set_apic_base:
.LFB199:
	.file 1 "/home/remco/Projects/Argos/src/hw/apic.c"
	.loc 1 241 0
	.loc 1 242 0
	movq	47120(%rdi), %rcx
	.loc 1 246 0
	movl	%esi, %edx
	andl	$-4096, %edx
	movl	8(%rcx), %eax
	andl	$2304, %eax
	orl	%eax, %edx
	.loc 1 249 0
	testl	$2048, %esi 
	jne	.L3
	.loc 1 250 0
	andb	$247, %dh
	movl	%edx, 8(%rcx)
	.loc 1 251 0
	andl	$-513, 47036(%rdi)
	.loc 1 252 0
	andl	$-257, 16(%rcx)
	ret
	.p2align 4,,7
.L3:
	movl	%edx, 8(%rcx)
	ret
.LFE199:
	.size	cpu_set_apic_base, .-cpu_set_apic_base
	.p2align 4,,15
.globl cpu_get_apic_base
	.type	cpu_get_apic_base, @function
cpu_get_apic_base:
.LFB200:
	.loc 1 257 0
	.loc 1 258 0
	movq	47120(%rdi), %rax
	.loc 1 262 0
	mov	8(%rax), %eax
	.loc 1 263 0
	ret
.LFE200:
	.size	cpu_get_apic_base, .-cpu_get_apic_base
	.p2align 4,,15
.globl cpu_get_apic_tpr
	.type	cpu_get_apic_tpr, @function
cpu_get_apic_tpr:
.LFB202:
	.loc 1 273 0
	.loc 1 274 0
	movq	47120(%rdi), %rax
	.loc 1 275 0
	movzbl	14(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	.loc 1 276 0
	ret
.LFE202:
	.size	cpu_get_apic_tpr, .-cpu_get_apic_tpr
	.p2align 4,,15
	.type	get_highest_priority_int, @function
get_highest_priority_int:
.LFB203:
	.loc 1 280 0
	.loc 1 282 0
	movl	$7, %edx
	.p2align 4,,7
.L17:
	.loc 1 283 0
	movslq	%edx,%rax
	movl	(%rdi,%rax,4), %eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 282 0
	decl	%edx
	jns	.L17
	.loc 1 287 0
	movl	$-1, %eax
	.loc 1 288 0
	ret
.L20:
	.loc 1 284 0
	movl	%edx, %ecx
.LBB2:
.LBB3:
	.loc 1 110 0
	xorl	%edx, %edx
.LBE3:
.LBE2:
	.loc 1 284 0
	sall	$5, %ecx
.LBB4:
.LBB5:
	.loc 1 116 0
	cmpl	$65535, %eax
	ja	.L21
.L12:
	.loc 1 118 0
	cmpl	$255, %eax
	jbe	.L13
	.loc 1 119 0
	shrl	$8, %eax
	addl	$8, %edx
.L13:
	.loc 1 120 0
	cmpl	$15, %eax
	jbe	.L14
	.loc 1 121 0
	shrl	$4, %eax
	addl	$4, %edx
.L14:
	.loc 1 122 0
	cmpl	$3, %eax
	jbe	.L15
	.loc 1 123 0
	shrl	$2, %eax
	addl	$2, %edx
.L15:
	shrl	%eax
	addl	%edx, %eax
.LBE5:
.LBE4:
	.loc 1 109 0
	leal	(%rcx,%rax), %eax
	ret
.L21:
.LBB6:
.LBB7:
	.loc 1 117 0
	shrl	$16, %eax
	movb	$16, %dl
	jmp	.L12
.LBE7:
.LBE6:
.LFE203:
	.size	get_highest_priority_int, .-get_highest_priority_int
	.p2align 4,,15
	.type	apic_get_ppr, @function
apic_get_ppr:
.LFB204:
	.loc 1 291 0
	movq	%rbp, -8(%rsp)
.LCFI0:
	movq	%rbx, -16(%rsp)
.LCFI1:
	subq	$16, %rsp
.LCFI2:
	.loc 1 294 0
	movzbl	14(%rdi), %ebx
	.loc 1 291 0
	movq	%rdi, %rbp
	.loc 1 295 0
	leaq	24(%rdi), %rdi
	call	get_highest_priority_int
	movl	%eax, %edx
	.loc 1 294 0
	shrb	$4, %bl
	.loc 1 297 0
	testl	%eax, %eax
	movl	$0, %eax
	cmovs	%eax, %edx
	.loc 1 294 0
	movzbl	%bl, %ebx
	.loc 1 298 0
	sarl	$4, %edx
	.loc 1 299 0
	cmpl	%edx, %ebx
	jl	.L24
	.loc 1 300 0
	movzbl	14(%rbp), %eax
	.loc 1 304 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	addq	$16, %rsp
	ret
	.p2align 4,,7
.L24:
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 302 0
	movl	%edx, %eax
	sall	$4, %eax
	.loc 1 304 0
	addq	$16, %rsp
	ret
.LFE204:
	.size	apic_get_ppr, .-apic_get_ppr
	.p2align 4,,15
	.type	apic_update_irq, @function
apic_update_irq:
.LFB206:
	.loc 1 314 0
	movq	%rbx, -16(%rsp)
.LCFI3:
	movq	%rbp, -8(%rsp)
.LCFI4:
	subq	$24, %rsp
.LCFI5:
	.loc 1 316 0
	testb	$1, 17(%rdi)
	.loc 1 314 0
	movq	%rdi, %rbx
	.loc 1 316 0
	jne	.L30
.L26:
	.loc 1 325 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L30:
	.loc 1 318 0
	leaq	88(%rdi), %rdi
	call	get_highest_priority_int
	.loc 1 319 0
	testl	%eax, %eax
	.loc 1 318 0
	movl	%eax, %ebp
	.loc 1 319 0
	js	.L26
	.loc 1 321 0
	movq	%rbx, %rdi
	call	apic_get_ppr
	.loc 1 322 0
	testl	%eax, %eax
	je	.L29
	andl	$240, %ebp
	andl	$240, %eax
	cmpl	%eax, %ebp
	jle	.L26
.L29:
	.loc 1 324 0
	movq	(%rbx), %rdi
	.loc 1 325 0
	movq	16(%rsp), %rbp
	.loc 1 324 0
	movl	$2, %esi
	.loc 1 325 0
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.loc 1 324 0
	jmp	cpu_interrupt
.LFE206:
	.size	apic_update_irq, .-apic_update_irq
	.p2align 4,,15
	.type	apic_set_irq, @function
apic_set_irq:
.LFB207:
	.loc 1 328 0
	.loc 1 328 0
	movl	%esi, %ecx
.LBB8:
.LBB9:
	.loc 1 156 0
	movl	%esi, %eax
	.loc 1 157 0
	movl	$1, %esi
	andl	$31, %ecx
	.loc 1 156 0
	sarl	$5, %eax
	.loc 1 157 0
	sall	%cl, %esi
	.loc 1 158 0
	movslq	%eax,%rcx
	orl	%esi, 88(%rdi,%rcx,4)
.LBE9:
.LBE8:
	.loc 1 330 0
	testl	%edx, %edx
	je	.L33
.LBB10:
.LBB11:
	.loc 1 158 0
	orl	%esi, 56(%rdi,%rcx,4)
.LBE11:
.LBE10:
	.loc 1 334 0
	jmp	apic_update_irq
	.p2align 4,,7
.L33:
.LBB12:
.LBB13:
	.loc 1 166 0
	movl	%esi, %eax
	notl	%eax
	andl	%eax, 56(%rdi,%rcx,4)
.LBE13:
.LBE12:
	.loc 1 334 0
	jmp	apic_update_irq
.LFE207:
	.size	apic_set_irq, .-apic_set_irq
	.p2align 4,,15
.globl cpu_set_apic_tpr
	.type	cpu_set_apic_tpr, @function
cpu_set_apic_tpr:
.LFB201:
	.loc 1 266 0
	.loc 1 267 0
	movq	47120(%rdi), %rdi
	.loc 1 268 0
	sall	$4, %esi
	movb	%sil, 14(%rdi)
	.loc 1 269 0
	jmp	apic_update_irq
.LFE201:
	.size	cpu_set_apic_tpr, .-cpu_set_apic_tpr
	.p2align 4,,15
	.type	apic_init_ipi, @function
apic_init_ipi:
.LFB210:
	.loc 1 384 0
	.loc 1 387 0
	movb	$0, 14(%rdi)
	.loc 1 388 0
	movl	$255, 16(%rdi)
	.loc 1 384 0
	movq	%rdi, %rsi
	.loc 1 389 0
	movb	$0, 20(%rdi)
	.loc 1 390 0
	movb	$15, 21(%rdi)
	.loc 1 391 0
	leaq	24(%rdi), %rdi
	cld
	xorl	%eax, %eax
	movl	$4, %ecx
	.loc 1 394 0
	xorl	%edx, %edx
	.loc 1 391 0
	rep
	stosq
	.loc 1 392 0
	leaq	56(%rsi), %rdi
	movb	$4, %cl
	rep
	stosq
	.loc 1 393 0
	leaq	88(%rsi), %rdi
	movb	$4, %cl
	rep
	stosq
	.p2align 4,,7
.L42:
	.loc 1 395 0
	movslq	%edx,%rax
	.loc 1 394 0
	incl	%edx
	cmpl	$5, %edx
	.loc 1 395 0
	movl	$65536, 120(%rsi,%rax,4)
	.loc 1 394 0
	jle	.L42
	.loc 1 396 0
	movl	$0, 144(%rsi)
	.loc 1 397 0
	movq	$0, 148(%rsi)
	.loc 1 398 0
	movl	$0, 156(%rsi)
	.loc 1 399 0
	movl	$0, 160(%rsi)
	.loc 1 400 0
	movl	$0, 164(%rsi)
	.loc 1 401 0
	movq	$0, 168(%rsi)
	.loc 1 402 0
	movq	$0, 176(%rsi)
	ret
.LFE210:
	.size	apic_init_ipi, .-apic_init_ipi
	.p2align 4,,15
	.type	apic_bus_deliver, @function
apic_bus_deliver:
.LFB198:
	.loc 1 191 0
	pushq	%r15
.LCFI6:
	.loc 1 194 0
	movzbl	%sil, %ecx
	.loc 1 191 0
	movl	%edx, %r10d
	movl	%r8d, %edx
	pushq	%r14
.LCFI7:
	pushq	%r13
.LCFI8:
	pushq	%r12
.LCFI9:
	pushq	%rbp
.LCFI10:
	pushq	%rbx
.LCFI11:
	subq	$8, %rsp
.LCFI12:
	.loc 1 194 0
	cmpl	$7, %ecx
	ja	.L45
	movl	$1, %esi
	salq	%cl, %rsi
	testb	$-107, %sil
	je	.L96
.LBB14:
	.loc 1 236 0
	xorl	%r9d, %r9d
	movzbl	%r8b, %r15d
	movzbl	%r10b, %r14d
	movq	%rdi, %r13
.L89:
	movl	(%r13), %ebp
	testl	%ebp, %ebp
	je	.L81
	movl	%r9d, %r12d
	xorl	%ebx, %ebx
	sall	$5, %r12d
	.p2align 4,,7
.L88:
	movl	%ebp, %eax
	movl	%ebx, %ecx
	sarl	%cl, %eax
	testb	$1, %al
	je	.L85
	leal	(%r12,%rbx), %eax
	cltq
	movq	local_apics(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L85
	movl	%r15d, %edx
	movl	%r14d, %esi
	movl	%r9d, (%rsp)
	call	apic_set_irq
	movl	(%rsp), %r9d
	.p2align 4,,7
.L85:
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L88
.L81:
	incl	%r9d
	addq	$4, %r13
	cmpl	$7, %r9d
	jle	.L89
.L45:
.LBE14:
	.loc 1 238 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L96:
.LBB15:
	.loc 1 200 0
	xorl	%r9d, %r9d
.LBE15:
	.loc 1 194 0
	testb	$2, %sil
	movq	%rdi, %rax
	jne	.L59
.LBB16:
	.loc 1 224 0
	xorl	%r14d, %r14d
.LBE16:
	.loc 1 194 0
	andl	$32, %esi
	movq	%rdi, %r13
	je	.L45
.L76:
.LBB17:
	.loc 1 224 0
	movl	(%r13), %ebp
	testl	%ebp, %ebp
	je	.L68
	movl	%r14d, %r12d
	xorl	%ebx, %ebx
	sall	$5, %r12d
	.p2align 4,,7
.L75:
	movl	%ebp, %eax
	movl	%ebx, %ecx
	sarl	%cl, %eax
	testb	$1, %al
	je	.L72
	leal	(%r12,%rbx), %eax
	cltq
	movq	local_apics(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L72
	call	apic_init_ipi
	.p2align 4,,7
.L72:
	incl	%ebx
	cmpl	$31, %ebx
	jle	.L75
.L68:
	incl	%r14d
	addq	$4, %r13
	cmpl	$7, %r14d
	jle	.L76
	.p2align 4,,2
	jmp	.L45
	.p2align 4,,7
.L59:
.LBE17:
.LBB18:
	.loc 1 201 0
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L97
	.loc 1 200 0
	incl	%r9d
	addq	$4, %rax
	cmpl	$7, %r9d
	jle	.L59
	jmp	.L45
.L97:
.LBB19:
	.loc 1 130 0
	movl	%ecx, %eax
.LBE19:
	.loc 1 202 0
	movl	%r9d, %esi
.LBB20:
.LBB21:
	.loc 1 131 0
	xorl	%ecx, %ecx
.LBE21:
.LBE20:
	.loc 1 202 0
	sall	$5, %esi
.LBB22:
.LBB23:
	.loc 1 139 0
	testw	%ax, %ax
	jne	.L54
	.loc 1 140 0
	shrl	$16, %eax
	movb	$16, %cl
.L54:
	.loc 1 141 0
	testb	%al, %al
	jne	.L55
	.loc 1 142 0
	shrl	$8, %eax
	addl	$8, %ecx
.L55:
	.loc 1 143 0
	testb	$15, %al
	jne	.L56
	.loc 1 144 0
	shrl	$4, %eax
	addl	$4, %ecx
.L56:
	.loc 1 145 0
	testb	$3, %al
	jne	.L57
	.loc 1 146 0
	shrl	$2, %eax
	addl	$2, %ecx
.L57:
	.loc 1 147 0
	testb	$1, %al
	jne	.L58
	.loc 1 148 0
	incl	%ecx
.L58:
.LBE23:
.LBE22:
	.loc 1 206 0
	movl	%esi, %eax
	addl	%ecx, %eax
	js	.L45
	.loc 1 207 0
	cltq
	movq	local_apics(,%rax,8), %rdi
	.loc 1 208 0
	testq	%rdi, %rdi
	je	.L45
.LBE18:
	.loc 1 238 0
	addq	$8, %rsp
.LBB24:
	.loc 1 209 0
	movzbl	%dl, %edx
	movzbl	%r10b, %esi
.LBE24:
	.loc 1 238 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
.LBB25:
	.loc 1 209 0
	jmp	apic_set_irq
.LBE25:
.LFE198:
	.size	apic_bus_deliver, .-apic_bus_deliver
	.p2align 4,,15
	.type	apic_get_delivery_bitmask, @function
apic_get_delivery_bitmask:
.LFB209:
	.loc 1 351 0
	.loc 1 355 0
	testb	%dl, %dl
	.loc 1 351 0
	movq	%rdi, %r8
	.loc 1 355 0
	jne	.L99
	.loc 1 356 0
	cmpb	$-1, %sil
	je	.L119
	.loc 1 359 0
	cld
	xorl	%eax, %eax
	movl	$4, %ecx
	rep
	stosq
.LBB26:
	.loc 1 154 0
	movzbl	%sil, %ecx
.LBB27:
	.loc 1 157 0
	movb	$1, %al
	.loc 1 156 0
	movl	%ecx, %edx
	.loc 1 157 0
	andl	$31, %ecx
	.loc 1 156 0
	sarl	$5, %edx
	.loc 1 157 0
	sall	%cl, %eax
	.loc 1 158 0
	movslq	%edx,%rdx
	orl	%eax, (%r8,%rdx,4)
.LBE27:
.LBE26:
	ret
.L99:
	.loc 1 364 0
	cld
	movl	$4, %ecx
	xorl	%eax, %eax
	movl	$240, %r9d
	rep
	stosq
	movl	$1, %r10d
	.loc 1 365 0
	xorl	%edi, %edi
	andl	%esi, %r9d
	jmp	.L115
	.p2align 4,,7
.L108:
	.loc 1 371 0
	testb	%dl, %dl
	jne	.L106
	.loc 1 372 0
	movzbl	20(%rax), %edx
	movl	%edx, %eax
	andl	$240, %eax
	cmpl	%eax, %r9d
	je	.L120
	.p2align 4,,7
.L106:
	.loc 1 365 0
	incl	%edi
	cmpl	$254, %edi
	jg	.L121
.L115:
	.loc 1 366 0
	movslq	%edi,%rax
	movq	local_apics(,%rax,8), %rax
	.loc 1 367 0
	testq	%rax, %rax
	je	.L106
	.loc 1 368 0
	movzbl	21(%rax), %edx
	cmpb	$15, %dl
	jne	.L108
	.loc 1 369 0
	testb	%sil, 20(%rax)
.L118:
	.loc 1 372 0
	je	.L106
.LBB28:
.LBB29:
	.loc 1 156 0
	movl	%edi, %eax
	.loc 1 157 0
	movl	%edi, %ecx
	movl	%r10d, %edx
	.loc 1 156 0
	sarl	$5, %eax
	.loc 1 157 0
	andl	$31, %ecx
.LBE29:
.LBE28:
	.loc 1 365 0
	incl	%edi
.LBB30:
.LBB31:
	.loc 1 158 0
	cltq
	.loc 1 157 0
	sall	%cl, %edx
	.loc 1 158 0
	orl	%edx, (%r8,%rax,4)
.LBE31:
.LBE30:
	.loc 1 365 0
	cmpl	$254, %edi
	jle	.L115
.L121:
	rep ; ret
.L120:
	.loc 1 372 0
	andl	%esi, %edx
	testb	$15, %dl
	jmp	.L118
.L119:
	.loc 1 357 0
	movq	$-1, (%rdi)
	movq	$-1, 8(%rdi)
	movq	$-1, 16(%rdi)
	movq	$-1, 24(%rdi)
	ret
.LFE209:
	.size	apic_get_delivery_bitmask, .-apic_get_delivery_bitmask
	.p2align 4,,15
.globl apic_get_interrupt
	.type	apic_get_interrupt, @function
apic_get_interrupt:
.LFB213:
	.loc 1 466 0
	movq	%rbx, -24(%rsp)
.LCFI13:
	movq	%rbp, -16(%rsp)
.LCFI14:
	.loc 1 473 0
	movl	$-1, %eax
	.loc 1 466 0
	movq	%r12, -8(%rsp)
.LCFI15:
	subq	$24, %rsp
.LCFI16:
	.loc 1 467 0
	movq	47120(%rdi), %rbx
	.loc 1 472 0
	testq	%rbx, %rbx
	je	.L122
	.loc 1 474 0
	testb	$1, 17(%rbx)
	je	.L122
	.loc 1 478 0
	leaq	88(%rbx), %r12
	movq	%r12, %rdi
	call	get_highest_priority_int
	movl	%eax, %ebp
	.loc 1 480 0
	movl	$-1, %eax
	.loc 1 479 0
	testl	%ebp, %ebp
	js	.L122
	.loc 1 481 0
	movzbl	14(%rbx), %eax
	testb	%al, %al
	je	.L126
	movzbl	%al, %eax
	cmpl	%ebp, %eax
	jge	.L129
.L126:
.LBB32:
.LBB33:
	.loc 1 165 0
	movl	%ebp, %ecx
	.loc 1 164 0
	movl	%ebp, %eax
	.loc 1 165 0
	movl	$1, %edx
	andl	$31, %ecx
	.loc 1 164 0
	sarl	$5, %eax
.LBE33:
.LBE32:
	.loc 1 485 0
	movq	%rbx, %rdi
.LBB34:
.LBB35:
	.loc 1 165 0
	sall	%cl, %edx
	.loc 1 166 0
	cltq
	movl	%edx, %ecx
	notl	%ecx
	andl	%ecx, (%r12,%rax,4)
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 1 158 0
	orl	%edx, 24(%rbx,%rax,4)
.LBE37:
.LBE36:
	.loc 1 485 0
	call	apic_update_irq
	.loc 1 486 0
	movl	%ebp, %eax
.L122:
	.loc 1 487 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L129:
	.loc 1 482 0
	movzbl	16(%rbx), %eax
	.loc 1 487 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE213:
	.size	apic_get_interrupt, .-apic_get_interrupt
	.p2align 4,,15
.globl apic_accept_pic_intr
	.type	apic_accept_pic_intr, @function
apic_accept_pic_intr:
.LFB214:
	.loc 1 490 0
	.loc 1 491 0
	movq	47120(%rdi), %rdx
	.loc 1 495 0
	movl	$-1, %eax
	.loc 1 494 0
	testq	%rdx, %rdx
	je	.L130
	.loc 1 499 0
	cmpb	$0, 12(%rdx)
	.loc 1 497 0
	movl	132(%rdx), %eax
	.loc 1 499 0
	jne	.L132
	testb	$8, 9(%rdx)
	je	.L133
	testl	$65536, %eax
	jne	.L132
	shrl	$8, %eax
	andl	$7, %eax
	cmpl	$7, %eax
	je	.L133
	.p2align 4,,7
.L132:
	.loc 1 505 0
	xorl	%eax, %eax
.L130:
	.loc 1 506 0
	rep ; ret
	.p2align 4,,7
.L133:
	.loc 1 503 0
	movl	$1, %eax
	ret
.LFE214:
	.size	apic_accept_pic_intr, .-apic_accept_pic_intr
	.p2align 4,,15
	.type	apic_timer_update, @function
apic_timer_update:
.LFB216:
	.loc 1 527 0
	movq	%rbp, -8(%rsp)
.LCFI17:
	movq	%rbx, -16(%rsp)
.LCFI18:
	subq	$24, %rsp
.LCFI19:
	.loc 1 530 0
	movl	120(%rdi), %eax
	.loc 1 527 0
	movq	%rdi, %rbp
	.loc 1 530 0
	testl	$65536, %eax
	jne	.L139
	.loc 1 531 0
	movq	168(%rdi), %r8
	movl	160(%rdi), %edi
	movq	%rsi, %r9
	subq	%r8, %r9
	movl	%edi, %ecx
	sarq	%cl, %r9
	.loc 1 533 0
	testl	$131072, %eax
	je	.L136
	.loc 1 534 0
	mov	164(%rbp), %eax
	xorl	%edx, %edx
	leaq	1(%rax), %r10
	movq	%r9, %rax
	divq	%r10
	movq	%rax, %r9
	incq	%r9
	imulq	%r10, %r9
.L137:
	.loc 1 540 0
	movl	%edi, %ecx
	.loc 1 541 0
	movq	184(%rbp), %rdi
	.loc 1 540 0
	salq	%cl, %r9
	leaq	(%r8,%r9), %rbx
	.loc 1 541 0
	movq	%rbx, %rsi
	call	qemu_mod_timer
	.loc 1 542 0
	movq	%rbx, 176(%rbp)
	.loc 1 547 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L136:
	.loc 1 536 0
	mov	164(%rbp), %eax
	cmpq	%r9, %rax
	jle	.L139
	.loc 1 538 0
	leaq	1(%rax), %r9
	jmp	.L137
	.p2align 4,,7
.L139:
	.loc 1 545 0
	movq	184(%rbp), %rdi
	.loc 1 547 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 545 0
	jmp	qemu_del_timer
.LFE216:
	.size	apic_timer_update, .-apic_timer_update
	.p2align 4,,15
	.type	apic_timer, @function
apic_timer:
.LFB217:
	.loc 1 550 0
	pushq	%rbx
.LCFI20:
	.loc 1 553 0
	movl	120(%rdi), %eax
	.loc 1 550 0
	movq	%rdi, %rbx
	.loc 1 553 0
	testl	$65536, %eax
	je	.L143
	.loc 1 556 0
	movq	176(%rbx), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	apic_timer_update
	.p2align 4,,7
.L143:
	.loc 1 554 0
	movzbl	%al,%esi
	xorl	%edx, %edx
	call	apic_set_irq
	.loc 1 556 0
	movq	176(%rbx), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	apic_timer_update
.LFE217:
	.size	apic_timer, .-apic_timer
	.p2align 4,,15
	.type	apic_mem_readb, @function
apic_mem_readb:
.LFB218:
	.loc 1 560 0
	.loc 1 562 0
	xorl	%eax, %eax
	ret
.LFE218:
	.size	apic_mem_readb, .-apic_mem_readb
	.p2align 4,,15
	.type	apic_mem_readw, @function
apic_mem_readw:
.LFB219:
	.loc 1 565 0
	.loc 1 567 0
	xorl	%eax, %eax
	ret
.LFE219:
	.size	apic_mem_readw, .-apic_mem_readw
	.p2align 4,,15
	.type	apic_mem_writeb, @function
apic_mem_writeb:
.LFB220:
	.loc 1 570 0
	.loc 1 570 0
	rep ; ret
.LFE220:
	.size	apic_mem_writeb, .-apic_mem_writeb
	.p2align 4,,15
	.type	apic_mem_writew, @function
apic_mem_writew:
.LFB221:
	.loc 1 574 0
	.loc 1 574 0
	rep ; ret
.LFE221:
	.size	apic_mem_writew, .-apic_mem_writew
	.p2align 4,,15
	.type	apic_mem_readl, @function
apic_mem_readl:
.LFB222:
	.loc 1 578 0
	.loc 1 584 0
	movq	cpu_single_env(%rip), %rdx
	.loc 1 586 0
	xorl	%eax, %eax
	.loc 1 578 0
	pushq	%rbx
.LCFI21:
	.loc 1 585 0
	testq	%rdx, %rdx
	je	.L148
	.loc 1 589 0
	shrq	$4, %rsi
	.loc 1 587 0
	movq	47120(%rdx), %rbx
	.loc 1 589 0
	movzbl	%sil,%edx
	.loc 1 590 0
	cmpl	$62, %edx
	ja	.L175
	mov	%edx, %eax
	jmp	*.L176(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L176:
	.quad	.L175
	.quad	.L175
	.quad	.L151
	.quad	.L152
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L153
	.quad	.L177
	.quad	.L156
	.quad	.L175
	.quad	.L175
	.quad	.L157
	.quad	.L158
	.quad	.L159
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L160
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L161
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L162
	.quad	.L163
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L165
	.quad	.L165
	.quad	.L166
	.quad	.L166
	.quad	.L166
	.quad	.L166
	.quad	.L166
	.quad	.L166
	.quad	.L167
	.quad	.L168
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L174
	.text
	.p2align 4,,7
.L175:
	.loc 1 645 0
	orl	$128, 144(%rbx)
.L177:
	.loc 1 646 0
	xorl	%eax, %eax
.L148:
	.loc 1 653 0
	popq	%rbx
	ret
.L174:
	.loc 1 642 0
	movl	156(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L151:
	.loc 1 592 0
	movzbl	12(%rbx), %eax
	.loc 1 608 0
	sall	$24, %eax
.L179:
	.loc 1 653 0
	popq	%rbx
	ret
.L152:
	popq	%rbx
	.loc 1 595 0
	movl	$327697, %eax
	.loc 1 653 0
	ret
.L153:
	.loc 1 598 0
	movzbl	14(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	.p2align 4,,2
	ret
.L156:
	.loc 1 605 0
	movq	%rbx, %rdi
	.p2align 4,,5
	call	apic_get_ppr
	.loc 1 653 0
	popq	%rbx
	.p2align 4,,3
	ret
.L157:
	.loc 1 608 0
	movzbl	20(%rbx), %eax
	sall	$24, %eax
	.p2align 4,,2
	jmp	.L179
.L158:
	.loc 1 611 0
	movzbl	21(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	.loc 1 611 0
	sall	$28, %eax
	.loc 1 653 0
	.p2align 4,,2
	ret
.L159:
	.loc 1 614 0
	movl	16(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L160:
	.loc 1 617 0
	movq	%rdx, %rax
	andl	$7, %eax
	movl	24(%rbx,%rax,4), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L161:
	.loc 1 620 0
	movq	%rdx, %rax
	andl	$7, %eax
	movl	56(%rbx,%rax,4), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L162:
	.loc 1 623 0
	movq	%rdx, %rax
	andl	$7, %eax
	movl	88(%rbx,%rax,4), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L163:
	.loc 1 626 0
	movl	144(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L165:
	.loc 1 630 0
	movq	%rdx, %rax
	andl	$1, %eax
	movl	148(%rbx,%rax,4), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L166:
	.loc 1 633 0
	movslq	%edx,%rax
	movl	-80(%rbx,%rax,4), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L167:
	.loc 1 636 0
	movl	164(%rbx), %eax
	.loc 1 653 0
	popq	%rbx
	ret
.L168:
.LBB38:
.LBB39:
	.loc 1 512 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %r8
	subq	168(%rbx), %r8
	movl	160(%rbx), %ecx
	sarq	%cl, %r8
	.loc 1 514 0
	movl	120(%rbx), %ecx
	andl	$131072, %ecx
	je	.L169
	.loc 1 516 0
	movl	164(%rbx), %ecx
	mov	%ecx, %eax
	leaq	1(%rax), %rdx
	movq	%r8, %rax
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
.LBE39:
.LBE38:
	.loc 1 653 0
	popq	%rbx
.LBB40:
.LBB41:
	.loc 1 516 0
	movl	%ecx, %eax
	subl	%edx, %eax
.LBE41:
.LBE40:
	.loc 1 653 0
	ret
.L169:
.LBB42:
.LBB43:
	.loc 1 518 0
	movl	164(%rbx), %eax
.LBE43:
.LBE42:
	.loc 1 653 0
	popq	%rbx
.LBB44:
.LBB45:
	.loc 1 518 0
	mov	%eax, %edx
	.loc 1 519 0
	subl	%r8d, %eax
	cmpq	%r8, %rdx
	cmovle	%ecx, %eax
.LBE45:
.LBE44:
	.loc 1 653 0
	ret
.LFE222:
	.size	apic_mem_readl, .-apic_mem_readl
	.p2align 4,,15
	.type	apic_mem_writel, @function
apic_mem_writel:
.LFB223:
	.loc 1 656 0
	movq	%rbx, -40(%rsp)
.LCFI22:
	movq	%rbp, -32(%rsp)
.LCFI23:
	movl	%edx, %ecx
	movq	%r12, -24(%rsp)
.LCFI24:
	movq	%r13, -16(%rsp)
.LCFI25:
	movq	%r14, -8(%rsp)
.LCFI26:
	subq	$72, %rsp
.LCFI27:
	.loc 1 661 0
	movq	cpu_single_env(%rip), %rax
	.loc 1 662 0
	testq	%rax, %rax
	je	.L180
	.loc 1 670 0
	shrq	$4, %rsi
	.loc 1 664 0
	movq	47120(%rax), %rbx
	.loc 1 670 0
	movzbl	%sil,%edx
	.loc 1 671 0
	cmpl	$62, %edx
	jbe	.L261
.L251:
	.loc 1 735 0
	orl	$128, 144(%rbx)
.L180:
	.loc 1 738 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	movq	56(%rsp), %r13
	movq	64(%rsp), %r14
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L261:
	.loc 1 671 0
	mov	%edx, %eax
	jmp	*.L252(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L252:
	.quad	.L251
	.quad	.L251
	.quad	.L183
	.quad	.L180
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L185
	.quad	.L180
	.quad	.L180
	.quad	.L188
	.quad	.L251
	.quad	.L192
	.quad	.L193
	.quad	.L194
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L199
	.quad	.L245
	.quad	.L246
	.quad	.L246
	.quad	.L246
	.quad	.L246
	.quad	.L246
	.quad	.L246
	.quad	.L248
	.quad	.L180
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L250
	.text
.L250:
.LBB46:
	.loc 1 729 0
	movl	%ecx, %eax
	.loc 1 730 0
	andl	$3, %ecx
	.loc 1 729 0
	andl	$11, %eax
	movl	%eax, 156(%rbx)
	.loc 1 730 0
	shrl	%eax
	andl	$4, %eax
	orl	%ecx, %eax
	.loc 1 731 0
	incl	%eax
	andl	$7, %eax
	movl	%eax, 160(%rbx)
	jmp	.L180
.L183:
.LBE46:
	.loc 1 673 0
	shrl	$24, %ecx
	movb	%cl, 12(%rbx)
	jmp	.L180
.L185:
	.loc 1 678 0
	movb	%cl, 14(%rbx)
.L260:
	.loc 1 695 0
	movq	%rbx, %rdi
	call	apic_update_irq
	jmp	.L180
.L188:
.LBB47:
.LBB48:
	.loc 1 340 0
	leaq	24(%rbx), %rbp
	movq	%rbp, %rdi
	call	get_highest_priority_int
	.loc 1 341 0
	testl	%eax, %eax
	.loc 1 340 0
	movl	%eax, %ecx
	.loc 1 341 0
	js	.L180
.LBB49:
.LBB50:
	.loc 1 164 0
	movl	%eax, %edx
	.loc 1 165 0
	andl	$31, %ecx
	movl	$-2, %eax
	.loc 1 164 0
	sarl	$5, %edx
	.loc 1 166 0
	roll	%cl, %eax
	movslq	%edx,%rdx
	andl	%eax, (%rbp,%rdx,4)
	jmp	.L260
.L192:
.LBE50:
.LBE49:
.LBE48:
.LBE47:
	.loc 1 688 0
	shrl	$24, %ecx
	movb	%cl, 20(%rbx)
	jmp	.L180
.L193:
	.loc 1 691 0
	shrl	$28, %ecx
	movb	%cl, 21(%rbx)
	jmp	.L180
.L194:
	.loc 1 694 0
	andl	$511, %ecx
	movl	%ecx, 16(%rbx)
	jmp	.L260
.L199:
.LBB51:
	.loc 1 420 0
	movl	%ecx, %eax
.LBE51:
	.loc 1 703 0
	movl	%ecx, 148(%rbx)
.LBB52:
	.loc 1 420 0
	movl	%ecx, %r12d
	shrl	$11, %eax
	movzbl	155(%rbx), %esi
	andl	$1, %eax
	movl	%eax, %edi
	movzbl	%ch, %eax
	shrl	$14, %ecx
	andl	$7, %eax
	movl	%eax, %ebp
	movl	%ecx, %eax
	shrl	%ecx
.LBB53:
	.loc 1 422 0
	movl	%ecx, %edx
.LBE53:
	.loc 1 420 0
	andl	$1, %eax
.LBB54:
	.loc 1 422 0
	shrl	$3, %edx
.LBE54:
	.loc 1 420 0
	movl	%eax, %r13d
	movl	%ecx, %eax
.LBB55:
	.loc 1 422 0
	andl	$3, %edx
.LBE55:
	.loc 1 420 0
	andl	$1, %eax
.LBB56:
	.loc 1 425 0
	cmpl	$1, %edx
.LBE56:
	.loc 1 420 0
	movl	%eax, %r14d
.LBB57:
	.loc 1 425 0
	je	.L202
	jle	.L262
	cmpl	$2, %edx
	je	.L204
	cmpl	$3, %edx
	.p2align 4,,7
	je	.L205
.L200:
	.loc 1 442 0
	movzbl	%bpl, %eax
	cmpl	$5, %eax
	.p2align 4,,3
	je	.L209
	cmpl	$6, %eax
	.p2align 4,,3
	je	.L223
.L208:
	.loc 1 461 0
	movl	$1, %r8d
	movzbl	%r13b, %ecx
	movzbl	%r12b, %edx
	movzbl	%bpl, %esi
	movq	%rsp, %rdi
	andl	%r14d, %r8d
	call	apic_bus_deliver
	jmp	.L180
.L245:
.LBE57:
.LBE52:
	.loc 1 709 0
	movl	%ecx, 152(%rbx)
	jmp	.L180
.L246:
.LBB58:
	.loc 1 713 0
	subl	$50, %edx
	.loc 1 714 0
	movslq	%edx,%rax
	.loc 1 715 0
	testl	%edx, %edx
	.loc 1 714 0
	movl	%ecx, 120(%rbx,%rax,4)
	.loc 1 715 0
	jne	.L180
	.loc 1 716 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %rsi
.L259:
.LBE58:
	.loc 1 722 0
	movq	%rbx, %rdi
	call	apic_timer_update
	jmp	.L180
.L248:
	.loc 1 720 0
	movl	%ecx, 164(%rbx)
	.loc 1 721 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rax, %rsi
	movq	%rax, 168(%rbx)
	jmp	.L259
.L202:
.LBB59:
.LBB60:
	.loc 1 430 0
	cld
	xorl	%eax, %eax
	movq	%rsp, %rdi
	movl	$4, %ecx
	rep
	stosq
.LBB61:
	.loc 1 154 0
	movzbl	12(%rbx), %ecx
.LBB62:
	.loc 1 156 0
	movl	%ecx, %eax
	.loc 1 157 0
	andl	$31, %ecx
	.loc 1 156 0
	sarl	$5, %eax
	.loc 1 157 0
	sall	%cl, %edx
	.loc 1 158 0
	cltq
	orl	%edx, (%rsp,%rax,4)
	jmp	.L200
.L209:
.LBE62:
.LBE61:
.LBB63:
	.loc 1 445 0
	movl	148(%rbx), %eax
	.loc 1 447 0
	testb	$64, %ah
	sete	%dl
	testb	$128, %ah
	setne	%al
	movzbl	%al, %eax
	testl	%edx, %eax
	je	.L208
.LBB64:
	.loc 1 448 0
	xorl	%r8d, %r8d
.L221:
	movslq	%r8d,%rax
	movl	(%rsp,%rax,4), %esi
	testl	%esi, %esi
	je	.L213
	movl	%r8d, %edi
	xorl	%ecx, %ecx
	sall	$5, %edi
	.p2align 4,,7
.L220:
	movl	%esi, %eax
	sarl	%cl, %eax
	testb	$1, %al
	je	.L217
	leal	(%rdi,%rcx), %eax
	cltq
	movq	local_apics(,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L217
	movzbl	12(%rdx), %eax
	movb	%al, 13(%rdx)
.L217:
	incl	%ecx
	cmpl	$31, %ecx
	jle	.L220
.L213:
	incl	%r8d
	cmpl	$7, %r8d
	jle	.L221
	jmp	.L180
.L223:
.LBE64:
.LBE63:
.LBB65:
	.loc 1 456 0
	xorl	%ebx, %ebx
	movzbl	%r12b, %r11d
.L244:
	movslq	%ebx,%rax
	movl	(%rsp,%rax,4), %r9d
	testl	%r9d, %r9d
	je	.L226
	movl	%ebx, %r10d
	xorl	%r8d, %r8d
	sall	$5, %r10d
	.p2align 4,,7
.L243:
	movl	%r9d, %eax
	movl	%r8d, %ecx
	sarl	%cl, %eax
	testb	$1, %al
	je	.L230
	leal	(%r10,%r8), %eax
	cltq
	movq	local_apics(,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L230
.LBB66:
.LBB67:
	.loc 1 408 0
	movq	(%rdx), %rsi
	.loc 1 409 0
	testb	$4, 354(%rsi)
	je	.L230
.LBB68:
.LBB69:
	.file 2 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.loc 2 630 0
	leaq	372(%rsi), %rax
.LBE69:
	.loc 2 626 0
	movl	%r11d, %ecx
.LBE68:
	.loc 1 411 0
	movl	$0, 32(%rsi)
.LBB70:
	.loc 2 626 0
	sall	$12, %ecx
	movl	%r11d, %edx
.LBB71:
	.loc 2 634 0
	movl	$0, 12(%rax)
	.loc 2 632 0
	movl	%ecx, 4(%rax)
.LBE71:
	.loc 2 626 0
	sall	$8, %edx
.LBB72:
	.loc 2 633 0
	movl	$65535, 8(%rax)
	.loc 2 648 0
	movl	384(%rsi), %eax
	.loc 2 650 0
	movl	352(%rsi), %ecx
	.loc 2 654 0
	movl	400(%rsi), %edi
	.loc 2 631 0
	movl	%edx, 372(%rsi)
	.loc 2 648 0
	andl	$4194304, %eax
	shrl	$18, %eax
	.loc 2 650 0
	andl	$-32785, %ecx
	.loc 2 654 0
	andl	$4194304, %edi
	.loc 2 650 0
	orl	%eax, %ecx
	.loc 2 654 0
	shrl	$17, %edi
	.loc 2 658 0
	testb	$1, 516(%rsi)
	je	.L239
	testb	$2, 38(%rsi)
	jne	.L239
	testb	$16, %cl
	jne	.L238
	.p2align 4,,7
.L239:
	.loc 2 666 0
	orl	$64, %edi
.L237:
	.loc 2 673 0
	andl	$-97, %ecx
	orl	%edi, %ecx
.LBE72:
.LBE70:
	.loc 1 414 0
	andl	$-262145, %ecx
	movl	%ecx, 352(%rsi)
	.p2align 4,,7
.L230:
.LBE67:
.LBE66:
	.loc 1 456 0
	incl	%r8d
	cmpl	$31, %r8d
	jle	.L243
.L226:
	incl	%ebx
	cmpl	$7, %ebx
	jle	.L244
	jmp	.L180
.L238:
.LBB73:
.LBB74:
.LBB75:
.LBB76:
	.loc 2 668 0
	movl	%edi, %edx
	movl	360(%rsi), %eax
	orl	408(%rsi), %eax
	orl	$64, %edx
	orl	392(%rsi), %eax
	cmovne	%edx, %edi
	jmp	.L237
.L204:
.LBE76:
.LBE75:
.LBE74:
.LBE73:
.LBE65:
	.loc 1 434 0
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	jmp	.L200
.L262:
	.loc 1 425 0
	testl	%edx, %edx
	jne	.L200
	.loc 1 427 0
	movzbl	%dil, %edx
	movzbl	%sil, %esi
	movq	%rsp, %rdi
	call	apic_get_delivery_bitmask
	jmp	.L200
.L205:
	.loc 1 437 0
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
.LBB77:
.LBB78:
	.loc 1 165 0
	movl	$-2, %eax
.LBE78:
.LBE77:
	.loc 1 437 0
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
.LBB79:
	.loc 1 162 0
	movzbl	12(%rbx), %ecx
.LBB80:
	.loc 1 164 0
	movl	%ecx, %edx
	.loc 1 165 0
	andl	$31, %ecx
	.loc 1 164 0
	sarl	$5, %edx
	.loc 1 166 0
	roll	%cl, %eax
	movslq	%edx,%rdx
	andl	%eax, (%rsp,%rdx,4)
	jmp	.L200
.LBE80:
.LBE79:
.LBE60:
.LBE59:
.LFE223:
	.size	apic_mem_writel, .-apic_mem_writel
	.p2align 4,,15
	.type	apic_save, @function
apic_save:
.LFB224:
	.loc 1 741 0
	pushq	%r13
.LCFI28:
	movq	%rsi, %r13
	pushq	%r12
.LCFI29:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI30:
	movl	$7, %ebp
	pushq	%rbx
.LCFI31:
	movq	%r13, %rbx
	subq	$8, %rsp
.LCFI32:
.LBB81:
.LBB82:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 32 0
	movl	8(%rsi), %esi
	call	qemu_put_be32
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	.loc 3 42 0
	movzbl	12(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE84:
.LBE83:
.LBB85:
.LBB86:
	movzbl	13(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE86:
.LBE85:
.LBB87:
.LBB88:
	movzbl	14(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE88:
.LBE87:
.LBB89:
.LBB90:
	.loc 3 32 0
	movl	16(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	.loc 3 42 0
	movzbl	20(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	movzbl	21(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
	.p2align 4,,7
.L277:
.LBE94:
.LBE93:
.LBB95:
.LBB96:
	.loc 3 32 0
	movl	24(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE96:
.LBE95:
.LBB97:
.LBB98:
	movl	56(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE98:
.LBE97:
.LBB99:
.LBB100:
	movl	88(%rbx), %esi
	movq	%r12, %rdi
	addq	$4, %rbx
	call	qemu_put_be32
	decl	%ebp
	jns	.L277
	leaq	120(%r13), %rbx
	movl	$5, %ebp
	.p2align 4,,7
.L282:
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	movl	(%rbx), %esi
	movq	%r12, %rdi
	addq	$4, %rbx
	call	qemu_put_be32
	decl	%ebp
	jns	.L282
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	movl	144(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	movl	148(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	movl	152(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE108:
.LBE107:
.LBB109:
.LBB110:
	movl	156(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE110:
.LBE109:
	.loc 1 764 0
	movl	160(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB111:
.LBB112:
	.loc 3 32 0
	movl	164(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBE112:
.LBE111:
	.loc 1 766 0
	movq	168(%r13), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
	.loc 1 767 0
	movq	176(%r13), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
	.loc 1 769 0
	movq	184(%r13), %rsi
	addq	$8, %rsp
	movq	%r12, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	qemu_put_timer
.LFE224:
	.size	apic_save, .-apic_save
	.p2align 4,,15
	.type	apic_load, @function
apic_load:
.LFB225:
	.loc 1 773 0
	pushq	%r14
.LCFI33:
	.loc 1 777 0
	cmpl	$2, %edx
	.loc 1 773 0
	movl	%edx, %r14d
	.loc 1 778 0
	movl	$-22, %eax
	.loc 1 773 0
	pushq	%r13
.LCFI34:
	movq	%rsi, %r13
	pushq	%r12
.LCFI35:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI36:
	pushq	%rbx
.LCFI37:
	.loc 1 777 0
	jg	.L292
.LBB113:
.LBB114:
	.loc 3 52 0
	call	qemu_get_be32
.LBE114:
.LBE113:
.LBB115:
.LBB116:
	.loc 3 62 0
	movq	%r12, %rdi
.LBE116:
.LBE115:
.LBB117:
.LBB118:
	.loc 3 52 0
	movl	%eax, 8(%r13)
	movq	%r13, %rbx
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	.loc 3 62 0
	call	qemu_get_byte
.LBE120:
.LBE119:
.LBB121:
.LBB122:
	movq	%r12, %rdi
.LBE122:
.LBE121:
.LBB123:
.LBB124:
	movb	%al, 12(%r13)
	movl	$7, %ebp
.LBE124:
.LBE123:
.LBB125:
.LBB126:
	call	qemu_get_byte
.LBE126:
.LBE125:
.LBB127:
.LBB128:
	movq	%r12, %rdi
.LBE128:
.LBE127:
.LBB129:
.LBB130:
	movb	%al, 13(%r13)
.LBE130:
.LBE129:
.LBB131:
.LBB132:
	call	qemu_get_byte
.LBE132:
.LBE131:
.LBB133:
.LBB134:
	.loc 3 52 0
	movq	%r12, %rdi
.LBE134:
.LBE133:
.LBB135:
.LBB136:
	.loc 3 62 0
	movb	%al, 14(%r13)
.LBE136:
.LBE135:
.LBB137:
.LBB138:
	.loc 3 52 0
	call	qemu_get_be32
.LBE138:
.LBE137:
.LBB139:
.LBB140:
	.loc 3 62 0
	movq	%r12, %rdi
.LBE140:
.LBE139:
.LBB141:
.LBB142:
	.loc 3 52 0
	movl	%eax, 16(%r13)
.LBE142:
.LBE141:
.LBB143:
.LBB144:
	.loc 3 62 0
	call	qemu_get_byte
.LBE144:
.LBE143:
.LBB145:
.LBB146:
	movq	%r12, %rdi
.LBE146:
.LBE145:
.LBB147:
.LBB148:
	movb	%al, 20(%r13)
.LBE148:
.LBE147:
.LBB149:
.LBB150:
	call	qemu_get_byte
	movb	%al, 21(%r13)
	.p2align 4,,7
.L307:
.LBE150:
.LBE149:
.LBB151:
.LBB152:
	.loc 3 52 0
	movq	%r12, %rdi
	call	qemu_get_be32
.LBE152:
.LBE151:
.LBB153:
.LBB154:
	movq	%r12, %rdi
.LBE154:
.LBE153:
.LBB155:
.LBB156:
	movl	%eax, 24(%rbx)
.LBE156:
.LBE155:
.LBB157:
.LBB158:
	call	qemu_get_be32
.LBE158:
.LBE157:
.LBB159:
.LBB160:
	movq	%r12, %rdi
.LBE160:
.LBE159:
.LBB161:
.LBB162:
	movl	%eax, 56(%rbx)
.LBE162:
.LBE161:
.LBB163:
.LBB164:
	call	qemu_get_be32
	movl	%eax, 88(%rbx)
	addq	$4, %rbx
	decl	%ebp
	jns	.L307
	leaq	120(%r13), %rbx
	movl	$5, %ebp
	.p2align 4,,7
.L312:
.LBE164:
.LBE163:
.LBB165:
.LBB166:
	movq	%r12, %rdi
	call	qemu_get_be32
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%ebp
	jns	.L312
.LBE166:
.LBE165:
.LBB167:
.LBB168:
	movq	%r12, %rdi
	call	qemu_get_be32
.LBE168:
.LBE167:
.LBB169:
.LBB170:
	movq	%r12, %rdi
.LBE170:
.LBE169:
.LBB171:
.LBB172:
	movl	%eax, 144(%r13)
.LBE172:
.LBE171:
.LBB173:
.LBB174:
	call	qemu_get_be32
.LBE174:
.LBE173:
.LBB175:
.LBB176:
	movq	%r12, %rdi
.LBE176:
.LBE175:
.LBB177:
.LBB178:
	movl	%eax, 148(%r13)
.LBE178:
.LBE177:
.LBB179:
.LBB180:
	call	qemu_get_be32
.LBE180:
.LBE179:
.LBB181:
.LBB182:
	movq	%r12, %rdi
.LBE182:
.LBE181:
.LBB183:
.LBB184:
	movl	%eax, 152(%r13)
.LBE184:
.LBE183:
.LBB185:
.LBB186:
	call	qemu_get_be32
.LBE186:
.LBE185:
	.loc 1 800 0
	movq	%r12, %rdi
.LBB187:
.LBB188:
	.loc 3 52 0
	movl	%eax, 156(%r13)
.LBE188:
.LBE187:
	.loc 1 800 0
	call	qemu_get_be32
.LBB189:
.LBB190:
	.loc 3 52 0
	movq	%r12, %rdi
.LBE190:
.LBE189:
	.loc 1 800 0
	movl	%eax, 160(%r13)
.LBB191:
.LBB192:
	.loc 3 52 0
	call	qemu_get_be32
.LBE192:
.LBE191:
	.loc 1 802 0
	movq	%r12, %rdi
.LBB193:
.LBB194:
	.loc 3 52 0
	movl	%eax, 164(%r13)
.LBE194:
.LBE193:
	.loc 1 802 0
	call	qemu_get_be64
	.loc 1 803 0
	movq	%r12, %rdi
	.loc 1 802 0
	movq	%rax, 168(%r13)
	.loc 1 803 0
	call	qemu_get_be64
	.loc 1 805 0
	decl	%r14d
	.loc 1 803 0
	movq	%rax, 176(%r13)
	.loc 1 805 0
	jg	.L323
	.loc 1 807 0
	xorl	%eax, %eax
.L292:
	.loc 1 808 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L323:
	.loc 1 806 0
	movq	184(%r13), %rsi
	movq	%r12, %rdi
	call	qemu_get_timer
	.loc 1 807 0
	xorl	%eax, %eax
	jmp	.L292
.LFE225:
	.size	apic_load, .-apic_load
	.p2align 4,,15
	.type	apic_reset, @function
apic_reset:
.LFB226:
	.loc 1 811 0
	pushq	%rbx
.LCFI38:
	.loc 1 811 0
	movq	%rdi, %rbx
	.loc 1 813 0
	call	apic_init_ipi
	.loc 1 820 0
	movl	$1792, 132(%rbx)
	popq	%rbx
	ret
.LFE226:
	.size	apic_reset, .-apic_reset
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"apic"
	.text
	.p2align 4,,15
.globl apic_init
	.type	apic_init, @function
apic_init:
.LFB227:
	.loc 1 836 0
	pushq	%rbp
.LCFI39:
	.loc 1 840 0
	movl	$-1, %eax
	.loc 1 836 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI40:
	subq	$8, %rsp
.LCFI41:
	.loc 1 839 0
	cmpl	$254, last_apic_id(%rip)
	jg	.L325
	.loc 1 841 0
	movl	$192, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 843 0
	movl	$-1, %eax
	.loc 1 842 0
	testq	%rbx, %rbx
	je	.L325
	.loc 1 844 0
	movq	%rbx, 47120(%rbp)
	.loc 1 845 0
	movq	%rbx, %rdi
	call	apic_init_ipi
	.loc 1 846 0
	movl	last_apic_id(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, last_apic_id(%rip)
	movb	%al, 12(%rbx)
	.loc 1 847 0
	movzbl	%al, %eax
	movl	%eax, 47104(%rbp)
	.loc 1 849 0
	movzbl	12(%rbx), %eax
	.loc 1 848 0
	movq	%rbp, (%rbx)
	.loc 1 857 0
	movl	$1792, 132(%rbx)
	.loc 1 849 0
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$256, %eax
	subl	$18872320, %eax
	movl	%eax, 8(%rbx)
	.loc 1 860 0
	movl	apic_io_memory(%rip), %eax
	testl	%eax, %eax
	je	.L331
.L330:
	.loc 1 868 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$apic_timer, %esi
	call	qemu_new_timer
	.loc 1 870 0
	movzbl	12(%rbx), %esi
	movq	%rbx, %r9
	movl	$apic_load, %r8d
	movl	$apic_save, %ecx
	movl	$2, %edx
	movl	$.LC0, %edi
	.loc 1 868 0
	movq	%rax, 184(%rbx)
	.loc 1 870 0
	call	register_savevm
	.loc 1 871 0
	movq	%rbx, %rsi
	movl	$apic_reset, %edi
	call	qemu_register_reset
	.loc 1 873 0
	movzbq	12(%rbx), %rax
	movq	%rbx, local_apics(,%rax,8)
	.loc 1 874 0
	xorl	%eax, %eax
.L325:
	.loc 1 875 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L331:
	.loc 1 863 0
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	$apic_mem_write, %edx
	movl	$apic_mem_read, %esi
	call	cpu_register_io_memory
	movl	%eax, apic_io_memory(%rip)
	.loc 1 865 0
	mov	8(%rbx), %edi
	movslq	%eax,%rdx
	movl	$4096, %esi
	andl	$4294963200, %edi
	call	cpu_register_physical_memory
	jmp	.L330
.LFE227:
	.size	apic_init, .-apic_init
	.p2align 4,,15
	.type	ioapic_service, @function
ioapic_service:
.LFB228:
	.loc 1 878 0
	pushq	%r15
.LCFI42:
	pushq	%r14
.LCFI43:
	pushq	%r13
.LCFI44:
	pushq	%r12
.LCFI45:
	pushq	%rbp
.LCFI46:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI47:
	.loc 1 890 0
	xorl	%ebx, %ebx
	.loc 1 878 0
	subq	$72, %rsp
.LCFI48:
	.p2align 4,,7
.L341:
	.loc 1 891 0
	movl	%ebx, %ecx
	movl	$1, %esi
	sall	%cl, %esi
	.loc 1 892 0
	movl	4(%rbp), %ecx
	testl	%esi, %ecx
	je	.L335
	.loc 1 893 0
	movzbl	%bl, %eax 
	movq	8(%rbp,%rax,8), %rdi
	.loc 1 894 0
	testl	$65536, %edi 
	jne	.L335
	.loc 1 896 0
	movq	%rdi, %rax
	.loc 1 895 0
	movq	%rdi, %rdx
	.loc 1 896 0
	shrq	$56, %rax
	.loc 1 895 0
	shrq	$15, %rdx
	.loc 1 896 0
	movb	%al, (%rsp)
	.loc 1 897 0
	movq	%rdi, %rax
	shrq	$11, %rax
	andl	$1, %eax
	movl	%eax, %r14d
	.loc 1 898 0
	movq	%rdi, %rax
	shrq	$8, %rax
	andl	$7, %eax
	movl	%eax, %r13d
	.loc 1 899 0
	movq	%rdi, %rax
	shrq	$13, %rax
	andl	$1, %eax
	movl	%eax, %r15d
	.loc 1 900 0
	movl	%edx, %eax
	andl	$1, %eax
	movb	%al, 16(%rsp)
	jne	.L338
	.loc 1 901 0
	notl	%esi
	andl	%esi, %ecx
	movl	%ecx, 4(%rbp)
.L338:
	.loc 1 902 0
	cmpb	$7, %r13b
	.loc 1 905 0
	movl	%edi, %r12d
	.loc 1 902 0
	je	.L344
.L340:
	.loc 1 907 0
	movzbl	(%rsp), %esi
	leaq	32(%rsp), %rdi
	movzbl	%r14b, %edx
	call	apic_get_delivery_bitmask
	.loc 1 908 0
	movzbl	16(%rsp), %eax
	leaq	32(%rsp), %rdi
	movzbl	%r15b, %ecx
	movzbl	%r12b, %edx
	movzbl	%r13b, %esi
	andl	$1, %eax
	movl	%eax, %r8d
	call	apic_bus_deliver
	.p2align 4,,7
.L335:
	.loc 1 890 0
	incl	%ebx
	cmpb	$23, %bl
	jbe	.L341
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L344:
	.loc 1 903 0
	movq	isa_pic(%rip), %rdi
	call	pic_read_irq
	movl	%eax, %r12d
	jmp	.L340
.LFE228:
	.size	ioapic_service, .-ioapic_service
	.p2align 4,,15
.globl ioapic_set_irq
	.type	ioapic_set_irq, @function
ioapic_set_irq:
.LFB229:
	.loc 1 916 0
	.loc 1 919 0
	cmpl	$23, %esi
	ja	.L345
.LBB195:
	.loc 1 920 0
	movl	$1, %r8d
	movl	%esi, %ecx
	.loc 1 921 0
	movslq	%esi,%rax
	.loc 1 920 0
	sall	%cl, %r8d
	.loc 1 923 0
	testb	$-128, 9(%rdi,%rax,8)
	je	.L347
	.loc 1 925 0
	testl	%edx, %edx
	jne	.L352
	.loc 1 929 0
	movl	%r8d, %eax
	notl	%eax
	andl	%eax, 4(%rdi)
	ret
	.p2align 4,,7
.L347:
	.loc 1 933 0
	testl	%edx, %edx
	.p2align 4,,2
	jne	.L352
	.p2align 4,,7
.L345:
	rep ; ret
	.p2align 4,,7
.L352:
	.loc 1 934 0
	orl	%r8d, 4(%rdi)
	.loc 1 935 0
	jmp	ioapic_service
.LBE195:
.LFE229:
	.size	ioapic_set_irq, .-ioapic_set_irq
	.p2align 4,,15
	.type	ioapic_mem_readl, @function
ioapic_mem_readl:
.LFB230:
	.loc 1 942 0
	.loc 1 945 0
	xorl	%eax, %eax
	.loc 1 948 0
	andl	$255, %esi 
	jne	.L354
	.loc 1 949 0
	movzbl	1(%rdi), %eax
	ret
	.p2align 4,,7
.L354:
	.loc 1 950 0
	cmpq	$16, %rsi
	je	.L366
.L355:
	.loc 1 975 0
	rep ; ret
	.p2align 4,,7
.L366:
	.loc 1 951 0
	movzbl	1(%rdi), %ecx
	movzbl	%cl, %edx
	cmpl	$1, %edx
	je	.L359
	.p2align 4,,2
	jle	.L367
	cmpl	$2, %edx
	.p2align 4,,2
	je	.L355
.L361:
	.loc 1 962 0
	movzbl	%cl, %ecx
	leal	-16(%rcx), %edx
	sarl	%edx
	.loc 1 963 0
	cmpl	$23, %edx
	ja	.L355
	.loc 1 964 0
	andl	$1, %ecx
	je	.L363
	.loc 1 965 0
	movslq	%edx,%rax
	movl	12(%rdi,%rax,8), %eax
	ret
.L359:
	.loc 1 956 0
	movl	$1507345, %eax
	.loc 1 957 0
	.p2align 4,,3
	ret
.L367:
	.loc 1 951 0
	testl	%edx, %edx
	.p2align 4,,4
	jne	.L361
	.loc 1 953 0
	movzbl	(%rdi), %eax
	sall	$24, %eax
	.loc 1 954 0
	.p2align 4,,4
	ret
.L363:
	.loc 1 967 0
	movslq	%edx,%rax
	movl	8(%rdi,%rax,8), %eax
	.loc 1 975 0
	.p2align 4,,1
	ret
.LFE230:
	.size	ioapic_mem_readl, .-ioapic_mem_readl
	.p2align 4,,15
	.type	ioapic_mem_writel, @function
ioapic_mem_writel:
.LFB231:
	.loc 1 978 0
	.loc 1 983 0
	andl	$255, %esi 
	.loc 1 978 0
	movl	%edx, %ecx
	.loc 1 983 0
	jne	.L369
	.loc 1 984 0
	movb	%dl, 1(%rdi)
	.loc 1 985 0
	ret
	.p2align 4,,7
.L369:
	.loc 1 986 0
	cmpq	$16, %rsi
	je	.L380
.L368:
	rep ; ret
	.p2align 4,,7
.L380:
	.loc 1 990 0
	movzbl	1(%rdi), %edx
	movzbl	%dl, %eax
	testl	%eax, %eax
	je	.L373
	.p2align 4,,2
	jl	.L376
	cmpl	$2, %eax
	.p2align 4,,2
	jle	.L381
.L376:
	.loc 1 998 0
	movzbl	%dl, %edx
	leal	-16(%rdx), %eax
	sarl	%eax
	.loc 1 999 0
	cmpl	$23, %eax
	ja	.L368
	.loc 1 1000 0
	andl	$1, %edx
	je	.L378
	.loc 1 1001 0
	cltq
	.loc 1 1002 0
	movl	%ecx, 12(%rdi,%rax,8)
	.loc 1 1007 0
	jmp	ioapic_service
.L373:
	.loc 1 992 0
	shrl	$24, %ecx
	movb	%cl, (%rdi)
	.loc 1 993 0
	ret
.L381:
	.loc 1 990 0
	rep ; ret
.L378:
	.loc 1 1004 0
	cltq
	movabsq	$-4294967296, %rdx
	.loc 1 1005 0
	mov	%ecx, %ecx
	.loc 1 1004 0
	andq	8(%rdi,%rax,8), %rdx
	.loc 1 1005 0
	orq	%rcx, %rdx
	movq	%rdx, 8(%rdi,%rax,8)
	.loc 1 1007 0
	jmp	ioapic_service
.LFE231:
	.size	ioapic_mem_writel, .-ioapic_mem_writel
	.p2align 4,,15
	.type	ioapic_save, @function
ioapic_save:
.LFB232:
	.loc 1 1014 0
	pushq	%r12
.LCFI49:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI50:
	movl	$23, %ebp
	pushq	%rbx
.LCFI51:
	.loc 1 1014 0
	movq	%rsi, %rbx
.LBB196:
.LBB197:
	.loc 3 42 0
	movzbl	(%rsi), %esi
	call	qemu_put_byte
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	movzbl	1(%rbx), %esi
	movq	%r12, %rdi
	addq	$8, %rbx
	call	qemu_put_byte
	.p2align 4,,7
.L389:
.LBE199:
.LBE198:
.LBB200:
.LBB201:
	.loc 3 27 0
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	addq	$8, %rbx
	call	qemu_put_be64
	decl	%ebp
	jns	.L389
.LBE201:
.LBE200:
	.loc 1 1020 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE232:
	.size	ioapic_save, .-ioapic_save
	.p2align 4,,15
	.type	ioapic_load, @function
ioapic_load:
.LFB233:
	.loc 1 1026 0
	pushq	%r12
.LCFI52:
	.loc 1 1030 0
	decl	%edx
	.loc 1 1026 0
	movq	%rdi, %r12
	.loc 1 1031 0
	movl	$-22, %eax
	.loc 1 1026 0
	pushq	%rbp
.LCFI53:
	pushq	%rbx
.LCFI54:
	.loc 1 1026 0
	movq	%rsi, %rbx
	.loc 1 1030 0
	jne	.L392
.LBB202:
.LBB203:
	.loc 3 62 0
	call	qemu_get_byte
.LBE203:
.LBE202:
.LBB204:
.LBB205:
	movq	%r12, %rdi
.LBE205:
.LBE204:
.LBB206:
.LBB207:
	movb	%al, (%rbx)
	movl	$23, %ebp
.LBE207:
.LBE206:
.LBB208:
.LBB209:
	call	qemu_get_byte
	movb	%al, 1(%rbx)
	addq	$8, %rbx
	.p2align 4,,7
.L400:
.LBE209:
.LBE208:
.LBB210:
.LBB211:
	.loc 3 47 0
	movq	%r12, %rdi
	call	qemu_get_be64
	movq	%rax, (%rbx)
	addq	$8, %rbx
	decl	%ebp
	jns	.L400
.LBE211:
.LBE210:
	.loc 1 1038 0
	xorl	%eax, %eax
.L392:
	.loc 1 1039 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE233:
	.size	ioapic_load, .-ioapic_load
	.p2align 4,,15
	.type	ioapic_reset, @function
ioapic_reset:
.LFB234:
	.loc 1 1042 0
	pushq	%rbx
.LCFI55:
	.loc 1 1046 0
	movl	$200, %edx
	xorl	%esi, %esi
	.loc 1 1042 0
	movq	%rdi, %rbx
	.loc 1 1046 0
	call	memset
	.loc 1 1047 0
	xorl	%edx, %edx
	.p2align 4,,7
.L407:
	.loc 1 1048 0
	movslq	%edx,%rax
	.loc 1 1047 0
	incl	%edx
	cmpl	$23, %edx
	.loc 1 1048 0
	movq	$65536, 8(%rbx,%rax,8)
	.loc 1 1047 0
	jle	.L407
	popq	%rbx
	ret
.LFE234:
	.size	ioapic_reset, .-ioapic_reset
	.section	.rodata.str1.1
.LC1:
	.string	"ioapic"
	.text
	.p2align 4,,15
.globl ioapic_init
	.type	ioapic_init, @function
ioapic_init:
.LFB235:
	.loc 1 1064 0
	pushq	%rbx
.LCFI56:
	.loc 1 1068 0
	movl	$200, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 1070 0
	xorl	%eax, %eax
	.loc 1 1069 0
	testq	%rbx, %rbx
	je	.L410
	.loc 1 1071 0
	movq	%rbx, %rdi
	call	ioapic_reset
	.loc 1 1072 0
	movl	last_apic_id(%rip), %edx
	.loc 1 1074 0
	movq	%rbx, %rcx
	movl	$ioapic_mem_read, %esi
	xorl	%edi, %edi
	.loc 1 1072 0
	leal	1(%rdx), %eax
	movl	%eax, last_apic_id(%rip)
	movb	%dl, (%rbx)
	.loc 1 1074 0
	movl	$ioapic_mem_write, %edx
	call	cpu_register_io_memory
	.loc 1 1076 0
	movl	$4096, %esi
	movslq	%eax,%rdx
	movl	$4273995776, %edi
	call	cpu_register_physical_memory
	.loc 1 1078 0
	movq	%rbx, %r9
	movl	$ioapic_load, %r8d
	movl	$ioapic_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 1 1079 0
	movq	%rbx, %rsi
	movl	$ioapic_reset, %edi
	call	qemu_register_reset
	.loc 1 1081 0
	movq	%rbx, %rax
.L410:
	.loc 1 1082 0
	popq	%rbx
	ret
.LFE235:
	.size	ioapic_init, .-ioapic_init
	.local	apic_io_memory
	.comm	apic_io_memory,4,4
	.local	local_apics
	.comm	local_apics,2048,32
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI2-.LFB204
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI5-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI6-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x40
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
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI16-.LFB213
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI19-.LFB216
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI20-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI21-.LFB222
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
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI27-.LFB223
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI28-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI33-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI38-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI39-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI42-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x30
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
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.byte	0x4
	.long	.LCFI49-.LFB232
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.byte	0x4
	.long	.LCFI52-.LFB233
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI55-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.byte	0x4
	.long	.LCFI56-.LFB235
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE64:
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI2-.LFB204
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI5-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI6-.LFB198
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x40
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
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.byte	0x4
	.long	.LCFI16-.LFB213
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI19-.LFB216
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI20-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.byte	0x4
	.long	.LCFI21-.LFB222
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
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.byte	0x4
	.long	.LCFI27-.LFB223
	.byte	0xe
	.uleb128 0x50
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.byte	0x4
	.long	.LCFI28-.LFB224
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.byte	0x4
	.long	.LCFI33-.LFB225
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.byte	0x4
	.long	.LCFI38-.LFB226
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.byte	0x4
	.long	.LCFI39-.LFB227
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.byte	0x4
	.long	.LCFI42-.LFB228
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x30
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
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.byte	0x4
	.long	.LCFI49-.LFB232
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.byte	0x4
	.long	.LCFI52-.LFB233
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
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
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.byte	0x4
	.long	.LCFI55-.LFB234
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.byte	0x4
	.long	.LCFI56-.LFB235
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE65:
	.file 4 "../cpu-defs.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "/usr/include/sys/types.h"
	.file 14 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 15 "/usr/include/setjmp.h"
	.file 16 "/usr/include/bits/setjmp.h"
	.file 17 "/usr/include/bits/sigset.h"
	.file 18 "../qemu-common.h"
	.file 19 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 20 "../cpu-all.h"
	.file 21 "../qemu-timer.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x2c5e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF310
	.byte	0x1
	.long	.LASF311
	.long	.LASF312
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
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x6
	.long	0x74
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
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0xd
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xd
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x11
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x11
	.byte	0x1f
	.long	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xeb
	.long	0x38
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x11
	.byte	0x20
	.long	0xc4
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0x9
	.byte	0x31
	.long	0x108
	.uleb128 0xc
	.long	0x2d4
	.long	.LASF48
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xa
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xa
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xa
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xa
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xa
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xa
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xa
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xa
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xa
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xa
	.value	0x122
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xa
	.value	0x124
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xa
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xa
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.value	0x132
	.long	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xa
	.value	0x136
	.long	0x32e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xa
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xa
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xa
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xa
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xa
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xa
	.value	0x150
	.long	0x334
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0xa
	.byte	0xb4
	.uleb128 0xc
	.long	0x312
	.long	.LASF49
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0xa
	.byte	0xbb
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0xa
	.byte	0xbc
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2db
	.uleb128 0x5
	.byte	0x8
	.long	0x108
	.uleb128 0xa
	.long	0x32e
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d4
	.uleb128 0xa
	.long	0x344
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF57
	.byte	0x10
	.byte	0x20
	.long	0x37b
	.uleb128 0xa
	.long	0x38b
	.long	0x4d
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x3c2
	.long	.LASF58
	.byte	0xc8
	.byte	0xf
	.byte	0x24
	.uleb128 0x9
	.long	.LASF59
	.byte	0xf
	.byte	0x29
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xf
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF61
	.byte	0xf
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0xf
	.byte	0x31
	.long	0x3cd
	.uleb128 0xa
	.long	0x3dd
	.long	0x38b
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x4
	.byte	0x31
	.long	0x35a
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x49
	.long	0x365
	.uleb128 0xc
	.long	0x438
	.long	.LASF65
	.byte	0x18
	.byte	0x4
	.byte	0x69
	.uleb128 0x9
	.long	.LASF66
	.byte	0x4
	.byte	0x70
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x4
	.byte	0x71
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x4
	.byte	0x72
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x4
	.byte	0x74
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x4
	.byte	0x75
	.long	0x3f3
	.uleb128 0x3
	.long	.LASF70
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF71
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF72
	.byte	0xe
	.byte	0x3b
	.long	0x443
	.uleb128 0x2
	.long	.LASF73
	.byte	0xe
	.byte	0x3c
	.long	0x44a
	.uleb128 0x2
	.long	.LASF74
	.byte	0xe
	.byte	0x3e
	.long	0x472
	.uleb128 0x3
	.long	.LASF75
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4a2
	.long	.LASF76
	.byte	0x2
	.byte	0xe
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF77
	.byte	0xe
	.byte	0x6e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF78
	.byte	0xe
	.byte	0x70
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xe
	.byte	0x72
	.long	0x479
	.uleb128 0xf
	.long	.LASF79
	.byte	0x2
	.value	0x198
	.long	0x467
	.uleb128 0x10
	.long	0x503
	.long	.LASF80
	.byte	0x10
	.byte	0x2
	.value	0x19d
	.uleb128 0xd
	.long	.LASF81
	.byte	0x2
	.value	0x19e
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x2
	.value	0x19f
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0x2
	.value	0x1a0
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x2
	.value	0x1a1
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x2
	.value	0x1a2
	.long	0x4b9
	.uleb128 0x11
	.long	0x55b
	.byte	0x10
	.byte	0x2
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1a5
	.long	0x55b
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1a6
	.long	0x56b
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1a7
	.long	0x57b
	.uleb128 0x12
	.string	"_q"
	.byte	0x2
	.value	0x1a8
	.long	0x58b
	.uleb128 0x12
	.string	"_s"
	.byte	0x2
	.value	0x1a9
	.long	0x59b
	.uleb128 0x12
	.string	"_d"
	.byte	0x2
	.value	0x1aa
	.long	0x5ab
	.byte	0x0
	.uleb128 0xa
	.long	0x56b
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x57b
	.long	0x34f
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x58b
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x59b
	.long	0x365
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x5ab
	.long	0x451
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5bb
	.long	0x45c
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x2
	.value	0x1ab
	.long	0x50f
	.uleb128 0x11
	.long	0x5fc
	.byte	0x8
	.byte	0x2
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x2
	.value	0x1ae
	.long	0x5fc
	.uleb128 0x12
	.string	"_w"
	.byte	0x2
	.value	0x1af
	.long	0x60c
	.uleb128 0x12
	.string	"_l"
	.byte	0x2
	.value	0x1b0
	.long	0x61c
	.uleb128 0x12
	.string	"q"
	.byte	0x2
	.value	0x1b1
	.long	0x365
	.byte	0x0
	.uleb128 0xa
	.long	0x60c
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x61c
	.long	0x34f
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x62c
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x2
	.value	0x1b2
	.long	0x5c7
	.uleb128 0x2
	.long	.LASF87
	.byte	0x7
	.byte	0x2f
	.long	0x35a
	.uleb128 0x2
	.long	.LASF88
	.byte	0x7
	.byte	0x34
	.long	0x35a
	.uleb128 0x2
	.long	.LASF89
	.byte	0x7
	.byte	0x35
	.long	0x643
	.uleb128 0xc
	.long	0x682
	.long	.LASF90
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0x9
	.long	.LASF91
	.byte	0x6
	.byte	0x38
	.long	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x6
	.byte	0x39
	.long	0x643
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.byte	0x3d
	.long	0x659
	.uleb128 0xc
	.long	0x802
	.long	.LASF94
	.byte	0xd0
	.byte	0x8
	.byte	0x36
	.uleb128 0x9
	.long	.LASF95
	.byte	0x8
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF96
	.byte	0x8
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0x8
	.byte	0x3d
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0x8
	.byte	0x3f
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF98
	.byte	0x8
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF99
	.byte	0x8
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF100
	.byte	0x8
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF101
	.byte	0x8
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF102
	.byte	0x8
	.byte	0x4a
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF103
	.byte	0x8
	.byte	0x4b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF104
	.byte	0x8
	.byte	0x4c
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF105
	.byte	0x8
	.byte	0x4e
	.long	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF106
	.byte	0x8
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF107
	.byte	0x8
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF108
	.byte	0x8
	.byte	0x54
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF109
	.byte	0x8
	.byte	0x56
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF110
	.byte	0x8
	.byte	0x58
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF111
	.byte	0x8
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF112
	.byte	0x8
	.byte	0x5c
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x8
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF114
	.byte	0x8
	.byte	0x60
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x8
	.byte	0x62
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x8
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF117
	.byte	0x8
	.byte	0x66
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x8
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0xa
	.long	0x818
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x828
	.long	0x643
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x643
	.uleb128 0x2
	.long	.LASF119
	.byte	0x8
	.byte	0x69
	.long	0x68d
	.uleb128 0x11
	.long	0x859
	.byte	0x10
	.byte	0x2
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x20a
	.long	0x4ad
	.uleb128 0x12
	.string	"mmx"
	.byte	0x2
	.value	0x20e
	.long	0x62c
	.byte	0x0
	.uleb128 0x11
	.long	0x88f
	.byte	0x8
	.byte	0x2
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x2
	.value	0x215
	.long	0x443
	.uleb128 0x12
	.string	"d"
	.byte	0x2
	.value	0x216
	.long	0x44a
	.uleb128 0x12
	.string	"i32"
	.byte	0x2
	.value	0x217
	.long	0x3f
	.uleb128 0x12
	.string	"i64"
	.byte	0x2
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x14
	.long	0x8b7
	.byte	0x10
	.byte	0x2
	.value	0x246
	.uleb128 0xd
	.long	.LASF120
	.byte	0x2
	.value	0x246
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x2
	.value	0x246
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe53
	.long	.LASF121
	.value	0xb820
	.byte	0x2
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF122
	.byte	0x2
	.value	0x1df
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x2
	.value	0x1e0
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF123
	.byte	0x2
	.value	0x1e1
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF124
	.byte	0x2
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF125
	.byte	0x2
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0x2
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0x2
	.value	0x1e7
	.long	0xe63
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0x2
	.value	0x1e9
	.long	0x82e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF129
	.byte	0x2
	.value	0x1ec
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF130
	.byte	0x2
	.value	0x1ed
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF131
	.byte	0x2
	.value	0x1ee
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x2
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF132
	.byte	0x2
	.value	0x1f0
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF133
	.byte	0x2
	.value	0x1f3
	.long	0xe73
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x2
	.value	0x1f4
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x2
	.value	0x1f5
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x2
	.value	0x1f6
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x2
	.value	0x1f7
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x2
	.value	0x1f9
	.long	0xe83
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF134
	.byte	0x2
	.value	0x1fa
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF135
	.byte	0x2
	.value	0x201
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF136
	.byte	0x2
	.value	0x202
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF137
	.byte	0x2
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF138
	.byte	0x2
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF139
	.byte	0x2
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF140
	.byte	0x2
	.value	0x207
	.long	0x5fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF141
	.byte	0x2
	.value	0x20f
	.long	0xe93
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF142
	.byte	0x2
	.value	0x212
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x2
	.value	0x213
	.long	0x4ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF143
	.byte	0x2
	.value	0x219
	.long	0x859
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x2
	.value	0x21b
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF145
	.byte	0x2
	.value	0x21c
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF146
	.byte	0x2
	.value	0x21d
	.long	0xea3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF147
	.byte	0x2
	.value	0x21e
	.long	0x5bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF148
	.byte	0x2
	.value	0x21f
	.long	0x62c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF149
	.byte	0x2
	.value	0x222
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF150
	.byte	0x2
	.value	0x223
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF151
	.byte	0x2
	.value	0x224
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF152
	.byte	0x2
	.value	0x225
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF153
	.byte	0x2
	.value	0x226
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x2
	.value	0x228
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF155
	.byte	0x2
	.value	0x229
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x2
	.value	0x22a
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF157
	.byte	0x2
	.value	0x22b
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x2
	.value	0x22c
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF159
	.byte	0x2
	.value	0x22d
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF160
	.byte	0x2
	.value	0x22e
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF161
	.byte	0x2
	.value	0x22f
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x2
	.value	0x238
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x2
	.value	0x23b
	.long	0x3c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF163
	.byte	0x2
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF164
	.byte	0x2
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x2
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x2
	.value	0x23f
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x2
	.value	0x240
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x2
	.value	0x241
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x2
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF169
	.byte	0x2
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0x2
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF171
	.byte	0x2
	.value	0x246
	.long	0xeb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF172
	.byte	0x2
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF173
	.byte	0x2
	.value	0x246
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x2
	.value	0x246
	.long	0xebf
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x2
	.value	0x246
	.long	0xed5
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0x2
	.value	0x246
	.long	0xee6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF178
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF179
	.byte	0x2
	.value	0x246
	.long	0xef6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF180
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF181
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF182
	.byte	0x2
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF183
	.byte	0x2
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF184
	.byte	0x2
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF185
	.byte	0x2
	.value	0x246
	.long	0x69
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF186
	.byte	0x2
	.value	0x249
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF187
	.byte	0x2
	.value	0x24a
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF188
	.byte	0x2
	.value	0x24b
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x2
	.value	0x24c
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF190
	.byte	0x2
	.value	0x24d
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF191
	.byte	0x2
	.value	0x24e
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF192
	.byte	0x2
	.value	0x24f
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF193
	.byte	0x2
	.value	0x250
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF194
	.byte	0x2
	.value	0x251
	.long	0xf06
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF195
	.byte	0x2
	.value	0x252
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x2
	.value	0x253
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF197
	.byte	0x2
	.value	0x254
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF198
	.byte	0x2
	.value	0x25b
	.long	0xf16
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF199
	.byte	0x2
	.value	0x25f
	.long	0x1049
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xe63
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe73
	.long	0x682
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe83
	.long	0x503
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xe93
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xea3
	.long	0x839
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xeb3
	.long	0x5bb
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.long	.LASF216
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xeb3
	.uleb128 0xa
	.long	0xed5
	.long	0x438
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xee6
	.long	0xeb9
	.uleb128 0x18
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0xef6
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf06
	.long	0x88f
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf16
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x64e
	.uleb128 0x10
	.long	0x1049
	.long	.LASF200
	.byte	0xc0
	.byte	0x2
	.value	0x25f
	.uleb128 0x9
	.long	.LASF201
	.byte	0x1
	.byte	0x45
	.long	0x115d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF202
	.byte	0x1
	.byte	0x46
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"id"
	.byte	0x1
	.byte	0x47
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF203
	.byte	0x1
	.byte	0x48
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x13
	.string	"tpr"
	.byte	0x1
	.byte	0x49
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.long	.LASF204
	.byte	0x1
	.byte	0x4a
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF205
	.byte	0x1
	.byte	0x4b
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF206
	.byte	0x1
	.byte	0x4c
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x13
	.string	"isr"
	.byte	0x1
	.byte	0x4d
	.long	0x1163
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.string	"tmr"
	.byte	0x1
	.byte	0x4e
	.long	0x1163
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.string	"irr"
	.byte	0x1
	.byte	0x4f
	.long	0x1163
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.string	"lvt"
	.byte	0x1
	.byte	0x50
	.long	0x1173
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.string	"esr"
	.byte	0x1
	.byte	0x51
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.string	"icr"
	.byte	0x1
	.byte	0x52
	.long	0x1183
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.long	.LASF207
	.byte	0x1
	.byte	0x54
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.long	.LASF208
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF209
	.byte	0x1
	.byte	0x56
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.long	.LASF210
	.byte	0x1
	.byte	0x57
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF211
	.byte	0x1
	.byte	0x57
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF212
	.byte	0x1
	.byte	0x58
	.long	0x1193
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf1c
	.uleb128 0xf
	.long	.LASF121
	.byte	0x2
	.value	0x260
	.long	0x8b7
	.uleb128 0xf
	.long	.LASF213
	.byte	0x14
	.value	0x388
	.long	0x1067
	.uleb128 0x19
	.long	0x1082
	.byte	0x1
	.uleb128 0x1a
	.long	0xa6
	.uleb128 0x1a
	.long	0x3e8
	.uleb128 0x1a
	.long	0x35a
	.uleb128 0x1a
	.long	0x1082
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1088
	.uleb128 0x6
	.long	0x682
	.uleb128 0xf
	.long	.LASF214
	.byte	0x14
	.value	0x389
	.long	0x1099
	.uleb128 0x1b
	.long	0x10b3
	.byte	0x1
	.long	0x35a
	.uleb128 0x1a
	.long	0xa6
	.uleb128 0x1a
	.long	0x3e8
	.uleb128 0x1a
	.long	0x10b3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x682
	.uleb128 0x5
	.byte	0x8
	.long	0x10bf
	.uleb128 0x6
	.long	0x344
	.uleb128 0x2
	.long	.LASF215
	.byte	0x12
	.byte	0x73
	.long	0x10cf
	.uleb128 0x17
	.long	.LASF215
	.byte	0x1
	.uleb128 0x2
	.long	.LASF217
	.byte	0x12
	.byte	0x77
	.long	0x10e0
	.uleb128 0x17
	.long	.LASF217
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x10c4
	.uleb128 0x2
	.long	.LASF218
	.byte	0x13
	.byte	0x1a
	.long	0x10f7
	.uleb128 0x17
	.long	.LASF218
	.byte	0x1
	.uleb128 0x2
	.long	.LASF219
	.byte	0x13
	.byte	0x28
	.long	0x1108
	.uleb128 0xc
	.long	0x114c
	.long	.LASF219
	.byte	0xc8
	.byte	0x13
	.byte	0x28
	.uleb128 0x13
	.string	"id"
	.byte	0x1
	.byte	0x5c
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF220
	.byte	0x1
	.byte	0x5d
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"irr"
	.byte	0x1
	.byte	0x5f
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF221
	.byte	0x1
	.byte	0x60
	.long	0x11a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF222
	.byte	0x15
	.byte	0x6
	.long	0x1157
	.uleb128 0x17
	.long	.LASF222
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x104f
	.uleb128 0xa
	.long	0x1173
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x1183
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x1193
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10d5
	.uleb128 0x2
	.long	.LASF200
	.byte	0x1
	.byte	0x59
	.long	0xf1c
	.uleb128 0xa
	.long	0x11b4
	.long	0x365
	.uleb128 0xb
	.long	0x5b
	.byte	0x17
	.byte	0x0
	.uleb128 0x1c
	.long	0x11f9
	.byte	0x1
	.long	.LASF223
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"env"
	.byte	0x1
	.byte	0xf0
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.byte	0xf0
	.long	0x365
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0xf2
	.long	0x11f9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1199
	.uleb128 0x1f
	.long	0x123e
	.byte	0x1
	.long	.LASF224
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	0x365
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x100
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x102
	.long	0x11f9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0x127d
	.byte	0x1
	.long	.LASF225
	.byte	0x1
	.value	0x111
	.byte	0x1
	.long	0x344
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x110
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x112
	.long	0x11f9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x12e5
	.long	.LASF226
	.byte	0x1
	.value	0x118
	.byte	0x1
	.long	0x3f
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"tab"
	.byte	0x1
	.value	0x117
	.long	0x12e5
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x119
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	0x12eb
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x24
	.long	0x12fc
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x26
	.long	0x1307
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x35a
	.uleb128 0x27
	.long	0x1313
	.long	.LASF227
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.long	.LASF228
	.byte	0x1
	.byte	0x6c
	.long	0x35a
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.byte	0x6e
	.long	0x46
	.byte	0x0
	.uleb128 0x22
	.long	0x136d
	.long	.LASF229
	.byte	0x1
	.value	0x123
	.byte	0x1
	.long	0x3f
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x122
	.long	0x11f9
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"tpr"
	.byte	0x1
	.value	0x124
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x1
	.value	0x124
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"ppr"
	.byte	0x1
	.value	0x124
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x13b5
	.long	.LASF231
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF232
	.byte	0x1
	.value	0x13b
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"ppr"
	.byte	0x1
	.value	0x13b
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x14bd
	.long	.LASF233
	.byte	0x1
	.value	0x148
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x147
	.long	0x11f9
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF234
	.byte	0x1
	.value	0x147
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF235
	.byte	0x1
	.value	0x147
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.long	0x1440
	.long	0x14bd
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x2e
	.long	0x14d5
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x26
	.long	0x14e0
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x14e9
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x1480
	.long	0x14bd
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x2e
	.long	0x14d5
	.uleb128 0x2f
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x30
	.long	0x14e0
	.uleb128 0x30
	.long	0x14e9
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x14f5
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x2e
	.long	0x1502
	.uleb128 0x2e
	.long	0x150d
	.uleb128 0x2f
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x30
	.long	0x1518
	.uleb128 0x30
	.long	0x1521
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x14f5
	.long	.LASF236
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"tab"
	.byte	0x1
	.byte	0x99
	.long	0x12e5
	.uleb128 0x28
	.long	.LASF237
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.long	0x3f
	.uleb128 0x33
	.long	.LASF238
	.byte	0x1
	.byte	0x9b
	.long	0x3f
	.byte	0x0
	.uleb128 0x31
	.long	0x152d
	.long	.LASF239
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"tab"
	.byte	0x1
	.byte	0xa1
	.long	0x12e5
	.uleb128 0x28
	.long	.LASF237
	.byte	0x1
	.byte	0xa1
	.long	0x3f
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x3f
	.uleb128 0x33
	.long	.LASF238
	.byte	0x1
	.byte	0xa3
	.long	0x3f
	.byte	0x0
	.uleb128 0x34
	.long	0x1576
	.byte	0x1
	.long	.LASF240
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x109
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.value	0x109
	.long	0x344
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x10b
	.long	0x11f9
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2b
	.long	0x15ae
	.long	.LASF241
	.byte	0x1
	.value	0x180
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x17f
	.long	0x11f9
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x181
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x35
	.long	0x16d7
	.long	.LASF242
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x36
	.long	.LASF243
	.byte	0x1
	.byte	0xbb
	.long	0x16d7
	.byte	0x1
	.byte	0x55
	.uleb128 0x36
	.long	.LASF244
	.byte	0x1
	.byte	0xbc
	.long	0x344
	.byte	0x1
	.byte	0x54
	.uleb128 0x36
	.long	.LASF234
	.byte	0x1
	.byte	0xbd
	.long	0x344
	.byte	0x1
	.byte	0x5a
	.uleb128 0x36
	.long	.LASF245
	.byte	0x1
	.byte	0xbd
	.long	0x344
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.long	.LASF235
	.byte	0x1
	.byte	0xbe
	.long	0x344
	.byte	0x1
	.byte	0x51
	.uleb128 0x37
	.long	.LASF246
	.byte	0x1
	.byte	0xc0
	.long	0x11f9
	.byte	0x1
	.byte	0x55
	.uleb128 0x38
	.long	0x1657
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x1e
	.string	"__i"
	.byte	0x1
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.string	"__j"
	.byte	0x1
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.LASF247
	.byte	0x1
	.byte	0xec
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x39
	.long	0x1677
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x1e
	.string	"d"
	.byte	0x1
	.byte	0xc6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x16a8
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1e
	.string	"__i"
	.byte	0x1
	.byte	0xe0
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.string	"__j"
	.byte	0x1
	.byte	0xe0
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.long	.LASF247
	.byte	0x1
	.byte	0xe0
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x2d
	.long	0x16c9
	.long	0x16e2
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x24
	.long	0x16f3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x26
	.long	0x16fe
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x16dd
	.uleb128 0x6
	.long	0x35a
	.uleb128 0x27
	.long	0x170a
	.long	.LASF248
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.long	.LASF228
	.byte	0x1
	.byte	0x81
	.long	0x35a
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.long	0x46
	.byte	0x0
	.uleb128 0x2b
	.long	0x17e6
	.long	.LASF249
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF243
	.byte	0x1
	.value	0x15d
	.long	0x12e5
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x1
	.value	0x15e
	.long	0x344
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	.LASF206
	.byte	0x1
	.value	0x15e
	.long	0x344
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF246
	.byte	0x1
	.value	0x160
	.long	0x11f9
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x161
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.long	0x17b1
	.long	0x14bd
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x24
	.long	0x14d5
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x26
	.long	0x14e0
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.long	0x14e9
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x14bd
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x2e
	.long	0x14d5
	.uleb128 0x25
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x26
	.long	0x14e0
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x14e9
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x18a7
	.byte	0x1
	.long	.LASF251
	.byte	0x1
	.value	0x1d2
	.byte	0x1
	.long	0x3f
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x1d1
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x1d3
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF252
	.byte	0x1
	.value	0x1d4
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x186a
	.long	0x14f5
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2e
	.long	0x1502
	.uleb128 0x2e
	.long	0x150d
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x26
	.long	0x1518
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x1521
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x14bd
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x2e
	.long	0x14d5
	.uleb128 0x2f
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x30
	.long	0x14e0
	.uleb128 0x30
	.long	0x14e9
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x18f4
	.byte	0x1
	.long	.LASF253
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.long	0x3f
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x1e9
	.long	0x115d
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x1eb
	.long	0x11f9
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF254
	.byte	0x1
	.value	0x1ec
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x1958
	.long	.LASF255
	.byte	0x1
	.value	0x20f
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x20e
	.long	0x11f9
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x1
	.value	0x20e
	.long	0xb9
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF211
	.byte	0x1
	.value	0x210
	.long	0xb9
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x210
	.long	0xb9
	.byte	0x1
	.byte	0x59
	.uleb128 0x3a
	.long	.LASF313
	.byte	0x1
	.value	0x220
	.quad	.L139
	.byte	0x0
	.uleb128 0x2b
	.long	0x1992
	.long	.LASF257
	.byte	0x1
	.value	0x226
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x225
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x227
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.long	0x19e0
	.long	.LASF258
	.byte	0x1
	.value	0x230
	.byte	0x1
	.long	0x35a
	.quad	.LFB218
	.quad	.LFE218
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x22f
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x22f
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x22f
	.long	0x10b3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x1a2e
	.long	.LASF260
	.byte	0x1
	.value	0x235
	.byte	0x1
	.long	0x35a
	.quad	.LFB219
	.quad	.LFE219
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x234
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x234
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x234
	.long	0x10b3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2b
	.long	0x1a86
	.long	.LASF261
	.byte	0x1
	.value	0x23a
	.byte	0x1
	.quad	.LFB220
	.quad	.LFE220
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x239
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x239
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.value	0x239
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x239
	.long	0x1082
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2b
	.long	0x1ade
	.long	.LASF262
	.byte	0x1
	.value	0x23e
	.byte	0x1
	.quad	.LFB221
	.quad	.LFE221
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x23d
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x23d
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.value	0x23d
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x23d
	.long	0x1082
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x1b91
	.long	.LASF263
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	0x35a
	.quad	.LFB222
	.quad	.LFE222
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x241
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x241
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x241
	.long	0x10b3
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x243
	.long	0x115d
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x244
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.value	0x245
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.long	.LASF237
	.byte	0x1
	.value	0x246
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	0x1b91
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x2e
	.long	0x1ba3
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x150
	.uleb128 0x26
	.long	0x1bad
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	0x1bb7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x1bc4
	.long	.LASF264
	.byte	0x1
	.value	0x1fd
	.byte	0x1
	.long	0x35a
	.byte	0x1
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.value	0x1fc
	.long	0x11f9
	.uleb128 0x3d
	.string	"d"
	.byte	0x1
	.value	0x1fe
	.long	0xb9
	.uleb128 0x3d
	.string	"val"
	.byte	0x1
	.value	0x1ff
	.long	0x35a
	.byte	0x0
	.uleb128 0x2b
	.long	0x1ecc
	.long	.LASF265
	.byte	0x1
	.value	0x290
	.byte	0x1
	.quad	.LFB223
	.quad	.LFE223
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x28f
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x28f
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.value	0x28f
	.long	0x35a
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x28f
	.long	0x1082
	.byte	0x1
	.byte	0x52
	.uleb128 0x21
	.string	"env"
	.byte	0x1
	.value	0x291
	.long	0x115d
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x292
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF237
	.byte	0x1
	.value	0x293
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.long	0x1c63
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x3d
	.string	"v"
	.byte	0x1
	.value	0x2d8
	.long	0x3f
	.byte	0x0
	.uleb128 0x2d
	.long	0x1cdb
	.long	0x1ecc
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x2e
	.long	0x1eda
	.uleb128 0x2f
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x26
	.long	0x1ee4
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.long	0x14f5
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x2e
	.long	0x1502
	.uleb128 0x2e
	.long	0x150d
	.uleb128 0x2f
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x26
	.long	0x1518
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x1521
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x1d24
	.long	0x1ef1
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x2e
	.long	0x1eff
	.uleb128 0x24
	.long	0x1f09
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	0x1f15
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	0x1f21
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	0x1f2d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	0x1f39
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.long	0x1f45
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x39
	.long	0x1d44
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x26
	.long	0x1f51
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	0x1f5d
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x1f69
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x38
	.long	0x1d66
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.value	0x2c9
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2d
	.long	0x1daa
	.long	0x14bd
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x2e
	.long	0x14ca
	.uleb128 0x24
	.long	0x14d5
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x26
	.long	0x14e0
	.byte	0x1
	.byte	0x50
	.uleb128 0x30
	.long	0x14e9
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1df1
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x30
	.long	0x1f7a
	.uleb128 0x30
	.long	0x1f86
	.uleb128 0x2f
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x26
	.long	0x1f93
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	0x1f9f
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x1fab
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1e95
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x26
	.long	0x1fba
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	0x1fc6
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.long	0x1fd2
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.long	0x1fe0
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x2e
	.long	0x1fee
	.uleb128 0x2e
	.long	0x1ff8
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x26
	.long	0x2004
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.long	0x2011
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x2e
	.long	0x201f
	.uleb128 0x2e
	.long	0x202b
	.uleb128 0x24
	.long	0x2037
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.long	0x2043
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	0x204f
	.uleb128 0x2e
	.long	0x205b
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x240
	.uleb128 0x26
	.long	0x2067
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	0x2072
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x14f5
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x2e
	.long	0x1502
	.uleb128 0x24
	.long	0x150d
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x290
	.uleb128 0x26
	.long	0x1518
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	0x1521
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x1ef1
	.long	.LASF266
	.byte	0x1
	.value	0x152
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.value	0x151
	.long	0x11f9
	.uleb128 0x3f
	.long	.LASF230
	.byte	0x1
	.value	0x153
	.long	0x3f
	.byte	0x0
	.uleb128 0x3e
	.long	0x1fe0
	.long	.LASF267
	.byte	0x1
	.value	0x1a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.value	0x1a1
	.long	0x11f9
	.uleb128 0x40
	.long	.LASF250
	.byte	0x1
	.value	0x1a1
	.long	0x344
	.uleb128 0x40
	.long	.LASF206
	.byte	0x1
	.value	0x1a1
	.long	0x344
	.uleb128 0x40
	.long	.LASF244
	.byte	0x1
	.value	0x1a2
	.long	0x344
	.uleb128 0x40
	.long	.LASF234
	.byte	0x1
	.value	0x1a2
	.long	0x344
	.uleb128 0x40
	.long	.LASF245
	.byte	0x1
	.value	0x1a3
	.long	0x344
	.uleb128 0x40
	.long	.LASF235
	.byte	0x1
	.value	0x1a3
	.long	0x344
	.uleb128 0x3f
	.long	.LASF243
	.byte	0x1
	.value	0x1a5
	.long	0x1163
	.uleb128 0x3f
	.long	.LASF268
	.byte	0x1
	.value	0x1a6
	.long	0x3f
	.uleb128 0x3f
	.long	.LASF246
	.byte	0x1
	.value	0x1a7
	.long	0x11f9
	.uleb128 0x41
	.long	0x1fb9
	.uleb128 0x3f
	.long	.LASF269
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.uleb128 0x3f
	.long	.LASF270
	.byte	0x1
	.value	0x1be
	.long	0x3f
	.uleb128 0x42
	.uleb128 0x3d
	.string	"__i"
	.byte	0x1
	.value	0x1c0
	.long	0x3f
	.uleb128 0x3d
	.string	"__j"
	.byte	0x1
	.value	0x1c0
	.long	0x3f
	.uleb128 0x3f
	.long	.LASF247
	.byte	0x1
	.value	0x1c0
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x3d
	.string	"__i"
	.byte	0x1
	.value	0x1c8
	.long	0x3f
	.uleb128 0x3d
	.string	"__j"
	.byte	0x1
	.value	0x1c8
	.long	0x3f
	.uleb128 0x3f
	.long	.LASF247
	.byte	0x1
	.value	0x1c8
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x2011
	.long	.LASF271
	.byte	0x1
	.value	0x197
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.value	0x196
	.long	0x11f9
	.uleb128 0x40
	.long	.LASF234
	.byte	0x1
	.value	0x196
	.long	0x3f
	.uleb128 0x3d
	.string	"env"
	.byte	0x1
	.value	0x198
	.long	0x115d
	.byte	0x0
	.uleb128 0x3e
	.long	0x207f
	.long	.LASF272
	.byte	0x2
	.value	0x272
	.byte	0x1
	.byte	0x3
	.uleb128 0x3c
	.string	"env"
	.byte	0x2
	.value	0x26d
	.long	0x115d
	.uleb128 0x40
	.long	.LASF273
	.byte	0x2
	.value	0x26e
	.long	0x3f
	.uleb128 0x40
	.long	.LASF81
	.byte	0x2
	.value	0x26e
	.long	0x46
	.uleb128 0x40
	.long	.LASF82
	.byte	0x2
	.value	0x26f
	.long	0x3dd
	.uleb128 0x40
	.long	.LASF83
	.byte	0x2
	.value	0x270
	.long	0x46
	.uleb128 0x40
	.long	.LASF84
	.byte	0x2
	.value	0x271
	.long	0x46
	.uleb128 0x3d
	.string	"sc"
	.byte	0x2
	.value	0x273
	.long	0x207f
	.uleb128 0x3f
	.long	.LASF274
	.byte	0x2
	.value	0x274
	.long	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x503
	.uleb128 0x2b
	.long	0x2313
	.long	.LASF275
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.quad	.LFB224
	.quad	.LFE224
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.value	0x2e4
	.long	0x10e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x2e4
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x2e6
	.long	0x11f9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x2e7
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x20fa
	.long	0x2313
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x211e
	.long	0x2334
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x2142
	.long	0x2334
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x2166
	.long	0x2334
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x218a
	.long	0x2313
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x21ae
	.long	0x2334
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x21d2
	.long	0x2334
	.quad	.LBB93
	.quad	.LBE93
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x21f6
	.long	0x2313
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x221a
	.long	0x2313
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x223e
	.long	0x2313
	.quad	.LBB99
	.quad	.LBE99
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x2262
	.long	0x2313
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x2286
	.long	0x2313
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x22aa
	.long	0x2313
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x22ce
	.long	0x2313
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x2d
	.long	0x22f2
	.long	0x2313
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.uleb128 0x23
	.long	0x2313
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x2e
	.long	0x2320
	.uleb128 0x2e
	.long	0x2329
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x2334
	.long	.LASF276
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x1e
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x1e
	.long	0x16d7
	.byte	0x0
	.uleb128 0x31
	.long	0x2355
	.long	.LASF277
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x10b9
	.byte	0x0
	.uleb128 0x22
	.long	0x25f3
	.long	.LASF278
	.byte	0x1
	.value	0x305
	.byte	0x1
	.long	0x3f
	.quad	.LFB225
	.quad	.LFE225
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.value	0x304
	.long	0x10e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x304
	.long	0xa6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x1
	.value	0x304
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x306
	.long	0x11f9
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x307
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x23da
	.long	0x25f3
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x23fe
	.long	0x2614
	.quad	.LBB115
	.quad	.LBE115
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x2422
	.long	0x2614
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x2446
	.long	0x2614
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x246a
	.long	0x25f3
	.quad	.LBB133
	.quad	.LBE133
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x248e
	.long	0x2614
	.quad	.LBB139
	.quad	.LBE139
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x24b2
	.long	0x2614
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x24d6
	.long	0x25f3
	.quad	.LBB151
	.quad	.LBE151
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x24fa
	.long	0x25f3
	.quad	.LBB153
	.quad	.LBE153
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x251e
	.long	0x25f3
	.quad	.LBB159
	.quad	.LBE159
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x2542
	.long	0x25f3
	.quad	.LBB165
	.quad	.LBE165
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x2566
	.long	0x25f3
	.quad	.LBB167
	.quad	.LBE167
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x258a
	.long	0x25f3
	.quad	.LBB169
	.quad	.LBE169
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x25ae
	.long	0x25f3
	.quad	.LBB175
	.quad	.LBE175
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x2d
	.long	0x25d2
	.long	0x25f3
	.quad	.LBB181
	.quad	.LBE181
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.uleb128 0x23
	.long	0x25f3
	.quad	.LBB189
	.quad	.LBE189
	.uleb128 0x2e
	.long	0x2600
	.uleb128 0x2e
	.long	0x2609
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x2614
	.long	.LASF280
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x32
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x32
	.long	0x12e5
	.byte	0x0
	.uleb128 0x31
	.long	0x2635
	.long	.LASF281
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0x2635
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x344
	.uleb128 0x2b
	.long	0x2673
	.long	.LASF282
	.byte	0x1
	.value	0x32b
	.byte	0x1
	.quad	.LFB226
	.quad	.LFE226
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x32a
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x32c
	.long	0x11f9
	.byte	0x0
	.uleb128 0x1f
	.long	0x26b2
	.byte	0x1
	.long	.LASF283
	.byte	0x1
	.value	0x344
	.byte	0x1
	.long	0x3f
	.quad	.LFB227
	.quad	.LFE227
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"env"
	.byte	0x1
	.value	0x343
	.long	0x115d
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x345
	.long	0x11f9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2b
	.long	0x276b
	.long	.LASF284
	.byte	0x1
	.value	0x36e
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x36d
	.long	0x276b
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x36f
	.long	0x344
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF269
	.byte	0x1
	.value	0x370
	.long	0x344
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF285
	.byte	0x1
	.value	0x371
	.long	0x344
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF244
	.byte	0x1
	.value	0x372
	.long	0x344
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF238
	.byte	0x1
	.value	0x373
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x374
	.long	0x365
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF250
	.byte	0x1
	.value	0x375
	.long	0x344
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x1
	.value	0x376
	.long	0x344
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.long	.LASF245
	.byte	0x1
	.value	0x377
	.long	0x344
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF243
	.byte	0x1
	.value	0x378
	.long	0x1163
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10fd
	.uleb128 0x34
	.long	0x27f2
	.byte	0x1
	.long	.LASF287
	.byte	0x1
	.value	0x394
	.byte	0x1
	.quad	.LFB229
	.quad	.LFE229
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x393
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF285
	.byte	0x1
	.value	0x393
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.long	.LASF270
	.byte	0x1
	.value	0x393
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x395
	.long	0x276b
	.uleb128 0x2f
	.quad	.LBB195
	.quad	.LBE195
	.uleb128 0x2a
	.long	.LASF238
	.byte	0x1
	.value	0x398
	.long	0x35a
	.byte	0x1
	.byte	0x58
	.uleb128 0x3f
	.long	.LASF286
	.byte	0x1
	.value	0x399
	.long	0x365
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x2866
	.long	.LASF288
	.byte	0x1
	.value	0x3ae
	.byte	0x1
	.long	0x35a
	.quad	.LFB230
	.quad	.LFE230
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x3ad
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x3ad
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x3ad
	.long	0x10b3
	.byte	0x1
	.byte	0x51
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x3af
	.long	0x276b
	.uleb128 0x2a
	.long	.LASF237
	.byte	0x1
	.value	0x3b0
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.value	0x3b1
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x28d6
	.long	.LASF289
	.byte	0x1
	.value	0x3d2
	.byte	0x1
	.quad	.LFB231
	.quad	.LFE231
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x3d1
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x3d1
	.long	0x3e8
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.value	0x3d1
	.long	0x35a
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.string	"tag"
	.byte	0x1
	.value	0x3d1
	.long	0x1082
	.byte	0x1
	.byte	0x52
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x3d3
	.long	0x276b
	.uleb128 0x2a
	.long	.LASF237
	.byte	0x1
	.value	0x3d4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.long	0x2990
	.long	.LASF290
	.byte	0x1
	.value	0x3f6
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.value	0x3f5
	.long	0x10e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x3f5
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x3f7
	.long	0x276b
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x3f8
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x294b
	.long	0x2334
	.quad	.LBB196
	.quad	.LBE196
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x2d
	.long	0x296f
	.long	0x2334
	.quad	.LBB198
	.quad	.LBE198
	.uleb128 0x2e
	.long	0x2341
	.uleb128 0x2e
	.long	0x234a
	.byte	0x0
	.uleb128 0x23
	.long	0x2990
	.quad	.LBB200
	.quad	.LBE200
	.uleb128 0x2e
	.long	0x299d
	.uleb128 0x2e
	.long	0x29a6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x29b1
	.long	.LASF291
	.byte	0x3
	.byte	0x1a
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x19
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x19
	.long	0x29b1
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x29b7
	.uleb128 0x6
	.long	0x365
	.uleb128 0x22
	.long	0x2a86
	.long	.LASF292
	.byte	0x1
	.value	0x402
	.byte	0x1
	.long	0x3f
	.quad	.LFB233
	.quad	.LFE233
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.value	0x401
	.long	0x10e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x401
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x1
	.value	0x401
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.value	0x403
	.long	0x276b
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x404
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.long	0x2a41
	.long	0x2614
	.quad	.LBB202
	.quad	.LBE202
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x2d
	.long	0x2a65
	.long	0x2614
	.quad	.LBB204
	.quad	.LBE204
	.uleb128 0x2e
	.long	0x2621
	.uleb128 0x2e
	.long	0x262a
	.byte	0x0
	.uleb128 0x23
	.long	0x2a86
	.quad	.LBB210
	.quad	.LBE210
	.uleb128 0x2e
	.long	0x2a93
	.uleb128 0x2e
	.long	0x2a9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x2aa7
	.long	.LASF293
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.string	"f"
	.byte	0x3
	.byte	0x2d
	.long	0x10e6
	.uleb128 0x32
	.string	"pv"
	.byte	0x3
	.byte	0x2d
	.long	0x2aa7
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x365
	.uleb128 0x2b
	.long	0x2af3
	.long	.LASF294
	.byte	0x1
	.value	0x412
	.byte	0x1
	.quad	.LFB234
	.quad	.LFE234
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x411
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x413
	.long	0x276b
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x414
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1f
	.long	0x2b32
	.byte	0x1
	.long	.LASF295
	.byte	0x1
	.value	0x428
	.byte	0x1
	.long	0x276b
	.quad	.LFB235
	.quad	.LFE235
	.byte	0x1
	.byte	0x57
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x429
	.long	0x276b
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF296
	.byte	0x1
	.value	0x42a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x43
	.long	.LASF297
	.byte	0x9
	.byte	0x91
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF298
	.byte	0x9
	.byte	0x92
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.long	.LASF299
	.byte	0x14
	.value	0x32c
	.long	0x115d
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.long	.LASF300
	.byte	0x14
	.value	0x376
	.long	0x2635
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF301
	.byte	0x13
	.byte	0x1b
	.long	0x2b75
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x10ec
	.uleb128 0x43
	.long	.LASF302
	.byte	0x15
	.byte	0x12
	.long	0x2b88
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x114c
	.uleb128 0x37
	.long	.LASF303
	.byte	0x1
	.byte	0x63
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	apic_io_memory
	.uleb128 0xa
	.long	0x2bb3
	.long	0x11f9
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x37
	.long	.LASF304
	.byte	0x1
	.byte	0x64
	.long	0x2ba3
	.byte	0x9
	.byte	0x3
	.quad	local_apics
	.uleb128 0x37
	.long	.LASF305
	.byte	0x1
	.byte	0x65
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	last_apic_id
	.uleb128 0xa
	.long	0x2bed
	.long	0x2bed
	.uleb128 0xb
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x108d
	.uleb128 0x2a
	.long	.LASF306
	.byte	0x1
	.value	0x337
	.long	0x2bdd
	.byte	0x9
	.byte	0x3
	.quad	apic_mem_read
	.uleb128 0xa
	.long	0x2c19
	.long	0x2c19
	.uleb128 0xb
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x105b
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x1
	.value	0x33d
	.long	0x2c09
	.byte	0x9
	.byte	0x3
	.quad	apic_mem_write
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x41b
	.long	0x2bdd
	.byte	0x9
	.byte	0x3
	.quad	ioapic_mem_read
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x1
	.value	0x421
	.long	0x2c09
	.byte	0x9
	.byte	0x3
	.quad	ioapic_mem_write
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x32
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.long	0xc5
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2c62
	.long	0x11b4
	.string	"cpu_set_apic_base"
	.long	0x11ff
	.string	"cpu_get_apic_base"
	.long	0x123e
	.string	"cpu_get_apic_tpr"
	.long	0x152d
	.string	"cpu_set_apic_tpr"
	.long	0x17e6
	.string	"apic_get_interrupt"
	.long	0x18a7
	.string	"apic_accept_pic_intr"
	.long	0x2673
	.string	"apic_init"
	.long	0x2771
	.string	"ioapic_set_irq"
	.long	0x2af3
	.string	"ioapic_init"
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
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF233:
	.string	"apic_set_irq"
.LASF152:
	.string	"efer"
.LASF9:
	.string	"size_t"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF12:
	.string	"int32_t"
.LASF29:
	.string	"_IO_save_end"
.LASF139:
	.string	"fpuc"
.LASF140:
	.string	"fptags"
.LASF74:
	.string	"floatx80"
.LASF138:
	.string	"fpus"
.LASF308:
	.string	"ioapic_mem_read"
.LASF22:
	.string	"_IO_write_base"
.LASF68:
	.string	"addr_code"
.LASF95:
	.string	"running"
.LASF38:
	.string	"_lock"
.LASF128:
	.string	"shellcode_context"
.LASF162:
	.string	"jmp_env"
.LASF289:
	.string	"ioapic_mem_writel"
.LASF27:
	.string	"_IO_save_base"
.LASF120:
	.string	"vaddr"
.LASF129:
	.string	"cc_src"
.LASF130:
	.string	"cc_dst"
.LASF265:
	.string	"apic_mem_writel"
.LASF156:
	.string	"intercept"
.LASF132:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF107:
	.string	"logged"
.LASF45:
	.string	"_mode"
.LASF211:
	.string	"next_time"
.LASF69:
	.string	"addend"
.LASF230:
	.string	"isrv"
.LASF16:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF192:
	.string	"cpuid_ext_features"
.LASF83:
	.string	"limit"
.LASF275:
	.string	"apic_save"
.LASF49:
	.string	"_IO_marker"
.LASF92:
	.string	"netidx"
.LASF184:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF121:
	.string	"CPUX86State"
.LASF150:
	.string	"sysenter_esp"
.LASF171:
	.string	"current_tb"
.LASF279:
	.string	"version_id"
.LASF155:
	.string	"vm_vmcb"
.LASF99:
	.string	"instruction_stage"
.LASF151:
	.string	"sysenter_eip"
.LASF237:
	.string	"index"
.LASF187:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor3"
.LASF216:
	.string	"TranslationBlock"
.LASF7:
	.string	"signed char"
.LASF285:
	.string	"vector"
.LASF48:
	.string	"_IO_FILE"
.LASF240:
	.string	"cpu_set_apic_tpr"
.LASF303:
	.string	"apic_io_memory"
.LASF225:
	.string	"cpu_get_apic_tpr"
.LASF109:
	.string	"load_value"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"argos_rtag_t"
.LASF194:
	.string	"cpuid_model"
.LASF214:
	.string	"CPUReadMemoryFunc"
.LASF299:
	.string	"cpu_single_env"
.LASF90:
	.string	"argos_rtag"
.LASF309:
	.string	"ioapic_mem_write"
.LASF114:
	.string	"store_value"
.LASF228:
	.string	"value"
.LASF133:
	.string	"segs"
.LASF196:
	.string	"cpuid_ext3_features"
.LASF73:
	.string	"float64"
.LASF272:
	.string	"cpu_x86_load_seg_cache"
.LASF193:
	.string	"cpuid_xlevel"
.LASF170:
	.string	"old_exception"
.LASF255:
	.string	"apic_timer_update"
.LASF47:
	.string	"_IO_lock_t"
.LASF215:
	.string	"QEMUFile"
.LASF112:
	.string	"load_addr_type"
.LASF212:
	.string	"timer"
.LASF208:
	.string	"count_shift"
.LASF87:
	.string	"argos_paddr_t"
.LASF84:
	.string	"flags"
.LASF19:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF280:
	.string	"qemu_get_be32s"
.LASF52:
	.string	"_pos"
.LASF297:
	.string	"stdin"
.LASF115:
	.string	"store_value_netidx"
.LASF205:
	.string	"log_dest"
.LASF144:
	.string	"sse_status"
.LASF30:
	.string	"_markers"
.LASF168:
	.string	"interrupt_request"
.LASF197:
	.string	"cpuid_apic_id"
.LASF229:
	.string	"apic_get_ppr"
.LASF219:
	.string	"IOAPICState"
.LASF243:
	.string	"deliver_bitmask"
.LASF209:
	.string	"initial_count"
.LASF206:
	.string	"dest_mode"
.LASF245:
	.string	"polarity"
.LASF262:
	.string	"apic_mem_writew"
.LASF166:
	.string	"exception_next_eip"
.LASF248:
	.string	"ffs_bit"
.LASF108:
	.string	"instruction_netidx"
.LASF257:
	.string	"apic_timer"
.LASF137:
	.string	"fpstt"
.LASF148:
	.string	"mmx_t0"
.LASF253:
	.string	"apic_accept_pic_intr"
.LASF46:
	.string	"_unused2"
.LASF178:
	.string	"singlestep_enabled"
.LASF292:
	.string	"ioapic_load"
.LASF173:
	.string	"mem_write_vaddr"
.LASF113:
	.string	"load_size"
.LASF97:
	.string	"logfile"
.LASF260:
	.string	"apic_mem_readw"
.LASF102:
	.string	"loadedby_eip"
.LASF293:
	.string	"qemu_get_be64s"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF142:
	.string	"fp_status"
.LASF85:
	.string	"XMMReg"
.LASF149:
	.string	"sysenter_cs"
.LASF256:
	.string	"current_time"
.LASF195:
	.string	"cpuid_ext2_features"
.LASF94:
	.string	"argos_shellcode_context_s"
.LASF161:
	.string	"intercept_exceptions"
.LASF78:
	.string	"floatx80_rounding_precision"
.LASF277:
	.string	"qemu_put_8s"
.LASF117:
	.string	"store_addr_type"
.LASF34:
	.string	"_old_offset"
.LASF311:
	.string	"/home/remco/Projects/Argos/src/hw/apic.c"
.LASF220:
	.string	"ioregsel"
.LASF153:
	.string	"star"
.LASF145:
	.string	"mxcsr"
.LASF267:
	.string	"apic_deliver"
.LASF283:
	.string	"apic_init"
.LASF3:
	.string	"long long int"
.LASF286:
	.string	"entry"
.LASF221:
	.string	"ioredtbl"
.LASF79:
	.string	"CPU86_LDouble"
.LASF276:
	.string	"qemu_put_be32s"
.LASF24:
	.string	"_IO_write_end"
.LASF134:
	.string	"a20_mask"
.LASF66:
	.string	"addr_read"
.LASF125:
	.string	"t1tag"
.LASF247:
	.string	"__mask"
.LASF111:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF312:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF185:
	.string	"cpu_model_str"
.LASF259:
	.string	"addr"
.LASF176:
	.string	"breakpoints"
.LASF118:
	.string	"store_size"
.LASF25:
	.string	"_IO_buf_base"
.LASF238:
	.string	"mask"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF204:
	.string	"spurious_vec"
.LASF310:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF203:
	.string	"arb_id"
.LASF271:
	.string	"apic_startup"
.LASF181:
	.string	"watchpoint_hit"
.LASF88:
	.string	"argos_netidx_t"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF213:
	.string	"CPUWriteMemoryFunc"
.LASF51:
	.string	"_sbuf"
.LASF284:
	.string	"ioapic_service"
.LASF103:
	.string	"storedby_eip"
.LASF110:
	.string	"load_value_netidx"
.LASF223:
	.string	"cpu_set_apic_base"
.LASF274:
	.string	"new_hflags"
.LASF199:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF172:
	.string	"mem_write_pc"
.LASF61:
	.string	"__saved_mask"
.LASF305:
	.string	"last_apic_id"
.LASF59:
	.string	"__jmpbuf"
.LASF218:
	.string	"PicState2"
.LASF183:
	.string	"cpu_index"
.LASF57:
	.string	"__jmp_buf"
.LASF301:
	.string	"isa_pic"
.LASF180:
	.string	"nb_watchpoints"
.LASF64:
	.string	"target_phys_addr_t"
.LASF249:
	.string	"apic_get_delivery_bitmask"
.LASF217:
	.string	"QEMUTimer"
.LASF282:
	.string	"apic_reset"
.LASF75:
	.string	"long double"
.LASF246:
	.string	"apic_iter"
.LASF202:
	.string	"apicbase"
.LASF241:
	.string	"apic_init_ipi"
.LASF306:
	.string	"apic_mem_read"
.LASF231:
	.string	"apic_update_irq"
.LASF136:
	.string	"prev_fpip"
.LASF269:
	.string	"trig_mode"
.LASF39:
	.string	"_offset"
.LASF242:
	.string	"apic_bus_deliver"
.LASF60:
	.string	"__mask_was_saved"
.LASF273:
	.string	"seg_reg"
.LASF191:
	.string	"cpuid_features"
.LASF287:
	.string	"ioapic_set_irq"
.LASF157:
	.string	"intercept_cr_read"
.LASF258:
	.string	"apic_mem_readb"
.LASF100:
	.string	"trace_stage"
.LASF263:
	.string	"apic_mem_readl"
.LASF15:
	.string	"long long unsigned int"
.LASF53:
	.string	"uint8_t"
.LASF54:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF222:
	.string	"QEMUClock"
.LASF31:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF143:
	.string	"fp_convert"
.LASF105:
	.string	"instruction"
.LASF307:
	.string	"apic_mem_write"
.LASF131:
	.string	"cc_op"
.LASF182:
	.string	"next_cpu"
.LASF251:
	.string	"apic_get_interrupt"
.LASF72:
	.string	"float32"
.LASF65:
	.string	"CPUTLBEntry"
.LASF290:
	.string	"ioapic_save"
.LASF244:
	.string	"delivery_mode"
.LASF201:
	.string	"cpu_env"
.LASF159:
	.string	"intercept_dr_read"
.LASF295:
	.string	"ioapic_init"
.LASF116:
	.string	"store_addr"
.LASF302:
	.string	"vm_clock"
.LASF164:
	.string	"error_code"
.LASF224:
	.string	"cpu_get_apic_base"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF235:
	.string	"trigger_mode"
.LASF98:
	.string	"instruction_cnt"
.LASF226:
	.string	"get_highest_priority_int"
.LASF122:
	.string	"regs"
.LASF250:
	.string	"dest"
.LASF234:
	.string	"vector_num"
.LASF11:
	.string	"__off64_t"
.LASF101:
	.string	"is_system_call"
.LASF160:
	.string	"intercept_dr_write"
.LASF124:
	.string	"t0tag"
.LASF264:
	.string	"apic_get_current_count"
.LASF96:
	.string	"stop_condition"
.LASF167:
	.string	"smbase"
.LASF126:
	.string	"t2tag"
.LASF26:
	.string	"_IO_buf_end"
.LASF63:
	.string	"target_ulong"
.LASF158:
	.string	"intercept_cr_write"
.LASF266:
	.string	"apic_eoi"
.LASF8:
	.string	"short int"
.LASF67:
	.string	"addr_write"
.LASF56:
	.string	"uint64_t"
.LASF227:
	.string	"fls_bit"
.LASF281:
	.string	"qemu_get_8s"
.LASF188:
	.string	"cpuid_vendor2"
.LASF80:
	.string	"SegmentCache"
.LASF300:
	.string	"phys_ram_dirty"
.LASF86:
	.string	"MMXReg"
.LASF296:
	.string	"io_memory"
.LASF36:
	.string	"_vtable_offset"
.LASF165:
	.string	"exception_is_int"
.LASF141:
	.string	"fpregs"
.LASF146:
	.string	"xmm_regs"
.LASF261:
	.string	"apic_mem_writeb"
.LASF268:
	.string	"dest_shorthand"
.LASF169:
	.string	"user_mode_only"
.LASF154:
	.string	"vm_hsave"
.LASF177:
	.string	"nb_breakpoints"
.LASF135:
	.string	"fpip"
.LASF106:
	.string	"instruction_size"
.LASF190:
	.string	"cpuid_version"
.LASF232:
	.string	"irrv"
.LASF200:
	.string	"APICState"
.LASF127:
	.string	"regtags"
.LASF76:
	.string	"float_status"
.LASF20:
	.string	"_IO_read_end"
.LASF254:
	.string	"lvt0"
.LASF304:
	.string	"local_apics"
.LASF55:
	.string	"uint32_t"
.LASF32:
	.string	"_fileno"
.LASF252:
	.string	"intno"
.LASF270:
	.string	"level"
.LASF163:
	.string	"exception_index"
.LASF210:
	.string	"initial_count_load_time"
.LASF179:
	.string	"watchpoint"
.LASF62:
	.string	"jmp_buf"
.LASF294:
	.string	"ioapic_reset"
.LASF70:
	.string	"float"
.LASF298:
	.string	"stdout"
.LASF104:
	.string	"executed_eip"
.LASF82:
	.string	"base"
.LASF313:
	.string	"no_timer"
.LASF23:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"eflags"
.LASF278:
	.string	"apic_load"
.LASF174:
	.string	"tlb_table"
.LASF13:
	.string	"int64_t"
.LASF81:
	.string	"selector"
.LASF288:
	.string	"ioapic_mem_readl"
.LASF175:
	.string	"tb_jmp_cache"
.LASF91:
	.string	"origin"
.LASF198:
	.string	"envmap"
.LASF14:
	.string	"__sigset_t"
.LASF186:
	.string	"cpuid_level"
.LASF207:
	.string	"divide_conf"
.LASF236:
	.string	"set_bit"
.LASF119:
	.string	"argos_shellcode_context_t"
.LASF89:
	.string	"argos_bytemap_t"
.LASF239:
	.string	"reset_bit"
.LASF291:
	.string	"qemu_put_be64s"
.LASF147:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
