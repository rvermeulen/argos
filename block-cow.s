	.file	"block-cow.c"
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
	.string	"cow"
.globl bdrv_cow
	.data
	.align 32
	.type	bdrv_cow, @object
	.size	bdrv_cow, 272
bdrv_cow:
	.quad	.LC0
	.long	40
	.zero	4
	.quad	cow_probe
	.quad	cow_open
	.quad	cow_read
	.quad	cow_write
	.quad	cow_close
	.quad	cow_create
	.quad	cow_flush
	.quad	cow_is_allocated
	.zero	192
	.text
	.p2align 4,,15
	.type	cow_probe, @function
cow_probe:
.LFB97:
	.file 1 "block-cow.c"
	.loc 1 54 0
	.loc 1 57 0
	cmpl	$1055, %esi
	jbe	.L2
.LBB2:
	.file 2 "bswap.h"
	.loc 2 120 0
	movl	(%rdi), %eax
.LBB3:
.LBB4:
.LBB5:
.LBB6:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE6:
.LBE5:
.LBE4:
.LBE3:
.LBE2:
	.loc 2 120 0
	cmpl	$1330597709, %eax
	je	.L13
.L2:
	.loc 1 62 0
	xorl	%edx, %edx
.L1:
	.loc 1 63 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L13:
.LBB7:
	.loc 2 120 0
	movl	4(%rdi), %eax
.LBE7:
	.loc 1 60 0
	movl	$100, %edx
.LBB8:
.LBB9:
.LBB10:
.LBB11:
.LBB12:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE12:
.LBE11:
.LBE10:
.LBE9:
.LBE8:
	.loc 2 120 0
	cmpl	$2, %eax
	je	.L1
	.loc 1 62 0
	xorl	%edx, %edx
	jmp	.L1
.LFE97:
	.size	cow_probe, .-cow_probe
	.p2align 4,,15
	.type	cow_open, @function
cow_open:
.LFB98:
	.loc 1 66 0
	movq	%rbx, -32(%rsp)
.LCFI0:
	movq	%rsi, %rbx
	movq	%rbp, -24(%rsp)
.LCFI1:
	movq	%r13, -8(%rsp)
.LCFI2:
	movq	%r12, -16(%rsp)
.LCFI3:
	.loc 1 72 0
	xorl	%eax, %eax
	.loc 1 66 0
	subq	$1096, %rsp
.LCFI4:
	.loc 1 66 0
	movq	%rdi, %r13
	.loc 1 67 0
	movq	56(%rdi), %r12
	.loc 1 72 0
	movl	$2, %esi
	movq	%rbx, %rdi
	call	open64
	.loc 1 73 0
	testl	%eax, %eax
	.loc 1 72 0
	movl	%eax, %ebp
	.loc 1 73 0
	js	.L35
.L15:
	.loc 1 78 0
	movl	%ebp, (%r12)
	.loc 1 80 0
	movl	$1056, %edx
	movq	%rsp, %rsi
	movl	%ebp, %edi
	call	read
	cmpq	$1056, %rax
	jne	.L18
.LBB13:
	.loc 2 120 0
	movl	(%rsp), %eax
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE17:
.LBE16:
.LBE15:
.LBE14:
.LBE13:
	.loc 2 120 0
	cmpl	$1330597709, %eax
	je	.L36
.L18:
	.loc 1 108 0
	movl	%ebp, %edi
	call	close
	.loc 1 109 0
	movl	$-1, %eax
.L14:
	.loc 1 110 0
	movq	1064(%rsp), %rbx
	movq	1072(%rsp), %rbp
	movq	1080(%rsp), %r12
	movq	1088(%rsp), %r13
	addq	$1096, %rsp
	ret
	.p2align 4,,7
.L36:
.LBB18:
	.loc 2 120 0
	movl	4(%rsp), %eax
.LBB19:
.LBB20:
.LBB21:
.LBB22:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE22:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 2 120 0
	cmpl	$2, %eax
	jne	.L18
.LBB23:
	.loc 2 121 0
	movq	1040(%rsp), %rax
.LBE23:
	.loc 1 93 0
	leaq	1604(%r13), %rdi
	movl	$1024, %esi
.LBB24:
.LBB25:
.LBB26:
.LBB27:
.LBB28:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE28:
.LBE27:
.LBE26:
.LBE25:
.LBE24:
	.loc 1 91 0
	leaq	511(%rax), %rdx
	cmpq	$-1, %rax
	cmovle	%rdx, %rax
	.loc 1 93 0
	leaq	8(%rsp), %rdx
	.loc 1 91 0
	sarq	$9, %rax
	movq	%rax, (%r13)
	.loc 1 93 0
	call	pstrcpy
	.loc 1 97 0
	movq	(%r13), %rdi
	addq	$7, %rdi
	sarq	$3, %rdi
	addl	$1056, %edi
	movl	%edi, 24(%r12)
	.loc 1 98 0
	movslq	%edi,%rdi
	call	get_mmap_addr
	movslq	24(%r12),%rsi
	movl	(%r12), %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	$1, %ecx
	movl	$3, %edx
	call	mmap64
	.loc 1 102 0
	cmpq	$-1, %rax
	.loc 1 98 0
	movq	%rax, 16(%r12)
	.loc 1 102 0
	je	.L18
	.loc 1 104 0
	addq	$1056, %rax
	movq	%rax, 8(%r12)
	.loc 1 105 0
	movl	24(%r12), %eax
	addl	$511, %eax
	andl	$-512, %eax
	cltq
	movq	%rax, 32(%r12)
	.loc 1 106 0
	xorl	%eax, %eax
	jmp	.L14
	.p2align 4,,7
.L35:
	.loc 1 74 0
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	call	open64
	movl	%eax, %ebp
	.loc 1 76 0
	movl	$-1, %eax
	.loc 1 75 0
	testl	%ebp, %ebp
	jns	.L15
	jmp	.L14
.LFE98:
	.size	cow_open, .-cow_open
	.p2align 4,,15
	.type	cow_is_allocated, @function
cow_is_allocated:
.LFB102:
	.loc 1 148 0
	.loc 1 149 0
	movq	56(%rdi), %rax
	.loc 1 148 0
	movl	%edx, %r11d
	movq	%rcx, %r9
.LBB29:
	.loc 1 129 0
	movq	8(%rax), %r10
.LBB30:
	.loc 1 132 0
	testq	%r10, %r10
	sete	%dl
	testl	%r11d, %r11d
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L38
	.loc 1 133 0
	xorl	%eax, %eax
	movl	%r11d, (%rcx)
	ret
	.p2align 4,,7
.L38:
.LBB31:
.LBB32:
	.loc 1 119 0
	leaq	7(%rsi), %rax
	cmpq	$-1, %rsi
	movl	%esi, %ecx
	cmovg	%rsi, %rax
	sarq	$3, %rax
	movzbl	(%rax,%r10), %r8d
	salq	$3, %rax
