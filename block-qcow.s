	.file	"block-qcow.c"
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
	.string	"qcow"
.globl bdrv_qcow
	.data
	.align 32
	.type	bdrv_qcow, @object
	.size	bdrv_qcow, 272
bdrv_qcow:
	.quad	.LC0
	.long	776
	.zero	4
	.quad	qcow_probe
	.quad	qcow_open
	.quad	0
	.quad	0
	.quad	qcow_close
	.quad	qcow_create
	.quad	qcow_flush
	.quad	qcow_is_allocated
	.quad	qcow_set_key
	.quad	qcow_make_empty
	.quad	qcow_aio_read
	.quad	qcow_aio_write
	.quad	qcow_aio_cancel
	.long	80
	.zero	44
	.quad	qcow_write_compressed
	.zero	32
	.quad	qcow_get_info
	.zero	56
	.text
	.p2align 4,,15
	.type	qcow_probe, @function
qcow_probe:
.LFB97:
	.file 1 "block-qcow.c"
	.loc 1 81 0
	.loc 1 84 0
	cmpl	$47, %esi
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
	cmpl	$1363560955, %eax
	je	.L13
.L2:
	.loc 1 89 0
	xorl	%edx, %edx
.L1:
	.loc 1 90 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L13:
.LBB7:
	.loc 2 120 0
	movl	4(%rdi), %eax
.LBE7:
	.loc 1 87 0
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
	decl	%eax
	je	.L1
	.loc 1 89 0
	xorl	%edx, %edx
	jmp	.L1
.LFE97:
	.size	qcow_probe, .-qcow_probe
	.p2align 4,,15
	.type	qcow_open, @function
qcow_open:
.LFB98:
	.loc 1 93 0
	pushq	%r12
.LCFI0:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI1:
	pushq	%rbx
.LCFI2:
	subq	$48, %rsp
