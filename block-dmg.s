	.file	"block-dmg.c"
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
	.string	"dmg"
.globl bdrv_dmg
	.data
	.align 32
	.type	bdrv_dmg, @object
	.size	bdrv_dmg, 272
bdrv_dmg:
	.quad	.LC0
	.long	184
	.zero	4
	.quad	dmg_probe
	.quad	dmg_open
	.quad	dmg_read
	.quad	0
	.quad	dmg_close
	.zero	216
	.section	.rodata.str1.1
.LC1:
	.string	".dmg"
	.text
	.p2align 4,,15
	.type	dmg_probe, @function
dmg_probe:
.LFB97:
	.file 1 "block-dmg.c"
	.loc 1 53 0
	pushq	%rbx
.LCFI0:
	.loc 1 54 0
	movq	%rdx, %rdi
	.loc 1 53 0
	movq	%rdx, %rbx
	.loc 1 54 0
	call	strlen
	.loc 1 55 0
	cmpl	$4, %eax
	jle	.L2
.LBB2:
	movslq	%eax,%rsi
	movl	$5, %ecx
	movl	$.LC1, %edi
	leaq	-4(%rsi,%rbx), %rsi
	cld
	repz
	cmpsb
.LBE2:
	.loc 1 56 0
	movl	$2, %ecx
.LBB3:
	.loc 1 55 0
	seta	%dl
	setb	%al
.LBE3:
	cmpb	%al, %dl
	je	.L1
.L2:
	.loc 1 57 0
	xorl	%ecx, %ecx
.L1:
	.loc 1 58 0
	popq	%rbx
	movl	%ecx, %eax
	ret
.LFE97:
	.size	dmg_probe, .-dmg_probe
	.p2align 4,,15
	.type	read_off, @function
read_off:
.LFB98:
	.loc 1 61 0
	subq	$8, %rsp
.LCFI1:
	.loc 1 63 0
	movl	$8, %edx
	movq	%rsp, %rsi
	call	read
	.loc 1 64 0
	xorl	%edx, %edx
	.loc 1 63 0
	cmpq	$7, %rax
	jle	.L9
.LBB4:
	.file 2 "bswap.h"
	.loc 2 121 0
	movq	(%rsp), %rdx
.LBE4:
#APP
	bswap %rdx
#NO_APP
.L9:
	.loc 1 66 0
	movq	%rdx, %rax
	addq	$8, %rsp
	ret
.LFE98:
	.size	read_off, .-read_off
	.p2align 4,,15
	.type	read_uint32, @function
read_uint32:
.LFB99:
	.loc 1 69 0
	subq	$8, %rsp
.LCFI2:
	.loc 1 71 0
	movl	$4, %edx
	leaq	4(%rsp), %rsi
	call	read
	.loc 1 72 0
	xorl	%edx, %edx
	.loc 1 71 0
	cmpq	$3, %rax
	jle	.L15
.LBB5:
	.loc 2 120 0
	movl	4(%rsp), %eax
.LBB6:
.LBB7:
.LBB8:
.LBB9:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE9:
.LBE8:
.LBE7:
.LBE6:
.LBE5:
	.loc 2 120 0
	mov	%eax, %edx
.L15:
	.loc 1 74 0
	movq	%rdx, %rax
	addq	$8, %rsp
	ret
.LFE99:
	.size	read_uint32, .-read_uint32
	.section	.rodata.str1.1
.LC2:
	.string	"1.2.3.3"
	.text
	.p2align 4,,15
	.type	dmg_open, @function
dmg_open:
.LFB100:
	.loc 1 77 0
	movq	%r12, -32(%rsp)
.LCFI3:
	movq	%r14, -16(%rsp)
.LCFI4:
	movq	%rsi, %r14
	movq	%rbx, -48(%rsp)
.LCFI5:
	movq	%rbp, -40(%rsp)
.LCFI6:
	.loc 1 83 0
	xorl	%esi, %esi
	.loc 1 77 0
	movq	%r13, -24(%rsp)
.LCFI7:
	movq	%r15, -8(%rsp)
.LCFI8:
	subq	$104, %rsp
.LCFI9:
	.loc 1 77 0
	movl	%edx, 52(%rsp)
	.loc 1 78 0
	movq	56(%rdi), %rbp
	.loc 1 83 0
	xorl	%eax, %eax
	.loc 1 77 0
	movq	%rdi, %r12
	.loc 1 83 0
	movq	%r14, %rdi
	.loc 1 81 0
	movl	$1, 20(%rsp)
	movl	$1, 16(%rsp)
	.loc 1 83 0
	call	open64
	.loc 1 84 0
	testl	%eax, %eax
	.loc 1 83 0
	movl	%eax, (%rbp)
	.loc 1 84 0
	js	.L56
	.loc 1 86 0
	movl	$1, 8(%r12)
	.loc 1 91 0
	movl	(%rbp), %edi
	movl	$2, %edx
	.loc 1 87 0
	movl	$0, 4(%rbp)
	.loc 1 88 0
	movq	$0, 40(%rbp)
	.loc 1 91 0
	movq	$-472, %rsi
	.loc 1 88 0
	movq	$0, 32(%rbp)
	movq	$0, 24(%rbp)
	movq	$0, 16(%rbp)
	.loc 1 91 0
	call	lseek64
	testq	%rax, %rax
	js	.L24
	.loc 1 98 0
	movl	(%rbp), %edi
	call	read_off
	.loc 1 99 0
	testq	%rax, %rax
	.loc 1 98 0
	movq	%rax, %rbx
	.loc 1 99 0
	jne	.L57
.L24:
	.loc 1 93 0
	movl	(%rbp), %edi
	call	close
	.loc 1 95 0
	movq	$bdrv_raw, 48(%r12)
	.loc 1 96 0
	movq	%r14, %rsi
	movl	52(%rsp), %edx
	movq	%r12, %rdi
	movq	bdrv_raw+24(%rip), %r11
	.loc 1 172 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	.loc 1 96 0
	jmp	*%r11
	.p2align 4,,7
.L56:
	.loc 1 85 0
	call	__errno_location
	movl	(%rax), %eax
	negl	%eax
.L21:
	.loc 1 172 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
	.p2align 4,,7