.LBE32:
.LBE31:
	.loc 1 138 0
	movl	$1, (%r9)
.LBB33:
.LBB34:
	.loc 1 119 0
	subb	%al, %cl
	sarl	%cl, %r8d
	andl	$1, %r8d
.LBE34:
.LBE33:
	.loc 1 138 0
	cmpl	$1, %r11d
	jle	.L44
	.p2align 4,,7
.L50:
.LBB35:
	.loc 1 118 0
	movl	(%r9), %edi
	movslq	%edi,%rcx
	addq	%rsi, %rcx
.LBB36:
	.loc 1 119 0
	leaq	7(%rcx), %rax
	cmpq	$-1, %rcx
	cmovg	%rcx, %rax
	sarq	$3, %rax
	movzbl	(%rax,%r10), %edx
	salq	$3, %rax
	subb	%al, %cl
	sarl	%cl, %edx
	andl	$1, %edx
.LBE36:
.LBE35:
	.loc 1 118 0
	cmpl	%r8d, %edx
	jne	.L44
	.loc 1 138 0
	leal	1(%rdi), %eax
	cmpl	%r11d, %eax
	movl	%eax, (%r9)
	jl	.L50
.L44:
	.loc 1 141 0
	movl	%r8d, %eax
.LBE30:
.LBE29:
	.loc 1 151 0
	ret
.LFE102:
	.size	cow_is_allocated, .-cow_is_allocated
	.p2align 4,,15
	.type	cow_read, @function
cow_read:
.LFB103:
	.loc 1 155 0
	pushq	%r15
.LCFI5:
	movq	%rdi, %r15
	pushq	%r14
.LCFI6:
	pushq	%r13
.LCFI7:
	pushq	%r12
.LCFI8:
	movq	%rdx, %r12
	pushq	%rbp
.LCFI9:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI10:
	movl	%ecx, %ebx
	subq	$8, %rsp
.LCFI11:
	.loc 1 177 0
	testl	%ecx, %ecx
	.loc 1 156 0
	movq	56(%rdi), %r13
	.loc 1 177 0
	jle	.L76
	leaq	4(%rsp), %r14
	.p2align 4,,7
.L74:
.LBB37:
	.loc 1 129 0
	movq	8(%r13), %r8
.LBB38:
	.loc 1 132 0
	testq	%r8, %r8
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L56
	.loc 1 133 0
	movl	%ebx, 4(%rsp)
.L55:
.LBE38:
.LBE37:
	.loc 1 166 0
	movq	2640(%r15), %rdi
	testq	%rdi, %rdi
	je	.L71
	.loc 1 168 0
	movl	4(%rsp), %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	bdrv_read
	.loc 1 169 0
	testl	%eax, %eax
	js	.L79
.L78:
	movl	4(%rsp), %ecx
.L70:
	.loc 1 176 0
	movslq	%ecx,%rax
	.loc 1 175 0
	subl	%ecx, %ebx
	.loc 1 177 0
	sall	$9, %ecx
	.loc 1 176 0
	addq	%rax, %rbp
	.loc 1 177 0
	movslq	%ecx,%rax
	addq	%rax, %r12
	testl	%ebx, %ebx
	jg	.L74
.L76:
	.loc 1 180 0
	addq	$8, %rsp
	.loc 1 179 0
	xorl	%eax, %eax
	.loc 1 180 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L56:
.LBB39:
.LBB40:
.LBB41:
.LBB42:
	.loc 1 119 0
	leaq	7(%rbp), %rax
	cmpq	$-1, %rbp
	movl	%ebp, %ecx
	cmovg	%rbp, %rax
	sarq	$3, %rax
	movzbl	(%rax,%r8), %edi
	salq	$3, %rax
.LBE42:
.LBE41:
	.loc 1 138 0
	movl	$1, 4(%rsp)
.LBB43:
.LBB44:
	.loc 1 119 0
	subb	%al, %cl
	sarl	%cl, %edi
	andl	$1, %edi
.LBE44:
.LBE43:
	.loc 1 138 0
	cmpl	$1, %ebx
	jle	.L62
	movl	(%r14), %esi
	.p2align 4,,7
.L68:
.LBB45:
	.loc 1 118 0
	movslq	%esi,%rcx
	addq	%rbp, %rcx
.LBB46:
	.loc 1 119 0
	leaq	7(%rcx), %rax
	cmpq	$-1, %rcx
	cmovg	%rcx, %rax
	sarq	$3, %rax
	movzbl	(%rax,%r8), %edx
	salq	$3, %rax
	subb	%al, %cl
	sarl	%cl, %edx
	andl	$1, %edx
.LBE46:
.LBE45:
	.loc 1 118 0
	cmpl	%edi, %edx
	jne	.L62
	.loc 1 138 0
	leal	1(%rsi), %eax
	cmpl	%ebx, %eax
	movl	%eax, %esi
	movl	%eax, (%r14)
	jl	.L68
.L62:
.LBE40:
.LBE39:
	.loc 1 129 0
	testl	%edi, %edi
	je	.L55
	.loc 1 161 0
	movq	%rbp, %rsi
	movl	(%r13), %edi
	xorl	%edx, %edx
	salq	$9, %rsi
	addq	32(%r13), %rsi
	call	lseek64
	.loc 1 162 0
	movl	4(%rsp), %edx
	movl	(%r13), %edi
	movq	%r12, %rsi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	read
	.loc 1 163 0
	movl	4(%rsp), %ecx
	movl	%ecx, %edx
	sall	$9, %edx
	cmpl	%eax, %edx
	je	.L70
.L79:
	.loc 1 180 0
	addq	$8, %rsp
	.loc 1 170 0
	movl	$-1, %eax
	.loc 1 180 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L71:
	.loc 1 172 0
	movl	4(%rsp), %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L78
.LFE103:
	.size	cow_read, .-cow_read
	.p2align 4,,15
	.type	cow_write, @function
cow_write:
.LFB104:
	.loc 1 184 0
	pushq	%r14
.LCFI12:
	movq	%rsi, %r14
	.loc 1 188 0
	salq	$9, %rsi
	.loc 1 184 0
	pushq	%r13
.LCFI13:
	movl	%ecx, %r13d
	pushq	%r12
.LCFI14:
	movq	%rdx, %r12
	.loc 1 188 0
	xorl	%edx, %edx
	.loc 1 184 0
	pushq	%rbp
.LCFI15:
	pushq	%rbx