.LCFI3:
	.loc 1 94 0
	movq	56(%rdi), %rbp
	.loc 1 98 0
	movq	%rbp, %rdi
	call	bdrv_file_open
	.loc 1 99 0
	testl	%eax, %eax
	js	.L14
	.loc 1 101 0
	movq	(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rsp, %rdx
	movl	$48, %ecx
	call	bdrv_pread
	cmpl	$48, %eax
	jne	.L82
.LBB13:
.LBB14:
.LBB15:
	.loc 2 52 0
	movl	(%rsp), %eax
.LBE15:
.LBE14:
.LBE13:
.LBB16:
.LBB17:
.LBB18:
	.loc 2 57 0
	movq	24(%rsp), %rcx
.LBE18:
.LBE17:
.LBE16:
.LBB19:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE23:
.LBE22:
.LBE21:
.LBE20:
.LBE19:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
.LBB28:
	.loc 2 58 0
#APP
	bswap %rcx
#NO_APP
.LBE28:
.LBE27:
.LBE26:
.LBE25:
.LBE24:
.LBB29:
.LBB30:
	.loc 2 52 0
	movl	%eax, (%rsp)
.LBE30:
.LBE29:
.LBB31:
.LBB32:
.LBB33:
	movl	36(%rsp), %edx
.LBE33:
.LBE32:
.LBE31:
.LBB34:
.LBB35:
.LBB36:
	movl	4(%rsp), %eax
.LBE36:
.LBE35:
.LBE34:
.LBB37:
.LBB38:
	.loc 2 57 0
	movq	%rcx, 24(%rsp)
.LBE38:
.LBE37:
.LBB39:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBE39:
.LBB44:
.LBB45:
.LBB46:
.LBB47:
.LBB48:
#APP
	bswap %edx
#NO_APP
.LBE48:
.LBE47:
.LBE46:
.LBE45:
.LBE44:
.LBB49:
.LBB50:
	.loc 2 52 0
	movl	%eax, 4(%rsp)
.LBE50:
.LBE49:
.LBB51:
.LBB52:
.LBB53:
	.loc 2 57 0
	movq	8(%rsp), %rax
.LBB54:
.LBB55:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE55:
.LBE54:
.LBE53:
	.loc 2 57 0
	movq	%rax, 8(%rsp)
.LBE52:
.LBE51:
.LBB56:
.LBB57:
.LBB58:
	.loc 2 52 0
	movl	16(%rsp), %eax
.LBB59:
.LBB60:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE60:
.LBE59:
.LBE58:
	.loc 2 52 0
	movl	%eax, 16(%rsp)
.LBE57:
.LBE56:
.LBB61:
.LBB62:
.LBB63:
	movl	20(%rsp), %eax
.LBB64:
.LBB65:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE65:
.LBE64:
.LBE63:
	.loc 2 52 0
	movl	%eax, 20(%rsp)
.LBE62:
.LBE61:
.LBB66:
.LBB67:
.LBB68:
	.loc 2 57 0
	movq	40(%rsp), %rax
.LBB69:
.LBB70:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE70:
.LBE69:
.LBE68:
	.loc 2 57 0
	movq	%rax, 40(%rsp)
.LBE67:
.LBE66:
	.loc 1 112 0
	movabsq	$5658528251, %rax
	cmpq	%rax, (%rsp)
.LBB71:
.LBB72:
	.loc 2 52 0
	movl	%edx, 36(%rsp)
.LBE72:
.LBE71:
	.loc 1 112 0
	je	.L84
.L82:
	movq	48(%rbp), %rdi
.L17:
	.loc 1 167 0
	call	qemu_free
	.loc 1 168 0
	movq	56(%rbp), %rdi
	call	qemu_free
	.loc 1 169 0
	movq	256(%rbp), %rdi
	call	qemu_free
	.loc 1 170 0
	movq	264(%rbp), %rdi
	call	qemu_free
	.loc 1 171 0
	movq	(%rbp), %rdi
	call	bdrv_delete
	.loc 1 172 0
	movl	$-1, %eax
.L14:
	.loc 1 173 0
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L84:
	.loc 1 114 0
	cmpq	$1, %rcx
	jbe	.L82
	cmpb	$8, 32(%rsp)
	jbe	.L82
	.loc 1 116 0
	cmpl	$1, %edx
	.p2align 4,,4
	ja	.L82
	.loc 1 119 0
	testl	%edx, %edx
	.loc 1 118 0
	movl	%edx, 284(%rbp)
	.loc 1 119 0
	jne	.L85
.L54:
	.loc 1 121 0
	movzbl	32(%rsp), %ecx
	.loc 1 122 0
	movl	$1, %edx
	.loc 1 127 0
	movl	$1, %edi
	.loc 1 122 0
	movl	%edx, %eax
	sall	%cl, %eax
	.loc 1 121 0
	movl	%ecx, 8(%rbp)
	.loc 1 123 0
	subl	$9, %ecx
	.loc 1 122 0
	movl	%eax, 12(%rbp)
	.loc 1 123 0
	movl	%edx, %eax
	sall	%cl, %eax
	movl	%eax, 16(%rbp)
	.loc 1 124 0
	movzbl	33(%rsp), %ecx
	.loc 1 125 0
	sall	%cl, %edx
	.loc 1 124 0
	movl	%ecx, 20(%rbp)
	.loc 1 127 0
	movl	$63, %ecx
	.loc 1 125 0
	movl	%edx, 24(%rbp)
	.loc 1 126 0
	movq	24(%rsp), %rax
	.loc 1 127 0
	movq	%rdi, %rdx
	.loc 1 126 0
	shrq	$9, %rax
	movq	%rax, (%r12)
	.loc 1 127 0
	movl	8(%rbp), %eax
	subl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rcx
	decq	%rcx
	movq	%rcx, 32(%rbp)
	.loc 1 130 0
	movl	%eax, %ecx
	addl	20(%rbp), %ecx
	.loc 1 131 0
	salq	%cl, %rdi
	addq	24(%rsp), %rdi
	decq	%rdi
	shrq	%cl, %rdi
	movl	%edi, 28(%rbp)
	.loc 1 133 0
	movq	40(%rsp), %rax
	.loc 1 134 0
	movslq	%edi,%rdi
	salq	$3, %rdi
	.loc 1 133 0
	movq	%rax, 40(%rbp)
	.loc 1 134 0
	call	qemu_malloc
	.loc 1 135 0
	testq	%rax, %rax
	.loc 1 134 0
	movq	%rax, %rdi
	movq	%rax, 48(%rbp)
	.loc 1 135 0
	je	.L17
	.loc 1 137 0
	movslq	28(%rbp),%rcx
	movq	40(%rbp), %rsi
	movq	%rax, %rdx
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pread
	movl	28(%rbp), %esi
	cltq
	movslq	%esi,%rdx
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L82
	.loc 1 140 0
	xorl	%ecx, %ecx
	cmpl	$0, %esi
	jmp	.L83
	.p2align 4,,7
.L86:
.LBB73:
	.loc 2 121 0
	movq	48(%rbp), %rdx
	movslq	%ecx,%rax
.LBE73:
	.loc 1 140 0
	incl	%ecx
.LBB74:
	.loc 2 121 0
	leaq	(%rdx,%rax,8), %rax
.LBB75:
.LBB76:
	.loc 2 57 0
	movq	(%rax), %rdx
.LBB77:
.LBB78:
	.loc 2 58 0
#APP
	bswap %rdx
#NO_APP
.LBE78:
.LBE77:
.LBE76:
	.loc 2 57 0
	movq	%rdx, (%rax)
.LBE75:
.LBE74:
	.loc 1 140 0
	cmpl	%ecx, 28(%rbp)
.L83:
	jg	.L86
	.loc 1 144 0
	movslq	24(%rbp),%rdi
	salq	$7, %rdi
	call	qemu_malloc
	.loc 1 145 0
	testq	%rax, %rax
	.loc 1 144 0
	movq	%rax, 56(%rbp)
	.loc 1 145 0
	je	.L82
	.loc 1 147 0
	movslq	12(%rbp),%rdi
	call	qemu_malloc
	.loc 1 148 0
	testq	%rax, %rax
	.loc 1 147 0
	movq	%rax, 256(%rbp)
	.loc 1 148 0
	je	.L82
	.loc 1 150 0
	movslq	12(%rbp),%rdi
	call	qemu_malloc
	.loc 1 151 0
	testq	%rax, %rax
	.loc 1 150 0
	movq	%rax, 264(%rbp)
	.loc 1 151 0
	je	.L82
	.loc 1 153 0
	movq	$-1, 272(%rbp)
	.loc 1 156 0
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L68
	.loc 1 157 0
	movl	16(%rsp), %ebx
	.loc 1 159 0
	movl	$1023, %eax
	.loc 1 160 0
	movq	(%rbp), %rdi
	leaq	1604(%r12), %rdx
	.loc 1 159 0
	cmpl	$1024, %ebx
	cmovge	%eax, %ebx
	.loc 1 160 0
	movl	%ebx, %ecx
	call	bdrv_pread
	cmpl	%ebx, %eax
	jne	.L82
	.loc 1 162 0
	cltq
	movb	$0, 1604(%rax,%r12)
.L68:
	.loc 1 164 0
	xorl	%eax, %eax
	jmp	.L14
	.p2align 4,,7
.L85:
	.loc 1 120 0
	movl	$1, 20(%r12)
	jmp	.L54
.LFE98:
	.size	qcow_open, .-qcow_open
	.p2align 4,,15
	.type	qcow_set_key, @function
qcow_set_key:
.LFB99:
	.loc 1 176 0
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI6:
	.loc 1 177 0
	movq	56(%rdi), %rbp
	.loc 1 182 0
	movq	%rsi, %rdi
	.loc 1 181 0
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	.loc 1 182 0
	call	strlen
	.loc 1 184 0
	cmpl	$17, %eax
	.loc 1 182 0
	movl	%eax, %esi
	.loc 1 184 0
	movl	$16, %eax
	cmovge	%eax, %esi
	.loc 1 187 0
	xorl	%ecx, %ecx
	jmp	.L97
	.p2align 4,,7
.L98:
	.loc 1 188 0
	movslq	%ecx,%rdx
	.loc 1 187 0
	incl	%ecx
	.loc 1 188 0
	movzbl	(%rdx,%rbx), %eax
	movb	%al, (%rsp,%rdx)
.L97:
	.loc 1 187 0
	cmpl	%esi, %ecx
	jl	.L98
	.loc 1 190 0
	movl	284(%rbp), %eax
	.loc 1 192 0
	leaq	288(%rbp), %rdx
	movl	$128, %esi
	movq	%rsp, %rdi
	.loc 1 190 0
	movl	%eax, 280(%rbp)
	.loc 1 192 0
	call	AES_set_encrypt_key
	testl	%eax, %eax
	.loc 1 193 0
	movl	$-1, %edx
	.loc 1 192 0
	jne	.L87
	.loc 1 194 0
	leaq	532(%rbp), %rdx
	movl	$128, %esi
	movq	%rsp, %rdi
	call	AES_set_decrypt_key
	.loc 1 195 0
	cmpl	$1, %eax
	sbbl	%edx, %edx
	notl	%edx
.L87:
	.loc 1 215 0
	addq	$24, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
.LFE99:
	.size	qcow_set_key, .-qcow_set_key
	.p2align 4,,15
	.type	encrypt_sectors, @function
encrypt_sectors:
.LFB100:
	.loc 1 224 0
	movq	%rbx, -48(%rsp)
.LCFI7:
	movq	%rbp, -40(%rsp)
.LCFI8:
	movq	%rcx, %rbx
	movq	%r12, -32(%rsp)
.LCFI9:
	movq	%r13, -24(%rsp)
.LCFI10:
	movq	%rsi, %r12
	movq	%r14, -16(%rsp)
.LCFI11:
	movq	%r15, -8(%rsp)
.LCFI12:
	movq	%rdx, %rbp
	subq	$72, %rsp
.LCFI13:
	.loc 1 224 0
	movl	%r8d, %r14d
	movl	%r9d, %r15d
	.loc 1 231 0
	xorl	%r13d, %r13d
	jmp	.L107
	.p2align 4,,7
.L108:
	.loc 1 234 0
	movq	80(%rsp), %rcx
	leaq	0(%rsp), %r8
	.loc 2 125 0
	movq	%r12, (%rsp)
	.loc 1 234 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movl	%r15d, %r9d
	movl	$512, %edx
	.loc 1 236 0
	incq	%r12
	.loc 1 237 0
	addq	$512, %rbx
	.loc 1 238 0
	addq	$512, %rbp
	.loc 1 231 0
	incl	%r13d
	.loc 1 233 0
	movq	$0, 8(%rsp)
	.loc 1 234 0
	call	AES_cbc_encrypt
.L107:
	.loc 1 231 0
	cmpl	%r14d, %r13d
	jl	.L108
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
.LFE100:
	.size	encrypt_sectors, .-encrypt_sectors
	.section	.rodata.str1.1
.LC1:
	.string	"1.2.3.3"
	.text
	.p2align 4,,15
	.type	decompress_cluster, @function
decompress_cluster:
.LFB104:
	.loc 1 425 0
	movq	%rbp, -40(%rsp)
.LCFI14:
	movq	%rbx, -48(%rsp)
.LCFI15:
	movq	%rdi, %rbp
	movq	%r12, -32(%rsp)
.LCFI16:
	movq	%r13, -24(%rsp)
.LCFI17:
	movq	%r14, -16(%rsp)
.LCFI18:
	movq	%r15, -8(%rsp)
.LCFI19:
	subq	$184, %rsp
.LCFI20:
	.loc 1 429 0
	movq	32(%rdi), %r13
	andq	%rsi, %r13
	.loc 1 430 0
	cmpq	%r13, 272(%rdi)
	je	.L110
	.loc 1 431 0
	movl	$63, %ecx
	subl	8(%rdi), %ecx
	.loc 1 432 0
	movl	12(%rdi), %eax
	.loc 1 431 0
	movq	%rsi, %rbx
	.loc 1 433 0
	movq	264(%rdi), %rdx
	movq	(%rdi), %rdi
	movq	%r13, %rsi
	.loc 1 432 0
	decl	%eax
	.loc 1 431 0
	shrq	%cl, %rbx
	.loc 1 432 0
	andl	%eax, %ebx
	.loc 1 433 0
	movl	%ebx, %ecx
	call	bdrv_pread
	movl	%eax, %r12d
	.loc 1 435 0
	movl	$-1, %eax
	.loc 1 434 0
	cmpl	%ebx, %r12d
	jne	.L109
.LBB79:
	.loc 1 399 0
	movl	12(%rbp), %eax
.LBB80:
	.loc 1 400 0
	leaq	16(%rsp), %r14
	.loc 1 403 0
	xorl	%esi, %esi
	movl	$112, %edx
.LBE80:
	.loc 1 399 0
	movq	256(%rbp), %r15
.LBB81:
	.loc 1 403 0
	movq	%r14, %rdi
.LBE81:
	.loc 1 399 0
	movl	%eax, 12(%rsp)
	movq	264(%rbp), %rbx
.LBB82:
	.loc 1 403 0
	call	memset
	.loc 1 408 0
	movl	12(%rsp), %eax
	.loc 1 410 0
	movl	$112, %ecx
	movl	$.LC1, %edx
	movl	$-12, %esi
	movq	%r14, %rdi
	.loc 1 405 0
	movq	%rbx, 16(%rsp)
	.loc 1 406 0
	movl	%r12d, 24(%rsp)
	.loc 1 407 0
	movq	%r15, 40(%rsp)
	.loc 1 408 0
	movl	%eax, 48(%rsp)
	.loc 1 410 0
	call	inflateInit2_
	.loc 1 411 0
	testl	%eax, %eax
	je	.L118
.L117:
.LBE82:
.LBE79:
	.loc 1 438 0
	movl	$-1, %eax
.L109:
	.loc 1 443 0
	movq	136(%rsp), %rbx
	movq	144(%rsp), %rbp
	movq	152(%rsp), %r12
	movq	160(%rsp), %r13
	movq	168(%rsp), %r14
	movq	176(%rsp), %r15
	addq	$184, %rsp
	ret
.L115:
.LBB83:
.LBB84:
	.loc 1 420 0
	movq	%r14, %rdi
	call	inflateEnd
.LBE84:
.LBE83:
	.loc 1 440 0
	movq	%r13, 272(%rbp)
	.p2align 4,,7
.L110:
	.loc 1 442 0
	xorl	%eax, %eax
	jmp	.L109
	.p2align 4,,7
.L118:
.LBB85:
.LBB86:
	.loc 1 413 0
	movl	$4, %esi
	movq	%r14, %rdi
	call	inflate
	movl	%eax, %ecx
	.loc 1 414 0
	movq	40(%rsp), %rax
	movl	%eax, %esi
	subl	%r15d, %esi
	.loc 1 415 0
	cmpl	$1, %ecx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$-5, %ecx
	setne	%al
	testl	%edx, %eax
	jne	.L116
	cmpl	12(%rsp), %esi
	je	.L115
.L116:
	.loc 1 417 0
	movq	%r14, %rdi
	call	inflateEnd
	.p2align 4,,3
	jmp	.L117
.LBE86:
.LBE85:
.LFE104:
	.size	decompress_cluster, .-decompress_cluster
	.p2align 4,,15
	.type	get_cluster_offset, @function
get_cluster_offset:
.LFB101:
	.loc 1 259 0
	pushq	%r15
.LCFI21:
	movl	%edx, %r15d
	pushq	%r14
.LCFI22:
	movq	%rsi, %r14
	.loc 1 266 0
	movq	%r14, %rax
	.loc 1 259 0
	pushq	%r13
.LCFI23:
	pushq	%r12
.LCFI24:
	pushq	%rbp
.LCFI25:
	pushq	%rbx
.LCFI26:
	subq	$56, %rsp
.LCFI27:
	.loc 1 259 0
	movl	%ecx, 44(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%r9d, 36(%rsp)
	.loc 1 260 0
	movq	56(%rdi), %rbp
	.loc 1 268 0
	xorl	%edi, %edi
	.loc 1 266 0
	movl	20(%rbp), %esi
	movl	%esi, %ecx
	addl	8(%rbp), %ecx
	shrq	%cl, %rax
	.loc 1 267 0
	movslq	%eax,%rbx
	movq	48(%rbp), %rax
	movq	(%rax,%rbx,8), %r12
	.loc 1 269 0
	testq	%r12, %r12
	jne	.L120
	.loc 1 271 0
	xorl	%ecx, %ecx
	.loc 1 270 0
	testl	%edx, %edx
	jne	.L182
.L119:
	.loc 1 379 0
	addq	$56, %rsp
	movq	%rcx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L182:
	.loc 1 273 0
	movq	(%rbp), %rdi
	call	bdrv_getlength
	movq	%rax, %r12
	.loc 1 275 0
	movl	12(%rbp), %eax
	.loc 1 279 0
	movl	$8, %ecx
	.loc 1 275 0
	movslq	%eax,%rdx
	negl	%eax
	leaq	-1(%rdx,%r12), %r12
	cltq
	.loc 1 279 0
	leaq	48(%rsp), %rdx
	.loc 1 275 0
	andq	%rax, %r12
	.loc 1 277 0
	movq	48(%rbp), %rax
	movq	%r12, (%rax,%rbx,8)
.LBB87:
.LBB88:
.LBB89:
.LBB90:
.LBB91:
	.loc 2 58 0
	movq	%r12, %rax
#APP
	bswap %rax
#NO_APP
.LBE91:
.LBE90:
.LBE89:
.LBE88:
.LBE87:
	.loc 2 121 0
	movq	%rax, 48(%rsp)
	.loc 1 279 0
	movq	40(%rbp), %rax
	movq	(%rbp), %rdi
	leaq	(%rax,%rbx,8), %rsi
	call	bdrv_pwrite
	.loc 1 281 0
	xorl	%ecx, %ecx
	.loc 1 279 0
	cmpl	$8, %eax
	jne	.L119
	movl	20(%rbp), %esi
	.loc 1 282 0
	movl	$1, %edi
	.p2align 4,,7
.L120:
	.loc 1 284 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L137:
	.loc 1 285 0
	movslq	%ebx,%rdx
	cmpq	%r12, 64(%rbp,%rdx,8)
	je	.L183
	.loc 1 284 0
	incl	%ebx
	cmpl	$15, %ebx
	jle	.L137
	.loc 1 297 0
	xorl	%r13d, %r13d
	.loc 1 298 0
	movl	$-1, %edx
	.loc 1 299 0
	xorl	%ebx, %ebx
	.p2align 4,,7
.L142:
	.loc 1 300 0
	movslq	%ebx,%rax
	movl	192(%rbp,%rax,4), %eax
	cmpl	%edx, %eax
	jae	.L140
	.loc 1 301 0
	movl	%eax, %edx
	.loc 1 302 0
	movl	%ebx, %r13d
.L140:
	.loc 1 299 0
	incl	%ebx
	cmpl	$15, %ebx
	jle	.L142
	.loc 1 305 0
	movq	56(%rbp), %rdx
	movl	%r13d, %eax
	movl	%esi, %ecx
	sall	%cl, %eax
	.loc 1 306 0
	testl	%edi, %edi
	.loc 1 305 0
	cltq
	leaq	(%rdx,%rax,8), %rax
	movq	%rax, 24(%rsp)
	.loc 1 306 0
	je	.L143
	.loc 1 307 0
	movslq	24(%rbp),%rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	salq	$3, %rdx
	call	memset
	.loc 1 308 0
	movslq	24(%rbp),%rcx
	movq	24(%rsp), %rdx
	movq	%r12, %rsi
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pwrite
.L181:
	.loc 1 312 0
	movl	24(%rbp), %esi
	cltq
	.loc 1 314 0
	xorl	%ecx, %ecx
	.loc 1 312 0
	movslq	%esi,%rdx
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L119
	.loc 1 316 0
	movslq	%r13d,%rax
	movq	%r12, 64(%rbp,%rax,8)
	.loc 1 317 0
	movl	$1, 192(%rbp,%rax,4)
.L136:
	.loc 1 319 0
	movl	8(%rbp), %ecx
	movq	%r14, %rdx
	leal	-1(%rsi), %eax
	shrq	%cl, %rdx
	andl	%edx, %eax
.LBB92:
	.loc 2 121 0
	movq	24(%rsp), %rdx
	cltq
	movq	%rax, 16(%rsp)
	movq	(%rdx,%rax,8), %r13
.LBE92:
#APP
	bswap %r13
	.loc 1 321 0
#NO_APP
	testq	%r13, %r13
	je	.L152
	movq	%r13, %rdx
	shrq	$63, %rdx
	cmpl	$1, %r15d
	sete	%al
	testl	%edx, %eax
	je	.L151
.L152:
	.loc 1 324 0
	xorl	%ecx, %ecx
	.loc 1 323 0
	testl	%r15d, %r15d
	je	.L119
	.loc 1 326 0
	testq	%r13, %r13
	js	.L184
.L154:
	.loc 1 341 0
	movq	(%rbp), %rdi
	call	bdrv_getlength
	.loc 1 342 0
	decl	%r15d
	.loc 1 341 0
	movq	%rax, %r13
	.loc 1 342 0
	je	.L185
	.loc 1 367 0
	movslq	44(%rsp),%rax
	movl	$63, %ecx
	subl	8(%rbp), %ecx
	salq	%cl, %rax
	orq	%rax, %r13
	movabsq	$-9223372036854775808, %rax
	orq	%rax, %r13
.L157:
	.loc 1 373 0
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
.LBB93:
.LBB94:
.LBB95:
.LBB96:
.LBB97:
	.loc 2 58 0
	movq	%r13, %rax
#APP
	bswap %rax
#NO_APP
.LBE97:
.LBE96:
.LBE95:
.LBE94:
.LBE93:
	.loc 2 121 0
	movq	%rax, 48(%rsp)
	.loc 1 373 0
	movq	%rax, (%rdx,%rcx,8)
	.loc 1 374 0
	movq	(%rbp), %rdi
	leaq	(%r12,%rcx,8), %rsi
	leaq	48(%rsp), %rdx
	movl	$8, %ecx
	call	bdrv_pwrite
	.loc 1 376 0
	xorl	%ecx, %ecx
	.loc 1 374 0
	cmpl	$8, %eax
	jne	.L119
.L151:
	.loc 1 379 0
	addq	$56, %rsp
	.loc 1 378 0
	movq	%r13, %rcx
	.loc 1 379 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	movq	%rcx, %rax
	ret
.L183:
	.loc 1 287 0
	movl	192(%rbp,%rdx,4), %eax
	incl	%eax
	movl	%eax, 192(%rbp,%rdx,4)
	incl	%eax
	je	.L186
.L131:
	.loc 1 292 0
	movl	%esi, %ecx
	movq	56(%rbp), %rax
	sall	%cl, %ebx
	movslq	%ebx,%rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	%rdx, 24(%rsp)
	movl	24(%rbp), %esi
	jmp	.L136
.L186:
	.loc 1 288 0
	xorl	%edx, %edx
	.p2align 4,,7
.L135:
	.loc 1 289 0
	movslq	%edx,%rax
	.loc 1 288 0
	incl	%edx
	.loc 1 289 0
	shrl	192(%rbp,%rax,4)
	.loc 1 288 0
	cmpl	$15, %edx
	jle	.L135
	jmp	.L131
.L143:
	.loc 1 312 0
	movslq	24(%rbp),%rcx
	movq	24(%rsp), %rdx
	movq	%r12, %rsi
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pread
	jmp	.L181
.L184:
	.loc 1 326 0
	movl	36(%rsp), %eax
	subl	40(%rsp), %eax
	cmpl	16(%rbp), %eax
	jge	.L154
	.loc 1 331 0
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	decompress_cluster
	.loc 1 332 0
	xorl	%ecx, %ecx
	.loc 1 331 0
	testl	%eax, %eax
	js	.L119
	.loc 1 333 0
	movq	(%rbp), %rdi
	call	bdrv_getlength
	.loc 1 334 0
	movl	12(%rbp), %ecx
	.loc 1 333 0
	movq	%rax, %r13
	.loc 1 337 0
	movq	256(%rbp), %rdx
	movq	(%rbp), %rdi
	.loc 1 334 0
	movslq	%ecx,%rax
	leaq	-1(%rax,%r13), %r13
	movl	%ecx, %eax
	negl	%eax
	cltq
	andq	%rax, %r13
	.loc 1 337 0
	movq	%r13, %rsi
	call	bdrv_pwrite
	cmpl	12(%rbp), %eax
	.loc 1 339 0
	movq	$-1, %rcx
	.loc 1 337 0
	je	.L157
	jmp	.L119
	.p2align 4,,7
.L185:
	.loc 1 344 0
	movl	12(%rbp), %eax
	.loc 1 346 0
	movq	(%rbp), %rdi
	.loc 1 344 0
	movslq	%eax,%rsi
	negl	%eax
	leaq	-1(%rsi,%r13), %r13
	cltq
	andq	%rax, %r13
	.loc 1 346 0
	addq	%r13, %rsi
	call	bdrv_truncate
	.loc 1 349 0
	movl	280(%rbp), %eax
	testl	%eax, %eax
	je	.L157
	movl	36(%rsp), %eax
	subl	40(%rsp), %eax
	cmpl	16(%rbp), %eax
	jge	.L157
.LBB98:
	.loc 1 352 0
	movl	12(%rbp), %eax
	.loc 1 353 0
	movq	264(%rbp), %rdi
	xorl	%esi, %esi
	movl	$512, %edx
	.loc 1 354 0
	xorl	%ebx, %ebx
	.loc 1 352 0
	decl	%eax
	.loc 1 353 0
	addq	$512, %rdi
	.loc 1 352 0
	notl	%eax
	movslq	%eax,%r15
	.loc 1 353 0
	call	memset
	.loc 1 354 0
	movl	16(%rbp), %ecx
	.loc 1 352 0
	andq	%r14, %r15
	shrq	$9, %r15
	.loc 1 354 0
	cmpl	$0, %ecx
	jle	.L157
	leaq	288(%rbp), %r14
	jmp	.L165
.L162:
	incl	%ebx
	cmpl	%ebx, %ecx
	jle	.L157
.L165:
	.loc 1 355 0
	cmpl	40(%rsp), %ebx
	setl	%dl
	cmpl	36(%rsp), %ebx
	setge	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L162
	.loc 1 356 0
	movq	264(%rbp), %rdx
	movslq	%ebx,%rsi
	movl	$1, %r9d
	addq	%r15, %rsi
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%r14, (%rsp)
	leaq	512(%rdx), %rcx
	call	encrypt_sectors
	.loc 1 360 0
	movl	%ebx, %esi
	movq	264(%rbp), %rdx
	movq	(%rbp), %rdi
	sall	$9, %esi
	movl	$512, %ecx
	movslq	%esi,%rsi
	addq	%r13, %rsi
	call	bdrv_pwrite
	cmpl	$512, %eax
	jne	.L180
	movl	16(%rbp), %ecx
	jmp	.L162
.L180:
	.loc 1 362 0
	movq	$-1, %rcx
	.p2align 4,,5
	jmp	.L119
.LBE98:
.LFE101:
	.size	get_cluster_offset, .-get_cluster_offset
	.p2align 4,,15
	.type	qcow_is_allocated, @function
qcow_is_allocated:
.LFB102:
	.loc 1 383 0
	movq	%rbx, -32(%rsp)
.LCFI28:
	movq	%r12, -24(%rsp)
.LCFI29:
	movq	%rsi, %rbx
	movq	%r13, -16(%rsp)
.LCFI30:
	movq	%r14, -8(%rsp)
.LCFI31:
	subq	$40, %rsp
.LCFI32:
	.loc 1 384 0
	movq	56(%rdi), %r12
	.loc 1 383 0
	movl	%edx, %r13d
	movq	%rcx, %r14
	.loc 1 388 0
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	salq	$9, %rsi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	call	get_cluster_offset
	.loc 1 389 0
	movl	16(%r12), %edx
	.loc 1 395 0
	movq	16(%rsp), %r12
	.loc 1 389 0
	leal	-1(%rdx), %ecx
	andl	%ebx, %ecx
	.loc 1 395 0
	movq	8(%rsp), %rbx
	.loc 1 390 0
	subl	%ecx, %edx
	.loc 1 392 0
	cmpl	%r13d, %edx
	cmovg	%r13d, %edx
	.loc 1 394 0
	testq	%rax, %rax
	.loc 1 395 0
	movq	24(%rsp), %r13
	.loc 1 393 0
	movl	%edx, (%r14)
	.loc 1 395 0
	movq	32(%rsp), %r14
	.loc 1 394 0
	setne	%al
	movzbl	%al, %eax
	.loc 1 395 0
	addq	$40, %rsp
	ret
.LFE102:
	.size	qcow_is_allocated, .-qcow_is_allocated
	.p2align 4,,15
	.type	qcow_aio_read_cb, @function
qcow_aio_read_cb:
.LFB106:
	.loc 1 537 0
	pushq	%r14
.LCFI33:
	movl	%esi, %r14d
	pushq	%r13
.LCFI34:
	pushq	%r12
.LCFI35:
	pushq	%rbp
.LCFI36:
	pushq	%rbx
.LCFI37:
	movq	%rdi, %rbx
	subq	$16, %rsp
.LCFI38:
	.loc 1 539 0
	movq	(%rdi), %r13
	.loc 1 544 0
	testl	%esi, %esi
	.loc 1 540 0
	movq	56(%r13), %r12
	.loc 1 543 0
	movq	$0, 72(%rdi)
	.loc 1 544 0
	js	.L191
.L192:
	.p2align 4,,7
.L216:
	.loc 1 553 0
	cmpq	$0, 56(%rbx)
	je	.L194
.L221:
	.loc 1 555 0
	jl	.L194
	.loc 1 558 0
	movl	280(%r12), %edx
	testl	%edx, %edx
	.p2align 4,,2
	jne	.L218
.L194:
	.loc 1 565 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 566 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 565 0
	subl	%eax, %edx
	.loc 1 567 0
	sall	$9, %eax
	.loc 1 565 0
	movl	%edx, 48(%rbx)
	.loc 1 567 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 569 0
	testl	%edx, %edx
	.loc 1 566 0
	movq	%rsi, 32(%rbx)
	.loc 1 569 0
	je	.L219
.L198:
	.loc 1 577 0
	salq	$9, %rsi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	get_cluster_offset
	movq	%rax, %rdi
	movq	%rax, 56(%rbx)
	.loc 1 579 0
	movl	16(%r12), %eax
	movq	32(%rbx), %rsi
	.loc 1 581 0
	movl	48(%rbx), %ecx
	.loc 1 579 0
	leal	-1(%rax), %ebp
	.loc 1 580 0
	movl	%eax, %r10d
	.loc 1 579 0
	andl	%esi, %ebp
	.loc 1 580 0
	subl	%ebp, %r10d
	.loc 1 581 0
	cmpl	%ecx, %r10d
	jle	.L210
	.loc 1 582 0
	movl	%ecx, %r10d
.L210:
	.loc 1 584 0
	testq	%rdi, %rdi
	movl	%r10d, 52(%rbx)
	jne	.L200
	.loc 1 585 0
	movq	2640(%r13), %rdi
	testq	%rdi, %rdi
	jne	.L220
	.loc 1 593 0
	movq	40(%rbx), %rdi
	sall	$9, %r10d
	xorl	%esi, %esi
	movslq	%r10d,%rdx
	call	memset
	.loc 1 553 0
	cmpq	$0, 56(%rbx)
	jne	.L221
	.loc 1 565 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 566 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 565 0
	subl	%eax, %edx
	.loc 1 567 0
	sall	$9, %eax
	.loc 1 565 0
	movl	%edx, 48(%rbx)
	.loc 1 567 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 569 0
	testl	%edx, %edx
	.loc 1 566 0
	movq	%rsi, 32(%rbx)
	.loc 1 569 0
	jne	.L198
.L219:
	.loc 1 571 0
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	call	*8(%rbx)
	.loc 1 614 0
	addq	$16, %rsp
	.loc 1 572 0
	movq	%rbx, %rdi
	.loc 1 614 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 1 572 0
	jmp	qemu_aio_release
	.p2align 4,,7
.L200:
	.loc 1 596 0
	jge	.L205
	.loc 1 598 0
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	decompress_cluster
	testl	%eax, %eax
	.p2align 4,,2
	js	.L191
	.loc 1 600 0
	movl	52(%rbx), %edx
	sall	$9, %ebp
	movq	40(%rbx), %rdi
	movslq	%ebp,%rsi
	addq	256(%r12), %rsi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	memcpy
	jmp	.L216
	.p2align 4,,7
.L218:
	.loc 1 559 0
	movq	40(%rbx), %rdx
	movl	52(%rbx), %r8d
	leaq	532(%r12), %rax
	movq	32(%rbx), %rsi
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rax, (%rsp)
	movq	%rdx, %rcx
	call	encrypt_sectors
	jmp	.L194
.L205:
	.loc 1 604 0
	testl	$511, %edi 
	je	.L208
	.loc 1 605 0
	movl	$-5, %r14d
.L191:
	.loc 1 546 0
	movq	16(%rbx), %rdi
	movl	%r14d, %esi
	.loc 1 571 0
	.p2align 4,,3
	call	*8(%rbx)
	.loc 1 614 0
	addq	$16, %rsp
	.loc 1 572 0
	movq	%rbx, %rdi
	.loc 1 614 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 1 572 0
	jmp	qemu_aio_release
.L220:
	.loc 1 587 0
	movq	40(%rbx), %rdx
	movq	%rbx, %r9
	movl	$qcow_aio_read_cb, %r8d
	movl	%r10d, %ecx
.L214:
	.loc 1 608 0
	call	bdrv_aio_read
	.loc 1 611 0
	testq	%rax, %rax
	.loc 1 608 0
	movq	%rax, 72(%rbx)
	.loc 1 611 0
	je	.L191
	.loc 1 614 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L208:
	.loc 1 608 0
	shrq	$9, %rdi
	movslq	%ebp,%rsi
	movq	40(%rbx), %rdx
	leaq	(%rdi,%rsi), %rsi
	movq	(%r12), %rdi
	movq	%rbx, %r9
	movl	$qcow_aio_read_cb, %r8d
	movl	%r10d, %ecx
	jmp	.L214
.LFE106:
	.size	qcow_aio_read_cb, .-qcow_aio_read_cb
	.p2align 4,,15
	.type	qcow_aio_read, @function
qcow_aio_read:
.LFB107:
	.loc 1 619 0
	movq	%rbx, -32(%rsp)
.LCFI39:
	movq	%rbp, -24(%rsp)
.LCFI40:
	movq	%rsi, %rbp
	movq	%r12, -16(%rsp)
.LCFI41:
	movq	%r13, -8(%rsp)
.LCFI42:
	movq	%rdx, %r12
	subq	$40, %rsp
.LCFI43:
	.loc 1 619 0
	movq	%r8, %rsi
	movq	%r9, %rdx
	movl	%ecx, %r13d
	.loc 1 622 0
	call	qemu_aio_get
	movq	%rax, %rbx
	.loc 1 624 0
	xorl	%eax, %eax
	.loc 1 623 0
	testq	%rbx, %rbx
	je	.L222
	.loc 1 625 0
	movq	$0, 72(%rbx)
	.loc 1 626 0
	movq	%rbp, 32(%rbx)
	.loc 1 632 0
	xorl	%esi, %esi
	.loc 1 627 0
	movq	%r12, 40(%rbx)
	.loc 1 628 0
	movl	%r13d, 48(%rbx)
	.loc 1 632 0
	movq	%rbx, %rdi
	.loc 1 629 0
	movl	$0, 52(%rbx)
	.loc 1 630 0
	movq	$0, 56(%rbx)
	.loc 1 632 0
	call	qcow_aio_read_cb
	.loc 1 633 0
	movq	%rbx, %rax
.L222:
	.loc 1 634 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE107:
	.size	qcow_aio_read, .-qcow_aio_read
	.p2align 4,,15
	.type	qcow_aio_write_cb, @function
qcow_aio_write_cb:
.LFB108:
	.loc 1 637 0
	movq	%rbx, -40(%rsp)
.LCFI44:
	movq	%r13, -16(%rsp)
.LCFI45:
	movq	%rdi, %rbx
	movq	%rbp, -32(%rsp)
.LCFI46:
	movq	%r12, -24(%rsp)
.LCFI47:
	movl	%esi, %r13d
	movq	%r14, -8(%rsp)
.LCFI48:
	subq	$56, %rsp
.LCFI49:
	.loc 1 639 0
	movq	(%rdi), %rdi
	.loc 1 647 0
	testl	%esi, %esi
	.loc 1 640 0
	movq	56(%rdi), %r14
	.loc 1 645 0
	movq	$0, 72(%rbx)
	.loc 1 647 0
	js	.L226
	.loc 1 654 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 655 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 654 0
	subl	%eax, %edx
	.loc 1 656 0
	sall	$9, %eax
	.loc 1 654 0
	movl	%edx, 48(%rbx)
	.loc 1 656 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 658 0
	testl	%edx, %edx
	.loc 1 655 0
	movq	%rsi, 32(%rbx)
	.loc 1 658 0
	je	.L238
	.loc 1 665 0
	movl	16(%r14), %eax
	leal	-1(%rax), %ebp
	andl	%esi, %ebp
	.loc 1 666 0
	subl	%ebp, %eax
	.loc 1 667 0
	cmpl	%edx, %eax
	jle	.L236
	.loc 1 668 0
	movl	%edx, %eax
.L236:
	.loc 1 669 0
	leal	(%rax,%rbp), %r9d
	salq	$9, %rsi
	xorl	%ecx, %ecx
	movl	%eax, 52(%rbx)
	movl	%ebp, %r8d
	movl	$1, %edx
	call	get_cluster_offset
	.loc 1 672 0
	testq	%rax, %rax
	.loc 1 669 0
	movq	%rax, %r12
	.loc 1 672 0
	je	.L230
	testl	$511, %eax 
	jne	.L230
	.loc 1 676 0
	movl	280(%r14), %ecx
	testl	%ecx, %ecx
	je	.L231
	.loc 1 677 0
	movq	64(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L232
	.loc 1 678 0
	movslq	12(%r14),%rdi
	call	qemu_mallocz
	.loc 1 679 0
	testq	%rax, %rax
	.loc 1 678 0
	movq	%rax, %rdx
	movq	%rax, 64(%rbx)
	.loc 1 679 0
	jne	.L232
	.loc 1 680 0
	movl	$-12, %r13d
	.p2align 4,,7
.L226:
	.loc 1 649 0
	movq	16(%rbx), %rdi
	movl	%r13d, %esi
	jmp	.L237
	.p2align 4,,7
.L238:
	.loc 1 660 0
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
.L237:
	call	*8(%rbx)
	.loc 1 661 0
	movq	%rbx, %rdi
	.loc 1 696 0
	movq	24(%rsp), %rbp
	movq	16(%rsp), %rbx
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	addq	$56, %rsp
	.loc 1 661 0
	jmp	qemu_aio_release
	.p2align 4,,7
.L230:
	.loc 1 649 0
	movq	16(%rbx), %rdi
	.loc 1 673 0
	movl	$-5, %r13d
	.loc 1 649 0
	movl	%r13d, %esi
	jmp	.L237
.L231:
	.loc 1 688 0
	movq	40(%rbx), %rdx
.L234:
	.loc 1 690 0
	shrq	$9, %r12
	movl	52(%rbx), %ecx
	movslq	%ebp,%rsi
	movq	(%r14), %rdi
	leaq	(%r12,%rsi), %rsi
	movq	%rbx, %r9
	movl	$qcow_aio_write_cb, %r8d
	call	bdrv_aio_write
	.loc 1 694 0
	testq	%rax, %rax
	.loc 1 690 0
	movq	%rax, 72(%rbx)
	.loc 1 694 0
	je	.L226
	.loc 1 696 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	addq	$56, %rsp
	ret
.L232:
	.loc 1 684 0
	movl	52(%rbx), %r8d
	movq	40(%rbx), %rcx
	leaq	288(%r14), %rax
	movq	32(%rbx), %rsi
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	call	encrypt_sectors
	.loc 1 686 0
	movq	64(%rbx), %rdx
	jmp	.L234
.LFE108:
	.size	qcow_aio_write_cb, .-qcow_aio_write_cb
	.p2align 4,,15
	.type	qcow_aio_write, @function
qcow_aio_write:
.LFB109:
	.loc 1 701 0
	movq	%rbx, -32(%rsp)
.LCFI50:
	movq	%rbp, -24(%rsp)
.LCFI51:
	movq	%rsi, %rbp
	movq	%r12, -16(%rsp)
.LCFI52:
	movq	%r13, -8(%rsp)
.LCFI53:
	subq	$40, %rsp
.LCFI54:
	.loc 1 702 0
	movq	56(%rdi), %rax
	.loc 1 701 0
	movq	%rdx, %r12
	movq	%r8, %rsi
	movq	%r9, %rdx
	movl	%ecx, %r13d
	.loc 1 705 0
	movq	$-1, 272(%rax)
	.loc 1 707 0
	call	qemu_aio_get
	movq	%rax, %rbx
	.loc 1 709 0
	xorl	%eax, %eax
	.loc 1 708 0
	testq	%rbx, %rbx
	je	.L239
	.loc 1 710 0
	movq	$0, 72(%rbx)
	.loc 1 711 0
	movq	%rbp, 32(%rbx)
	.loc 1 716 0
	xorl	%esi, %esi
	.loc 1 712 0
	movq	%r12, 40(%rbx)
	.loc 1 713 0
	movl	%r13d, 48(%rbx)
	.loc 1 716 0
	movq	%rbx, %rdi
	.loc 1 714 0
	movl	$0, 52(%rbx)
	.loc 1 716 0
	call	qcow_aio_write_cb
	.loc 1 717 0
	movq	%rbx, %rax
.L239:
	.loc 1 718 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE109:
	.size	qcow_aio_write, .-qcow_aio_write
	.p2align 4,,15
	.type	qcow_aio_cancel, @function
qcow_aio_cancel:
.LFB110:
	.loc 1 721 0
	pushq	%rbx
.LCFI55:
	.loc 1 721 0
	movq	%rdi, %rbx
	.loc 1 723 0
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L243
	.loc 1 725 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
	.p2align 4,,7
.L243:
	.loc 1 724 0
	call	bdrv_aio_cancel
	.loc 1 725 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
.LFE110:
	.size	qcow_aio_cancel, .-qcow_aio_cancel
	.p2align 4,,15
	.type	qcow_close, @function
qcow_close:
.LFB111:
	.loc 1 729 0
	pushq	%rbx
.LCFI56:
	.loc 1 730 0
	movq	56(%rdi), %rbx
	.loc 1 731 0
	movq	48(%rbx), %rdi
	call	qemu_free
	.loc 1 732 0
	movq	56(%rbx), %rdi
	call	qemu_free
	.loc 1 733 0
	movq	256(%rbx), %rdi
	call	qemu_free
	.loc 1 734 0
	movq	264(%rbx), %rdi
	call	qemu_free
	.loc 1 735 0
	movq	(%rbx), %rdi
	popq	%rbx
	jmp	bdrv_delete
.LFE111:
	.size	qcow_close, .-qcow_close
	.p2align 4,,15
	.type	qcow_create, @function
qcow_create:
.LFB112:
	.loc 1 740 0
	pushq	%r15
.LCFI57:
	.loc 1 745 0
	xorl	%eax, %eax
	.loc 1 740 0
	pushq	%r14
.LCFI58:
	pushq	%r13
.LCFI59:
	movq	%rdx, %r13
	.loc 1 745 0
	movl	$420, %edx
	.loc 1 740 0
	pushq	%r12
.LCFI60:
	pushq	%rbp
.LCFI61:
	pushq	%rbx
.LCFI62:
	movq	%rsi, %rbx
	.loc 1 745 0
	movl	$577, %esi
	.loc 1 740 0
	subq	$72, %rsp
.LCFI63:
	.loc 1 740 0
	movl	%ecx, 4(%rsp)
	.loc 1 745 0
	call	open64
	movl	%eax, %ebp
	.loc 1 747 0
	movl	$-1, %eax
	.loc 1 746 0
	testl	%ebp, %ebp
	js	.L245
	.loc 1 748 0
	leaq	16(%rsp), %r15
	xorl	%eax, %eax
	movl	$6, %ecx
	cld
	movq	%r15, %rdi
	.loc 1 753 0
	xorl	%r14d, %r14d
	.loc 1 748 0
	rep
	stosq
.LBB99:
	.loc 2 121 0
	movq	%rbx, %rax
.LBE99:
	.loc 2 120 0
	movl	$-79083951, 16(%rsp)
	movl	$16777216, 20(%rsp)
.LBB100:
	.loc 2 121 0
	salq	$9, %rax
.LBB101:
.LBB102:
.LBB103:
.LBB104:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE104:
.LBE103:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 754 0
	testq	%r13, %r13
	.loc 2 121 0
	movq	%rax, 40(%rsp)
	.loc 1 752 0
	movl	$48, %eax
	.loc 1 754 0
	je	.L259
	.loc 2 121 0
	movabsq	$3458764513820540928, %rsi
	.loc 1 756 0
	movq	%r13, %rdi
	.loc 2 121 0
	movq	%rsi, 24(%rsp)
	.loc 1 756 0
	call	strlen
	movl	%eax, %r14d
	.loc 2 120 0
	movl	$0, 36(%rsp)
	.loc 1 760 0
	movb	$9, 48(%rsp)
.LBB105:
.LBB106:
.LBB107:
.LBB108:
.LBB109:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE109:
.LBE108:
.LBE107:
.LBE106:
.LBE105:
	.loc 2 120 0
	movl	%eax, 32(%rsp)
	.loc 1 758 0
	leal	48(%r14), %eax
	.loc 1 762 0
	movb	$12, 49(%rsp)
.L272:
	.loc 1 767 0
	leal	7(%rax), %edx
	.loc 1 768 0
	movzbl	48(%rsp), %ecx
	movzbl	49(%rsp), %eax
	.loc 1 769 0
	salq	$9, %rbx
	.loc 1 767 0
	andl	$-8, %edx
	.loc 1 768 0
	addl	%eax, %ecx
	.loc 1 769 0
	movl	$1, %eax
	salq	%cl, %rax
	leaq	-1(%rbx,%rax), %rax
.LBB110:
	.loc 2 121 0
	movslq	%edx,%rbx
.LBE110:
	.loc 1 769 0
	movq	%rax, %r12
.LBB111:
.LBB112:
.LBB113:
.LBB114:
.LBB115:
	.loc 2 58 0
	movq	%rbx, %rax
.LBE115:
.LBE114:
.LBE113:
.LBE112:
.LBE111:
	.loc 1 769 0
	sarq	%cl, %r12
.LBB116:
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE120:
.LBE119:
.LBE118:
.LBE117:
.LBE116:
	.loc 1 772 0
	testb	$1, 4(%rsp)
	.loc 2 121 0
	movq	%rax, 56(%rsp)
	.loc 1 772 0
	jne	.L295
	.loc 2 120 0
	movl	$0, 52(%rsp)
.L282:
	.loc 1 779 0
	movl	$48, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	write
	.loc 1 780 0
	testq	%r13, %r13
	je	.L287
	.loc 1 781 0
	movslq	%r14d,%rdx
	movq	%r13, %rsi
	movl	%ebp, %edi
	call	write
.L287:
	.loc 1 783 0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	.loc 1 785 0
	xorl	%ebx, %ebx
	.loc 1 783 0
	call	lseek64
	.loc 1 785 0
	cmpl	%r12d, %ebx
	.loc 1 784 0
	movq	$0, 8(%rsp)
	.loc 1 785 0
	jge	.L293
	.p2align 4,,7
.L296:
	.loc 1 786 0
	leaq	8(%rsp), %rsi
	movl	$8, %edx
	movl	%ebp, %edi
	.loc 1 785 0
	incl	%ebx
	.loc 1 786 0
	call	write
	.loc 1 785 0
	cmpl	%r12d, %ebx
	jl	.L296
.L293:
	.loc 1 788 0
	movl	%ebp, %edi
	call	close
	.loc 1 789 0
	xorl	%eax, %eax
.L245:
	.loc 1 790 0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L295:
	.loc 2 120 0
	movl	$16777216, 52(%rsp)
	jmp	.L282
.L259:
	.loc 1 764 0
	movb	$12, 48(%rsp)
	.loc 1 765 0
	movb	$9, 49(%rsp)
	jmp	.L272
.LFE112:
	.size	qcow_create, .-qcow_create
	.p2align 4,,15
	.type	qcow_make_empty, @function
qcow_make_empty:
.LFB113:
	.loc 1 793 0
	pushq	%r12
.LCFI64:
	.loc 1 798 0
	xorl	%esi, %esi
	.loc 1 793 0
	pushq	%rbp
.LCFI65:
	pushq	%rbx
.LCFI66:
	.loc 1 794 0
	movq	56(%rdi), %rbp
	.loc 1 795 0
	movslq	28(%rbp),%rbx
	.loc 1 798 0
	movq	48(%rbp), %rdi
	.loc 1 795 0
	salq	$3, %rbx
	.loc 1 798 0
	movq	%rbx, %r12
	andl	$4294967288, %r12d
	movq	%r12, %rdx
	call	memset
	.loc 1 799 0
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rsi
	movl	%ebx, %ecx
	movq	(%rbp), %rdi
	call	bdrv_pwrite
	testl	%eax, %eax
	.loc 1 800 0
	movl	$-1, %edx
	.loc 1 799 0
	js	.L297
	.loc 1 801 0
	addq	40(%rbp), %r12
	movq	(%rbp), %rdi
	movq	%r12, %rsi
	call	bdrv_truncate
	.loc 1 802 0
	testl	%eax, %eax
	.loc 1 803 0
	movl	%eax, %edx
	.loc 1 802 0
	js	.L297
	.loc 1 805 0
	movslq	24(%rbp),%rdx
	movq	56(%rbp), %rdi
	xorl	%esi, %esi
	salq	$7, %rdx
	call	memset
	.loc 1 806 0
	leaq	64(%rbp), %rdi
	movl	$128, %edx
	xorl	%esi, %esi
	call	memset
	.loc 1 807 0
	leaq	192(%rbp), %rdi
	movl	$8, %ecx
	xorl	%eax, %eax
	cld
	.loc 1 809 0
	xorl	%edx, %edx
	.loc 1 807 0
	rep
	stosq
.L297:
	.loc 1 810 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	movl	%edx, %eax
	ret
.LFE113:
	.size	qcow_make_empty, .-qcow_make_empty
	.p2align 4,,15
	.type	qcow_write_compressed, @function
qcow_write_compressed:
.LFB114:
	.loc 1 816 0
	pushq	%r15
.LCFI67:
	.loc 1 824 0
	movl	$-22, %eax
	.loc 1 816 0
	pushq	%r14
.LCFI68:
	movq	%rsi, %r14
	pushq	%r13
.LCFI69:
	pushq	%r12
.LCFI70:
	pushq	%rbp
.LCFI71:
	pushq	%rbx
.LCFI72:
	subq	$168, %rsp
.LCFI73:
	.loc 1 816 0
	movq	%rdi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	.loc 1 817 0
	movq	56(%rdi), %rbp
	.loc 1 823 0
	cmpl	%ecx, 16(%rbp)
	jne	.L300
	.loc 1 826 0
	movl	12(%rbp), %edi
	movslq	%edi,%rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%edi, %eax
	cltd
	sarl	$6, %ecx
	subl	%edx, %ecx
	leal	128(%rdi,%rcx), %edi
	movslq	%edi,%rdi
	call	qemu_malloc
	movq	%rax, 24(%rsp)
	.loc 1 827 0
	cmpq	$0, 24(%rsp)
	.loc 1 828 0
	movl	$-1, %eax
	.loc 1 827 0
	je	.L300
	.loc 1 831 0
	leaq	48(%rsp), %r12
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%r12, %rdi
	call	memset
	.loc 1 832 0
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$-12, %ecx
	movl	$8, %edx
	movl	$-1, %esi
	movq	%r12, %rdi
	movl	$112, 8(%rsp)
	movq	$.LC1, (%rsp)
	call	deflateInit2_
	.loc 1 835 0
	testl	%eax, %eax
	jne	.L323
	.loc 1 840 0
	movl	12(%rbp), %eax
	.loc 1 845 0
	movl	$4, %esi
	movq	%r12, %rdi
	.loc 1 840 0
	movl	%eax, 56(%rsp)
	.loc 1 841 0
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc 1 842 0
	movl	12(%rbp), %eax
	movl	%eax, 80(%rsp)
	.loc 1 843 0
	movq	24(%rsp), %rax
	movq	%rax, 72(%rsp)
	.loc 1 845 0
	call	deflate
	.loc 1 846 0
	cmpl	$1, %eax
	.loc 1 845 0
	movl	%eax, %ebx
	.loc 1 846 0
	ja	.L324
	.loc 1 851 0
	movq	72(%rsp), %rax
	.loc 1 853 0
	movq	%r12, %rdi
	.loc 1 851 0
	movl	%eax, %r13d
	subl	24(%rsp), %r13d
	.loc 1 853 0
	call	deflateEnd
	.loc 1 855 0
	decl	%ebx
	je	.L325
.L306:
.LBB121:
	.loc 1 492 0
	movq	32(%rsp), %rax
	movq	%r14, %r15
	movq	%rax, 16(%rsp)
.LBB122:
	.loc 1 493 0
	movq	40(%rsp), %rax
.LBE122:
	.loc 1 492 0
	movl	16(%rbp), %r14d
.LBB123:
	.loc 1 493 0
	movq	56(%rax), %r13
	jmp	.L320
	.p2align 4,,7
.L326:
	.loc 1 508 0
	movq	264(%r13), %rdx
	movq	16(%rsp), %rcx
	leaq	288(%r13), %rax
	movl	$1, %r9d
	movl	%ebp, %r8d
	movq	%r15, %rsi
	movq	%r13, %rdi
	movq	%rax, (%rsp)
	.loc 1 510 0
	sall	$9, %ebx
	.loc 1 508 0
	call	encrypt_sectors
	.loc 1 510 0
	movq	264(%r13), %rdx
	.loc 1 513 0
	movq	(%r13), %rdi
	.loc 1 510 0
	movl	%ebp, %ecx
	movslq	%ebx,%rsi
	sall	$9, %ecx
	addq	%r12, %rsi
	.loc 1 513 0
	call	bdrv_pwrite
	.loc 1 515 0
	movl	%ebp, %edx
	sall	$9, %edx
	cmpl	%eax, %edx
	jne	.L316
.L327:
	.loc 1 518 0
	movslq	%ebp,%rax
	.loc 1 517 0
	subl	%ebp, %r14d
	.loc 1 518 0
	addq	%rax, %r15
	.loc 1 519 0
	movslq	%edx,%rax
	addq	%rax, 16(%rsp)
.L320:
	testl	%r14d, %r14d
	jle	.L319
	.loc 1 498 0
	movl	16(%r13), %eax
	.loc 1 502 0
	movq	40(%rsp), %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	.loc 1 498 0
	leal	-1(%rax), %ebx
	.loc 1 499 0
	movl	%eax, %ebp
	.loc 1 498 0
	andl	%r15d, %ebx
	.loc 1 499 0
	subl	%ebx, %ebp
	.loc 1 502 0
	movl	%ebx, %r8d
	.loc 1 501 0
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	.loc 1 502 0
	salq	$9, %rsi
	xorl	%ecx, %ecx
	leal	(%rbx,%rbp), %r9d
	call	get_cluster_offset
	.loc 1 505 0
	testq	%rax, %rax
	.loc 1 502 0
	movq	%rax, %r12
	.loc 1 505 0
	je	.L316
	.loc 1 507 0
	movl	280(%r13), %edi
	testl	%edi, %edi
	jne	.L326
	.loc 1 513 0
	sall	$9, %ebx
	movq	16(%rsp), %rdx
	movq	(%r13), %rdi
	movl	%ebp, %ecx
	movslq	%ebx,%rsi
	sall	$9, %ecx
	addq	%rax, %rsi
	call	bdrv_pwrite
	.loc 1 515 0
	movl	%ebp, %edx
	sall	$9, %edx
	cmpl	%eax, %edx
	je	.L327
.L316:
.LBE123:
.LBE121:
	.loc 1 868 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 869 0
	xorl	%eax, %eax
	.p2align 4,,7
.L300:
	.loc 1 870 0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L319:
.LBB124:
.LBB125:
	.loc 1 521 0
	movq	$-1, 272(%r13)
.LBE125:
.LBE124:
	.loc 1 868 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 869 0
	xorl	%eax, %eax
	jmp	.L300
.L325:
	.loc 1 855 0
	cmpl	%r13d, 12(%rbp)
	jle	.L306
	.loc 1 859 0
	movq	40(%rsp), %rdi
	salq	$9, %r14
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%r13d, %ecx
	movl	$2, %edx
	movq	%r14, %rsi
	call	get_cluster_offset
	movq	%rax, %rsi
	.loc 1 861 0
	andq	32(%rbp), %rsi
	.loc 1 862 0
	movq	24(%rsp), %rdx
	movq	(%rbp), %rdi
	movl	%r13d, %ecx
	call	bdrv_pwrite
	cmpl	%r13d, %eax
	je	.L316
.L323:
	.loc 1 863 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 864 0
	movl	$-1, %eax
	jmp	.L300
.L324:
	.loc 1 847 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 848 0
	movq	%r12, %rdi
	call	deflateEnd
	.loc 1 864 0
	movl	$-1, %eax
	jmp	.L300
.LFE114:
	.size	qcow_write_compressed, .-qcow_write_compressed
	.p2align 4,,15
	.type	qcow_flush, @function
qcow_flush:
.LFB115:
	.loc 1 873 0
	.loc 1 874 0
	movq	56(%rdi), %rax
	.loc 1 875 0
	movq	(%rax), %rdi
	jmp	bdrv_flush
.LFE115:
	.size	qcow_flush, .-qcow_flush
	.p2align 4,,15
	.type	qcow_get_info, @function
qcow_get_info:
.LFB116:
	.loc 1 879 0
	.loc 1 880 0
	movq	56(%rdi), %rax
	.loc 1 881 0
	movl	12(%rax), %eax
	movl	%eax, (%rsi)
	.loc 1 883 0
	xorl	%eax, %eax
	ret
.LFE116:
	.size	qcow_get_info, .-qcow_get_info
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
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI4-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI8-.LFB100
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI15-.LFB104
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI20-.LCFI15
	.byte	0xe
	.uleb128 0xc0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI21-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI29-.LFB102
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI33-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI40-.LFB107
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI45-.LFB108
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI49-.LCFI45
	.byte	0xe
	.uleb128 0x40
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI51-.LFB109
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI51
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI55-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI56-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI57-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI64-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI67-.LFB114
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0xe0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
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
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI4-.LFB99
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI8-.LFB100
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI10
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI15-.LFB104
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI20-.LCFI15
	.byte	0xe
	.uleb128 0xc0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI21-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x70
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI29-.LFB102
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI33-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI40-.LFB107
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI45-.LFB108
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI49-.LCFI45
	.byte	0xe
	.uleb128 0x40
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI51-.LFB109
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI51
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI55-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI56-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI57-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x80
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI64-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI67-.LFB114
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0xe0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE35:
	.file 3 "/usr/include/stdint.h"
	.file 4 "qemu-common.h"
	.file 5 "block_int.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "block.h"
	.file 8 "aes.h"
	.file 9 "/usr/include/zlib.h"
	.file 10 "/usr/include/zconf.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
	.file 14 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x2179
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF256
	.byte	0x1
	.long	.LASF257
	.long	.LASF258
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
	.byte	0xd
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xd
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x7a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xc6
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0xd6
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x2a2
	.long	.LASF44
	.byte	0xd8
	.byte	0xb
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF14
	.byte	0xc
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF15
	.byte	0xc
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0xc
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0xc
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0xc
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF19
	.byte	0xc
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF20
	.byte	0xc
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF21
	.byte	0xc
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF22
	.byte	0xc
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF23
	.byte	0xc
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF24
	.byte	0xc
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF25
	.byte	0xc
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF26
	.byte	0xc
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF27
	.byte	0xc
	.value	0x124
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF28
	.byte	0xc
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF29
	.byte	0xc
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF30
	.byte	0xc
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF31
	.byte	0xc
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF32
	.byte	0xc
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF33
	.byte	0xc
	.value	0x132
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF34
	.byte	0xc
	.value	0x136
	.long	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF35
	.byte	0xc
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF36
	.byte	0xc
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0xc
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF38
	.byte	0xc
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF39
	.byte	0xc
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xc
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF41
	.byte	0xc
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF42
	.byte	0xc
	.value	0x150
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xc
	.byte	0xb4
	.uleb128 0xa
	.long	0x2e0
	.long	.LASF45
	.byte	0x18
	.byte	0xc
	.byte	0xba
	.uleb128 0xd
	.long	.LASF46
	.byte	0xc
	.byte	0xbb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0xc
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0xc
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a9
	.uleb128 0x5
	.byte	0x8
	.long	0xd6
	.uleb128 0x8
	.long	0x2fc
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a2
	.uleb128 0x8
	.long	0x312
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x31
	.long	0x81
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0xe
	.long	0x33f
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x345
	.uleb128 0x6
	.long	0x312
	.uleb128 0x2
	.long	.LASF52
	.byte	0x4
	.byte	0x6e
	.long	0x355
	.uleb128 0x10
	.long	0x509
	.long	.LASF52
	.value	0xac0
	.byte	0x4
	.byte	0x6e
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x5d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x62
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"sg"
	.byte	0x5
	.byte	0x63
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x65
	.long	0xab4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.byte	0x66
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"drv"
	.byte	0x5
	.byte	0x68
	.long	0xaba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x69
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF62
	.byte	0x5
	.byte	0x6c
	.long	0xac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF63
	.byte	0x5
	.byte	0x6e
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.long	.LASF64
	.byte	0x5
	.byte	0x6f
	.long	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0xd
	.long	.LASF67
	.byte	0x5
	.byte	0x74
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.long	.LASF68
	.byte	0x5
	.byte	0x77
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0xd
	.long	.LASF69
	.byte	0x5
	.byte	0x7a
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0xd
	.long	.LASF70
	.byte	0x5
	.byte	0x7b
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.long	.LASF71
	.byte	0x5
	.byte	0x7c
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.long	.LASF72
	.byte	0x5
	.byte	0x7d
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xd
	.long	.LASF73
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.long	.LASF74
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.long	.LASF75
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.long	.LASF76
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xd
	.long	.LASF77
	.byte	0x5
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xd
	.long	.LASF78
	.byte	0x5
	.byte	0x83
	.long	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x84
	.long	0x87a
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x7
	.byte	0x5
	.long	0x514
	.uleb128 0x10
	.long	0x710
	.long	.LASF80
	.value	0x110
	.byte	0x7
	.byte	0x5
	.uleb128 0xd
	.long	.LASF81
	.byte	0x5
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF83
	.byte	0x5
	.byte	0x24
	.long	0x85a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF84
	.byte	0x5
	.byte	0x25
	.long	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF85
	.byte	0x5
	.byte	0x27
	.long	0x8ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF86
	.byte	0x5
	.byte	0x29
	.long	0x8d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF87
	.byte	0x5
	.byte	0x2a
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF88
	.byte	0x5
	.byte	0x2c
	.long	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF89
	.byte	0x5
	.byte	0x2d
	.long	0x8e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF90
	.byte	0x5
	.byte	0x2f
	.long	0x92c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF91
	.byte	0x5
	.byte	0x30
	.long	0x947
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF92
	.byte	0x5
	.byte	0x31
	.long	0x95d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF93
	.byte	0x5
	.byte	0x35
	.long	0x998
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF94
	.byte	0x5
	.byte	0x38
	.long	0x9c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF95
	.byte	0x5
	.byte	0x39
	.long	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF96
	.byte	0x5
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF97
	.byte	0x5
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF98
	.byte	0x5
	.byte	0x3e
	.long	0x8ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF99
	.byte	0x5
	.byte	0x40
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF100
	.byte	0x5
	.byte	0x41
	.long	0x9f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF101
	.byte	0x5
	.byte	0x42
	.long	0xa0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF102
	.byte	0x5
	.byte	0x44
	.long	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF103
	.byte	0x5
	.byte	0x47
	.long	0xa2b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF104
	.byte	0x5
	.byte	0x49
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF105
	.byte	0x5
	.byte	0x4a
	.long	0x947
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x5
	.byte	0x4c
	.long	0xa4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.long	.LASF107
	.byte	0x5
	.byte	0x4d
	.long	0xa6d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x5
	.byte	0x50
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.long	.LASF109
	.byte	0x5
	.byte	0x51
	.long	0x95d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.long	.LASF110
	.byte	0x5
	.byte	0x52
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.long	.LASF111
	.byte	0x5
	.byte	0x53
	.long	0xa88
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.long	.LASF112
	.byte	0x5
	.byte	0x56
	.long	0xaa8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.long	.LASF113
	.byte	0x5
	.byte	0x58
	.long	0x98c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x59
	.long	0xaae
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0xa
	.long	0x739
	.long	.LASF114
	.byte	0x10
	.byte	0x7
	.byte	0x14
	.uleb128 0xd
	.long	.LASF115
	.byte	0x7
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF116
	.byte	0x7
	.byte	0x18
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x7
	.byte	0x19
	.long	0x710
	.uleb128 0x10
	.long	0x7ab
	.long	.LASF117
	.value	0x198
	.byte	0x7
	.byte	0x1b
	.uleb128 0xd
	.long	.LASF118
	.byte	0x7
	.byte	0x1c
	.long	0x7ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF119
	.byte	0x7
	.byte	0x1f
	.long	0x7bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF120
	.byte	0x7
	.byte	0x20
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.long	.LASF121
	.byte	0x7
	.byte	0x21
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.long	.LASF122
	.byte	0x7
	.byte	0x22
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.long	.LASF123
	.byte	0x7
	.byte	0x23
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x8
	.long	0x7bb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0x7f
	.byte	0x0
	.uleb128 0x8
	.long	0x7cb
	.long	0x7a
	.uleb128 0x9
	.long	0x61
	.byte	0xff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF117
	.byte	0x7
	.byte	0x24
	.long	0x744
	.uleb128 0x2
	.long	.LASF124
	.byte	0x7
	.byte	0x50
	.long	0x7e1
	.uleb128 0xa
	.long	0x824
	.long	.LASF124
	.byte	0x20
	.byte	0x7
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x5
	.byte	0x88
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x5
	.byte	0x89
	.long	0x992
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x8a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x8b
	.long	0x98c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF125
	.byte	0x7
	.byte	0x51
	.long	0x82f
	.uleb128 0xe
	.long	0x840
	.byte	0x1
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0x85a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x840
	.uleb128 0x12
	.long	0x87a
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x34a
	.uleb128 0x5
	.byte	0x8
	.long	0x860
	.uleb128 0x12
	.long	0x8a5
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x312
	.uleb128 0x5
	.byte	0x8
	.long	0x886
	.uleb128 0x12
	.long	0x8d0
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8b1
	.uleb128 0xe
	.long	0x8e2
	.byte	0x1
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8d6
	.uleb128 0x12
	.long	0x907
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x6f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x8e8
	.uleb128 0x12
	.long	0x92c
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x90d
	.uleb128 0x12
	.long	0x947
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x6f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x932
	.uleb128 0x12
	.long	0x95d
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x94d
	.uleb128 0x12
	.long	0x98c
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x8a5
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7d6
	.uleb128 0x5
	.byte	0x8
	.long	0x824
	.uleb128 0x5
	.byte	0x8
	.long	0x963
	.uleb128 0x12
	.long	0x9c7
	.byte	0x1
	.long	0x98c
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.uleb128 0xf
	.long	0x33f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x992
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x99e
	.uleb128 0xe
	.long	0x9d9
	.byte	0x1
	.uleb128 0xf
	.long	0x98c
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9cd
	.uleb128 0x12
	.long	0x9f4
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9df
	.uleb128 0x12
	.long	0xa0a
	.byte	0x1
	.long	0xb4
	.uleb128 0xf
	.long	0x87a
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9fa
	.uleb128 0x12
	.long	0xa25
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa25
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x7cb
	.uleb128 0x5
	.byte	0x8
	.long	0xa10
	.uleb128 0x12
	.long	0xa46
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa46
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa25
	.uleb128 0x5
	.byte	0x8
	.long	0xa31
	.uleb128 0x12
	.long	0xa67
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0xa67
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x739
	.uleb128 0x5
	.byte	0x8
	.long	0xa52
	.uleb128 0x12
	.long	0xa88
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa73
	.uleb128 0x12
	.long	0xaa8
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x87a
	.uleb128 0xf
	.long	0x38
	.uleb128 0xf
	.long	0xac
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xa8e
	.uleb128 0x5
	.byte	0x8
	.long	0x514
	.uleb128 0x5
	.byte	0x8
	.long	0x333
	.uleb128 0x5
	.byte	0x8
	.long	0x509
	.uleb128 0x8
	.long	0xad1
	.long	0x312
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x8
	.long	0xae2
	.long	0x7a
	.uleb128 0x13
	.long	0x61
	.value	0x3ff
	.byte	0x0
	.uleb128 0x14
	.long	.LASF126
	.byte	0xa
	.value	0x148
	.long	0x81
	.uleb128 0x14
	.long	.LASF127
	.byte	0xa
	.value	0x14a
	.long	0x46
	.uleb128 0x14
	.long	.LASF128
	.byte	0xa
	.value	0x14b
	.long	0x38
	.uleb128 0x14
	.long	.LASF129
	.byte	0xa
	.value	0x151
	.long	0xae2
	.uleb128 0x14
	.long	.LASF130
	.byte	0xa
	.value	0x15a
	.long	0xac
	.uleb128 0x2
	.long	.LASF131
	.byte	0x9
	.byte	0x50
	.long	0xb29
	.uleb128 0x5
	.byte	0x8
	.long	0xb2f
	.uleb128 0x12
	.long	0xb49
	.byte	0x1
	.long	0xb12
	.uleb128 0xf
	.long	0xb12
	.uleb128 0xf
	.long	0xaee
	.uleb128 0xf
	.long	0xaee
	.byte	0x0
	.uleb128 0x2
	.long	.LASF132
	.byte	0x9
	.byte	0x51
	.long	0xb54
	.uleb128 0x5
	.byte	0x8
	.long	0xb5a
	.uleb128 0xe
	.long	0xb6b
	.byte	0x1
	.uleb128 0xf
	.long	0xb12
	.uleb128 0xf
	.long	0xb12
	.byte	0x0
	.uleb128 0xa
	.long	0xc3c
	.long	.LASF133
	.byte	0x70
	.byte	0x9
	.byte	0x55
	.uleb128 0xd
	.long	.LASF134
	.byte	0x9
	.byte	0x56
	.long	0xc3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF135
	.byte	0x9
	.byte	0x57
	.long	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF136
	.byte	0x9
	.byte	0x58
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF137
	.byte	0x9
	.byte	0x5a
	.long	0xc3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF138
	.byte	0x9
	.byte	0x5b
	.long	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF139
	.byte	0x9
	.byte	0x5c
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"msg"
	.byte	0x9
	.byte	0x5e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF140
	.byte	0x9
	.byte	0x5f
	.long	0xc5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF141
	.byte	0x9
	.byte	0x61
	.long	0xb1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF142
	.byte	0x9
	.byte	0x62
	.long	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x63
	.long	0xb12
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF143
	.byte	0x9
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF144
	.byte	0x9
	.byte	0x66
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF145
	.byte	0x9
	.byte	0x67
	.long	0xafa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xb06
	.uleb128 0xa
	.long	0xc5e
	.long	.LASF146
	.byte	0x4
	.byte	0x9
	.byte	0x53
	.uleb128 0xb
	.long	.LASF147
	.byte	0x9
	.value	0x573
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xc42
	.uleb128 0x2
	.long	.LASF148
	.byte	0x9
	.byte	0x68
	.long	0xb6b
	.uleb128 0x5
	.byte	0x8
	.long	0xc64
	.uleb128 0xa
	.long	0xc9f
	.long	.LASF149
	.byte	0xf4
	.byte	0x8
	.byte	0x7
	.uleb128 0xd
	.long	.LASF150
	.byte	0x8
	.byte	0x8
	.long	0xc9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF151
	.byte	0x8
	.byte	0x9
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x8
	.long	0xcaf
	.long	0x31d
	.uleb128 0x9
	.long	0x61
	.byte	0x3b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF152
	.byte	0x8
	.byte	0xb
	.long	0xc75
	.uleb128 0xa
	.long	0xd53
	.long	.LASF153
	.byte	0x30
	.byte	0x1
	.byte	0x28
	.uleb128 0xd
	.long	.LASF154
	.byte	0x1
	.byte	0x29
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x2a
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x2b
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x2c
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x2d
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x2e
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x2f
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x30
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x31
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x32
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.long	.LASF153
	.byte	0x1
	.byte	0x33
	.long	0xcba
	.uleb128 0x10
	.long	0xe8b
	.long	.LASF164
	.value	0x308
	.byte	0x1
	.byte	0x37
	.uleb128 0x11
	.string	"hd"
	.byte	0x1
	.byte	0x38
	.long	0x87a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF115
	.byte	0x1
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF165
	.byte	0x1
	.byte	0x3b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF166
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF167
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF168
	.byte	0x1
	.byte	0x3f
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x40
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF169
	.byte	0x1
	.byte	0x41
	.long	0xe8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF170
	.byte	0x1
	.byte	0x42
	.long	0xe8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF171
	.byte	0x1
	.byte	0x43
	.long	0xe91
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF172
	.byte	0x1
	.byte	0x44
	.long	0xea1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF173
	.byte	0x1
	.byte	0x45
	.long	0x8a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF174
	.byte	0x1
	.byte	0x46
	.long	0x8a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.long	.LASF175
	.byte	0x1
	.byte	0x47
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x48
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.long	.LASF176
	.byte	0x1
	.byte	0x49
	.long	0x31d
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.long	.LASF177
	.byte	0x1
	.byte	0x4a
	.long	0xcaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.long	.LASF178
	.byte	0x1
	.byte	0x4b
	.long	0xcaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x8
	.long	0xea1
	.long	0x328
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0xeb1
	.long	0x31d
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x1
	.byte	0x4c
	.long	0xd5e
	.uleb128 0x15
	.long	0xf40
	.long	.LASF179
	.byte	0x50
	.byte	0x1
	.value	0x20d
	.uleb128 0xb
	.long	.LASF180
	.byte	0x1
	.value	0x20e
	.long	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF181
	.byte	0x1
	.value	0x20f
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.value	0x210
	.long	0x8a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF182
	.byte	0x1
	.value	0x211
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x212
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF183
	.byte	0x1
	.value	0x213
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF174
	.byte	0x1
	.value	0x214
	.long	0x8a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF184
	.byte	0x1
	.value	0x215
	.long	0x98c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x14
	.long	.LASF179
	.byte	0x1
	.value	0x216
	.long	0xebc
	.uleb128 0x17
	.long	0x1051
	.long	.LASF186
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x50
	.long	0x33f
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF185
	.byte	0x1
	.byte	0x50
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x50
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.long	.LASF189
	.byte	0x1
	.byte	0x52
	.long	0x1051
	.uleb128 0x1b
	.long	0xff8
	.long	0x105c
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1c
	.long	0x106d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1e
	.long	0x1088
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x20
	.long	0x109d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1019
	.long	0x105c
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1c
	.long	0x106d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1e
	.long	0x1088
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x20
	.long	0x109d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1057
	.uleb128 0x6
	.long	0xd53
	.uleb128 0x21
	.long	0x1077
	.long	.LASF187
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x31d
	.byte	0x0
	.uleb128 0x21
	.long	0x10aa
	.long	.LASF188
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0x31d
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
	.uleb128 0x17
	.long	0x1477
	.long	.LASF190
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0x5c
	.long	0x87a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x5c
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF191
	.byte	0x1
	.byte	0x5c
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF192
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.byte	0x60
	.long	0xd53
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF224
	.byte	0x1
	.byte	0xa6
	.quad	.L17
	.uleb128 0x1b
	.long	0x1186
	.long	0x147d
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1e
	.long	0x148a
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x1e
	.long	0x1088
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x11c0
	.long	0x149a
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1e
	.long	0x14a7
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x1e
	.long	0x14c2
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x11e2
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x29
	.long	0x109d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x1204
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x29
	.long	0x14cc
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.long	0x14d7
	.byte	0x0
	.uleb128 0x1b
	.long	0x123e
	.long	0x147d
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x1e
	.long	0x148a
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x1e
	.long	0x1088
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1278
	.long	0x147d
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x1e
	.long	0x148a
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x1e
	.long	0x1088
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x129a
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x29
	.long	0x109d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x12bc
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x29
	.long	0x1092
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0x109d
	.byte	0x0
	.uleb128 0x1b
	.long	0x1314
	.long	0x149a
	.quad	.LBB51
	.quad	.LBE51
	.uleb128 0x1e
	.long	0x14a7
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB55
	.quad	.LBE55
	.uleb128 0x20
	.long	0x14cc
	.uleb128 0x29
	.long	0x14d7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x136c
	.long	0x147d
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1e
	.long	0x148a
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1e
	.long	0x1088
	.uleb128 0x1f
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x29
	.long	0x109d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x13c4
	.long	0x147d
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x1e
	.long	0x148a
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x1e
	.long	0x1088
	.uleb128 0x1f
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x20
	.long	0x1092
	.uleb128 0x29
	.long	0x109d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x141c
	.long	0x149a
	.quad	.LBB66
	.quad	.LBE66
	.uleb128 0x1e
	.long	0x14a7
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB68
	.quad	.LBE68
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x20
	.long	0x14cc
	.uleb128 0x29
	.long	0x14d7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x143d
	.long	0x149a
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x1c
	.long	0x14a7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB76
	.quad	.LBE76
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB78
	.quad	.LBE78
	.uleb128 0x20
	.long	0x14cc
	.uleb128 0x29
	.long	0x14d7
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xeb1
	.uleb128 0x2a
	.long	0x1494
	.long	.LASF194
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.byte	0x78
	.long	0x1494
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x31d
	.uleb128 0x2a
	.long	0x14b1
	.long	.LASF195
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.byte	0x79
	.long	0xe8b
	.byte	0x0
	.uleb128 0x21
	.long	0x14e4
	.long	.LASF196
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.byte	0x38
	.long	0x328
	.uleb128 0x23
	.uleb128 0x24
	.string	"__v"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.uleb128 0x24
	.string	"__x"
	.byte	0x2
	.byte	0x3a
	.long	0x38
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x1551
	.long	.LASF197
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x3f
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0xaf
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0xaf
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xb1
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF198
	.byte	0x1
	.byte	0xb2
	.long	0x1551
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0xb3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x8
	.long	0x1561
	.long	0x312
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2b
	.long	0x1610
	.long	.LASF199
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xdc
	.long	0x1477
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF181
	.byte	0x1
	.byte	0xdc
	.long	0xb4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	.LASF200
	.byte	0x1
	.byte	0xdd
	.long	0x8a5
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.long	.LASF201
	.byte	0x1
	.byte	0xdd
	.long	0x33f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF182
	.byte	0x1
	.byte	0xde
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.string	"enc"
	.byte	0x1
	.byte	0xde
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.string	"key"
	.byte	0x1
	.byte	0xdf
	.long	0x1610
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2c
	.long	0x15f6
	.byte	0x10
	.byte	0x1
	.byte	0xe4
	.uleb128 0x2d
	.string	"ll"
	.byte	0x1
	.byte	0xe2
	.long	0x161b
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.byte	0xe3
	.long	0x1551
	.byte	0x0
	.uleb128 0x26
	.long	.LASF202
	.byte	0x1
	.byte	0xe4
	.long	0x15da
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1616
	.uleb128 0x6
	.long	0xcaf
	.uleb128 0x8
	.long	0x162b
	.long	0x328
	.uleb128 0x9
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x2e
	.long	0x16e7
	.long	.LASF203
	.byte	0x1
	.value	0x1a9
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x1a8
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.long	.LASF183
	.byte	0x1
	.value	0x1a8
	.long	0x328
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.value	0x1aa
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	.LASF204
	.byte	0x1
	.value	0x1aa
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.long	.LASF205
	.byte	0x1
	.value	0x1ab
	.long	0x328
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.long	0x16e7
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x1c
	.long	0x16f9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	0x1705
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	0x1711
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x171d
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x29
	.long	0x1729
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	0x1735
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	0x1741
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	0x174d
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x175a
	.long	.LASF206
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x35
	.long	.LASF200
	.byte	0x1
	.value	0x18d
	.long	0x8a5
	.uleb128 0x35
	.long	.LASF207
	.byte	0x1
	.value	0x18d
	.long	0x3f
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x18e
	.long	0x33f
	.uleb128 0x35
	.long	.LASF185
	.byte	0x1
	.value	0x18e
	.long	0x3f
	.uleb128 0x37
	.long	.LASF208
	.byte	0x1
	.value	0x190
	.long	0xc64
	.uleb128 0x37
	.long	.LASF209
	.byte	0x1
	.value	0x190
	.long	0xc6f
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x191
	.long	0x3f
	.uleb128 0x37
	.long	.LASF210
	.byte	0x1
	.value	0x191
	.long	0x3f
	.byte	0x0
	.uleb128 0x2e
	.long	0x1974
	.long	.LASF211
	.byte	0x1
	.value	0x103
	.byte	0x1
	.long	0x328
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0xff
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF212
	.byte	0x1
	.value	0x100
	.long	0x328
	.byte	0x1
	.byte	0x5e
	.uleb128 0x30
	.long	.LASF213
	.byte	0x1
	.value	0x100
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x30
	.long	.LASF214
	.byte	0x1
	.value	0x101
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x30
	.long	.LASF215
	.byte	0x1
	.value	0x102
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x30
	.long	.LASF216
	.byte	0x1
	.value	0x102
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x104
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.long	.LASF217
	.byte	0x1
	.value	0x105
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x105
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x105
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.long	.LASF218
	.byte	0x1
	.value	0x105
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.long	.LASF219
	.byte	0x1
	.value	0x105
	.long	0x3f
	.uleb128 0x32
	.long	.LASF220
	.byte	0x1
	.value	0x106
	.long	0x328
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	.LASF221
	.byte	0x1
	.value	0x106
	.long	0xe8b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.value	0x106
	.long	0x328
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x106
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x32
	.long	.LASF222
	.byte	0x1
	.value	0x107
	.long	0x31d
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.long	.LASF223
	.byte	0x1
	.value	0x108
	.long	0x3f
	.byte	0x1
	.byte	0x55
	.uleb128 0x39
	.long	.LASF225
	.byte	0x1
	.value	0x13e
	.quad	.L136
	.uleb128 0x1b
	.long	0x18dc
	.long	0x1974
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x1e
	.long	0x1985
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB91
	.quad	.LBE91
	.uleb128 0x29
	.long	0x14cc
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x14d7
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x18fb
	.long	0x198f
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x1e
	.long	0x19a0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1953
	.long	0x1974
	.quad	.LBB93
	.quad	.LBE93
	.uleb128 0x1e
	.long	0x1985
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x29
	.long	0x14cc
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x14d7
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB98
	.quad	.LBE98
	.uleb128 0x32
	.long	.LASF226
	.byte	0x1
	.value	0x15f
	.long	0x328
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x198f
	.long	.LASF227
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x328
	.byte	0x0
	.uleb128 0x21
	.long	0x19aa
	.long	.LASF228
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x328
	.byte	0x0
	.uleb128 0x2e
	.long	0x1a37
	.long	.LASF229
	.byte	0x1
	.value	0x17f
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x17d
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF181
	.byte	0x1
	.value	0x17d
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF182
	.byte	0x1
	.value	0x17e
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.long	.LASF230
	.byte	0x1
	.value	0x17e
	.long	0x4d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x180
	.long	0x1477
	.byte	0x1
	.byte	0x5c
	.uleb128 0x37
	.long	.LASF231
	.byte	0x1
	.value	0x181
	.long	0x3f
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x181
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.value	0x182
	.long	0x328
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x1ac6
	.long	.LASF232
	.byte	0x1
	.value	0x219
	.byte	0x1
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x218
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.value	0x218
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x38
	.string	"acb"
	.byte	0x1
	.value	0x21a
	.long	0x1ac6
	.uleb128 0x31
	.string	"bs"
	.byte	0x1
	.value	0x21b
	.long	0x87a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x21c
	.long	0x1477
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	.LASF231
	.byte	0x1
	.value	0x21d
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	.LASF224
	.byte	0x1
	.value	0x24e
	.quad	.L191
	.uleb128 0x39
	.long	.LASF233
	.byte	0x1
	.value	0x252
	.quad	.L192
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf40
	.uleb128 0x2e
	.long	0x1b50
	.long	.LASF234
	.byte	0x1
	.value	0x26b
	.byte	0x1
	.long	0x98c
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x268
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF181
	.byte	0x1
	.value	0x269
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x269
	.long	0x8a5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x30
	.long	.LASF182
	.byte	0x1
	.value	0x269
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.string	"cb"
	.byte	0x1
	.value	0x26a
	.long	0x992
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x26a
	.long	0xac
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"acb"
	.byte	0x1
	.value	0x26c
	.long	0x1ac6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x1beb
	.long	.LASF235
	.byte	0x1
	.value	0x27d
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x27c
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.value	0x27c
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.string	"acb"
	.byte	0x1
	.value	0x27e
	.long	0x1ac6
	.uleb128 0x31
	.string	"bs"
	.byte	0x1
	.value	0x27f
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x280
	.long	0x1477
	.byte	0x1
	.byte	0x5e
	.uleb128 0x32
	.long	.LASF231
	.byte	0x1
	.value	0x281
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.value	0x282
	.long	0x328
	.byte	0x1
	.byte	0x5c
	.uleb128 0x32
	.long	.LASF236
	.byte	0x1
	.value	0x283
	.long	0x33f
	.byte	0x1
	.byte	0x51
	.uleb128 0x39
	.long	.LASF224
	.byte	0x1
	.value	0x2a2
	.quad	.L226
	.byte	0x0
	.uleb128 0x2e
	.long	0x1c7b
	.long	.LASF237
	.byte	0x1
	.value	0x2bd
	.byte	0x1
	.long	0x98c
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x2ba
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF181
	.byte	0x1
	.value	0x2bb
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x2bb
	.long	0x33f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x30
	.long	.LASF182
	.byte	0x1
	.value	0x2bb
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.string	"cb"
	.byte	0x1
	.value	0x2bc
	.long	0x992
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x2bc
	.long	0xac
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x2be
	.long	0x1477
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.string	"acb"
	.byte	0x1
	.value	0x2bf
	.long	0x1ac6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x1cb7
	.long	.LASF238
	.byte	0x1
	.value	0x2d1
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x2d0
	.long	0x98c
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"acb"
	.byte	0x1
	.value	0x2d2
	.long	0x1ac6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x1cf0
	.long	.LASF240
	.byte	0x1
	.value	0x2d9
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x2d8
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x2da
	.long	0x1477
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2e
	.long	0x1eba
	.long	.LASF241
	.byte	0x1
	.value	0x2e4
	.byte	0x1
	.long	0x3f
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF63
	.byte	0x1
	.value	0x2e2
	.long	0x6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF242
	.byte	0x1
	.value	0x2e2
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF64
	.byte	0x1
	.value	0x2e3
	.long	0x6f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.long	.LASF191
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"fd"
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.long	.LASF243
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x32
	.long	.LASF244
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.value	0x2e5
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.value	0x2e6
	.long	0xd53
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x2e7
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	0x1dda
	.long	0x1974
	.quad	.LBB99
	.quad	.LBE99
	.uleb128 0x1e
	.long	0x1985
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e15
	.long	0x14b1
	.quad	.LBB102
	.quad	.LBE102
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x1f
	.quad	.LBB104
	.quad	.LBE104
	.uleb128 0x20
	.long	0x14cc
	.uleb128 0x20
	.long	0x14d7
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e6d
	.long	0x1eba
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x1e
	.long	0x1ecb
	.uleb128 0x1d
	.long	0x1077
	.quad	.LBB107
	.quad	.LBE107
	.uleb128 0x1e
	.long	0x1088
	.uleb128 0x1f
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x29
	.long	0x1092
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x109d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e8c
	.long	0x1974
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x1e
	.long	0x1985
	.byte	0x0
	.uleb128 0x1d
	.long	0x14b1
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x1e
	.long	0x14c2
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x29
	.long	0x14cc
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x14d7
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x1ed5
	.long	.LASF245
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x31d
	.byte	0x0
	.uleb128 0x2e
	.long	0x1f2c
	.long	.LASF246
	.byte	0x1
	.value	0x319
	.byte	0x1
	.long	0x3f
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x318
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x31a
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x37
	.long	.LASF247
	.byte	0x1
	.value	0x31b
	.long	0x31d
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.value	0x31c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.long	0x2037
	.long	.LASF248
	.byte	0x1
	.value	0x330
	.byte	0x1
	.long	0x3f
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x32e
	.long	0x87a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x30
	.long	.LASF181
	.byte	0x1
	.value	0x32e
	.long	0xb4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x32f
	.long	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x30
	.long	.LASF182
	.byte	0x1
	.value	0x32f
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x331
	.long	0x1477
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.long	.LASF209
	.byte	0x1
	.value	0x332
	.long	0xc64
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.value	0x333
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.long	.LASF210
	.byte	0x1
	.value	0x333
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.long	.LASF200
	.byte	0x1
	.value	0x334
	.long	0x8a5
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.value	0x335
	.long	0x328
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	0x2037
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x1e
	.long	0x2049
	.uleb128 0x1c
	.long	0x2054
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	0x2060
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	0x206c
	.byte	0x1
	.byte	0x5e
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x29
	.long	0x2078
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	0x2082
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	0x208e
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	0x209a
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	0x20a4
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x20b1
	.long	.LASF249
	.byte	0x1
	.value	0x1ec
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x1ea
	.long	0x87a
	.uleb128 0x35
	.long	.LASF181
	.byte	0x1
	.value	0x1ea
	.long	0xb4
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x1eb
	.long	0x33f
	.uleb128 0x35
	.long	.LASF182
	.byte	0x1
	.value	0x1eb
	.long	0x3f
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0x1ed
	.long	0x1477
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x37
	.long	.LASF231
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.value	0x1ee
	.long	0x3f
	.uleb128 0x37
	.long	.LASF183
	.byte	0x1
	.value	0x1ef
	.long	0x328
	.byte	0x0
	.uleb128 0x3a
	.long	0x20ea
	.long	.LASF250
	.byte	0x1
	.value	0x369
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x368
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x36a
	.long	0x1477
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.long	0x2135
	.long	.LASF251
	.byte	0x1
	.value	0x36f
	.byte	0x1
	.long	0x3f
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"bs"
	.byte	0x1
	.value	0x36e
	.long	0x87a
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.string	"bdi"
	.byte	0x1
	.value	0x36e
	.long	0xa67
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x370
	.long	0x1477
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3b
	.long	.LASF252
	.byte	0xb
	.byte	0x91
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF253
	.byte	0xb
	.byte	0x92
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.long	.LASF254
	.byte	0x1
	.value	0x375
	.long	0x509
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_qcow
	.uleb128 0x3d
	.long	.LASF255
	.byte	0x5
	.byte	0x94
	.long	0x87a
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.long	0x2b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x217d
	.long	0x214f
	.string	"bdrv_qcow"
	.long	0x2166
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
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB115-.Ltext0
	.quad	.LBE115-.Ltext0
	.quad	.LBB120-.Ltext0
	.quad	.LBE120-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB122-.Ltext0
	.quad	.LBE122-.Ltext0
	.quad	.LBB125-.Ltext0
	.quad	.LBE125-.Ltext0
	.quad	.LBB123-.Ltext0
	.quad	.LBE123-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"translation"
.LASF206:
	.string	"decompress_buffer"
.LASF9:
	.string	"size_t"
.LASF244:
	.string	"backing_filename_len"
.LASF167:
	.string	"l1_size"
.LASF241:
	.string	"qcow_create"
.LASF53:
	.string	"total_sectors"
.LASF91:
	.string	"bdrv_set_key"
.LASF122:
	.string	"date_nsec"
.LASF199:
	.string	"encrypt_sectors"
.LASF136:
	.string	"total_in"
.LASF25:
	.string	"_IO_save_end"
.LASF98:
	.string	"bdrv_pread"
.LASF73:
	.string	"cyls"
.LASF105:
	.string	"bdrv_snapshot_delete"
.LASF211:
	.string	"get_cluster_offset"
.LASF237:
	.string	"qcow_aio_write"
.LASF18:
	.string	"_IO_write_base"
.LASF140:
	.string	"state"
.LASF34:
	.string	"_lock"
.LASF168:
	.string	"cluster_offset_mask"
.LASF172:
	.string	"l2_cache_counts"
.LASF230:
	.string	"pnum"
.LASF156:
	.string	"backing_file_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF83:
	.string	"bdrv_probe"
.LASF148:
	.string	"z_stream"
.LASF219:
	.string	"l2_index"
.LASF114:
	.string	"BlockDriverInfo"
.LASF248:
	.string	"qcow_write_compressed"
.LASF31:
	.string	"_cur_column"
.LASF99:
	.string	"bdrv_pwrite"
.LASF41:
	.string	"_mode"
.LASF75:
	.string	"secs"
.LASF55:
	.string	"removable"
.LASF123:
	.string	"vm_clock_nsec"
.LASF2:
	.string	"long int"
.LASF238:
	.string	"qcow_aio_cancel"
.LASF64:
	.string	"backing_file"
.LASF139:
	.string	"total_out"
.LASF45:
	.string	"_IO_marker"
.LASF60:
	.string	"opaque"
.LASF218:
	.string	"l1_index"
.LASF192:
	.string	"shift"
.LASF255:
	.string	"bdrv_first"
.LASF120:
	.string	"vm_state_size"
.LASF180:
	.string	"common"
.LASF128:
	.string	"uLong"
.LASF113:
	.string	"free_aiocb"
.LASF214:
	.string	"compressed_size"
.LASF7:
	.string	"signed char"
.LASF223:
	.string	"new_l2_table"
.LASF44:
	.string	"_IO_FILE"
.LASF129:
	.string	"Bytef"
.LASF69:
	.string	"rd_bytes"
.LASF67:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF109:
	.string	"bdrv_media_changed"
.LASF217:
	.string	"min_index"
.LASF52:
	.string	"BlockDriverState"
.LASF100:
	.string	"bdrv_truncate"
.LASF66:
	.string	"media_changed"
.LASF166:
	.string	"l2_size"
.LASF222:
	.string	"min_count"
.LASF179:
	.string	"QCowAIOCB"
.LASF5:
	.string	"char"
.LASF88:
	.string	"bdrv_create"
.LASF247:
	.string	"l1_length"
.LASF97:
	.string	"protocol_name"
.LASF43:
	.string	"_IO_lock_t"
.LASF95:
	.string	"bdrv_aio_cancel"
.LASF170:
	.string	"l2_cache"
.LASF63:
	.string	"filename"
.LASF221:
	.string	"l2_table"
.LASF226:
	.string	"start_sect"
.LASF137:
	.string	"next_out"
.LASF228:
	.string	"be64_to_cpu"
.LASF191:
	.string	"flags"
.LASF104:
	.string	"bdrv_snapshot_goto"
.LASF15:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"bdrv_close"
.LASF195:
	.string	"be64_to_cpus"
.LASF48:
	.string	"_pos"
.LASF252:
	.string	"stdin"
.LASF197:
	.string	"qcow_set_key"
.LASF253:
	.string	"stdout"
.LASF165:
	.string	"cluster_sectors"
.LASF26:
	.string	"_markers"
.LASF72:
	.string	"wr_ops"
.LASF78:
	.string	"device_name"
.LASF176:
	.string	"crypt_method_header"
.LASF138:
	.string	"avail_out"
.LASF74:
	.string	"heads"
.LASF227:
	.string	"cpu_to_be64"
.LASF175:
	.string	"cluster_cache_offset"
.LASF35:
	.string	"_offset"
.LASF89:
	.string	"bdrv_flush"
.LASF86:
	.string	"bdrv_write"
.LASF160:
	.string	"cluster_bits"
.LASF111:
	.string	"bdrv_set_locked"
.LASF125:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF185:
	.string	"buf_size"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF161:
	.string	"l2_bits"
.LASF157:
	.string	"backing_file_size"
.LASF42:
	.string	"_unused2"
.LASF254:
	.string	"bdrv_qcow"
.LASF62:
	.string	"boot_sector_data"
.LASF193:
	.string	"header"
.LASF232:
	.string	"qcow_aio_read_cb"
.LASF220:
	.string	"l2_offset"
.LASF239:
	.string	"blockacb"
.LASF82:
	.string	"instance_size"
.LASF229:
	.string	"qcow_is_allocated"
.LASF116:
	.string	"vm_state_offset"
.LASF30:
	.string	"_old_offset"
.LASF240:
	.string	"qcow_close"
.LASF146:
	.string	"internal_state"
.LASF187:
	.string	"be32_to_cpu"
.LASF225:
	.string	"found"
.LASF202:
	.string	"ivec"
.LASF57:
	.string	"encrypted"
.LASF133:
	.string	"z_stream_s"
.LASF3:
	.string	"long long int"
.LASF181:
	.string	"sector_num"
.LASF20:
	.string	"_IO_write_end"
.LASF184:
	.string	"hd_aiocb"
.LASF216:
	.string	"n_end"
.LASF54:
	.string	"read_only"
.LASF204:
	.string	"csize"
.LASF92:
	.string	"bdrv_make_empty"
.LASF257:
	.string	"block-qcow.c"
.LASF194:
	.string	"be32_to_cpus"
.LASF21:
	.string	"_IO_buf_base"
.LASF190:
	.string	"qcow_open"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF102:
	.string	"bdrv_write_compressed"
.LASF101:
	.string	"bdrv_getlength"
.LASF256:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF85:
	.string	"bdrv_read"
.LASF59:
	.string	"change_opaque"
.LASF144:
	.string	"adler"
.LASF71:
	.string	"rd_ops"
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
.LASF201:
	.string	"in_buf"
.LASF47:
	.string	"_sbuf"
.LASF153:
	.string	"QCowHeader"
.LASF205:
	.string	"coffset"
.LASF107:
	.string	"bdrv_get_info"
.LASF209:
	.string	"strm"
.LASF106:
	.string	"bdrv_snapshot_list"
.LASF207:
	.string	"out_buf_size"
.LASF14:
	.string	"_flags"
.LASF149:
	.string	"aes_key_st"
.LASF183:
	.string	"cluster_offset"
.LASF178:
	.string	"aes_decrypt_key"
.LASF77:
	.string	"type"
.LASF177:
	.string	"aes_encrypt_key"
.LASF79:
	.string	"next"
.LASF126:
	.string	"Byte"
.LASF233:
	.string	"redo"
.LASF70:
	.string	"wr_bytes"
.LASF198:
	.string	"keybuf"
.LASF186:
	.string	"qcow_probe"
.LASF189:
	.string	"cow_header"
.LASF245:
	.string	"cpu_to_be32"
.LASF130:
	.string	"voidpf"
.LASF152:
	.string	"AES_KEY"
.LASF90:
	.string	"bdrv_is_allocated"
.LASF215:
	.string	"n_start"
.LASF159:
	.string	"size"
.LASF242:
	.string	"total_size"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF188:
	.string	"bswap32"
.LASF27:
	.string	"_chain"
.LASF134:
	.string	"next_in"
.LASF203:
	.string	"decompress_cluster"
.LASF84:
	.string	"bdrv_open"
.LASF231:
	.string	"index_in_cluster"
.LASF210:
	.string	"out_len"
.LASF58:
	.string	"change_cb"
.LASF243:
	.string	"header_size"
.LASF108:
	.string	"bdrv_is_inserted"
.LASF236:
	.string	"src_buf"
.LASF155:
	.string	"version"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF163:
	.string	"l1_table_offset"
.LASF117:
	.string	"QEMUSnapshotInfo"
.LASF11:
	.string	"__off64_t"
.LASF96:
	.string	"aiocb_size"
.LASF118:
	.string	"id_str"
.LASF235:
	.string	"qcow_aio_write_cb"
.LASF208:
	.string	"strm1"
.LASF258:
	.string	"/home/remco/Projects/Argos/src"
.LASF135:
	.string	"avail_in"
.LASF147:
	.string	"dummy"
.LASF154:
	.string	"magic"
.LASF110:
	.string	"bdrv_eject"
.LASF212:
	.string	"offset"
.LASF174:
	.string	"cluster_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF164:
	.string	"BDRVQcowState"
.LASF173:
	.string	"cluster_cache"
.LASF119:
	.string	"name"
.LASF93:
	.string	"bdrv_aio_read"
.LASF61:
	.string	"boot_sector_enabled"
.LASF234:
	.string	"qcow_aio_read"
.LASF8:
	.string	"short int"
.LASF68:
	.string	"sync_aiocb"
.LASF51:
	.string	"uint64_t"
.LASF196:
	.string	"bswap64"
.LASF162:
	.string	"crypt_method"
.LASF32:
	.string	"_vtable_offset"
.LASF112:
	.string	"bdrv_ioctl"
.LASF142:
	.string	"zfree"
.LASF143:
	.string	"data_type"
.LASF127:
	.string	"uInt"
.LASF94:
	.string	"bdrv_aio_write"
.LASF213:
	.string	"allocate"
.LASF158:
	.string	"mtime"
.LASF16:
	.string	"_IO_read_end"
.LASF80:
	.string	"BlockDriver"
.LASF103:
	.string	"bdrv_snapshot_create"
.LASF121:
	.string	"date_sec"
.LASF50:
	.string	"uint32_t"
.LASF56:
	.string	"locked"
.LASF28:
	.string	"_fileno"
.LASF65:
	.string	"is_temporary"
.LASF151:
	.string	"rounds"
.LASF145:
	.string	"reserved"
.LASF81:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF115:
	.string	"cluster_size"
.LASF224:
	.string	"fail"
.LASF150:
	.string	"rd_key"
.LASF124:
	.string	"BlockDriverAIOCB"
.LASF132:
	.string	"free_func"
.LASF19:
	.string	"_IO_write_ptr"
.LASF182:
	.string	"nb_sectors"
.LASF131:
	.string	"alloc_func"
.LASF250:
	.string	"qcow_flush"
.LASF12:
	.string	"int64_t"
.LASF141:
	.string	"zalloc"
.LASF249:
	.string	"qcow_write"
.LASF200:
	.string	"out_buf"
.LASF169:
	.string	"l1_table"
.LASF171:
	.string	"l2_cache_offsets"
.LASF251:
	.string	"qcow_get_info"
.LASF246:
	.string	"qcow_make_empty"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