.L57:
	.loc 1 101 0
	movl	(%rbp), %edi
	xorl	%edx, %edx
	movq	%rax, %rsi
	call	lseek64
	testq	%rax, %rax
	js	.L24
	.loc 1 103 0
	movl	(%rbp), %edi
	call	read_uint32
	cmpq	$256, %rax
	.p2align 4,,2
	jne	.L24
	.loc 1 105 0
	movl	(%rbp), %edi
	call	read_uint32
	testl	%eax, %eax
	.p2align 4,,2
	je	.L24
	.loc 1 107 0
	mov	%eax, %eax
	.loc 1 108 0
	movl	$1, %edx
	movl	$248, %esi
	.loc 1 107 0
	addq	%rbx, %rax
	movq	%rax, 40(%rsp)
	.loc 1 108 0
	movl	(%rbp), %edi
	call	lseek64
	testq	%rax, %rax
	.loc 1 112 0
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	.loc 1 108 0
	js	.L24
.L55:
	.loc 1 157 0
	movl	(%rbp), %edi
	xorl	%esi, %esi
	movl	$1, %edx
	call	lseek64
	cmpq	40(%rsp), %rax
	jge	.L58
.L45:
.LBB10:
	.loc 1 116 0
	movl	(%rbp), %edi
	call	read_uint32
	.loc 1 117 0
	testl	%eax, %eax
	.loc 1 116 0
	movl	%eax, %r13d
	.loc 1 117 0
	je	.L24
	.loc 1 119 0
	movl	(%rbp), %edi
	call	read_uint32
	.loc 1 120 0
	cmpl	$1835627368, %eax
	setne	%dl
	cmpl	$243, %r13d
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L33
	.loc 1 121 0
	movl	(%rbp), %edi
	leal	-4(%r13), %esi
	movl	$1, %edx
	call	lseek64
.LBE10:
	.loc 1 157 0
	movl	(%rbp), %edi
	xorl	%esi, %esi
	movl	$1, %edx
	call	lseek64
	cmpq	40(%rsp), %rax
	jl	.L45
.L58:
	.loc 1 162 0
	movl	20(%rsp), %edi
	incl	%edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, 56(%rbp)
	je	.L24
	.loc 1 164 0
	sall	$9, 16(%rsp)
	mov	16(%rsp), %edi
	call	malloc
	testq	%rax, %rax
	movq	%rax, 64(%rbp)
	je	.L24
	.loc 1 166 0
	leaq	72(%rbp), %rdi
	movl	$112, %edx
	movl	$.LC2, %esi
	call	inflateInit_
	testl	%eax, %eax
	jne	.L24
	.loc 1 169 0
	movl	4(%rbp), %eax
	movl	%eax, 48(%rbp)
	.loc 1 171 0
	xorl	%eax, %eax
	jmp	.L21
	.p2align 4,,7
.L33:
.LBB11:
.LBB12:
	.loc 1 124 0
	movl	(%rbp), %edi
	movl	$1, %edx
	movl	$200, %esi
	call	lseek64
	testq	%rax, %rax
	js	.L24
	.loc 1 126 0
	leal	-204(%r13), %eax
	movl	$3435973837, %edx
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$5, %eax
	movl	%eax, 12(%rsp)
	.loc 1 127 0
	addl	4(%rbp), %eax
	.loc 1 128 0
	movq	8(%rbp), %rdi
	.loc 1 127 0
	leal	0(,%rax,8), %ebx
	.loc 1 128 0
	movl	%ebx, %esi
	.loc 1 129 0
	movslq	%ebx,%rbx
	.loc 1 128 0
	sarl	%esi
	movslq	%esi,%rsi
	call	realloc
	.loc 1 129 0
	movq	16(%rbp), %rdi
	movq	%rbx, %rsi
	.loc 1 128 0
	movq	%rax, 8(%rbp)
	.loc 1 129 0
	call	realloc
	.loc 1 130 0
	movq	24(%rbp), %rdi
	movq	%rbx, %rsi
	.loc 1 129 0
	movq	%rax, 16(%rbp)
	.loc 1 130 0
	call	realloc
	.loc 1 131 0
	movq	32(%rbp), %rdi
	movq	%rbx, %rsi
	.loc 1 130 0
	movq	%rax, 24(%rbp)
	.loc 1 131 0
	call	realloc
	.loc 1 132 0
	movq	40(%rbp), %rdi
	.loc 1 131 0
	movq	%rax, 32(%rbp)
	.loc 1 132 0
	movq	%rbx, %rsi
	call	realloc
	.loc 1 134 0
	movl	4(%rbp), %edx
	.loc 1 132 0
	movq	%rax, 40(%rbp)
	.loc 1 134 0
	movl	12(%rsp), %ecx
	movl	%edx, %r15d
	leal	(%rdx,%rcx), %eax
	cmpl	%edx, %eax
	jbe	.L50
.L60:
	.loc 1 135 0
	movq	8(%rbp), %rbx
	movl	(%rbp), %edi
	mov	%r15d, %r13d
	call	read_uint32
	movl	%eax, (%rbx,%r13,4)
	.loc 1 136 0
	movq	8(%rbp), %rax
	movl	(%rax,%r13,4), %ecx
	cmpl	$-2147483643, %ecx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$1, %ecx
	setne	%al
	testl	%edx, %eax
	je	.L39
	cmpl	$2, %ecx
	je	.L39
	.loc 1 137 0
	incl	%ecx
	je	.L59
.L40:
	.loc 1 141 0
	decl	12(%rsp)
	.loc 1 143 0
	movl	$1, %edx
	movl	$36, %esi
	movl	(%rbp), %edi
	.loc 1 142 0
	decl	%r15d
	.loc 1 143 0
	call	lseek64
	testq	%rax, %rax
	js	.L24
.L38:
	.loc 1 134 0
	movl	4(%rbp), %edx
	movl	12(%rsp), %ecx
	incl	%r15d
	leal	(%rdx,%rcx), %eax
	cmpl	%r15d, %eax
	ja	.L60
.L50:
	.loc 1 157 0
	movl	12(%rsp), %ecx
	leal	(%rdx,%rcx), %eax
	movl	%eax, 4(%rbp)
	jmp	.L55