.LCFI16:
	.loc 1 185 0
	movq	56(%rdi), %rbp
	.loc 1 189 0
	movl	%r13d, %ebx
	sall	$9, %ebx
	.loc 1 188 0
	addq	32(%rbp), %rsi
	movl	(%rbp), %edi
	call	lseek64
	.loc 1 189 0
	movl	(%rbp), %edi
	movslq	%ebx,%rdx
	movq	%r12, %rsi
	call	write
	.loc 1 190 0
	cmpl	%eax, %ebx
	.loc 1 191 0
	movl	$-1, %edx
	.loc 1 190 0
	jne	.L80
	.loc 1 192 0
	xorl	%r8d, %r8d
	cmpl	%r13d, %r8d
	jge	.L90
	movl	$1, %r9d
	movq	%r14, %rdi
	.p2align 4,,7
.L88:
.LBB47:
.LBB48:
	.loc 1 114 0
	leaq	7(%rdi), %rax
	cmpq	$-1, %rdi
.LBE48:
	.loc 1 113 0
	movq	8(%rbp), %rsi
.LBB49:
	.loc 1 114 0
	movl	%edi, %ecx
	cmovg	%rdi, %rax
.LBE49:
.LBE47:
	.loc 1 192 0
	incl	%r8d
	incq	%rdi
.LBB50:
.LBB51:
	.loc 1 114 0
	sarq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subb	%dl, %cl
	movl	%r9d, %edx
	sall	%cl, %edx
	orb	%dl, (%rax,%rsi)
.LBE51:
.LBE50:
	.loc 1 192 0
	cmpl	%r13d, %r8d
	jl	.L88
.L90:
	.loc 1 194 0
	xorl	%edx, %edx
.L80:
	.loc 1 195 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	movl	%edx, %eax
	ret
.LFE104:
	.size	cow_write, .-cow_write
	.p2align 4,,15
	.type	cow_close, @function
cow_close:
.LFB105:
	.loc 1 198 0
	pushq	%rbx
.LCFI17:
	.loc 1 199 0
	movq	56(%rdi), %rbx
	.loc 1 200 0
	movslq	24(%rbx),%rsi
	movq	16(%rbx), %rdi
	call	munmap
	.loc 1 201 0
	movl	(%rbx), %edi
	popq	%rbx
	jmp	close
.LFE105:
	.size	cow_close, .-cow_close
	.p2align 4,,15
	.type	cow_create, @function
cow_create:
.LFB106:
	.loc 1 206 0
	movq	%r12, -24(%rsp)
.LCFI18:
	movq	%r14, -8(%rsp)
.LCFI19:
	movq	%rdx, %r12
	movq	%rbx, -40(%rsp)
.LCFI20:
	movq	%rbp, -32(%rsp)
.LCFI21:
	movq	%rsi, %r14
	movq	%r13, -16(%rsp)
.LCFI22:
	subq	$1240, %rsp
.LCFI23:
	.loc 1 211 0
	testl	%ecx, %ecx
	.loc 1 212 0
	movl	$-95, %eax
	.loc 1 211 0
	jne	.L92
	.loc 1 214 0
	xorl	%eax, %eax
	movl	$420, %edx
	movl	$577, %esi
	call	open64
	movl	%eax, %ebp
	.loc 1 217 0
	movl	$-1, %eax
	.loc 1 216 0
	testl	%ebp, %ebp
	js	.L92
	.loc 1 218 0
	leaq	144(%rsp), %r13
	xorl	%esi, %esi
	movl	$1056, %edx
	movq	%r13, %rdi
	call	memset
	.loc 1 221 0
	testq	%r12, %r12
	.loc 2 120 0
	movl	$1297043279, 144(%rsp)
	movl	$33554432, 148(%rsp)
	.loc 1 221 0
	je	.L103
	.loc 1 225 0
	xorl	%esi, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	.loc 2 120 0
	movl	$0, 1176(%rsp)
	.loc 1 225 0
	call	open64
	.loc 1 226 0
	testl	%eax, %eax
	.loc 1 225 0
	movl	%eax, %ebx
	.loc 1 227 0
	movl	%ebp, %edi
	.loc 1 226 0
	js	.L124
.LBB52:
	.file 3 "/usr/include/sys/stat.h"
	.loc 3 468 0
	movq	%rsp, %rdx
.LBB53:
	.loc 3 469 0
	movl	%eax, %esi
	movl	$1, %edi
	call	__fxstat64
.LBE53:
.LBE52:
	.loc 3 468 0
	testl	%eax, %eax
	jne	.L125
	.loc 1 234 0
	movl	%ebx, %edi
	call	close
.LBB54:
	.loc 2 120 0
	movl	88(%rsp), %eax
.LBB55:
.LBB56:
.LBB57:
.LBB58:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE58:
.LBE57:
.LBE56:
.LBE55:
.LBE54:
	.loc 2 120 0
	movl	%eax, 1176(%rsp)
.L109:
	.loc 1 237 0
	leaq	8(%r13), %rdi
	movq	%r12, %rdx
	movl	$1024, %esi
	call	pstrcpy
.L103:
	.loc 1 242 0
	movl	$1056, %edx
	movq	%r13, %rsi
	movl	%ebp, %edi
.LBB59:
	.loc 2 121 0
	movq	%r14, %rax
.LBE59:
	.loc 2 120 0
	movl	$131072, 1192(%rsp)
.LBB60:
	.loc 2 121 0
	salq	$9, %rax
.LBB61:
.LBB62:
.LBB63:
.LBB64:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE64:
.LBE63:
.LBE62:
.LBE61:
.LBE60:
	.loc 2 121 0
	movq	%rax, 1184(%rsp)
	.loc 1 242 0
	call	write
	.loc 1 244 0
	leaq	7(%r14), %rsi
	movl	%ebp, %edi
	sarq	$3, %rsi
	addq	$1056, %rsi
	call	ftruncate64
	.loc 1 245 0
	movl	%ebp, %edi
	call	close
	.loc 1 246 0
	xorl	%eax, %eax
.L92:
	.loc 1 247 0
	movq	1200(%rsp), %rbx
	movq	1208(%rsp), %rbp
	movq	1216(%rsp), %r12
	movq	1224(%rsp), %r13
	movq	1232(%rsp), %r14
	addq	$1240, %rsp
	ret
	.p2align 4,,7
.L125:
	.loc 1 231 0
	movl	%ebx, %edi
.L124:
	call	close
	jmp	.L109
.LFE106:
	.size	cow_create, .-cow_create
	.p2align 4,,15
	.type	cow_flush, @function
cow_flush:
.LFB107:
	.loc 1 250 0
	.loc 1 251 0
	movq	56(%rdi), %rax
	.loc 1 252 0
	movl	(%rax), %edi
	jmp	fsync
