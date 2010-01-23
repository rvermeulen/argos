	.file	"loader.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
.globl get_image_size
	.type	get_image_size, @function
get_image_size:
.LFB183:
	.file 1 "/home/remco/Projects/Argos/src/loader.c"
	.loc 1 31 0
	movq	%rbp, -8(%rsp)
.LCFI0:
	movq	%rbx, -16(%rsp)
.LCFI1:
	.loc 1 33 0
	xorl	%esi, %esi
	.loc 1 31 0
	subq	$24, %rsp
.LCFI2:
	.loc 1 33 0
	xorl	%eax, %eax
	call	open64
	movl	%eax, %ebp
	.loc 1 35 0
	movl	$-1, %eax
	.loc 1 34 0
	testl	%ebp, %ebp
	js	.L1
	.loc 1 36 0
	movl	$2, %edx
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	lseek64
	.loc 1 37 0
	movl	%ebp, %edi
	.loc 1 36 0
	movq	%rax, %rbx
	.loc 1 37 0
	call	close
	.loc 1 38 0
	movl	%ebx, %eax
.L1:
	.loc 1 39 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE183:
	.size	get_image_size, .-get_image_size
	.p2align 4,,15
.globl load_image
	.type	load_image, @function
load_image:
.LFB184:
	.loc 1 43 0
	movq	%rbp, -24(%rsp)
.LCFI3:
	movq	%r13, -8(%rsp)
.LCFI4:
	.loc 1 45 0
	xorl	%eax, %eax
	.loc 1 43 0
	movq	%rbx, -32(%rsp)
.LCFI5:
	movq	%r12, -16(%rsp)
.LCFI6:
	movq	%rsi, %r13
	subq	$40, %rsp
.LCFI7:
	.loc 1 45 0
	xorl	%esi, %esi
	call	open64
	movl	%eax, %ebp
	.loc 1 47 0
	movl	$-1, %eax
	.loc 1 46 0
	testl	%ebp, %ebp
	js	.L4
	.loc 1 48 0
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%ebp, %edi
	call	lseek64
	movq	%rax, %r12
	.loc 1 49 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%ebp, %edi
	.loc 1 50 0
	movslq	%r12d,%rbx
	.loc 1 49 0
	call	lseek64
	.loc 1 50 0
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movl	%ebp, %edi
	call	read
	cmpq	%rbx, %rax
	jne	.L7
	.loc 1 54 0
	movl	%ebp, %edi
	call	close
	.loc 1 55 0
	movl	%r12d, %eax
.L4:
	.loc 1 56 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.L7:
	.loc 1 51 0
	movl	%ebp, %edi
	call	close
	.loc 1 52 0
	movl	$-1, %eax
	jmp	.L4
.LFE184:
	.size	load_image, .-load_image
	.p2align 4,,15
.globl load_aout
	.type	load_aout, @function
load_aout:
.LFB185:
	.loc 1 109 0
	pushq	%r12
.LCFI8:
	.loc 1 114 0
	xorl	%eax, %eax
	.loc 1 109 0
	movq	%rsi, %r12
	.loc 1 114 0
	xorl	%esi, %esi
	.loc 1 109 0
	pushq	%rbp
.LCFI9:
	pushq	%rbx
.LCFI10:
	subq	$32, %rsp
.LCFI11:
	.loc 1 114 0
	call	open64
	movl	%eax, %ebx
	.loc 1 116 0
	movl	$-1, %eax
	.loc 1 115 0
	testl	%ebx, %ebx
	js	.L8
	.loc 1 118 0
	movq	%rsp, %rsi
	movl	$32, %edx
	movl	%ebx, %edi
	call	read
	.loc 1 119 0
	testl	%eax, %eax
	js	.L11
	.loc 1 124 0
	movl	(%rsp), %edx
	movzwl	%dx,%eax
	.loc 1 125 0
	cmpl	$263, %eax
	je	.L16
	.p2align 4,,3
	jbe	.L48
	cmpl	$264, %eax
	.p2align 4,,3
	je	.L26
	cmpl	$267, %eax
	.p2align 4,,7
	je	.L16
.L11:
	.loc 1 150 0
	movl	%ebx, %edi
	.p2align 4,,5
	call	close
	.loc 1 151 0
	movl	$-1, %eax
.L8:
	.loc 1 152 0
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L48:
	.loc 1 125 0
	cmpl	$204, %eax
	jne	.L11
	.p2align 4,,7
.L16:
	.loc 1 129 0
	movzwl	%dx,%eax
	movl	$1024, %esi
	cmpl	$267, %eax
	je	.L22
	xorw	%si, %si
	cmpl	$204, %eax
	movl	$32, %eax
	cmovne	%rax, %rsi
.L22:
	xorl	%edx, %edx
	movl	%ebx, %edi
	call	lseek64
	.loc 1 130 0
	movl	8(%rsp), %edx
	addl	4(%rsp), %edx
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	read
	.loc 1 131 0
	testl	%eax, %eax
	.loc 1 130 0
	movl	%eax, %ebp
	.loc 1 131 0
	js	.L11
.L13:
	.loc 1 147 0
	movl	%ebx, %edi
	call	close
	.loc 1 152 0
	addq	$32, %rsp
	.loc 1 148 0
	movl	%ebp, %eax
	.loc 1 152 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.L26:
	.loc 1 135 0
	xorl	%edx, %edx
	movl	$32, %esi
	movl	%ebx, %edi
	call	lseek64
	.loc 1 136 0
	mov	4(%rsp), %edx
	movq	%r12, %rsi
	movl	%ebx, %edi
	call	read
	.loc 1 137 0
	testl	%eax, %eax
	.loc 1 136 0
	movl	%eax, %ebp
	.loc 1 137 0
	js	.L11
	.loc 1 139 0
	movzwl	(%rsp), %eax
	cmpl	$263, %eax
	je	.L49
	cmpl	$204, %eax
	movl	4(%rsp), %edx
	je	.L50
	leal	4095(%rdx), %eax
.L46:
	andl	$4294963200, %eax
.L47:
	mov	8(%rsp), %edx
	leaq	(%rax,%r12), %rsi
	movl	%ebx, %edi
	call	read
	.loc 1 140 0
	testl	%eax, %eax
	js	.L11
	.loc 1 142 0
	addl	%eax, %ebp
	jmp	.L13
.L49:
	.loc 1 139 0
	mov	4(%rsp), %eax
	.p2align 4,,4
	jmp	.L47
.L50:
	leal	8191(%rdx), %eax
	jmp	.L46
.LFE185:
	.size	load_aout, .-load_aout
	.p2align 4,,15
	.type	load_at, @function
load_at:
.LFB186:
	.loc 1 157 0
	movq	%rbx, -24(%rsp)
.LCFI12:
	movq	%r12, -8(%rsp)
.LCFI13:
	movl	%edx, %ebx
	movq	%rbp, -16(%rsp)
.LCFI14:
	.loc 1 159 0
	xorl	%edx, %edx
	.loc 1 157 0
	subq	$24, %rsp
.LCFI15:
	.loc 1 159 0
	movslq	%esi,%rsi
	.loc 1 157 0
	movl	%edi, %r12d
	.loc 1 159 0
	call	lseek64
	.loc 1 160 0
	xorl	%edx, %edx
	.loc 1 159 0
	testq	%rax, %rax
	js	.L51
	.loc 1 161 0
	movslq	%ebx,%rbp
	movq	%rbp, %rdi
	call	qemu_malloc
	.loc 1 163 0
	xorl	%edx, %edx
	.loc 1 162 0
	testq	%rax, %rax
	.loc 1 161 0
	movq	%rax, %rbx
	.loc 1 162 0
	je	.L51
	.loc 1 164 0
	movq	%rbp, %rdx
	movq	%rax, %rsi
	movl	%r12d, %edi
	call	read
	cmpq	%rbp, %rax
	.loc 1 168 0
	movq	%rbx, %rdx
	.loc 1 164 0
	jne	.L55
.L51:
	.loc 1 169 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	%rdx, %rax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L55:
	.loc 1 165 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 1 166 0
	xorl	%edx, %edx
	jmp	.L51
.LFE186:
	.size	load_at, .-load_at
	.p2align 4,,15
.globl load_elf
	.type	load_elf, @function
load_elf:
.LFB201:
	.loc 1 204 0
	movq	%rbx, -48(%rsp)
.LCFI16:
	movq	%rbp, -40(%rsp)
.LCFI17:
	.loc 1 208 0
	xorl	%eax, %eax
	.loc 1 204 0
	movq	%r12, -32(%rsp)
.LCFI18:
	movq	%r13, -24(%rsp)
.LCFI19:
	movq	%rdi, %rbx
	movq	%r14, -16(%rsp)
.LCFI20:
	movq	%r15, -8(%rsp)
.LCFI21:
	subq	$376, %rsp
.LCFI22:
	.loc 1 204 0
	movq	%rsi, %r15
	.loc 1 208 0
	xorl	%esi, %esi
	.loc 1 204 0
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%r8, %r14
	.loc 1 208 0
	call	open64
	.loc 1 209 0
	testl	%eax, %eax
	.loc 1 208 0
	movl	%eax, %ebp
	.loc 1 209 0
	js	.L483
	.loc 1 213 0
	leaq	304(%rsp), %rsi
	movl	$16, %edx
	movl	%eax, %edi
	call	read
	cmpq	$16, %rax
	jne	.L59
	.loc 1 215 0
	cmpb	$127, 304(%rsp)
	je	.L484
.L59:
	.loc 1 248 0
	movl	%ebp, %edi
	call	close
.L481:
	.loc 1 249 0
	movl	$-1, %eax
.L56:
	.loc 1 250 0
	movq	328(%rsp), %rbx
	movq	336(%rsp), %rbp
	movq	344(%rsp), %r12
	movq	352(%rsp), %r13
	movq	360(%rsp), %r14
	movq	368(%rsp), %r15
	addq	$376, %rsp
	ret
	.p2align 4,,7
.L484:
	.loc 1 215 0
	cmpb	$69, 305(%rsp)
	jne	.L59
	cmpb	$76, 306(%rsp)
	jne	.L59
	cmpb	$70, 307(%rsp)
	jne	.L59
	.loc 1 225 0
	movzbl	309(%rsp), %edx
	xorl	%eax, %eax
	cmpl	$1, %edx
	setne	%al
	.loc 1 232 0
	cmpl	$1, %edx
	.loc 1 225 0
	movl	%eax, 172(%rsp)
	.loc 1 233 0
	movl	$-1, %eax
	.loc 1 232 0
	jne	.L56
	.loc 1 235 0
	xorb	%dl, %dl
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	lseek64
	.loc 1 236 0
	cmpb	$2, 308(%rsp)
	je	.L485
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/elf_ops.h"
	.loc 2 152 0
	leaq	176(%rsp), %rsi
	movl	$52, %edx
	movl	%ebp, %edi
	.loc 2 146 0
	movq	$0, 80(%rsp)
	.loc 2 149 0
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	.loc 2 150 0
	movq	$0, 48(%rsp)
	.loc 2 152 0
	call	read
	cmpq	$52, %rax
	jne	.L259
	.loc 2 154 0
	movl	172(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L260
.LBB4:
.LBB5:
.LBB6:
.LBB7:
.LBB8:
	.file 3 "../bswap.h"
	.loc 3 47 0
	movl	192(%rsp), %eax
.LBB9:
.LBB10:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE10:
.LBE9:
.LBE8:
	.loc 3 47 0
	movw	%ax, 192(%rsp)
.LBE7:
.LBE6:
.LBB11:
.LBB12:
.LBB13:
	movzwl	194(%rsp), %eax
.LBB14:
.LBB15:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE15:
.LBE14:
.LBE13:
	.loc 3 47 0
	movw	%ax, 194(%rsp)
.LBE12:
.LBE11:
.LBB16:
.LBB17:
.LBB18:
	.loc 3 52 0
	movl	196(%rsp), %eax
.LBB19:
.LBB20:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE20:
.LBE19:
.LBE18:
	.loc 3 52 0
	movl	%eax, 196(%rsp)
.LBE17:
.LBE16:
.LBB21:
.LBB22:
.LBB23:
	movl	200(%rsp), %eax
.LBB24:
.LBB25:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE25:
.LBE24:
.LBE23:
	.loc 3 52 0
	movl	%eax, 200(%rsp)
.LBE22:
.LBE21:
.LBB26:
.LBB27:
.LBB28:
	movl	204(%rsp), %eax
.LBB29:
.LBB30:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE30:
.LBE29:
.LBE28:
	.loc 3 52 0
	movl	%eax, 204(%rsp)
.LBE27:
.LBE26:
.LBB31:
.LBB32:
.LBB33:
	movl	208(%rsp), %eax
.LBB34:
.LBB35:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE35:
.LBE34:
.LBE33:
	.loc 3 52 0
	movl	%eax, 208(%rsp)
.LBE32:
.LBE31:
.LBB36:
.LBB37:
.LBB38:
	movl	212(%rsp), %eax
.LBB39:
.LBB40:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE40:
.LBE39:
.LBE38:
	.loc 3 52 0
	movl	%eax, 212(%rsp)
.LBE37:
.LBE36:
.LBB41:
.LBB42:
.LBB43:
	.loc 3 47 0
	movl	216(%rsp), %eax
.LBB44:
.LBB45:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE45:
.LBE44:
.LBE43:
	.loc 3 47 0
	movw	%ax, 216(%rsp)
.LBE42:
.LBE41:
.LBB46:
.LBB47:
.LBB48:
	movzwl	218(%rsp), %eax
.LBB49:
.LBB50:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE50:
.LBE49:
.LBE48:
	.loc 3 47 0
	movw	%ax, 218(%rsp)
.LBE47:
.LBE46:
.LBB51:
.LBB52:
.LBB53:
	movl	220(%rsp), %eax
.LBB54:
.LBB55:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE55:
.LBE54:
.LBE53:
	.loc 3 47 0
	movw	%ax, 220(%rsp)
.LBE52:
.LBE51:
.LBB56:
.LBB57:
.LBB58:
	movzwl	222(%rsp), %eax
.LBB59:
.LBB60:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE60:
.LBE59:
.LBE58:
	.loc 3 47 0
	movw	%ax, 222(%rsp)
.LBE57:
.LBE56:
.LBB61:
.LBB62:
.LBB63:
	movl	224(%rsp), %eax
.LBB64:
.LBB65:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE65:
.LBE64:
.LBE63:
	.loc 3 47 0
	movw	%ax, 224(%rsp)
.LBE62:
.LBE61:
.LBB66:
.LBB67:
.LBB68:
	movzwl	226(%rsp), %eax
.LBB69:
.LBB70:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE70:
.LBE69:
.LBE68:
	.loc 3 47 0
	movw	%ax, 226(%rsp)
.L260:
.LBE67:
.LBE66:
.LBE5:
.LBE4:
	.loc 2 158 0
	cmpw	$3, 194(%rsp)
	jne	.L259
	.loc 2 161 0
	testq	%r12, %r12
	je	.L315
	.loc 2 162 0
	movslq	200(%rsp),%rax
	movq	%rax, (%r12)
.L315:
.LBB71:
.LBB72:
	.loc 2 74 0
	movzwq	224(%rsp), %rdx
	movl	208(%rsp), %esi
	movl	%ebp, %edi
	.loc 2 66 0
	movq	$0, 40(%rsp)
	.loc 2 72 0
	movq	$0, 32(%rsp)
	.loc 2 74 0
	leaq	(%rdx,%rdx,4), %rdx
	salq	$3, %rdx
	call	load_at
	.loc 2 76 0
	testq	%rax, %rax
	.loc 2 74 0
	movq	%rax, %rbx
	.loc 2 76 0
	je	.L317
	.loc 2 79 0
	movl	172(%rsp), %edi
	testl	%edi, %edi
	je	.L472
	movl	224(%rsp), %edx
	.loc 2 80 0
	xorl	%ecx, %ecx
	testw	%dx, %dx
	je	.L318
.L363:
.LBB73:
	.loc 2 31 0
	movslq	%ecx,%rdx
.LBE73:
	.loc 2 80 0
	incl	%ecx
.LBB74:
	.loc 2 31 0
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rbx,%rdx,8), %rdx
.LBB75:
.LBB76:
.LBB77:
.LBB78:
	.loc 3 52 0
	movl	(%rdx), %eax