.L39:
	.loc 1 147 0
	movl	(%rbp), %edi
	call	read_uint32
	.loc 1 148 0
	movl	(%rbp), %edi
	movq	32(%rbp), %rbx
	call	read_off
	addq	24(%rsp), %rax
	movq	%rax, (%rbx,%r13,8)
	.loc 1 149 0
	movq	40(%rbp), %rbx
	movl	(%rbp), %edi
	call	read_off
	movq	%rax, (%rbx,%r13,8)
	.loc 1 150 0
	movl	(%rbp), %edi
	movq	16(%rbp), %rbx
	call	read_off
	addq	32(%rsp), %rax
	movq	%rax, (%rbx,%r13,8)
	.loc 1 151 0
	movq	24(%rbp), %rbx
	movl	(%rbp), %edi
	call	read_off
	movq	%rax, (%rbx,%r13,8)
	.loc 1 152 0
	movq	24(%rbp), %rax
	mov	20(%rsp), %edx
	.loc 1 155 0
	movl	16(%rsp), %ecx
	.loc 1 152 0
	movq	(%rax,%r13,8), %rax
	.loc 1 153 0
	cmpq	%rdx, %rax
	movl	20(%rsp), %edx
	cmova	%eax, %edx
	movl	%edx, 20(%rsp)
	.loc 1 154 0
	movq	40(%rbp), %rax
	mov	16(%rsp), %edx
	movq	(%rax,%r13,8), %rax
	.loc 1 155 0
	cmpq	%rdx, %rax
	cmova	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp	.L38