.LFE107:
	.size	cow_flush, .-cow_flush
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
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x450
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
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
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI12-.LFB104
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
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
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI19-.LFB106
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x4e0
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE14:
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
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI0
	.byte	0xe
	.uleb128 0x450
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
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
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI12-.LFB104
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
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
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI19-.LFB106
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI23-.LCFI19
	.byte	0xe
	.uleb128 0x4e0
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE15:
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "qemu-common.h"
	.file 7 "block_int.h"
	.file 8 "block.h"
	.file 9 "/usr/include/bits/stat.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1605
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF204
	.byte	0x1
	.long	.LASF205
	.long	.LASF206
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
	.byte	0xa
	.byte	0x86
	.long	0x38
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
	.byte	0x87
	.long	0x46
	.uleb128 0x2
	.long	.LASF12
	.byte	0xa
	.byte	0x88
	.long	0x46
	.uleb128 0x2
	.long	.LASF13
	.byte	0xa
	.byte	0x89
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0xa
	.byte	0x8b
	.long	0x46
	.uleb128 0x2
	.long	.LASF15
	.byte	0xa
	.byte	0x8c
	.long	0x38
	.uleb128 0x2
	.long	.LASF16
	.byte	0xa
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0xa
	.byte	0x8e
	.long	0x53
	.uleb128 0x2
	.long	.LASF18
	.byte	0xa
	.byte	0x95
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x2
	.long	.LASF19
	.byte	0xa
	.byte	0xa4
	.long	0x53
	.uleb128 0x2
	.long	.LASF20
	.byte	0xa
	.byte	0xa9
	.long	0x53
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0xc6
	.long	0x53
	.uleb128 0x8
	.long	0x156
	.long	.LASF26
	.byte	0x10
	.byte	0xb
	.byte	0x79
	.uleb128 0x9
	.long	.LASF23
	.byte	0xb
	.byte	0x7a
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF24
	.byte	0xb
	.byte	0x7b
	.long	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.long	0x16d
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.long	0x339
	.long	.LASF27
	.byte	0xd8
	.byte	0xc
	.byte	0x2d
	.uleb128 0xc
	.long	.LASF28
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF29
	.byte	0xd
	.value	0x115
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF30
	.byte	0xd
	.value	0x116
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF31
	.byte	0xd
	.value	0x117
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF32
	.byte	0xd
	.value	0x118
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF33
	.byte	0xd
	.value	0x119
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF34
	.byte	0xd
	.value	0x11a
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF35
	.byte	0xd
	.value	0x11b
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF36
	.byte	0xd
	.value	0x11c
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF37
	.byte	0xd
	.value	0x11e
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF38
	.byte	0xd
	.value	0x11f
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.long	.LASF39
	.byte	0xd
	.value	0x120
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.long	.LASF40
	.byte	0xd
	.value	0x122
	.long	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF41
	.byte	0xd
	.value	0x124
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF42
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.long	.LASF43
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.long	.LASF44
	.byte	0xd
	.value	0x12c
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.long	.LASF45
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.long	.LASF46
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xc
	.long	.LASF47
	.byte	0xd
	.value	0x132
	.long	0x383
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xc
	.long	.LASF48
	.byte	0xd
	.value	0x136
	.long	0x393
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.long	.LASF49
	.byte	0xd
	.value	0x13f
	.long	0xe3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.long	.LASF50
	.byte	0xd
	.value	0x148
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.long	.LASF51
	.byte	0xd
	.value	0x149
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.long	.LASF52
	.byte	0xd
	.value	0x14a
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.long	.LASF53
	.byte	0xd
	.value	0x14b
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.long	.LASF54
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.long	.LASF55
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.long	.LASF56
	.byte	0xd
	.value	0x150
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xd
	.long	.LASF57
	.byte	0xd
	.byte	0xb4
	.uleb128 0x8
	.long	0x377
	.long	.LASF58
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0x9
	.long	.LASF59
	.byte	0xd
	.byte	0xbb
	.long	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd
	.byte	0xbc
	.long	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x340
	.uleb128 0x5
	.byte	0x8
	.long	0x16d
	.uleb128 0xa
	.long	0x393
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x339
	.uleb128 0xa
	.long	0x3a9
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x4
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF63
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x8
	.long	0x4a9
	.long	.LASF65
	.byte	0x90
	.byte	0x9
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF66
	.byte	0x9
	.byte	0x2d
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x9
	.byte	0x32
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x9
	.byte	0x3a
	.long	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF69
	.byte	0x9
	.byte	0x3b
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF70
	.byte	0x9
	.byte	0x3d
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF71
	.byte	0x9
	.byte	0x3e
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF72
	.byte	0x9
	.byte	0x40
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF73
	.byte	0x9
	.byte	0x42
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF74
	.byte	0x9
	.byte	0x47
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF75
	.byte	0x9
	.byte	0x4b
	.long	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF76
	.byte	0x9
	.byte	0x4d
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF77
	.byte	0x9
	.byte	0x58
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF78
	.byte	0x9
	.byte	0x59
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF79
	.byte	0x9
	.byte	0x5a
	.long	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF80
	.byte	0x9
	.byte	0x67
	.long	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xa
	.long	0x4b9
	.long	0x53
	.uleb128 0xb
	.long	0x61
	.byte	0x2
	.byte	0x0
	.uleb128 0xe
	.long	0x4c5
	.byte	0x1
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4cb
	.uleb128 0x6
	.long	0x3a9
	.uleb128 0x2
	.long	.LASF81
	.byte	0x6
	.byte	0x6e
	.long	0x4db
	.uleb128 0x10
	.long	0x68f
	.long	.LASF81
	.value	0xac0
	.byte	0x6
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF82
	.byte	0x7
	.byte	0x5d
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x7
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF84
	.byte	0x7
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF85
	.byte	0x7
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF86
	.byte	0x7
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x7
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF87
	.byte	0x7
	.byte	0x65
	.long	0xc3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF88
	.byte	0x7
	.byte	0x66
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x7
	.byte	0x68
	.long	0xc40
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF89
	.byte	0x7
	.byte	0x69
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF90
	.byte	0x7
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF91
	.byte	0x7
	.byte	0x6c
	.long	0xc46
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.long	.LASF92
	.byte	0x7
	.byte	0x6e
	.long	0xc57
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x9
	.long	.LASF93
	.byte	0x7
	.byte	0x6f
	.long	0xc57
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0x9
	.long	.LASF94
	.byte	0x7
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0x9
	.long	.LASF95
	.byte	0x7
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0x9
	.long	.LASF96
	.byte	0x7
	.byte	0x74
	.long	0xa00
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0x9
	.long	.LASF97
	.byte	0x7
	.byte	0x77
	.long	0xf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0x9
	.long	.LASF98
	.byte	0x7
	.byte	0x7a
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0x9
	.long	.LASF99
	.byte	0x7
	.byte	0x7b
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0x9
	.long	.LASF100
	.byte	0x7
	.byte	0x7c
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0x9
	.long	.LASF101
	.byte	0x7
	.byte	0x7d
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.long	.LASF102
	.byte	0x7
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.long	.LASF103
	.byte	0x7
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.long	.LASF104
	.byte	0x7
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.long	.LASF105
	.byte	0x7
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.long	.LASF106
	.byte	0x7
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.long	.LASF107
	.byte	0x7
	.byte	0x83
	.long	0x15d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0x9
	.long	.LASF108
	.byte	0x7
	.byte	0x84
	.long	0xa00
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF109
	.byte	0x8
	.byte	0x5
	.long	0x69a
	.uleb128 0x10
	.long	0x896
	.long	.LASF109
	.value	0x110
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.long	.LASF110
	.byte	0x7
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF111
	.byte	0x7
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF112
	.byte	0x7
	.byte	0x24
	.long	0x9e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF113
	.byte	0x7
	.byte	0x25
	.long	0xa06
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF114
	.byte	0x7
	.byte	0x27
	.long	0xa31
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF115
	.byte	0x7
	.byte	0x29
	.long	0xa56
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF116
	.byte	0x7
	.byte	0x2a
	.long	0xa68
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF117
	.byte	0x7
	.byte	0x2c
	.long	0xa8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF118
	.byte	0x7
	.byte	0x2d
	.long	0xa68
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF119
	.byte	0x7
	.byte	0x2f
	.long	0xab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF120
	.byte	0x7
	.byte	0x30
	.long	0xacd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF121
	.byte	0x7
	.byte	0x31
	.long	0xae3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF122
	.byte	0x7
	.byte	0x35
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF123
	.byte	0x7
	.byte	0x38
	.long	0xb4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF124
	.byte	0x7
	.byte	0x39
	.long	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF125
	.byte	0x7
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF126
	.byte	0x7
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF127
	.byte	0x7
	.byte	0x3e
	.long	0xa31
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF128
	.byte	0x7
	.byte	0x40
	.long	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF129
	.byte	0x7
	.byte	0x41
	.long	0xb7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF130
	.byte	0x7
	.byte	0x42
	.long	0xb90
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x7
	.byte	0x44
	.long	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF132
	.byte	0x7
	.byte	0x47
	.long	0xbb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF133
	.byte	0x7
	.byte	0x49
	.long	0xacd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF134
	.byte	0x7
	.byte	0x4a
	.long	0xacd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF135
	.byte	0x7
	.byte	0x4c
	.long	0xbd2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF136
	.byte	0x7
	.byte	0x4d
	.long	0xbf3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.long	.LASF137
	.byte	0x7
	.byte	0x50
	.long	0xae3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x9
	.long	.LASF138
	.byte	0x7
	.byte	0x51
	.long	0xae3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.long	.LASF139
	.byte	0x7
	.byte	0x52
	.long	0xc0e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.long	.LASF140
	.byte	0x7
	.byte	0x53
	.long	0xc0e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x7
	.byte	0x56
	.long	0xc2e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.long	.LASF142
	.byte	0x7
	.byte	0x58
	.long	0xb12
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF108
	.byte	0x7
	.byte	0x59
	.long	0xc34
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0x8
	.long	0x8bf
	.long	.LASF143
	.byte	0x10
	.byte	0x8
	.byte	0x14
	.uleb128 0x9
	.long	.LASF144
	.byte	0x8
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x8
	.byte	0x18
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF143
	.byte	0x8
	.byte	0x19
	.long	0x896
	.uleb128 0x10
	.long	0x931
	.long	.LASF146
	.value	0x198
	.byte	0x8
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF147
	.byte	0x8
	.byte	0x1c
	.long	0x931
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF148
	.byte	0x8
	.byte	0x1f
	.long	0x941
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF149
	.byte	0x8
	.byte	0x20
	.long	0x3b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x9
	.long	.LASF150
	.byte	0x8
	.byte	0x21
	.long	0x3b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x9
	.long	.LASF151
	.byte	0x8
	.byte	0x22
	.long	0x3b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x9
	.long	.LASF152
	.byte	0x8
	.byte	0x23
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0xa
	.long	0x941
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.long	0x951
	.long	0x7a
	.uleb128 0xb
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF146
	.byte	0x8
	.byte	0x24
	.long	0x8ca
	.uleb128 0x2
	.long	.LASF153
	.byte	0x8
	.byte	0x50
	.long	0x967
	.uleb128 0x8
	.long	0x9aa
	.long	.LASF153
	.byte	0x20
	.byte	0x8
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x7
	.byte	0x88
	.long	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x7
	.byte	0x89
	.long	0xb18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF89
	.byte	0x7
	.byte	0x8a
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF108
	.byte	0x7
	.byte	0x8b
	.long	0xb12
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF154
	.byte	0x8
	.byte	0x51
	.long	0x9b5
	.uleb128 0xe
	.long	0x9c6
	.byte	0x1
	.uleb128 0xf
	.long	0xf9
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x9e0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x4c5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9c6
	.uleb128 0x12
	.long	0xa00
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4d0
	.uleb128 0x5
	.byte	0x8
	.long	0x9e6
	.uleb128 0x12
	.long	0xa2b
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0xa2b
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3a9
	.uleb128 0x5
	.byte	0x8
	.long	0xa0c
	.uleb128 0x12
	.long	0xa56
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x4c5
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa37
	.uleb128 0xe
	.long	0xa68
	.byte	0x1
	.uleb128 0xf
	.long	0xa00
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa5c
	.uleb128 0x12
	.long	0xa8d
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa6e
	.uleb128 0x12
	.long	0xab2
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa93
	.uleb128 0x12
	.long	0xacd
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xab8
	.uleb128 0x12
	.long	0xae3
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xad3
	.uleb128 0x12
	.long	0xb12
	.byte	0x1
	.long	0xb12
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0xa2b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0xb18
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x95c
	.uleb128 0x5
	.byte	0x8
	.long	0x9aa
	.uleb128 0x5
	.byte	0x8
	.long	0xae9
	.uleb128 0x12
	.long	0xb4d
	.byte	0x1
	.long	0xb12
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.uleb128 0xf
	.long	0x4c5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0xb18
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb24
	.uleb128 0xe
	.long	0xb5f
	.byte	0x1
	.uleb128 0xf
	.long	0xb12
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb53
	.uleb128 0x12
	.long	0xb7a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x122
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb65
	.uleb128 0x12
	.long	0xb90
	.byte	0x1
	.long	0x122
	.uleb128 0xf
	.long	0xa00
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb80
	.uleb128 0x12
	.long	0xbab
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0xbab
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x951
	.uleb128 0x5
	.byte	0x8
	.long	0xb96
	.uleb128 0x12
	.long	0xbcc
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0xbcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbab
	.uleb128 0x5
	.byte	0x8
	.long	0xbb7
	.uleb128 0x12
	.long	0xbed
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0xbed
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8bf
	.uleb128 0x5
	.byte	0x8
	.long	0xbd8
	.uleb128 0x12
	.long	0xc0e
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xbf9
	.uleb128 0x12
	.long	0xc2e
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0xa00
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc14
	.uleb128 0x5
	.byte	0x8
	.long	0x69a
	.uleb128 0x5
	.byte	0x8
	.long	0x4b9
	.uleb128 0x5
	.byte	0x8
	.long	0x68f
	.uleb128 0xa
	.long	0xc57
	.long	0x3a9
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0xa
	.long	0xc68
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x10
	.long	0xccd
	.long	.LASF155
	.value	0x420
	.byte	0x1
	.byte	0x24
	.uleb128 0x9
	.long	.LASF156
	.byte	0x1
	.byte	0x25
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF157
	.byte	0x1
	.byte	0x26
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF93
	.byte	0x1
	.byte	0x27
	.long	0xc57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF158
	.byte	0x1
	.byte	0x28
	.long	0x117
	.byte	0x3
	.byte	0x23
	.uleb128 0x408
	.uleb128 0x9
	.long	.LASF159
	.byte	0x1
	.byte	0x29
	.long	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x410
	.uleb128 0x9
	.long	.LASF160
	.byte	0x1
	.byte	0x2a
	.long	0x3b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x418
	.byte	0x0
	.uleb128 0x8
	.long	0xd1f
	.long	.LASF161
	.byte	0x28
	.byte	0x1
	.byte	0x2d
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF162
	.byte	0x1
	.byte	0x2f
	.long	0xa2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF163
	.byte	0x1
	.byte	0x30
	.long	0xa2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF164
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF165
	.byte	0x1
	.byte	0x32
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF161
	.byte	0x1
	.byte	0x33
	.long	0xccd
	.uleb128 0x14
	.long	0xe2f
	.long	.LASF167
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x35
	.long	0x4c5
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF166
	.byte	0x1
	.byte	0x35
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x35
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.byte	0x37
	.long	0xe2f
	.uleb128 0x18
	.long	0xdd6
	.long	0xe3a
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x19
	.long	0xe4b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	0xe55
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1b
	.long	0xe66
	.uleb128 0x1c
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1d
	.long	0xe70
	.uleb128 0x1d
	.long	0xe7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0xdf7
	.long	0xe3a
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x19
	.long	0xe4b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.long	0xe55
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1b
	.long	0xe66
	.uleb128 0x1c
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1d
	.long	0xe70
	.uleb128 0x1d
	.long	0xe7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xe35
	.uleb128 0x6
	.long	0xc68
	.uleb128 0x1e
	.long	0xe55
	.long	.LASF168
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x3b4
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x3b4
	.byte	0x0
	.uleb128 0x1e
	.long	0xe88
	.long	.LASF169
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x3b4
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0x3b4
	.uleb128 0x20
	.uleb128 0x21
	.string	"__v"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.uleb128 0x21
	.string	"__x"
	.byte	0x2
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1018
	.long	.LASF171
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0x41
	.long	0xa00
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x41
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF172
	.byte	0x1
	.byte	0x41
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x43
	.long	0x1018
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.long	.LASF170
	.byte	0x1
	.byte	0x45
	.long	0xc68
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF159
	.byte	0x1
	.byte	0x46
	.long	0x122
	.uleb128 0x24
	.long	.LASF193
	.byte	0x1
	.byte	0x6b
	.quad	.L18
	.uleb128 0x18
	.long	0xf67
	.long	0xe3a
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x19
	.long	0xe4b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	0xe55
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x1b
	.long	0xe66
	.uleb128 0x1c
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x1d
	.long	0xe70
	.uleb128 0x1d
	.long	0xe7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0xfbf
	.long	0xe3a
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x19
	.long	0xe4b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	0xe55
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x1b
	.long	0xe66
	.uleb128 0x1c
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1d
	.long	0xe70
	.uleb128 0x1d
	.long	0xe7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0xfde
	.long	0x101e
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x1b
	.long	0x102f
	.byte	0x0
	.uleb128 0x1a
	.long	0x1039
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x1b
	.long	0x104a
	.uleb128 0x1c
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x25
	.long	0x1054
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x105f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xd1f
	.uleb128 0x1e
	.long	0x1039
	.long	.LASF173
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x3bf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x3bf
	.byte	0x0
	.uleb128 0x1e
	.long	0x106c
	.long	.LASF174
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x3bf
	.byte	0x3
	.uleb128 0x1f
	.string	"x"
	.byte	0x2
	.byte	0x38
	.long	0x3bf
	.uleb128 0x20
	.uleb128 0x21
	.string	"__v"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.uleb128 0x21
	.string	"__x"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x1156
	.long	.LASF175
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0x92
	.long	0xa00
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF176
	.byte	0x1
	.byte	0x92
	.long	0x122
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF177
	.byte	0x1
	.byte	0x93
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x16
	.long	.LASF178
	.byte	0x1
	.byte	0x93
	.long	0x4d
	.byte	0x1
	.byte	0x59
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x95
	.long	0x1018
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	0x1156
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x19
	.long	0x1167
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.long	0x1172
	.uleb128 0x1b
	.long	0x117d
	.uleb128 0x1b
	.long	0x1188
	.uleb128 0x1c
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x1d
	.long	0x1193
	.uleb128 0x18
	.long	0x1131
	.long	0x119f
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x1b
	.long	0x11b0
	.uleb128 0x1b
	.long	0x11bb
	.byte	0x0
	.uleb128 0x1a
	.long	0x119f
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x1b
	.long	0x11b0
	.uleb128 0x19
	.long	0x11bb
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x119f
	.long	.LASF179
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x26
	.long	.LASF180
	.byte	0x1
	.byte	0x7e
	.long	0xa2b
	.uleb128 0x26
	.long	.LASF176
	.byte	0x1
	.byte	0x7f
	.long	0x122
	.uleb128 0x26
	.long	.LASF177
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.uleb128 0x26
	.long	.LASF181
	.byte	0x1
	.byte	0x80
	.long	0x4d
	.uleb128 0x17
	.long	.LASF182
	.byte	0x1
	.byte	0x82
	.long	0x3f
	.byte	0x0
	.uleb128 0x1e
	.long	0x11c7
	.long	.LASF183
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x26
	.long	.LASF180
	.byte	0x1
	.byte	0x75
	.long	0x4c5
	.uleb128 0x26
	.long	.LASF184
	.byte	0x1
	.byte	0x75
	.long	0x122
	.byte	0x0
	.uleb128 0x14
	.long	0x12c2
	.long	.LASF185
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x3f
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0x99
	.long	0xa00
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.long	.LASF176
	.byte	0x1
	.byte	0x99
	.long	0x122
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x9a
	.long	0xa2b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF177
	.byte	0x1
	.byte	0x9a
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0x9c
	.long	0x1018
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x9d
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x9d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	0x127b
	.long	0x1156
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x19
	.long	0x1167
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.long	0x1172
	.uleb128 0x1b
	.long	0x117d
	.uleb128 0x1b
	.long	0x1188
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1d
	.long	0x1193
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x129f
	.long	0x119f
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x1b
	.long	0x11b0
	.uleb128 0x1b
	.long	0x11bb
	.byte	0x0
	.uleb128 0x1a
	.long	0x119f
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x1b
	.long	0x11b0
	.uleb128 0x19
	.long	0x11bb
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.long	0x135b
	.long	.LASF186
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0xb6
	.long	0xa00
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF176
	.byte	0x1
	.byte	0xb6
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xb7
	.long	0x4c5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF177
	.byte	0x1
	.byte	0xb7
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xb9
	.long	0x1018
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.long	0x3f
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xba
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.long	0x135b
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x19
	.long	0x1368
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.long	0x1373
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x137f
	.long	.LASF187
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.byte	0x3
	.uleb128 0x26
	.long	.LASF180
	.byte	0x1
	.byte	0x70
	.long	0xa2b
	.uleb128 0x26
	.long	.LASF184
	.byte	0x1
	.byte	0x70
	.long	0x122
	.byte	0x0
	.uleb128 0x29
	.long	0x13b5
	.long	.LASF188
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0xc5
	.long	0xa00
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xc7
	.long	0x1018
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x14
	.long	0x1524
	.long	.LASF189
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0x3f
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0xcc
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF190
	.byte	0x1
	.byte	0xcc
	.long	0x122
	.byte	0x1
	.byte	0x5e
	.uleb128 0x16
	.long	.LASF191
	.byte	0x1
	.byte	0xcd
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF172
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"fd"
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF192
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x23
	.long	.LASF170
	.byte	0x1
	.byte	0xd0
	.long	0xc68
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x22
	.string	"st"
	.byte	0x1
	.byte	0xd1
	.long	0x3ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF194
	.byte	0x1
	.byte	0xec
	.quad	.L109
	.uleb128 0x18
	.long	0x1475
	.long	0x1524
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x1b
	.long	0x1537
	.uleb128 0x19
	.long	0x1543
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.long	0x14cd
	.long	0x1556
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x19
	.long	0x1567
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	0xe55
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1b
	.long	0xe66
	.uleb128 0x1c
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1d
	.long	0xe70
	.uleb128 0x1d
	.long	0xe7b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x14ec
	.long	0x1571
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x1b
	.long	0x1582
	.byte	0x0
	.uleb128 0x1a
	.long	0x1039
	.quad	.LBB62
	.quad	.LBE62
	.uleb128 0x1b
	.long	0x104a
	.uleb128 0x1c
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x1d
	.long	0x1054
	.uleb128 0x1d
	.long	0x105f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x1550
	.byte	0x1
	.long	.LASF207
	.byte	0x3
	.value	0x1d4
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x2b
	.long	.LASF195
	.byte	0x3
	.value	0x1d3
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF196
	.byte	0x3
	.value	0x1d3
	.long	0x1550
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3ca
	.uleb128 0x1e
	.long	0x1571
	.long	.LASF197
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x3b4
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x3b4
	.byte	0x0
	.uleb128 0x1e
	.long	0x158c
	.long	.LASF198
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x3bf
	.byte	0x3
	.uleb128 0x1f
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x3bf
	.byte	0x0
	.uleb128 0x29
	.long	0x15c2
	.long	.LASF199
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.byte	0xf9
	.long	0xa00
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xfb
	.long	0x1018
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF200
	.byte	0xc
	.byte	0x91
	.long	0x37d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF201
	.byte	0xc
	.byte	0x92
	.long	0x37d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF202
	.byte	0x1
	.byte	0xff
	.long	0x68f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_cow
	.uleb128 0x2d
	.long	.LASF203
	.byte	0x7
	.byte	0x94
	.long	0xa00
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
	.uleb128 0xd
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
	.uleb128 0x15
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x2a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1609
	.long	0x15dc
	.string	"bdrv_cow"
	.long	0x15f2
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
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"translation"
.LASF205:
	.string	"block-cow.c"