.LBB79:
.LBB80:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE80:
.LBE79:
.LBE78:
	.loc 3 52 0
	movl	%eax, (%rdx)
.LBE77:
.LBE76:
.LBB81:
.LBB82:
.LBB83:
	movl	4(%rdx), %eax
.LBB84:
.LBB85:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE85:
.LBE84:
.LBE83:
	.loc 3 52 0
	movl	%eax, 4(%rdx)
.LBE82:
.LBE81:
.LBB86:
.LBB87:
.LBB88:
	movl	8(%rdx), %eax
.LBB89:
.LBB90:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE90:
.LBE89:
.LBE88:
	.loc 3 52 0
	movl	%eax, 8(%rdx)
.LBE87:
.LBE86:
.LBB91:
.LBB92:
.LBB93:
	movl	12(%rdx), %eax
.LBB94:
.LBB95:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE95:
.LBE94:
.LBE93:
	.loc 3 52 0
	movl	%eax, 12(%rdx)
.LBE92:
.LBE91:
.LBB96:
.LBB97:
.LBB98:
	movl	16(%rdx), %eax
.LBB99:
.LBB100:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE100:
.LBE99:
.LBE98:
	.loc 3 52 0
	movl	%eax, 16(%rdx)
.LBE97:
.LBE96:
.LBB101:
.LBB102:
.LBB103:
	movl	20(%rdx), %eax
.LBB104:
.LBB105:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE105:
.LBE104:
.LBE103:
	.loc 3 52 0
	movl	%eax, 20(%rdx)
.LBE102:
.LBE101:
.LBB106:
.LBB107:
.LBB108:
	movl	24(%rdx), %eax
.LBB109:
.LBB110:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE110:
.LBE109:
.LBE108:
	.loc 3 52 0
	movl	%eax, 24(%rdx)
.LBE107:
.LBE106:
.LBB111:
.LBB112:
.LBB113:
	movl	28(%rdx), %eax
.LBB114:
.LBB115:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE115:
.LBE114:
.LBE113:
	.loc 3 52 0
	movl	%eax, 28(%rdx)
.LBE112:
.LBE111:
.LBB116:
.LBB117:
.LBB118:
	movl	32(%rdx), %eax
.LBB119:
.LBB120:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE120:
.LBE119:
.LBE118:
	.loc 3 52 0
	movl	%eax, 32(%rdx)
.LBE117:
.LBE116:
.LBB121:
.LBB122:
.LBB123:
	movl	36(%rdx), %eax
.LBB124:
.LBB125:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE125:
.LBE124:
.LBE123:
	.loc 3 52 0
	movl	%eax, 36(%rdx)
.LBE122:
.LBE121:
.LBE75:
.LBE74:
	.loc 2 80 0
	movl	224(%rsp), %edx
	movzwl	%dx, %eax
	cmpl	%ecx, %eax
	jg	.L363
.L318:
.LBB126:
	.loc 2 54 0
	movzwl	%dx, %eax
.LBB127:
	.loc 2 56 0
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jge	.L371
	leaq	4(%rbx), %rdx
	xorl	%esi, %esi
.L369:
	.loc 2 57 0
	cmpl	$2, (%rdx)
	je	.L477
	.loc 2 56 0
	incl	%ecx
	addq	$40, %rsi
	addq	$40, %rdx
	cmpl	%eax, %ecx
	jl	.L369
.L371:
.LBE127:
.LBE126:
	.loc 2 135 0
	movq	40(%rsp), %rdi
	call	qemu_free
	.loc 2 136 0
	movq	32(%rsp), %rdi
	call	qemu_free
.L480:
	.loc 2 137 0
	movq	%rbx, %rdi
	call	qemu_free
.L317:
.LBE72:
.LBE71:
	.loc 2 166 0
	movzwq	220(%rsp), %rbx
	.loc 2 167 0
	mov	204(%rsp), %esi
	xorl	%edx, %edx
	movl	%ebp, %edi
	.loc 2 166 0
	sall	$5, %ebx
	.loc 2 168 0
	movslq	%ebx,%rbx
	.loc 2 167 0
	call	lseek64
	.loc 2 168 0
	movq	%rbx, %rdi
	call	qemu_mallocz
	.loc 2 169 0
	testq	%rax, %rax
	.loc 2 168 0
	movq	%rax, 80(%rsp)
	.loc 2 169 0
	je	.L259
	.loc 2 171 0
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	%ebp, %edi
	call	read
	cmpq	%rbx, %rax
	jne	.L259
	.loc 2 173 0
	movl	172(%rsp), %edx
	testl	%edx, %edx
	je	.L474
	.loc 2 174 0
	movl	220(%rsp), %edx
	xorl	%r12d, %r12d
	testw	%dx, %dx
	je	.L399
.L436:
	.loc 2 175 0
	movq	80(%rsp), %rcx
	movslq	%r12d,%rax
	.loc 2 174 0
	incl	%r12d
	.loc 2 175 0
	salq	$5, %rax
	leaq	(%rax,%rcx), %rbx
.LBB128:
.LBB129:
.LBB130:
.LBB131:
.LBB132:
	.loc 3 52 0
	movl	(%rbx), %eax
.LBB133:
.LBB134:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE134:
.LBE133:
.LBE132:
	.loc 3 52 0
	movl	%eax, (%rbx)
.LBE131:
.LBE130:
.LBB135:
.LBB136:
.LBB137:
	movl	4(%rbx), %eax
.LBB138:
.LBB139:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE139:
.LBE138:
.LBE137:
	.loc 3 52 0
	movl	%eax, 4(%rbx)
.LBE136:
.LBE135:
.LBB140:
.LBB141:
.LBB142:
	movl	8(%rbx), %eax
.LBB143:
.LBB144:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE144:
.LBE143:
.LBE142:
	.loc 3 52 0
	movl	%eax, 8(%rbx)
.LBE141:
.LBE140:
.LBB145:
.LBB146:
.LBB147:
	movl	12(%rbx), %eax
.LBB148:
.LBB149:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE149:
.LBE148:
.LBE147:
	.loc 3 52 0
	movl	%eax, 12(%rbx)
.LBE146:
.LBE145:
.LBB150:
.LBB151:
.LBB152:
	movl	16(%rbx), %eax
.LBB153:
.LBB154:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE154:
.LBE153:
.LBE152:
	.loc 3 52 0
	movl	%eax, 16(%rbx)
.LBE151:
.LBE150:
.LBB155:
.LBB156:
.LBB157:
	movl	20(%rbx), %eax
.LBB158:
.LBB159:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE159:
.LBE158:
.LBE157:
	.loc 3 52 0
	movl	%eax, 20(%rbx)
.LBE156:
.LBE155:
.LBB160:
.LBB161:
.LBB162:
	movl	24(%rbx), %eax
.LBB163:
.LBB164:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE164:
.LBE163:
.LBE162:
	.loc 3 52 0
	movl	%eax, 24(%rbx)
.LBE161:
.LBE160:
.LBB165:
.LBB166:
.LBB167:
	movl	28(%rbx), %eax
.LBB168:
.LBB169:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE169:
.LBE168:
.LBE167:
	.loc 3 52 0
	movl	%eax, 28(%rbx)
.LBE166:
.LBE165:
.LBE129:
.LBE128:
	.loc 2 174 0
	movl	220(%rsp), %edx
	movzwl	%dx, %eax
	cmpl	%r12d, %eax
	jg	.L436
.L399:
	.loc 2 181 0
	xorl	%r12d, %r12d
	testw	%dx, %dx
	.loc 2 180 0
	movl	$0, 76(%rsp)
	.loc 2 181 0
	jne	.L447
	jmp	.L466
	.p2align 4,,7
.L439:
	incl	%r12d
	movzwl	%dx, %eax
	cmpl	%r12d, %eax
	jle	.L466
.L447:
	.loc 2 182 0
	movq	80(%rsp), %rsi
	movslq	%r12d,%rax
	salq	$5, %rax
	leaq	(%rax,%rsi), %rbx
	.loc 2 183 0
	cmpl	$1, (%rbx)
	jne	.L439
	.loc 2 184 0
	movl	20(%rbx), %eax
	.loc 2 186 0
	mov	%eax, %edx
	.loc 2 184 0
	movl	%eax, 72(%rsp)
	.loc 2 186 0
	movq	%rdx, %rdi
	movq	%rdx, 24(%rsp)
	call	qemu_mallocz
	movq	%rax, 48(%rsp)
	.loc 2 187 0
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.L441
	.loc 2 188 0
	mov	4(%rbx), %esi
	xorl	%edx, %edx
	movl	%ebp, %edi
	call	lseek64
	testq	%rax, %rax
	js	.L259
	.loc 2 190 0
	mov	16(%rbx), %edx
	movq	48(%rsp), %rsi
	movl	%ebp, %edi
	call	read
	mov	16(%rbx), %edx
	cmpq	%rdx, %rax
	jne	.L259
.L441:
	.loc 2 193 0
	mov	8(%rbx), %eax
	.loc 2 195 0
	movl	72(%rsp), %edx
	movq	48(%rsp), %rsi
	.loc 2 193 0
	leaq	(%rax,%r15), %rbx
	.loc 2 195 0
	movq	%rbx, %rdi
	call	cpu_physical_memory_write_rom
	.loc 2 197 0
	movl	72(%rsp), %ecx
	addl	%ecx, 76(%rsp)
	.loc 2 198 0
	cmpq	$0, 64(%rsp)
	.loc 2 199 0
	movq	64(%rsp), %rsi
	.loc 2 198 0
	sete	%dl
	cmpq	64(%rsp), %rbx
	setb	%al
	orl	%edx, %eax
	movq	24(%rsp), %rdx
	.loc 2 199 0
	testb	$1, %al
	cmovne	%rbx, %rsi
	.loc 2 200 0
	cmpq	$0, 56(%rsp)
	.loc 2 199 0
	movq	%rsi, 64(%rsp)
	leaq	(%rdx,%rbx), %rax
	.loc 2 200 0
	je	.L446
	movq	%rdx, %rax
	addq	%rbx, %rax
	cmpq	56(%rsp), %rax
	jbe	.L445
.L446:
	.loc 2 201 0
	movq	%rax, 56(%rsp)
.L445:
	.loc 2 203 0
	movq	48(%rsp), %rdi
	call	qemu_free
	movl	220(%rsp), %edx
	jmp	.L439
	.p2align 4,,7
.L483:
.LBE3:
.LBE2:
	.loc 1 210 0
	movq	%rbx, %rdi
	call	perror
	jmp	.L481
.L259:
.LBB170:
.LBB171:
	.loc 2 214 0
	movq	48(%rsp), %rdi
	call	qemu_free
	.loc 2 215 0
	movq	80(%rsp), %rdi
.L482:
	call	qemu_free
	movl	$-1, %eax
.L450:
.LBE171:
.LBE170:
	.loc 2 144 0
	movl	%eax, %ebx
	.loc 1 244 0
	movl	%ebp, %edi
	call	close
	.loc 1 245 0
	movl	%ebx, %eax
	jmp	.L56