.L59:
	.loc 1 138 0
	movq	24(%rbp), %rax
	leal	-1(%r15), %edx
	movq	16(%rbp), %rcx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 32(%rsp)
	movq	(%rcx,%rdx,8), %rax
	addq	%rax, 32(%rsp)
	.loc 1 139 0
	movq	40(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 24(%rsp)
	movq	(%rcx,%rdx,8), %rax
	addq	%rax, 24(%rsp)
	jmp	.L40
.LBE12:
.LBE11:
.LFE100:
	.size	dmg_open, .-dmg_open
	.p2align 4,,15
	.type	dmg_read, @function
dmg_read:
.LFB104:
	.loc 1 258 0
	pushq	%r15
.LCFI10:
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
	.loc 1 258 0
	movq	%rdx, 16(%rsp)
	movl	%ecx, 12(%rsp)
	.loc 1 259 0
	movq	56(%rdi), %rbx
	.loc 1 262 0
	movl	$0, 8(%rsp)
	cmpl	%ecx, 8(%rsp)
	jge	.L98
	leaq	72(%rbx), %rax
	movl	%esi, %r14d
	movq	%rax, (%rsp)
	.p2align 4,,7
.L96:
.LBB13:
.LBB14:
.LBB15:
.LBB16:
	.loc 1 176 0
	movl	48(%rbx), %eax
.LBB17:
	.loc 1 177 0
	movl	4(%rbx), %r10d
	cmpl	%eax, %r10d
	jbe	.L68
	movq	32(%rbx), %r9
	mov	%eax, %ecx
	movslq	%r14d,%r8
	movq	(%r9,%rcx,8), %rdx
	cmpq	%r8, %rdx
	ja	.L68
	movq	40(%rbx), %rax
	addq	(%rax,%rcx,8), %rdx
	cmpq	%r8, %rdx
	ja	.L66
	.p2align 4,,7
.L68:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
.LBB20:
	.loc 1 187 0
	xorl	%eax, %eax
	movl	%r10d, %edi
	.loc 1 195 0
	cmpl	%r10d, %eax
	je	.L100
	movq	32(%rbx), %r9
	movslq	%r14d,%r8
	jmp	.L78
	.p2align 4,,7
.L106:
	.loc 1 191 0
	movl	%ecx, %edi
	.loc 1 195 0
	cmpl	%edi, %eax
	je	.L100
.L78:
	.loc 1 189 0
	leal	(%rax,%rdi), %ecx
	shrl	%ecx
	.loc 1 190 0
	mov	%ecx, %esi
	movq	(%r9,%rsi,8), %rdx
	cmpq	%r8, %rdx
	ja	.L106
	.loc 1 192 0
	movq	40(%rbx), %rax
	addq	(%rax,%rsi,8), %rdx
	cmpq	%r8, %rdx
	ja	.L102
	.loc 1 195 0
	movl	%ecx, %eax
	cmpl	%edi, %eax
	jne	.L78
.L100:
	.loc 1 196 0
	movl	%r10d, %r13d
.L76:
.LBE20:
.LBE19:
	.loc 1 206 0
	cmpl	%r13d, %r10d
	jbe	.L104
	.loc 1 210 0
	movq	8(%rbx), %rax
	mov	%r13d, %r12d
	.loc 1 209 0
	movl	%r10d, 48(%rbx)
	.loc 1 210 0
	movl	(%rax,%r12,4), %eax
	cmpl	$2, %eax
	je	.L94
	ja	.L95
	decl	%eax
	je	.L92
.L81:
	.loc 1 251 0
	movl	%r13d, 48(%rbx)
.L66:
.LBE18:
.LBE15:
.LBE14:
	.loc 1 266 0
	mov	48(%rbx), %edx
	movq	32(%rbx), %rax
	movl	%r14d, %esi
	.loc 1 267 0
	movl	8(%rsp), %edi
	incl	%r14d
	.loc 1 266 0
	subl	(%rax,%rdx,8), %esi
	.loc 1 267 0
	sall	$9, %edi
	movl	$512, %edx
	movslq	%edi,%rdi
	addq	16(%rsp), %rdi
	sall	$9, %esi
	mov	%esi, %esi
	addq	64(%rbx), %rsi
	call	memcpy
.LBE13:
	.loc 1 262 0
	incl	8(%rsp)
	movl	12(%rsp), %eax
	cmpl	%eax, 8(%rsp)
	jl	.L96
.L98:
	.loc 1 269 0
	xorl	%eax, %eax
.L61:
	.loc 1 270 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L95:
.LBB21:
.LBB22:
.LBB23:
.LBB24:
	.loc 1 210 0
	cmpl	$-2147483643, %eax
	jne	.L81
.LBB25:
	.loc 1 214 0
	movq	16(%rbx), %rax
	movl	(%rbx), %edi
	xorl	%edx, %edx
	movq	(%rax,%r12,8), %rsi
	call	lseek64
	.loc 1 215 0
	testl	%eax, %eax
	js	.L104
	movq	24(%rbx), %rdx
	.loc 1 220 0
	xorl	%r15d, %r15d
	jmp	.L84
.L87:
	.loc 1 225 0
	addl	%ebp, %r15d
	.loc 1 226 0
	testl	%ebp, %ebp
	js	.L101
	movq	24(%rbx), %rdx
	leal	(%rbp,%r15), %eax
	cltq
	cmpq	(%rdx,%r12,8), %rax
	jae	.L85
.L84:
	.loc 1 222 0
	movq	(%rdx,%r12,8), %rdx
	movslq	%r15d,%rsi
	movl	(%rbx), %edi
	subq	%rsi, %rdx
	addq	56(%rbx), %rsi
	call	read
	.loc 1 223 0
	testl	%eax, %eax
	.loc 1 222 0
	movl	%eax, %ebp
	.loc 1 223 0
	jns	.L87
	call	__errno_location
	.loc 1 224 0
	cmpl	$4, (%rax)
	movl	$0, %eax
	cmove	%eax, %ebp
	jmp	.L87
.L102:
.LBE25:
.LBB26:
.LBB27:
	.loc 1 192 0
	movl	%ecx, %r13d
	jmp	.L76
.L92:
.LBE27:
.LBE26:
	.loc 1 243 0
	movq	24(%rbx), %rax
	movq	64(%rbx), %rsi
	movl	(%rbx), %edi
	movq	(%rax,%r12,8), %rdx
	call	read
	.loc 1 244 0
	movq	24(%rbx), %rdx
	cltq
	cmpq	(%rdx,%r12,8), %rax
.L105:
	je	.L81
.L104:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 265 0
	movl	$-1, %eax
	jmp	.L61
.L94:
.LBB28:
.LBB29:
.LBB30:
	.loc 1 248 0
	movq	40(%rbx), %rax
	movq	64(%rbx), %rdi
	xorl	%esi, %esi
	movq	(%rax,%r12,8), %rdx
	salq	$9, %rdx
	call	memset
	.loc 1 251 0
	movl	%r13d, 48(%rbx)
	jmp	.L66
.L101:
	movq	24(%rbx), %rdx
.L85:
.LBB31:
	.loc 1 228 0
	movslq	%ebp,%rax
	cmpq	(%rdx,%r12,8), %rax
	jne	.L104
	.loc 1 231 0
	movq	56(%rbx), %rax
	movq	%rax, 72(%rbx)
	.loc 1 232 0
	movq	(%rdx,%r12,8), %rax
	movl	%eax, 80(%rbx)
	.loc 1 233 0
	movq	64(%rbx), %rax
	movq	%rax, 96(%rbx)
	.loc 1 234 0
	movq	40(%rbx), %rax
	movq	(%rax,%r12,8), %rax
	salq	$9, %rax
	movl	%eax, 104(%rbx)
	.loc 1 235 0
	movq	(%rsp), %rdi
	call	inflateReset
	.loc 1 236 0
	testl	%eax, %eax
	jne	.L104
	.loc 1 238 0
	movq	(%rsp), %rdi
	movl	$4, %esi
	call	inflate
	movl	%eax, %ebp
	.loc 1 239 0
	decl	%ebp
	jne	.L104
	movq	40(%rbx), %rax
	movq	(%rax,%r12,8), %rax
	salq	$9, %rax
	cmpq	%rax, 112(%rbx)
	jmp	.L105
.LBE31:
.LBE30:
.LBE29:
.LBE28:
.LBE21:
.LFE104:
	.size	dmg_read, .-dmg_read
	.p2align 4,,15
	.type	dmg_close, @function
dmg_close:
.LFB105:
	.loc 1 273 0
	pushq	%rbx
.LCFI17:
	.loc 1 274 0
	movq	56(%rdi), %rbx
	.loc 1 275 0
	movl	(%rbx), %edi
	call	close
	.loc 1 276 0
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jne	.L109
	.loc 1 283 0
	movq	56(%rbx), %rdi
	call	free
	.loc 1 284 0
	movq	64(%rbx), %rdi
	call	free
	.loc 1 285 0
	leaq	72(%rbx), %rdi
	popq	%rbx
	jmp	inflateEnd
	.p2align 4,,7
.L109:
	.loc 1 277 0
	movq	8(%rbx), %rdi
	call	free
	.loc 1 278 0
	movq	16(%rbx), %rdi
	call	free
	.loc 1 279 0
	movq	24(%rbx), %rdi
	call	free
	.loc 1 280 0
	movq	32(%rbx), %rdi
	call	free
	.loc 1 281 0
	movq	40(%rbx), %rdi
	call	free
	.loc 1 283 0
	movq	56(%rbx), %rdi
	call	free
	.loc 1 284 0
	movq	64(%rbx), %rdi
	call	free
	.loc 1 285 0
	leaq	72(%rbx), %rdi
	popq	%rbx
	jmp	inflateEnd
.LFE105:
	.size	dmg_close, .-dmg_close
	.comm	bdrv_first,8,8
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI0-.LFB97
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI2-.LFB99
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI4-.LFB100
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI4
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
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
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI17-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
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
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI0-.LFB97
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI1-.LFB98
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI2-.LFB99
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI4-.LFB100
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI4
	.byte	0xe
	.uleb128 0x70
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
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
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI17-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE11:
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "qemu-common.h"
	.file 8 "block_int.h"
	.file 9 "block.h"
	.file 10 "/usr/include/zlib.h"
	.file 11 "/usr/include/zconf.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1291
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF200
	.byte	0x1
	.long	.LASF201
	.long	.LASF202
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
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
	.byte	0x6
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x5a
	.long	0xa1
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0xe1
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x2ad
	.long	.LASF45
	.byte	0xd8
	.byte	0xc
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF15
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF16
	.byte	0xd
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF17
	.byte	0xd
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF18
	.byte	0xd
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF19
	.byte	0xd
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF20
	.byte	0xd
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF21
	.byte	0xd
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF22
	.byte	0xd
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF23
	.byte	0xd
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF24
	.byte	0xd
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF25
	.byte	0xd
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF26
	.byte	0xd
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF27
	.byte	0xd
	.value	0x122
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF28
	.byte	0xd
	.value	0x124
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF29
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF30
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF31
	.byte	0xd
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF32
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF33
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF34
	.byte	0xd
	.value	0x132
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF35
	.byte	0xd
	.value	0x136
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF36
	.byte	0xd
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF37
	.byte	0xd
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF38
	.byte	0xd
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF39
	.byte	0xd
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF40
	.byte	0xd
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF41
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF42
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF43
	.byte	0xd
	.value	0x150
	.long	0x30d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF44
	.byte	0xd
	.byte	0xb4
	.uleb128 0xa
	.long	0x2eb
	.long	.LASF46
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0xd
	.long	.LASF47
	.byte	0xd
	.byte	0xbb
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF48
	.byte	0xd
	.byte	0xbc
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2b4
	.uleb128 0x5
	.byte	0x8
	.long	0xe1
	.uleb128 0x8
	.long	0x307
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2ad
	.uleb128 0x8
	.long	0x31d
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x31
	.long	0x81
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
	.uleb128 0xe
	.long	0x34a
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x350
	.uleb128 0x6
	.long	0x31d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x6e
	.long	0x360
	.uleb128 0x10
	.long	0x514
	.long	.LASF53
	.value	0xac0
	.byte	0x7
	.byte	0x6e
	.uleb128 0xd
	.long	.LASF54
	.byte	0x8
	.byte	0x5d
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x8
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF56
	.byte	0x8
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF57
	.byte	0x8
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF58
	.byte	0x8
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x8
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF59
	.byte	0x8
	.byte	0x65
	.long	0xabf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF60
	.byte	0x8
	.byte	0x66
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x8
	.byte	0x68
	.long	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF61
	.byte	0x8
	.byte	0x69
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF62
	.byte	0x8
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF63
	.byte	0x8
	.byte	0x6c
	.long	0xacb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF64
	.byte	0x8
	.byte	0x6e
	.long	0xadc
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.long	.LASF65
	.byte	0x8
	.byte	0x6f
	.long	0xadc
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0xd
	.long	.LASF66
	.byte	0x8
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0xd
	.long	.LASF67
	.byte	0x8
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0xd
	.long	.LASF68
	.byte	0x8
	.byte	0x74
	.long	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.long	.LASF69
	.byte	0x8
	.byte	0x77
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0xd
	.long	.LASF70
	.byte	0x8
	.byte	0x7a
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0xd
	.long	.LASF71
	.byte	0x8
	.byte	0x7b
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.long	.LASF72
	.byte	0x8
	.byte	0x7c
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.long	.LASF73
	.byte	0x8
	.byte	0x7d
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xd
	.long	.LASF74
	.byte	0x8
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.long	.LASF75
	.byte	0x8
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.long	.LASF76
	.byte	0x8
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.long	.LASF77
	.byte	0x8
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xd
	.long	.LASF78
	.byte	0x8
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xd
	.long	.LASF79
	.byte	0x8
	.byte	0x83
	.long	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0xd
	.long	.LASF80
	.byte	0x8
	.byte	0x84
	.long	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.byte	0x5
	.long	0x51f
	.uleb128 0x10
	.long	0x71b
	.long	.LASF81
	.value	0x110
	.byte	0x9
	.byte	0x5
	.uleb128 0xd
	.long	.LASF82
	.byte	0x8
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x8
	.byte	0x24
	.long	0x865
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0x25
	.long	0x88b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF86
	.byte	0x8
	.byte	0x27
	.long	0x8b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF87
	.byte	0x8
	.byte	0x29
	.long	0x8db
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF88
	.byte	0x8
	.byte	0x2a
	.long	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF89
	.byte	0x8
	.byte	0x2c
	.long	0x912
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF90
	.byte	0x8
	.byte	0x2d
	.long	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF91
	.byte	0x8
	.byte	0x2f
	.long	0x937
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF92
	.byte	0x8
	.byte	0x30
	.long	0x952
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF93
	.byte	0x8
	.byte	0x31
	.long	0x968
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF94
	.byte	0x8
	.byte	0x35
	.long	0x9a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF95
	.byte	0x8
	.byte	0x38
	.long	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF96
	.byte	0x8
	.byte	0x39
	.long	0x9e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF97
	.byte	0x8
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF98
	.byte	0x8
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF99
	.byte	0x8
	.byte	0x3e
	.long	0x8b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF100
	.byte	0x8
	.byte	0x40
	.long	0x8db
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF101
	.byte	0x8
	.byte	0x41
	.long	0x9ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF102
	.byte	0x8
	.byte	0x42
	.long	0xa15
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF103
	.byte	0x8
	.byte	0x44
	.long	0x8db
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF104
	.byte	0x8
	.byte	0x47
	.long	0xa36
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x8
	.byte	0x49
	.long	0x952
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF106
	.byte	0x8
	.byte	0x4a
	.long	0x952
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x8
	.byte	0x4c
	.long	0xa57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.long	.LASF108
	.byte	0x8
	.byte	0x4d
	.long	0xa78
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x8
	.byte	0x50
	.long	0x968
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.long	.LASF110
	.byte	0x8
	.byte	0x51
	.long	0x968
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.long	.LASF111
	.byte	0x8
	.byte	0x52
	.long	0xa93
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.long	.LASF112
	.byte	0x8
	.byte	0x53
	.long	0xa93
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.long	.LASF113
	.byte	0x8
	.byte	0x56
	.long	0xab3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.long	.LASF114
	.byte	0x8
	.byte	0x58
	.long	0x997
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF80
	.byte	0x8
	.byte	0x59
	.long	0xab9
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xa
	.long	0x744
	.long	.LASF115
	.byte	0x10
	.byte	0x9
	.byte	0x14
	.uleb128 0xd
	.long	.LASF116
	.byte	0x9
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF117
	.byte	0x9
	.byte	0x18
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF115
	.byte	0x9
	.byte	0x19
	.long	0x71b
	.uleb128 0x10
	.long	0x7b6
	.long	.LASF118
	.value	0x198
	.byte	0x9
	.byte	0x1b
	.uleb128 0xd
	.long	.LASF119
	.byte	0x9
	.byte	0x1c
	.long	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF120
	.byte	0x9
	.byte	0x1f
	.long	0x7c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF121
	.byte	0x9
	.byte	0x20
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.long	.LASF122
	.byte	0x9
	.byte	0x21
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.long	.LASF123
	.byte	0x9
	.byte	0x22
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.long	.LASF124
	.byte	0x9
	.byte	0x23
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x8
	.long	0x7c6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x8
	.long	0x7d6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF118
	.byte	0x9
	.byte	0x24
	.long	0x74f
	.uleb128 0x2
	.long	.LASF125
	.byte	0x9
	.byte	0x50
	.long	0x7ec
	.uleb128 0xa
	.long	0x82f
	.long	.LASF125
	.byte	0x20
	.byte	0x9
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x8
	.byte	0x88
	.long	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x8
	.byte	0x89
	.long	0x99d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF61
	.byte	0x8
	.byte	0x8a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF80
	.byte	0x8
	.byte	0x8b
	.long	0x997
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF126
	.byte	0x9
	.byte	0x51
	.long	0x83a
	.uleb128 0xe
	.long	0x84b
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x865
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x34a
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x84b
	.uleb128 0x12
	.long	0x885
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x355
	.uleb128 0x5
	.byte	0x8
	.long	0x86b
	.uleb128 0x12
	.long	0x8b0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x8b0
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x31d
	.uleb128 0x5
	.byte	0x8
	.long	0x891
	.uleb128 0x12
	.long	0x8db
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x34a
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8bc
	.uleb128 0xe
	.long	0x8ed
	.byte	0x1
	.uleb128 0xf
	.long	0x885
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8e1
	.uleb128 0x12
	.long	0x912
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8f3
	.uleb128 0x12
	.long	0x937
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x918
	.uleb128 0x12
	.long	0x952
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x93d
	.uleb128 0x12
	.long	0x968
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x958
	.uleb128 0x12
	.long	0x997
	.byte	0x1
	.long	0x997
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x8b0
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x99d
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7e1
	.uleb128 0x5
	.byte	0x8
	.long	0x82f
	.uleb128 0x5
	.byte	0x8
	.long	0x96e
	.uleb128 0x12
	.long	0x9d2
	.byte	0x1
	.long	0x997
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.uleb128 0xf
	.long	0x34a
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x99d
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9a9
	.uleb128 0xe
	.long	0x9e4
	.byte	0x1
	.uleb128 0xf
	.long	0x997
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d8
	.uleb128 0x12
	.long	0x9ff
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xbf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9ea
	.uleb128 0x12
	.long	0xa15
	.byte	0x1
	.long	0xbf
	.uleb128 0xf
	.long	0x885
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa05
	.uleb128 0x12
	.long	0xa30
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xa30
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7d6
	.uleb128 0x5
	.byte	0x8
	.long	0xa1b
	.uleb128 0x12
	.long	0xa51
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xa51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa30
	.uleb128 0x5
	.byte	0x8
	.long	0xa3c
	.uleb128 0x12
	.long	0xa72
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0xa72
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x744
	.uleb128 0x5
	.byte	0x8
	.long	0xa5d
	.uleb128 0x12
	.long	0xa93
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa7e
	.uleb128 0x12
	.long	0xab3
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x885
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa99
	.uleb128 0x5
	.byte	0x8
	.long	0x51f
	.uleb128 0x5
	.byte	0x8
	.long	0x33e
	.uleb128 0x5
	.byte	0x8
	.long	0x514
	.uleb128 0x8
	.long	0xadc
	.long	0x31d
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0xaed
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x14
	.long	.LASF127
	.byte	0xb
	.value	0x148
	.long	0x81
	.uleb128 0x14
	.long	.LASF128
	.byte	0xb
	.value	0x14a
	.long	0x46
	.uleb128 0x14
	.long	.LASF129
	.byte	0xb
	.value	0x14b
	.long	0x38
	.uleb128 0x14
	.long	.LASF130
	.byte	0xb
	.value	0x151
	.long	0xaed
	.uleb128 0x14
	.long	.LASF131
	.byte	0xb
	.value	0x15a
	.long	0xac
	.uleb128 0x2
	.long	.LASF132
	.byte	0xa
	.byte	0x50
	.long	0xb34
	.uleb128 0x5
	.byte	0x8
	.long	0xb3a
	.uleb128 0x12
	.long	0xb54
	.byte	0x1
	.long	0xb1d
	.uleb128 0xf
	.long	0xb1d
	.uleb128 0xf
	.long	0xaf9
	.uleb128 0xf
	.long	0xaf9
	.byte	0x0
	.uleb128 0x2
	.long	.LASF133
	.byte	0xa
	.byte	0x51
	.long	0xb5f
	.uleb128 0x5
	.byte	0x8
	.long	0xb65
	.uleb128 0xe
	.long	0xb76
	.byte	0x1
	.uleb128 0xf
	.long	0xb1d
	.uleb128 0xf
	.long	0xb1d
	.byte	0x0
	.uleb128 0xa
	.long	0xc47
	.long	.LASF134
	.byte	0x70
	.byte	0xa
	.byte	0x55
	.uleb128 0xd
	.long	.LASF135
	.byte	0xa
	.byte	0x56
	.long	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF136
	.byte	0xa
	.byte	0x57
	.long	0xaf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF137
	.byte	0xa
	.byte	0x58
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF138
	.byte	0xa
	.byte	0x5a
	.long	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF139
	.byte	0xa
	.byte	0x5b
	.long	0xaf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF140
	.byte	0xa
	.byte	0x5c
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"msg"
	.byte	0xa
	.byte	0x5e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF141
	.byte	0xa
	.byte	0x5f
	.long	0xc69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF142
	.byte	0xa
	.byte	0x61
	.long	0xb29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF143
	.byte	0xa
	.byte	0x62
	.long	0xb54
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x63
	.long	0xb1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF144
	.byte	0xa
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF145
	.byte	0xa
	.byte	0x66
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF146
	.byte	0xa
	.byte	0x67
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb11
	.uleb128 0xa
	.long	0xc69
	.long	.LASF147
	.byte	0x4
	.byte	0xa
	.byte	0x53
	.uleb128 0xb
	.long	.LASF148
	.byte	0xa
	.value	0x573
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc4d
	.uleb128 0x2
	.long	.LASF149
	.byte	0xa
	.byte	0x68
	.long	0xb76
	.uleb128 0xa
	.long	0xd20
	.long	.LASF150
	.byte	0xb8
	.byte	0x1
	.byte	0x1d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x1e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF151
	.byte	0x1
	.byte	0x28
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF152
	.byte	0x1
	.byte	0x29
	.long	0xd20
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF153
	.byte	0x1
	.byte	0x2a
	.long	0xd26
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF154
	.byte	0x1
	.byte	0x2b
	.long	0xd26
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x2c
	.long	0xd26
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x2d
	.long	0xd26
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x2e
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x2f
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x30
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x31
	.long	0xc6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x5
	.byte	0x8
	.long	0x333
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1
	.byte	0x32
	.long	0xc7a
	.uleb128 0x15
	.long	0xdaa
	.long	.LASF164
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x34
	.long	0x34a
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF161
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0x34
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x36
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x1
	.byte	0x37
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x1
	.byte	0x37
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0xe02
	.long	.LASF165
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0xb4
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x1
	.byte	0x3e
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	0xe02
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1d
	.long	0xe13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xe1d
	.long	.LASF167
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x333
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x333
	.byte	0x0
	.uleb128 0x15
	.long	0xeae
	.long	.LASF168
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	0xb4
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x1
	.byte	0x46
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	0xeae
	.quad	.LBB5
	.quad	.LBE5
	.uleb128 0x20
	.long	0xebf
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	0xec9
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1d
	.long	0xeda
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x22
	.long	0xee4
	.uleb128 0x22
	.long	0xeef
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xec9
	.long	.LASF169
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x328
	.byte	0x0
	.uleb128 0x1e
	.long	0xefc
	.long	.LASF170
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0x328
	.uleb128 0x23
	.uleb128 0x24
	.string	"__v"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.uleb128 0x24
	.string	"__x"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x100d
	.long	.LASF171
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	0x3f
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bs"
	.byte	0x1
	.byte	0x4c
	.long	0x885
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0x4c
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x17
	.long	.LASF172
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x4e
	.long	0x100d
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF173
	.byte	0x1
	.byte	0x4f
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x1
	.byte	0x4f
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x1
	.byte	0x4f
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x1
	.byte	0x4f
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x1
	.byte	0x50
	.long	0x328
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x1
	.byte	0x51
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF179
	.byte	0x1
	.byte	0x51
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x328
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.long	.LASF194
	.byte	0x1
	.byte	0x64
	.quad	.L24
	.uleb128 0x26
	.long	0xfdf
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x72
	.long	0x328
	.byte	0x0
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF181
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd2c
	.uleb128 0x27
	.long	0x1146
	.long	.LASF182
	.byte	0x1
	.value	0x102
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x28
	.string	"bs"
	.byte	0x1
	.value	0x100
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	.LASF183
	.byte	0x1
	.value	0x100
	.long	0xbf
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x101
	.long	0x8b0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF184
	.byte	0x1
	.value	0x101
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x103
	.long	0x100d
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x104
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	0x1138
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2b
	.long	.LASF185
	.byte	0x1
	.value	0x107
	.long	0x328
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	0x1146
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x1d
	.long	0x1157
	.uleb128 0x1d
	.long	0x1160
	.uleb128 0x2c
	.long	0x10e9
	.long	0x118f
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1d
	.long	0x11a0
	.uleb128 0x20
	.long	0x11a9
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x11b4
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2d
	.long	0x116c
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	0x1177
	.uleb128 0x1c
	.long	0x11c0
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x1d
	.long	0x11d1
	.uleb128 0x1d
	.long	0x11da
	.uleb128 0x19
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2d
	.long	0x11e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.long	0x11f0
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.long	0x11fb
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x2d
	.long	0x1183
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x118f
	.long	.LASF186
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0xc8
	.long	0x100d
	.uleb128 0x2e
	.long	.LASF183
	.byte	0x1
	.byte	0xc8
	.long	0x3f
	.uleb128 0x23
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0xcb
	.long	0x3f
	.uleb128 0x1a
	.long	.LASF187
	.byte	0x1
	.byte	0xcc
	.long	0x328
	.uleb128 0x23
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xd4
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x11c0
	.long	.LASF188
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0x100d
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x1
	.byte	0xaf
	.long	0x328
	.uleb128 0x2e
	.long	.LASF183
	.byte	0x1
	.byte	0xaf
	.long	0x3f
	.byte	0x0
	.uleb128 0x1e
	.long	0x1207
	.long	.LASF190
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0xb8
	.long	0x100d
	.uleb128 0x2e
	.long	.LASF183
	.byte	0x1
	.byte	0xb8
	.long	0x3f
	.uleb128 0x1a
	.long	.LASF191
	.byte	0x1
	.byte	0xbb
	.long	0x328
	.uleb128 0x1a
	.long	.LASF192
	.byte	0x1
	.byte	0xbb
	.long	0x328
	.uleb128 0x1a
	.long	.LASF193
	.byte	0x1
	.byte	0xbb
	.long	0x328
	.byte	0x0
	.uleb128 0x2f
	.long	0x1240
	.long	.LASF194
	.byte	0x1
	.value	0x111
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x28
	.string	"bs"
	.byte	0x1
	.value	0x110
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x112
	.long	0x100d
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x30
	.long	.LASF195
	.byte	0xc
	.byte	0x91
	.long	0x2f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF196
	.byte	0xc
	.byte	0x92
	.long	0x2f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF197
	.byte	0x9
	.byte	0x7
	.long	0x514
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF198
	.byte	0x1
	.value	0x120
	.long	0x514
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_dmg
	.uleb128 0x32
	.long	.LASF199
	.byte	0x8
	.byte	0x94
	.long	0x885
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
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
	.long	0x2a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1295
	.long	0x1267
	.string	"bdrv_dmg"
	.long	0x127e
	.string	"bdrv_first"
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
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"translation"
.LASF9:
	.string	"size_t"
.LASF187:
	.string	"chunk"
.LASF163:
	.string	"__s2_len"
.LASF54:
	.string	"total_sectors"
.LASF194:
	.string	"dmg_close"
.LASF92:
	.string	"bdrv_set_key"
.LASF123:
	.string	"date_nsec"
.LASF137:
	.string	"total_in"
.LASF26:
	.string	"_IO_save_end"
.LASF99:
	.string	"bdrv_pread"
.LASF74:
	.string	"cyls"
.LASF106:
	.string	"bdrv_snapshot_delete"
.LASF19:
	.string	"_IO_write_base"
.LASF141:
	.string	"state"
.LASF35:
	.string	"_lock"
.LASF168:
	.string	"read_uint32"
.LASF24:
	.string	"_IO_save_base"
.LASF84:
	.string	"bdrv_probe"
.LASF149:
	.string	"z_stream"
.LASF115:
	.string	"BlockDriverInfo"
.LASF32:
	.string	"_cur_column"
.LASF100:
	.string	"bdrv_pwrite"
.LASF42:
	.string	"_mode"
.LASF76:
	.string	"secs"
.LASF56:
	.string	"removable"
.LASF124:
	.string	"vm_clock_nsec"
.LASF2:
	.string	"long int"
.LASF65:
	.string	"backing_file"
.LASF140:
	.string	"total_out"
.LASF46:
	.string	"_IO_marker"
.LASF61:
	.string	"opaque"
.LASF199:
	.string	"bdrv_first"
.LASF121:
	.string	"vm_state_size"
.LASF129:
	.string	"uLong"
.LASF114:
	.string	"free_aiocb"
.LASF7:
	.string	"signed char"
.LASF45:
	.string	"_IO_FILE"
.LASF130:
	.string	"Bytef"
.LASF70:
	.string	"rd_bytes"
.LASF68:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF153:
	.string	"offsets"
.LASF175:
	.string	"last_in_offset"
.LASF110:
	.string	"bdrv_media_changed"
.LASF53:
	.string	"BlockDriverState"
.LASF101:
	.string	"bdrv_truncate"
.LASF67:
	.string	"media_changed"
.LASF197:
	.string	"bdrv_raw"
.LASF5:
	.string	"char"
.LASF89:
	.string	"bdrv_create"
.LASF98:
	.string	"protocol_name"
.LASF44:
	.string	"_IO_lock_t"
.LASF96:
	.string	"bdrv_aio_cancel"
.LASF64:
	.string	"filename"
.LASF189:
	.string	"chunk_num"
.LASF138:
	.string	"next_out"
.LASF167:
	.string	"be64_to_cpu"
.LASF172:
	.string	"flags"
.LASF105:
	.string	"bdrv_snapshot_goto"
.LASF16:
	.string	"_IO_read_ptr"
.LASF88:
	.string	"bdrv_close"
.LASF49:
	.string	"_pos"
.LASF195:
	.string	"stdin"
.LASF196:
	.string	"stdout"
.LASF162:
	.string	"__s1_len"
.LASF27:
	.string	"_markers"
.LASF73:
	.string	"wr_ops"
.LASF191:
	.string	"chunk1"
.LASF193:
	.string	"chunk3"
.LASF79:
	.string	"device_name"
.LASF166:
	.string	"buffer"
.LASF139:
	.string	"avail_out"
.LASF75:
	.string	"heads"
.LASF151:
	.string	"n_chunks"
.LASF36:
	.string	"_offset"
.LASF90:
	.string	"bdrv_flush"
.LASF87:
	.string	"bdrv_write"
.LASF201:
	.string	"block-dmg.c"
.LASF165:
	.string	"read_off"
.LASF112:
	.string	"bdrv_set_locked"
.LASF126:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF161:
	.string	"buf_size"
.LASF30:
	.string	"_flags2"
.LASF18:
	.string	"_IO_read_base"
.LASF43:
	.string	"_unused2"
.LASF176:
	.string	"last_out_offset"
.LASF63:
	.string	"boot_sector_data"
.LASF83:
	.string	"instance_size"
.LASF117:
	.string	"vm_state_offset"
.LASF31:
	.string	"_old_offset"
.LASF154:
	.string	"lengths"
.LASF174:
	.string	"info_end"
.LASF147:
	.string	"internal_state"
.LASF169:
	.string	"be32_to_cpu"
.LASF58:
	.string	"encrypted"
.LASF134:
	.string	"z_stream_s"
.LASF3:
	.string	"long long int"
.LASF183:
	.string	"sector_num"
.LASF21:
	.string	"_IO_write_end"
.LASF150:
	.string	"BDRVDMGState"
.LASF55:
	.string	"read_only"
.LASF93:
	.string	"bdrv_make_empty"
.LASF190:
	.string	"search_chunk"
.LASF177:
	.string	"count"
.LASF192:
	.string	"chunk2"
.LASF171:
	.string	"dmg_open"
.LASF22:
	.string	"_IO_buf_base"
.LASF47:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF103:
	.string	"bdrv_write_compressed"
.LASF102:
	.string	"bdrv_getlength"
.LASF200:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF185:
	.string	"sector_offset_in_chunk"
.LASF86:
	.string	"bdrv_read"
.LASF60:
	.string	"change_opaque"
.LASF145:
	.string	"adler"
.LASF72:
	.string	"rd_ops"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF48:
	.string	"_sbuf"
.LASF108:
	.string	"bdrv_get_info"
.LASF107:
	.string	"bdrv_snapshot_list"
.LASF15:
	.string	"_flags"
.LASF12:
	.string	"off_t"
.LASF157:
	.string	"current_chunk"
.LASF78:
	.string	"type"
.LASF80:
	.string	"next"
.LASF127:
	.string	"Byte"
.LASF158:
	.string	"compressed_chunk"
.LASF71:
	.string	"wr_bytes"
.LASF180:
	.string	"new_size"
.LASF186:
	.string	"dmg_read_chunk"
.LASF131:
	.string	"voidpf"
.LASF91:
	.string	"bdrv_is_allocated"
.LASF14:
	.string	"long long unsigned int"
.LASF156:
	.string	"sectorcounts"
.LASF50:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF170:
	.string	"bswap32"
.LASF28:
	.string	"_chain"
.LASF135:
	.string	"next_in"
.LASF85:
	.string	"bdrv_open"
.LASF59:
	.string	"change_cb"
.LASF155:
	.string	"sectors"
.LASF109:
	.string	"bdrv_is_inserted"
.LASF25:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_shortbuf"
.LASF173:
	.string	"info_begin"
.LASF118:
	.string	"QEMUSnapshotInfo"
.LASF164:
	.string	"dmg_probe"
.LASF11:
	.string	"__off64_t"
.LASF97:
	.string	"aiocb_size"
.LASF119:
	.string	"id_str"
.LASF202:
	.string	"/home/remco/Projects/Argos/src"
.LASF136:
	.string	"avail_in"
.LASF182:
	.string	"dmg_read"
.LASF148:
	.string	"dummy"
.LASF111:
	.string	"bdrv_eject"
.LASF23:
	.string	"_IO_buf_end"
.LASF120:
	.string	"name"
.LASF94:
	.string	"bdrv_aio_read"
.LASF188:
	.string	"is_sector_in_chunk"
.LASF62:
	.string	"boot_sector_enabled"
.LASF181:
	.string	"chunk_count"
.LASF8:
	.string	"short int"
.LASF69:
	.string	"sync_aiocb"
.LASF52:
	.string	"uint64_t"
.LASF198:
	.string	"bdrv_dmg"
.LASF33:
	.string	"_vtable_offset"
.LASF113:
	.string	"bdrv_ioctl"
.LASF143:
	.string	"zfree"
.LASF144:
	.string	"data_type"
.LASF128:
	.string	"uInt"
.LASF95:
	.string	"bdrv_aio_write"
.LASF17:
	.string	"_IO_read_end"
.LASF81:
	.string	"BlockDriver"
.LASF104:
	.string	"bdrv_snapshot_create"
.LASF122:
	.string	"date_sec"
.LASF51:
	.string	"uint32_t"
.LASF57:
	.string	"locked"
.LASF29:
	.string	"_fileno"
.LASF66:
	.string	"is_temporary"
.LASF146:
	.string	"reserved"
.LASF82:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF116:
	.string	"cluster_size"
.LASF160:
	.string	"zstream"
.LASF125:
	.string	"BlockDriverAIOCB"
.LASF133:
	.string	"free_func"
.LASF20:
	.string	"_IO_write_ptr"
.LASF184:
	.string	"nb_sectors"
.LASF178:
	.string	"max_compressed_size"
.LASF132:
	.string	"alloc_func"
.LASF13:
	.string	"int64_t"
.LASF142:
	.string	"zalloc"
.LASF159:
	.string	"uncompressed_chunk"
.LASF152:
	.string	"types"
.LASF179:
	.string	"max_sectors_per_chunk"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