.LASF79:
	.string	"st_ctim"
.LASF9:
	.string	"size_t"
.LASF182:
	.string	"changed"
.LASF75:
	.string	"st_blksize"
.LASF185:
	.string	"cow_read"
.LASF189:
	.string	"cow_create"
.LASF82:
	.string	"total_sectors"
.LASF21:
	.string	"int32_t"
.LASF120:
	.string	"bdrv_set_key"
.LASF151:
	.string	"date_nsec"
.LASF39:
	.string	"_IO_save_end"
.LASF127:
	.string	"bdrv_pread"
.LASF12:
	.string	"__gid_t"
.LASF102:
	.string	"cyls"
.LASF134:
	.string	"bdrv_snapshot_delete"
.LASF78:
	.string	"st_mtim"
.LASF32:
	.string	"_IO_write_base"
.LASF48:
	.string	"_lock"
.LASF180:
	.string	"bitmap"
.LASF178:
	.string	"pnum"
.LASF65:
	.string	"stat"
.LASF190:
	.string	"image_sectors"
.LASF37:
	.string	"_IO_save_base"
.LASF112:
	.string	"bdrv_probe"
.LASF143:
	.string	"BlockDriverInfo"
.LASF45:
	.string	"_cur_column"
.LASF128:
	.string	"bdrv_pwrite"
