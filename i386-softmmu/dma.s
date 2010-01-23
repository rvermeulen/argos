	.file	"dma.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 32
	.type	channels, @object
	.size	channels, 32
channels:
	.long	-1
	.long	2
	.long	3
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"dma: invalid channel %#x %#x\n"
	.text
	.p2align 4,,15
	.type	write_page, @function
write_page:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/dma.c"
	.loc 1 84 0
	.loc 1 88 0
	movq	%rsi, %rax
	andl	$7, %eax
	movl	channels(,%rax,4), %eax
	.loc 1 89 0
	cmpl	$-1, %eax
	je	.L4
	.loc 1 93 0
	cltq
	leaq	(%rax,%rax,4), %rax
	movb	%dl, 21(%rdi,%rax,8)
	.loc 1 94 0
	ret
	.p2align 4,,7
.L4:
	.loc 1 90 0
	movq	stderr(%rip), %rdi
	movl	%edx, %ecx
	xorl	%eax, %eax
	movl	%esi, %edx
	movl	$.LC0, %esi
	jmp	fprintf
.LFE194:
	.size	write_page, .-write_page
	.p2align 4,,15
	.type	write_pageh, @function
write_pageh:
.LFB195:
	.loc 1 97 0
	.loc 1 101 0
	movq	%rsi, %rax
	andl	$7, %eax
	movl	channels(,%rax,4), %eax
	.loc 1 102 0
	cmpl	$-1, %eax
	je	.L7
	.loc 1 106 0
	cltq
	leaq	(%rax,%rax,4), %rax
	movb	%dl, 22(%rdi,%rax,8)
	.loc 1 107 0
	ret
	.p2align 4,,7
.L7:
	.loc 1 103 0
	movq	stderr(%rip), %rdi
	movl	%edx, %ecx
	xorl	%eax, %eax
	movl	%esi, %edx
	movl	$.LC0, %esi
	jmp	fprintf
.LFE195:
	.size	write_pageh, .-write_pageh
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"dma: invalid channel read %#x\n"
	.text
	.p2align 4,,15
	.type	read_page, @function
read_page:
.LFB196:
	.loc 1 110 0
	.loc 1 114 0
	movq	%rsi, %rax
	.loc 1 110 0
	subq	$8, %rsp
.LCFI0:
	.loc 1 114 0
	andl	$7, %eax
	movl	channels(,%rax,4), %eax
	.loc 1 115 0
	cmpl	$-1, %eax
	je	.L10
	.loc 1 119 0
	cltq
	leaq	(%rax,%rax,4), %rax
	movzbl	21(%rdi,%rax,8), %eax
	.loc 1 120 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L10:
	.loc 1 116 0
	movq	stderr(%rip), %rdi
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	call	fprintf
	.loc 1 117 0
	xorl	%eax, %eax
	.loc 1 120 0
	addq	$8, %rsp
	ret
.LFE196:
	.size	read_page, .-read_page
	.p2align 4,,15
	.type	read_pageh, @function
read_pageh:
.LFB197:
	.loc 1 123 0
	.loc 1 127 0
	movq	%rsi, %rax
	.loc 1 123 0
	subq	$8, %rsp
.LCFI1:
	.loc 1 127 0
	andl	$7, %eax
	movl	channels(,%rax,4), %eax
	.loc 1 128 0
	cmpl	$-1, %eax
	je	.L13
	.loc 1 132 0
	cltq
	leaq	(%rax,%rax,4), %rax
	movzbl	22(%rdi,%rax,8), %eax
	.loc 1 133 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L13:
	.loc 1 129 0
	movq	stderr(%rip), %rdi
	movl	%esi, %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	call	fprintf
	.loc 1 130 0
	xorl	%eax, %eax
	.loc 1 133 0
	addq	$8, %rsp
	ret
.LFE197:
	.size	read_pageh, .-read_pageh
	.p2align 4,,15
	.type	read_chan, @function
read_chan:
.LFB200:
	.loc 1 154 0
	.loc 1 159 0
	movl	4(%rdi), %ecx
.LBB2:
.LBB3:
	.loc 1 148 0
	movzbl	3(%rdi), %r8d
.LBE3:
.LBE2:
	.loc 1 159 0
	shrl	%cl, %esi
	movl	%esi, %eax
	andl	$15, %eax
	.loc 1 160 0
	sarl	%eax
	.loc 1 162 0
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdi,%rax,8), %r9
	leaq	8(%r9), %rdx
	.loc 1 164 0
	movzbl	12(%rdx), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	decl	%eax
.LBB4:
.LBB5:
	.loc 1 149 0
	testl	%r8d, %r8d
	sete	3(%rdi)
.LBE5:
.LBE4:
	.loc 1 166 0
	andl	$1, %esi
	je	.L18
	.loc 1 167 0
	movzwl	10(%rdx), %eax
	sall	%cl, %eax
	subl	4(%rdx), %eax
	.loc 1 172 0
	leal	(%rcx,%r8,8), %ecx
	sarl	%cl, %eax
	andl	$255, %eax
	.loc 1 173 0
	ret
	.p2align 4,,7
.L18:
	.loc 1 169 0
	imull	4(%rdx), %eax
	.loc 1 172 0
	leal	(%rcx,%r8,8), %ecx
	.loc 1 169 0
	addl	8(%r9), %eax
	.loc 1 172 0
	sarl	%cl, %eax
	andl	$255, %eax
	.loc 1 173 0
	ret
.LFE200:
	.size	read_chan, .-read_chan
	.p2align 4,,15
	.type	write_chan, @function
write_chan:
.LFB201:
	.loc 1 176 0
	.loc 1 181 0
	movl	4(%rdi), %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	.loc 1 183 0
	movl	%esi, %ecx
	.loc 1 181 0
	andl	$15, %eax
	.loc 1 183 0
	andl	$1, %ecx
	.loc 1 182 0
	sarl	%eax
	.loc 1 184 0
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdi,%rax,8), %r9
.LBB6:
.LBB7:
	.loc 1 148 0
	movzbl	3(%rdi), %eax
.LBE7:
.LBE6:
	.loc 1 184 0
	leaq	8(%r9), %r8
.LBB8:
.LBB9:
	.loc 1 149 0
	testl	%eax, %eax
	sete	3(%rdi)
.LBE9:
.LBE8:
	.loc 1 145 0
	je	.L21
	.loc 1 186 0
	movslq	%ecx,%rax
	movb	%dl, 9(%r8,%rax,2)
.LBB10:
.LBB11:
	.loc 1 140 0
	movzwl	8(%r8), %eax
	movl	4(%rdi), %ecx
	sall	%cl, %eax
	movl	%eax, 8(%r9)
	.loc 1 141 0
	movl	$0, 4(%r8)
.LBE11:
.LBE10:
	ret
	.p2align 4,,7
.L21:
	.loc 1 189 0
	movslq	%ecx,%rax
	movb	%dl, 8(%r8,%rax,2)
	ret
.LFE201:
	.size	write_chan, .-write_chan
	.section	.rodata.str1.1
.LC3:
	.string	"dma: unknown iport %#x\n"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"dma: command %#x not supported\n"
	.text
	.p2align 4,,15
	.type	write_cont, @function