.L485:
.LBB172:
.LBB173:
	.loc 2 152 0
	leaq	240(%rsp), %rsi
	movl	$64, %edx
	movl	%ebp, %edi
	.loc 2 146 0
	movq	$0, 160(%rsp)
	.loc 2 149 0
	movq	$0, 144(%rsp)
	movq	$0, 136(%rsp)
	.loc 2 150 0
	movq	$0, 128(%rsp)
	.loc 2 152 0
	call	read
	cmpq	$64, %rax
	jne	.L65
	.loc 2 154 0
	movl	172(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L66
.LBB174:
.LBB175:
.LBB176:
.LBB177:
.LBB178:
	.loc 3 47 0
	movl	256(%rsp), %eax
.LBB179:
.LBB180:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE180:
.LBE179:
.LBE178:
	.loc 3 47 0
	movw	%ax, 256(%rsp)
.LBE177:
.LBE176:
.LBB181:
.LBB182:
.LBB183:
	movzwl	258(%rsp), %eax
.LBB184:
.LBB185:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE185:
.LBE184:
.LBE183:
	.loc 3 47 0
	movw	%ax, 258(%rsp)
.LBE182:
.LBE181:
.LBB186:
.LBB187:
.LBB188:
	.loc 3 52 0
	movl	260(%rsp), %eax
.LBB189:
.LBB190:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE190:
.LBE189:
.LBE188:
	.loc 3 52 0
	movl	%eax, 260(%rsp)
.LBE187:
.LBE186:
.LBB191:
.LBB192:
.LBB193:
	.loc 3 57 0
	movq	264(%rsp), %rax
.LBB194:
.LBB195:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE195:
.LBE194:
.LBE193:
	.loc 3 57 0
	movq	%rax, 264(%rsp)
.LBE192:
.LBE191:
.LBB196:
.LBB197:
.LBB198:
	movq	272(%rsp), %rax
.LBB199:
.LBB200:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE200:
.LBE199:
.LBE198:
	.loc 3 57 0
	movq	%rax, 272(%rsp)
.LBE197:
.LBE196:
.LBB201:
.LBB202:
.LBB203:
	movq	280(%rsp), %rax
.LBB204:
.LBB205:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE205:
.LBE204:
.LBE203:
	.loc 3 57 0
	movq	%rax, 280(%rsp)
.LBE202:
.LBE201:
.LBB206:
.LBB207:
.LBB208:
	.loc 3 52 0
	movl	288(%rsp), %eax
.LBB209:
.LBB210:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE210:
.LBE209:
.LBE208:
	.loc 3 52 0
	movl	%eax, 288(%rsp)
.LBE207:
.LBE206:
.LBB211:
.LBB212:
.LBB213:
	.loc 3 47 0
	movl	292(%rsp), %eax
.LBB214:
.LBB215:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE215:
.LBE214:
.LBE213:
	.loc 3 47 0
	movw	%ax, 292(%rsp)
.LBE212:
.LBE211:
.LBB216:
.LBB217:
.LBB218:
	movzwl	294(%rsp), %eax
.LBB219:
.LBB220:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE220:
.LBE219:
.LBE218:
	.loc 3 47 0
	movw	%ax, 294(%rsp)
.LBE217:
.LBE216:
.LBB221:
.LBB222:
.LBB223:
	movl	296(%rsp), %eax
.LBB224:
.LBB225:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE225:
.LBE224:
.LBE223:
	.loc 3 47 0
	movw	%ax, 296(%rsp)
.LBE222:
.LBE221:
.LBB226:
.LBB227:
.LBB228:
	movzwl	298(%rsp), %eax
.LBB229:
.LBB230:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE230:
.LBE229:
.LBE228:
	.loc 3 47 0
	movw	%ax, 298(%rsp)
.LBE227:
.LBE226:
.LBB231:
.LBB232:
.LBB233:
	movl	300(%rsp), %eax
.LBB234:
.LBB235:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE235:
.LBE234:
.LBE233:
	.loc 3 47 0
	movw	%ax, 300(%rsp)
.LBE232:
.LBE231:
.LBB236:
.LBB237:
.LBB238:
	movzwl	302(%rsp), %eax
.LBB239:
.LBB240:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE240:
.LBE239:
.LBE238:
	.loc 3 47 0
	movw	%ax, 302(%rsp)
.L66:
.LBE237:
.LBE236:
.LBE175:
.LBE174:
	.loc 2 158 0
	cmpw	$3, 258(%rsp)
	jne	.L65
	.loc 2 161 0
	testq	%r12, %r12
	je	.L121
	.loc 2 162 0
	movq	264(%rsp), %rax
	movq	%rax, (%r12)
.L121:
.LBB241:
.LBB242:
	.loc 2 74 0
	movzwq	300(%rsp), %rdx
	movl	280(%rsp), %esi
	movl	%ebp, %edi
	.loc 2 66 0
	movq	$0, 120(%rsp)
	.loc 2 68 0
	movq	$0, 112(%rsp)
	.loc 2 72 0
	movq	$0, 88(%rsp)
	.loc 2 74 0
	salq	$6, %rdx
	call	load_at
	.loc 2 76 0
	testq	%rax, %rax
	.loc 2 74 0
	movq	%rax, %r12
	.loc 2 76 0
	je	.L123
	.loc 2 79 0
	movl	172(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L467
	movl	300(%rsp), %edx
	.loc 2 80 0
	xorl	%edi, %edi
	testw	%dx, %dx
	je	.L124
.L169:
.LBB243:
	.loc 2 31 0
	movslq	%edi,%rdx
.LBE243:
	.loc 2 80 0
	incl	%edi
.LBB244:
	.loc 2 31 0
	salq	$6, %rdx
	addq	%r12, %rdx
.LBB245:
.LBB246:
.LBB247:
.LBB248:
	.loc 3 52 0
	movl	(%rdx), %eax
.LBB249:
.LBB250:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE250:
.LBE249:
.LBE248:
	.loc 3 52 0
	movl	%eax, (%rdx)
.LBE247:
.LBE246:
.LBB251:
.LBB252:
.LBB253:
	movl	4(%rdx), %eax
.LBB254:
.LBB255:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE255:
.LBE254:
.LBE253:
	.loc 3 52 0
	movl	%eax, 4(%rdx)
.LBE252:
.LBE251:
.LBB256:
.LBB257:
.LBB258:
	.loc 3 57 0
	movq	8(%rdx), %rax
.LBB259:
.LBB260:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE260:
.LBE259:
.LBE258:
	.loc 3 57 0
	movq	%rax, 8(%rdx)
.LBE257:
.LBE256:
.LBB261:
.LBB262:
.LBB263:
	movq	16(%rdx), %rax
.LBB264:
.LBB265:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE265:
.LBE264:
.LBE263:
	.loc 3 57 0
	movq	%rax, 16(%rdx)
.LBE262:
.LBE261:
.LBB266:
.LBB267:
.LBB268:
	movq	24(%rdx), %rax
.LBB269:
.LBB270:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE270:
.LBE269:
.LBE268:
	.loc 3 57 0
	movq	%rax, 24(%rdx)
.LBE267:
.LBE266:
.LBB271:
.LBB272:
.LBB273:
	movq	32(%rdx), %rax
.LBB274:
.LBB275:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE275:
.LBE274:
.LBE273:
	.loc 3 57 0
	movq	%rax, 32(%rdx)
.LBE272:
.LBE271:
.LBB276:
.LBB277:
.LBB278:
	.loc 3 52 0
	movl	40(%rdx), %eax
.LBB279:
.LBB280:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE280:
.LBE279:
.LBE278:
	.loc 3 52 0
	movl	%eax, 40(%rdx)
.LBE277:
.LBE276:
.LBB281:
.LBB282:
.LBB283:
	movl	44(%rdx), %eax
.LBB284:
.LBB285:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE285:
.LBE284:
.LBE283:
	.loc 3 52 0
	movl	%eax, 44(%rdx)
.LBE282:
.LBE281:
.LBB286:
.LBB287:
.LBB288:
	.loc 3 57 0
	movq	48(%rdx), %rax
.LBB289:
.LBB290:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE290:
.LBE289:
.LBE288:
	.loc 3 57 0
	movq	%rax, 48(%rdx)
.LBE287:
.LBE286:
.LBB291:
.LBB292:
.LBB293:
	movq	56(%rdx), %rax
.LBB294:
.LBB295:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE295:
.LBE294:
.LBE293:
	.loc 3 57 0
	movq	%rax, 56(%rdx)
.LBE292:
.LBE291:
.LBE245:
.LBE244:
	.loc 2 80 0
	movl	300(%rsp), %edx
	movzwl	%dx, %eax
	cmpl	%edi, %eax
	jg	.L169
.L124:
.LBB296:
	.loc 2 54 0
	movzwl	%dx, %eax
.LBB297:
	.loc 2 56 0
	xorl	%esi, %esi
	cmpl	%eax, %esi
	jge	.L177
	leaq	4(%r12), %rdx
	xorl	%ecx, %ecx
.L175:
	.loc 2 57 0
	cmpl	$2, (%rdx)
	je	.L476
	.loc 2 56 0
	incl	%esi
	addq	$64, %rcx
	addq	$64, %rdx
	cmpl	%eax, %esi
	jl	.L175
.L177:
.LBE297:
.LBE296:
	.loc 2 133 0
	movq	112(%rsp), %rdi
	call	qemu_free
	.loc 2 135 0
	movq	120(%rsp), %rdi
	call	qemu_free
	.loc 2 136 0
	movq	88(%rsp), %rdi
	call	qemu_free
.L479:
	.loc 2 137 0
	movq	%r12, %rdi
	call	qemu_free
.L123:
.LBE242:
.LBE241:
	.loc 2 166 0
	movzwq	296(%rsp), %rax
	.loc 2 167 0
	movq	272(%rsp), %rsi
	xorl	%edx, %edx
	movl	%ebp, %edi
	.loc 2 166 0
	leaq	0(,%rax,8), %rbx
	subq	%rax, %rbx
	sall	$3, %ebx
	.loc 2 168 0
	movslq	%ebx,%rbx
	.loc 2 167 0
	call	lseek64
	.loc 2 168 0
	movq	%rbx, %rdi
	call	qemu_mallocz
	.loc 2 169 0
	testq	%rax, %rax
	.loc 2 168 0
	movq	%rax, 160(%rsp)
	.loc 2 169 0
	je	.L65
	.loc 2 171 0
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	%ebp, %edi
	call	read
	cmpq	%rbx, %rax
	jne	.L65
	.loc 2 173 0
	movl	172(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L470
	.loc 2 174 0
	movl	296(%rsp), %ecx
	movl	$0, 156(%rsp)
	testw	%cx, %cx
	je	.L205
.L242:
	.loc 2 175 0
	movslq	156(%rsp),%rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	160(%rsp), %rdx
	leaq	(%rdx,%rax,8), %rbx
.LBB298:
.LBB299:
.LBB300:
.LBB301:
.LBB302:
	.loc 3 52 0
	movl	(%rbx), %eax
.LBB303:
.LBB304:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE304:
.LBE303:
.LBE302:
	.loc 3 52 0
	movl	%eax, (%rbx)
.LBE301:
.LBE300:
.LBB305:
.LBB306:
.LBB307:
	.loc 3 57 0
	movq	8(%rbx), %rax
.LBB308:
.LBB309:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE309:
.LBE308:
.LBE307:
	.loc 3 57 0
	movq	%rax, 8(%rbx)
.LBE306:
.LBE305:
.LBB310:
.LBB311:
.LBB312:
	movq	16(%rbx), %rax
.LBB313:
.LBB314:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE314:
.LBE313:
.LBE312:
	.loc 3 57 0
	movq	%rax, 16(%rbx)
.LBE311:
.LBE310:
.LBB315:
.LBB316:
.LBB317:
	movq	24(%rbx), %rax
.LBB318:
.LBB319:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE319:
.LBE318:
.LBE317:
	.loc 3 57 0
	movq	%rax, 24(%rbx)
.LBE316:
.LBE315:
.LBB320:
.LBB321:
.LBB322:
	movq	32(%rbx), %rax
.LBB323:
.LBB324:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE324:
.LBE323:
.LBE322:
	.loc 3 57 0
	movq	%rax, 32(%rbx)
.LBE321:
.LBE320:
.LBB325:
.LBB326:
.LBB327:
	movq	40(%rbx), %rax
.LBB328:
.LBB329:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE329:
.LBE328:
.LBE327:
	.loc 3 57 0
	movq	%rax, 40(%rbx)
.LBE326:
.LBE325:
.LBB330:
.LBB331:
.LBB332:
	.loc 3 52 0
	movl	4(%rbx), %eax
.LBB333:
.LBB334:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE334:
.LBE333:
.LBE332:
	.loc 3 52 0
	movl	%eax, 4(%rbx)
.LBE331:
.LBE330:
.LBB335:
.LBB336:
.LBB337:
	.loc 3 57 0
	movq	48(%rbx), %rax
.LBB338:
.LBB339:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE339:
.LBE338:
.LBE337:
	.loc 3 57 0
	movq	%rax, 48(%rbx)
.LBE336:
.LBE335:
.LBE299:
.LBE298:
	.loc 2 174 0
	movl	296(%rsp), %ecx
	incl	156(%rsp)
	movzwl	%cx, %eax
	cmpl	156(%rsp), %eax
	jg	.L242
.L205:
	.loc 2 181 0
	testw	%cx, %cx
	.loc 2 180 0
	movl	$0, 152(%rsp)
	.loc 2 181 0
	movl	$0, 156(%rsp)
	jne	.L253
	jmp	.L458
	.p2align 4,,7
.L245:
	incl	156(%rsp)
	movzwl	%cx, %eax
	cmpl	156(%rsp), %eax
	jle	.L458
.L253:
	.loc 2 182 0
	movslq	156(%rsp),%rdx
	movq	160(%rsp), %rsi
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	leaq	(%rsi,%rax,8), %rbx
	.loc 2 183 0
	cmpl	$1, (%rbx)
	jne	.L245
	.loc 2 184 0
	movq	40(%rbx), %r12
	.loc 2 186 0
	movq	%r12, %rdi
	call	qemu_mallocz
	movq	%rax, 128(%rsp)
	.loc 2 187 0
	cmpq	$0, 32(%rbx)
	je	.L247
	.loc 2 188 0
	movq	8(%rbx), %rsi
	xorl	%edx, %edx
	movl	%ebp, %edi
	call	lseek64
	testq	%rax, %rax
	js	.L65
	.loc 2 190 0
	movq	32(%rbx), %rdx
	movq	128(%rsp), %rsi
	movl	%ebp, %edi
	call	read
	cmpq	32(%rbx), %rax
	jne	.L65
.L247:
	.loc 2 193 0
	movq	16(%rbx), %rbx
	.loc 2 195 0
	movq	128(%rsp), %rsi
	movl	%r12d, %edx
	.loc 2 193 0
	addq	%r15, %rbx
	.loc 2 195 0
	movq	%rbx, %rdi
	call	cpu_physical_memory_write_rom
	.loc 2 197 0
	addl	%r12d, 152(%rsp)
	.loc 2 198 0
	cmpq	$0, 144(%rsp)
	sete	%dl
	cmpq	144(%rsp), %rbx
	setb	%al
	orl	%edx, %eax
	.loc 2 199 0
	testb	$1, %al
	movq	144(%rsp), %rax
	cmovne	%rbx, %rax
	.loc 2 200 0
	cmpq	$0, 136(%rsp)
	.loc 2 199 0
	movq	%rax, 144(%rsp)
	leaq	(%rbx,%r12), %rax
	.loc 2 200 0
	je	.L252
	cmpq	136(%rsp), %rax
	jbe	.L251
.L252:
	.loc 2 201 0
	movq	%rax, 136(%rsp)
.L251:
	.loc 2 203 0
	movq	128(%rsp), %rdi
	call	qemu_free
	movl	296(%rsp), %ecx
	jmp	.L245
.L65:
	.loc 2 214 0
	movq	128(%rsp), %rdi
	call	qemu_free
	.loc 2 215 0
	movq	160(%rsp), %rdi
	jmp	.L482
.L472:
	movl	224(%rsp), %edx
	jmp	.L318
.L466:
.LBE173:
.LBE172:
.LBB340:
.LBB341:
	.loc 2 207 0
	movq	80(%rsp), %rdi
	call	qemu_free
	.loc 2 208 0
	testq	%r13, %r13
	je	.L448
	.loc 2 209 0
	movslq	64(%rsp),%rax
	movq	%rax, (%r13)
.L448:
	.loc 2 210 0
	testq	%r14, %r14
	je	.L449
	.loc 2 211 0
	movslq	56(%rsp),%rax
	movq	%rax, (%r14)
.L449:
	movl	76(%rsp), %eax
	jmp	.L450
.L477:
.LBB342:
.LBB343:
	.loc 2 86 0
	movq	%rsi, %r8
	addq	%rbx, %r8
	je	.L371
	.loc 2 88 0
	movl	20(%r8), %edx
	movl	16(%r8), %esi
	movl	%ebp, %edi
	movq	%r8, 8(%rsp)
	call	load_at
	.loc 2 89 0
	testq	%rax, %rax
	.loc 2 88 0
	movq	%rax, 40(%rsp)
	.loc 2 89 0
	movq	8(%rsp), %r8
	je	.L371
	.loc 2 92 0
	movl	20(%r8), %r12d
	.loc 2 96 0
	xorl	%ecx, %ecx
	.loc 2 92 0
	shrl	$4, %r12d
	.loc 2 96 0
	cmpl	%r12d, %ecx
	jge	.L463
	movq	%rax, %rdx
.L394:
	.loc 2 97 0
	movl	172(%rsp), %esi
	testl	%esi, %esi
	je	.L375
.LBB344:
.LBB345:
.LBB346:
.LBB347:
.LBB348:
	.loc 3 52 0
	movl	(%rdx), %eax
.LBB349:
.LBB350:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE350:
.LBE349:
.LBE348:
	.loc 3 52 0
	movl	%eax, (%rdx)
.LBE347:
.LBE346:
.LBB351:
.LBB352:
.LBB353:
	movl	4(%rdx), %eax
.LBB354:
.LBB355:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE355:
.LBE354:
.LBE353:
	.loc 3 52 0
	movl	%eax, 4(%rdx)
.LBE352:
.LBE351:
.LBB356:
.LBB357:
.LBB358:
	movl	8(%rdx), %eax
.LBB359:
.LBB360:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE360:
.LBE359:
.LBE358:
	.loc 3 52 0
	movl	%eax, 8(%rdx)
.LBE357:
.LBE356:
.LBB361:
.LBB362:
.LBB363:
	.loc 3 47 0
	movzwl	14(%rdx), %eax
.LBB364:
.LBB365:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE365:
.LBE364:
.LBE363:
	.loc 3 47 0
	movw	%ax, 14(%rdx)
.L375:
.LBE362:
.LBE361:
.LBE345:
.LBE344:
	.loc 2 96 0
	incl	%ecx
	addq	$16, %rdx
	cmpl	%r12d, %ecx
	jl	.L394
.L463:
	.loc 2 109 0
	movzwl	224(%rsp), %eax
	movl	24(%r8), %edx
	cmpl	%eax, %edx
	jae	.L371
	.loc 2 111 0
	mov	%edx, %eax
	.loc 2 113 0
	movl	%ebp, %edi
	.loc 2 111 0
	leaq	(%rax,%rax,4), %rax
	leaq	(%rbx,%rax,8), %rax
	.loc 2 113 0
	movl	20(%rax), %edx
	movl	16(%rax), %esi
	call	load_at
	.loc 2 114 0
	testq	%rax, %rax
	.loc 2 113 0
	movq	%rax, 32(%rsp)
	.loc 2 114 0
	je	.L371
	.loc 2 118 0
	movl	$32, %edi
	call	qemu_mallocz
	.loc 2 123 0
	movq	40(%rsp), %rsi
	.loc 2 125 0
	movl	%r12d, (%rax)
	.loc 2 123 0
	movq	%rsi, 8(%rax)
	.loc 2 126 0
	movq	32(%rsp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 127 0
	movq	syminfos(%rip), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 128 0
	movq	%rax, syminfos(%rip)
	jmp	.L480
.L474:
	movl	220(%rsp), %edx
	jmp	.L399
.L467:
	movl	300(%rsp), %edx
	jmp	.L124
.L458:
.LBE343:
.LBE342:
.LBE341:
.LBE340:
.LBB366:
.LBB367:
	.loc 2 207 0
	movq	160(%rsp), %rdi
	call	qemu_free
	.loc 2 208 0
	testq	%r13, %r13
	je	.L254
	.loc 2 209 0
	movq	144(%rsp), %rdx
	movq	%rdx, (%r13)
.L254:
	.loc 2 210 0
	testq	%r14, %r14
	je	.L255
	.loc 2 211 0
	movq	136(%rsp), %rcx
	movq	%rcx, (%r14)
.L255:
	movl	152(%rsp), %eax
	jmp	.L450
.L476:
.LBB368:
.LBB369:
	.loc 2 86 0
	movq	%rcx, %rbx
	addq	%r12, %rbx
	je	.L177
	.loc 2 88 0
	movq	32(%rbx), %rdx
	movq	24(%rbx), %rsi
	movl	%ebp, %edi
	call	load_at
	.loc 2 89 0
	testq	%rax, %rax
	.loc 2 88 0
	movq	%rax, 120(%rsp)
	.loc 2 89 0
	je	.L177
	.loc 2 92 0
	movabsq	$-6148914691236517205, %rax
	mulq	32(%rbx)
	shrq	$4, %rdx
	.loc 2 94 0
	movslq	%edx,%rdi
	.loc 2 92 0
	movl	%edx, 96(%rsp)
	.loc 2 94 0
	salq	$4, %rdi
	call	qemu_mallocz
	.loc 2 96 0
	xorl	%edi, %edi
	.loc 2 94 0
	movq	%rax, 112(%rsp)
	jmp	.L478
.L486:
	.loc 2 97 0
	movl	172(%rsp), %r10d
	movslq	%edi,%rsi
	testl	%r10d, %r10d
	je	.L182
.LBB370:
	.loc 2 45 0
	movq	120(%rsp), %rax
	leaq	(%rsi,%rsi,2), %rdx
	leaq	(%rax,%rdx,8), %rdx
.LBB371:
.LBB372:
.LBB373:
.LBB374:
	.loc 3 52 0
	movl	(%rdx), %eax
.LBB375:
.LBB376:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE376:
.LBE375:
.LBE374:
	.loc 3 52 0
	movl	%eax, (%rdx)
.LBE373:
.LBE372:
.LBB377:
.LBB378:
.LBB379:
	.loc 3 57 0
	movq	8(%rdx), %rax
.LBB380:
.LBB381:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE381:
.LBE380:
.LBE379:
	.loc 3 57 0
	movq	%rax, 8(%rdx)
.LBE378:
.LBE377:
.LBB382:
.LBB383:
.LBB384:
	movq	16(%rdx), %rax
.LBB385:
.LBB386:
	.loc 3 58 0
#APP
	bswap %rax
#NO_APP
.LBE386:
.LBE385:
.LBE384:
	.loc 3 57 0
	movq	%rax, 16(%rdx)
.LBE383:
.LBE382:
.LBB387:
.LBB388:
.LBB389:
	.loc 3 47 0
	movzwl	6(%rdx), %eax
.LBB390:
.LBB391:
	.loc 3 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE391:
.LBE390:
.LBE389:
	.loc 3 47 0
	movw	%ax, 6(%rdx)
.L182:
.LBE388:
.LBE387:
.LBE371:
.LBE370:
	.loc 2 100 0
	movq	%rsi, %rcx
	leaq	(%rsi,%rsi,2), %rax
	movq	120(%rsp), %rsi
	salq	$4, %rcx
	.loc 2 96 0
	incl	%edi
	.loc 2 100 0
	salq	$3, %rax
	movl	(%rax,%rsi), %edx
	movq	112(%rsp), %rsi
	movl	%edx, (%rcx,%rsi)
	.loc 2 101 0
	movq	120(%rsp), %rsi
	movzbl	4(%rax,%rsi), %edx
	movq	112(%rsp), %rsi
	movb	%dl, 12(%rcx,%rsi)
	.loc 2 102 0
	movq	120(%rsp), %rsi
	movzbl	5(%rax,%rsi), %edx
	movq	112(%rsp), %rsi
	movb	%dl, 13(%rcx,%rsi)
	.loc 2 103 0
	movq	120(%rsp), %rsi
	movzwl	6(%rax,%rsi), %edx
	movq	112(%rsp), %rsi
	movw	%dx, 14(%rcx,%rsi)
	.loc 2 104 0
	movq	120(%rsp), %rsi
	movq	8(%rax,%rsi), %rdx
	movq	112(%rsp), %rsi
	movl	%edx, 4(%rcx,%rsi)
	.loc 2 105 0
	movq	120(%rsp), %rdx
	movq	16(%rax,%rdx), %rax
	movl	%eax, 8(%rcx,%rsi)
.L478:
	.loc 2 96 0
	cmpl	96(%rsp), %edi
	jl	.L486
	.loc 2 109 0
	movzwl	300(%rsp), %eax
	movl	40(%rbx), %edx
	cmpl	%eax, %edx
	jae	.L177
	.loc 2 111 0
	mov	%edx, %eax
	.loc 2 113 0
	movl	%ebp, %edi
	.loc 2 111 0
	salq	$6, %rax
	addq	%r12, %rax
	.loc 2 113 0
	movq	32(%rax), %rdx
	movq	24(%rax), %rsi
	call	load_at
	.loc 2 114 0
	testq	%rax, %rax
	.loc 2 113 0
	movq	%rax, 88(%rsp)
	.loc 2 114 0
	je	.L177
	.loc 2 118 0
	movl	$32, %edi
	call	qemu_mallocz
	.loc 2 120 0
	movq	112(%rsp), %rcx
	.loc 2 118 0
	movq	%rax, %rbx
	.loc 2 120 0
	movq	%rcx, 8(%rax)
	.loc 2 121 0
	movq	120(%rsp), %rdi
	call	qemu_free
	.loc 2 125 0
	movl	96(%rsp), %esi
	movl	%esi, (%rbx)
	.loc 2 126 0
	movq	88(%rsp), %rax
	movq	%rax, 16(%rbx)
	.loc 2 127 0
	movq	syminfos(%rip), %rax
	movq	%rax, 24(%rbx)
	.loc 2 128 0
	movq	%rbx, syminfos(%rip)
	jmp	.L479
	.p2align 4,,7
.L470:
	movl	296(%rsp), %ecx
	jmp	.L205
.LBE369:
.LBE368:
.LBE367:
.LBE366:
.LFE201:
	.size	load_elf, .-load_elf
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Error reading file\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Unable to load compressed u-boot images\n"
	.align 8
.LC0:
	.string	"Unable to load multi-file u-boot images\n"
	.text
	.p2align 4,,15
.globl load_uboot
	.type	load_uboot, @function
load_uboot:
.LFB203:
	.loc 1 267 0
	movq	%rbp, -24(%rsp)
.LCFI23:
	movq	%r12, -16(%rsp)
.LCFI24:
	.loc 1 275 0
	xorl	%eax, %eax
	.loc 1 267 0
	movq	%r13, -8(%rsp)
.LCFI25:
	movq	%rbx, -32(%rsp)
.LCFI26:
	movq	%rsi, %r13
	subq	$104, %rsp
.LCFI27:
	.loc 1 275 0
	xorl	%esi, %esi
	.loc 1 267 0
	movq	%rdx, %r12
	.loc 1 275 0
	call	open64
	movl	%eax, %ebp
	.loc 1 277 0
	movl	$-1, %eax
	.loc 1 276 0
	testl	%ebp, %ebp
	js	.L487
	.loc 1 279 0
	movl	$64, %edx
	movq	%rsp, %rsi
	movl	%ebp, %edi
	call	read
	.loc 1 280 0
	testl	%eax, %eax
	js	.L528
.LBB392:
.LBB393:
.LBB394:
.LBB395:
.LBB396:
	.loc 3 52 0
	movl	(%rsp), %edx
.LBE396:
.LBE395:
.LBE394:
.LBB397:
.LBB398:
.LBB399:
	movl	4(%rsp), %eax
.LBE399:
.LBE398:
.LBE397:
.LBB400:
.LBB401:
.LBB402:
.LBB403:
.LBB404:
	.loc 3 53 0
#APP
	bswap %edx
#NO_APP
.LBE404:
.LBE403:
.LBE402:
.LBE401:
.LBE400:
.LBB405:
.LBB406:
.LBB407:
.LBB408:
.LBB409:
#APP
	bswap %eax
#NO_APP
.LBE409:
.LBE408:
.LBE407:
	.loc 3 52 0
	movl	%eax, 4(%rsp)
.LBE406:
.LBE405:
.LBB410:
.LBB411:
.LBB412:
	movl	8(%rsp), %eax
.LBB413:
.LBB414:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE414:
.LBE413:
.LBE412:
	.loc 3 52 0
	movl	%eax, 8(%rsp)
.LBE411:
.LBE410:
.LBB415:
.LBB416:
.LBB417:
	movl	12(%rsp), %eax
.LBB418:
.LBB419:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE419:
.LBE418:
.LBE417:
	.loc 3 52 0
	movl	%eax, 12(%rsp)
.LBE416:
.LBE415:
.LBB420:
.LBB421:
.LBB422:
	movl	16(%rsp), %eax
.LBB423:
.LBB424:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE424:
.LBE423:
.LBE422:
	.loc 3 52 0
	movl	%eax, 16(%rsp)
.LBE421:
.LBE420:
.LBB425:
.LBB426:
.LBB427:
	movl	20(%rsp), %eax
.LBB428:
.LBB429:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE429:
.LBE428:
.LBE427:
	.loc 3 52 0
	movl	%eax, 20(%rsp)
.LBE426:
.LBE425:
.LBB430:
.LBB431:
.LBB432:
	movl	24(%rsp), %eax
.LBB433:
.LBB434:
	.loc 3 53 0
#APP
	bswap %eax
#NO_APP
.LBE434:
.LBE433:
.LBE432:
.LBE431:
.LBE430:
.LBE393:
.LBE392:
	.loc 1 285 0
	cmpl	$654645590, %edx
.LBB435:
.LBB436:
.LBB437:
.LBB438:
	.loc 3 52 0
	movl	%edx, (%rsp)
.LBE438:
.LBE437:
.LBB439:
.LBB440:
	movl	%eax, 24(%rsp)
.LBE440:
.LBE439:
.LBE436:
.LBE435:
	.loc 1 285 0
	je	.L533
.L528:
	.loc 1 325 0
	movl	%ebp, %edi
	call	close
	.loc 1 326 0
	movl	$-1, %eax
.L487:
	.loc 1 327 0
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rbp
	movq	88(%rsp), %r12
	movq	96(%rsp), %r13
	addq	$104, %rsp
	ret
	.p2align 4,,7
.L533:
	.loc 1 289 0
	cmpb	$4, 30(%rsp)
	je	.L534
	.loc 1 295 0
	cmpb	$0, 31(%rsp)
	jne	.L535
	.loc 1 301 0
	testq	%r12, %r12
	.p2align 4,,3
	je	.L523
	.loc 1 302 0
	movl	28(%rsp), %eax
	andl	$16711935, %eax
	.loc 1 303 0
	cmpl	$131077, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%r12)
.L523:
	.loc 1 308 0
	movl	20(%rsp), %eax
	movl	%eax, (%r13)
	.loc 1 309 0
	mov	12(%rsp), %edi
	call	qemu_malloc
	.loc 1 310 0
	testq	%rax, %rax
	.loc 1 309 0
	movq	%rax, %rbx
	.loc 1 310 0
	je	.L528
	.loc 1 313 0
	mov	12(%rsp), %edx
	movq	%rax, %rsi
	movl	%ebp, %edi
	call	read
	movl	12(%rsp), %ecx
	mov	%ecx, %edx
	cmpq	%rdx, %rax
	je	.L536
.L490:
	.loc 1 314 0
	movq	stderr(%rip), %rcx
	movl	$19, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	.loc 1 324 0
	movq	%rbx, %rdi
	call	qemu_free
	jmp	.L528
	.p2align 4,,7
.L536:
	.loc 1 318 0
	mov	16(%rsp), %edi
	movq	%rbx, %rsi
	movl	%ecx, %edx
	call	cpu_physical_memory_write_rom
	.loc 1 320 0
	movl	12(%rsp), %eax
	.loc 1 327 0
	movq	72(%rsp), %rbx
	movq	80(%rsp), %rbp
	movq	88(%rsp), %r12
	movq	96(%rsp), %r13
	addq	$104, %rsp
	ret
.L535:
	.loc 1 296 0
	movq	stderr(%rip), %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	jmp	.L528
.L534:
	.loc 1 290 0
	movq	stderr(%rip), %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	.loc 1 296 0
	call	fwrite
	jmp	.L528
.LFE203:
	.size	load_uboot, .-load_uboot
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
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
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.byte	0x4
	.long	.LCFI2-.LFB183
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.byte	0x4
	.long	.LCFI6-.LFB184
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.byte	0x4
	.long	.LCFI8-.LFB185
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB186
	.quad	.LFE186-.LFB186
	.byte	0x4
	.long	.LCFI13-.LFB186
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI19-.LFB201
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x180
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI26-.LFB203
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x70
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
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.byte	0x4
	.long	.LCFI2-.LFB183
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.byte	0x4
	.long	.LCFI6-.LFB184
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.byte	0x4
	.long	.LCFI8-.LFB185
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB186
	.quad	.LFE186-.LFB186
	.byte	0x4
	.long	.LCFI13-.LFB186
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI19-.LFB201
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x180
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI26-.LFB203
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x70
	.align 8
.LEFDE11:
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/home/remco/Projects/Argos/src/elf.h"
	.file 7 "/home/remco/Projects/Argos/src/disas.h"
	.file 8 "../cpu-defs.h"
	.file 9 "/home/remco/Projects/Argos/src/uboot_image.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "../cpu-all.h"
	.file 15 "/home/remco/Projects/Argos/src/sysemu.h"
	.file 16 "/home/remco/Projects/Argos/src/qemu-common.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x31c5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF213
	.byte	0x1
	.long	.LASF214
	.long	.LASF215
	.uleb128 0x2
	.long	.LASF9
	.byte	0xd
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
	.byte	0xc
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
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
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x292
	.long	.LASF44
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF14
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF15
	.byte	0xb
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0xb
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF17
	.byte	0xb
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF18
	.byte	0xb
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0xb
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0xb
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0xb
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0xb
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0xb
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0xb
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0xb
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0xb
	.value	0x122
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0xb
	.value	0x124
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0xb
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0xb
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0xb
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0xb
	.value	0x132
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x136
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0xb
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0xb
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0xb
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xb
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0xb
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xb
	.value	0x150
	.long	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xb
	.byte	0xb4
	.uleb128 0x8
	.long	0x2d0
	.long	.LASF45
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xb
	.long	.LASF46
	.byte	0xb
	.byte	0xbb
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF47
	.byte	0xb
	.byte	0xbc
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0xb
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
	.byte	0x8
	.byte	0x31
	.long	0x318
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
	.uleb128 0xc
	.long	0x35e
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x10
	.byte	0x6e
	.long	0x369
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.uleb128 0x8
	.long	0x3b4
	.long	.LASF58
	.byte	0x20
	.byte	0x7
	.byte	0xf
	.uleb128 0xb
	.long	.LASF59
	.byte	0x7
	.byte	0x10
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x7
	.byte	0x11
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF61
	.byte	0x7
	.byte	0x12
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF62
	.byte	0x7
	.byte	0x13
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x36f
	.uleb128 0xf
	.long	0x3e7
	.byte	0x4
	.byte	0xf
	.byte	0x77
	.uleb128 0x10
	.long	.LASF63
	.sleb128 0
	.uleb128 0x10
	.long	.LASF64
	.sleb128 1
	.uleb128 0x10
	.long	.LASF65
	.sleb128 2
	.uleb128 0x10
	.long	.LASF66
	.sleb128 3
	.uleb128 0x10
	.long	.LASF67
	.sleb128 4
	.uleb128 0x10
	.long	.LASF68
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xf
	.byte	0x79
	.long	0x3ba
	.uleb128 0x8
	.long	0x437
	.long	.LASF70
	.byte	0x18
	.byte	0xf
	.byte	0x7b
	.uleb128 0xb
	.long	.LASF71
	.byte	0xf
	.byte	0x7c
	.long	0x437
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF72
	.byte	0xf
	.byte	0x7d
	.long	0x3e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"bus"
	.byte	0xf
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF73
	.byte	0xf
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x35e
	.uleb128 0x2
	.long	.LASF70
	.byte	0xf
	.byte	0x80
	.long	0x3f2
	.uleb128 0x8
	.long	0x4fd
	.long	.LASF74
	.byte	0x40
	.byte	0x9
	.byte	0x90
	.uleb128 0xb
	.long	.LASF75
	.byte	0x9
	.byte	0x91
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x9
	.byte	0x92
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF77
	.byte	0x9
	.byte	0x93
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF78
	.byte	0x9
	.byte	0x94
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF79
	.byte	0x9
	.byte	0x95
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF80
	.byte	0x9
	.byte	0x96
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF81
	.byte	0x9
	.byte	0x97
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF82
	.byte	0x9
	.byte	0x98
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF83
	.byte	0x9
	.byte	0x99
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0xb
	.long	.LASF84
	.byte	0x9
	.byte	0x9a
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.long	.LASF85
	.byte	0x9
	.byte	0x9b
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xb
	.long	.LASF86
	.byte	0x9
	.byte	0x9c
	.long	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	0x50d
	.long	0x302
	.uleb128 0xd
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x9
	.byte	0x9d
	.long	0x448
	.uleb128 0x8
	.long	0x595
	.long	.LASF88
	.byte	0x20
	.byte	0x1
	.byte	0x3d
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.byte	0x3e
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1
	.byte	0x3f
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.byte	0x40
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF92
	.byte	0x1
	.byte	0x41
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1
	.byte	0x42
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.byte	0x43
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.byte	0x44
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1
	.byte	0x45
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF97
	.byte	0x6
	.byte	0x7
	.long	0x318
	.uleb128 0x2
	.long	.LASF98
	.byte	0x6
	.byte	0x8
	.long	0x30d
	.uleb128 0x2
	.long	.LASF99
	.byte	0x6
	.byte	0x9
	.long	0x318
	.uleb128 0x2
	.long	.LASF100
	.byte	0x6
	.byte	0xb
	.long	0x318
	.uleb128 0x2
	.long	.LASF101
	.byte	0x6
	.byte	0xe
	.long	0x323
	.uleb128 0x2
	.long	.LASF102
	.byte	0x6
	.byte	0xf
	.long	0x30d
	.uleb128 0x2
	.long	.LASF103
	.byte	0x6
	.byte	0x11
	.long	0x323
	.uleb128 0x2
	.long	.LASF104
	.byte	0x6
	.byte	0x13
	.long	0x318
	.uleb128 0x2
	.long	.LASF105
	.byte	0x6
	.byte	0x14
	.long	0x323
	.uleb128 0x12
	.long	0x660
	.long	.LASF106
	.byte	0x10
	.byte	0x6
	.value	0x39e
	.uleb128 0x9
	.long	.LASF107
	.byte	0x6
	.value	0x39f
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.value	0x3a0
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF109
	.byte	0x6
	.value	0x3a1
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF110
	.byte	0x6
	.value	0x3a2
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF111
	.byte	0x6
	.value	0x3a3
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x9
	.long	.LASF112
	.byte	0x6
	.value	0x3a4
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0x12
	.long	0x6c8
	.long	.LASF113
	.byte	0x18
	.byte	0x6
	.value	0x3a7
	.uleb128 0x9
	.long	.LASF107
	.byte	0x6
	.value	0x3a8
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF110
	.byte	0x6
	.value	0x3a9
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF111
	.byte	0x6
	.value	0x3aa
	.long	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF112
	.byte	0x6
	.value	0x3ab
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.value	0x3ac
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF109
	.byte	0x6
	.value	0x3ad
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x12
	.long	0x7a8
	.long	.LASF114
	.byte	0x34
	.byte	0x6
	.value	0x3b3
	.uleb128 0x9
	.long	.LASF115
	.byte	0x6
	.value	0x3b4
	.long	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF116
	.byte	0x6
	.value	0x3b5
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF117
	.byte	0x6
	.value	0x3b6
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF118
	.byte	0x6
	.value	0x3b7
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF119
	.byte	0x6
	.value	0x3b8
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF120
	.byte	0x6
	.value	0x3b9
	.long	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF121
	.byte	0x6
	.value	0x3ba
	.long	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF122
	.byte	0x6
	.value	0x3bb
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF123
	.byte	0x6
	.value	0x3bc
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.value	0x3bd
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.long	.LASF125
	.byte	0x6
	.value	0x3be
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF126
	.byte	0x6
	.value	0x3bf
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.long	.LASF127
	.byte	0x6
	.value	0x3c0
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF128
	.byte	0x6
	.value	0x3c1
	.long	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0xc
	.long	0x7b8
	.long	0x81
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.long	0x898
	.long	.LASF129
	.byte	0x40
	.byte	0x6
	.value	0x3c4
	.uleb128 0x9
	.long	.LASF115
	.byte	0x6
	.value	0x3c5
	.long	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF116
	.byte	0x6
	.value	0x3c6
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF117
	.byte	0x6
	.value	0x3c7
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.long	.LASF118
	.byte	0x6
	.value	0x3c8
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF119
	.byte	0x6
	.value	0x3c9
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF120
	.byte	0x6
	.value	0x3ca
	.long	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF121
	.byte	0x6
	.value	0x3cb
	.long	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF122
	.byte	0x6
	.value	0x3cc
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF123
	.byte	0x6
	.value	0x3cd
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.value	0x3ce
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.long	.LASF125
	.byte	0x6
	.value	0x3cf
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF126
	.byte	0x6
	.value	0x3d0
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.long	.LASF127
	.byte	0x6
	.value	0x3d1
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.long	.LASF128
	.byte	0x6
	.value	0x3d2
	.long	0x5cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.byte	0x0
	.uleb128 0x12
	.long	0x91e
	.long	.LASF130
	.byte	0x20
	.byte	0x6
	.value	0x3db
	.uleb128 0x9
	.long	.LASF131
	.byte	0x6
	.value	0x3dc
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF132
	.byte	0x6
	.value	0x3dd
	.long	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF133
	.byte	0x6
	.value	0x3de
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF134
	.byte	0x6
	.value	0x3df
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF135
	.byte	0x6
	.value	0x3e0
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF136
	.byte	0x6
	.value	0x3e1
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF137
	.byte	0x6
	.value	0x3e2
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF138
	.byte	0x6
	.value	0x3e3
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x12
	.long	0x9a4
	.long	.LASF139
	.byte	0x38
	.byte	0x6
	.value	0x3e6
	.uleb128 0x9
	.long	.LASF131
	.byte	0x6
	.value	0x3e7
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF137
	.byte	0x6
	.value	0x3e8
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF132
	.byte	0x6
	.value	0x3e9
	.long	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF133
	.byte	0x6
	.value	0x3ea
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF134
	.byte	0x6
	.value	0x3eb
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF135
	.byte	0x6
	.value	0x3ec
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF136
	.byte	0x6
	.value	0x3ed
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF138
	.byte	0x6
	.value	0x3ee
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x12
	.long	0xa48
	.long	.LASF140
	.byte	0x28
	.byte	0x6
	.value	0x419
	.uleb128 0x9
	.long	.LASF141
	.byte	0x6
	.value	0x41a
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF142
	.byte	0x6
	.value	0x41b
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF143
	.byte	0x6
	.value	0x41c
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF144
	.byte	0x6
	.value	0x41d
	.long	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF145
	.byte	0x6
	.value	0x41e
	.long	0x5ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF146
	.byte	0x6
	.value	0x41f
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.long	.LASF147
	.byte	0x6
	.value	0x420
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF148
	.byte	0x6
	.value	0x421
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF149
	.byte	0x6
	.value	0x422
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF150
	.byte	0x6
	.value	0x423
	.long	0x5b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x12
	.long	0xaec
	.long	.LASF151
	.byte	0x40
	.byte	0x6
	.value	0x426
	.uleb128 0x9
	.long	.LASF141
	.byte	0x6
	.value	0x427
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF142
	.byte	0x6
	.value	0x428
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF143
	.byte	0x6
	.value	0x429
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF144
	.byte	0x6
	.value	0x42a
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF145
	.byte	0x6
	.value	0x42b
	.long	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF146
	.byte	0x6
	.value	0x42c
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF147
	.byte	0x6
	.value	0x42d
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF148
	.byte	0x6
	.value	0x42e
	.long	0x5e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF149
	.byte	0x6
	.value	0x42f
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF150
	.byte	0x6
	.value	0x430
	.long	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x13
	.long	0xb34
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	0x3f
	.quad	.LFB183
	.quad	.LFE183
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF155
	.byte	0x1
	.byte	0x1e
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF152
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.byte	0x0
	.uleb128 0x13
	.long	0xb8b
	.byte	0x1
	.long	.LASF154
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0x3f
	.quad	.LFB184
	.quad	.LFE184
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF155
	.byte	0x1
	.byte	0x2a
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF156
	.byte	0x1
	.byte	0x2a
	.long	0xb8b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x17
	.long	.LASF152
	.byte	0x1
	.byte	0x2c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x302
	.uleb128 0x13
	.long	0xc1d
	.byte	0x1
	.long	.LASF157
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x3f
	.quad	.LFB185
	.quad	.LFE185
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF155
	.byte	0x1
	.byte	0x6c
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF156
	.byte	0x1
	.byte	0x6c
	.long	0xb8b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF152
	.byte	0x1
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.byte	0x6f
	.long	0x518
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF158
	.byte	0x1
	.byte	0x70
	.long	0x318
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.long	.LASF168
	.byte	0x1
	.byte	0x95
	.quad	.L11
	.byte	0x0
	.uleb128 0x19
	.long	0xc73
	.long	.LASF169
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0xac
	.quad	.LFB186
	.quad	.LFE186
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"fd"
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF159
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.long	.LASF152
	.byte	0x1
	.byte	0x9c
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x9e
	.long	0xac
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x13
	.long	0x28dd
	.byte	0x1
	.long	.LASF160
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	0x3f
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x14
	.long	.LASF155
	.byte	0x1
	.byte	0xca
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF161
	.byte	0x1
	.byte	0xca
	.long	0xb4
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.long	.LASF162
	.byte	0x1
	.byte	0xcb
	.long	0x28dd
	.byte	0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF163
	.byte	0x1
	.byte	0xcb
	.long	0x28dd
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.long	.LASF164
	.byte	0x1
	.byte	0xcb
	.long	0x28dd
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.string	"fd"
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF165
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.uleb128 0x16
	.long	.LASF166
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.uleb128 0x17
	.long	.LASF167
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 172
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.byte	0xce
	.long	0x34e
	.byte	0x3
	.byte	0x91
	.sleb128 304
	.uleb128 0x18
	.long	.LASF168
	.byte	0x1
	.byte	0xf7
	.quad	.L59
	.uleb128 0x1b
	.long	0x1986
	.long	0x28e3
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1c
	.long	0x28f4
	.uleb128 0x1c
	.long	0x28fe
	.uleb128 0x1c
	.long	0x2909
	.uleb128 0x1c
	.long	0x2914
	.uleb128 0x1c
	.long	0x291f
	.uleb128 0x1c
	.long	0x292a
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1e
	.long	0x2935
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x1e
	.long	0x2940
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x1e
	.long	0x294b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2955
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2960
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	0x2969
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x1e
	.long	0x2974
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x1e
	.long	0x297f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x298a
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x1e
	.long	0x2995
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1e
	.long	0x29a0
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1f
	.long	0x29ab
	.quad	.L259
	.uleb128 0x1b
	.long	0x1268
	.long	0x29b9
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1c
	.long	0x29c6
	.uleb128 0x1b
	.long	0xe4b
	.long	0x29d8
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xea3
	.long	0x29d8
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xefb
	.long	0x2a28
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xf53
	.long	0x2a28
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0xfab
	.long	0x2a28
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1003
	.long	0x2a28
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x105b
	.long	0x2a28
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x10b3
	.long	0x29d8
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x110b
	.long	0x29d8
	.quad	.LBB46
	.quad	.LBE46
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB50
	.quad	.LBE50
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1163
	.long	0x29d8
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x11bb
	.long	0x29d8
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1213
	.long	0x29d8
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x29d8
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x16ad
	.long	0x2a78
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x1c
	.long	0x2a89
	.uleb128 0x1c
	.long	0x2a94
	.uleb128 0x1c
	.long	0x2a9e
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x22
	.long	0x2aa9
	.uleb128 0x1e
	.long	0x2ab4
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	0x2abf
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2aca
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1e
	.long	0x2ad5
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	0x2ade
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	0x2ae9
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.long	0x2af2
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1f
	.long	0x2afd
	.quad	.L371
	.uleb128 0x1b
	.long	0x12fb
	.long	0x2b11
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x23
	.long	0x2b1e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x1353
	.long	0x2a28
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x13ab
	.long	0x2a28
	.quad	.LBB81
	.quad	.LBE81
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1403
	.long	0x2a28
	.quad	.LBB86
	.quad	.LBE86
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB88
	.quad	.LBE88
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x145b
	.long	0x2a28
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB93
	.quad	.LBE93
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x14b3
	.long	0x2a28
	.quad	.LBB96
	.quad	.LBE96
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB100
	.quad	.LBE100
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x150b
	.long	0x2a28
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB103
	.quad	.LBE103
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1563
	.long	0x2a28
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB108
	.quad	.LBE108
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x15bb
	.long	0x2a28
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB115
	.quad	.LBE115
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1613
	.long	0x2a28
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB118
	.quad	.LBE118
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB120
	.quad	.LBE120
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x166b
	.long	0x2a28
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB123
	.quad	.LBE123
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2b2a
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x1c
	.long	0x2b3b
	.uleb128 0x23
	.long	0x2b46
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	0x2b4f
	.uleb128 0x21
	.quad	.LBB127
	.quad	.LBE127
	.uleb128 0x1e
	.long	0x2b5a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2b64
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x1c
	.long	0x2b71
	.uleb128 0x1b
	.long	0x171f
	.long	0x2a28
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB132
	.quad	.LBE132
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB134
	.quad	.LBE134
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1777
	.long	0x2a28
	.quad	.LBB135
	.quad	.LBE135
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB139
	.quad	.LBE139
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x17cf
	.long	0x2a28
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB142
	.quad	.LBE142
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB144
	.quad	.LBE144
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1827
	.long	0x2a28
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB147
	.quad	.LBE147
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB149
	.quad	.LBE149
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x187f
	.long	0x2a28
	.quad	.LBB150
	.quad	.LBE150
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB152
	.quad	.LBE152
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB154
	.quad	.LBE154
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x18d7
	.long	0x2a28
	.quad	.LBB155
	.quad	.LBE155
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB157
	.quad	.LBE157
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB159
	.quad	.LBE159
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x192f
	.long	0x2a28
	.quad	.LBB160
	.quad	.LBE160
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB162
	.quad	.LBE162
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2a28
	.quad	.LBB165
	.quad	.LBE165
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB167
	.quad	.LBE167
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB169
	.quad	.LBE169
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x25e8
	.long	0x2b7d
	.quad	.LBB172
	.quad	.LBE172
	.uleb128 0x1c
	.long	0x2b8e
	.uleb128 0x1c
	.long	0x2b98
	.uleb128 0x1c
	.long	0x2ba3
	.uleb128 0x1c
	.long	0x2bae
	.uleb128 0x1c
	.long	0x2bb9
	.uleb128 0x1c
	.long	0x2bc4
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x1e
	.long	0x2bcf
	.byte	0x3
	.byte	0x91
	.sleb128 240
	.uleb128 0x1e
	.long	0x2bda
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x1e
	.long	0x2be5
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2bef
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2bfa
	.byte	0x3
	.byte	0x91
	.sleb128 156
	.uleb128 0x1e
	.long	0x2c03
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x1e
	.long	0x2c0e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	0x2c19
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2c24
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x1e
	.long	0x2c2f
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x1e
	.long	0x2c3a
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x1f
	.long	0x2c45
	.quad	.L65
	.uleb128 0x1b
	.long	0x1ebd
	.long	0x2c53
	.quad	.LBB174
	.quad	.LBE174
	.uleb128 0x1c
	.long	0x2c60
	.uleb128 0x1b
	.long	0x1aa0
	.long	0x29d8
	.quad	.LBB176
	.quad	.LBE176
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB178
	.quad	.LBE178
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB180
	.quad	.LBE180
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1af8
	.long	0x29d8
	.quad	.LBB181
	.quad	.LBE181
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB183
	.quad	.LBE183
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB185
	.quad	.LBE185
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1b50
	.long	0x2a28
	.quad	.LBB186
	.quad	.LBE186
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB188
	.quad	.LBE188
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB190
	.quad	.LBE190
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1ba8
	.long	0x2c72
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB193
	.quad	.LBE193
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB195
	.quad	.LBE195
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c00
	.long	0x2c72
	.quad	.LBB196
	.quad	.LBE196
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB198
	.quad	.LBE198
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB200
	.quad	.LBE200
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c58
	.long	0x2c72
	.quad	.LBB201
	.quad	.LBE201
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB205
	.quad	.LBE205
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1cb0
	.long	0x2a28
	.quad	.LBB206
	.quad	.LBE206
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB210
	.quad	.LBE210
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d08
	.long	0x29d8
	.quad	.LBB211
	.quad	.LBE211
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB213
	.quad	.LBE213
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB215
	.quad	.LBE215
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d60
	.long	0x29d8
	.quad	.LBB216
	.quad	.LBE216
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB218
	.quad	.LBE218
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB220
	.quad	.LBE220
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1db8
	.long	0x29d8
	.quad	.LBB221
	.quad	.LBE221
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB223
	.quad	.LBE223
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB225
	.quad	.LBE225
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e10
	.long	0x29d8
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB228
	.quad	.LBE228
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e68
	.long	0x29d8
	.quad	.LBB231
	.quad	.LBE231
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB233
	.quad	.LBE233
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB235
	.quad	.LBE235
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x29d8
	.quad	.LBB236
	.quad	.LBE236
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB238
	.quad	.LBE238
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB240
	.quad	.LBE240
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x230f
	.long	0x2cbc
	.quad	.LBB241
	.quad	.LBE241
	.uleb128 0x1c
	.long	0x2ccd
	.uleb128 0x1c
	.long	0x2cd8
	.uleb128 0x1c
	.long	0x2ce2
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x22
	.long	0x2ced
	.uleb128 0x1e
	.long	0x2cf8
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	0x2d03
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	0x2d0e
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x1e
	.long	0x2d19
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x1e
	.long	0x2d24
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x2d2d
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x1e
	.long	0x2d38
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	0x2d41
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x1f
	.long	0x2d4c
	.quad	.L177
	.uleb128 0x1b
	.long	0x1f5d
	.long	0x2d60
	.quad	.LBB243
	.quad	.LBE243
	.uleb128 0x23
	.long	0x2d6d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x1fb5
	.long	0x2a28
	.quad	.LBB246
	.quad	.LBE246
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB248
	.quad	.LBE248
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB250
	.quad	.LBE250
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x200d
	.long	0x2a28
	.quad	.LBB251
	.quad	.LBE251
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB253
	.quad	.LBE253
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB255
	.quad	.LBE255
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2065
	.long	0x2c72
	.quad	.LBB256
	.quad	.LBE256
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB258
	.quad	.LBE258
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB260
	.quad	.LBE260
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x20bd
	.long	0x2c72
	.quad	.LBB261
	.quad	.LBE261
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB263
	.quad	.LBE263
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB265
	.quad	.LBE265
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2115
	.long	0x2c72
	.quad	.LBB266
	.quad	.LBE266
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB268
	.quad	.LBE268
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB270
	.quad	.LBE270
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x216d
	.long	0x2c72
	.quad	.LBB271
	.quad	.LBE271
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB273
	.quad	.LBE273
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB275
	.quad	.LBE275
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x21c5
	.long	0x2a28
	.quad	.LBB276
	.quad	.LBE276
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB280
	.quad	.LBE280
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x221d
	.long	0x2a28
	.quad	.LBB281
	.quad	.LBE281
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB283
	.quad	.LBE283
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB285
	.quad	.LBE285
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2275
	.long	0x2c72
	.quad	.LBB286
	.quad	.LBE286
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB288
	.quad	.LBE288
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB290
	.quad	.LBE290
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x22cd
	.long	0x2c72
	.quad	.LBB291
	.quad	.LBE291
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB293
	.quad	.LBE293
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB295
	.quad	.LBE295
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2d79
	.quad	.LBB296
	.quad	.LBE296
	.uleb128 0x1c
	.long	0x2d8a
	.uleb128 0x23
	.long	0x2d95
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	0x2d9e
	.uleb128 0x21
	.quad	.LBB297
	.quad	.LBE297
	.uleb128 0x1e
	.long	0x2da9
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2db3
	.quad	.LBB298
	.quad	.LBE298
	.uleb128 0x1c
	.long	0x2dc0
	.uleb128 0x1b
	.long	0x2381
	.long	0x2a28
	.quad	.LBB300
	.quad	.LBE300
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB302
	.quad	.LBE302
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB304
	.quad	.LBE304
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x23d9
	.long	0x2c72
	.quad	.LBB305
	.quad	.LBE305
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB307
	.quad	.LBE307
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB309
	.quad	.LBE309
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2431
	.long	0x2c72
	.quad	.LBB310
	.quad	.LBE310
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB312
	.quad	.LBE312
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB314
	.quad	.LBE314
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2489
	.long	0x2c72
	.quad	.LBB315
	.quad	.LBE315
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB317
	.quad	.LBE317
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB319
	.quad	.LBE319
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x24e1
	.long	0x2c72
	.quad	.LBB320
	.quad	.LBE320
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB322
	.quad	.LBE322
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB324
	.quad	.LBE324
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2539
	.long	0x2c72
	.quad	.LBB325
	.quad	.LBE325
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB327
	.quad	.LBE327
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB329
	.quad	.LBE329
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2591
	.long	0x2a28
	.quad	.LBB330
	.quad	.LBE330
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB332
	.quad	.LBE332
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB334
	.quad	.LBE334
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2c72
	.quad	.LBB335
	.quad	.LBE335
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB337
	.quad	.LBE337
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB339
	.quad	.LBE339
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2763
	.long	0x2dcc
	.quad	.LBB344
	.quad	.LBE344
	.uleb128 0x1c
	.long	0x2dd9
	.uleb128 0x1b
	.long	0x265e
	.long	0x2a28
	.quad	.LBB346
	.quad	.LBE346
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB348
	.quad	.LBE348
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB350
	.quad	.LBE350
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x26b6
	.long	0x2a28
	.quad	.LBB351
	.quad	.LBE351
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB353
	.quad	.LBE353
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB355
	.quad	.LBE355
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x270e
	.long	0x2a28
	.quad	.LBB356
	.quad	.LBE356
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB358
	.quad	.LBE358
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB360
	.quad	.LBE360
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x29d8
	.quad	.LBB361
	.quad	.LBE361
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB363
	.quad	.LBE363
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB365
	.quad	.LBE365
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2de5
	.quad	.LBB370
	.quad	.LBE370
	.uleb128 0x23
	.long	0x2df2
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	0x27d7
	.long	0x2a28
	.quad	.LBB372
	.quad	.LBE372
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB374
	.quad	.LBE374
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB376
	.quad	.LBE376
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x282f
	.long	0x2c72
	.quad	.LBB377
	.quad	.LBE377
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB379
	.quad	.LBE379
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB381
	.quad	.LBE381
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2887
	.long	0x2c72
	.quad	.LBB382
	.quad	.LBE382
	.uleb128 0x1c
	.long	0x2c7f
	.uleb128 0x20
	.long	0x2c89
	.quad	.LBB384
	.quad	.LBE384
	.uleb128 0x1c
	.long	0x2c9a
	.uleb128 0x21
	.quad	.LBB386
	.quad	.LBE386
	.uleb128 0x22
	.long	0x2ca4
	.uleb128 0x1e
	.long	0x2caf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x29d8
	.quad	.LBB387
	.quad	.LBE387
	.uleb128 0x1c
	.long	0x29e5
	.uleb128 0x20
	.long	0x29f5
	.quad	.LBB389
	.quad	.LBE389
	.uleb128 0x1c
	.long	0x2a06
	.uleb128 0x21
	.quad	.LBB391
	.quad	.LBE391
	.uleb128 0x22
	.long	0x2a10
	.uleb128 0x1e
	.long	0x2a1b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x323
	.uleb128 0x24
	.long	0x29b3
	.long	.LASF170
	.byte	0x2
	.byte	0x90
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x25
	.string	"fd"
	.byte	0x2
	.byte	0x8d
	.long	0x3f
	.uleb128 0x26
	.long	.LASF161
	.byte	0x2
	.byte	0x8d
	.long	0xb4
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0x8e
	.long	0x3f
	.uleb128 0x26
	.long	.LASF162
	.byte	0x2
	.byte	0x8e
	.long	0x28dd
	.uleb128 0x26
	.long	.LASF163
	.byte	0x2
	.byte	0x8f
	.long	0x28dd
	.uleb128 0x26
	.long	.LASF164
	.byte	0x2
	.byte	0x8f
	.long	0x28dd
	.uleb128 0x16
	.long	.LASF171
	.byte	0x2
	.byte	0x91
	.long	0x6c8
	.uleb128 0x16
	.long	.LASF172
	.byte	0x2
	.byte	0x92
	.long	0x29b3
	.uleb128 0x27
	.string	"ph"
	.byte	0x2
	.byte	0x92
	.long	0x29b3
	.uleb128 0x16
	.long	.LASF152
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x16
	.long	.LASF173
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x16
	.long	.LASF174
	.byte	0x2
	.byte	0x94
	.long	0x318
	.uleb128 0x16
	.long	.LASF156
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x27
	.string	"low"
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x16
	.long	.LASF175
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x16
	.long	.LASF176
	.byte	0x2
	.byte	0x96
	.long	0xb8b
	.uleb128 0x28
	.long	.LASF168
	.byte	0x2
	.byte	0xd5
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x898
	.uleb128 0x29
	.long	0x29d2
	.long	.LASF177
	.byte	0x2
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF171
	.byte	0x2
	.byte	0x1
	.long	0x29d2
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x6c8
	.uleb128 0x29
	.long	0x29ef
	.long	.LASF178
	.byte	0x3
	.byte	0x3e
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.byte	0x3d
	.long	0x29ef
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30d
	.uleb128 0x24
	.long	0x2a28
	.long	.LASF179
	.byte	0x3
	.byte	0x2f
	.byte	0x1
	.long	0x30d
	.byte	0x3
	.uleb128 0x25
	.string	"x"
	.byte	0x3
	.byte	0x2e
	.long	0x30d
	.uleb128 0x2a
	.uleb128 0x27
	.string	"__v"
	.byte	0x3
	.byte	0x30
	.long	0x68
	.uleb128 0x27
	.string	"__x"
	.byte	0x3
	.byte	0x30
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x2a3f
	.long	.LASF180
	.byte	0x3
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.byte	0x42
	.long	0x2a3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x318
	.uleb128 0x24
	.long	0x2a78
	.long	.LASF181
	.byte	0x3
	.byte	0x34
	.byte	0x1
	.long	0x318
	.byte	0x3
	.uleb128 0x25
	.string	"x"
	.byte	0x3
	.byte	0x33
	.long	0x318
	.uleb128 0x2a
	.uleb128 0x27
	.string	"__v"
	.byte	0x3
	.byte	0x35
	.long	0x46
	.uleb128 0x27
	.string	"__x"
	.byte	0x3
	.byte	0x35
	.long	0x46
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2b05
	.long	.LASF182
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x26
	.long	.LASF171
	.byte	0x2
	.byte	0x3f
	.long	0x29d2
	.uleb128 0x25
	.string	"fd"
	.byte	0x2
	.byte	0x3f
	.long	0x3f
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0x3f
	.long	0x3f
	.uleb128 0x16
	.long	.LASF183
	.byte	0x2
	.byte	0x41
	.long	0x2b05
	.uleb128 0x16
	.long	.LASF184
	.byte	0x2
	.byte	0x41
	.long	0x2b05
	.uleb128 0x16
	.long	.LASF185
	.byte	0x2
	.byte	0x41
	.long	0x2b05
	.uleb128 0x16
	.long	.LASF186
	.byte	0x2
	.byte	0x42
	.long	0x2b0b
	.uleb128 0x27
	.string	"s"
	.byte	0x2
	.byte	0x46
	.long	0x3b4
	.uleb128 0x16
	.long	.LASF187
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.uleb128 0x27
	.string	"str"
	.byte	0x2
	.byte	0x48
	.long	0xae
	.uleb128 0x28
	.long	.LASF168
	.byte	0x2
	.byte	0x83
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9a4
	.uleb128 0x5
	.byte	0x8
	.long	0x5f8
	.uleb128 0x29
	.long	0x2b2a
	.long	.LASF188
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF189
	.byte	0x2
	.byte	0x1e
	.long	0x2b05
	.byte	0x0
	.uleb128 0x24
	.long	0x2b64
	.long	.LASF190
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.long	0x2b05
	.byte	0x1
	.uleb128 0x26
	.long	.LASF185
	.byte	0x2
	.byte	0x34
	.long	0x2b05
	.uleb128 0x25
	.string	"n"
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.uleb128 0x26
	.long	.LASF72
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x2b7d
	.long	.LASF191
	.byte	0x2
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF172
	.byte	0x2
	.byte	0x12
	.long	0x29b3
	.byte	0x0
	.uleb128 0x24
	.long	0x2c4d
	.long	.LASF192
	.byte	0x2
	.byte	0x90
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x25
	.string	"fd"
	.byte	0x2
	.byte	0x8d
	.long	0x3f
	.uleb128 0x26
	.long	.LASF161
	.byte	0x2
	.byte	0x8d
	.long	0xb4
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0x8e
	.long	0x3f
	.uleb128 0x26
	.long	.LASF162
	.byte	0x2
	.byte	0x8e
	.long	0x28dd
	.uleb128 0x26
	.long	.LASF163
	.byte	0x2
	.byte	0x8f
	.long	0x28dd
	.uleb128 0x26
	.long	.LASF164
	.byte	0x2
	.byte	0x8f
	.long	0x28dd
	.uleb128 0x16
	.long	.LASF171
	.byte	0x2
	.byte	0x91
	.long	0x7b8
	.uleb128 0x16
	.long	.LASF172
	.byte	0x2
	.byte	0x92
	.long	0x2c4d
	.uleb128 0x27
	.string	"ph"
	.byte	0x2
	.byte	0x92
	.long	0x2c4d
	.uleb128 0x16
	.long	.LASF152
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x16
	.long	.LASF173
	.byte	0x2
	.byte	0x93
	.long	0x3f
	.uleb128 0x16
	.long	.LASF174
	.byte	0x2
	.byte	0x94
	.long	0x323
	.uleb128 0x16
	.long	.LASF156
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x27
	.string	"low"
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x16
	.long	.LASF175
	.byte	0x2
	.byte	0x95
	.long	0x323
	.uleb128 0x16
	.long	.LASF176
	.byte	0x2
	.byte	0x96
	.long	0xb8b
	.uleb128 0x28
	.long	.LASF168
	.byte	0x2
	.byte	0xd5
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x91e
	.uleb128 0x29
	.long	0x2c6c
	.long	.LASF193
	.byte	0x2
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF171
	.byte	0x2
	.byte	0x1
	.long	0x2c6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7b8
	.uleb128 0x29
	.long	0x2c89
	.long	.LASF194
	.byte	0x3
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.byte	0x47
	.long	0x28dd
	.byte	0x0
	.uleb128 0x24
	.long	0x2cbc
	.long	.LASF195
	.byte	0x3
	.byte	0x39
	.byte	0x1
	.long	0x323
	.byte	0x3
	.uleb128 0x25
	.string	"x"
	.byte	0x3
	.byte	0x38
	.long	0x323
	.uleb128 0x2a
	.uleb128 0x27
	.string	"__v"
	.byte	0x3
	.byte	0x3a
	.long	0x38
	.uleb128 0x27
	.string	"__x"
	.byte	0x3
	.byte	0x3a
	.long	0x38
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x2d54
	.long	.LASF196
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x26
	.long	.LASF171
	.byte	0x2
	.byte	0x3f
	.long	0x2c6c
	.uleb128 0x25
	.string	"fd"
	.byte	0x2
	.byte	0x3f
	.long	0x3f
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0x3f
	.long	0x3f
	.uleb128 0x16
	.long	.LASF183
	.byte	0x2
	.byte	0x41
	.long	0x2d54
	.uleb128 0x16
	.long	.LASF184
	.byte	0x2
	.byte	0x41
	.long	0x2d54
	.uleb128 0x16
	.long	.LASF185
	.byte	0x2
	.byte	0x41
	.long	0x2d54
	.uleb128 0x16
	.long	.LASF186
	.byte	0x2
	.byte	0x42
	.long	0x2d5a
	.uleb128 0x16
	.long	.LASF197
	.byte	0x2
	.byte	0x44
	.long	0x2b0b
	.uleb128 0x27
	.string	"s"
	.byte	0x2
	.byte	0x46
	.long	0x3b4
	.uleb128 0x16
	.long	.LASF187
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x47
	.long	0x3f
	.uleb128 0x27
	.string	"str"
	.byte	0x2
	.byte	0x48
	.long	0xae
	.uleb128 0x28
	.long	.LASF168
	.byte	0x2
	.byte	0x83
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa48
	.uleb128 0x5
	.byte	0x8
	.long	0x660
	.uleb128 0x29
	.long	0x2d79
	.long	.LASF198
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF189
	.byte	0x2
	.byte	0x1e
	.long	0x2d54
	.byte	0x0
	.uleb128 0x24
	.long	0x2db3
	.long	.LASF199
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.long	0x2d54
	.byte	0x1
	.uleb128 0x26
	.long	.LASF185
	.byte	0x2
	.byte	0x34
	.long	0x2d54
	.uleb128 0x25
	.string	"n"
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.uleb128 0x26
	.long	.LASF72
	.byte	0x2
	.byte	0x35
	.long	0x3f
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.byte	0x37
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0x2dcc
	.long	.LASF200
	.byte	0x2
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	.LASF172
	.byte	0x2
	.byte	0x12
	.long	0x2c4d
	.byte	0x0
	.uleb128 0x29
	.long	0x2de5
	.long	.LASF201
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"sym"
	.byte	0x2
	.byte	0x2c
	.long	0x2b0b
	.byte	0x0
	.uleb128 0x29
	.long	0x2dfe
	.long	.LASF202
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"sym"
	.byte	0x2
	.byte	0x2c
	.long	0x2d5a
	.byte	0x0
	.uleb128 0x2b
	.long	0x3125
	.byte	0x1
	.long	.LASF203
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	0x3f
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF155
	.byte	0x1
	.value	0x10a
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"ep"
	.byte	0x1
	.value	0x10a
	.long	0x3125
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x1
	.value	0x10a
	.long	0x4d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"fd"
	.byte	0x1
	.value	0x10d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF152
	.byte	0x1
	.value	0x10e
	.long	0x3f
	.uleb128 0x2e
	.string	"h"
	.byte	0x1
	.value	0x10f
	.long	0x50d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"hdr"
	.byte	0x1
	.value	0x110
	.long	0x312b
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF176
	.byte	0x1
	.value	0x111
	.long	0xb8b
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF168
	.byte	0x1
	.value	0x142
	.quad	.L490
	.uleb128 0x20
	.long	0x3131
	.quad	.LBB392
	.quad	.LBE392
	.uleb128 0x1c
	.long	0x313e
	.uleb128 0x1b
	.long	0x2ef1
	.long	0x2a28
	.quad	.LBB394
	.quad	.LBE394
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB396
	.quad	.LBE396
	.uleb128 0x1c
	.long	0x2a56
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2f2b
	.long	0x2a28
	.quad	.LBB397
	.quad	.LBE397
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB399
	.quad	.LBE399
	.uleb128 0x1c
	.long	0x2a56
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x2f4d
	.quad	.LBB404
	.quad	.LBE404
	.uleb128 0x1e
	.long	0x2a60
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.long	0x2a6b
	.byte	0x0
	.uleb128 0x32
	.long	0x2f6f
	.quad	.LBB409
	.quad	.LBE409
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x2fc7
	.long	0x2a28
	.quad	.LBB410
	.quad	.LBE410
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB412
	.quad	.LBE412
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB414
	.quad	.LBE414
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x301f
	.long	0x2a28
	.quad	.LBB415
	.quad	.LBE415
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB417
	.quad	.LBE417
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB419
	.quad	.LBE419
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3077
	.long	0x2a28
	.quad	.LBB420
	.quad	.LBE420
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB422
	.quad	.LBE422
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB424
	.quad	.LBE424
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x30cf
	.long	0x2a28
	.quad	.LBB425
	.quad	.LBE425
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB427
	.quad	.LBE427
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB429
	.quad	.LBE429
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x2a28
	.quad	.LBB430
	.quad	.LBE430
	.uleb128 0x1c
	.long	0x2a35
	.uleb128 0x20
	.long	0x2a45
	.quad	.LBB432
	.quad	.LBE432
	.uleb128 0x1c
	.long	0x2a56
	.uleb128 0x21
	.quad	.LBB434
	.quad	.LBE434
	.uleb128 0x22
	.long	0x2a60
	.uleb128 0x1e
	.long	0x2a6b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x32e
	.uleb128 0x5
	.byte	0x8
	.long	0x50d
	.uleb128 0x29
	.long	0x314a
	.long	.LASF205
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.string	"hdr"
	.byte	0x1
	.byte	0xfc
	.long	0x312b
	.byte	0x0
	.uleb128 0x33
	.long	.LASF206
	.byte	0xa
	.byte	0x91
	.long	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF207
	.byte	0xa
	.byte	0x92
	.long	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF208
	.byte	0xa
	.byte	0x93
	.long	0x2d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF209
	.byte	0xe
	.value	0x376
	.long	0xb8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF210
	.byte	0x7
	.byte	0x14
	.long	0x3b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF211
	.byte	0xf
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xc
	.long	0x31b2
	.long	0x43d
	.uleb128 0xd
	.long	0x61
	.byte	0x20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF212
	.byte	0xf
	.byte	0x87
	.long	0x31a2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
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
	.long	0x79
	.value	0x2
	.long	.Ldebug_info0
	.long	0x31c9
	.long	0xaec
	.string	"get_image_size"
	.long	0xb34
	.string	"load_image"
	.long	0xb91
	.string	"load_aout"
	.long	0xc73
	.string	"load_elf"
	.long	0x2dfe
	.string	"load_uboot"
	.long	0x318c
	.string	"nb_drives"
	.long	0x31b2
	.string	"drives_table"
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
	.quad	.LBB341-.Ltext0
	.quad	.LBE341-.Ltext0
	.quad	.LBB171-.Ltext0
	.quad	.LBE171-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB343-.Ltext0
	.quad	.LBE343-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB173-.Ltext0
	.quad	.LBE173-.Ltext0
	.quad	.LBB367-.Ltext0
	.quad	.LBE367-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB242-.Ltext0
	.quad	.LBE242-.Ltext0
	.quad	.LBB369-.Ltext0
	.quad	.LBE369-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF170:
	.string	"load_elf32"
.LASF9:
	.string	"size_t"
.LASF185:
	.string	"shdr_table"
.LASF111:
	.string	"st_other"
.LASF101:
	.string	"Elf64_Addr"
.LASF108:
	.string	"st_value"
.LASF81:
	.string	"ih_dcrc"
.LASF25:
	.string	"_IO_save_end"
.LASF183:
	.string	"symtab"
.LASF124:
	.string	"e_phentsize"
.LASF146:
	.string	"sh_size"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF208:
	.string	"stderr"
.LASF200:
	.string	"bswap_phdr64"
.LASF23:
	.string	"_IO_save_base"
.LASF92:
	.string	"a_bss"
.LASF31:
	.string	"_cur_column"
.LASF145:
	.string	"sh_offset"
.LASF41:
	.string	"_mode"
.LASF149:
	.string	"sh_addralign"
.LASF96:
	.string	"a_drsize"
.LASF171:
	.string	"ehdr"
.LASF182:
	.string	"load_symbols32"
.LASF2:
	.string	"long int"
.LASF188:
	.string	"bswap_shdr32"
.LASF45:
	.string	"_IO_marker"
.LASF214:
	.string	"/home/remco/Projects/Argos/src/loader.c"
.LASF4:
	.string	"short unsigned int"
.LASF95:
	.string	"a_trsize"
.LASF57:
	.string	"BlockDriverState"
.LASF112:
	.string	"st_shndx"
.LASF175:
	.string	"high"
.LASF134:
	.string	"p_paddr"
.LASF151:
	.string	"elf64_shdr"
.LASF116:
	.string	"e_type"
.LASF184:
	.string	"strtab"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF83:
	.string	"ih_arch"
.LASF115:
	.string	"e_ident"
.LASF76:
	.string	"ih_hcrc"
.LASF194:
	.string	"bswap64s"
.LASF6:
	.string	"unsigned char"
.LASF176:
	.string	"data"
.LASF127:
	.string	"e_shnum"
.LASF168:
	.string	"fail"
.LASF136:
	.string	"p_memsz"
.LASF144:
	.string	"sh_addr"
.LASF177:
	.string	"bswap_ehdr32"
.LASF212:
	.string	"drives_table"
.LASF160:
	.string	"load_elf"
.LASF100:
	.string	"Elf32_Word"
.LASF163:
	.string	"lowaddr"
.LASF180:
	.string	"bswap32s"
.LASF43:
	.string	"_IO_lock_t"
.LASF58:
	.string	"syminfo"
.LASF210:
	.string	"syminfos"
.LASF203:
	.string	"load_uboot"
.LASF155:
	.string	"filename"
.LASF60:
	.string	"disas_symtab"
.LASF84:
	.string	"ih_type"
.LASF15:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"double"
.LASF90:
	.string	"a_text"
.LASF48:
	.string	"_pos"
.LASF206:
	.string	"stdin"
.LASF78:
	.string	"ih_size"
.LASF207:
	.string	"stdout"
.LASF26:
	.string	"_markers"
.LASF86:
	.string	"ih_name"
.LASF193:
	.string	"bswap_ehdr64"
.LASF169:
	.string	"load_at"
.LASF126:
	.string	"e_shentsize"
.LASF148:
	.string	"sh_info"
.LASF70:
	.string	"DriveInfo"
.LASF153:
	.string	"get_image_size"
.LASF166:
	.string	"host_data_order"
.LASF42:
	.string	"_unused2"
.LASF114:
	.string	"elf32_hdr"
.LASF198:
	.string	"bswap_shdr64"
.LASF167:
	.string	"must_swab"
.LASF69:
	.string	"BlockInterfaceType"
.LASF29:
	.string	"_flags2"
.LASF109:
	.string	"st_size"
.LASF17:
	.string	"_IO_read_base"
.LASF135:
	.string	"p_filesz"
.LASF71:
	.string	"bdrv"
.LASF30:
	.string	"_old_offset"
.LASF142:
	.string	"sh_type"
.LASF75:
	.string	"ih_magic"
.LASF119:
	.string	"e_entry"
.LASF102:
	.string	"Elf64_Half"
.LASF97:
	.string	"Elf32_Addr"
.LASF3:
	.string	"long long int"
.LASF141:
	.string	"sh_name"
.LASF67:
	.string	"IF_MTD"
.LASF98:
	.string	"Elf32_Half"
.LASF99:
	.string	"Elf32_Off"
.LASF105:
	.string	"Elf64_Xword"
.LASF20:
	.string	"_IO_write_end"
.LASF215:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF156:
	.string	"addr"
.LASF202:
	.string	"bswap_sym64"
.LASF137:
	.string	"p_flags"
.LASF21:
	.string	"_IO_buf_base"
.LASF103:
	.string	"Elf64_Off"
.LASF211:
	.string	"nb_drives"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF213:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF130:
	.string	"elf32_phdr"
.LASF143:
	.string	"sh_flags"
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
.LASF190:
	.string	"find_section32"
.LASF14:
	.string	"_flags"
.LASF128:
	.string	"e_shstrndx"
.LASF201:
	.string	"bswap_sym32"
.LASF192:
	.string	"load_elf64"
.LASF187:
	.string	"nsyms"
.LASF154:
	.string	"load_image"
.LASF61:
	.string	"disas_strtab"
.LASF150:
	.string	"sh_entsize"
.LASF88:
	.string	"exec"
.LASF77:
	.string	"ih_time"
.LASF72:
	.string	"type"
.LASF113:
	.string	"elf64_sym"
.LASF62:
	.string	"next"
.LASF56:
	.string	"long double"
.LASF161:
	.string	"virt_to_phys_addend"
.LASF195:
	.string	"bswap64"
.LASF35:
	.string	"_offset"
.LASF122:
	.string	"e_flags"
.LASF152:
	.string	"size"
.LASF186:
	.string	"syms"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF50:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF93:
	.string	"a_syms"
.LASF181:
	.string	"bswap32"
.LASF27:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF196:
	.string	"load_symbols64"
.LASF120:
	.string	"e_phoff"
.LASF133:
	.string	"p_vaddr"
.LASF157:
	.string	"load_aout"
.LASF178:
	.string	"bswap16s"
.LASF59:
	.string	"disas_num_syms"
.LASF110:
	.string	"st_info"
.LASF91:
	.string	"a_data"
.LASF132:
	.string	"p_offset"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF65:
	.string	"IF_FLOPPY"
.LASF165:
	.string	"data_order"
.LASF11:
	.string	"__off64_t"
.LASF68:
	.string	"IF_SD"
.LASF22:
	.string	"_IO_buf_end"
.LASF106:
	.string	"elf32_sym"
.LASF199:
	.string	"find_section64"
.LASF205:
	.string	"bswap_uboot_header"
.LASF53:
	.string	"target_ulong"
.LASF104:
	.string	"Elf64_Word"
.LASF179:
	.string	"bswap16"
.LASF8:
	.string	"short int"
.LASF173:
	.string	"total_size"
.LASF52:
	.string	"uint64_t"
.LASF139:
	.string	"elf64_phdr"
.LASF32:
	.string	"_vtable_offset"
.LASF138:
	.string	"p_align"
.LASF63:
	.string	"IF_IDE"
.LASF125:
	.string	"e_phnum"
.LASF107:
	.string	"st_name"
.LASF162:
	.string	"pentry"
.LASF174:
	.string	"mem_size"
.LASF129:
	.string	"elf64_hdr"
.LASF80:
	.string	"ih_ep"
.LASF73:
	.string	"unit"
.LASF74:
	.string	"uboot_image_header"
.LASF16:
	.string	"_IO_read_end"
.LASF189:
	.string	"shdr"
.LASF121:
	.string	"e_shoff"
.LASF123:
	.string	"e_ehsize"
.LASF51:
	.string	"uint32_t"
.LASF66:
	.string	"IF_PFLASH"
.LASF147:
	.string	"sh_link"
.LASF28:
	.string	"_fileno"
.LASF197:
	.string	"syms32"
.LASF117:
	.string	"e_machine"
.LASF204:
	.string	"is_linux"
.LASF54:
	.string	"float"
.LASF158:
	.string	"magic"
.LASF172:
	.string	"phdr"
.LASF87:
	.string	"uboot_image_header_t"
.LASF131:
	.string	"p_type"
.LASF19:
	.string	"_IO_write_ptr"
.LASF85:
	.string	"ih_comp"
.LASF12:
	.string	"int64_t"
.LASF79:
	.string	"ih_load"
.LASF159:
	.string	"offset"
.LASF94:
	.string	"a_entry"
.LASF140:
	.string	"elf32_shdr"
.LASF82:
	.string	"ih_os"
.LASF209:
	.string	"phys_ram_dirty"
.LASF164:
	.string	"highaddr"
.LASF64:
	.string	"IF_SCSI"
.LASF118:
	.string	"e_version"
.LASF89:
	.string	"a_info"
.LASF191:
	.string	"bswap_phdr32"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