.LASF10:
	.string	"__dev_t"
.LASF55:
	.string	"_mode"
.LASF104:
	.string	"secs"
.LASF84:
	.string	"removable"
.LASF152:
	.string	"vm_clock_nsec"
.LASF2:
	.string	"long int"
.LASF187:
	.string	"cow_set_bit"
.LASF93:
	.string	"backing_file"
.LASF191:
	.string	"image_filename"
.LASF58:
	.string	"_IO_marker"
.LASF89:
	.string	"opaque"
.LASF203:
	.string	"bdrv_first"
.LASF149:
	.string	"vm_state_size"
.LASF142:
	.string	"free_aiocb"
.LASF7:
	.string	"signed char"
.LASF19:
	.string	"__blksize_t"
.LASF188:
	.string	"cow_close"
.LASF27:
	.string	"_IO_FILE"
.LASF70:
	.string	"st_uid"
.LASF98:
	.string	"rd_bytes"
.LASF96:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF73:
	.string	"st_rdev"
.LASF138:
	.string	"bdrv_media_changed"
.LASF81:
	.string	"BlockDriverState"
.LASF129:
	.string	"bdrv_truncate"
.LASF95:
	.string	"media_changed"
.LASF155:
	.string	"cow_header_v2"
.LASF5:
	.string	"char"