write_cont:
.LFB202:
	.loc 1 194 0
	.loc 1 198 0
	movl	4(%rdi), %ecx
	shrl	%cl, %esi
	andl	$15, %esi
	.loc 1 199 0
	leal	-8(%rsi), %eax
	cmpl	$7, %eax
	ja	.L40
	mov	%eax, %eax
	jmp	*.L41(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L41:
	.quad	.L27
	.quad	.L29
	.quad	.L32
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.text
	.p2align 4,,7
.L40:
	.loc 1 265 0
	movl	%esi, %edx
	movl	$.LC3, %esi
.L42:
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	jmp	fprintf
.L39:
	.loc 1 261 0
	movb	%dl, 2(%rdi)
	.loc 1 262 0
	ret
.L27:
	.loc 1 201 0
	testl	%edx, %edx
	je	.L28
	testb	$-5, %dl
	.loc 1 202 0
	movl	$.LC2, %esi
	.loc 1 201 0
	jne	.L42
.L28:
	.loc 1 205 0
	movb	%dl, 1(%rdi)
	.loc 1 206 0
	ret
.L29:
	.loc 1 209 0
	movl	%edx, %esi
	andl	$3, %esi
	.loc 1 210 0
	andl	$4, %edx
	jne	.L43
	.loc 1 214 0
	leal	4(%rsi), %ecx
	movl	$-2, %eax
	roll	%cl, %eax
	andb	%al, (%rdi)
.L31:
	.loc 1 216 0
	movl	$-2, %eax
	movl	%esi, %ecx
	roll	%cl, %eax
	andb	%al, (%rdi)
	.loc 1 217 0
	ret
.L32:
	.loc 1 220 0
	testb	$4, %dl
	je	.L33
	.loc 1 221 0
	andl	$3, %edx
	movl	$1, %eax
	movl	%edx, %ecx
	sall	%cl, %eax
	orb	%al, 2(%rdi)
	ret
.L35:
	.loc 1 241 0
	movq	%rdx, %rax
	andl	$3, %eax
	leaq	(%rax,%rax,4), %rax
	movb	%dl, 20(%rdi,%rax,8)
	.loc 1 242 0
	ret
.L36:
	.loc 1 246 0
	movb	$0, 3(%rdi)
	.loc 1 247 0
	ret
.L37:
	.loc 1 250 0
	movb	$0, 3(%rdi)
	.loc 1 251 0
	movb	$-1, 2(%rdi)
	.loc 1 252 0
	movb	$0, (%rdi)
	.loc 1 253 0
	movb	$0, 1(%rdi)
	.loc 1 254 0
	ret
.L38:
	.loc 1 257 0
	movb	$0, 2(%rdi)
	.loc 1 258 0
	.p2align 4,,1
	ret
.L33:
	.loc 1 223 0
	andl	$3, %edx
	movl	$-2, %eax
	movl	%edx, %ecx
	roll	%cl, %eax
	andb	%al, 2(%rdi)
	.loc 1 224 0
	ret
.L43:
	.loc 1 211 0
	leal	4(%rsi), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orb	%al, (%rdi)
	jmp	.L31
.LFE202:
	.size	write_cont, .-write_cont
	.p2align 4,,15
	.type	read_cont, @function
read_cont:
.LFB203:
	.loc 1 278 0
	.loc 1 282 0
	movl	4(%rdi), %ecx
	shrl	%cl, %esi
	andl	$15, %esi
	.loc 1 283 0
	cmpl	$8, %esi
	je	.L46
	cmpl	$15, %esi
	je	.L47
	.loc 1 292 0
	xorl	%edx, %edx
	.loc 1 298 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L46:
	.loc 1 285 0
	movzbl	(%rdi), %eax
	movzbl	%al, %edx
	.loc 1 286 0
	andl	$-16, %eax
	movb	%al, (%rdi)
	.loc 1 298 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L47:
	.loc 1 289 0
	movzbl	2(%rdi), %edx
	.loc 1 298 0
	movl	%edx, %eax
	ret
.LFE203:
	.size	read_cont, .-read_cont
	.p2align 4,,15
.globl DMA_get_channel_mode
	.type	DMA_get_channel_mode, @function
DMA_get_channel_mode:
.LFB204:
	.loc 1 301 0
	.loc 1 302 0
	movq	%rdi, %rax
	andl	$3, %eax
	leaq	(%rax,%rax,4), %rax
	salq	$3, %rax
	cmpl	$4, %edi
	leaq	168(%rax), %rdx
	cmovge	%rdx, %rax
	movzbl	dma_controllers+20(%rax), %eax
	.loc 1 303 0
	ret
.LFE204:
	.size	DMA_get_channel_mode, .-DMA_get_channel_mode
	.p2align 4,,15
.globl DMA_hold_DREQ
	.type	DMA_hold_DREQ, @function
DMA_hold_DREQ:
.LFB205:
	.loc 1 306 0
	.loc 1 309 0
	xorl	%edx, %edx
	cmpl	$3, %edi
	.loc 1 312 0
	movl	$1, %eax
	.loc 1 309 0
	setg	%dl
	.loc 1 310 0
	andl	$3, %edi
	.loc 1 312 0
	movslq	%edx,%rdx
	leal	4(%rdi), %ecx
	imulq	$168, %rdx, %rdx
	sall	%cl, %eax
	orb	%al, dma_controllers(%rdx)
	ret
.LFE205:
	.size	DMA_hold_DREQ, .-DMA_hold_DREQ
	.p2align 4,,15
.globl DMA_release_DREQ
	.type	DMA_release_DREQ, @function
DMA_release_DREQ:
.LFB206:
	.loc 1 316 0
	.loc 1 319 0
	xorl	%edx, %edx
	cmpl	$3, %edi
	.loc 1 322 0
	movl	$-2, %eax
	.loc 1 319 0
	setg	%dl
	.loc 1 320 0
	andl	$3, %edi
	.loc 1 322 0
	movslq	%edx,%rdx
	leal	4(%rdi), %ecx
	imulq	$168, %rdx, %rdx
	roll	%cl, %eax
	andb	%al, dma_controllers(%rdx)
	ret
.LFE206:
	.size	DMA_release_DREQ, .-DMA_release_DREQ
	.p2align 4,,15
.globl DMA_run
	.type	DMA_run, @function
DMA_run:
.LFB208:
	.loc 1 351 0
	pushq	%r15
.LCFI2:
	pushq	%r14
.LCFI3:
	movl	$1, %r14d
	pushq	%r13
.LCFI4:
	.loc 1 357 0
	xorl	%r13d, %r13d
	.loc 1 351 0
	pushq	%r12
.LCFI5:
	.loc 1 355 0
	movl	$dma_controllers, %r12d
	.loc 1 351 0
	pushq	%rbp
.LCFI6:
	pushq	%rbx
.LCFI7:
	subq	$8, %rsp
.LCFI8:
.L63:
	movslq	%r13d,%rax
	leal	0(,%r13,4), %r15d
	.loc 1 358 0
	xorl	%ebp, %ebp
	imulq	$168, %rax, %rbx
	.p2align 4,,7
.L62:
.LBB12:
	.loc 1 363 0
	movzbl	2(%r12), %eax
	.loc 1 361 0
	movl	%r14d, %esi
	movl	%ebp, %ecx
	sall	%cl, %esi
	.loc 1 363 0
	testl	%esi, %eax
	jne	.L59
	movzbl	(%r12), %edx
	movl	%esi, %eax
	sall	$4, %eax
	testl	%eax, %edx
	jne	.L68
.L59:
.LBE12:
	.loc 1 358 0
	incl	%ebp
	addq	$40, %rbx
	cmpl	$3, %ebp
	jle	.L62
	.loc 1 357 0
	incl	%r13d
	addq	$168, %r12
	cmpl	$1, %r13d
	jle	.L63
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L68:
.LBB13:
.LBB14:
.LBB15:
	.loc 1 344 0
	movzwl	dma_controllers+18(%rbx), %ecx
	movl	dma_controllers+12(%rbx), %edx
	leal	(%r15,%rbp), %esi
	movq	dma_controllers+40(%rbx), %rdi
	leal	1(%rcx), %eax
	movl	%r13d, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	call	*dma_controllers+32(%rbx)
	.loc 1 346 0
	movl	%eax, dma_controllers+12(%rbx)
	jmp	.L59
.LBE15:
.LBE14:
.LBE13:
.LFE208:
	.size	DMA_run, .-DMA_run
	.p2align 4,,15
.globl DMA_register_channel
	.type	DMA_register_channel, @function
DMA_register_channel:
.LFB209:
	.loc 1 372 0
	.loc 1 376 0
	xorl	%eax, %eax
	cmpl	$3, %edi
	setg	%al
	.loc 1 379 0
	andl	$3, %edi
	cltq
	leaq	(%rdi,%rdi,4), %rdi
	imulq	$168, %rax, %rax
	leaq	dma_controllers+8(%rax,%rdi,8), %rdi
	.loc 1 380 0
	movq	%rsi, 24(%rdi)
	.loc 1 381 0
	movq	%rdx, 32(%rdi)
	ret
.LFE209:
	.size	DMA_register_channel, .-DMA_register_channel
	.p2align 4,,15
.globl DMA_read_memory
	.type	DMA_read_memory, @function
DMA_read_memory:
.LFB210:
	.loc 1 385 0
	.loc 1 386 0
	movq	%rdi, %rax
	.loc 1 385 0
	pushq	%rbp
.LCFI9:
	movq	%rsi, %rbp
	.loc 1 386 0
	andl	$3, %eax
	.loc 1 385 0
	movl	%edx, %esi
	.loc 1 386 0
	leaq	(%rax,%rax,4), %rax
	.loc 1 385 0
	pushq	%rbx
.LCFI10:
	movl	%ecx, %ebx
	.loc 1 386 0
	salq	$3, %rax
	.loc 1 385 0
	subq	$8, %rsp
.LCFI11:
	.loc 1 386 0
	leaq	dma_controllers+176(%rax), %rcx
	addq	$dma_controllers+8, %rax
	cmpl	$4, %edi
	cmovl	%rax, %rcx
	.loc 1 387 0
	movzbl	14(%rcx), %eax
	movzbl	13(%rcx), %edx
	andl	$127, %eax
	sall	$16, %edx
	sall	$24, %eax
	orl	%edx, %eax
	orl	(%rcx), %eax
	.loc 1 389 0
	testb	$32, 12(%rcx)
	.loc 1 387 0
	movslq	%eax,%r8
	.loc 1 389 0
	je	.L73
.LBB16:
.LBB17:
	.file 2 "../cpu-all.h"
	.loc 2 924 0
	movslq	%esi,%rax
.LBB18:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
.LBE18:
	.loc 2 924 0
	subq	%rax, %r8
	movslq	%ebx,%rax
.LBB19:
	.loc 2 925 0
	movl	%ebx, %edx
.LBE19:
	.loc 2 924 0
	subq	%rax, %r8
.LBB20:
	.loc 2 925 0
	movq	%r8, %rdi
	call	cpu_physical_memory_rw
.LBE20:
.LBE17:
	.loc 1 395 0
	movl	%ebx, %esi
	xorl	%ecx, %ecx
	sarl	%esi
	cmpl	$0, %esi
	jle	.L79
	movq	%rbp, %rdx
	.p2align 4,,7
.L78:
.LBB21:
	.loc 1 396 0
	movl	%ebx, %eax
	subl	%ecx, %eax
.LBE21:
	.loc 1 395 0
	incl	%ecx
.LBB22:
	.loc 1 396 0
	cltq
	movzbl	-1(%rax,%rbp), %eax
	.loc 1 397 0
	movb	%al, (%rdx)
	incq	%rdx
.LBE22:
	.loc 1 395 0
	cmpl	%ecx, %esi
	jg	.L78
.LBE16:
	.loc 1 404 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L73:
.LBB23:
	.loc 2 924 0
	movslq	%esi,%rdi
.LBB24:
	.loc 2 925 0
	xorl	%ecx, %ecx
	movl	%ebx, %edx
.LBE24:
	.loc 2 924 0
	addq	%r8, %rdi
.LBB25:
	.loc 2 925 0
	movq	%rbp, %rsi
	call	cpu_physical_memory_rw
.L79:
.LBE25:
.LBE23:
	.loc 1 404 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE210:
	.size	DMA_read_memory, .-DMA_read_memory
	.p2align 4,,15
.globl DMA_write_memory
	.type	DMA_write_memory, @function
DMA_write_memory:
.LFB211:
	.loc 1 407 0
	.loc 1 408 0
	movq	%rdi, %rax
	.loc 1 407 0
	pushq	%rbp
.LCFI12:
	movq	%rsi, %rbp
	.loc 1 408 0
	andl	$3, %eax
	.loc 1 407 0
	movl	%edx, %esi
	.loc 1 408 0
	leaq	(%rax,%rax,4), %rax
	.loc 1 407 0
	pushq	%rbx
.LCFI13:
	movl	%ecx, %ebx
	.loc 1 408 0
	salq	$3, %rax
	.loc 1 407 0
	subq	$8, %rsp
.LCFI14:
	.loc 1 408 0
	leaq	dma_controllers+176(%rax), %rcx
	addq	$dma_controllers+8, %rax
	cmpl	$4, %edi
	cmovl	%rax, %rcx
	.loc 1 409 0
	movzbl	14(%rcx), %eax
	movzbl	13(%rcx), %edx
	andl	$127, %eax
	sall	$16, %edx
	sall	$24, %eax
	orl	%edx, %eax
	orl	(%rcx), %eax
	.loc 1 411 0
	testb	$32, 12(%rcx)
	.loc 1 409 0
	movslq	%eax,%r8
	.loc 1 411 0
	je	.L86
.LBB26:
.LBB27:
	.loc 2 929 0
	movslq	%esi,%rax
.LBB28:
	.loc 2 930 0
	movl	$1, %ecx
	movl	%ebx, %edx
.LBE28:
	.loc 2 929 0
	subq	%rax, %r8
	movslq	%ebx,%rax
.LBB29:
	.loc 2 930 0
	movq	%rbp, %rsi
.LBE29:
	.loc 2 929 0
	subq	%rax, %r8
.LBB30:
	.loc 2 930 0
	movq	%r8, %rdi
	call	cpu_physical_memory_rw
.LBE30:
.LBE27:
	.loc 1 417 0
	xorl	%ecx, %ecx
	cmpl	%ebx, %ecx
	jge	.L92
	movq	%rbp, %rdx
	.p2align 4,,7
.L91:
.LBB31:
	.loc 1 418 0
	movl	%ebx, %eax
	subl	%ecx, %eax
.LBE31:
	.loc 1 417 0
	incl	%ecx
.LBB32:
	.loc 1 418 0
	cltq
	movzbl	-1(%rax,%rbp), %eax
	.loc 1 419 0
	movb	%al, (%rdx)
	incq	%rdx
.LBE32:
	.loc 1 417 0
	cmpl	%ebx, %ecx
	jl	.L91
.LBE26:
	.loc 1 426 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L86:
.LBB33:
	.loc 2 929 0
	movslq	%esi,%rdi
.LBB34:
	.loc 2 930 0
	movl	$1, %ecx
	movl	%ebx, %edx
.LBE34:
	.loc 2 929 0
	addq	%r8, %rdi
.LBB35:
	.loc 2 930 0
	movq	%rbp, %rsi
	call	cpu_physical_memory_rw
.L92:
.LBE35:
.LBE33:
	.loc 1 426 0
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE211:
	.size	DMA_write_memory, .-DMA_write_memory
	.p2align 4,,15
.globl DMA_schedule
	.type	DMA_schedule, @function
DMA_schedule:
.LFB212:
	.loc 1 430 0
	.loc 1 431 0
	movq	cpu_single_env(%rip), %rdi
	.loc 1 432 0
	testq	%rdi, %rdi
	je	.L96
	.loc 1 433 0
	movl	$1, %esi
	jmp	cpu_interrupt
	.p2align 4,,7
.L96:
	rep ; ret
.LFE212:
	.size	DMA_schedule, .-DMA_schedule
	.p2align 4,,15
	.type	dma_reset, @function
dma_reset:
.LFB213:
	.loc 1 437 0
	.loc 1 439 0
	movl	4(%rdi), %ecx
	movl	$13, %esi
	xorl	%edx, %edx
	sall	%cl, %esi
	jmp	write_cont
.LFE213:
	.size	dma_reset, .-dma_reset
	.section	.rodata
	.align 16
	.type	page_port_list.0, @object
	.size	page_port_list.0, 16
page_port_list.0:
	.long	1
	.long	2
	.long	3
	.long	7
	.text
	.p2align 4,,15
	.type	dma_init2, @function
dma_init2:
.LFB214:
	.loc 1 445 0
	pushq	%r15
.LCFI15:
	movl	%esi, %r15d
	pushq	%r14
.LCFI16:
	movl	%edx, %r14d
	pushq	%r13
.LCFI17:
	pushq	%r12
.LCFI18:
	.loc 1 450 0
	xorl	%r12d, %r12d
	.loc 1 445 0
	pushq	%rbp
.LCFI19:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI20:
	subq	$8, %rsp
.LCFI21:
	.loc 1 445 0
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	.loc 1 449 0
	movl	%edx, 4(%rbp)
	.p2align 4,,7
.L103:
	.loc 1 451 0
	movl	%r12d, %eax
	movl	%r14d, %ecx
	movq	%rbp, %r8
	sall	%cl, %eax
	movl	$1, %edx
	movl	$write_chan, %ecx
	leal	(%rax,%r15), %ebx
	movl	$1, %esi
	.loc 1 450 0
	incl	%r12d
	.loc 1 451 0
	movl	%ebx, %edi
	call	register_ioport_write
	.loc 1 452 0
	movq	%rbp, %r8
	movl	$read_chan, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	call	register_ioport_read
	.loc 1 450 0
	cmpl	$7, %r12d
	jle	.L103
	.loc 1 454 0
	xorl	%r12d, %r12d
	.p2align 4,,7
.L108:
	.loc 1 455 0
	movslq	%r12d,%rax
	movq	%rbp, %r8
	movl	$write_page, %ecx
	movl	page_port_list.0(,%rax,4), %r13d
	movl	4(%rsp), %eax
	movl	$1, %edx
	movl	$1, %esi
	leal	(%r13,%rax), %ebx
	movl	%ebx, %edi
	call	register_ioport_write
	.loc 1 457 0
	movq	%rbp, %r8
	movl	$read_page, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	call	register_ioport_read
	.loc 1 459 0
	movl	(%rsp), %eax
	testl	%eax, %eax
	js	.L106
	.loc 1 460 0
	movl	(%rsp), %ecx
	movq	%rbp, %r8
	movl	$1, %edx
	movl	$1, %esi
	leal	(%r13,%rcx), %ebx
	movl	$write_pageh, %ecx
	movl	%ebx, %edi
	call	register_ioport_write
	.loc 1 462 0
	movq	%rbp, %r8
	movl	$read_pageh, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	call	register_ioport_read
.L106:
	.loc 1 454 0
	incl	%r12d
	cmpl	$3, %r12d
	jle	.L108
	.loc 1 466 0
	xorl	%r12d, %r12d
	.p2align 4,,7
.L112:
	.loc 1 467 0
	leal	8(%r12), %eax
	movl	%r14d, %ecx
	movq	%rbp, %r8
	movl	$1, %edx
	movl	$1, %esi
	.loc 1 466 0
	incl	%r12d
	.loc 1 467 0
	sall	%cl, %eax
	movl	$write_cont, %ecx
	leal	(%rax,%r15), %ebx
	movl	%ebx, %edi
	call	register_ioport_write
	.loc 1 469 0
	movq	%rbp, %r8
	movl	$read_cont, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%ebx, %edi
	call	register_ioport_read
	.loc 1 466 0
	cmpl	$7, %r12d
	jle	.L112
	.loc 1 472 0
	movq	%rbp, %rsi
	movl	$dma_reset, %edi
	call	qemu_register_reset
	.loc 1 473 0
	addq	$8, %rsp
	movq	%rbp, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	dma_reset
.LFE214:
	.size	dma_init2, .-dma_init2
	.p2align 4,,15
	.type	dma_save, @function
dma_save:
.LFB215:
	.loc 1 477 0
	pushq	%r12
.LCFI22:
	movl	$3, %r12d
	pushq	%rbp
.LCFI23:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI24:
	.loc 1 477 0
	movq	%rsi, %rbx
.LBB36:
.LBB37:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	1(%rsi), %esi
	call	qemu_put_byte
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	movzbl	2(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	movzbl	3(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE41:
.LBE40:
	.loc 1 485 0
	movl	4(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.p2align 4,,7
.L133:
.LBB42:
	.loc 1 489 0
	movl	8(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
	.loc 1 490 0
	movl	12(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be32
.LBB43:
.LBB44:
	.loc 3 37 0
	movzwl	16(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be16
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	movzwl	18(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_be16
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	.loc 3 42 0
	movzbl	20(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	movzbl	21(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE50:
.LBE49:
.LBB51:
.LBB52:
	movzbl	22(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE52:
.LBE51:
.LBB53:
.LBB54:
	movzbl	23(%rbx), %esi
	movq	%rbp, %rdi
	call	qemu_put_byte
.LBE54:
.LBE53:
.LBB55:
.LBB56:
	movzbl	24(%rbx), %esi
	movq	%rbp, %rdi
	addq	$40, %rbx
	call	qemu_put_byte
	decl	%r12d
	jns	.L133
.LBE56:
.LBE55:
.LBE42:
	.loc 1 487 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE215:
	.size	dma_save, .-dma_save
	.p2align 4,,15
	.type	dma_load, @function
dma_load:
.LFB216:
	.loc 1 502 0
	pushq	%r12
.LCFI25:
	.loc 1 506 0
	decl	%edx
	.loc 1 507 0
	movl	$-22, %eax
	.loc 1 502 0
	pushq	%rbp
.LCFI26:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI27:
	.loc 1 502 0
	movq	%rsi, %rbx
	.loc 1 506 0
	jne	.L136
.LBB57:
.LBB58:
	.loc 3 62 0
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
	movb	%al, 1(%rbx)
	movl	$3, %r12d
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
	movb	%al, 2(%rbx)
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	call	qemu_get_byte
.LBE70:
.LBE69:
	.loc 1 513 0
	movq	%rbp, %rdi
.LBB71:
.LBB72:
	.loc 3 62 0
	movb	%al, 3(%rbx)
.LBE72:
.LBE71:
	.loc 1 513 0
	call	qemu_get_be32
	movl	%eax, 4(%rbx)
	.p2align 4,,7
.L151:
.LBB73:
	.loc 1 517 0
	movq	%rbp, %rdi
	call	qemu_get_be32
	.loc 1 518 0
	movq	%rbp, %rdi
	.loc 1 517 0
	movl	%eax, 8(%rbx)
	.loc 1 518 0
	call	qemu_get_be32
.LBB74:
.LBB75:
	.loc 3 57 0
	movq	%rbp, %rdi
.LBE75:
.LBE74:
	.loc 1 518 0
	movl	%eax, 12(%rbx)
.LBB76:
.LBB77:
	.loc 3 57 0
	call	qemu_get_be16
.LBE77:
.LBE76:
.LBB78:
.LBB79:
	movq	%rbp, %rdi
.LBE79:
.LBE78:
.LBB80:
.LBB81:
	movw	%ax, 16(%rbx)
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	call	qemu_get_be16
.LBE83:
.LBE82:
.LBB84:
.LBB85:
	.loc 3 62 0
	movq	%rbp, %rdi
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	.loc 3 57 0
	movw	%ax, 18(%rbx)
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	.loc 3 62 0
	call	qemu_get_byte
.LBE89:
.LBE88:
.LBB90:
.LBB91:
	movq	%rbp, %rdi
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	movb	%al, 20(%rbx)
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	call	qemu_get_byte
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	movq	%rbp, %rdi
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	movb	%al, 21(%rbx)
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	call	qemu_get_byte
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	movq	%rbp, %rdi
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movb	%al, 22(%rbx)
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	call	qemu_get_byte
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	movq	%rbp, %rdi
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	movb	%al, 23(%rbx)
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	call	qemu_get_byte
	movb	%al, 24(%rbx)
	addq	$40, %rbx
	decl	%r12d
	jns	.L151
.LBE113:
.LBE112:
.LBE73:
	.loc 1 527 0
	xorl	%eax, %eax
.L136:
	.loc 1 528 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE216:
	.size	dma_load, .-dma_load
	.section	.rodata.str1.1
.LC4:
	.string	"dma"
	.text
	.p2align 4,,15
.globl DMA_init
	.type	DMA_init, @function
DMA_init:
.LFB217:
	.loc 1 531 0
	.loc 1 532 0
	cmpl	$1, %edi
	.loc 1 531 0
	pushq	%rbx
.LCFI28:
	.loc 1 532 0
	movl	$128, %ecx
	sbbl	%r8d, %r8d
	.loc 1 531 0
	movl	%edi, %ebx
	.loc 1 532 0
	xorl	%edx, %edx
	orl	$1152, %r8d
	xorl	%esi, %esi
	movl	$dma_controllers, %edi
	call	dma_init2
	.loc 1 534 0
	cmpl	$1, %ebx
	movl	$136, %ecx
	movl	$1, %edx
	sbbl	%r8d, %r8d
	movl	$192, %esi
	movq	$dma_controllers+168, %rdi
	orl	$1160, %r8d
	call	dma_init2
	.loc 1 536 0
	movl	$dma_controllers, %r9d
	movl	$dma_load, %r8d
	movl	$dma_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC4, %edi
	call	register_savevm
	.loc 1 537 0
	popq	%rbx
	movq	$dma_controllers+168, %r9
	movl	$dma_load, %r8d
	movl	$dma_save, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	jmp	register_savevm
.LFE217:
	.size	DMA_init, .-DMA_init
	.local	dma_controllers
	.comm	dma_controllers,336,32
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
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI1-.LFB197
	.byte	0xe
	.uleb128 0x10
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
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI2-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
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
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI9-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI12-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI15-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI22-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI25-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI28-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE40:
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
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI0-.LFB196
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI1-.LFB197
	.byte	0xe
	.uleb128 0x10
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
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI2-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
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
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI9-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI12-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI15-.LFB214
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.byte	0x4
	.long	.LCFI22-.LFB215
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.byte	0x4
	.long	.LCFI25-.LFB216
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.byte	0x4
	.long	.LCFI28-.LFB217
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE41:
	.file 4 "/usr/include/stdint.h"
	.file 5 "../qemu-common.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "../cpu-defs.h"
	.file 9 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 10 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 15 "/usr/include/sys/types.h"
	.file 16 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 17 "/usr/include/setjmp.h"
	.file 18 "/usr/include/bits/setjmp.h"
	.file 19 "/usr/include/bits/sigset.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1f95
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF267
	.byte	0x1
	.long	.LASF268
	.long	.LASF269
	.uleb128 0x2
	.long	.LASF9
	.byte	0xe
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
	.long	0x3f
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x5
	.long	0x79
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
	.byte	0xd
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xd
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.long	0xbb
	.long	0x3f
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x2
	.long	.LASF12
	.byte	0xf
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xf
	.byte	0xc6
	.long	0x4d
	.uleb128 0xa
	.long	0xf0
	.byte	0x80
	.byte	0x13
	.byte	0x20
	.uleb128 0xb
	.long	.LASF17
	.byte	0x13
	.byte	0x1f
	.long	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x100
	.long	0x38
	.uleb128 0x8
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x13
	.byte	0x20
	.long	0xd9
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0xb
	.byte	0x31
	.long	0x11d
	.uleb128 0xc
	.long	0x2e9
	.long	.LASF48
	.byte	0xd8
	.byte	0xb
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xc
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xc
	.value	0x115
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xc
	.value	0x116
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xc
	.value	0x117
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xc
	.value	0x118
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xc
	.value	0x119
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xc
	.value	0x11a
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xc
	.value	0x11b
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xc
	.value	0x11c
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xc
	.value	0x11e
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xc
	.value	0x11f
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xc
	.value	0x120
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xc
	.value	0x122
	.long	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xc
	.value	0x124
	.long	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xc
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xc
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xc
	.value	0x12c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xc
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xc
	.value	0x131
	.long	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xc
	.value	0x132
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xc
	.value	0x136
	.long	0x343
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xc
	.value	0x13f
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xc
	.value	0x148
	.long	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xc
	.value	0x149
	.long	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xc
	.value	0x14a
	.long	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xc
	.value	0x14b
	.long	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xc
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xc
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xc
	.value	0x150
	.long	0x349
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0xc
	.byte	0xb4
	.uleb128 0xc
	.long	0x327
	.long	.LASF49
	.byte	0x18
	.byte	0xc
	.byte	0xba
	.uleb128 0xb
	.long	.LASF50
	.byte	0xc
	.byte	0xbb
	.long	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF51
	.byte	0xc
	.byte	0xbc
	.long	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF52
	.byte	0xc
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f0
	.uleb128 0x6
	.byte	0x8
	.long	0x11d
	.uleb128 0x7
	.long	0x343
	.long	0x79
	.uleb128 0x8
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e9
	.uleb128 0x7
	.long	0x359
	.long	0x79
	.uleb128 0x8
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x4
	.byte	0x31
	.long	0x80
	.uleb128 0x2
	.long	.LASF54
	.byte	0x4
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF57
	.byte	0x12
	.byte	0x20
	.long	0x390
	.uleb128 0x7
	.long	0x3a0
	.long	0x4d
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x3d7
	.long	.LASF58
	.byte	0xc8
	.byte	0x11
	.byte	0x24
	.uleb128 0xb
	.long	.LASF59
	.byte	0x11
	.byte	0x29
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x11
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF61
	.byte	0x11
	.byte	0x2b
	.long	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x11
	.byte	0x31
	.long	0x3e2
	.uleb128 0x7
	.long	0x3f2
	.long	0x3a0
	.uleb128 0x8
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x31
	.long	0x36f
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x49
	.long	0x37a
	.uleb128 0xc
	.long	0x44d
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.uleb128 0xb
	.long	.LASF66
	.byte	0x8
	.byte	0x70
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF67
	.byte	0x8
	.byte	0x71
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF68
	.byte	0x8
	.byte	0x72
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF69
	.byte	0x8
	.byte	0x74
	.long	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x75
	.long	0x408
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
	.byte	0x10
	.byte	0x3b
	.long	0x458
	.uleb128 0x2
	.long	.LASF73
	.byte	0x10
	.byte	0x3c
	.long	0x45f
	.uleb128 0x2
	.long	.LASF74
	.byte	0x10
	.byte	0x3e
	.long	0x487
	.uleb128 0x3
	.long	.LASF75
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4b7
	.long	.LASF76
	.byte	0x2
	.byte	0x10
	.byte	0x6d
	.uleb128 0xb
	.long	.LASF77
	.byte	0x10
	.byte	0x6e
	.long	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x10
	.byte	0x70
	.long	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x10
	.byte	0x72
	.long	0x48e
	.uleb128 0xf
	.long	.LASF79
	.byte	0x9
	.value	0x198
	.long	0x47c
	.uleb128 0x10
	.long	0x518
	.long	.LASF80
	.byte	0x10
	.byte	0x9
	.value	0x19d
	.uleb128 0xd
	.long	.LASF81
	.byte	0x9
	.value	0x19e
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x9
	.value	0x19f
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0x9
	.value	0x1a0
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x9
	.value	0x1a1
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x9
	.value	0x1a2
	.long	0x4ce
	.uleb128 0x11
	.long	0x570
	.byte	0x10
	.byte	0x9
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x9
	.value	0x1a5
	.long	0x570
	.uleb128 0x12
	.string	"_w"
	.byte	0x9
	.value	0x1a6
	.long	0x580
	.uleb128 0x12
	.string	"_l"
	.byte	0x9
	.value	0x1a7
	.long	0x590
	.uleb128 0x12
	.string	"_q"
	.byte	0x9
	.value	0x1a8
	.long	0x5a0
	.uleb128 0x12
	.string	"_s"
	.byte	0x9
	.value	0x1a9
	.long	0x5b0
	.uleb128 0x12
	.string	"_d"
	.byte	0x9
	.value	0x1aa
	.long	0x5c0
	.byte	0x0
	.uleb128 0x7
	.long	0x580
	.long	0x359
	.uleb128 0x8
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x7
	.long	0x590
	.long	0x364
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x5a0
	.long	0x36f
	.uleb128 0x8
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x5b0
	.long	0x37a
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x5c0
	.long	0x466
	.uleb128 0x8
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.long	0x5d0
	.long	0x471
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x9
	.value	0x1ab
	.long	0x524
	.uleb128 0x11
	.long	0x611
	.byte	0x8
	.byte	0x9
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x9
	.value	0x1ae
	.long	0x611
	.uleb128 0x12
	.string	"_w"
	.byte	0x9
	.value	0x1af
	.long	0x621
	.uleb128 0x12
	.string	"_l"
	.byte	0x9
	.value	0x1b0
	.long	0x631
	.uleb128 0x12
	.string	"q"
	.byte	0x9
	.value	0x1b1
	.long	0x37a
	.byte	0x0
	.uleb128 0x7
	.long	0x621
	.long	0x359
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x631
	.long	0x364
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.long	0x641
	.long	0x36f
	.uleb128 0x8
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x9
	.value	0x1b2
	.long	0x5dc
	.uleb128 0x2
	.long	.LASF87
	.byte	0x7
	.byte	0x2f
	.long	0x36f
	.uleb128 0x2
	.long	.LASF88
	.byte	0x7
	.byte	0x34
	.long	0x36f
	.uleb128 0x2
	.long	.LASF89
	.byte	0x7
	.byte	0x35
	.long	0x658
	.uleb128 0xc
	.long	0x697
	.long	.LASF90
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0xb
	.long	.LASF91
	.byte	0x6
	.byte	0x38
	.long	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x6
	.byte	0x39
	.long	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.byte	0x3d
	.long	0x66e
	.uleb128 0xc
	.long	0x817
	.long	.LASF94
	.byte	0xd0
	.byte	0xa
	.byte	0x36
	.uleb128 0xb
	.long	.LASF95
	.byte	0xa
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF96
	.byte	0xa
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0xa
	.byte	0x3d
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF97
	.byte	0xa
	.byte	0x3f
	.long	0x817
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF98
	.byte	0xa
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF99
	.byte	0xa
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF100
	.byte	0xa
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF101
	.byte	0xa
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.long	.LASF102
	.byte	0xa
	.byte	0x4a
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF103
	.byte	0xa
	.byte	0x4b
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.long	.LASF104
	.byte	0xa
	.byte	0x4c
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF105
	.byte	0xa
	.byte	0x4e
	.long	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF106
	.byte	0xa
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.long	.LASF107
	.byte	0xa
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF108
	.byte	0xa
	.byte	0x54
	.long	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.long	.LASF109
	.byte	0xa
	.byte	0x56
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF110
	.byte	0xa
	.byte	0x58
	.long	0x83d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF111
	.byte	0xa
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF112
	.byte	0xa
	.byte	0x5c
	.long	0x80
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF113
	.byte	0xa
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.long	.LASF114
	.byte	0xa
	.byte	0x60
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF115
	.byte	0xa
	.byte	0x62
	.long	0x83d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF116
	.byte	0xa
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF117
	.byte	0xa
	.byte	0x66
	.long	0x80
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.long	.LASF118
	.byte	0xa
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x112
	.uleb128 0x7
	.long	0x82d
	.long	0x79
	.uleb128 0x8
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x7
	.long	0x83d
	.long	0x658
	.uleb128 0x8
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x658
	.uleb128 0x2
	.long	.LASF119
	.byte	0xa
	.byte	0x69
	.long	0x6a2
	.uleb128 0x11
	.long	0x86e
	.byte	0x10
	.byte	0x9
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x9
	.value	0x20a
	.long	0x4c2
	.uleb128 0x12
	.string	"mmx"
	.byte	0x9
	.value	0x20e
	.long	0x641
	.byte	0x0
	.uleb128 0x11
	.long	0x8a4
	.byte	0x8
	.byte	0x9
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x9
	.value	0x215
	.long	0x458
	.uleb128 0x12
	.string	"d"
	.byte	0x9
	.value	0x216
	.long	0x45f
	.uleb128 0x12
	.string	"i32"
	.byte	0x9
	.value	0x217
	.long	0x3f
	.uleb128 0x12
	.string	"i64"
	.byte	0x9
	.value	0x218
	.long	0xce
	.byte	0x0
	.uleb128 0x14
	.long	0x8cc
	.byte	0x10
	.byte	0x9
	.value	0x246
	.uleb128 0xd
	.long	.LASF120
	.byte	0x9
	.value	0x246
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x9
	.value	0x246
	.long	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe68
	.long	.LASF121
	.value	0xb820
	.byte	0x9
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF122
	.byte	0x9
	.value	0x1df
	.long	0xe68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x9
	.value	0x1e0
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF123
	.byte	0x9
	.value	0x1e1
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF124
	.byte	0x9
	.value	0x1e6
	.long	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF125
	.byte	0x9
	.value	0x1e6
	.long	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0x9
	.value	0x1e6
	.long	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0x9
	.value	0x1e7
	.long	0xe78
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0x9
	.value	0x1e9
	.long	0x843
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF129
	.byte	0x9
	.value	0x1ec
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF130
	.byte	0x9
	.value	0x1ed
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF131
	.byte	0x9
	.value	0x1ee
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x9
	.value	0x1ef
	.long	0xc3
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF132
	.byte	0x9
	.value	0x1f0
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF133
	.byte	0x9
	.value	0x1f3
	.long	0xe88
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x9
	.value	0x1f4
	.long	0x518
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x9
	.value	0x1f5
	.long	0x518
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x9
	.value	0x1f6
	.long	0x518
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x9
	.value	0x1f7
	.long	0x518
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x9
	.value	0x1f9
	.long	0xe98
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF134
	.byte	0x9
	.value	0x1fa
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF135
	.byte	0x9
	.value	0x201
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF136
	.byte	0x9
	.value	0x202
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF137
	.byte	0x9
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF138
	.byte	0x9
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF139
	.byte	0x9
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF140
	.byte	0x9
	.value	0x207
	.long	0x611
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF141
	.byte	0x9
	.value	0x20f
	.long	0xea8
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF142
	.byte	0x9
	.value	0x212
	.long	0x4b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x9
	.value	0x213
	.long	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF143
	.byte	0x9
	.value	0x219
	.long	0x86e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x9
	.value	0x21b
	.long	0x4b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF145
	.byte	0x9
	.value	0x21c
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF146
	.byte	0x9
	.value	0x21d
	.long	0xeb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF147
	.byte	0x9
	.value	0x21e
	.long	0x5d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF148
	.byte	0x9
	.value	0x21f
	.long	0x641
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF149
	.byte	0x9
	.value	0x222
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF150
	.byte	0x9
	.value	0x223
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF151
	.byte	0x9
	.value	0x224
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF152
	.byte	0x9
	.value	0x225
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF153
	.byte	0x9
	.value	0x226
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x9
	.value	0x228
	.long	0x3fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF155
	.byte	0x9
	.value	0x229
	.long	0x3fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x9
	.value	0x22a
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF157
	.byte	0x9
	.value	0x22b
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x9
	.value	0x22c
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF159
	.byte	0x9
	.value	0x22d
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF160
	.byte	0x9
	.value	0x22e
	.long	0x364
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF161
	.byte	0x9
	.value	0x22f
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x9
	.value	0x238
	.long	0x37a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x9
	.value	0x23b
	.long	0x3d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF163
	.byte	0x9
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF164
	.byte	0x9
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x9
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x9
	.value	0x23f
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x9
	.value	0x240
	.long	0xe68
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x9
	.value	0x241
	.long	0x36f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x9
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF169
	.byte	0x9
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0x9
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF171
	.byte	0x9
	.value	0x246
	.long	0xece
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF172
	.byte	0x9
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF173
	.byte	0x9
	.value	0x246
	.long	0x3f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x9
	.value	0x246
	.long	0xed4
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x9
	.value	0x246
	.long	0xeea
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0x9
	.value	0x246
	.long	0xefb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x9
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF178
	.byte	0x9
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF179
	.byte	0x9
	.value	0x246
	.long	0xf0b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF180
	.byte	0x9
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF181
	.byte	0x9
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF182
	.byte	0x9
	.value	0x246
	.long	0xbb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF183
	.byte	0x9
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF184
	.byte	0x9
	.value	0x246
	.long	0xbb
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF185
	.byte	0x9
	.value	0x246
	.long	0x6e
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF186
	.byte	0x9
	.value	0x249
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF187
	.byte	0x9
	.value	0x24a
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF188
	.byte	0x9
	.value	0x24b
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x9
	.value	0x24c
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF190
	.byte	0x9
	.value	0x24d
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF191
	.byte	0x9
	.value	0x24e
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF192
	.byte	0x9
	.value	0x24f
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF193
	.byte	0x9
	.value	0x250
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF194
	.byte	0x9
	.value	0x251
	.long	0xf1b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF195
	.byte	0x9
	.value	0x252
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x9
	.value	0x253
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF197
	.byte	0x9
	.value	0x254
	.long	0x36f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF198
	.byte	0x9
	.value	0x25b
	.long	0xf2b
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF199
	.byte	0x9
	.value	0x25f
	.long	0xf37
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0x7
	.long	0xe78
	.long	0x3f2
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xe88
	.long	0x697
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xe98
	.long	0x518
	.uleb128 0x8
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x7
	.long	0xea8
	.long	0x3f2
	.uleb128 0x8
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0x7
	.long	0xeb8
	.long	0x84e
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0xec8
	.long	0x5d0
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.long	.LASF200
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xec8
	.uleb128 0x7
	.long	0xeea
	.long	0x44d
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.uleb128 0x8
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.long	0xefb
	.long	0xece
	.uleb128 0x18
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0x7
	.long	0xf0b
	.long	0x3f2
	.uleb128 0x8
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0xf1b
	.long	0x8a4
	.uleb128 0x8
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0xf2b
	.long	0x36f
	.uleb128 0x8
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x663
	.uleb128 0x17
	.long	.LASF201
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xf31
	.uleb128 0xf
	.long	.LASF121
	.byte	0x9
	.value	0x260
	.long	0x8cc
	.uleb128 0x6
	.byte	0x8
	.long	0x697
	.uleb128 0x6
	.byte	0x8
	.long	0xf55
	.uleb128 0x5
	.long	0x359
	.uleb128 0x2
	.long	.LASF202
	.byte	0x5
	.byte	0x68
	.long	0xf65
	.uleb128 0x6
	.byte	0x8
	.long	0xf6b
	.uleb128 0x19
	.long	0xf8a
	.byte	0x1
	.long	0x3f
	.uleb128 0x1a
	.long	0xbb
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF203
	.byte	0x5
	.byte	0x73
	.long	0xf95
	.uleb128 0x17
	.long	.LASF203
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0xf8a
	.uleb128 0xc
	.long	0x102c
	.long	.LASF204
	.byte	0x28
	.byte	0x1
	.byte	0x2a
	.uleb128 0x13
	.string	"now"
	.byte	0x1
	.byte	0x2b
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x2c
	.long	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF205
	.byte	0x1
	.byte	0x2d
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF206
	.byte	0x1
	.byte	0x2e
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.long	.LASF207
	.byte	0x1
	.byte	0x2f
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.long	.LASF208
	.byte	0x1
	.byte	0x30
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x13
	.string	"eop"
	.byte	0x1
	.byte	0x31
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF209
	.byte	0x1
	.byte	0x32
	.long	0xf5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF184
	.byte	0x1
	.byte	0x33
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	0x108d
	.long	.LASF210
	.byte	0xa8
	.byte	0x1
	.byte	0x39
	.uleb128 0xb
	.long	.LASF211
	.byte	0x1
	.byte	0x3a
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF212
	.byte	0x1
	.byte	0x3b
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF213
	.byte	0x1
	.byte	0x3c
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF214
	.byte	0x1
	.byte	0x3d
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF215
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF122
	.byte	0x1
	.byte	0x3f
	.long	0x108d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.long	0x109d
	.long	0xfa1
	.uleb128 0x8
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x1b
	.long	0x10f9
	.long	.LASF219
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x53
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x53
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x1
	.byte	0x53
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x55
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0x56
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x102c
	.uleb128 0x1b
	.long	0x115b
	.long	.LASF220
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x60
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x60
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x1
	.byte	0x60
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x62
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0x63
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0x11b9
	.long	.LASF221
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x36f
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x6d
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x6d
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x6d
	.long	0xf49
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x6f
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0x70
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0x1217
	.long	.LASF222
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x36f
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x7a
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x7a
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x7a
	.long	0xf49
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x7c
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0x7d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0x12e2
	.long	.LASF223
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.long	0x36f
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0x99
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0x99
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x99
	.long	0xf49
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x9b
	.long	0x10f9
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.uleb128 0x21
	.long	.LASF224
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF225
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.string	"ff"
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.string	"dir"
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.byte	0x9d
	.long	0x12e2
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.long	0x12e8
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x24
	.long	0x12f9
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x26
	.long	0x1302
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x27
	.long	0x130d
	.long	.LASF226
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.byte	0x90
	.long	0x10f9
	.uleb128 0x1d
	.string	"ff"
	.byte	0x1
	.byte	0x92
	.long	0x3f
	.byte	0x0
	.uleb128 0x1b
	.long	0x13ef
	.long	.LASF227
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0xaf
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0xaf
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x1
	.byte	0xaf
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0xb1
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF225
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.uleb128 0x1e
	.long	.LASF224
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.byte	0xb3
	.long	0x12e2
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x13b7
	.long	0x12e8
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x24
	.long	0x12f9
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.long	0x1302
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x13ef
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x24
	.long	0x13fc
	.uleb128 0x24
	.long	0x1405
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x2b
	.long	0x1410
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x141a
	.long	.LASF228
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.byte	0x87
	.long	0x10f9
	.uleb128 0x2d
	.long	.LASF218
	.byte	0x1
	.byte	0x87
	.long	0x3f
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.byte	0x89
	.long	0x12e2
	.byte	0x0
	.uleb128 0x1b
	.long	0x1483
	.long	.LASF229
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x1
	.byte	0xc1
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x1
	.byte	0xc1
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x1
	.byte	0xc1
	.long	0x36f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0xc3
	.long	0x10f9
	.uleb128 0x1e
	.long	.LASF225
	.byte	0x1
	.byte	0xc4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF218
	.byte	0x1
	.byte	0xc4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2e
	.long	0x14f5
	.long	.LASF230
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	0x36f
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x115
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.long	.LASF216
	.byte	0x1
	.value	0x115
	.long	0x36f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x115
	.long	0xf49
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x117
	.long	0x10f9
	.uleb128 0x32
	.long	.LASF225
	.byte	0x1
	.value	0x118
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x118
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x34
	.long	0x1528
	.byte	0x1
	.long	.LASF232
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	0x3f
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x12c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x35
	.long	0x1571
	.byte	0x1
	.long	.LASF233
	.byte	0x1
	.value	0x132
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x131
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.long	.LASF234
	.byte	0x1
	.value	0x133
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x36
	.long	.LASF218
	.byte	0x1
	.value	0x133
	.long	0x3f
	.byte	0x0
	.uleb128 0x35
	.long	0x15ba
	.byte	0x1
	.long	.LASF235
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x13b
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x32
	.long	.LASF234
	.byte	0x1
	.value	0x13d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x36
	.long	.LASF218
	.byte	0x1
	.value	0x13d
	.long	0x3f
	.byte	0x0
	.uleb128 0x35
	.long	0x1659
	.byte	0x1
	.long	.LASF236
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x160
	.long	0x10f9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	.LASF237
	.byte	0x1
	.value	0x161
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.long	.LASF218
	.byte	0x1
	.value	0x161
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	0x161a
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x32
	.long	.LASF213
	.byte	0x1
	.value	0x167
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.long	0x1659
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x24
	.long	0x1667
	.uleb128 0x24
	.long	0x1673
	.uleb128 0x2a
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x26
	.long	0x167f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x1689
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x1694
	.long	.LASF238
	.byte	0x1
	.value	0x146
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF234
	.byte	0x1
	.value	0x145
	.long	0x3f
	.uleb128 0x39
	.long	.LASF218
	.byte	0x1
	.value	0x145
	.long	0x3f
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x147
	.long	0x3f
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x148
	.long	0x12e2
	.byte	0x0
	.uleb128 0x35
	.long	0x1705
	.byte	0x1
	.long	.LASF239
	.byte	0x1
	.value	0x174
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x171
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.long	.LASF209
	.byte	0x1
	.value	0x172
	.long	0xf5a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x173
	.long	0xbb
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x175
	.long	0x12e2
	.byte	0x1
	.byte	0x55
	.uleb128 0x36
	.long	.LASF218
	.byte	0x1
	.value	0x176
	.long	0x3f
	.uleb128 0x32
	.long	.LASF234
	.byte	0x1
	.value	0x176
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x34
	.long	0x180a
	.byte	0x1
	.long	.LASF240
	.byte	0x1
	.value	0x181
	.byte	0x1
	.long	0x3f
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x180
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x180
	.long	0xbb
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x180
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x180
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x182
	.long	0x12e2
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.long	.LASF241
	.byte	0x1
	.value	0x183
	.long	0x3fd
	.byte	0x1
	.byte	0x58
	.uleb128 0x3a
	.long	0x17e2
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x186
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x187
	.long	0x180a
	.uleb128 0x29
	.long	0x17cf
	.long	0x1810
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x24
	.long	0x181e
	.uleb128 0x24
	.long	0x182a
	.uleb128 0x24
	.long	0x1836
	.byte	0x0
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x18c
	.long	0x359
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x1810
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x3b
	.long	0x181e
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	0x182a
	.uleb128 0x24
	.long	0x1836
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x359
	.uleb128 0x38
	.long	0x1843
	.long	.LASF242
	.byte	0x2
	.value	0x39c
	.byte	0x1
	.byte	0x3
	.uleb128 0x39
	.long	.LASF241
	.byte	0x2
	.value	0x39a
	.long	0x3fd
	.uleb128 0x3c
	.string	"buf"
	.byte	0x2
	.value	0x39b
	.long	0x180a
	.uleb128 0x3c
	.string	"len"
	.byte	0x2
	.value	0x39b
	.long	0x3f
	.byte	0x0
	.uleb128 0x34
	.long	0x1948
	.byte	0x1
	.long	.LASF243
	.byte	0x1
	.value	0x197
	.byte	0x1
	.long	0x3f
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x196
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x196
	.long	0xbb
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x196
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x196
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x198
	.long	0x12e2
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.long	.LASF241
	.byte	0x1
	.value	0x199
	.long	0x3fd
	.byte	0x1
	.byte	0x58
	.uleb128 0x3a
	.long	0x1920
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x19c
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x19d
	.long	0x180a
	.uleb128 0x29
	.long	0x190d
	.long	0x1948
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x24
	.long	0x1956
	.uleb128 0x24
	.long	0x1962
	.uleb128 0x24
	.long	0x196e
	.byte	0x0
	.uleb128 0x25
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x1a2
	.long	0x359
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x1948
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x3b
	.long	0x1956
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	0x1962
	.uleb128 0x24
	.long	0x196e
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x197b
	.long	.LASF244
	.byte	0x2
	.value	0x3a1
	.byte	0x1
	.byte	0x3
	.uleb128 0x39
	.long	.LASF241
	.byte	0x2
	.value	0x39f
	.long	0x3fd
	.uleb128 0x3c
	.string	"buf"
	.byte	0x2
	.value	0x3a0
	.long	0xf4f
	.uleb128 0x3c
	.string	"len"
	.byte	0x2
	.value	0x3a0
	.long	0x3f
	.byte	0x0
	.uleb128 0x35
	.long	0x19b8
	.byte	0x1
	.long	.LASF245
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x1ad
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.string	"env"
	.byte	0x1
	.value	0x1af
	.long	0x19b8
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xf3d
	.uleb128 0x3d
	.long	0x19f6
	.long	.LASF246
	.byte	0x1
	.value	0x1b5
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x1b4
	.long	0xbb
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x1b6
	.long	0x10f9
	.byte	0x0
	.uleb128 0x3d
	.long	0x1a7e
	.long	.LASF247
	.byte	0x1
	.value	0x1bd
	.byte	0x1
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x1bb
	.long	0x10f9
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF82
	.byte	0x1
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2f
	.long	.LASF215
	.byte	0x1
	.value	0x1bb
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x1bc
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF249
	.byte	0x1
	.value	0x1bc
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF250
	.byte	0x1
	.value	0x1be
	.long	0x1a8e
	.byte	0x9
	.byte	0x3
	.quad	page_port_list.0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1bf
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x7
	.long	0x1a8e
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x5
	.long	0x1a7e
	.uleb128 0x3d
	.long	0x1c65
	.long	.LASF251
	.byte	0x1
	.value	0x1dd
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x1dc
	.long	0xf9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x1dc
	.long	0xbb
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0x1de
	.long	0x10f9
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1df
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0x1b08
	.long	0x1c65
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x29
	.long	0x1b2c
	.long	0x1c65
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x29
	.long	0x1b50
	.long	0x1c65
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x1e8
	.long	0x12e2
	.uleb128 0x29
	.long	0x1b8f
	.long	0x1c86
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x24
	.long	0x1c93
	.uleb128 0x24
	.long	0x1c9c
	.byte	0x0
	.uleb128 0x29
	.long	0x1bb3
	.long	0x1c86
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x24
	.long	0x1c93
	.uleb128 0x24
	.long	0x1c9c
	.byte	0x0
	.uleb128 0x29
	.long	0x1bd7
	.long	0x1c65
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x29
	.long	0x1bfb
	.long	0x1c65
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x29
	.long	0x1c1f
	.long	0x1c65
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x29
	.long	0x1c43
	.long	0x1c65
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.uleb128 0x23
	.long	0x1c65
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x24
	.long	0x1c72
	.uleb128 0x24
	.long	0x1c7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x1c86
	.long	.LASF252
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0xf9b
	.uleb128 0x28
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0xf4f
	.byte	0x0
	.uleb128 0x2c
	.long	0x1ca7
	.long	.LASF253
	.byte	0x3
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.byte	0x23
	.long	0xf9b
	.uleb128 0x28
	.string	"pv"
	.byte	0x3
	.byte	0x23
	.long	0x1ca7
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cad
	.uleb128 0x5
	.long	0x364
	.uleb128 0x2e
	.long	0x1e94
	.long	.LASF254
	.byte	0x1
	.value	0x1f6
	.byte	0x1
	.long	0x3f
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x1f5
	.long	0xf9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x1f5
	.long	0xbb
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF255
	.byte	0x1
	.value	0x1f5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x1f7
	.long	0x10f9
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1f8
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	0x1d37
	.long	0x1e94
	.quad	.LBB57
	.quad	.LBE57
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x29
	.long	0x1d5b
	.long	0x1e94
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x29
	.long	0x1d7f
	.long	0x1e94
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x2a
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x204
	.long	0x12e2
	.uleb128 0x29
	.long	0x1dbe
	.long	0x1eb5
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x24
	.long	0x1ec2
	.uleb128 0x24
	.long	0x1ecb
	.byte	0x0
	.uleb128 0x29
	.long	0x1de2
	.long	0x1eb5
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x24
	.long	0x1ec2
	.uleb128 0x24
	.long	0x1ecb
	.byte	0x0
	.uleb128 0x29
	.long	0x1e06
	.long	0x1e94
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x29
	.long	0x1e2a
	.long	0x1e94
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x29
	.long	0x1e4e
	.long	0x1e94
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x29
	.long	0x1e72
	.long	0x1e94
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.uleb128 0x23
	.long	0x1e94
	.quad	.LBB108
	.quad	.LBE108
	.uleb128 0x24
	.long	0x1ea1
	.uleb128 0x24
	.long	0x1eaa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x1eb5
	.long	.LASF256
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0xf9b
	.uleb128 0x28
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0x180a
	.byte	0x0
	.uleb128 0x2c
	.long	0x1ed6
	.long	.LASF257
	.byte	0x3
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.byte	0x37
	.long	0xf9b
	.uleb128 0x28
	.string	"pv"
	.byte	0x3
	.byte	0x37
	.long	0x1ed6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x364
	.uleb128 0x35
	.long	0x1f0b
	.byte	0x1
	.long	.LASF258
	.byte	0x1
	.value	0x213
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF259
	.byte	0x1
	.value	0x212
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF260
	.byte	0xb
	.byte	0x91
	.long	0x32d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF261
	.byte	0xb
	.byte	0x92
	.long	0x32d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.long	.LASF262
	.byte	0xb
	.byte	0x93
	.long	0x32d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF263
	.byte	0x2
	.value	0x32c
	.long	0x19b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF264
	.byte	0x2
	.value	0x376
	.long	0x180a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x1f5e
	.long	0x102c
	.uleb128 0x8
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF265
	.byte	0x1
	.byte	0x40
	.long	0x1f4e
	.byte	0x9
	.byte	0x3
	.quad	dma_controllers
	.uleb128 0x7
	.long	0x1f83
	.long	0x3f
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF266
	.byte	0x1
	.byte	0x51
	.long	0x1f73
	.byte	0x9
	.byte	0x3
	.quad	channels
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xba
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1f99
	.long	0x14f5
	.string	"DMA_get_channel_mode"
	.long	0x1528
	.string	"DMA_hold_DREQ"
	.long	0x1571
	.string	"DMA_release_DREQ"
	.long	0x15ba
	.string	"DMA_run"
	.long	0x1694
	.string	"DMA_register_channel"
	.long	0x1705
	.string	"DMA_read_memory"
	.long	0x1843
	.string	"DMA_write_memory"
	.long	0x197b
	.string	"DMA_schedule"
	.long	0x1edc
	.string	"DMA_init"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF152:
	.string	"efer"
.LASF9:
	.string	"size_t"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF12:
	.string	"int32_t"
.LASF252:
	.string	"qemu_put_8s"
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
.LASF235:
	.string	"DMA_release_DREQ"
.LASF22:
	.string	"_IO_write_base"
.LASF68:
	.string	"addr_code"
.LASF95:
	.string	"running"
.LASF244:
	.string	"cpu_physical_memory_write"
.LASF38:
	.string	"_lock"
.LASF208:
	.string	"dack"
.LASF262:
	.string	"stderr"
.LASF128:
	.string	"shellcode_context"
.LASF162:
	.string	"jmp_env"
.LASF27:
	.string	"_IO_save_base"
.LASF120:
	.string	"vaddr"
.LASF129:
	.string	"cc_src"
.LASF130:
	.string	"cc_dst"
.LASF239:
	.string	"DMA_register_channel"
.LASF156:
	.string	"intercept"
.LASF132:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF232:
	.string	"DMA_get_channel_mode"
.LASF107:
	.string	"logged"
.LASF45:
	.string	"_mode"
.LASF69:
	.string	"addend"
.LASF228:
	.string	"init_chan"
.LASF16:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF192:
	.string	"cpuid_ext_features"
.LASF83:
	.string	"limit"
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
.LASF255:
	.string	"version_id"
.LASF155:
	.string	"vm_vmcb"
.LASF99:
	.string	"instruction_stage"
.LASF151:
	.string	"sysenter_eip"
.LASF226:
	.string	"getff"
.LASF187:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor3"
.LASF200:
	.string	"TranslationBlock"
.LASF7:
	.string	"signed char"
.LASF205:
	.string	"mode"
.LASF48:
	.string	"_IO_FILE"
.LASF250:
	.string	"page_port_list"
.LASF109:
	.string	"load_value"
.LASF238:
	.string	"channel_run"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"argos_rtag_t"
.LASF194:
	.string	"cpuid_model"
.LASF263:
	.string	"cpu_single_env"
.LASF90:
	.string	"argos_rtag"
.LASF114:
	.string	"store_value"
.LASF240:
	.string	"DMA_read_memory"
.LASF133:
	.string	"segs"
.LASF196:
	.string	"cpuid_ext3_features"
.LASF73:
	.string	"float64"
.LASF216:
	.string	"nport"
.LASF193:
	.string	"cpuid_xlevel"
.LASF170:
	.string	"old_exception"
.LASF257:
	.string	"qemu_get_be16s"
.LASF227:
	.string	"write_chan"
.LASF47:
	.string	"_IO_lock_t"
.LASF203:
	.string	"QEMUFile"
.LASF247:
	.string	"dma_init2"
.LASF112:
	.string	"load_addr_type"
.LASF253:
	.string	"qemu_put_be16s"
.LASF87:
	.string	"argos_paddr_t"
.LASF266:
	.string	"channels"
.LASF84:
	.string	"flags"
.LASF19:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF52:
	.string	"_pos"
.LASF260:
	.string	"stdin"
.LASF115:
	.string	"store_value_netidx"
.LASF144:
	.string	"sse_status"
.LASF30:
	.string	"_markers"
.LASF168:
	.string	"interrupt_request"
.LASF197:
	.string	"cpuid_apic_id"
.LASF237:
	.string	"icont"
.LASF224:
	.string	"nreg"
.LASF166:
	.string	"exception_next_eip"
.LASF108:
	.string	"instruction_netidx"
.LASF137:
	.string	"fpstt"
.LASF148:
	.string	"mmx_t0"
.LASF46:
	.string	"_unused2"
.LASF178:
	.string	"singlestep_enabled"
.LASF173:
	.string	"mem_write_vaddr"
.LASF222:
	.string	"read_pageh"
.LASF113:
	.string	"load_size"
.LASF97:
	.string	"logfile"
.LASF102:
	.string	"loadedby_eip"
.LASF265:
	.string	"dma_controllers"
.LASF211:
	.string	"status"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF142:
	.string	"fp_status"
.LASF242:
	.string	"cpu_physical_memory_read"
.LASF85:
	.string	"XMMReg"
.LASF214:
	.string	"flip_flop"
.LASF149:
	.string	"sysenter_cs"
.LASF195:
	.string	"cpuid_ext2_features"
.LASF94:
	.string	"argos_shellcode_context_s"
.LASF161:
	.string	"intercept_exceptions"
.LASF78:
	.string	"floatx80_rounding_precision"
.LASF231:
	.string	"nchan"
.LASF245:
	.string	"DMA_schedule"
.LASF117:
	.string	"store_addr_type"
.LASF34:
	.string	"_old_offset"
.LASF153:
	.string	"star"
.LASF145:
	.string	"mxcsr"
.LASF204:
	.string	"dma_regs"
.LASF3:
	.string	"long long int"
.LASF218:
	.string	"ichan"
.LASF79:
	.string	"CPU86_LDouble"
.LASF24:
	.string	"_IO_write_end"
.LASF134:
	.string	"a20_mask"
.LASF66:
	.string	"addr_read"
.LASF125:
	.string	"t1tag"
.LASF111:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF269:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF249:
	.string	"pageh_base"
.LASF185:
	.string	"cpu_model_str"
.LASF241:
	.string	"addr"
.LASF176:
	.string	"breakpoints"
.LASF118:
	.string	"store_size"
.LASF25:
	.string	"_IO_buf_base"
.LASF213:
	.string	"mask"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF267:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF256:
	.string	"qemu_get_8s"
.LASF251:
	.string	"dma_save"
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
.LASF51:
	.string	"_sbuf"
.LASF103:
	.string	"storedby_eip"
.LASF110:
	.string	"load_value_netidx"
.LASF248:
	.string	"page_base"
.LASF259:
	.string	"high_page_enable"
.LASF199:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF217:
	.string	"data"
.LASF172:
	.string	"mem_write_pc"
.LASF61:
	.string	"__saved_mask"
.LASF206:
	.string	"page"
.LASF59:
	.string	"__jmpbuf"
.LASF183:
	.string	"cpu_index"
.LASF57:
	.string	"__jmp_buf"
.LASF210:
	.string	"dma_cont"
.LASF180:
	.string	"nb_watchpoints"
.LASF64:
	.string	"target_phys_addr_t"
.LASF258:
	.string	"DMA_init"
.LASF75:
	.string	"long double"
.LASF136:
	.string	"prev_fpip"
.LASF39:
	.string	"_offset"
.LASF60:
	.string	"__mask_was_saved"
.LASF268:
	.string	"/home/remco/Projects/Argos/src/hw/dma.c"
.LASF191:
	.string	"cpuid_features"
.LASF157:
	.string	"intercept_cr_read"
.LASF220:
	.string	"write_pageh"
.LASF100:
	.string	"trace_stage"
.LASF15:
	.string	"long long unsigned int"
.LASF53:
	.string	"uint8_t"
.LASF54:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF31:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF143:
	.string	"fp_convert"
.LASF105:
	.string	"instruction"
.LASF131:
	.string	"cc_op"
.LASF182:
	.string	"next_cpu"
.LASF72:
	.string	"float32"
.LASF65:
	.string	"CPUTLBEntry"
.LASF234:
	.string	"ncont"
.LASF159:
	.string	"intercept_dr_read"
.LASF116:
	.string	"store_addr"
.LASF230:
	.string	"read_cont"
.LASF164:
	.string	"error_code"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF229:
	.string	"write_cont"
.LASF98:
	.string	"instruction_cnt"
.LASF236:
	.string	"DMA_run"
.LASF122:
	.string	"regs"
.LASF11:
	.string	"__off64_t"
.LASF219:
	.string	"write_page"
.LASF101:
	.string	"is_system_call"
.LASF160:
	.string	"intercept_dr_write"
.LASF124:
	.string	"t0tag"
.LASF207:
	.string	"pageh"
.LASF96:
	.string	"stop_condition"
.LASF167:
	.string	"smbase"
.LASF126:
	.string	"t2tag"
.LASF26:
	.string	"_IO_buf_end"
.LASF209:
	.string	"transfer_handler"
.LASF63:
	.string	"target_ulong"
.LASF158:
	.string	"intercept_cr_write"
.LASF243:
	.string	"DMA_write_memory"
.LASF212:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF67:
	.string	"addr_write"
.LASF56:
	.string	"uint64_t"
.LASF188:
	.string	"cpuid_vendor2"
.LASF80:
	.string	"SegmentCache"
.LASF264:
	.string	"phys_ram_dirty"
.LASF86:
	.string	"MMXReg"
.LASF36:
	.string	"_vtable_offset"
.LASF165:
	.string	"exception_is_int"
.LASF141:
	.string	"fpregs"
.LASF146:
	.string	"xmm_regs"
.LASF254:
	.string	"dma_load"
.LASF169:
	.string	"user_mode_only"
.LASF154:
	.string	"vm_hsave"
.LASF177:
	.string	"nb_breakpoints"
.LASF135:
	.string	"fpip"
.LASF215:
	.string	"dshift"
.LASF106:
	.string	"instruction_size"
.LASF190:
	.string	"cpuid_version"
.LASF225:
	.string	"iport"
.LASF201:
	.string	"APICState"
.LASF127:
	.string	"regtags"
.LASF76:
	.string	"float_status"
.LASF20:
	.string	"_IO_read_end"
.LASF223:
	.string	"read_chan"
.LASF55:
	.string	"uint32_t"
.LASF246:
	.string	"dma_reset"
.LASF32:
	.string	"_fileno"
.LASF163:
	.string	"exception_index"
.LASF179:
	.string	"watchpoint"
.LASF62:
	.string	"jmp_buf"
.LASF70:
	.string	"float"
.LASF261:
	.string	"stdout"
.LASF104:
	.string	"executed_eip"
.LASF82:
	.string	"base"
.LASF23:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"eflags"
.LASF202:
	.string	"DMA_transfer_handler"
.LASF174:
	.string	"tlb_table"
.LASF233:
	.string	"DMA_hold_DREQ"
.LASF13:
	.string	"int64_t"
.LASF81:
	.string	"selector"
.LASF175:
	.string	"tb_jmp_cache"
.LASF221:
	.string	"read_page"
.LASF91:
	.string	"origin"
.LASF198:
	.string	"envmap"
.LASF14:
	.string	"__sigset_t"
.LASF186:
	.string	"cpuid_level"
.LASF119:
	.string	"argos_shellcode_context_t"
.LASF89:
	.string	"argos_bytemap_t"
.LASF147:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