.LASF117:
	.string	"bdrv_create"
.LASF197:
	.string	"cpu_to_be32"
.LASF126:
	.string	"protocol_name"
.LASF57:
	.string	"_IO_lock_t"
.LASF124:
	.string	"bdrv_aio_cancel"
.LASF92:
	.string	"filename"
.LASF173:
	.string	"be64_to_cpu"
.LASF14:
	.string	"__mode_t"
.LASF172:
	.string	"flags"
.LASF133:
	.string	"bdrv_snapshot_goto"
.LASF29:
	.string	"_IO_read_ptr"
.LASF116:
	.string	"bdrv_close"
.LASF61:
	.string	"_pos"
.LASF200:
	.string	"stdin"
.LASF163:
	.string	"cow_bitmap_addr"
.LASF201:
	.string	"stdout"
.LASF40:
	.string	"_markers"
.LASF101:
	.string	"wr_ops"
.LASF67:
	.string	"st_ino"
.LASF107:
	.string	"device_name"
.LASF103:
	.string	"heads"
.LASF198:
	.string	"cpu_to_be64"
.LASF49:
	.string	"_offset"
.LASF118:
	.string	"bdrv_flush"
.LASF161:
	.string	"BDRVCowState"
.LASF71:
	.string	"st_gid"
.LASF115:
	.string	"bdrv_write"
.LASF140:
	.string	"bdrv_set_locked"
.LASF154:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF166:
	.string	"buf_size"
.LASF43:
	.string	"_flags2"
.LASF74:
	.string	"st_size"
.LASF31:
	.string	"_IO_read_base"
.LASF56:
	.string	"_unused2"
.LASF26:
	.string	"timespec"
.LASF91:
	.string	"boot_sector_data"
.LASF111:
	.string	"instance_size"
.LASF175:
	.string	"cow_is_allocated"
.LASF145:
	.string	"vm_state_offset"
.LASF44:
	.string	"_old_offset"
.LASF20:
	.string	"__blkcnt_t"
.LASF168:
	.string	"be32_to_cpu"
.LASF13:
	.string	"__ino_t"
.LASF86:
	.string	"encrypted"
.LASF3:
	.string	"long long int"
.LASF176:
	.string	"sector_num"
.LASF34:
	.string	"_IO_write_end"
.LASF164:
	.string	"cow_bitmap_size"
.LASF83:
	.string	"read_only"
.LASF121:
	.string	"bdrv_make_empty"
.LASF184:
	.string	"bitnum"
.LASF181:
	.string	"num_same"
.LASF35:
	.string	"_IO_buf_base"
.LASF171:
	.string	"cow_open"
.LASF160:
	.string	"sectorsize"
.LASF59:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF131:
	.string	"bdrv_write_compressed"
.LASF130:
	.string	"bdrv_getlength"
.LASF204:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF114:
	.string	"bdrv_read"
.LASF88:
	.string	"change_opaque"
.LASF100:
	.string	"rd_ops"
.LASF72:
	.string	"__pad0"
.LASF50:
	.string	"__pad1"
.LASF51:
	.string	"__pad2"
.LASF52:
	.string	"__pad3"
.LASF53:
	.string	"__pad4"
.LASF54:
	.string	"__pad5"
.LASF60:
	.string	"_sbuf"
.LASF136:
	.string	"bdrv_get_info"
.LASF183:
	.string	"is_bit_set"
.LASF135:
	.string	"bdrv_snapshot_list"
.LASF28:
	.string	"_flags"
.LASF68:
	.string	"st_nlink"
.LASF106:
	.string	"type"
.LASF80:
	.string	"__unused"
.LASF108:
	.string	"next"
.LASF192:
	.string	"cow_fd"
.LASF207:
	.string	"fstat"
.LASF99:
	.string	"wr_bytes"
.LASF66:
	.string	"st_dev"
.LASF167:
	.string	"cow_probe"
.LASF170:
	.string	"cow_header"
.LASF195:
	.string	"__fd"
.LASF119:
	.string	"bdrv_is_allocated"
.LASF159:
	.string	"size"
.LASF25:
	.string	"long long unsigned int"
.LASF62:
	.string	"uint8_t"
.LASF16:
	.string	"__off_t"
.LASF202:
	.string	"bdrv_cow"
.LASF169:
	.string	"bswap32"
.LASF41:
	.string	"_chain"
.LASF113:
	.string	"bdrv_open"
.LASF87:
	.string	"change_cb"
.LASF18:
	.string	"__time_t"
.LASF137:
	.string	"bdrv_is_inserted"
.LASF157:
	.string	"version"
.LASF38:
	.string	"_IO_backup_base"
.LASF47:
	.string	"_shortbuf"
.LASF146:
	.string	"QEMUSnapshotInfo"
.LASF17:
	.string	"__off64_t"
.LASF125:
	.string	"aiocb_size"
.LASF147:
	.string	"id_str"
.LASF206:
	.string	"/home/remco/Projects/Argos/src"
.LASF156:
	.string	"magic"
.LASF139:
	.string	"bdrv_eject"
.LASF36:
	.string	"_IO_buf_end"
.LASF148:
	.string	"name"
.LASF122:
	.string	"bdrv_aio_read"
.LASF90:
	.string	"boot_sector_enabled"
.LASF8:
	.string	"short int"
.LASF97:
	.string	"sync_aiocb"
.LASF64:
	.string	"uint64_t"
.LASF24:
	.string	"tv_nsec"
.LASF194:
	.string	"mtime_fail"
.LASF165:
	.string	"cow_sectors_offset"
.LASF46:
	.string	"_vtable_offset"
.LASF141:
	.string	"bdrv_ioctl"
.LASF177:
	.string	"nb_sectors"
.LASF123:
	.string	"bdrv_aio_write"
.LASF158:
	.string	"mtime"
.LASF69:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF30:
	.string	"_IO_read_end"
.LASF109:
	.string	"BlockDriver"
.LASF162:
	.string	"cow_bitmap"
.LASF132:
	.string	"bdrv_snapshot_create"
.LASF76:
	.string	"st_blocks"
.LASF150:
	.string	"date_sec"
.LASF63:
	.string	"uint32_t"
.LASF85:
	.string	"locked"
.LASF42:
	.string	"_fileno"
.LASF94:
	.string	"is_temporary"
.LASF110:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF144:
	.string	"cluster_size"
.LASF193:
	.string	"fail"
.LASF153:
	.string	"BlockDriverAIOCB"
.LASF33:
	.string	"_IO_write_ptr"
.LASF199:
	.string	"cow_flush"
.LASF22:
	.string	"int64_t"
.LASF186:
	.string	"cow_write"
.LASF196:
	.string	"__statbuf"
.LASF15:
	.string	"__nlink_t"
.LASF179:
	.string	"is_changed"
.LASF174:
	.string	"bswap64"
.LASF23:
	.string	"tv_sec"
.LASF77:
	.string	"st_atim"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
