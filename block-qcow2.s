	.file	"block-qcow2.c"
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
	.string	"qcow2"
.globl bdrv_qcow2
	.data
	.align 32
	.type	bdrv_qcow2, @object
	.size	bdrv_qcow2, 272
bdrv_qcow2:
	.quad	.LC0
	.long	872
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
	.quad	qcow_snapshot_create
	.quad	qcow_snapshot_goto
	.quad	qcow_snapshot_delete
	.quad	qcow_snapshot_list
	.quad	qcow_get_info
	.zero	56
	.text
	.p2align 4,,15
	.type	qcow_probe, @function
qcow_probe:
.LFB97:
	.file 1 "block-qcow2.c"
	.loc 1 177 0
	.loc 1 180 0
	cmpl	$71, %esi
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
	.loc 1 185 0
	xorl	%edx, %edx
.L1:
	.loc 1 186 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L13:
.LBB7:
	.loc 2 120 0
	movl	4(%rdi), %eax
.LBE7:
	.loc 1 183 0
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
	.loc 1 185 0
	xorl	%edx, %edx
	jmp	.L1
.LFE97:
	.size	qcow_probe, .-qcow_probe
	.p2align 4,,15
	.type	refcount_close, @function
refcount_close:
.LFB138:
	.loc 1 1756 0
	pushq	%rbx
.LCFI0:
	.loc 1 1757 0
	movq	56(%rdi), %rbx
	.loc 1 1758 0
	movq	328(%rbx), %rdi
	call	qemu_free
	.loc 1 1759 0
	movq	296(%rbx), %rdi
	popq	%rbx
	jmp	qemu_free
.LFE138:
	.size	refcount_close, .-refcount_close
	.p2align 4,,15
	.type	qcow_free_snapshots, @function
qcow_free_snapshots:
.LFB127:
	.loc 1 1366 0
	pushq	%r12
.LCFI1:
	.loc 1 1370 0
	xorl	%r12d, %r12d
	.loc 1 1366 0
	pushq	%rbp
.LCFI2:
	pushq	%rbx
.LCFI3:
	.loc 1 1367 0
	movq	56(%rdi), %rbp
	.loc 1 1370 0
	movl	860(%rbp), %eax
	testl	%eax, %eax
	jle	.L21
	.p2align 4,,7
.L19:
	.loc 1 1371 0
	movslq	%r12d,%rax
	movq	864(%rbp), %rdx
	.loc 1 1370 0
	incl	%r12d
	.loc 1 1371 0
	leaq	0(,%rax,8), %rbx
	subq	%rax, %rbx
	salq	$3, %rbx
	movq	24(%rbx,%rdx), %rdi
	call	qemu_free
	.loc 1 1372 0
	movq	864(%rbp), %rax
	movq	16(%rbx,%rax), %rdi
	call	qemu_free
	.loc 1 1370 0
	cmpl	%r12d, 860(%rbp)
	jg	.L19
.L21:
	.loc 1 1374 0
	movq	864(%rbp), %rdi
	call	qemu_free
	.loc 1 1375 0
	movq	$0, 864(%rbp)
	.loc 1 1376 0
	movl	$0, 860(%rbp)
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE127:
	.size	qcow_free_snapshots, .-qcow_free_snapshots
	.p2align 4,,15
	.type	qcow_set_key, @function
qcow_set_key:
.LFB99:
	.loc 1 303 0
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI6:
	.loc 1 304 0
	movq	56(%rdi), %rbp
	.loc 1 309 0
	movq	%rsi, %rdi
	.loc 1 308 0
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	.loc 1 309 0
	call	strlen
	.loc 1 311 0
	cmpl	$17, %eax
	.loc 1 309 0
	movl	%eax, %esi
	.loc 1 311 0
	movl	$16, %eax
	cmovge	%eax, %esi
	.loc 1 314 0
	xorl	%ecx, %ecx
	jmp	.L32
	.p2align 4,,7
.L33:
	.loc 1 315 0
	movslq	%ecx,%rdx
	.loc 1 314 0
	incl	%ecx
	.loc 1 315 0
	movzbl	(%rdx,%rbx), %eax
	movb	%al, (%rsp,%rdx)
.L32:
	.loc 1 314 0
	cmpl	%esi, %ecx
	jl	.L33
	.loc 1 317 0
	movl	356(%rbp), %eax
	.loc 1 319 0
	leaq	360(%rbp), %rdx
	movl	$128, %esi
	movq	%rsp, %rdi
	.loc 1 317 0
	movl	%eax, 352(%rbp)
	.loc 1 319 0
	call	AES_set_encrypt_key
	testl	%eax, %eax
	.loc 1 320 0
	movl	$-1, %edx
	.loc 1 319 0
	jne	.L22
	.loc 1 321 0
	leaq	604(%rbp), %rdx
	movl	$128, %esi
	movq	%rsp, %rdi
	call	AES_set_decrypt_key
	.loc 1 322 0
	cmpl	$1, %eax
	sbbl	%edx, %edx
	notl	%edx
.L22:
	.loc 1 342 0
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
	.loc 1 351 0
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
	.loc 1 351 0
	movl	%r8d, %r14d
	movl	%r9d, %r15d
	.loc 1 358 0
	xorl	%r13d, %r13d
	jmp	.L42
	.p2align 4,,7
.L43:
	.loc 1 361 0
	movq	80(%rsp), %rcx
	leaq	0(%rsp), %r8
	.loc 2 125 0
	movq	%r12, (%rsp)
	.loc 1 361 0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movl	%r15d, %r9d
	movl	$512, %edx
	.loc 1 363 0
	incq	%r12
	.loc 1 364 0
	addq	$512, %rbx
	.loc 1 365 0
	addq	$512, %rbp
	.loc 1 358 0
	incl	%r13d
	.loc 1 360 0
	movq	$0, 8(%rsp)
	.loc 1 361 0
	call	AES_cbc_encrypt
.L42:
	.loc 1 358 0
	cmpl	%r14d, %r13d
	jl	.L43
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
	.p2align 4,,15
	.type	align_offset, @function
align_offset:
.LFB104:
	.loc 1 422 0
	.loc 1 423 0
	movslq	%esi,%rax
	negl	%esi
	leaq	-1(%rax,%rdi), %rax
	movslq	%esi,%rsi
	andq	%rsi, %rax
	.loc 1 425 0
	ret
.LFE104:
	.size	align_offset, .-align_offset
	.p2align 4,,15
	.type	qcow_open, @function
qcow_open:
.LFB98:
	.loc 1 189 0
	movq	%r12, -32(%rsp)
.LCFI14:
	movq	%rbx, -48(%rsp)
.LCFI15:
	movq	%rdi, %r12
	movq	%rbp, -40(%rsp)
.LCFI16:
	movq	%r13, -24(%rsp)
.LCFI17:
	movq	%r14, -16(%rsp)
.LCFI18:
	movq	%r15, -8(%rsp)
.LCFI19:
	subq	$200, %rsp
.LCFI20:
	.loc 1 190 0
	movq	56(%rdi), %rbp
	.loc 1 194 0
	movq	%rbp, %rdi
	call	bdrv_file_open
	.loc 1 195 0
	testl	%eax, %eax
	js	.L45
	.loc 1 197 0
	movq	(%rbp), %rdi
	leaq	64(%rsp), %rdx
	xorl	%esi, %esi
	movl	$72, %ecx
	call	bdrv_pread
	cmpl	$72, %eax
	jne	.L48
.LBB13:
.LBB14:
.LBB15:
	.loc 2 52 0
	movl	64(%rsp), %eax
.LBE15:
.LBE14:
.LBE13:
.LBB16:
.LBB17:
.LBB18:
	.loc 2 57 0
	movq	88(%rsp), %rcx
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
	movl	%eax, 64(%rsp)
.LBE30:
.LBE29:
.LBB31:
.LBB32:
.LBB33:
	movl	84(%rsp), %esi
.LBE33:
.LBE32:
.LBE31:
.LBB34:
.LBB35:
.LBB36:
	movl	68(%rsp), %eax
.LBE36:
.LBE35:
.LBE34:
.LBB37:
.LBB38:
.LBB39:
	movl	96(%rsp), %edx
.LBE39:
.LBE38:
.LBE37:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
.LBB44:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE44:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBB45:
.LBB46:
.LBB47:
.LBB48:
.LBB49:
#APP
	bswap %esi
#NO_APP
.LBE49:
.LBE48:
.LBE47:
.LBE46:
.LBE45:
.LBB50:
.LBB51:
	.loc 2 52 0
	movl	%eax, 68(%rsp)
.LBE51:
.LBE50:
.LBB52:
.LBB53:
.LBB54:
	.loc 2 57 0
	movq	72(%rsp), %rax
.LBE54:
.LBE53:
.LBE52:
.LBB55:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 2 53 0
#APP
	bswap %edx
#NO_APP
.LBE59:
.LBE58:
.LBE57:
.LBE56:
.LBE55:
.LBB60:
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
	.loc 2 57 0
	movq	%rax, 72(%rsp)
.LBE61:
.LBE60:
.LBB65:
.LBB66:
.LBB67:
	.loc 2 52 0
	movl	80(%rsp), %eax
.LBB68:
.LBB69:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE69:
.LBE68:
.LBE67:
	.loc 2 52 0
	movl	%eax, 80(%rsp)
.LBE66:
.LBE65:
.LBB70:
.LBB71:
.LBB72:
	.loc 2 57 0
	movq	104(%rsp), %rax
.LBB73:
.LBB74:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE74:
.LBE73:
.LBE72:
	.loc 2 57 0
	movq	%rax, 104(%rsp)
.LBE71:
.LBE70:
.LBB75:
.LBB76:
.LBB77:
	.loc 2 52 0
	movl	100(%rsp), %eax
.LBB78:
.LBB79:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE79:
.LBE78:
.LBE77:
	.loc 2 52 0
	movl	%eax, 100(%rsp)
.LBE76:
.LBE75:
.LBB80:
.LBB81:
.LBB82:
	.loc 2 57 0
	movq	112(%rsp), %rax
.LBB83:
.LBB84:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE84:
.LBE83:
.LBE82:
	.loc 2 57 0
	movq	%rax, 112(%rsp)
.LBE81:
.LBE80:
.LBB85:
.LBB86:
.LBB87:
	.loc 2 52 0
	movl	120(%rsp), %eax
.LBB88:
.LBB89:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE89:
.LBE88:
.LBE87:
	.loc 2 52 0
	movl	%eax, 120(%rsp)
.LBE86:
.LBE85:
.LBB90:
.LBB91:
.LBB92:
	.loc 2 57 0
	movq	128(%rsp), %rax
.LBB93:
.LBB94:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE94:
.LBE93:
.LBE92:
	.loc 2 57 0
	movq	%rax, 128(%rsp)
.LBE91:
.LBE90:
.LBB95:
.LBB96:
.LBB97:
	.loc 2 52 0
	movl	124(%rsp), %eax
.LBB98:
.LBB99:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE99:
.LBE98:
.LBE97:
	.loc 2 52 0
	movl	%eax, 124(%rsp)
.LBE96:
.LBE95:
	.loc 1 213 0
	movabsq	$9953495547, %rax
	cmpq	%rax, 64(%rsp)
.LBB100:
.LBB101:
	.loc 2 57 0
	movq	%rcx, 88(%rsp)
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	.loc 2 52 0
	movl	%esi, 84(%rsp)
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	movl	%edx, 96(%rsp)
.LBE105:
.LBE104:
	.loc 1 213 0
	je	.L196
.L48:
	.loc 1 292 0
	movq	%r12, %rdi
	call	qcow_free_snapshots
	.loc 1 293 0
	movq	%r12, %rdi
	call	refcount_close
	.loc 1 294 0
	movq	64(%rbp), %rdi
	call	qemu_free
	.loc 1 295 0
	movq	72(%rbp), %rdi
	call	qemu_free
	.loc 1 296 0
	movq	272(%rbp), %rdi
	call	qemu_free
	.loc 1 297 0
	movq	280(%rbp), %rdi
	call	qemu_free
	.loc 1 298 0
	movq	(%rbp), %rdi
	call	bdrv_delete
	.loc 1 299 0
	movl	$-1, %eax
.L45:
	.loc 1 300 0
	movq	152(%rsp), %rbx
	movq	160(%rsp), %rbp
	movq	168(%rsp), %r12
	movq	176(%rsp), %r13
	movq	184(%rsp), %r14
	movq	192(%rsp), %r15
	addq	$200, %rsp
	ret
	.p2align 4,,7
.L196:
	.loc 1 215 0
	cmpq	$1, %rcx
	jbe	.L48
	cmpl	$8, %esi
	jbe	.L48
	cmpl	$16, %esi
	.p2align 4,,5
	ja	.L48
	.loc 1 219 0
	cmpl	$1, %edx
	.p2align 4,,5
	ja	.L48
	.loc 1 222 0
	testl	%edx, %edx
	.loc 1 221 0
	movl	%edx, 356(%rbp)
	.loc 1 222 0
	je	.L105
	.loc 1 223 0
	movl	$1, 20(%r12)
.L105:
	.loc 1 224 0
	movl	84(%rsp), %esi
	.loc 1 225 0
	movl	$1, %edx
	movl	%edx, %eax
	movl	%esi, %ecx
	.loc 1 224 0
	movl	%esi, 8(%rbp)
	.loc 1 225 0
	sall	%cl, %eax
	.loc 1 226 0
	leal	-9(%rsi), %ecx
	.loc 1 225 0
	movl	%eax, 12(%rbp)
	.loc 1 226 0
	movl	%edx, %eax
	sall	%cl, %eax
	.loc 1 227 0
	leal	-3(%rsi), %ecx
	.loc 1 230 0
	movl	$70, %esi
	.loc 1 226 0
	movl	%eax, 16(%rbp)
	.loc 1 228 0
	movl	%edx, %eax
	sall	%cl, %eax
	.loc 1 227 0
	movl	%ecx, 20(%rbp)
	.loc 1 228 0
	movl	%eax, 24(%rbp)
	.loc 1 229 0
	movq	88(%rsp), %rax
	shrq	$9, %rax
	movq	%rax, (%r12)
	.loc 1 230 0
	movl	8(%rbp), %edi
	.loc 1 231 0
	leal	-8(%rdi), %eax
	.loc 1 230 0
	subl	%edi, %esi
	movl	%esi, 36(%rbp)
	.loc 1 231 0
	movl	%eax, %ecx
	sall	%cl, %edx
	.loc 1 232 0
	movl	%esi, %ecx
	.loc 1 231 0
	decl	%edx
	movl	%edx, 40(%rbp)
	.loc 1 232 0
	movl	$1, %edx
	movq	%rdx, %rax
	salq	%cl, %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 48(%rbp)
	.loc 1 233 0
	movq	112(%rsp), %rax
	.loc 1 234 0
	leal	-3(%rdi), %ecx
	.loc 1 233 0
	movq	%rax, 304(%rbp)
	.loc 1 234 0
	movl	120(%rsp), %eax
	sall	%cl, %eax
	.loc 1 242 0
	movl	%edi, %ecx
	addl	20(%rbp), %ecx
	.loc 1 234 0
	movl	%eax, 312(%rbp)
	.loc 1 237 0
	movq	128(%rsp), %rax
	movq	%rax, 848(%rbp)
	.loc 1 238 0
	movl	124(%rsp), %eax
	.loc 1 243 0
	salq	%cl, %rdx
	.loc 1 238 0
	movl	%eax, 860(%rbp)
	.loc 1 241 0
	movl	100(%rsp), %esi
	movl	%esi, 28(%rbp)
	.loc 1 243 0
	addq	88(%rsp), %rdx
	decq	%rdx
	shrq	%cl, %rdx
	.loc 1 246 0
	cmpl	%edx, %esi
	.loc 1 243 0
	movl	%edx, 32(%rbp)
	.loc 1 246 0
	jl	.L48
	.loc 1 248 0
	movq	104(%rsp), %rax
	.loc 1 249 0
	movslq	%esi,%rdi
	salq	$3, %rdi
	.loc 1 248 0
	movq	%rax, 56(%rbp)
	.loc 1 249 0
	call	qemu_malloc
	.loc 1 250 0
	testq	%rax, %rax
	.loc 1 249 0
	movq	%rax, 64(%rbp)
	.loc 1 250 0
	je	.L48
	.loc 1 252 0
	movslq	28(%rbp),%rcx
	movq	56(%rbp), %rsi
	movq	%rax, %rdx
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pread
	movl	28(%rbp), %esi
	cltq
	movslq	%esi,%rdx
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L48
	.loc 1 255 0
	xorl	%ecx, %ecx
	cmpl	$0, %esi
	jmp	.L194
.L197:
.LBB106:
	.loc 2 121 0
	movq	64(%rbp), %rdx
	movslq	%ecx,%rax
.LBE106:
	.loc 1 255 0
	incl	%ecx
.LBB107:
	.loc 2 121 0
	leaq	(%rdx,%rax,8), %rax
.LBB108:
.LBB109:
	.loc 2 57 0
	movq	(%rax), %rdx
.LBB110:
.LBB111:
	.loc 2 58 0
#APP
	bswap %rdx
#NO_APP
.LBE111:
.LBE110:
.LBE109:
	.loc 2 57 0
	movq	%rdx, (%rax)
.LBE108:
.LBE107:
	.loc 1 255 0
	cmpl	%ecx, 28(%rbp)
.L194:
	jg	.L197
	.loc 1 259 0
	movslq	24(%rbp),%rdi
	salq	$7, %rdi
	call	qemu_malloc
	.loc 1 260 0
	testq	%rax, %rax
	.loc 1 259 0
	movq	%rax, 72(%rbp)
	.loc 1 260 0
	je	.L48
	.loc 1 262 0
	movslq	12(%rbp),%rdi
	call	qemu_malloc
	.loc 1 263 0
	testq	%rax, %rax
	.loc 1 262 0
	movq	%rax, 272(%rbp)
	.loc 1 263 0
	je	.L48
	.loc 1 266 0
	movl	12(%rbp), %edi
	addl	$512, %edi
	movslq	%edi,%rdi
	call	qemu_malloc
	.loc 1 267 0
	testq	%rax, %rax
	.loc 1 266 0
	movq	%rax, 280(%rbp)
	.loc 1 267 0
	je	.L48
	.loc 1 269 0
	movq	$-1, 288(%rbp)
.LBB112:
.LBB113:
	.loc 1 1732 0
	movq	56(%r12), %rbx
	.loc 1 1735 0
	movslq	12(%rbx),%rdi
	call	qemu_malloc
	.loc 1 1736 0
	testq	%rax, %rax
	.loc 1 1735 0
	movq	%rax, 328(%rbx)
	.loc 1 1736 0
	je	.L48
	.loc 1 1738 0
	mov	312(%rbx), %eax
	leaq	0(,%rax,8), %r13
	.loc 1 1739 0
	movslq	%r13d,%rdi
	call	qemu_malloc
	.loc 1 1740 0
	testq	%rax, %rax
	.loc 1 1739 0
	movq	%rax, 296(%rbx)
	.loc 1 1740 0
	je	.L48
	.loc 1 1742 0
	movl	312(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L198
.L122:
.L124:
.LBE113:
.LBE112:
	.loc 1 275 0
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L135
	.loc 1 276 0
	movl	80(%rsp), %ebx
	.loc 1 278 0
	movl	$1023, %eax
	.loc 1 279 0
	movq	(%rbp), %rdi
	leaq	1604(%r12), %rdx
	.loc 1 278 0
	cmpl	$1024, %ebx
	cmovge	%eax, %ebx
	.loc 1 279 0
	movl	%ebx, %ecx
	call	bdrv_pread
	cmpl	%ebx, %eax
	jne	.L48
	.loc 1 281 0
	cltq
	movb	$0, 1604(%rax,%r12)
.L135:
.LBB114:
.LBB115:
	.loc 1 1381 0
	movq	56(%r12), %r14
	.loc 1 1389 0
	movslq	860(%r14),%rax
	.loc 1 1388 0
	movq	848(%r14), %r15
	.loc 1 1389 0
	leaq	0(,%rax,8), %rdi
	subq	%rax, %rdi
	salq	$3, %rdi
	call	qemu_mallocz
	.loc 1 1390 0
	testq	%rax, %rax
	.loc 1 1389 0
	movq	%rax, 864(%r14)
	.loc 1 1390 0
	je	.L140
	.loc 1 1392 0
	movl	$0, 12(%rsp)
	movl	860(%r14), %edx
	testl	%edx, %edx
	jg	.L185
	jmp	.L191
	.p2align 4,,7
.L199:
	.loc 1 1397 0
	movslq	12(%rsp),%rdx
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	864(%r14), %rdx
	leaq	(%rdx,%rax,8), %rbx
.LBB116:
	.loc 2 121 0
	movq	16(%rsp), %rax
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
	.loc 2 121 0
	movq	%rax, (%rbx)
.LBB121:
	.loc 2 120 0
	movl	24(%rsp), %eax
.LBB122:
.LBB123:
.LBB124:
.LBB125:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE125:
.LBE124:
.LBE123:
.LBE122:
.LBE121:
	.loc 2 120 0
	movl	%eax, 8(%rbx)
.LBB126:
	movl	48(%rsp), %eax
.LBB127:
.LBB128:
.LBB129:
.LBB130:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE130:
.LBE129:
.LBE128:
.LBE127:
.LBE126:
	.loc 2 120 0
	movl	%eax, 32(%rbx)
.LBB131:
	movl	32(%rsp), %eax
.LBB132:
.LBB133:
.LBB134:
.LBB135:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE135:
.LBE134:
.LBE133:
.LBE132:
.LBE131:
	.loc 2 120 0
	movl	%eax, 36(%rbx)
.LBB136:
	movl	36(%rsp), %eax
.LBB137:
.LBB138:
.LBB139:
.LBB140:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE140:
.LBE139:
.LBE138:
.LBE137:
.LBE136:
	.loc 2 120 0
	movl	%eax, 40(%rbx)
.LBB141:
	.loc 2 121 0
	movq	40(%rsp), %rax
.LBB142:
.LBB143:
.LBB144:
.LBB145:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE145:
.LBE144:
.LBE143:
.LBE142:
.LBE141:
	.loc 2 121 0
	movq	%rax, 48(%rbx)
.LBB146:
	.loc 2 119 0
	movl	28(%rsp), %eax
.LBB147:
.LBB148:
.LBB149:
.LBB150:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE150:
.LBE149:
.LBE148:
.LBE147:
.LBE146:
	.loc 2 119 0
	movzwl	%ax, %r13d
.LBB151:
	.loc 2 120 0
	movl	52(%rsp), %edx
.LBE151:
.LBB152:
	.loc 2 119 0
	movzwl	30(%rsp), %eax
.LBE152:
	.loc 1 1411 0
	leal	1(%r13), %edi
.LBB153:
.LBB154:
.LBB155:
.LBB156:
.LBB157:
	.loc 2 53 0
#APP
	bswap %edx
#NO_APP
.LBE157:
.LBE156:
.LBE155:
.LBE154:
.LBE153:
.LBB158:
.LBB159:
.LBB160:
.LBB161:
.LBB162:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE162:
.LBE161:
.LBE160:
.LBE159:
.LBE158:
	.loc 1 1409 0
	mov	%edx, %edx
	.loc 2 119 0
	movzwl	%ax, %eax
	movl	%eax, 8(%rsp)
	.loc 1 1409 0
	leaq	40(%r15,%rdx), %r15
	.loc 1 1411 0
	call	qemu_malloc
	.loc 1 1412 0
	testq	%rax, %rax
	.loc 1 1411 0
	movq	%rax, 16(%rbx)
	.loc 1 1412 0
	je	.L140
	.loc 1 1414 0
	movq	(%r14), %rdi
	movl	%r13d, %ecx
	movq	%rax, %rdx
	movq	%r15, %rsi
	call	bdrv_pread
	cmpl	%r13d, %eax
	jne	.L140
	.loc 1 1417 0
	movq	16(%rbx), %rdx
	.loc 1 1416 0
	cltq
	addq	%rax, %r15
	.loc 1 1417 0
	movb	$0, (%rdx,%rax)
	.loc 1 1419 0
	movl	8(%rsp), %edi
	incl	%edi
	call	qemu_malloc
	.loc 1 1420 0
	testq	%rax, %rax
	.loc 1 1419 0
	movq	%rax, 24(%rbx)
	.loc 1 1420 0
	je	.L140
	.loc 1 1422 0
	movl	8(%rsp), %ecx
	movq	(%r14), %rdi
	movq	%rax, %rdx
	movq	%r15, %rsi
	call	bdrv_pread
	cmpl	8(%rsp), %eax
	jne	.L140
	.loc 1 1424 0
	movslq	%eax,%rdx
	.loc 1 1425 0
	movq	24(%rbx), %rax
	.loc 1 1424 0
	addq	%rdx, %r15
	.loc 1 1425 0
	movb	$0, (%rax,%rdx)
	.loc 1 1392 0
	incl	12(%rsp)
	movl	12(%rsp), %eax
	cmpl	%eax, 860(%r14)
	jle	.L191
.L185:
	.loc 1 1393 0
	movq	%r15, %rdi
	movl	$8, %esi
	call	align_offset
	.loc 1 1394 0
	movq	(%r14), %rdi
	leaq	16(%rsp), %rdx
	movl	$40, %ecx
	movq	%rax, %rsi
	.loc 1 1393 0
	movq	%rax, %r15
	.loc 1 1394 0
	call	bdrv_pread
	cmpl	$40, %eax
	je	.L199
.L140:
	.loc 1 1430 0
	movq	%r12, %rdi
	call	qcow_free_snapshots
	.p2align 4,,4
	jmp	.L48
.L198:
.LBE115:
.LBE114:
.LBB163:
.LBB164:
	.loc 1 1743 0
	movq	304(%rbx), %rsi
	movq	(%rbx), %rdi
	movl	%r13d, %ecx
	movq	%rax, %rdx
	call	bdrv_pread
	.loc 1 1745 0
	cmpl	%r13d, %eax
	jne	.L48
	.loc 1 1747 0
	xorl	%ecx, %ecx
	jmp	.L195
	.p2align 4,,7
.L200:
.LBB165:
	.loc 2 121 0
	movq	296(%rbx), %rdx
	movslq	%ecx,%rax
.LBE165:
	.loc 1 1747 0
	incl	%ecx
.LBB166:
	.loc 2 121 0
	leaq	(%rdx,%rax,8), %rax
.LBB167:
.LBB168:
	.loc 2 57 0
	movq	(%rax), %rdx
.LBB169:
.LBB170:
	.loc 2 58 0
#APP
	bswap %rdx
#NO_APP
.LBE170:
.LBE169:
.LBE168:
	.loc 2 57 0
	movq	%rdx, (%rax)
.L195:
.LBE167:
.LBE166:
	.loc 1 1747 0
	cmpl	312(%rbx), %ecx
	jb	.L200
	jmp	.L124
	.p2align 4,,7
.L191:
.LBE164:
.LBE163:
.LBB171:
.LBB172:
	.loc 1 1427 0
	movl	%r15d, %eax
	subl	848(%r14), %eax
	movl	%eax, 856(%r14)
.LBE172:
.LBE171:
	.loc 1 289 0
	xorl	%eax, %eax
	jmp	.L45
.LFE98:
	.size	qcow_open, .-qcow_open
	.section	.rodata.str1.1
.LC1:
	.string	"1.2.3.3"
	.text
	.p2align 4,,15
	.type	decompress_cluster, @function
decompress_cluster:
.LFB109:
	.loc 1 677 0
	movq	%rbp, -40(%rsp)
.LCFI21:
	movq	%rbx, -48(%rsp)
.LCFI22:
	movq	%rdi, %rbp
	movq	%r12, -32(%rsp)
.LCFI23:
	movq	%r13, -24(%rsp)
.LCFI24:
	movq	%r14, -16(%rsp)
.LCFI25:
	movq	%r15, -8(%rsp)
.LCFI26:
	subq	$184, %rsp
.LCFI27:
	.loc 1 681 0
	movq	48(%rdi), %r13
	andq	%rsi, %r13
	.loc 1 682 0
	cmpq	%r13, 288(%rdi)
	je	.L202
	.loc 1 683 0
	movl	36(%rdi), %ecx
	.loc 1 686 0
	movq	280(%rdi), %rdx
	.loc 1 684 0
	movl	%r13d, %ebx
	andl	$511, %ebx
	.loc 1 683 0
	shrq	%cl, %rsi
	movl	40(%rdi), %ecx
	.loc 1 686 0
	movq	(%rdi), %rdi
	.loc 1 683 0
	andl	%esi, %ecx
	.loc 1 686 0
	movq	%r13, %rsi
	.loc 1 683 0
	incl	%ecx
	.loc 1 686 0
	shrq	$9, %rsi
	.loc 1 685 0
	movl	%ecx, %r12d
	sall	$9, %r12d
	.loc 1 686 0
	call	bdrv_read
	.loc 1 685 0
	subl	%ebx, %r12d
	.loc 1 687 0
	testl	%eax, %eax
	.loc 1 688 0
	movl	$-1, %edx
	.loc 1 687 0
	js	.L201
.LBB173:
	.loc 1 651 0
	movl	12(%rbp), %eax
.LBB174:
	.loc 1 652 0
	leaq	16(%rsp), %r14
.LBE174:
	.loc 1 651 0
	movq	272(%rbp), %r15
.LBB175:
	.loc 1 655 0
	xorl	%esi, %esi
	movl	$112, %edx
.LBE175:
	.loc 1 651 0
	movslq	%ebx,%rbx
.LBB176:
	.loc 1 655 0
	movq	%r14, %rdi
.LBE176:
	.loc 1 651 0
	movl	%eax, 12(%rsp)
	addq	280(%rbp), %rbx
.LBB177:
	.loc 1 655 0
	call	memset
	.loc 1 660 0
	movl	12(%rsp), %eax
	.loc 1 662 0
	movl	$112, %ecx
	movl	$.LC1, %edx
	movl	$-12, %esi
	movq	%r14, %rdi
	.loc 1 658 0
	movl	%r12d, 24(%rsp)
	.loc 1 657 0
	movq	%rbx, 16(%rsp)
	.loc 1 659 0
	movq	%r15, 40(%rsp)
	.loc 1 660 0
	movl	%eax, 48(%rsp)
	.loc 1 662 0
	call	inflateInit2_
	.loc 1 663 0
	testl	%eax, %eax
	je	.L210
.L209:
.LBE177:
.LBE173:
	.loc 1 692 0
	movl	$-1, %edx
.L201:
	.loc 1 697 0
	movq	136(%rsp), %rbx
	movq	144(%rsp), %rbp
	movl	%edx, %eax
	movq	152(%rsp), %r12
	movq	160(%rsp), %r13
	movq	168(%rsp), %r14
	movq	176(%rsp), %r15
	addq	$184, %rsp
	ret
.L207:
.LBB178:
.LBB179:
	.loc 1 672 0
	movq	%r14, %rdi
	call	inflateEnd
.LBE179:
.LBE178:
	.loc 1 694 0
	movq	%r13, 288(%rbp)
	.p2align 4,,7
.L202:
	.loc 1 696 0
	xorl	%edx, %edx
	jmp	.L201
	.p2align 4,,7
.L210:
.LBB180:
.LBB181:
	.loc 1 665 0
	movl	$4, %esi
	movq	%r14, %rdi
	call	inflate
	movl	%eax, %ecx
	.loc 1 666 0
	movq	40(%rsp), %rax
	movl	%eax, %esi
	subl	%r15d, %esi
	.loc 1 667 0
	cmpl	$1, %ecx
	setne	%dl
	xorl	%eax, %eax
	cmpl	$-5, %ecx
	setne	%al
	testl	%edx, %eax
	jne	.L208
	cmpl	12(%rsp), %esi
	je	.L207
.L208:
	.loc 1 669 0
	movq	%r14, %rdi
	call	inflateEnd
	.p2align 4,,3
	jmp	.L209
.LBE181:
.LBE180:
.LFE109:
	.size	decompress_cluster, .-decompress_cluster
	.p2align 4,,15
	.type	backing_read1, @function
backing_read1:
.LFB110:
	.loc 1 702 0
	pushq	%rbx
.LCFI28:
	.loc 1 702 0
	movq	%rdx, %r8
	.loc 1 704 0
	movq	(%rdi), %rdx
	movslq	%ecx,%rax
	.loc 1 705 0
	movl	%ecx, %edi
	.loc 1 704 0
	addq	%rsi, %rax
	cmpq	%rdx, %rax
	jle	.L211
	.loc 1 707 0
	movl	%edx, %eax
	xorl	%ebx, %ebx
	subl	%esi, %eax
	cmpq	%rsi, %rdx
	cmovg	%eax, %ebx
	.loc 1 710 0
	xorl	%esi, %esi
	movl	%ebx, %edi
	subl	%ebx, %ecx
	sall	$9, %edi
	sall	$9, %ecx
	movslq	%edi,%rdi
	movslq	%ecx,%rdx
	addq	%r8, %rdi
	call	memset
	.loc 1 711 0
	movl	%ebx, %edi
.L211:
	.loc 1 712 0
	popq	%rbx
	movl	%edi, %eax
	ret
.LFE110:
	.size	backing_read1, .-backing_read1
	.p2align 4,,15
	.type	qcow_aio_setup, @function
qcow_aio_setup:
.LFB114:
	.loc 1 894 0
	movq	%rbx, -24(%rsp)
.LCFI29:
	movq	%rbp, -16(%rsp)
.LCFI30:
	movq	%rsi, %rbx
	movq	%r12, -8(%rsp)
.LCFI31:
	movq	%rdx, %rbp
	subq	$24, %rsp
.LCFI32:
	.loc 1 894 0
	movq	%r9, %rdx
	movq	%r8, %rsi
	movl	%ecx, %r12d
	.loc 1 897 0
	call	qemu_aio_get
	.loc 1 899 0
	xorl	%edx, %edx
	.loc 1 898 0
	testq	%rax, %rax
	je	.L215
	.loc 1 900 0
	movq	$0, 72(%rax)
	.loc 1 901 0
	movq	%rbx, 32(%rax)
	.loc 1 906 0
	movq	%rax, %rdx
	.loc 1 902 0
	movq	%rbp, 40(%rax)
	.loc 1 903 0
	movl	%r12d, 48(%rax)
	.loc 1 904 0
	movl	$0, 52(%rax)
	.loc 1 905 0
	movq	$0, 56(%rax)
.L215:
	.loc 1 907 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	%rdx, %rax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE114:
	.size	qcow_aio_setup, .-qcow_aio_setup
	.p2align 4,,15
	.type	qcow_aio_cancel, @function
qcow_aio_cancel:
.LFB118:
	.loc 1 1003 0
	pushq	%rbx
.LCFI33:
	.loc 1 1003 0
	movq	%rdi, %rbx
	.loc 1 1005 0
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L219
	.loc 1 1007 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
	.p2align 4,,7
.L219:
	.loc 1 1006 0
	call	bdrv_aio_cancel
	.loc 1 1007 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_aio_release
.LFE118:
	.size	qcow_aio_cancel, .-qcow_aio_cancel
	.p2align 4,,15
	.type	qcow_close, @function
qcow_close:
.LFB119:
	.loc 1 1011 0
	movq	%r12, -8(%rsp)
.LCFI34:
	movq	%rbx, -16(%rsp)
.LCFI35:
	subq	$24, %rsp
.LCFI36:
	.loc 1 1012 0
	movq	56(%rdi), %rbx
	.loc 1 1011 0
	movq	%rdi, %r12
	.loc 1 1013 0
	movq	64(%rbx), %rdi
	call	qemu_free
	.loc 1 1014 0
	movq	72(%rbx), %rdi
	call	qemu_free
	.loc 1 1015 0
	movq	272(%rbx), %rdi
	call	qemu_free
	.loc 1 1016 0
	movq	280(%rbx), %rdi
	call	qemu_free
	.loc 1 1017 0
	movq	%r12, %rdi
	call	refcount_close
	.loc 1 1018 0
	movq	(%rbx), %rdi
	movq	16(%rsp), %r12
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	jmp	bdrv_delete
.LFE119:
	.size	qcow_close, .-qcow_close
	.p2align 4,,15
	.type	create_refcount_update, @function
create_refcount_update:
.LFB120:
	.loc 1 1034 0
	.loc 1 1039 0
	movl	(%rdi), %eax
	.loc 1 1040 0
	leaq	-1(%rsi,%rdx), %r8
	.loc 1 1039 0
	decl	%eax
	notl	%eax
	cltq
	.loc 1 1040 0
	andq	%rax, %r8
	.loc 1 1041 0
	andq	%rax, %rsi
	jmp	.L236
	.p2align 4,,7
.L237:
	.loc 1 1043 0
	movl	4(%rdi), %ecx
	movq	8(%rdi), %rax
	movq	%rsi, %rdx
	sarq	%cl, %rdx
	leaq	(%rax,%rdx,2), %rdx
.LBB182:
	.loc 2 119 0
	movzwl	(%rdx), %eax
.LBB183:
.LBB184:
.LBB185:
.LBB186:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE186:
.LBE185:
.LBE184:
.LBE183:
.LBE182:
.LBB187:
	.loc 2 119 0
	incl	%eax
.LBB188:
.LBB189:
.LBB190:
.LBB191:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE191:
.LBE190:
.LBE189:
.LBE188:
.LBE187:
	.loc 2 119 0
	movw	%ax, (%rdx)
	.loc 1 1041 0
	movslq	(%rdi),%rax
	addq	%rax, %rsi
.L236:
	cmpq	%r8, %rsi
	jle	.L237
	rep ; ret
.LFE120:
	.size	create_refcount_update, .-create_refcount_update
	.p2align 4,,15
	.type	qcow_create, @function
qcow_create:
.LFB121:
	.loc 1 1052 0
	pushq	%r15
.LCFI37:
	movq	%rdi, %r8
	.loc 1 1058 0
	xorl	%eax, %eax
	cld
	.loc 1 1052 0
	pushq	%r14
.LCFI38:
	pushq	%r13
.LCFI39:
	movl	%ecx, %r13d
	.loc 1 1058 0
	movl	$6, %ecx
	.loc 1 1052 0
	pushq	%r12
.LCFI40:
	pushq	%rbp
.LCFI41:
	pushq	%rbx
.LCFI42:
	movq	%rsi, %rbx
	.loc 1 1060 0
	movl	$577, %esi
	.loc 1 1052 0
	subq	$168, %rsp
.LCFI43:
	.loc 1 1056 0
	leaq	32(%rsp), %rbp
	.loc 1 1052 0
	movq	%rdx, 16(%rsp)
	.loc 1 1060 0
	movl	$420, %edx
	.loc 1 1058 0
	movq	%rbp, %rdi
	rep
	stosq
	.loc 1 1060 0
	movq	%r8, %rdi
	call	open64
	movl	%eax, %r12d
	.loc 1 1062 0
	movl	$-1, %eax
	.loc 1 1061 0
	testl	%r12d, %r12d
	js	.L238
	.loc 1 1063 0
	leaq	80(%rsp), %rdi
	movl	$72, %edx
	xorl	%esi, %esi
	call	memset
.LBB192:
	.loc 2 121 0
	movq	%rbx, %rax
.LBE192:
	.loc 2 120 0
	movl	$-79083951, 80(%rsp)
	movl	$33554432, 84(%rsp)
.LBB193:
	.loc 2 121 0
	salq	$9, %rax
.LBE193:
	.loc 1 1067 0
	movl	$72, %edx
	.loc 1 1068 0
	movl	$0, 12(%rsp)
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE198:
.LBE197:
.LBE196:
.LBE195:
.LBE194:
	.loc 1 1069 0
	cmpq	$0, 16(%rsp)
	.loc 2 121 0
	movq	%rax, 104(%rsp)
	.loc 1 1069 0
	je	.L252
	.loc 1 1071 0
	movq	16(%rsp), %rdi
	.loc 2 121 0
	movabsq	$5188146770730811392, %rsi
	movq	%rsi, 88(%rsp)
	.loc 1 1071 0
	call	strlen
	movl	%eax, 12(%rsp)
	.loc 1 1073 0
	movl	12(%rsp), %edx
.LBB199:
.LBB200:
.LBB201:
.LBB202:
.LBB203:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE203:
.LBE202:
.LBE201:
.LBE200:
.LBE199:
	.loc 2 120 0
	movl	%eax, 96(%rsp)
	.loc 1 1073 0
	addl	$72, %edx
.L252:
	.loc 1 1078 0
	addl	$7, %edx
	.loc 1 1075 0
	movl	$12, 36(%rsp)
	.loc 1 1076 0
	movl	$4096, 32(%rsp)
	.loc 1 1078 0
	andl	$-8, %edx
	.loc 1 1079 0
	andl	$1, %r13d
	.loc 2 120 0
	movl	$201326592, 100(%rsp)
	.loc 1 1079 0
	jne	.L307
	.loc 2 120 0
	movl	$0, 112(%rsp)
.L270:
	.loc 1 1084 0
	movl	4(%rbp), %ecx
	.loc 1 1086 0
	movl	$1, %eax
	salq	$9, %rbx
	.loc 1 1087 0
	movl	(%rbp), %esi
	movslq	%edx,%r15
	movq	%r15, %rdi
	.loc 1 1085 0
	leal	-3(%rcx,%rcx), %ecx
	.loc 1 1086 0
	salq	%cl, %rax
	leaq	-1(%rbx,%rax), %rax
	movq	%rax, %r13
	sarq	%cl, %r13
	.loc 1 1087 0
	call	align_offset
	.loc 1 1088 0
	movq	%rax, 24(%rbp)
	.loc 1 1087 0
	movq	%rax, %rbx
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE208:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
	.loc 2 121 0
	movq	%rax, 120(%rsp)
.LBB209:
.LBB210:
.LBB211:
.LBB212:
.LBB213:
	.loc 2 53 0
	movl	%r13d, %eax
#APP
	bswap %eax
#NO_APP
.LBE213:
.LBE212:
.LBE211:
.LBE210:
.LBE209:
	.loc 2 120 0
	movl	%eax, 116(%rsp)
	.loc 1 1091 0
	movslq	%r13d,%rax
	movl	(%rbp), %esi
	leaq	0(,%rax,8), %r14
	movq	%r14, %rdi
	call	align_offset
	.loc 1 1093 0
	movslq	(%rbp),%rdi
	.loc 1 1091 0
	addq	%rax, %rbx
	.loc 1 1093 0
	call	qemu_mallocz
	.loc 1 1094 0
	testq	%rax, %rax
	.loc 1 1093 0
	movq	%rax, 16(%rbp)
	.loc 1 1094 0
	je	.L284
	.loc 1 1096 0
	movslq	(%rbp),%rdi
	call	qemu_mallocz
	.loc 1 1097 0
	testq	%rax, %rax
	.loc 1 1096 0
	movq	%rax, 8(%rbp)
	.loc 1 1097 0
	je	.L305
	.loc 1 1100 0
	movq	%rbx, 32(%rbp)
.LBB214:
.LBB215:
.LBB216:
.LBB217:
.LBB218:
	.loc 2 58 0
	movq	%rbx, %rax
.LBE218:
.LBE217:
.LBE216:
.LBE215:
.LBE214:
	.loc 2 120 0
	movl	$16777216, 136(%rsp)
.LBB219:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE223:
.LBE222:
.LBE221:
.LBE220:
.LBE219:
	.loc 2 121 0
	movq	%rax, 128(%rsp)
	.loc 1 1103 0
	movslq	(%rbp),%rax
	.loc 1 1110 0
	xorl	%esi, %esi
	.loc 1 1105 0
	movq	16(%rbp), %rdx
	.loc 1 1110 0
	movq	%rbp, %rdi
	.loc 1 1103 0
	addq	%rax, %rbx
.LBB224:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
	.loc 2 58 0
	movq	%rbx, %rax
#APP
	bswap %rax
#NO_APP
.LBE228:
.LBE227:
.LBE226:
.LBE225:
.LBE224:
	.loc 2 121 0
	movq	%rax, (%rdx)
	.loc 1 1110 0
	movq	%r15, %rdx
	.loc 1 1106 0
	movq	%rbx, 40(%rbp)
	.loc 1 1110 0
	call	create_refcount_update
	.loc 1 1111 0
	movq	24(%rbp), %rsi
	movq	%r14, %rdx
	movq	%rbp, %rdi
	call	create_refcount_update
	.loc 1 1112 0
	movslq	(%rbp),%rdx
	movq	32(%rbp), %rsi
	movq	%rbp, %rdi
	call	create_refcount_update
	.loc 1 1113 0
	movslq	(%rbp),%rdx
	movq	40(%rbp), %rsi
	movq	%rbp, %rdi
	call	create_refcount_update
	.loc 1 1116 0
	leaq	80(%rsp), %rsi
	movl	$72, %edx
	movl	%r12d, %edi
	call	write
	.loc 1 1117 0
	cmpq	$0, 16(%rsp)
	je	.L298
	.loc 1 1118 0
	movslq	12(%rsp),%rdx
	movq	16(%rsp), %rsi
	movl	%r12d, %edi
	call	write
.L298:
	.loc 1 1120 0
	movq	24(%rbp), %rsi
	xorl	%edx, %edx
	movl	%r12d, %edi
	.loc 1 1122 0
	xorl	%ebx, %ebx
	.loc 1 1120 0
	call	lseek64
	.loc 1 1122 0
	cmpl	%r13d, %ebx
	.loc 1 1121 0
	movq	$0, 24(%rsp)
	.loc 1 1122 0
	jge	.L304
	.p2align 4,,7
.L308:
	.loc 1 1123 0
	leaq	24(%rsp), %rsi
	movl	$8, %edx
	movl	%r12d, %edi
	.loc 1 1122 0
	incl	%ebx
	.loc 1 1123 0
	call	write
	.loc 1 1122 0
	cmpl	%r13d, %ebx
	jl	.L308
.L304:
	.loc 1 1125 0
	movq	32(%rbp), %rsi
	xorl	%edx, %edx
	movl	%r12d, %edi
	call	lseek64
	.loc 1 1126 0
	movslq	(%rbp),%rdx
	movq	16(%rbp), %rsi
	movl	%r12d, %edi
	call	write
	.loc 1 1128 0
	movq	40(%rbp), %rsi
	xorl	%edx, %edx
	movl	%r12d, %edi
	call	lseek64
	.loc 1 1129 0
	movslq	(%rbp),%rdx
	movq	8(%rbp), %rsi
	movl	%r12d, %edi
	call	write
	.loc 1 1131 0
	movq	16(%rbp), %rdi
	call	qemu_free
	.loc 1 1132 0
	movq	8(%rbp), %rdi
	call	qemu_free
	.loc 1 1133 0
	movl	%r12d, %edi
	call	close
	.loc 1 1134 0
	xorl	%eax, %eax
.L238:
	.loc 1 1140 0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L307:
	.loc 2 120 0
	movl	$16777216, 112(%rsp)
	jmp	.L270
	.p2align 4,,7
.L305:
	movq	16(%rbp), %rax
.L284:
	.loc 1 1136 0
	movq	%rax, %rdi
	call	qemu_free
	.loc 1 1137 0
	movq	8(%rbp), %rdi
	call	qemu_free
	.loc 1 1138 0
	movl	%r12d, %edi
	call	close
	.loc 1 1140 0
	addq	$168, %rsp
	.loc 1 1139 0
	movl	$-12, %eax
	.loc 1 1140 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE121:
	.size	qcow_create, .-qcow_create
	.p2align 4,,15
	.type	qcow_make_empty, @function
qcow_make_empty:
.LFB122:
	.loc 1 1143 0
	.loc 1 1160 0
	xorl	%eax, %eax
	ret
.LFE122:
	.size	qcow_make_empty, .-qcow_make_empty
	.p2align 4,,15
	.type	qcow_flush, @function
qcow_flush:
.LFB124:
	.loc 1 1232 0
	.loc 1 1233 0
	movq	56(%rdi), %rax
	.loc 1 1234 0
	movq	(%rax), %rdi
	jmp	bdrv_flush
.LFE124:
	.size	qcow_flush, .-qcow_flush
	.p2align 4,,15
	.type	qcow_get_info, @function
qcow_get_info:
.LFB125:
	.loc 1 1238 0
	.loc 1 1239 0
	movq	56(%rdi), %rax
	.loc 1 1240 0
	movl	12(%rax), %edx
	movl	%edx, (%rsi)
	.loc 1 1241 0
	movslq	32(%rax),%rdx
	movl	20(%rax), %ecx
	addl	8(%rax), %ecx
	.loc 1 1244 0
	xorl	%eax, %eax
	.loc 1 1241 0
	salq	%cl, %rdx
	movq	%rdx, 8(%rsi)
	.loc 1 1244 0
	ret
.LFE125:
	.size	qcow_get_info, .-qcow_get_info
	.p2align 4,,15
	.type	find_snapshot_by_id, @function
find_snapshot_by_id:
.LFB131:
	.loc 1 1521 0
	pushq	%r14
.LCFI44:
	movq	%rsi, %r14
	pushq	%r13
.LCFI45:
	pushq	%r12
.LCFI46:
	pushq	%rbp
.LCFI47:
	.loc 1 1525 0
	xorl	%ebp, %ebp
	.loc 1 1521 0
	pushq	%rbx
.LCFI48:
	.loc 1 1522 0
	movq	56(%rdi), %rax
	.loc 1 1525 0
	movl	860(%rax), %r13d
	cmpl	$0, %r13d
	jle	.L319
	movq	864(%rax), %r12
	xorl	%ebx, %ebx
	.p2align 4,,7
.L317:
.LBB229:
	.loc 1 1526 0
	movq	16(%rbx,%r12), %rdi
	movq	%r14, %rsi
	call	strcmp
.LBE229:
	testl	%eax, %eax
	je	.L320
	.loc 1 1525 0
	incl	%ebp
	addq	$56, %rbx
	cmpl	%ebp, %r13d
	jg	.L317
.L319:
	.loc 1 1530 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 1 1529 0
	movl	$-1, %eax
	.loc 1 1530 0
	ret
.L320:
	popq	%rbx
	.loc 1 1527 0
	movl	%ebp, %eax
	.loc 1 1530 0
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.LFE131:
	.size	find_snapshot_by_id, .-find_snapshot_by_id
	.p2align 4,,15
	.type	find_snapshot_by_id_or_name, @function
find_snapshot_by_id_or_name:
.LFB132:
	.loc 1 1533 0
	movq	%r12, -24(%rsp)
.LCFI49:
	movq	%rbx, -40(%rsp)
.LCFI50:
	movq	%rsi, %r12
	movq	%rbp, -32(%rsp)
.LCFI51:
	movq	%r13, -16(%rsp)
.LCFI52:
	movq	%r14, -8(%rsp)
.LCFI53:
	subq	$40, %rsp
.LCFI54:
	.loc 1 1534 0
	movq	56(%rdi), %rbx
	.loc 1 1537 0
	call	find_snapshot_by_id
	.loc 1 1538 0
	testl	%eax, %eax
	js	.L331
.L321:
	.loc 1 1545 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L331:
	.loc 1 1540 0
	movl	860(%rbx), %r14d
	xorl	%ebp, %ebp
	cmpl	$0, %r14d
	jle	.L329
	movq	864(%rbx), %r13
	xorl	%ebx, %ebx
	.p2align 4,,7
.L327:
.LBB230:
	.loc 1 1541 0
	movq	24(%rbx,%r13), %rdi
	movq	%r12, %rsi
	call	strcmp
.LBE230:
	testl	%eax, %eax
	je	.L330
	.loc 1 1540 0
	incl	%ebp
	addq	$56, %rbx
	cmpl	%ebp, %r14d
	jg	.L327
.L329:
	.loc 1 1544 0
	movl	$-1, %eax
	.p2align 4,,2
	jmp	.L321
.L330:
	.loc 1 1542 0
	movl	%ebp, %eax
	.p2align 4,,2
	jmp	.L321
.LFE132:
	.size	find_snapshot_by_id_or_name, .-find_snapshot_by_id_or_name
	.p2align 4,,15
	.type	qcow_snapshot_list, @function
qcow_snapshot_list:
.LFB136:
	.loc 1 1698 0
	pushq	%r15
.LCFI55:
	movq	%rsi, %r15
	pushq	%r14
.LCFI56:
	pushq	%r13
.LCFI57:
	pushq	%r12
.LCFI58:
	pushq	%rbp
.LCFI59:
	pushq	%rbx
.LCFI60:
	subq	$8, %rsp
.LCFI61:
	.loc 1 1699 0
	movq	56(%rdi), %r13
	.loc 1 1704 0
	movslq	860(%r13),%rdi
	imulq	$408, %rdi, %rdi
	call	qemu_mallocz
	.loc 1 1705 0
	testq	%rax, %rax
	.loc 1 1704 0
	movq	%rax, %r14
	.loc 1 1705 0
	je	.L334
	.loc 1 1707 0
	movl	860(%r13), %edi
	xorl	%ebp, %ebp
	testl	%edi, %edi
	jle	.L340
	.p2align 4,,7
.L338:
	.loc 1 1708 0
	movslq	%ebp,%rax
	.loc 1 1710 0
	movl	$128, %esi
	.loc 1 1707 0
	incl	%ebp
	.loc 1 1709 0
	leaq	0(,%rax,8), %rbx
	.loc 1 1708 0
	imulq	$408, %rax, %r12
	.loc 1 1709 0
	subq	%rax, %rbx
	movq	864(%r13), %rax
	leaq	(%rax,%rbx,8), %rbx
	.loc 1 1708 0
	addq	%r14, %r12
	.loc 1 1710 0
	movq	%r12, %rdi
	movq	16(%rbx), %rdx
	call	pstrcpy
	.loc 1 1712 0
	movq	24(%rbx), %rdx
	leaq	128(%r12), %rdi
	movl	$256, %esi
	call	pstrcpy
	.loc 1 1714 0
	movl	32(%rbx), %eax
	movl	%eax, 384(%r12)
	.loc 1 1715 0
	movl	36(%rbx), %eax
	movl	%eax, 388(%r12)
	.loc 1 1716 0
	movl	40(%rbx), %eax
	movl	%eax, 392(%r12)
	.loc 1 1717 0
	movq	48(%rbx), %rax
	movq	%rax, 400(%r12)
	.loc 1 1707 0
	cmpl	%ebp, 860(%r13)
	jg	.L338
.L340:
	.loc 1 1719 0
	movq	%r14, (%r15)
	.loc 1 1720 0
	movl	860(%r13), %eax
.L332:
	.loc 1 1725 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L334:
	.loc 1 1722 0
	xorl	%edi, %edi
	call	qemu_free
	.loc 1 1724 0
	movl	$-12, %eax
	.loc 1 1723 0
	movq	$0, (%r15)
	jmp	.L332
.LFE136:
	.size	qcow_snapshot_list, .-qcow_snapshot_list
	.p2align 4,,15
	.type	load_refcount_block, @function
load_refcount_block:
.LFB139:
	.loc 1 1765 0
	movq	%rbp, -8(%rsp)
.LCFI62:
	movq	%rbx, -16(%rsp)
.LCFI63:
	subq	$24, %rsp
.LCFI64:
	.loc 1 1766 0
	movq	56(%rdi), %rbx
	.loc 1 1765 0
	movq	%rsi, %rbp
	.loc 1 1768 0
	movq	328(%rbx), %rdx
	movl	12(%rbx), %ecx
	movq	(%rbx), %rdi
	call	bdrv_pread
	.loc 1 1770 0
	cmpl	%eax, 12(%rbx)
	.loc 1 1771 0
	movl	$-5, %edx
	.loc 1 1770 0
	jne	.L341
	.loc 1 1772 0
	movq	%rbp, 320(%rbx)
	.loc 1 1773 0
	xorl	%edx, %edx
.L341:
	.loc 1 1774 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.LFE139:
	.size	load_refcount_block, .-load_refcount_block
	.p2align 4,,15
	.type	get_refcount, @function
get_refcount:
.LFB140:
	.loc 1 1777 0
	movq	%rbx, -16(%rsp)
.LCFI65:
	movq	%rbp, -8(%rsp)
.LCFI66:
	subq	$24, %rsp
.LCFI67:
	.loc 1 1778 0
	movq	56(%rdi), %rbx
	.loc 1 1782 0
	movq	%rsi, %rax
	.loc 1 1784 0
	xorl	%edx, %edx
	.loc 1 1777 0
	movq	%rsi, %rbp
	.loc 1 1782 0
	movl	8(%rbx), %r8d
	leal	-1(%r8), %ecx
	sarq	%cl, %rax
	.loc 1 1783 0
	cmpl	312(%rbx), %eax
	jae	.L343
	.loc 1 1785 0
	movslq	%eax,%rdx
	movq	296(%rbx), %rax
	movq	(%rax,%rdx,8), %rsi
	.loc 1 1787 0
	xorl	%edx, %edx
	.loc 1 1786 0
	testq	%rsi, %rsi
	je	.L343
	.loc 1 1788 0
	cmpq	320(%rbx), %rsi
	je	.L346
	.loc 1 1790 0
	call	load_refcount_block
	testl	%eax, %eax
	.loc 1 1791 0
	movl	$1, %edx
	.loc 1 1790 0
	js	.L343
	movl	8(%rbx), %r8d
.L346:
	.loc 1 1793 0
	leal	-1(%r8), %ecx
	movl	$1, %eax
.LBB231:
	.loc 2 119 0
	movq	328(%rbx), %rdx
.LBE231:
	.loc 1 1793 0
	sall	%cl, %eax
	decl	%eax
	andl	%ebp, %eax
.LBB232:
	.loc 2 119 0
	cltq
	movzwl	(%rdx,%rax,2), %eax
.LBB233:
.LBB234:
.LBB235:
.LBB236:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE236:
.LBE235:
.LBE234:
.LBE233:
.LBE232:
	.loc 2 119 0
	movzwl	%ax, %edx
	.p2align 4,,7
.L343:
	.loc 1 1796 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	addq	$24, %rsp
	ret
.LFE140:
	.size	get_refcount, .-get_refcount
	.p2align 4,,15
	.type	alloc_clusters_noref, @function
alloc_clusters_noref:
.LFB141:
	.loc 1 1800 0
	pushq	%r13
.LCFI68:
	pushq	%r12
.LCFI69:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI70:
	pushq	%rbx
.LCFI71:
	subq	$8, %rsp
.LCFI72:
	.loc 1 1801 0
	movq	56(%rdi), %rbx
	.loc 1 1804 0
	movslq	12(%rbx),%rax
	movl	8(%rbx), %ecx
	leaq	-1(%rax,%rsi), %rax
	movq	336(%rbx), %rsi
	movq	%rax, %r13
	sarq	%cl, %r13
.L354:
	.loc 1 1806 0
	movq	%r12, %rdi
	call	get_refcount
	testl	%eax, %eax
	jne	.L361
	.loc 1 1807 0
	movq	336(%rbx), %rsi
	.loc 1 1808 0
	movl	$1, %ebp
	.loc 1 1807 0
	incq	%rsi
	movq	%rsi, 336(%rbx)
	jmp	.L366
	.p2align 4,,7
.L367:
	.loc 1 1809 0
	movq	%r12, %rdi
	call	get_refcount
	testl	%eax, %eax
	jne	.L361
	.loc 1 1811 0
	movq	336(%rbx), %rsi
	.loc 1 1808 0
	incl	%ebp
	.loc 1 1811 0
	incq	%rsi
	movq	%rsi, 336(%rbx)
.L366:
	.loc 1 1808 0
	cmpl	%r13d, %ebp
	jl	.L367
	.loc 1 1818 0
	movl	8(%rbx), %ecx
	.loc 1 1824 0
	addq	$8, %rsp
	.loc 1 1818 0
	movslq	%r13d,%rax
	.loc 1 1824 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	.loc 1 1818 0
	subq	%rax, %rsi
	salq	%cl, %rsi
	.loc 1 1824 0
	movq	%rsi, %rax
	ret
	.p2align 4,,7
.L361:
	.loc 1 1821 0
	movq	336(%rbx), %rsi
	incq	%rsi
	movq	%rsi, 336(%rbx)
	jmp	.L354
.LFE141:
	.size	alloc_clusters_noref, .-alloc_clusters_noref
	.p2align 4,,15
	.type	update_cluster_refcount, @function
update_cluster_refcount:
.LFB146:
	.loc 1 1956 0
	pushq	%r15
.LCFI73:
	movq	%rdi, %r15
	pushq	%r14
.LCFI74:
	.loc 1 1962 0
	movq	%rsi, %r14
	.loc 1 1956 0
	pushq	%r13
.LCFI75:
	pushq	%r12
.LCFI76:
	pushq	%rbp
.LCFI77:
	pushq	%rbx
.LCFI78:
	subq	$72, %rsp
.LCFI79:
	.loc 1 1956 0
	movq	%rsi, 40(%rsp)
	movl	%edx, 36(%rsp)
	.loc 1 1957 0
	movq	56(%rdi), %rbp
	.loc 1 1962 0
	movl	8(%rbp), %edi
	.loc 1 1963 0
	movl	312(%rbp), %edx
	.loc 1 1962 0
	leal	-1(%rdi), %ecx
	sarq	%cl, %r14
	.loc 1 1963 0
	cmpl	%edx, %r14d
	jb	.L369
	.loc 1 1964 0
	movl	36(%rsp), %r9d
	.loc 1 1965 0
	movl	$-22, %ecx
	.loc 1 1964 0
	testl	%r9d, %r9d
	js	.L368
.LBB237:
	.loc 1 1882 0
	leal	1(%r14), %esi
.LBB238:
	.loc 1 1892 0
	xorl	%eax, %eax
	cmpl	%edx, %esi
	jbe	.L372
	.loc 1 1895 0
	leal	-3(%rdi), %ecx
	movl	%edx, %ebx
	shrl	%cl, %ebx
	jmp	.L373
	.p2align 4,,7
.L437:
	.loc 1 1898 0
	movb	$1, %bl
	.loc 1 1902 0
	movl	%ebx, %r12d
	sall	%cl, %r12d
	.loc 1 1903 0
	cmpl	%r12d, %esi
	jle	.L436
.L373:
	.loc 1 1897 0
	testl	%ebx, %ebx
	je	.L437
	.loc 1 1900 0
	leal	1(%rbx,%rbx,2), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ebx
	sarl	%ebx
	.loc 1 1902 0
	movl	%ebx, %r12d
	sall	%cl, %r12d
	.loc 1 1903 0
	cmpl	%r12d, %esi
	jg	.L373
.L436:
	.loc 1 1911 0
	leal	0(,%r12,8), %eax
	movl	%eax, 32(%rsp)
	.loc 1 1912 0
	cltq
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	qemu_mallocz
	movq	%rax, %r13
	.loc 1 1913 0
	movl	$-12, %eax
	testq	%r13, %r13
	je	.L372
	.loc 1 1915 0
	mov	312(%rbp), %edx
	movq	296(%rbp), %rsi
	movq	%r13, %rdi
	salq	$3, %rdx
	call	memcpy
	.loc 1 1917 0
	xorl	%ecx, %ecx
	jmp	.L434
	.p2align 4,,7
.L438:
.LBB239:
	.loc 2 121 0
	movslq	%ecx,%rdx
.LBE239:
	.loc 1 1917 0
	incl	%ecx
.LBB240:
	.loc 2 121 0
	leaq	(%r13,%rdx,8), %rdx
.LBB241:
.LBB242:
	.loc 2 57 0
	movq	(%rdx), %rax
.LBB243:
.LBB244:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE244:
.LBE243:
.LBE242:
	.loc 2 57 0
	movq	%rax, (%rdx)
.L434:
.LBE241:
.LBE240:
	.loc 1 1917 0
	cmpl	312(%rbp), %ecx
	jb	.L438
	.loc 1 1920 0
	movq	8(%rsp), %rsi
	movq	%r15, %rdi
	call	alloc_clusters_noref
	.loc 1 1921 0
	movl	32(%rsp), %ecx
	.loc 1 1920 0
	movq	%rax, 24(%rsp)
	.loc 1 1921 0
	movq	%r13, %rdx
	movq	(%rbp), %rdi
	movq	%rax, %rsi
	call	bdrv_pwrite
	.loc 1 1922 0
	cmpl	32(%rsp), %eax
	jne	.L388
	.loc 1 1924 0
	xorl	%ecx, %ecx
	jmp	.L435
	.p2align 4,,7
.L439:
.LBB245:
	.loc 2 121 0
	movslq	%ecx,%rdx
.LBE245:
	.loc 1 1924 0
	incl	%ecx
.LBB246:
	.loc 2 121 0
	leaq	(%r13,%rdx,8), %rdx
.LBB247:
.LBB248:
	.loc 2 57 0
	movq	(%rdx), %rax
.LBB249:
.LBB250:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE250:
.LBE249:
.LBE248:
	.loc 2 57 0
	movq	%rax, (%rdx)
.L435:
.LBE247:
.LBE246:
	.loc 1 1924 0
	cmpl	312(%rbp), %ecx
	jb	.L439
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LBB255:
	.loc 2 58 0
	movq	24(%rsp), %rax
.LBE255:
.LBE254:
.LBE253:
.LBE252:
.LBE251:
	.loc 1 1928 0
	leaq	64(%rsp), %rdx
	movl	$8, %ecx
.LBB256:
.LBB257:
.LBB258:
.LBB259:
.LBB260:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE260:
.LBE259:
.LBE258:
.LBE257:
.LBE256:
	.loc 2 121 0
	movq	%rax, 64(%rsp)
	.loc 1 1928 0
	movq	(%rbp), %rdi
	movl	$48, %esi
	call	bdrv_pwrite
	cmpl	$8, %eax
	je	.L440
.L388:
	.loc 1 1946 0
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	call	free_clusters
	.loc 1 1947 0
	movq	%r13, %rdi
	call	qemu_free
	movl	$-5, %eax
	.p2align 4,,7
.L372:
.LBE238:
.LBE237:
	.loc 1 1967 0
	testl	%eax, %eax
	.loc 1 1968 0
	movl	%eax, %ecx
	.loc 1 1967 0
	js	.L368
.L369:
	.loc 1 1970 0
	movq	296(%rbp), %rax
	movslq	%r14d,%rbx
	movq	(%rax,%rbx,8), %r12
	.loc 1 1971 0
	testq	%r12, %r12
	je	.L441
	.loc 1 1993 0
	cmpq	320(%rbp), %r12
	je	.L416
	.loc 1 1994 0
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	load_refcount_block
	testl	%eax, %eax
	.loc 1 1995 0
	movl	$-5, %ecx
	.loc 1 1994 0
	js	.L368
	.p2align 4,,7
.L416:
	.loc 1 1999 0
	movl	8(%rbp), %ecx
	movl	$1, %eax
.LBB261:
	.loc 2 119 0
	movq	328(%rbp), %rdi
.LBE261:
	.loc 1 1999 0
	decl	%ecx
	sall	%cl, %eax
	.loc 1 2004 0
	movl	$-22, %ecx
	.loc 1 1999 0
	leal	-1(%rax), %esi
	andl	40(%rsp), %esi
.LBB262:
	.loc 2 119 0
	movslq	%esi,%rdx
	movzwl	(%rdi,%rdx,2), %eax
.LBB263:
.LBB264:
.LBB265:
.LBB266:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE266:
.LBE265:
.LBE264:
.LBE263:
.LBE262:
	.loc 2 119 0
	movzwl	%ax, %ebx
	.loc 1 2002 0
	addl	36(%rsp), %ebx
	.loc 1 2003 0
	cmpl	$65535, %ebx
	ja	.L368
	.loc 1 2005 0
	testl	%ebx, %ebx
	jne	.L424
	movq	40(%rsp), %rax
	cmpq	%rax, 336(%rbp)
	jg	.L442
	.p2align 4,,7
.L424:
.LBB267:
.LBB268:
.LBB269:
.LBB270:
.LBB271:
	.loc 2 48 0
	movl	%ebx, %eax
.LBE271:
.LBE270:
.LBE269:
.LBE268:
.LBE267:
	.loc 1 2009 0
	addl	%esi, %esi
	movl	$2, %ecx
.LBB272:
.LBB273:
.LBB274:
.LBB275:
.LBB276:
	.loc 2 48 0
#APP
	rorw $8, %ax
#NO_APP
.LBE276:
.LBE275:
.LBE274:
.LBE273:
.LBE272:
	.loc 2 119 0
	movw	%ax, (%rdi,%rdx,2)
	.loc 1 2009 0
	movq	328(%rbp), %rax
	movslq	%esi,%rsi
	movq	(%rbp), %rdi
	addq	%r12, %rsi
	leaq	(%rax,%rdx,2), %rdx
	call	bdrv_pwrite
	.loc 1 2012 0
	movl	$-5, %ecx
	cmpl	$2, %eax
	cmove	%ebx, %ecx
.L368:
	.loc 1 2014 0
	addq	$72, %rsp
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L441:
	.loc 1 1972 0
	movl	36(%rsp), %r8d
	.loc 1 1973 0
	movl	$-22, %ecx
	.loc 1 1972 0
	testl	%r8d, %r8d
	js	.L368
	.loc 1 1976 0
	movslq	12(%rbp),%rsi
	movq	%r15, %rdi
	call	alloc_clusters_noref
	.loc 1 1977 0
	movslq	12(%rbp),%rdx
	movq	328(%rbp), %rdi
	xorl	%esi, %esi
	.loc 1 1976 0
	movq	%rax, %r12
	.loc 1 1977 0
	call	memset
	.loc 1 1978 0
	movl	12(%rbp), %ecx
	movq	328(%rbp), %rdx
	movq	%r12, %rsi
	movq	(%rbp), %rdi
	call	bdrv_pwrite
	.loc 1 1979 0
	cmpl	%eax, 12(%rbp)
	.loc 1 1980 0
	movl	$-22, %ecx
	.loc 1 1979 0
	jne	.L368
	.loc 1 1981 0
	movq	296(%rbp), %rax
	.loc 1 1983 0
	leaq	48(%rsp), %rdx
	movl	$8, %ecx
	.loc 1 1981 0
	movq	%r12, (%rax,%rbx,8)
.LBB277:
.LBB278:
.LBB279:
.LBB280:
.LBB281:
	.loc 2 58 0
	movq	%r12, %rax
#APP
	bswap %rax
#NO_APP
.LBE281:
.LBE280:
.LBE279:
.LBE278:
.LBE277:
	.loc 2 121 0
	movq	%rax, 48(%rsp)
	.loc 1 1983 0
	movq	304(%rbp), %rax
	movq	(%rbp), %rdi
	leaq	(%rax,%rbx,8), %rsi
	call	bdrv_pwrite
	.loc 1 1986 0
	cmpl	$8, %eax
	.loc 1 1987 0
	movl	$-22, %ecx
	.loc 1 1986 0
	jne	.L368
	.loc 1 1991 0
	movslq	12(%rbp),%rdx
	.loc 1 1990 0
	movq	%r12, 320(%rbp)
	.loc 1 1991 0
	movl	$1, %ecx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	update_refcount
	jmp	.L416
.L442:
	.loc 1 2006 0
	movq	%rax, 336(%rbp)
	jmp	.L424
.L440:
.LBB282:
.LBB283:
.LBB284:
.LBB285:
.LBB286:
.LBB287:
.LBB288:
	.loc 2 53 0
#APP
	bswap %ebx
#NO_APP
.LBE288:
.LBE287:
.LBE286:
.LBE285:
.LBE284:
	.loc 2 120 0
	movl	%ebx, 60(%rsp)
	.loc 1 1932 0
	movq	(%rbp), %rdi
	leaq	60(%rsp), %rdx
	movl	$4, %ecx
	movl	$56, %esi
	call	bdrv_pwrite
	cmpl	$4, %eax
	jne	.L388
	.loc 1 1935 0
	movq	296(%rbp), %rdi
	call	qemu_free
	.loc 1 1937 0
	movslq	312(%rbp),%rax
	.loc 1 1936 0
	movq	304(%rbp), %rbx
	.loc 1 1942 0
	movl	$1, %ecx
	movq	%r15, %rdi
	.loc 1 1937 0
	movq	%rax, 16(%rsp)
	.loc 1 1938 0
	movq	%r13, 296(%rbp)
	.loc 1 1939 0
	movl	%r12d, 312(%rbp)
	.loc 1 1940 0
	movq	24(%rsp), %rax
	movq	%rax, 304(%rbp)
	.loc 1 1942 0
	movq	8(%rsp), %rdx
	movq	%rax, %rsi
	call	update_refcount
	.loc 1 1943 0
	movq	16(%rsp), %rax
	movq	%rbx, %rsi
	movq	%r15, %rdi
	leaq	0(,%rax,8), %rdx
	call	free_clusters
	xorl	%eax, %eax
	jmp	.L372
.LBE283:
.LBE282:
.LFE146:
	.size	update_cluster_refcount, .-update_cluster_refcount
	.p2align 4,,15
	.type	update_refcount, @function
update_refcount:
.LFB147:
	.loc 1 2019 0
	movq	%r13, -16(%rsp)
.LCFI80:
	movq	%r14, -8(%rsp)
.LCFI81:
	movq	%rdi, %r13
	movq	%rbx, -40(%rsp)
.LCFI82:
	movq	%rbp, -32(%rsp)
.LCFI83:
	movl	%ecx, %r14d
	movq	%r12, -24(%rsp)
.LCFI84:
	subq	$40, %rsp
.LCFI85:
	.loc 1 2027 0
	testq	%rdx, %rdx
	.loc 1 2020 0
	movq	56(%rdi), %r12
	.loc 1 2027 0
	jle	.L443
	.loc 1 2029 0
	movl	12(%r12), %eax
	.loc 1 2030 0
	leaq	-1(%rsi,%rdx), %rbp
	.loc 1 2029 0
	decl	%eax
	notl	%eax
	cltq
	.loc 1 2031 0
	movq	%rax, %rbx
	.loc 1 2030 0
	andq	%rax, %rbp
	.loc 1 2031 0
	andq	%rsi, %rbx
	cmpq	%rbp, %rbx
	jg	.L443
	.p2align 4,,7
.L451:
	.loc 1 2033 0
	movl	8(%r12), %ecx
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movq	%r13, %rdi
	sarq	%cl, %rsi
	call	update_cluster_refcount
	.loc 1 2031 0
	movslq	12(%r12),%rax
	addq	%rax, %rbx
	cmpq	%rbp, %rbx
	jle	.L451
.L443:
	.loc 1 2035 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE147:
	.size	update_refcount, .-update_refcount
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 25
__PRETTY_FUNCTION__.0:
	.string	"update_snapshot_refcount"
	.section	.rodata.str1.1
.LC2:
	.string	"block-qcow2.c"
.LC3:
	.string	"l1_size == s->l1_size"
	.text
	.p2align 4,,15
	.type	update_snapshot_refcount, @function
update_snapshot_refcount:
.LFB126:
	.loc 1 1254 0
	pushq	%r15
.LCFI86:
	pushq	%r14
.LCFI87:
	pushq	%r13
.LCFI88:
	pushq	%r12
.LCFI89:
	pushq	%rbp
.LCFI90:
	pushq	%rbx
.LCFI91:
	subq	$88, %rsp
.LCFI92:
	.loc 1 1254 0
	movl	%ecx, 64(%rsp)
	movq	%rsi, 72(%rsp)
.LBB289:
.LBB290:
	.loc 1 398 0
	xorl	%esi, %esi
.LBE290:
.LBE289:
	.loc 1 1254 0
	movq	%rdi, 80(%rsp)
	movl	%edx, 68(%rsp)
	.loc 1 1255 0
	movq	56(%rdi), %r14
.LBB291:
.LBB292:
	.loc 1 398 0
	movslq	24(%r14),%rdx
	movq	72(%r14), %rdi
	salq	$7, %rdx
	call	memset
	.loc 1 399 0
	leaq	80(%r14), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	call	memset
	.loc 1 400 0
	leaq	208(%r14), %rdi
	xorl	%eax, %eax
	movl	$8, %ecx
	cld
	rep
	stosq
.LBE292:
.LBE291:
	.loc 1 1262 0
	movq	%rax, 48(%rsp)
	.loc 1 1264 0
	movslq	68(%rsp),%rax
	salq	$3, %rax
	movq	%rax, 8(%rsp)
	.loc 1 1266 0
	movq	72(%rsp), %rax
	cmpq	56(%r14), %rax
	je	.L454
	.loc 1 1267 0
	movq	8(%rsp), %rdi
	call	qemu_malloc
	.loc 1 1268 0
	testq	%rax, %rax
	.loc 1 1267 0
	movq	%rax, 56(%rsp)
	.loc 1 1268 0
	je	.L521
	.loc 1 1270 0
	movq	$1, 40(%rsp)
	.loc 1 1271 0
	movl	8(%rsp), %ecx
	movq	%rax, %rdx
	movq	72(%rsp), %rsi
	movq	(%r14), %rdi
	call	bdrv_pread
	cltq
	cmpq	8(%rsp), %rax
	jne	.L532
	.loc 1 1274 0
	movl	$0, 24(%rsp)
	movl	68(%rsp), %edx
	cmpl	%edx, 24(%rsp)
	jge	.L466
	movq	56(%rsp), %rdx
	.p2align 4,,7
.L465:
.LBB293:
.LBB294:
.LBB295:
	.loc 2 57 0
	movq	(%rdx), %rax
.LBB296:
.LBB297:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE297:
.LBE296:
.LBE295:
	.loc 2 57 0
	movq	%rax, (%rdx)
.LBE294:
.LBE293:
	.loc 1 1274 0
	incl	24(%rsp)
	addq	$8, %rdx
	movl	68(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jl	.L465
	jmp	.L466
.L542:
	.loc 1 1326 0
	movl	28(%rsp), %ecx
	movq	48(%rsp), %rdx
	movq	%r13, %rsi
	movq	(%r14), %rdi
	call	bdrv_pwrite
	cmpl	28(%rsp), %eax
	je	.L495
.L456:
	.loc 1 1359 0
	cmpq	$0, 40(%rsp)
	je	.L521
.L532:
	.loc 1 1360 0
	movq	56(%rsp), %rdi
	call	qemu_free
.L521:
	.loc 1 1361 0
	movq	48(%rsp), %rdi
	call	qemu_free
	.loc 1 1363 0
	addq	$88, %rsp
	.loc 1 1362 0
	movl	$-5, %eax
	.loc 1 1363 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L454:
	.loc 1 1277 0
	movl	68(%rsp), %edx
	cmpl	%edx, 28(%r14)
	jne	.L539
	.loc 1 1278 0
	movq	64(%r14), %rax
	.loc 1 1279 0
	movq	$0, 40(%rsp)
	.loc 1 1278 0
	movq	%rax, 56(%rsp)
.L466:
	.loc 1 1282 0
	movslq	24(%r14),%rax
	sall	$3, %eax
	.loc 1 1283 0
	movslq	%eax,%rdi
	.loc 1 1282 0
	movl	%eax, 28(%rsp)
	.loc 1 1283 0
	call	qemu_malloc
	.loc 1 1284 0
	testq	%rax, %rax
	.loc 1 1283 0
	movq	%rax, 48(%rsp)
	.loc 1 1284 0
	je	.L456
	.loc 1 1286 0
	movl	$0, 20(%rsp)
	.loc 1 1287 0
	movl	68(%rsp), %edx
	cmpl	%edx, 20(%rsp)
	movl	$0, 24(%rsp)
	jl	.L501
	jmp	.L502
	.p2align 4,,7
.L472:
	incl	24(%rsp)
	movl	68(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jge	.L540
.L501:
	.loc 1 1288 0
	movslq	24(%rsp),%rax
	movq	56(%rsp), %rdx
	movq	%rax, (%rsp)
	movq	(%rdx,%rax,8), %r13
	.loc 1 1289 0
	testq	%r13, %r13
	je	.L472
	.loc 1 1290 0
	movq	%r13, 32(%rsp)
	.loc 1 1291 0
	movabsq	$9223372036854775807, %rax
	.loc 1 1292 0
	movl	$0, 16(%rsp)
	.loc 1 1293 0
	movl	28(%rsp), %ecx
	movq	48(%rsp), %rdx
	.loc 1 1291 0
	andq	%rax, %r13
	.loc 1 1293 0
	movq	(%r14), %rdi
	movq	%r13, %rsi
	call	bdrv_pread
	cmpl	28(%rsp), %eax
	jne	.L456
	.loc 1 1295 0
	movl	24(%r14), %eax
	xorl	%r12d, %r12d
	cmpl	$0, %eax
	jle	.L495
	.p2align 4,,7
.L494:
.LBB298:
	.loc 2 121 0
	movq	48(%rsp), %rdx
	movslq	%r12d,%r15
	movq	(%rdx,%r15,8), %rbp
.LBB299:
.LBB300:
.LBB301:
.LBB302:
	.loc 2 58 0
#APP
	bswap %rbp
#NO_APP
.LBE302:
.LBE301:
.LBE300:
.LBE299:
.LBE298:
	.loc 1 1297 0
	testq	%rbp, %rbp
	.loc 2 121 0
	movq	%rbp, %rbx
	.loc 1 1297 0
	je	.L477
	.loc 1 1299 0
	movabsq	$9223372036854775807, %rax
	andq	%rax, %rbx
	.loc 1 1300 0
	movabsq	$4611686018427387904, %rax
	testq	%rax, %rbx
	je	.L483
	.loc 1 1301 0
	movl	36(%r14), %ecx
	movq	%rbx, %rax
	.loc 1 1303 0
	movl	64(%rsp), %edx
	.loc 1 1301 0
	shrq	%cl, %rax
	andl	40(%r14), %eax
	incl	%eax
	.loc 1 1303 0
	testl	%edx, %edx
	jne	.L541
.L488:
	.loc 1 1319 0
	cmpq	%rbx, %rbp
	je	.L531
	.loc 2 121 0
	movq	48(%rsp), %rdx
.LBB303:
.LBB304:
.LBB305:
.LBB306:
.LBB307:
	.loc 2 58 0
#APP
	bswap %rbx
#NO_APP
.LBE307:
.LBE306:
.LBE305:
.LBE304:
.LBE303:
	.loc 2 121 0
	movq	%rbx, (%rdx,%r15,8)
	.loc 1 1321 0
	movl	$1, 16(%rsp)
.L531:
	movl	24(%r14), %eax
.L477:
	.loc 1 1295 0
	incl	%r12d
	cmpl	%r12d, %eax
	jg	.L494
	.loc 1 1325 0
	movl	16(%rsp), %ebx
	testl	%ebx, %ebx
	jne	.L542
.L495:
	.loc 1 1331 0
	movl	64(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L497
	.loc 1 1332 0
	movl	8(%r14), %ecx
	movl	64(%rsp), %edx
	movq	%r13, %rsi
	movq	80(%rsp), %rdi
	shrq	%cl, %rsi
	call	update_cluster_refcount
.L538:
	.loc 1 1334 0
	movl	%eax, %edx
	.loc 1 1337 0
	movabsq	$-9223372036854775808, %rax
	orq	%r13, %rax
	decl	%edx
	cmove	%rax, %r13
	.loc 1 1339 0
	cmpq	%r13, 32(%rsp)
	je	.L472
	.loc 1 1340 0
	movq	(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%r13, (%rdx,%rax,8)
	.loc 1 1287 0
	incl	24(%rsp)
	movl	68(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	.loc 1 1341 0
	movl	$1, 20(%rsp)
	.loc 1 1287 0
	jl	.L501
.L540:
	.loc 1 1345 0
	movl	20(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L502
	.loc 1 1346 0
	movl	$0, 24(%rsp)
	cmpl	%eax, 24(%rsp)
	jge	.L529
	movq	56(%rsp), %rdx
	.p2align 4,,7
.L510:
.LBB308:
.LBB309:
.LBB310:
	.loc 2 57 0
	movq	(%rdx), %rax
.LBB311:
.LBB312:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE312:
.LBE311:
.LBE310:
	.loc 2 57 0
	movq	%rax, (%rdx)
.LBE309:
.LBE308:
	.loc 1 1346 0
	incl	24(%rsp)
	addq	$8, %rdx
	movl	68(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jl	.L510
.L529:
	.loc 1 1348 0
	movl	8(%rsp), %ecx
	movq	56(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	(%r14), %rdi
	call	bdrv_pwrite
	cltq
	cmpq	8(%rsp), %rax
	jne	.L456
	.loc 1 1351 0
	movl	$0, 24(%rsp)
	movl	68(%rsp), %edx
	cmpl	%edx, 24(%rsp)
	jge	.L502
	movq	56(%rsp), %rdx
.L519:
.LBB313:
.LBB314:
.LBB315:
	.loc 2 57 0
	movq	(%rdx), %rax
.LBB316:
.LBB317:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE317:
.LBE316:
.LBE315:
	.loc 2 57 0
	movq	%rax, (%rdx)
.LBE314:
.LBE313:
	.loc 1 1351 0
	incl	24(%rsp)
	addq	$8, %rdx
	movl	68(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jl	.L519
.L502:
	.loc 1 1354 0
	cmpq	$0, 40(%rsp)
	jne	.L543
.L520:
	.loc 1 1356 0
	movq	48(%rsp), %rdi
	call	qemu_free
	.loc 1 1363 0
	addq	$88, %rsp
	.loc 1 1357 0
	xorl	%eax, %eax
	.loc 1 1363 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L483:
	.loc 1 1309 0
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.L486
	.loc 1 1310 0
	movl	8(%r14), %ecx
	movl	64(%rsp), %edx
	movq	%rbx, %rsi
	movq	80(%rsp), %rdi
	shrq	%cl, %rsi
	call	update_cluster_refcount
.L537:
	.loc 1 1312 0
	movl	%eax, %edx
	.loc 1 1317 0
	movabsq	$-9223372036854775808, %rax
	orq	%rbx, %rax
	decl	%edx
	cmove	%rax, %rbx
	jmp	.L488
	.p2align 4,,7
.L486:
	.loc 1 1312 0
	movl	8(%r14), %ecx
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	shrq	%cl, %rsi
	call	get_refcount
	jmp	.L537
.L541:
	.loc 1 1304 0
	movq	48(%r14), %rsi
	movl	64(%rsp), %ecx
	sall	$9, %eax
	movq	80(%rsp), %rdi
	movslq	%eax,%rdx
	andq	%rbx, %rsi
	andq	$-512, %rsi
	call	update_refcount
	jmp	.L488
.L497:
	.loc 1 1334 0
	movl	8(%r14), %ecx
	movq	80(%rsp), %rdi
	movq	%r13, %rsi
	shrq	%cl, %rsi
	call	get_refcount
	jmp	.L538
.L543:
	.loc 1 1355 0
	movq	56(%rsp), %rdi
	call	qemu_free
	.p2align 4,,5
	jmp	.L520
.L539:
	.loc 1 1277 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1277, %edx
	movl	$.LC2, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.LFE126:
	.size	update_snapshot_refcount, .-update_snapshot_refcount
	.p2align 4,,15
	.type	free_clusters, @function
free_clusters:
.LFB144:
	.loc 1 1877 0
	.loc 1 1878 0
	movl	$-1, %ecx
	jmp	update_refcount
.LFE144:
	.size	free_clusters, .-free_clusters
	.p2align 4,,15
	.type	alloc_clusters, @function
alloc_clusters:
.LFB142:
	.loc 1 1827 0
	movq	%rbx, -24(%rsp)
.LCFI93:
	movq	%r12, -16(%rsp)
.LCFI94:
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	%r13, -8(%rsp)
.LCFI95:
	subq	$24, %rsp
.LCFI96:
	.loc 1 1830 0
	call	alloc_clusters_noref
	.loc 1 1831 0
	movq	%r12, %rdx
	.loc 1 1830 0
	movq	%rax, %r13
	.loc 1 1831 0
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$1, %ecx
	call	update_refcount
	.loc 1 1833 0
	movq	%r13, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE142:
	.size	alloc_clusters, .-alloc_clusters
	.p2align 4,,15
	.type	qcow_write_snapshots, @function
qcow_write_snapshots:
.LFB129:
	.loc 1 1436 0
	pushq	%r15
.LCFI97:
	.loc 1 1447 0
	xorl	%r15d, %r15d
	.loc 1 1436 0
	pushq	%r14
.LCFI98:
	pushq	%r13
.LCFI99:
	pushq	%r12
.LCFI100:
	pushq	%rbp
.LCFI101:
	.loc 1 1446 0
	xorl	%ebp, %ebp
	.loc 1 1436 0
	pushq	%rbx
.LCFI102:
	subq	$120, %rsp
.LCFI103:
	.loc 1 1436 0
	movq	%rdi, 40(%rsp)
	.loc 1 1437 0
	movq	56(%rdi), %r14
	.loc 1 1447 0
	movl	860(%r14), %r12d
	cmpl	$0, %r12d
	jle	.L602
	movq	864(%r14), %rax
	.p2align 4,,7
.L550:
	.loc 1 1448 0
	movq	%rax, %rbx
	.loc 1 1449 0
	movl	$8, %esi
	movq	%rbp, %rdi
	call	align_offset
	.loc 1 1451 0
	movq	16(%rbx), %rdi
	.loc 1 1449 0
	movq	%rax, %rbp
	.loc 1 1447 0
	incl	%r15d
	.loc 1 1450 0
	addq	$40, %rbp
	.loc 1 1451 0
	call	strlen
	.loc 1 1452 0
	movq	24(%rbx), %rdi
	.loc 1 1451 0
	addq	%rax, %rbp
	.loc 1 1452 0
	call	strlen
	addq	%rax, %rbp
	.loc 1 1447 0
	cmpl	%r15d, %r12d
	leaq	56(%rbx), %rax
	jg	.L550
.L602:
	.loc 1 1454 0
	movl	%ebp, 36(%rsp)
	.loc 1 1456 0
	movslq	36(%rsp),%rsi
	.loc 1 1459 0
	xorl	%r15d, %r15d
	.loc 1 1456 0
	movq	40(%rsp), %rdi
	call	alloc_clusters
	movq	%rax, 24(%rsp)
	.loc 1 1459 0
	movl	860(%r14), %ecx
	.loc 1 1457 0
	movq	%rax, %rbp
	.loc 1 1459 0
	testl	%ecx, %ecx
	jle	.L604
	.p2align 4,,7
.L590:
	.loc 1 1460 0
	movslq	%r15d,%rdx
	.loc 1 1461 0
	leaq	64(%rsp), %rdi
	movl	$5, %ecx
	.loc 1 1460 0
	leaq	0(,%rdx,8), %rax
	.loc 1 1461 0
	cld
	.loc 1 1460 0
	subq	%rdx, %rax
	movq	864(%r14), %rdx
	leaq	(%rdx,%rax,8), %rbx
	.loc 1 1461 0
	xorl	%eax, %eax
	rep
	stosq
.LBB318:
	.loc 2 121 0
	movq	(%rbx), %rax
.LBB319:
.LBB320:
.LBB321:
.LBB322:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE322:
.LBE321:
.LBE320:
.LBE319:
.LBE318:
	.loc 2 121 0
	movq	%rax, 64(%rsp)
.LBB323:
	.loc 2 120 0
	movl	8(%rbx), %eax
.LBB324:
.LBB325:
.LBB326:
.LBB327:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE327:
.LBE326:
.LBE325:
.LBE324:
.LBE323:
	.loc 2 120 0
	movl	%eax, 72(%rsp)
.LBB328:
	movl	32(%rbx), %eax
.LBB329:
.LBB330:
.LBB331:
.LBB332:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE332:
.LBE331:
.LBE330:
.LBE329:
.LBE328:
	.loc 2 120 0
	movl	%eax, 96(%rsp)
.LBB333:
	movl	36(%rbx), %eax
.LBB334:
.LBB335:
.LBB336:
.LBB337:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE337:
.LBE336:
.LBE335:
.LBE334:
.LBE333:
	.loc 2 120 0
	movl	%eax, 80(%rsp)
.LBB338:
	movl	40(%rbx), %eax
.LBB339:
.LBB340:
.LBB341:
.LBB342:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE342:
.LBE341:
.LBE340:
.LBE339:
.LBE338:
	.loc 2 120 0
	movl	%eax, 84(%rsp)
.LBB343:
	.loc 2 121 0
	movq	48(%rbx), %rax
.LBB344:
.LBB345:
.LBB346:
.LBB347:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE347:
.LBE346:
.LBE345:
.LBE344:
.LBE343:
	.loc 2 121 0
	movq	%rax, 88(%rsp)
	.loc 1 1469 0
	movq	16(%rbx), %rdi
	call	strlen
	movq	%rax, 16(%rsp)
	.loc 1 1470 0
	movq	24(%rbx), %rdi
	.loc 1 1469 0
	movl	%eax, %r12d
	.loc 1 1470 0
	call	strlen
	.loc 1 1473 0
	movq	%rbp, %rdi
	.loc 1 1470 0
	movl	%eax, %r13d
	.loc 1 1473 0
	movl	$8, %esi
	.loc 1 1470 0
	movq	%rax, 8(%rsp)
.LBB348:
.LBB349:
.LBB350:
.LBB351:
.LBB352:
	.loc 2 48 0
	movl	%r12d, %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE352:
.LBE351:
.LBE350:
.LBE349:
.LBE348:
	.loc 2 119 0
	movw	%ax, 76(%rsp)
.LBB353:
.LBB354:
.LBB355:
.LBB356:
.LBB357:
	.loc 2 48 0
	movl	%r13d, %eax
#APP
	rorw $8, %ax
#NO_APP
.LBE357:
.LBE356:
.LBE355:
.LBE354:
.LBE353:
	.loc 2 119 0
	movw	%ax, 78(%rsp)
	.loc 1 1473 0
	call	align_offset
	.loc 1 1474 0
	movq	(%r14), %rdi
	leaq	64(%rsp), %rdx
	movl	$40, %ecx
	movq	%rax, %rsi
	.loc 1 1473 0
	movq	%rax, %rbp
	.loc 1 1474 0
	call	bdrv_pwrite
	cmpl	$40, %eax
	jne	.L587
	.loc 1 1477 0
	movq	16(%rbx), %rdx
	movl	16(%rsp), %ecx
	.loc 1 1476 0
	addq	$40, %rbp
	.loc 1 1477 0
	movq	(%r14), %rdi
	movq	%rbp, %rsi
	call	bdrv_pwrite
	cmpl	%r12d, %eax
	jne	.L587
	.loc 1 1479 0
	cltq
	.loc 1 1480 0
	movq	24(%rbx), %rdx
	movl	8(%rsp), %ecx
	movq	(%r14), %rdi
	.loc 1 1479 0
	addq	%rax, %rbp
	.loc 1 1480 0
	movq	%rbp, %rsi
	call	bdrv_pwrite
	cmpl	%r13d, %eax
	jne	.L587
	.loc 1 1482 0
	cltq
	.loc 1 1459 0
	incl	%r15d
	.loc 1 1482 0
	addq	%rax, %rbp
	.loc 1 1459 0
	cmpl	%r15d, 860(%r14)
	jg	.L590
.L604:
.LBB358:
.LBB359:
.LBB360:
.LBB361:
.LBB362:
	.loc 2 58 0
	movq	24(%rsp), %rax
.LBE362:
.LBE361:
.LBE360:
.LBE359:
.LBE358:
	.loc 1 1487 0
	leaq	56(%rsp), %rdx
	movl	$8, %ecx
.LBB363:
.LBB364:
.LBB365:
.LBB366:
.LBB367:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE367:
.LBE366:
.LBE365:
.LBE364:
.LBE363:
	.loc 2 121 0
	movq	%rax, 56(%rsp)
	.loc 1 1487 0
	movq	(%r14), %rdi
	movl	$64, %esi
	call	bdrv_pwrite
	cmpl	$8, %eax
	je	.L605
.L587:
	.loc 1 1501 0
	movl	$-1, %eax
.L546:
	.loc 1 1502 0
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L605:
.LBB368:
	.loc 2 120 0
	movl	860(%r14), %eax
.LBE368:
	.loc 1 1491 0
	leaq	52(%rsp), %rdx
	movl	$4, %ecx
.LBB369:
.LBB370:
.LBB371:
.LBB372:
.LBB373:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE373:
.LBE372:
.LBE371:
.LBE370:
.LBE369:
	.loc 2 120 0
	movl	%eax, 52(%rsp)
	.loc 1 1491 0
	movq	(%r14), %rdi
	movl	$60, %esi
	call	bdrv_pwrite
	cmpl	$4, %eax
	jne	.L587
	.loc 1 1496 0
	movslq	856(%r14),%rdx
	movq	848(%r14), %rsi
	movq	40(%rsp), %rdi
	call	free_clusters
	.loc 1 1497 0
	movq	24(%rsp), %rax
	movq	%rax, 848(%r14)
	.loc 1 1498 0
	movl	36(%rsp), %eax
	movl	%eax, 856(%r14)
	.loc 1 1499 0
	xorl	%eax, %eax
	jmp	.L546
.LFE129:
	.size	qcow_write_snapshots, .-qcow_write_snapshots
	.p2align 4,,15
	.type	qcow_snapshot_delete, @function
qcow_snapshot_delete:
.LFB135:
	.loc 1 1662 0
	movq	%rbp, -24(%rsp)
.LCFI104:
	movq	%r12, -16(%rsp)
.LCFI105:
	movq	%rdi, %r12
	movq	%rbx, -32(%rsp)
.LCFI106:
	movq	%r13, -8(%rsp)
.LCFI107:
	subq	$40, %rsp
.LCFI108:
	.loc 1 1663 0
	movq	56(%rdi), %r13
	.loc 1 1667 0
	call	find_snapshot_by_id_or_name
	.loc 1 1668 0
	testl	%eax, %eax
	.loc 1 1667 0
	movl	%eax, %ebp
	.loc 1 1669 0
	movl	$-2, %edx
	.loc 1 1668 0
	js	.L606
	.loc 1 1670 0
	movslq	%eax,%rdx
	.loc 1 1672 0
	movl	$-1, %ecx
	movq	%r12, %rdi
	.loc 1 1670 0
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	864(%r13), %rdx
	leaq	(%rdx,%rax,8), %rbx
	.loc 1 1672 0
	movl	8(%rbx), %edx
	movq	(%rbx), %rsi
	call	update_snapshot_refcount
	.loc 1 1673 0
	testl	%eax, %eax
	.loc 1 1674 0
	movl	%eax, %edx
	.loc 1 1673 0
	js	.L606
	.loc 1 1676 0
	movl	28(%r13), %edx
	movq	56(%r13), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	call	update_snapshot_refcount
	.loc 1 1677 0
	testl	%eax, %eax
	.loc 1 1678 0
	movl	%eax, %edx
	.loc 1 1677 0
	js	.L606
	.loc 1 1679 0
	mov	8(%rbx), %edx
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	.loc 1 1683 0
	notl	%ebp
	.loc 1 1679 0
	salq	$3, %rdx
	call	free_clusters
	.loc 1 1681 0
	movq	16(%rbx), %rdi
	call	qemu_free
	.loc 1 1682 0
	movq	24(%rbx), %rdi
	call	qemu_free
	.loc 1 1683 0
	addl	860(%r13), %ebp
	leaq	56(%rbx), %rsi
	movq	%rbx, %rdi
	movslq	%ebp,%rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	salq	$3, %rdx
	call	memmove
	.loc 1 1684 0
	decl	860(%r13)
	.loc 1 1685 0
	movq	%r12, %rdi
	call	qcow_write_snapshots
	.loc 1 1688 0
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%eax, %edx
.L606:
	.loc 1 1694 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE135:
	.size	qcow_snapshot_delete, .-qcow_snapshot_delete
	.p2align 4,,15
	.type	grow_l1_table, @function
grow_l1_table:
.LFB105:
	.loc 1 428 0
	pushq	%r15
.LCFI109:
	.loc 1 438 0
	xorl	%eax, %eax
	.loc 1 428 0
	movq	%rdi, %r15
	pushq	%r14
.LCFI110:
	pushq	%r13
.LCFI111:
	pushq	%r12
.LCFI112:
	pushq	%rbp
.LCFI113:
	pushq	%rbx
.LCFI114:
	subq	$24, %rsp
.LCFI115:
	.loc 1 429 0
	movq	56(%rdi), %r12
	.loc 1 436 0
	movl	28(%r12), %ebx
	.loc 1 437 0
	cmpl	%ebx, %esi
	jle	.L611
	.p2align 4,,7
.L615:
	.loc 1 440 0
	leal	1(%rbx,%rbx,2), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ebx
	sarl	%ebx
	cmpl	%ebx, %esi
	jg	.L615
	.loc 1 446 0
	leal	0(,%rbx,8), %r13d
	.loc 1 447 0
	movslq	%r13d,%r14
	movq	%r14, %rdi
	call	qemu_mallocz
	movq	%rax, %rbp
	.loc 1 449 0
	movl	$-12, %eax
	.loc 1 448 0
	testq	%rbp, %rbp
	je	.L611
	.loc 1 450 0
	movslq	28(%r12),%rdx
	movq	64(%r12), %rsi
	movq	%rbp, %rdi
	salq	$3, %rdx
	call	memcpy
	.loc 1 453 0
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	alloc_clusters
	.loc 1 455 0
	movl	28(%r12), %edi
	xorl	%ecx, %ecx
	.loc 1 453 0
	movq	%rax, %r14
	.loc 1 455 0
	testl	%edi, %edi
	jle	.L648
	.p2align 4,,7
.L624:
	.loc 1 456 0
	movslq	%ecx,%rdx
	.loc 1 455 0
	incl	%ecx
.LBB374:
	.loc 2 121 0
	movq	(%rbp,%rdx,8), %rax
.LBB375:
.LBB376:
.LBB377:
.LBB378:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE378:
.LBE377:
.LBE376:
.LBE375:
.LBE374:
	.loc 2 121 0
	movq	%rax, (%rbp,%rdx,8)
	.loc 1 455 0
	cmpl	%ecx, 28(%r12)
	jg	.L624
.L648:
	.loc 1 457 0
	movq	(%r12), %rdi
	movl	%r13d, %ecx
	movq	%rbp, %rdx
	movq	%r14, %rsi
	call	bdrv_pwrite
	.loc 1 458 0
	cmpl	%r13d, %eax
	jne	.L626
	.loc 1 460 0
	movl	28(%r12), %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	jle	.L650
	.p2align 4,,7
.L634:
	.loc 1 461 0
	movslq	%ecx,%rdx
	.loc 1 460 0
	incl	%ecx
.LBB379:
	.loc 2 121 0
	movq	(%rbp,%rdx,8), %rax
.LBB380:
.LBB381:
.LBB382:
.LBB383:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE383:
.LBE382:
.LBE381:
.LBE380:
.LBE379:
	.loc 2 121 0
	movq	%rax, (%rbp,%rdx,8)
	.loc 1 460 0
	cmpl	%ecx, 28(%r12)
	jg	.L634
.L650:
.LBB384:
.LBB385:
.LBB386:
.LBB387:
.LBB388:
	.loc 2 58 0
	movq	%r14, %rax
.LBE388:
.LBE387:
.LBE386:
.LBE385:
.LBE384:
	.loc 1 465 0
	leaq	16(%rsp), %rdx
	movl	$8, %ecx
.LBB389:
.LBB390:
.LBB391:
.LBB392:
.LBB393:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE393:
.LBE392:
.LBE391:
.LBE390:
.LBE389:
	.loc 2 121 0
	movq	%rax, 16(%rsp)
	.loc 1 465 0
	movq	(%r12), %rdi
	movl	$40, %esi
	call	bdrv_pwrite
	cmpl	$8, %eax
	je	.L651
.L626:
	.loc 1 479 0
	movq	64(%r12), %rdi
	call	qemu_free
	.loc 1 480 0
	movl	$-5, %eax
.L611:
	.loc 1 481 0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L651:
.LBB394:
.LBB395:
.LBB396:
.LBB397:
.LBB398:
	.loc 2 53 0
	movl	%ebx, %eax
.LBE398:
.LBE397:
.LBE396:
.LBE395:
.LBE394:
	.loc 1 469 0
	leaq	12(%rsp), %rdx
	movl	$4, %ecx
.LBB399:
.LBB400:
.LBB401:
.LBB402:
.LBB403:
	.loc 2 53 0
#APP
	bswap %eax
#NO_APP
.LBE403:
.LBE402:
.LBE401:
.LBE400:
.LBE399:
	.loc 2 120 0
	movl	%eax, 12(%rsp)
	.loc 1 469 0
	movq	(%r12), %rdi
	movl	$36, %esi
	call	bdrv_pwrite
	cmpl	$4, %eax
	jne	.L626
	.loc 1 472 0
	movq	64(%r12), %rdi
	call	qemu_free
	.loc 1 473 0
	movslq	28(%r12),%rdx
	movq	56(%r12), %rsi
	movq	%r15, %rdi
	salq	$3, %rdx
	call	free_clusters
	.loc 1 477 0
	xorl	%eax, %eax
	.loc 1 474 0
	movq	%r14, 56(%r12)
	.loc 1 475 0
	movq	%rbp, 64(%r12)
	.loc 1 476 0
	movl	%ebx, 28(%r12)
	jmp	.L611
.LFE105:
	.size	grow_l1_table, .-grow_l1_table
	.p2align 4,,15
	.type	qcow_snapshot_goto, @function
qcow_snapshot_goto:
.LFB134:
	.loc 1 1621 0
	movq	%r13, -8(%rsp)
.LCFI116:
	movq	%rbx, -32(%rsp)
.LCFI117:
	movq	%rdi, %r13
	movq	%rbp, -24(%rsp)
.LCFI118:
	movq	%r12, -16(%rsp)
.LCFI119:
	subq	$40, %rsp
.LCFI120:
	.loc 1 1622 0
	movq	56(%rdi), %rbp
	.loc 1 1626 0
	call	find_snapshot_by_id_or_name
	.loc 1 1627 0
	testl	%eax, %eax
	.loc 1 1628 0
	movl	$-2, %edx
	.loc 1 1627 0
	js	.L652
	.loc 1 1629 0
	movslq	%eax,%rdx
	.loc 1 1631 0
	movq	56(%rbp), %rsi
	movl	$-1, %ecx
	.loc 1 1629 0
	leaq	0(,%rdx,8), %rax
	.loc 1 1631 0
	movq	%r13, %rdi
	.loc 1 1629 0
	subq	%rdx, %rax
	movq	864(%rbp), %rdx
	leaq	(%rdx,%rax,8), %r12
	.loc 1 1631 0
	movl	28(%rbp), %edx
	call	update_snapshot_refcount
	testl	%eax, %eax
	js	.L655
	.loc 1 1634 0
	movl	8(%r12), %esi
	movq	%r13, %rdi
	call	grow_l1_table
	testl	%eax, %eax
	js	.L655
	.loc 1 1637 0
	movl	8(%r12), %edx
	.loc 1 1640 0
	movq	(%rbp), %rdi
	.loc 1 1637 0
	movl	%edx, 28(%rbp)
	.loc 1 1638 0
	movslq	%edx,%rcx
	.loc 1 1640 0
	movq	(%r12), %rsi
	movq	64(%rbp), %rdx
	.loc 1 1638 0
	salq	$3, %rcx
	movl	%ecx, %ebx
	.loc 1 1640 0
	call	bdrv_pread
	cmpl	%ebx, %eax
	movl	%eax, %r12d
	je	.L671
.L655:
	.loc 1 1658 0
	movl	$-5, %edx
.L652:
	.loc 1 1659 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L671:
	.loc 1 1643 0
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rsi
	movl	%eax, %ecx
	movq	(%rbp), %rdi
	call	bdrv_pwrite
	cmpl	%r12d, %eax
	jne	.L655
	.loc 1 1646 0
	movl	28(%rbp), %edx
	xorl	%ecx, %ecx
	cmpl	$0, %edx
	jmp	.L670
	.p2align 4,,7
.L672:
.LBB404:
	.loc 2 121 0
	movq	64(%rbp), %rdx
	movslq	%ecx,%rax
.LBE404:
	.loc 1 1646 0
	incl	%ecx
.LBB405:
	.loc 2 121 0
	leaq	(%rdx,%rax,8), %rax
.LBB406:
.LBB407:
	.loc 2 57 0
	movq	(%rax), %rdx
.LBB408:
.LBB409:
	.loc 2 58 0
#APP
	bswap %rdx
#NO_APP
.LBE409:
.LBE408:
.LBE407:
	.loc 2 57 0
	movq	%rdx, (%rax)
.LBE406:
.LBE405:
	.loc 1 1646 0
	movl	28(%rbp), %edx
	cmpl	%ecx, %edx
.L670:
	jg	.L672
	.loc 1 1650 0
	movq	56(%rbp), %rsi
	movl	$1, %ecx
	movq	%r13, %rdi
	call	update_snapshot_refcount
	.loc 1 1656 0
	xorl	%edx, %edx
	.loc 1 1650 0
	testl	%eax, %eax
	jns	.L652
	jmp	.L655
.LFE134:
	.size	qcow_snapshot_goto, .-qcow_snapshot_goto
	.section	.rodata.str1.1
.LC4:
	.string	"%d"
	.text
	.p2align 4,,15
	.type	qcow_snapshot_create, @function
qcow_snapshot_create:
.LFB133:
	.loc 1 1550 0
	pushq	%r15
.LCFI121:
	.loc 1 1554 0
	xorl	%r15d, %r15d
	.loc 1 1556 0
	movl	$7, %ecx
	cld
	.loc 1 1550 0
	pushq	%r14
.LCFI122:
	.loc 1 1556 0
	movq	%r15, %rax
	.loc 1 1550 0
	pushq	%r13
.LCFI123:
	movq	%rsi, %r13
	pushq	%r12
.LCFI124:
	pushq	%rbp
.LCFI125:
	pushq	%rbx
.LCFI126:
	subq	$88, %rsp
.LCFI127:
	.loc 1 1552 0
	leaq	16(%rsp), %r14
	.loc 1 1550 0
	movq	%rdi, 8(%rsp)
	.loc 1 1551 0
	movq	56(%rdi), %r12
	.loc 1 1556 0
	movq	%r14, %rdi
	rep
	stosq
	.loc 1 1558 0
	cmpb	$0, (%rsi)
	jne	.L674
.LBB410:
.LBB411:
	.loc 1 1511 0
	movl	860(%r12), %r8d
	.loc 1 1509 0
	xorl	%ebp, %ebp
	.loc 1 1511 0
	xorl	%ebx, %ebx
	testl	%r8d, %r8d
	jle	.L699
	.p2align 4,,7
.L679:
	.loc 1 1512 0
	movslq	%ebx,%rdx
	.loc 1 1513 0
	xorl	%esi, %esi
	.loc 1 1512 0
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	864(%r12), %rdx
	.loc 1 1513 0
	movq	16(%rdx,%rax,8), %rdi
	movl	$10, %edx
	call	strtoul
	.loc 1 1515 0
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	.loc 1 1511 0
	incl	%ebx
	cmpl	%ebx, 860(%r12)
	jg	.L679
.L699:
	.loc 1 1517 0
	leal	1(%rbp), %ecx
	movl	$.LC4, %edx
	movl	$128, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	snprintf
.L674:
.LBE411:
.LBE410:
	.loc 1 1564 0
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	call	find_snapshot_by_id
	testl	%eax, %eax
	.loc 1 1565 0
	movl	$-2, %edx
	.loc 1 1564 0
	jns	.L673
	.loc 1 1567 0
	movq	%r13, %rdi
	call	qemu_strdup
	.loc 1 1568 0
	testq	%rax, %rax
	.loc 1 1567 0
	movq	%rax, 16(%r14)
	.loc 1 1568 0
	je	.L707
	.loc 1 1570 0
	leaq	128(%r13), %rdi
	call	qemu_strdup
	.loc 1 1571 0
	testq	%rax, %rax
	.loc 1 1570 0
	movq	%rax, 24(%r14)
	.loc 1 1571 0
	je	.L683
	.loc 1 1573 0
	movl	384(%r13), %eax
	.loc 1 1578 0
	movl	$1, %ecx
	.loc 1 1573 0
	movl	%eax, 32(%r14)
	.loc 1 1574 0
	movl	388(%r13), %eax
	movl	%eax, 36(%r14)
	.loc 1 1575 0
	movl	392(%r13), %eax
	movl	%eax, 40(%r14)
	.loc 1 1576 0
	movq	400(%r13), %rax
	movq	%rax, 48(%r14)
	.loc 1 1578 0
	movl	28(%r12), %edx
	movq	56(%r12), %rsi
	movq	8(%rsp), %rdi
	call	update_snapshot_refcount
	.loc 1 1579 0
	testl	%eax, %eax
	js	.L707
	.loc 1 1583 0
	movslq	28(%r12),%rsi
	movq	8(%rsp), %rdi
	salq	$3, %rsi
	call	alloc_clusters
	movq	%rax, (%r14)
	.loc 1 1584 0
	movl	28(%r12), %eax
	movl	%eax, 8(%r14)
	.loc 1 1586 0
	movslq	28(%r12),%rdi
	salq	$3, %rdi
	call	qemu_malloc
	.loc 1 1587 0
	testq	%rax, %rax
	.loc 1 1586 0
	movq	%rax, %r15
	.loc 1 1587 0
	je	.L707
	.loc 1 1589 0
	movl	28(%r12), %eax
	xorl	%ecx, %ecx
	cmpl	$0, %eax
	jmp	.L708
	.p2align 4,,7
.L709:
.LBB412:
	.loc 2 121 0
	movq	64(%r12), %rax
.LBE412:
	.loc 1 1590 0
	movslq	%ecx,%rdx
	.loc 1 1589 0
	incl	%ecx
.LBB413:
	.loc 2 121 0
	movq	(%rax,%rdx,8), %rax
.LBB414:
.LBB415:
.LBB416:
.LBB417:
	.loc 2 58 0
#APP
	bswap %rax
#NO_APP
.LBE417:
.LBE416:
.LBE415:
.LBE414:
.LBE413:
	.loc 2 121 0
	movq	%rax, (%r15,%rdx,8)
	.loc 1 1589 0
	movl	28(%r12), %eax
	cmpl	%ecx, %eax
.L708:
	jg	.L709
	.loc 1 1592 0
	movq	(%r14), %rsi
	movq	(%r12), %rdi
	movslq	%eax,%rcx
	salq	$3, %rcx
	movq	%r15, %rdx
	call	bdrv_pwrite
	movslq	28(%r12),%rdx
	cltq
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L707
	.loc 1 1596 0
	movq	%r15, %rdi
	.loc 1 1597 0
	xorl	%r15d, %r15d
	.loc 1 1596 0
	call	qemu_free
	.loc 1 1599 0
	movl	860(%r12), %eax
	incl	%eax
	cltq
	leaq	0(,%rax,8), %rdi
	subq	%rax, %rdi
	salq	$3, %rdi
	call	qemu_malloc
	.loc 1 1600 0
	testq	%rax, %rax
	.loc 1 1599 0
	movq	%rax, %rbx
	.loc 1 1600 0
	je	.L707
	.loc 1 1602 0
	movslq	860(%r12),%rax
	movq	864(%r12), %rsi
	movq	%rbx, %rdi
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	salq	$3, %rdx
	call	memcpy
	.loc 1 1604 0
	movslq	860(%r12),%rdx
	.loc 1 1603 0
	movq	%rbx, 864(%r12)
	.loc 1 1604 0
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	movq	(%r14), %rdx
	salq	$3, %rax
	movq	%rdx, (%rax,%rbx)
	movq	8(%r14), %rdx
	movq	%rdx, 8(%rax,%rbx)
	movq	16(%r14), %rdx
	movq	%rdx, 16(%rax,%rbx)
	movq	24(%r14), %rdx
	movq	%rdx, 24(%rax,%rbx)
	movq	32(%r14), %rdx
	movq	%rdx, 32(%rax,%rbx)
	movq	40(%r14), %rdx
	movq	%rdx, 40(%rax,%rbx)
	movq	48(%r14), %rdx
	movq	%rdx, 48(%rax,%rbx)
	incl	860(%r12)
	.loc 1 1606 0
	movq	8(%rsp), %rdi
	call	qcow_write_snapshots
	.loc 1 1611 0
	xorl	%edx, %edx
	.loc 1 1606 0
	testl	%eax, %eax
	jns	.L673
.L707:
	movq	24(%r14), %rax
.L683:
	.loc 1 1613 0
	movq	%rax, %rdi
	call	qemu_free
	.loc 1 1614 0
	movq	%r15, %rdi
	call	qemu_free
	.loc 1 1615 0
	movl	$-1, %edx
.L673:
	.loc 1 1616 0
	addq	$88, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LFE133:
	.size	qcow_snapshot_create, .-qcow_snapshot_create
	.section	.rodata
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 12
__PRETTY_FUNCTION__.1:
	.string	"alloc_bytes"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"size > 0 && size <= s->cluster_size"
	.text
	.p2align 4,,15
	.type	get_cluster_offset, @function
get_cluster_offset:
.LFB106:
	.loc 1 500 0
	movq	%rbx, -48(%rsp)
.LCFI128:
	movq	%r13, -24(%rsp)
.LCFI129:
	.loc 1 505 0
	movq	%rsi, %rbx
	.loc 1 500 0
	movq	%r14, -16(%rsp)
.LCFI130:
	movq	%r15, -8(%rsp)
.LCFI131:
	movq	%rdi, %r14
	movq	%rbp, -40(%rsp)
.LCFI132:
	movq	%r12, -32(%rsp)
.LCFI133:
	subq	$104, %rsp
.LCFI134:
	.loc 1 500 0
	movl	%ecx, 44(%rsp)
	movl	%r8d, 40(%rsp)
	movq	%rsi, %r15
	movl	%r9d, 36(%rsp)
	.loc 1 501 0
	movq	56(%rdi), %rbp
	.loc 1 500 0
	movl	%edx, %r13d
	.loc 1 505 0
	movl	8(%rbp), %ecx
	addl	20(%rbp), %ecx
	shrq	%cl, %rbx
	.loc 1 506 0
	cmpl	%ebx, 28(%rbp)
	jg	.L711
	.loc 1 509 0
	xorl	%ecx, %ecx
	.loc 1 508 0
	testl	%edx, %edx
	jne	.L803
.L710:
	.loc 1 631 0
	movq	56(%rsp), %rbx
	movq	64(%rsp), %rbp
	movq	%rcx, %rax
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	96(%rsp), %r15
	addq	$104, %rsp
	ret
.L803:
	.loc 1 510 0
	leal	1(%rbx), %esi
	call	grow_l1_table
	.loc 1 511 0
	xorl	%ecx, %ecx
	.loc 1 510 0
	testl	%eax, %eax
	js	.L710
	.p2align 4,,7
.L711:
	.loc 1 513 0
	movq	64(%rbp), %rax
	movslq	%ebx,%rbx
	movq	(%rax,%rbx,8), %r12
	.loc 1 514 0
	testq	%r12, %r12
	je	.L804
	.loc 1 543 0
	jl	.L733
	.loc 1 544 0
	testl	%r13d, %r13d
	jne	.L805
.L735:
	.loc 1 551 0
	xorl	%edx, %edx
	.p2align 4,,7
.L746:
	.loc 1 552 0
	movslq	%edx,%rcx
	cmpq	%r12, 80(%rbp,%rcx,8)
	.p2align 4,,2
	je	.L806
	.loc 1 551 0
	incl	%edx
	cmpl	$15, %edx
	jle	.L746
.LBB418:
.LBB419:
	.loc 1 405 0
	movq	56(%r14), %rsi
	.loc 1 410 0
	xorl	%ecx, %ecx
	.loc 1 411 0
	movl	$-1, %edi
	.loc 1 412 0
	xorl	%edx, %edx
	.p2align 4,,7
.L751:
	.loc 1 413 0
	movslq	%edx,%rax
	movl	208(%rsi,%rax,4), %eax
	cmpl	%edi, %eax
	jae	.L749
	.loc 1 414 0
	movl	%eax, %edi
	.loc 1 415 0
	movl	%edx, %ecx
.L749:
	.loc 1 412 0
	incl	%edx
	cmpl	$15, %edx
	jle	.L751
.LBE419:
.LBE418:
	.loc 1 404 0
	movl	%ecx, %ebx
	.loc 1 565 0
	movl	20(%rbp), %ecx
	movq	72(%rbp), %rax
	movl	%ebx, %edx
	.loc 1 566 0
	movq	%r12, %rsi
	.loc 1 565 0
	sall	%cl, %edx
	movslq	%edx,%rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, 24(%rsp)
	.loc 1 566 0
	movslq	24(%rbp),%rcx
	movq	24(%rsp), %rdx
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pread
.L800:
	movl	24(%rbp), %esi
	cltq
	.loc 1 568 0
	xorl	%ecx, %ecx
	.loc 1 566 0
	movslq	%esi,%rdx
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L710
	.loc 1 570 0
	movslq	%ebx,%rax
	movq	%r12, 80(%rbp,%rax,8)
	.loc 1 571 0
	movl	$1, 208(%rbp,%rax,4)
	jmp	.L745
	.p2align 4,,7
.L804:
	.loc 1 516 0
	xorl	%ecx, %ecx
	.loc 1 515 0
	testl	%r13d, %r13d
	je	.L710
.L716:
	.loc 1 518 0
	movq	%r12, 16(%rsp)
	.loc 1 520 0
	movslq	24(%rbp),%rsi
	movq	%r14, %rdi
	salq	$3, %rsi
	call	alloc_clusters
	.loc 1 522 0
	movq	64(%rbp), %rdx
	.loc 1 520 0
	movq	%rax, %r12
	.loc 1 522 0
	movabsq	$-9223372036854775808, %rax
	orq	%r12, %rax
	.loc 1 524 0
	movl	$8, %ecx
	.loc 1 522 0
	movq	%rax, (%rdx,%rbx,8)
	.loc 1 524 0
	leaq	48(%rsp), %rdx
	.loc 2 121 0
#APP
	bswap %rax
#NO_APP
	movq	%rax, 48(%rsp)
	.loc 1 524 0
	movq	56(%rbp), %rax
	movq	(%rbp), %rdi
	leaq	(%rax,%rbx,8), %rsi
	call	bdrv_pwrite
	.loc 1 526 0
	xorl	%ecx, %ecx
	.loc 1 524 0
	cmpl	$8, %eax
	jne	.L710
.LBB420:
.LBB421:
	.loc 1 405 0
	movq	56(%r14), %rsi
	.loc 1 411 0
	movl	$-1, %edi
	.loc 1 412 0
	xorl	%edx, %edx
	.p2align 4,,7
.L726:
	.loc 1 413 0
	movslq	%edx,%rax
	movl	208(%rsi,%rax,4), %eax
	cmpl	%edi, %eax
	jae	.L724
	.loc 1 414 0
	movl	%eax, %edi
	.loc 1 415 0
	movl	%edx, %ecx
.L724:
	.loc 1 412 0
	incl	%edx
	cmpl	$15, %edx
	jle	.L726
.LBE421:
.LBE420:
	.loc 1 404 0
	movl	%ecx, %ebx
	.loc 1 528 0
	movl	20(%rbp), %ecx
	movl	%ebx, %eax
	sall	%cl, %eax
	.loc 1 530 0
	cmpq	$0, 16(%rsp)
	.loc 1 528 0
	movslq	%eax,%rcx
	movq	72(%rbp), %rax
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, 24(%rsp)
	.loc 1 530 0
	jne	.L728
	.loc 1 531 0
	movslq	24(%rbp),%rdx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	salq	$3, %rdx
	call	memset
	movl	24(%rbp), %esi
.L729:
	.loc 1 538 0
	movq	24(%rsp), %rdx
	movq	(%rbp), %rdi
	movslq	%esi,%rcx
	salq	$3, %rcx
	movq	%r12, %rsi
	call	bdrv_pwrite
	jmp	.L800
.L806:
	.loc 1 554 0
	movl	208(%rbp,%rcx,4), %eax
	incl	%eax
	movl	%eax, 208(%rbp,%rcx,4)
	incl	%eax
	je	.L807
.L740:
	.loc 1 559 0
	movl	20(%rbp), %ecx
	movq	72(%rbp), %rax
	sall	%cl, %edx
	movslq	%edx,%rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	%rdx, 24(%rsp)
	movl	24(%rbp), %esi
.L745:
	.loc 1 573 0
	movl	8(%rbp), %ecx
	movq	%r15, %rdx
	leal	-1(%rsi), %eax
	shrq	%cl, %rdx
.LBB422:
	.loc 2 121 0
	movq	24(%rsp), %rcx
.LBE422:
	.loc 1 573 0
	andl	%edx, %eax
.LBB423:
	.loc 2 121 0
	cltq
	movq	%rax, 8(%rsp)
	movq	(%rcx,%rax,8), %rbx
.LBE423:
#APP
	bswap %rbx
	.loc 1 575 0
#NO_APP
	testq	%rbx, %rbx
	jne	.L758
	.loc 1 577 0
	xorl	%ecx, %ecx
	.loc 1 576 0
	testl	%r13d, %r13d
	je	.L710
.L760:
	.loc 1 595 0
	decl	%r13d
	je	.L808
.LBB424:
.LBB425:
.LBB426:
	.loc 1 1843 0
	movl	44(%rsp), %r9d
	.loc 1 1839 0
	movq	56(%r14), %r13
	.loc 1 1843 0
	testl	%r9d, %r9d
	jle	.L777
	movl	12(%r13), %ecx
	cmpl	44(%rsp), %ecx
	jge	.L776
.L777:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1843, %edx
	movl	$.LC2, %esi
	movl	$.LC5, %edi
	call	__assert_fail
.L758:
.LBE426:
.LBE425:
.LBE424:
	.loc 1 578 0
	jl	.L761
	.loc 1 579 0
	testl	%r13d, %r13d
	.loc 1 580 0
	movq	%rbx, %rcx
	.loc 1 579 0
	je	.L710
	.loc 1 582 0
	movabsq	$4611686018427387904, %rax
	testq	%rax, %rbx
	.p2align 4,,3
	je	.L763
.LBB427:
	.loc 1 584 0
	movl	36(%rbp), %ecx
	movq	%rbx, %rdx
	.loc 1 586 0
	movq	48(%rbp), %rsi
	.loc 1 584 0
	shrq	%cl, %rdx
	andl	40(%rbp), %edx
	.loc 1 586 0
	andq	%rbx, %rsi
	andq	$-512, %rsi
	.loc 1 584 0
	incl	%edx
	.loc 1 586 0
	sall	$9, %edx
	movslq	%edx,%rdx
.L801:
.LBE427:
	.loc 1 589 0
	movq	%r14, %rdi
	call	free_clusters
	jmp	.L760
.L733:
	.loc 1 549 0
	movabsq	$9223372036854775807, %rax
	andq	%rax, %r12
	jmp	.L735
.L805:
	.loc 1 545 0
	movslq	24(%rbp),%rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	salq	$3, %rdx
	call	free_clusters
	jmp	.L716
.L807:
	.loc 1 555 0
	xorl	%ecx, %ecx
	.p2align 4,,7
.L744:
	.loc 1 556 0
	movslq	%ecx,%rax
	.loc 1 555 0
	incl	%ecx
	.loc 1 556 0
	shrl	208(%rbp,%rax,4)
	.loc 1 555 0
	cmpl	$15, %ecx
	jle	.L744
	jmp	.L740
.L728:
	.loc 1 533 0
	movslq	24(%rbp),%rcx
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	(%rbp), %rdi
	salq	$3, %rcx
	call	bdrv_pread
	movl	24(%rbp), %esi
	cltq
	.loc 1 536 0
	xorl	%ecx, %ecx
	.loc 1 533 0
	movslq	%esi,%rdx
	salq	$3, %rdx
	cmpq	%rdx, %rax
	jne	.L710
	jmp	.L729
.L776:
.LBB428:
.LBB429:
.LBB430:
	.loc 1 1844 0
	movq	344(%r13), %rdx
	testq	%rdx, %rdx
	jne	.L779
	.p2align 4,,4
	jmp	.L809
	.p2align 4,,7
.L780:
	.loc 1 1860 0
	movslq	%ecx,%rsi
	movq	%r14, %rdi
	call	alloc_clusters
	.loc 1 1861 0
	movl	12(%r13), %ecx
	movq	344(%r13), %rsi
	.loc 1 1860 0
	movq	%rax, %rbx
	.loc 1 1861 0
	movl	%ecx, %edx
	.loc 1 1862 0
	movslq	%ecx,%rax
	.loc 1 1861 0
	negl	%edx
	movslq	%edx,%rdx
	andq	%rsi, %rdx
	.loc 1 1862 0
	addq	%rdx, %rax
	cmpq	%rbx, %rax
	je	.L810
	.loc 1 1868 0
	movq	%rbx, 344(%r13)
	movq	%rbx, %rdx
.L779:
	.loc 1 1848 0
	leal	-1(%rcx), %edi
	movl	%ecx, %esi
	movl	%edi, %eax
	andl	%edx, %eax
	subl	%eax, %esi
	.loc 1 1850 0
	cmpl	%esi, 44(%rsp)
	jg	.L780
	.loc 1 1853 0
	movslq	44(%rsp),%r15
	.loc 1 1852 0
	movq	%rdx, %rbx
	.loc 1 1853 0
	leaq	(%rdx,%r15), %rax
	.loc 1 1856 0
	xorl	%edx, %edx
	cmpl	44(%rsp), %esi
	cmovne	%rax, %rdx
	.loc 1 1857 0
	movslq	%edi,%rax
	testq	%rbx, %rax
	.loc 1 1856 0
	movq	%rdx, 344(%r13)
	.loc 1 1857 0
	jne	.L811
.L783:
.LBE430:
.LBE429:
	.loc 1 618 0
	leaq	-1(%r15,%rbx), %rax
	movq	%rbx, %rdx
	.loc 1 620 0
	movl	36(%rbp), %ecx
	.loc 1 618 0
	shrq	$9, %rdx
	shrq	$9, %rax
	subl	%edx, %eax
	.loc 1 620 0
	cltq
	salq	%cl, %rax
	orq	%rax, %rbx
	movabsq	$4611686018427387904, %rax
	orq	%rax, %rbx
	.loc 2 121 0
	movq	%rbx, %rax
.L802:
.LBE428:
	.loc 1 626 0
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rcx
.LBB431:
	.loc 2 121 0
#APP
	bswap %rax
#NO_APP
	movq	%rax, 48(%rsp)
.LBE431:
	.loc 1 626 0
	movq	%rax, (%rcx,%rdx,8)
	.loc 1 627 0
	movq	(%rbp), %rdi
	leaq	(%r12,%rdx,8), %rsi
	leaq	48(%rsp), %rdx
	movl	$8, %ecx
	call	bdrv_pwrite
	.loc 1 629 0
	xorl	%ecx, %ecx
	cmpl	$8, %eax
	cmove	%rbx, %rcx
	jmp	.L710
.L761:
	.loc 1 593 0
	movabsq	$9223372036854775807, %rax
	movq	%rbx, %rcx
	andq	%rax, %rcx
	jmp	.L710
.L763:
	.loc 1 589 0
	movslq	12(%rbp),%rdx
	movq	%rbx, %rsi
	jmp	.L801
.L808:
	.loc 1 597 0
	movslq	12(%rbp),%rsi
	movq	%r14, %rdi
	call	alloc_clusters
	movq	%rax, %rbx
	.loc 1 601 0
	movl	36(%rsp), %eax
	subl	40(%rsp), %eax
	cmpl	16(%rbp), %eax
	jl	.L812
.L767:
.LBB432:
	.loc 2 121 0
	movabsq	$-9223372036854775808, %rax
	orq	%rbx, %rax
	jmp	.L802
.L810:
.LBE432:
.LBB433:
.LBB434:
.LBB435:
	.loc 1 1865 0
	movl	8(%r13), %ecx
	.loc 1 1864 0
	movq	%rsi, %rbx
	.loc 1 1865 0
	movl	$1, %edx
	movq	%r14, %rdi
	sarq	%cl, %rsi
	call	update_cluster_refcount
	.loc 1 1866 0
	movslq	44(%rsp),%r15
	addq	%r15, 344(%r13)
	jmp	.L783
.L809:
	.loc 1 1845 0
	movslq	%ecx,%rsi
	movq	%r14, %rdi
	call	alloc_clusters
	movl	12(%r13), %ecx
	movq	%rax, %rdx
	movq	%rax, 344(%r13)
	jmp	.L779
.L811:
	.loc 1 1858 0
	movl	8(%r13), %ecx
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	sarq	%cl, %rsi
	call	update_cluster_refcount
	jmp	.L783
.L812:
.LBE435:
.LBE434:
.LBE433:
.LBB436:
	.loc 1 604 0
	movl	12(%rbp), %eax
	.loc 1 605 0
	movl	40(%rsp), %r8d
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%r14, %rdi
	.loc 1 604 0
	decl	%eax
	notl	%eax
	movslq	%eax,%r13
	andq	%r15, %r13
	shrq	$9, %r13
	.loc 1 605 0
	movq	%r13, %rsi
	call	copy_sectors
	.loc 1 608 0
	xorl	%ecx, %ecx
	.loc 1 607 0
	testl	%eax, %eax
	js	.L710
	.loc 1 609 0
	movl	36(%rsp), %ecx
	movl	16(%rbp), %r8d
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	copy_sectors
	.loc 1 612 0
	xorl	%ecx, %ecx
	.loc 1 611 0
	testl	%eax, %eax
	jns	.L767
	jmp	.L710
.LBE436:
.LFE106:
	.size	get_cluster_offset, .-get_cluster_offset
	.p2align 4,,15
	.type	qcow_write_compressed, @function
qcow_write_compressed:
.LFB123:
	.loc 1 1166 0
	pushq	%r15
.LCFI135:
	pushq	%r14
.LCFI136:
	movq	%rsi, %r14
	pushq	%r13
.LCFI137:
	pushq	%r12
.LCFI138:
	pushq	%rbp
.LCFI139:
	pushq	%rbx
.LCFI140:
	subq	$168, %rsp
.LCFI141:
	.loc 1 1173 0
	testl	%ecx, %ecx
	.loc 1 1166 0
	movq	%rdi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	.loc 1 1167 0
	movq	56(%rdi), %rbp
	.loc 1 1173 0
	je	.L839
	.loc 1 1182 0
	cmpl	%ecx, 16(%rbp)
	.loc 1 1183 0
	movl	$-22, %eax
	.loc 1 1182 0
	jne	.L813
	.loc 1 1185 0
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
	.loc 1 1186 0
	cmpq	$0, 24(%rsp)
	.loc 1 1187 0
	movl	$-12, %eax
	.loc 1 1186 0
	je	.L813
	.loc 1 1190 0
	leaq	48(%rsp), %r12
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%r12, %rdi
	call	memset
	.loc 1 1191 0
	xorl	%r9d, %r9d
	movl	$9, %r8d
	movl	$-12, %ecx
	movl	$8, %edx
	movl	$-1, %esi
	movq	%r12, %rdi
	movl	$112, 8(%rsp)
	movq	$.LC1, (%rsp)
	call	deflateInit2_
	.loc 1 1194 0
	testl	%eax, %eax
	jne	.L838
	.loc 1 1199 0
	movl	12(%rbp), %eax
	.loc 1 1204 0
	movl	$4, %esi
	movq	%r12, %rdi
	.loc 1 1199 0
	movl	%eax, 56(%rsp)
	.loc 1 1200 0
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc 1 1201 0
	movl	12(%rbp), %eax
	movl	%eax, 80(%rsp)
	.loc 1 1202 0
	movq	24(%rsp), %rax
	movq	%rax, 72(%rsp)
	.loc 1 1204 0
	call	deflate
	.loc 1 1205 0
	cmpl	$1, %eax
	.loc 1 1204 0
	movl	%eax, %ebx
	.loc 1 1205 0
	ja	.L840
	.loc 1 1210 0
	movq	72(%rsp), %rax
	.loc 1 1212 0
	movq	%r12, %rdi
	.loc 1 1210 0
	movl	%eax, %r13d
	subl	24(%rsp), %r13d
	.loc 1 1212 0
	call	deflateEnd
	.loc 1 1214 0
	decl	%ebx
	je	.L841
.L820:
.LBB437:
	.loc 1 761 0
	movq	32(%rsp), %rax
	movq	%r14, %r15
	movq	%rax, 16(%rsp)
.LBB438:
	.loc 1 762 0
	movq	40(%rsp), %rax
.LBE438:
	.loc 1 761 0
	movl	16(%rbp), %r14d
.LBB439:
	.loc 1 762 0
	movq	56(%rax), %r13
	jmp	.L834
	.p2align 4,,7
.L842:
	.loc 1 777 0
	movq	280(%r13), %rdx
	movq	16(%rsp), %rcx
	leaq	360(%r13), %rax
	movq	%r15, %rsi
	movl	$1, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdi
	movq	%rax, (%rsp)
	.loc 1 779 0
	sall	$9, %ebx
	.loc 1 777 0
	call	encrypt_sectors
	.loc 1 779 0
	movq	280(%r13), %rdx
	movl	%ebp, %ecx
	movslq	%ebx,%rsi
	sall	$9, %ecx
	addq	%r12, %rsi
.L835:
	.loc 1 782 0
	movq	(%r13), %rdi
	call	bdrv_pwrite
	.loc 1 784 0
	movl	%ebp, %edx
	sall	$9, %edx
	cmpl	%eax, %edx
	jne	.L830
	.loc 1 787 0
	movslq	%ebp,%rax
	.loc 1 786 0
	subl	%ebp, %r14d
	.loc 1 787 0
	addq	%rax, %r15
	.loc 1 788 0
	movslq	%edx,%rax
	addq	%rax, 16(%rsp)
.L834:
	testl	%r14d, %r14d
	jle	.L833
	.loc 1 767 0
	movl	16(%r13), %eax
	.loc 1 771 0
	movq	40(%rsp), %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	.loc 1 767 0
	leal	-1(%rax), %ebx
	.loc 1 768 0
	movl	%eax, %ebp
	.loc 1 767 0
	andl	%r15d, %ebx
	.loc 1 768 0
	subl	%ebx, %ebp
	.loc 1 771 0
	movl	%ebx, %r8d
	.loc 1 770 0
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	.loc 1 771 0
	salq	$9, %rsi
	xorl	%ecx, %ecx
	leal	(%rbx,%rbp), %r9d
	call	get_cluster_offset
	.loc 1 774 0
	testq	%rax, %rax
	.loc 1 771 0
	movq	%rax, %r12
	.loc 1 774 0
	je	.L830
	.loc 1 776 0
	movl	352(%r13), %r10d
	testl	%r10d, %r10d
	jne	.L842
	.loc 1 782 0
	sall	$9, %ebx
	movq	16(%rsp), %rdx
	movl	%ebp, %ecx
	movslq	%ebx,%rsi
	sall	$9, %ecx
	addq	%rax, %rsi
	jmp	.L835
	.p2align 4,,7
.L839:
.LBE439:
.LBE437:
	.loc 1 1176 0
	movq	(%rbp), %rdi
	call	bdrv_getlength
	.loc 1 1178 0
	movq	(%rbp), %rdi
	.loc 1 1177 0
	leaq	511(%rax), %rsi
	andq	$-512, %rsi
	.loc 1 1178 0
	call	bdrv_truncate
	.loc 1 1228 0
	xorl	%eax, %eax
	.p2align 4,,7
.L813:
	.loc 1 1229 0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L841:
	.loc 1 1214 0
	cmpl	%r13d, 12(%rbp)
	jle	.L820
	.loc 1 1218 0
	movq	40(%rsp), %rdi
	salq	$9, %r14
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%r13d, %ecx
	movl	$2, %edx
	movq	%r14, %rsi
	call	get_cluster_offset
	.loc 1 1220 0
	andq	48(%rbp), %rax
	.loc 1 1221 0
	movq	24(%rsp), %rdx
	movl	%r13d, %ecx
	movq	(%rbp), %rdi
	movq	%rax, %rsi
	call	bdrv_pwrite
	cmpl	%r13d, %eax
	je	.L830
.L838:
	.loc 1 1222 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 1223 0
	movl	$-1, %eax
	jmp	.L813
	.p2align 4,,7
.L833:
.LBB440:
.LBB441:
	.loc 1 790 0
	movq	$-1, 288(%r13)
.L830:
.LBE441:
.LBE440:
	.loc 1 1227 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 1228 0
	xorl	%eax, %eax
	jmp	.L813
.L840:
	.loc 1 1206 0
	movq	24(%rsp), %rdi
	call	qemu_free
	.loc 1 1207 0
	movq	%r12, %rdi
	call	deflateEnd
	.loc 1 1223 0
	movl	$-1, %eax
	jmp	.L813
.LFE123:
	.size	qcow_write_compressed, .-qcow_write_compressed
	.p2align 4,,15
	.type	copy_sectors, @function
copy_sectors:
.LFB101:
	.loc 1 371 0
	pushq	%r15
.LCFI142:
	.loc 1 375 0
	subl	%ecx, %r8d
	.loc 1 371 0
	pushq	%r14
.LCFI143:
	pushq	%r13
.LCFI144:
	pushq	%r12
.LCFI145:
	pushq	%rbp
.LCFI146:
	pushq	%rbx
.LCFI147:
	subq	$56, %rsp
.LCFI148:
	.loc 1 371 0
	movq	%rdx, 32(%rsp)
	movq	%rdi, 48(%rsp)
	.loc 1 377 0
	xorl	%edx, %edx
	.loc 1 371 0
	movq	%rsi, 40(%rsp)
	.loc 1 372 0
	movq	56(%rdi), %rax
	.loc 1 376 0
	testl	%r8d, %r8d
	.loc 1 375 0
	movl	%r8d, 20(%rsp)
	.loc 1 372 0
	movq	%rax, 24(%rsp)
	.loc 1 376 0
	jle	.L843
.LBB442:
	.loc 1 716 0
	movq	24(%rsp), %rdx
	movslq	%ecx,%rcx
	movl	20(%rsp), %r14d
	movq	%rcx, %r13
	addq	40(%rsp), %r13
	movq	%rcx, 8(%rsp)
	movq	280(%rdx), %r15
	jmp	.L860
	.p2align 4,,7
.L870:
.LBB443:
	.loc 1 728 0
	movq	48(%rsp), %rax
	movq	2640(%rax), %rdi
	testq	%rdi, %rdi
	je	.L849
	.loc 1 730 0
	movl	%r12d, %ecx
	movq	%r15, %rdx
	movq	%r13, %rsi
	call	backing_read1
	.loc 1 731 0
	testl	%eax, %eax
	jle	.L854
	.loc 1 732 0
	movq	48(%rsp), %rdx
	movl	%eax, %ecx
	movq	%r13, %rsi
	movq	2640(%rdx), %rdi
	movq	%r15, %rdx
	call	bdrv_read
	.loc 1 733 0
	testl	%eax, %eax
	js	.L868
	.p2align 4,,7
.L854:
	.loc 1 753 0
	movslq	%r12d,%rax
	.loc 1 752 0
	subl	%r12d, %r14d
	.loc 1 754 0
	sall	$9, %r12d
	.loc 1 753 0
	addq	%rax, %r13
	.loc 1 754 0
	movslq	%r12d,%rax
	addq	%rax, %r15
	testl	%r14d, %r14d
	jle	.L869
.L860:
	.loc 1 722 0
	movq	48(%rsp), %rdi
	movq	%r13, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	salq	$9, %rsi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	call	get_cluster_offset
	.loc 1 723 0
	movq	24(%rsp), %rcx
	.loc 1 722 0
	movq	%rax, %rdx
	.loc 1 723 0
	movl	16(%rcx), %eax
	leal	-1(%rax), %ebp
	.loc 1 724 0
	movl	%eax, %r12d
	.loc 1 723 0
	andl	%r13d, %ebp
	.loc 1 724 0
	subl	%ebp, %r12d
	.loc 1 726 0
	cmpl	%r14d, %r12d
	cmovg	%r14d, %r12d
	.loc 1 727 0
	testq	%rdx, %rdx
	je	.L870
	.loc 1 739 0
	movabsq	$4611686018427387904, %rax
	testq	%rax, %rdx
	je	.L855
	.loc 1 740 0
	movq	24(%rsp), %rdi
	movq	%rdx, %rsi
	call	decompress_cluster
	testl	%eax, %eax
	js	.L868
	.loc 1 742 0
	movq	24(%rsp), %rcx
	sall	$9, %ebp
	movl	%r12d, %edx
	movslq	%ebp,%rsi
	sall	$9, %edx
	movq	%r15, %rdi
	movslq	%edx,%rdx
	.loc 1 752 0
	subl	%r12d, %r14d
	.loc 1 742 0
	addq	272(%rcx), %rsi
	call	memcpy
	.loc 1 753 0
	movslq	%r12d,%rax
	.loc 1 754 0
	sall	$9, %r12d
	.loc 1 753 0
	addq	%rax, %r13
	.loc 1 754 0
	movslq	%r12d,%rax
	addq	%rax, %r15
	testl	%r14d, %r14d
	jg	.L860
	.p2align 4,,7
.L869:
	.loc 1 755 0
	xorl	%eax, %eax
.L852:
.LBE443:
.LBE442:
	.loc 1 379 0
	testl	%eax, %eax
	.loc 1 380 0
	movl	%eax, %edx
	.loc 1 379 0
	js	.L843
	.loc 1 381 0
	movq	24(%rsp), %rcx
	movl	352(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L871
.L862:
	.loc 1 387 0
	movq	24(%rsp), %rax
	movl	20(%rsp), %ecx
	movq	280(%rax), %rdx
	shrq	$9, 32(%rsp)
	movq	32(%rsp), %rsi
	addq	8(%rsp), %rsi
	movq	(%rax), %rdi
	call	bdrv_write
	.loc 1 390 0
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%eax, %edx
.L843:
	.loc 1 392 0
	addq	$56, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L849:
.LBB444:
.LBB445:
	.loc 1 737 0
	movl	%r12d, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	memset
	jmp	.L854
	.p2align 4,,7
.L855:
	.loc 1 744 0
	movq	24(%rsp), %rax
	sall	$9, %ebp
	movl	%r12d, %ebx
	sall	$9, %ebx
	movslq	%ebp,%rsi
	addq	%rdx, %rsi
	movl	%ebx, %ecx
	movq	%r15, %rdx
	movq	(%rax), %rdi
	call	bdrv_pread
	.loc 1 745 0
	cmpl	%eax, %ebx
	jne	.L868
	.loc 1 747 0
	movq	24(%rsp), %rdx
	movl	352(%rdx), %ebx
	testl	%ebx, %ebx
	je	.L854
	.loc 1 748 0
	movq	24(%rsp), %rdi
	movq	%rdx, %rax
	xorl	%r9d, %r9d
	addq	$604, %rax
	movl	%r12d, %r8d
	movq	%r15, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rax, (%rsp)
	call	encrypt_sectors
	jmp	.L854
.L871:
.LBE445:
.LBE444:
	.loc 1 382 0
	movq	280(%rcx), %rdx
	movq	8(%rsp), %rsi
	movq	%rcx, %rax
	addq	40(%rsp), %rsi
	movl	20(%rsp), %r8d
	addq	$360, %rax
	movq	24(%rsp), %rdi
	movl	$1, %r9d
	movq	%rax, (%rsp)
	movq	%rdx, %rcx
	call	encrypt_sectors
	jmp	.L862
.L868:
.LBB446:
.LBB447:
	.loc 1 733 0
	movl	$-1, %eax
	jmp	.L852
.LBE447:
.LBE446:
.LFE101:
	.size	copy_sectors, .-copy_sectors
	.p2align 4,,15
	.type	qcow_aio_write_cb, @function
qcow_aio_write_cb:
.LFB116:
	.loc 1 924 0
	movq	%rbx, -40(%rsp)
.LCFI149:
	movq	%r13, -16(%rsp)
.LCFI150:
	movq	%rdi, %rbx
	movq	%rbp, -32(%rsp)
.LCFI151:
	movq	%r12, -24(%rsp)
.LCFI152:
	movl	%esi, %r13d
	movq	%r14, -8(%rsp)
.LCFI153:
	subq	$56, %rsp
.LCFI154:
	.loc 1 926 0
	movq	(%rdi), %rdi
	.loc 1 934 0
	testl	%esi, %esi
	.loc 1 927 0
	movq	56(%rdi), %r14
	.loc 1 932 0
	movq	$0, 72(%rbx)
	.loc 1 934 0
	js	.L874
	.loc 1 941 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 942 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 941 0
	subl	%eax, %edx
	.loc 1 943 0
	sall	$9, %eax
	.loc 1 941 0
	movl	%edx, 48(%rbx)
	.loc 1 943 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 945 0
	testl	%edx, %edx
	.loc 1 942 0
	movq	%rsi, 32(%rbx)
	.loc 1 945 0
	je	.L886
	.loc 1 952 0
	movl	16(%r14), %eax
	leal	-1(%rax), %ebp
	andl	%esi, %ebp
	.loc 1 953 0
	subl	%ebp, %eax
	.loc 1 954 0
	cmpl	%edx, %eax
	jle	.L884
	.loc 1 955 0
	movl	%edx, %eax
.L884:
	.loc 1 956 0
	leal	(%rax,%rbp), %r9d
	salq	$9, %rsi
	xorl	%ecx, %ecx
	movl	%eax, 52(%rbx)
	movl	%ebp, %r8d
	movl	$1, %edx
	call	get_cluster_offset
	.loc 1 959 0
	testq	%rax, %rax
	.loc 1 956 0
	movq	%rax, %r12
	.loc 1 959 0
	je	.L878
	testl	$511, %eax 
	jne	.L878
	.loc 1 963 0
	movl	352(%r14), %eax
	testl	%eax, %eax
	je	.L879
	.loc 1 964 0
	movq	64(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L880
	.loc 1 965 0
	movslq	12(%r14),%rdi
	call	qemu_mallocz
	.loc 1 966 0
	testq	%rax, %rax
	.loc 1 965 0
	movq	%rax, %rdx
	movq	%rax, 64(%rbx)
	.loc 1 966 0
	jne	.L880
	.loc 1 967 0
	movl	$-12, %r13d
	.p2align 4,,7
.L874:
	.loc 1 936 0
	movq	16(%rbx), %rdi
	movl	%r13d, %esi
	jmp	.L885
	.p2align 4,,7
.L886:
	.loc 1 947 0
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
.L885:
	call	*8(%rbx)
	.loc 1 948 0
	movq	%rbx, %rdi
	.loc 1 983 0
	movq	24(%rsp), %rbp
	movq	16(%rsp), %rbx
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	addq	$56, %rsp
	.loc 1 948 0
	jmp	qemu_aio_release
	.p2align 4,,7
.L878:
	.loc 1 936 0
	movq	16(%rbx), %rdi
	.loc 1 960 0
	movl	$-5, %r13d
	.loc 1 936 0
	movl	%r13d, %esi
	jmp	.L885
.L879:
	.loc 1 975 0
	movq	40(%rbx), %rdx
.L882:
	.loc 1 977 0
	shrq	$9, %r12
	movl	52(%rbx), %ecx
	movslq	%ebp,%rsi
	movq	(%r14), %rdi
	leaq	(%r12,%rsi), %rsi
	movq	%rbx, %r9
	movl	$qcow_aio_write_cb, %r8d
	call	bdrv_aio_write
	.loc 1 981 0
	testq	%rax, %rax
	.loc 1 977 0
	movq	%rax, 72(%rbx)
	.loc 1 981 0
	je	.L874
	.loc 1 983 0
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	addq	$56, %rsp
	ret
.L880:
	.loc 1 971 0
	movl	52(%rbx), %r8d
	movq	40(%rbx), %rcx
	leaq	360(%r14), %rax
	movq	32(%rbx), %rsi
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	call	encrypt_sectors
	.loc 1 973 0
	movq	64(%rbx), %rdx
	jmp	.L882
.LFE116:
	.size	qcow_aio_write_cb, .-qcow_aio_write_cb
	.p2align 4,,15
	.type	qcow_aio_write, @function
qcow_aio_write:
.LFB117:
	.loc 1 988 0
	pushq	%rbx
.LCFI155:
	.loc 1 989 0
	movq	56(%rdi), %rax
	.loc 1 992 0
	movq	$-1, 288(%rax)
	.loc 1 994 0
	call	qcow_aio_setup
	movq	%rax, %rbx
	.loc 1 996 0
	xorl	%eax, %eax
	.loc 1 995 0
	testq	%rbx, %rbx
	je	.L887
	.loc 1 998 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	qcow_aio_write_cb
	.loc 1 999 0
	movq	%rbx, %rax
.L887:
	.loc 1 1000 0
	popq	%rbx
	ret
.LFE117:
	.size	qcow_aio_write, .-qcow_aio_write
	.p2align 4,,15
	.type	qcow_aio_read_cb, @function
qcow_aio_read_cb:
.LFB113:
	.loc 1 806 0
	pushq	%r14
.LCFI156:
	movl	%esi, %r14d
	pushq	%r13
.LCFI157:
	pushq	%r12
.LCFI158:
	pushq	%rbp
.LCFI159:
	pushq	%rbx
.LCFI160:
	movq	%rdi, %rbx
	subq	$16, %rsp
.LCFI161:
	.loc 1 808 0
	movq	(%rdi), %r13
	.loc 1 813 0
	testl	%esi, %esi
	.loc 1 809 0
	movq	56(%r13), %r12
	.loc 1 812 0
	movq	$0, 72(%rdi)
	.loc 1 813 0
	js	.L891
.L892:
	.p2align 4,,7
.L918:
	.loc 1 822 0
	movq	56(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L894
	.loc 1 824 0
	movabsq	$4611686018427387904, %rax
	testq	%rax, %rdx
	jne	.L894
	.loc 1 827 0
	movl	352(%r12), %eax
	testl	%eax, %eax
	jne	.L919
	.p2align 4,,7
.L894:
	.loc 1 834 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 835 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 834 0
	subl	%eax, %edx
	.loc 1 836 0
	sall	$9, %eax
	.loc 1 834 0
	movl	%edx, 48(%rbx)
	.loc 1 836 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 838 0
	testl	%edx, %edx
	.loc 1 835 0
	movq	%rsi, 32(%rbx)
	.loc 1 838 0
	je	.L920
.L898:
	.loc 1 846 0
	salq	$9, %rsi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	get_cluster_offset
	movq	%rax, %rdi
	movq	%rax, 56(%rbx)
	.loc 1 848 0
	movl	16(%r12), %eax
	movq	32(%rbx), %rsi
	.loc 1 850 0
	movl	48(%rbx), %ecx
	.loc 1 848 0
	leal	-1(%rax), %ebp
	.loc 1 849 0
	movl	%eax, %r10d
	.loc 1 848 0
	andl	%esi, %ebp
	.loc 1 849 0
	subl	%ebp, %r10d
	.loc 1 850 0
	cmpl	%ecx, %r10d
	jle	.L912
	.loc 1 851 0
	movl	%ecx, %r10d
.L912:
	.loc 1 853 0
	testq	%rdi, %rdi
	movl	%r10d, 52(%rbx)
	jne	.L900
	.loc 1 854 0
	movq	2640(%r13), %rdi
	testq	%rdi, %rdi
	je	.L901
	.loc 1 856 0
	movq	40(%rbx), %rdx
	movl	%r10d, %ecx
	call	backing_read1
	.loc 1 858 0
	testl	%eax, %eax
	jle	.L918
	.loc 1 859 0
	movl	52(%rbx), %ecx
	movq	40(%rbx), %rdx
	movq	%rbx, %r9
	movq	32(%rbx), %rsi
	movq	2640(%r13), %rdi
	movl	$qcow_aio_read_cb, %r8d
.L916:
	.loc 1 883 0
	call	bdrv_aio_read
	.loc 1 886 0
	testq	%rax, %rax
	.loc 1 883 0
	movq	%rax, 72(%rbx)
	.loc 1 886 0
	je	.L891
	.loc 1 889 0
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L900:
	.loc 1 871 0
	movabsq	$4611686018427387904, %rax
	testq	%rax, %rdi
	je	.L907
	.loc 1 873 0
	movq	%rdi, %rsi
	movq	%r12, %rdi
	call	decompress_cluster
	testl	%eax, %eax
	js	.L891
	.loc 1 875 0
	movl	52(%rbx), %edx
	sall	$9, %ebp
	movq	40(%rbx), %rdi
	movslq	%ebp,%rsi
	addq	272(%r12), %rsi
	sall	$9, %edx
	movslq	%edx,%rdx
	call	memcpy
	jmp	.L918
	.p2align 4,,7
.L901:
	.loc 1 868 0
	movq	40(%rbx), %rdi
	sall	$9, %r10d
	xorl	%esi, %esi
	movslq	%r10d,%rdx
	call	memset
	jmp	.L918
.L919:
	.loc 1 828 0
	movq	40(%rbx), %rdx
	movq	32(%rbx), %rsi
	leaq	604(%r12), %rax
	movl	52(%rbx), %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rax, (%rsp)
	movq	%rdx, %rcx
	call	encrypt_sectors
	.loc 1 834 0
	movl	52(%rbx), %eax
	movl	48(%rbx), %edx
	.loc 1 835 0
	movslq	%eax,%rsi
	addq	32(%rbx), %rsi
	.loc 1 834 0
	subl	%eax, %edx
	.loc 1 836 0
	sall	$9, %eax
	.loc 1 834 0
	movl	%edx, 48(%rbx)
	.loc 1 836 0
	cltq
	addq	%rax, 40(%rbx)
	.loc 1 838 0
	testl	%edx, %edx
	.loc 1 835 0
	movq	%rsi, 32(%rbx)
	.loc 1 838 0
	jne	.L898
.L920:
	.loc 1 840 0
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	call	*8(%rbx)
	.loc 1 889 0
	addq	$16, %rsp
	.loc 1 841 0
	movq	%rbx, %rdi
	.loc 1 889 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 1 841 0
	jmp	qemu_aio_release
.L907:
	.loc 1 879 0
	testl	$511, %edi 
	je	.L910
	.loc 1 880 0
	movl	$-5, %r14d
.L891:
	.loc 1 815 0
	movq	16(%rbx), %rdi
	movl	%r14d, %esi
	.loc 1 840 0
	call	*8(%rbx)
	.loc 1 889 0
	addq	$16, %rsp
	.loc 1 841 0
	movq	%rbx, %rdi
	.loc 1 889 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	.loc 1 841 0
	jmp	qemu_aio_release
.L910:
	.loc 1 883 0
	shrq	$9, %rdi
	movslq	%ebp,%rsi
	movq	40(%rbx), %rdx
	leaq	(%rdi,%rsi), %rsi
	movq	(%r12), %rdi
	movq	%rbx, %r9
	movl	$qcow_aio_read_cb, %r8d
	movl	%r10d, %ecx
	jmp	.L916
.LFE113:
	.size	qcow_aio_read_cb, .-qcow_aio_read_cb
	.p2align 4,,15
	.type	qcow_aio_read, @function
qcow_aio_read:
.LFB115:
	.loc 1 912 0
	pushq	%rbx
.LCFI162:
	.loc 1 915 0
	call	qcow_aio_setup
	movq	%rax, %rbx
	.loc 1 917 0
	xorl	%eax, %eax
	.loc 1 916 0
	testq	%rbx, %rbx
	je	.L921
	.loc 1 919 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	qcow_aio_read_cb
	.loc 1 920 0
	movq	%rbx, %rax
.L921:
	.loc 1 921 0
	popq	%rbx
	ret
.LFE115:
	.size	qcow_aio_read, .-qcow_aio_read
	.p2align 4,,15
	.type	qcow_is_allocated, @function
qcow_is_allocated:
.LFB107:
	.loc 1 635 0
	movq	%rbx, -32(%rsp)
.LCFI163:
	movq	%r12, -24(%rsp)
.LCFI164:
	movq	%rsi, %rbx
	movq	%r13, -16(%rsp)
.LCFI165:
	movq	%r14, -8(%rsp)
.LCFI166:
	subq	$40, %rsp
.LCFI167:
	.loc 1 636 0
	movq	56(%rdi), %r12
	.loc 1 635 0
	movl	%edx, %r13d
	movq	%rcx, %r14
	.loc 1 640 0
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	salq	$9, %rsi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	call	get_cluster_offset
	.loc 1 641 0
	movl	16(%r12), %edx
	.loc 1 647 0
	movq	16(%rsp), %r12
	.loc 1 641 0
	leal	-1(%rdx), %ecx
	andl	%ebx, %ecx
	.loc 1 647 0
	movq	8(%rsp), %rbx
	.loc 1 642 0
	subl	%ecx, %edx
	.loc 1 644 0
	cmpl	%r13d, %edx
	cmovg	%r13d, %edx
	.loc 1 646 0
	testq	%rax, %rax
	.loc 1 647 0
	movq	24(%rsp), %r13
	.loc 1 645 0
	movl	%edx, (%r14)
	.loc 1 647 0
	movq	32(%rsp), %r14
	.loc 1 646 0
	setne	%al
	movzbl	%al, %eax
	.loc 1 647 0
	addq	$40, %rsp
	ret
.LFE107:
	.size	qcow_is_allocated, .-qcow_is_allocated
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
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI0-.LFB138
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
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI1-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI15-.LFB98
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI15
	.byte	0xe
	.uleb128 0xd0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI22-.LFB109
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI27-.LCFI22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI28-.LFB110
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
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI30-.LFB114
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI33-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI36-.LFB119
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI37-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.byte	0x4
	.long	.LCFI44-.LFB131
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI50-.LFB132
	.byte	0x83
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI54-.LCFI50
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI55-.LFB136
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI61-.LCFI60
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
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI64-.LFB139
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI67-.LFB140
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI68-.LFB141
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI73-.LFB146
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI79-.LCFI78
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
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI81-.LFB147
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI86-.LFB126
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x90
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI94-.LFB142
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI96-.LCFI94
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI97-.LFB129
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI101-.LCFI100
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
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI105-.LFB135
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI108-.LCFI105
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI109-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI115-.LCFI114
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
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI117-.LFB134
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI117
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI121-.LFB133
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI129-.LFB106
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI131-.LCFI129
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI134-.LCFI131
	.byte	0xe
	.uleb128 0x70
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI135-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI141-.LCFI140
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI142-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI148-.LCFI147
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
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI150-.LFB116
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI154-.LCFI150
	.byte	0xe
	.uleb128 0x40
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI155-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI156-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI160-.LCFI159
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
	.long	.LCFI161-.LCFI160
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI162-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI164-.LFB107
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI164
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE80:
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
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI0-.LFB138
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
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.byte	0x4
	.long	.LCFI1-.LFB127
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
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
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
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
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI15-.LFB98
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI15
	.byte	0xe
	.uleb128 0xd0
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI22-.LFB109
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI27-.LCFI22
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
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI28-.LFB110
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
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI30-.LFB114
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI33-.LFB118
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI36-.LFB119
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI37-.LFB121
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0xe0
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.byte	0x4
	.long	.LCFI44-.LFB131
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x28
	.byte	0x86
	.uleb128 0x5
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI50-.LFB132
	.byte	0x83
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI54-.LCFI50
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI55-.LFB136
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI61-.LCFI60
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
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI64-.LFB139
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI67-.LFB140
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI68-.LFB141
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI73-.LFB146
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI79-.LCFI78
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
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI81-.LFB147
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI86-.LFB126
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x90
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
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI94-.LFB142
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI96-.LCFI94
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI97-.LFB129
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI101-.LCFI100
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
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0xb0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI105-.LFB135
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI108-.LCFI105
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI109-.LFB105
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI115-.LCFI114
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
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI117-.LFB134
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI117
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI121-.LFB133
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x90
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE65:
.LSFDE67:
	.long	.LEFDE67-.LASFDE67
.LASFDE67:
	.long	.LASFDE67-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI129-.LFB106
	.byte	0x8d
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI131-.LCFI129
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI134-.LCFI131
	.byte	0xe
	.uleb128 0x70
	.byte	0x8c
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE67:
.LSFDE69:
	.long	.LEFDE69-.LASFDE69
.LASFDE69:
	.long	.LASFDE69-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI135-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI141-.LCFI140
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
.LEFDE69:
.LSFDE71:
	.long	.LEFDE71-.LASFDE71
.LASFDE71:
	.long	.LASFDE71-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI142-.LFB101
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI148-.LCFI147
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
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE71:
.LSFDE73:
	.long	.LEFDE73-.LASFDE73
.LASFDE73:
	.long	.LASFDE73-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI150-.LFB116
	.byte	0x8d
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI154-.LCFI150
	.byte	0xe
	.uleb128 0x40
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.align 8
.LEFDE73:
.LSFDE75:
	.long	.LEFDE75-.LASFDE75
.LASFDE75:
	.long	.LASFDE75-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI155-.LFB117
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE75:
.LSFDE77:
	.long	.LEFDE77-.LASFDE77
.LASFDE77:
	.long	.LASFDE77-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI156-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI160-.LCFI159
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
	.long	.LCFI161-.LCFI160
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE77:
.LSFDE79:
	.long	.LEFDE79-.LASFDE79
.LASFDE79:
	.long	.LASFDE79-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI162-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE79:
.LSFDE81:
	.long	.LEFDE81-.LASFDE81
.LASFDE81:
	.long	.LASFDE81-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI164-.LFB107
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI164
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE81:
	.file 3 "/usr/include/stdint.h"
	.file 4 "qemu-common.h"
	.file 5 "block_int.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "block.h"
	.file 8 "aes.h"
	.file 9 "/usr/include/zlib.h"
	.file 10 "/usr/include/zconf.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x4842
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF356
	.byte	0x1
	.long	.LASF357
	.long	.LASF358
	.uleb128 0x2
	.long	.LASF9
	.byte	0xb
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
	.byte	0xe
	.byte	0x8d
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xe
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
	.byte	0xc
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF14
	.byte	0xd
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF15
	.byte	0xd
	.value	0x115
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0xd
	.value	0x116
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0xd
	.value	0x117
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0xd
	.value	0x118
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF19
	.byte	0xd
	.value	0x119
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF20
	.byte	0xd
	.value	0x11a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF21
	.byte	0xd
	.value	0x11b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF22
	.byte	0xd
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF23
	.byte	0xd
	.value	0x11e
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF24
	.byte	0xd
	.value	0x11f
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF25
	.byte	0xd
	.value	0x120
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF26
	.byte	0xd
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF27
	.byte	0xd
	.value	0x124
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF28
	.byte	0xd
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF29
	.byte	0xd
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF30
	.byte	0xd
	.value	0x12c
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF31
	.byte	0xd
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF32
	.byte	0xd
	.value	0x131
	.long	0x88
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF33
	.byte	0xd
	.value	0x132
	.long	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF34
	.byte	0xd
	.value	0x136
	.long	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF35
	.byte	0xd
	.value	0x13f
	.long	0xa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF36
	.byte	0xd
	.value	0x148
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0xd
	.value	0x149
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF38
	.byte	0xd
	.value	0x14a
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF39
	.byte	0xd
	.value	0x14b
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF41
	.byte	0xd
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF42
	.byte	0xd
	.value	0x150
	.long	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xd
	.byte	0xb4
	.uleb128 0xa
	.long	0x2e0
	.long	.LASF45
	.byte	0x18
	.byte	0xd
	.byte	0xba
	.uleb128 0xd
	.long	.LASF46
	.byte	0xd
	.byte	0xbb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0xd
	.byte	0xbc
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0xd
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
	.byte	0x32
	.long	0x68
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
	.long	0x312
	.uleb128 0x2
	.long	.LASF53
	.byte	0x4
	.byte	0x6e
	.long	0x360
	.uleb128 0x10
	.long	0x514
	.long	.LASF53
	.value	0xac0
	.byte	0x4
	.byte	0x6e
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x5d
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x5f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x60
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x61
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF58
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
	.long	.LASF59
	.byte	0x5
	.byte	0x65
	.long	0xabf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF60
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
	.long	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x69
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF62
	.byte	0x5
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF63
	.byte	0x5
	.byte	0x6c
	.long	0xacb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.long	.LASF64
	.byte	0x5
	.byte	0x6e
	.long	0xadc
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.byte	0x6f
	.long	0xadc
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x71
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0xd
	.long	.LASF67
	.byte	0x5
	.byte	0x72
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0xd
	.long	.LASF68
	.byte	0x5
	.byte	0x74
	.long	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.long	.LASF69
	.byte	0x5
	.byte	0x77
	.long	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0xd
	.long	.LASF70
	.byte	0x5
	.byte	0x7a
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0xd
	.long	.LASF71
	.byte	0x5
	.byte	0x7b
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.long	.LASF72
	.byte	0x5
	.byte	0x7c
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.long	.LASF73
	.byte	0x5
	.byte	0x7d
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xd
	.long	.LASF74
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.long	.LASF75
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.long	.LASF76
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.long	.LASF77
	.byte	0x5
	.byte	0x81
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xd
	.long	.LASF78
	.byte	0x5
	.byte	0x82
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xd
	.long	.LASF79
	.byte	0x5
	.byte	0x83
	.long	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0xd
	.long	.LASF80
	.byte	0x5
	.byte	0x84
	.long	0x885
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x7
	.byte	0x5
	.long	0x51f
	.uleb128 0x10
	.long	0x71b
	.long	.LASF81
	.value	0x110
	.byte	0x7
	.byte	0x5
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.byte	0x22
	.long	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF83
	.byte	0x5
	.byte	0x23
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x5
	.byte	0x24
	.long	0x865
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF85
	.byte	0x5
	.byte	0x25
	.long	0x88b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF86
	.byte	0x5
	.byte	0x27
	.long	0x8b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF87
	.byte	0x5
	.byte	0x29
	.long	0x8db
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF88
	.byte	0x5
	.byte	0x2a
	.long	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF89
	.byte	0x5
	.byte	0x2c
	.long	0x912
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF90
	.byte	0x5
	.byte	0x2d
	.long	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF91
	.byte	0x5
	.byte	0x2f
	.long	0x937
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF92
	.byte	0x5
	.byte	0x30
	.long	0x952
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF93
	.byte	0x5
	.byte	0x31
	.long	0x968
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF94
	.byte	0x5
	.byte	0x35
	.long	0x9a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF95
	.byte	0x5
	.byte	0x38
	.long	0x9d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF96
	.byte	0x5
	.byte	0x39
	.long	0x9e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF97
	.byte	0x5
	.byte	0x3a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF98
	.byte	0x5
	.byte	0x3c
	.long	0x6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF99
	.byte	0x5
	.byte	0x3e
	.long	0x8b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF100
	.byte	0x5
	.byte	0x40
	.long	0x8db
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF101
	.byte	0x5
	.byte	0x41
	.long	0x9ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF102
	.byte	0x5
	.byte	0x42
	.long	0xa15
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF103
	.byte	0x5
	.byte	0x44
	.long	0x8db
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF104
	.byte	0x5
	.byte	0x47
	.long	0xa36
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x5
	.byte	0x49
	.long	0x952
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF106
	.byte	0x5
	.byte	0x4a
	.long	0x952
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x5
	.byte	0x4c
	.long	0xa57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.long	.LASF108
	.byte	0x5
	.byte	0x4d
	.long	0xa78
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF109
	.byte	0x5
	.byte	0x50
	.long	0x968
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.long	.LASF110
	.byte	0x5
	.byte	0x51
	.long	0x968
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.long	.LASF111
	.byte	0x5
	.byte	0x52
	.long	0xa93
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.long	.LASF112
	.byte	0x5
	.byte	0x53
	.long	0xa93
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.long	.LASF113
	.byte	0x5
	.byte	0x56
	.long	0xab3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.long	.LASF114
	.byte	0x5
	.byte	0x58
	.long	0x997
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.long	.LASF80
	.byte	0x5
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
	.byte	0x7
	.byte	0x14
	.uleb128 0xd
	.long	.LASF116
	.byte	0x7
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF117
	.byte	0x7
	.byte	0x18
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF115
	.byte	0x7
	.byte	0x19
	.long	0x71b
	.uleb128 0x10
	.long	0x7b6
	.long	.LASF118
	.value	0x198
	.byte	0x7
	.byte	0x1b
	.uleb128 0xd
	.long	.LASF119
	.byte	0x7
	.byte	0x1c
	.long	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF120
	.byte	0x7
	.byte	0x1f
	.long	0x7c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF121
	.byte	0x7
	.byte	0x20
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.long	.LASF122
	.byte	0x7
	.byte	0x21
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.long	.LASF123
	.byte	0x7
	.byte	0x22
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.long	.LASF124
	.byte	0x7
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
	.byte	0x7
	.byte	0x24
	.long	0x74f
	.uleb128 0x2
	.long	.LASF125
	.byte	0x7
	.byte	0x50
	.long	0x7ec
	.uleb128 0xa
	.long	0x82f
	.long	.LASF125
	.byte	0x20
	.byte	0x7
	.byte	0x50
	.uleb128 0x11
	.string	"bs"
	.byte	0x5
	.byte	0x88
	.long	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"cb"
	.byte	0x5
	.byte	0x89
	.long	0x99d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.byte	0x8a
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF80
	.byte	0x5
	.byte	0x8b
	.long	0x997
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.long	.LASF126
	.byte	0x7
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
	.long	0xb4
	.uleb128 0xf
	.long	0x8b0
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x312
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
	.long	0xb4
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
	.long	0xb4
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
	.long	0xb4
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
	.long	0xb4
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
	.long	0xb4
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
	.long	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x9ea
	.uleb128 0x12
	.long	0xa15
	.byte	0x1
	.long	0xb4
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
	.long	0x312
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
	.byte	0xa
	.value	0x148
	.long	0x81
	.uleb128 0x14
	.long	.LASF128
	.byte	0xa
	.value	0x14a
	.long	0x46
	.uleb128 0x14
	.long	.LASF129
	.byte	0xa
	.value	0x14b
	.long	0x38
	.uleb128 0x14
	.long	.LASF130
	.byte	0xa
	.value	0x151
	.long	0xaed
	.uleb128 0x14
	.long	.LASF131
	.byte	0xa
	.value	0x15a
	.long	0xac
	.uleb128 0x2
	.long	.LASF132
	.byte	0x9
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
	.byte	0x9
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
	.byte	0x9
	.byte	0x55
	.uleb128 0xd
	.long	.LASF135
	.byte	0x9
	.byte	0x56
	.long	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF136
	.byte	0x9
	.byte	0x57
	.long	0xaf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF137
	.byte	0x9
	.byte	0x58
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF138
	.byte	0x9
	.byte	0x5a
	.long	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF139
	.byte	0x9
	.byte	0x5b
	.long	0xaf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF140
	.byte	0x9
	.byte	0x5c
	.long	0xb05
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
	.long	.LASF141
	.byte	0x9
	.byte	0x5f
	.long	0xc69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF142
	.byte	0x9
	.byte	0x61
	.long	0xb29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF143
	.byte	0x9
	.byte	0x62
	.long	0xb54
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF61
	.byte	0x9
	.byte	0x63
	.long	0xb1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF144
	.byte	0x9
	.byte	0x65
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF145
	.byte	0x9
	.byte	0x66
	.long	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF146
	.byte	0x9
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
	.byte	0x9
	.byte	0x53
	.uleb128 0xb
	.long	.LASF148
	.byte	0x9
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
	.byte	0x9
	.byte	0x68
	.long	0xb76
	.uleb128 0x5
	.byte	0x8
	.long	0xc6f
	.uleb128 0xa
	.long	0xcaa
	.long	.LASF150
	.byte	0xf4
	.byte	0x8
	.byte	0x7
	.uleb128 0xd
	.long	.LASF151
	.byte	0x8
	.byte	0x8
	.long	0xcaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF152
	.byte	0x8
	.byte	0x9
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x8
	.long	0xcba
	.long	0x328
	.uleb128 0x9
	.long	0x61
	.byte	0x3b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF153
	.byte	0x8
	.byte	0xb
	.long	0xc80
	.uleb128 0xa
	.long	0xd88
	.long	.LASF154
	.byte	0x48
	.byte	0x1
	.byte	0x42
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1
	.byte	0x43
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x1
	.byte	0x44
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF157
	.byte	0x1
	.byte	0x45
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF158
	.byte	0x1
	.byte	0x46
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x47
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF160
	.byte	0x1
	.byte	0x48
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x49
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x4a
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x4b
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF164
	.byte	0x1
	.byte	0x4c
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF165
	.byte	0x1
	.byte	0x4d
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF166
	.byte	0x1
	.byte	0x4e
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.long	.LASF167
	.byte	0x1
	.byte	0x4f
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.long	.LASF154
	.byte	0x1
	.byte	0x50
	.long	0xcc5
	.uleb128 0xa
	.long	0xe1e
	.long	.LASF168
	.byte	0x28
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x54
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x56
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF169
	.byte	0x1
	.byte	0x57
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF170
	.byte	0x1
	.byte	0x58
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0x5a
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF123
	.byte	0x1
	.byte	0x5b
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x5d
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF121
	.byte	0x1
	.byte	0x5f
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF171
	.byte	0x1
	.byte	0x60
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x2
	.long	.LASF168
	.byte	0x1
	.byte	0x64
	.long	0xd93
	.uleb128 0xa
	.long	0xea6
	.long	.LASF172
	.byte	0x38
	.byte	0x1
	.byte	0x68
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x69
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x6a
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF119
	.byte	0x1
	.byte	0x6b
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF120
	.byte	0x1
	.byte	0x6c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF121
	.byte	0x1
	.byte	0x6d
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF122
	.byte	0x1
	.byte	0x6e
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF123
	.byte	0x1
	.byte	0x6f
	.long	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF124
	.byte	0x1
	.byte	0x70
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF172
	.byte	0x1
	.byte	0x71
	.long	0xe29
	.uleb128 0x10
	.long	0x10ad
	.long	.LASF173
	.value	0x368
	.byte	0x1
	.byte	0x73
	.uleb128 0x11
	.string	"hd"
	.byte	0x1
	.byte	0x74
	.long	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF159
	.byte	0x1
	.byte	0x75
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF116
	.byte	0x1
	.byte	0x76
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF174
	.byte	0x1
	.byte	0x77
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF175
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.long	.LASF176
	.byte	0x1
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF162
	.byte	0x1
	.byte	0x7a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.long	.LASF177
	.byte	0x1
	.byte	0x7b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF178
	.byte	0x1
	.byte	0x7c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF179
	.byte	0x1
	.byte	0x7d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF180
	.byte	0x1
	.byte	0x7e
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF163
	.byte	0x1
	.byte	0x7f
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF181
	.byte	0x1
	.byte	0x80
	.long	0x10ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF182
	.byte	0x1
	.byte	0x81
	.long	0x10ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF183
	.byte	0x1
	.byte	0x82
	.long	0x10b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF184
	.byte	0x1
	.byte	0x83
	.long	0x10c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.long	.LASF185
	.byte	0x1
	.byte	0x84
	.long	0x8b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.long	.LASF186
	.byte	0x1
	.byte	0x85
	.long	0x8b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.long	.LASF187
	.byte	0x1
	.byte	0x86
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.long	.LASF188
	.byte	0x1
	.byte	0x88
	.long	0x10ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xd
	.long	.LASF164
	.byte	0x1
	.byte	0x89
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xd
	.long	.LASF189
	.byte	0x1
	.byte	0x8a
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xd
	.long	.LASF190
	.byte	0x1
	.byte	0x8b
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xd
	.long	.LASF191
	.byte	0x1
	.byte	0x8c
	.long	0x10d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xd
	.long	.LASF192
	.byte	0x1
	.byte	0x8d
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF193
	.byte	0x1
	.byte	0x8e
	.long	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xd
	.long	.LASF161
	.byte	0x1
	.byte	0x90
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF194
	.byte	0x1
	.byte	0x91
	.long	0x328
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xd
	.long	.LASF195
	.byte	0x1
	.byte	0x92
	.long	0xcba
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xd
	.long	.LASF196
	.byte	0x1
	.byte	0x93
	.long	0xcba
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.uleb128 0xd
	.long	.LASF167
	.byte	0x1
	.byte	0x94
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x350
	.uleb128 0xd
	.long	.LASF197
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x358
	.uleb128 0xd
	.long	.LASF166
	.byte	0x1
	.byte	0x96
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x35c
	.uleb128 0xd
	.long	.LASF198
	.byte	0x1
	.byte	0x97
	.long	0x10d9
	.byte	0x3
	.byte	0x23
	.uleb128 0x360
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x333
	.uleb128 0x8
	.long	0x10c3
	.long	0x333
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x10d3
	.long	0x328
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x31d
	.uleb128 0x5
	.byte	0x8
	.long	0xea6
	.uleb128 0x2
	.long	.LASF173
	.byte	0x1
	.byte	0x98
	.long	0xeb1
	.uleb128 0x15
	.long	0x116e
	.long	.LASF199
	.byte	0x50
	.byte	0x1
	.value	0x31a
	.uleb128 0xb
	.long	.LASF200
	.byte	0x1
	.value	0x31b
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF201
	.byte	0x1
	.value	0x31c
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.value	0x31d
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF202
	.byte	0x1
	.value	0x31e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x31f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF203
	.byte	0x1
	.value	0x320
	.long	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF186
	.byte	0x1
	.value	0x321
	.long	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF204
	.byte	0x1
	.value	0x322
	.long	0x997
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x14
	.long	.LASF199
	.byte	0x1
	.value	0x323
	.long	0x10ea
	.uleb128 0x15
	.long	0x11f1
	.long	.LASF205
	.byte	0x30
	.byte	0x1
	.value	0x3fe
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.value	0x3ff
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF159
	.byte	0x1
	.value	0x400
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF206
	.byte	0x1
	.value	0x401
	.long	0x10d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF188
	.byte	0x1
	.value	0x402
	.long	0x10ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF163
	.byte	0x1
	.value	0x403
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF164
	.byte	0x1
	.value	0x404
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF207
	.byte	0x1
	.value	0x405
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x14
	.long	.LASF205
	.byte	0x1
	.value	0x406
	.long	0x117a
	.uleb128 0x17
	.long	0x1302
	.long	.LASF209
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0x3f
	.quad	.LFB97
	.quad	.LFE97
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0xb0
	.long	0x34a
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF208
	.byte	0x1
	.byte	0xb0
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0xb0
	.long	0x6f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.long	.LASF212
	.byte	0x1
	.byte	0xb2
	.long	0x1302
	.uleb128 0x1b
	.long	0x12a9
	.long	0x130d
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x12ca
	.long	0x130d
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1308
	.uleb128 0x6
	.long	0xd88
	.uleb128 0x21
	.long	0x1328
	.long	.LASF210
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x328
	.byte	0x0
	.uleb128 0x21
	.long	0x135b
	.long	.LASF211
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
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
	.uleb128 0x25
	.long	0x1394
	.long	.LASF213
	.byte	0x1
	.value	0x6dc
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x6db
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x6dd
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10df
	.uleb128 0x25
	.long	0x13df
	.long	.LASF214
	.byte	0x1
	.value	0x556
	.byte	0x1
	.quad	.LFB127
	.quad	.LFE127
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x555
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x557
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x558
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x28
	.long	0x1453
	.long	.LASF215
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.long	0x3f
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x12e
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x12e
	.long	0x6f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x130
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF216
	.byte	0x1
	.value	0x131
	.long	0x1453
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x132
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x132
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x8
	.long	0x1463
	.long	0x312
	.uleb128 0x9
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x25
	.long	0x151f
	.long	.LASF217
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x15b
	.long	0x1394
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x15b
	.long	0xb4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF218
	.byte	0x1
	.value	0x15c
	.long	0x8b0
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x1
	.value	0x15c
	.long	0x34a
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.string	"enc"
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x15e
	.long	0x151f
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2b
	.long	0x1503
	.byte	0x10
	.byte	0x1
	.value	0x163
	.uleb128 0x2c
	.string	"ll"
	.byte	0x1
	.value	0x161
	.long	0x152a
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x162
	.long	0x1453
	.byte	0x0
	.uleb128 0x29
	.long	.LASF220
	.byte	0x1
	.value	0x163
	.long	0x14e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x164
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1525
	.uleb128 0x6
	.long	0xcba
	.uleb128 0x8
	.long	0x153a
	.long	0x333
	.uleb128 0x9
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x28
	.long	0x1578
	.long	.LASF221
	.byte	0x1
	.value	0x1a6
	.byte	0x1
	.long	0xb4
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x1
	.value	0x1a5
	.long	0xb4
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x1a5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x17
	.long	0x1f3a
	.long	.LASF223
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x3f
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"bs"
	.byte	0x1
	.byte	0xbc
	.long	0x885
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0xbc
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	.LASF224
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.byte	0xbe
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	.LASF225
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2e
	.long	.LASF226
	.byte	0x1
	.byte	0xc0
	.long	0xd88
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x123
	.quad	.L48
	.uleb128 0x1b
	.long	0x1656
	.long	0x1f3a
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x1e
	.long	0x1339
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1690
	.long	0x1f57
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x1e
	.long	0x1f7f
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x16b2
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x16d4
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.uleb128 0x1b
	.long	0x170e
	.long	0x1f3a
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB33
	.quad	.LBE33
	.uleb128 0x1e
	.long	0x1339
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1748
	.long	0x1f3a
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x1e
	.long	0x1339
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1782
	.long	0x1f3a
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x1e
	.long	0x1339
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x17a4
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	0x17c6
	.quad	.LBB49
	.quad	.LBE49
	.uleb128 0x31
	.long	0x1343
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.uleb128 0x1b
	.long	0x1800
	.long	0x1f57
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x1e
	.long	0x1f7f
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x1822
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x31
	.long	0x1343
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.uleb128 0x30
	.long	0x1844
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x189c
	.long	0x1f3a
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x18f4
	.long	0x1f57
	.quad	.LBB70
	.quad	.LBE70
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB72
	.quad	.LBE72
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x194c
	.long	0x1f3a
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB79
	.quad	.LBE79
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x19a4
	.long	0x1f57
	.quad	.LBB80
	.quad	.LBE80
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB82
	.quad	.LBE82
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB84
	.quad	.LBE84
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x19fc
	.long	0x1f3a
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB87
	.quad	.LBE87
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB89
	.quad	.LBE89
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1a54
	.long	0x1f57
	.quad	.LBB90
	.quad	.LBE90
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB92
	.quad	.LBE92
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB94
	.quad	.LBE94
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1aac
	.long	0x1f3a
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x1e
	.long	0x1f47
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB99
	.quad	.LBE99
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x31
	.long	0x134e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1acd
	.long	0x1f57
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x1c
	.long	0x1f64
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x1b0a
	.long	0x1f6e
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB111
	.quad	.LBE111
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1b58
	.long	0x1fa1
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x1e
	.long	0x1fb3
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x31
	.long	0x1fbe
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	0x1fc8
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x1fd4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	0x1fe0
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.long	0x1fea
	.quad	.L122
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1edf
	.long	0x1ff3
	.quad	.LBB114
	.quad	.LBE114
	.uleb128 0x1e
	.long	0x2005
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.long	0x2010
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	0x201a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	0x2024
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	0x202f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	0x2039
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	0x2045
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	0x2051
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.long	0x205d
	.uleb128 0x33
	.long	0x2069
	.quad	.L140
	.uleb128 0x1b
	.long	0x1c19
	.long	0x2072
	.quad	.LBB116
	.quad	.LBE116
	.uleb128 0x1c
	.long	0x2083
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB118
	.quad	.LBE118
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB120
	.quad	.LBE120
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1c71
	.long	0x130d
	.quad	.LBB121
	.quad	.LBE121
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB123
	.quad	.LBE123
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB125
	.quad	.LBE125
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1cc9
	.long	0x130d
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB130
	.quad	.LBE130
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d21
	.long	0x130d
	.quad	.LBB131
	.quad	.LBE131
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB133
	.quad	.LBE133
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB135
	.quad	.LBE135
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d79
	.long	0x130d
	.quad	.LBB136
	.quad	.LBE136
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB138
	.quad	.LBE138
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB140
	.quad	.LBE140
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1dd1
	.long	0x2072
	.quad	.LBB141
	.quad	.LBE141
	.uleb128 0x1c
	.long	0x2083
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB143
	.quad	.LBE143
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB145
	.quad	.LBE145
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e29
	.long	0x208d
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x1c
	.long	0x209e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB148
	.quad	.LBE148
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB150
	.quad	.LBE150
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e4a
	.long	0x130d
	.quad	.LBB151
	.quad	.LBE151
	.uleb128 0x1c
	.long	0x131e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x1e6b
	.long	0x208d
	.quad	.LBB152
	.quad	.LBE152
	.uleb128 0x1c
	.long	0x209e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x1ea6
	.long	0x1328
	.quad	.LBB155
	.quad	.LBE155
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB157
	.quad	.LBE157
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB160
	.quad	.LBE160
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB162
	.quad	.LBE162
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1f00
	.long	0x1f57
	.quad	.LBB165
	.quad	.LBE165
	.uleb128 0x1c
	.long	0x1f64
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB168
	.quad	.LBE168
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB170
	.quad	.LBE170
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x1f51
	.long	.LASF227
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.byte	0x78
	.long	0x1f51
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x328
	.uleb128 0x34
	.long	0x1f6e
	.long	.LASF228
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.byte	0x79
	.long	0x10ad
	.byte	0x0
	.uleb128 0x21
	.long	0x1fa1
	.long	.LASF229
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x333
	.byte	0x3
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.byte	0x38
	.long	0x333
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
	.uleb128 0x35
	.long	0x1ff3
	.long	.LASF230
	.byte	0x1
	.value	0x6c3
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x6c2
	.long	0x885
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x6c4
	.long	0x1394
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.value	0x6c5
	.long	0x3f
	.uleb128 0x38
	.long	.LASF231
	.byte	0x1
	.value	0x6c5
	.long	0x3f
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x6c5
	.long	0x3f
	.uleb128 0x39
	.long	.LASF232
	.byte	0x1
	.value	0x6d7
	.byte	0x0
	.uleb128 0x35
	.long	0x2072
	.long	.LASF233
	.byte	0x1
	.value	0x564
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x563
	.long	0x885
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x565
	.long	0x1394
	.uleb128 0x37
	.string	"h"
	.byte	0x1
	.value	0x566
	.long	0xe1e
	.uleb128 0x37
	.string	"sn"
	.byte	0x1
	.value	0x567
	.long	0x10d9
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x568
	.long	0x3f
	.uleb128 0x38
	.long	.LASF169
	.byte	0x1
	.value	0x568
	.long	0x3f
	.uleb128 0x38
	.long	.LASF170
	.byte	0x1
	.value	0x568
	.long	0x3f
	.uleb128 0x38
	.long	.LASF222
	.byte	0x1
	.value	0x569
	.long	0xb4
	.uleb128 0x38
	.long	.LASF171
	.byte	0x1
	.value	0x56a
	.long	0x328
	.uleb128 0x39
	.long	.LASF232
	.byte	0x1
	.value	0x595
	.byte	0x0
	.uleb128 0x21
	.long	0x208d
	.long	.LASF234
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x333
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x333
	.byte	0x0
	.uleb128 0x21
	.long	0x20a8
	.long	.LASF235
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x77
	.long	0x31d
	.byte	0x0
	.uleb128 0x21
	.long	0x20db
	.long	.LASF236
	.byte	0x2
	.byte	0x2f
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.byte	0x2e
	.long	0x31d
	.uleb128 0x23
	.uleb128 0x24
	.string	"__v"
	.byte	0x2
	.byte	0x30
	.long	0x68
	.uleb128 0x24
	.string	"__x"
	.byte	0x2
	.byte	0x30
	.long	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x21b3
	.long	.LASF237
	.byte	0x1
	.value	0x2a5
	.byte	0x1
	.long	0x3f
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2a4
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF203
	.byte	0x1
	.value	0x2a4
	.long	0x333
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x2a6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF238
	.byte	0x1
	.value	0x2a6
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF239
	.byte	0x1
	.value	0x2a6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	.LASF240
	.byte	0x1
	.value	0x2a6
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF241
	.byte	0x1
	.value	0x2a7
	.long	0x333
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.long	0x21b3
	.quad	.LBB173
	.quad	.LBE173
	.uleb128 0x1c
	.long	0x21c5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	0x21d1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	0x21dd
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	0x21e9
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x31
	.long	0x21f5
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	0x2201
	.byte	0x1
	.byte	0x5e
	.uleb128 0x31
	.long	0x220d
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	0x2219
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x2226
	.long	.LASF242
	.byte	0x1
	.value	0x28b
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF218
	.byte	0x1
	.value	0x289
	.long	0x8b0
	.uleb128 0x3a
	.long	.LASF243
	.byte	0x1
	.value	0x289
	.long	0x3f
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x28a
	.long	0x34a
	.uleb128 0x3a
	.long	.LASF208
	.byte	0x1
	.value	0x28a
	.long	0x3f
	.uleb128 0x38
	.long	.LASF244
	.byte	0x1
	.value	0x28c
	.long	0xc6f
	.uleb128 0x38
	.long	.LASF245
	.byte	0x1
	.value	0x28c
	.long	0xc7a
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.value	0x28d
	.long	0x3f
	.uleb128 0x38
	.long	.LASF246
	.byte	0x1
	.value	0x28d
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.long	0x228e
	.long	.LASF247
	.byte	0x1
	.value	0x2be
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x2bc
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x2bd
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x2bd
	.long	0x8b0
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x2bd
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.string	"n1"
	.byte	0x1
	.value	0x2bf
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x28
	.long	0x2312
	.long	.LASF248
	.byte	0x1
	.value	0x37e
	.byte	0x1
	.long	0x2312
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x37b
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x37c
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x37c
	.long	0x8b0
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x37c
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.string	"cb"
	.byte	0x1
	.value	0x37d
	.long	0x99d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF61
	.byte	0x1
	.value	0x37d
	.long	0xac
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.string	"acb"
	.byte	0x1
	.value	0x37f
	.long	0x2312
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x116e
	.uleb128 0x25
	.long	0x2354
	.long	.LASF249
	.byte	0x1
	.value	0x3eb
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF250
	.byte	0x1
	.value	0x3ea
	.long	0x997
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"acb"
	.byte	0x1
	.value	0x3ec
	.long	0x2312
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x238d
	.long	.LASF251
	.byte	0x1
	.value	0x3f3
	.byte	0x1
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x3f2
	.long	0x885
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x3f4
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x24c1
	.long	.LASF252
	.byte	0x1
	.value	0x40a
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x408
	.long	0x24c1
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x1
	.value	0x409
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.value	0x409
	.long	0xb4
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.long	.LASF253
	.byte	0x1
	.value	0x40b
	.long	0x3f
	.uleb128 0x38
	.long	.LASF254
	.byte	0x1
	.value	0x40c
	.long	0xb4
	.uleb128 0x29
	.long	.LASF255
	.byte	0x1
	.value	0x40c
	.long	0xb4
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x40c
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x40d
	.long	0x10d3
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	0x246c
	.long	0x208d
	.quad	.LBB182
	.quad	.LBE182
	.uleb128 0x1c
	.long	0x209e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB184
	.quad	.LBE184
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB186
	.quad	.LBE186
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x24c7
	.quad	.LBB187
	.quad	.LBE187
	.uleb128 0x1c
	.long	0x24d8
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB189
	.quad	.LBE189
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x11f1
	.uleb128 0x21
	.long	0x24e2
	.long	.LASF256
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.long	0x31d
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x77
	.long	0x31d
	.byte	0x0
	.uleb128 0x28
	.long	0x27f6
	.long	.LASF257
	.byte	0x1
	.value	0x41c
	.byte	0x1
	.long	0x3f
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF64
	.byte	0x1
	.value	0x41a
	.long	0x6f
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x1
	.value	0x41a
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.value	0x41b
	.long	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF224
	.byte	0x1
	.value	0x41b
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"fd"
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF259
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x29
	.long	.LASF260
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF162
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF225
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.long	.LASF175
	.byte	0x1
	.value	0x41d
	.long	0x3f
	.uleb128 0x29
	.long	.LASF226
	.byte	0x1
	.value	0x41e
	.long	0xd88
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x41f
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x41f
	.long	0x333
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x420
	.long	0x11f1
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x420
	.long	0x24c1
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x46f
	.quad	.L284
	.uleb128 0x1b
	.long	0x2612
	.long	0x27f6
	.quad	.LBB192
	.quad	.LBE192
	.uleb128 0x1e
	.long	0x2807
	.byte	0x0
	.uleb128 0x1b
	.long	0x264d
	.long	0x1f6e
	.quad	.LBB196
	.quad	.LBE196
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB198
	.quad	.LBE198
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x26a5
	.long	0x2811
	.quad	.LBB199
	.quad	.LBE199
	.uleb128 0x1e
	.long	0x2822
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB201
	.quad	.LBE201
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x31
	.long	0x1343
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x26fd
	.long	0x27f6
	.quad	.LBB204
	.quad	.LBE204
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB206
	.quad	.LBE206
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB208
	.quad	.LBE208
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2755
	.long	0x2811
	.quad	.LBB209
	.quad	.LBE209
	.uleb128 0x1e
	.long	0x2822
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB211
	.quad	.LBE211
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB213
	.quad	.LBE213
	.uleb128 0x31
	.long	0x1343
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x27a1
	.long	0x27f6
	.quad	.LBB214
	.quad	.LBE214
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB216
	.quad	.LBE216
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x32
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x27f6
	.quad	.LBB224
	.quad	.LBE224
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB226
	.quad	.LBE226
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB228
	.quad	.LBE228
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2811
	.long	.LASF261
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.long	0x333
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x79
	.long	0x333
	.byte	0x0
	.uleb128 0x21
	.long	0x282c
	.long	.LASF262
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x328
	.byte	0x3
	.uleb128 0x22
	.string	"v"
	.byte	0x2
	.byte	0x78
	.long	0x328
	.byte	0x0
	.uleb128 0x28
	.long	0x285d
	.long	.LASF263
	.byte	0x1
	.value	0x477
	.byte	0x1
	.long	0x3f
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x476
	.long	0x885
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x25
	.long	0x2896
	.long	.LASF264
	.byte	0x1
	.value	0x4d0
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x4cf
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x4d1
	.long	0x1394
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x28e1
	.long	.LASF265
	.byte	0x1
	.value	0x4d6
	.byte	0x1
	.long	0x3f
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x4d5
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"bdi"
	.byte	0x1
	.value	0x4d5
	.long	0xa72
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x4d7
	.long	0x1394
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x2962
	.long	.LASF266
	.byte	0x1
	.value	0x5f1
	.byte	0x1
	.long	0x3f
	.quad	.LFB131
	.quad	.LFE131
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x5f0
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF119
	.byte	0x1
	.value	0x5f0
	.long	0x6f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x5f2
	.long	0x1394
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x5f3
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.quad	.LBB229
	.quad	.LBE229
	.uleb128 0x38
	.long	.LASF267
	.byte	0x1
	.value	0x5f6
	.long	0x2d
	.uleb128 0x38
	.long	.LASF268
	.byte	0x1
	.value	0x5f6
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x29f1
	.long	.LASF269
	.byte	0x1
	.value	0x5fd
	.byte	0x1
	.long	0x3f
	.quad	.LFB132
	.quad	.LFE132
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x5fc
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF120
	.byte	0x1
	.value	0x5fc
	.long	0x6f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x5fe
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x5ff
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x5ff
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.quad	.LBB230
	.quad	.LBE230
	.uleb128 0x38
	.long	.LASF267
	.byte	0x1
	.value	0x605
	.long	0x2d
	.uleb128 0x38
	.long	.LASF268
	.byte	0x1
	.value	0x605
	.long	0x2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2a81
	.long	.LASF270
	.byte	0x1
	.value	0x6a2
	.byte	0x1
	.long	0x3f
	.quad	.LFB136
	.quad	.LFE136
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x6a0
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF271
	.byte	0x1
	.value	0x6a1
	.long	0xa51
	.byte	0x1
	.byte	0x5f
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x6a3
	.long	0x1394
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF272
	.byte	0x1
	.value	0x6a4
	.long	0xa30
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF273
	.byte	0x1
	.value	0x6a4
	.long	0xa30
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"sn"
	.byte	0x1
	.value	0x6a5
	.long	0x10d9
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x6a6
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x6b9
	.quad	.L334
	.byte	0x0
	.uleb128 0x28
	.long	0x2ada
	.long	.LASF274
	.byte	0x1
	.value	0x6e5
	.byte	0x1
	.long	0x3f
	.quad	.LFB139
	.quad	.LFE139
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x6e3
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x1
	.value	0x6e4
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x6e6
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x6e7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x2ba5
	.long	.LASF275
	.byte	0x1
	.value	0x6f1
	.byte	0x1
	.long	0x3f
	.quad	.LFB140
	.quad	.LFE140
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x6f0
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x1
	.value	0x6f0
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x6f2
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF277
	.byte	0x1
	.value	0x6f3
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LASF278
	.byte	0x1
	.value	0x6f3
	.long	0x3f
	.uleb128 0x29
	.long	.LASF207
	.byte	0x1
	.value	0x6f4
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.long	0x2b6d
	.long	0x208d
	.quad	.LBB231
	.quad	.LBE231
	.uleb128 0x1c
	.long	0x209e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB234
	.quad	.LBE234
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB236
	.quad	.LBE236
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2c1a
	.long	.LASF279
	.byte	0x1
	.value	0x708
	.byte	0x1
	.long	0xb4
	.quad	.LFB141
	.quad	.LFE141
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x707
	.long	0x885
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.value	0x707
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x709
	.long	0x1394
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x70a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF280
	.byte	0x1
	.value	0x70a
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF281
	.byte	0x1
	.value	0x71c
	.quad	.L361
	.byte	0x0
	.uleb128 0x28
	.long	0x2fbf
	.long	.LASF282
	.byte	0x1
	.value	0x7a4
	.byte	0x1
	.long	0x3f
	.quad	.LFB146
	.quad	.LFE146
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x7a1
	.long	0x885
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x1
	.value	0x7a2
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x1
	.value	0x7a3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x7a5
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x7a6
	.long	0xb4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF207
	.byte	0x1
	.value	0x7a6
	.long	0xb4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x7a7
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF277
	.byte	0x1
	.value	0x7a7
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF278
	.byte	0x1
	.value	0x7a7
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x29
	.long	.LASF253
	.byte	0x1
	.value	0x7a7
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF284
	.byte	0x1
	.value	0x7a8
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1b
	.long	0x2e6c
	.long	0x2fbf
	.quad	.LBB237
	.quad	.LBE237
	.uleb128 0x1e
	.long	0x2fd1
	.uleb128 0x1c
	.long	0x2fdc
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x20
	.long	0x2fe8
	.uleb128 0x31
	.long	0x2ff2
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	0x2ffe
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x31
	.long	0x300a
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	0x3016
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	0x3020
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x302c
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	0x3038
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x31
	.long	0x3044
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x31
	.long	0x3050
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x31
	.long	0x305c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	0x3068
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.long	0x3074
	.quad	.L388
	.uleb128 0x1b
	.long	0x2d87
	.long	0x307d
	.quad	.LBB239
	.quad	.LBE239
	.uleb128 0x1c
	.long	0x308a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x2dc4
	.long	0x1f6e
	.quad	.LBB242
	.quad	.LBE242
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB244
	.quad	.LBE244
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2de5
	.long	0x1f57
	.quad	.LBB245
	.quad	.LBE245
	.uleb128 0x1c
	.long	0x1f64
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x2e22
	.long	0x1f6e
	.quad	.LBB248
	.quad	.LBE248
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB250
	.quad	.LBE250
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x27f6
	.quad	.LBB251
	.quad	.LBE251
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB253
	.quad	.LBE253
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2e8d
	.long	0x208d
	.quad	.LBB261
	.quad	.LBE261
	.uleb128 0x1c
	.long	0x209e
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0x2ec8
	.long	0x20a8
	.quad	.LBB264
	.quad	.LBE264
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB266
	.quad	.LBE266
	.uleb128 0x20
	.long	0x20c3
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2f14
	.long	0x24c7
	.quad	.LBB267
	.quad	.LBE267
	.uleb128 0x1e
	.long	0x24d8
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB269
	.quad	.LBE269
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x31
	.long	0x20c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x2f6c
	.long	0x27f6
	.quad	.LBB277
	.quad	.LBE277
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB279
	.quad	.LBE279
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB281
	.quad	.LBE281
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x2811
	.quad	.LBB284
	.quad	.LBE284
	.uleb128 0x1e
	.long	0x2822
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB286
	.quad	.LBE286
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB288
	.quad	.LBE288
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x307d
	.long	.LASF285
	.byte	0x1
	.value	0x75a
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x759
	.long	0x885
	.uleb128 0x3a
	.long	.LASF286
	.byte	0x1
	.value	0x759
	.long	0x3f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x75b
	.long	0x1394
	.uleb128 0x38
	.long	.LASF287
	.byte	0x1
	.value	0x75c
	.long	0x3f
	.uleb128 0x38
	.long	.LASF288
	.byte	0x1
	.value	0x75c
	.long	0x3f
	.uleb128 0x38
	.long	.LASF165
	.byte	0x1
	.value	0x75c
	.long	0x3f
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x75c
	.long	0x3f
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.value	0x75c
	.long	0x3f
	.uleb128 0x38
	.long	.LASF289
	.byte	0x1
	.value	0x75d
	.long	0x10ad
	.uleb128 0x38
	.long	.LASF290
	.byte	0x1
	.value	0x75e
	.long	0xb4
	.uleb128 0x38
	.long	.LASF284
	.byte	0x1
	.value	0x75f
	.long	0x333
	.uleb128 0x38
	.long	.LASF291
	.byte	0x1
	.value	0x760
	.long	0x328
	.uleb128 0x38
	.long	.LASF292
	.byte	0x1
	.value	0x761
	.long	0x3f
	.uleb128 0x38
	.long	.LASF293
	.byte	0x1
	.value	0x762
	.long	0xb4
	.uleb128 0x39
	.long	.LASF232
	.byte	0x1
	.value	0x799
	.byte	0x0
	.uleb128 0x34
	.long	0x3094
	.long	.LASF294
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.byte	0x79
	.long	0x10ad
	.byte	0x0
	.uleb128 0x25
	.long	0x311f
	.long	.LASF295
	.byte	0x1
	.value	0x7e3
	.byte	0x1
	.quad	.LFB147
	.quad	.LFE147
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x7e0
	.long	0x885
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x1
	.value	0x7e1
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF296
	.byte	0x1
	.value	0x7e1
	.long	0xb4
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x1
	.value	0x7e2
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x7e4
	.long	0x1394
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF254
	.byte	0x1
	.value	0x7e5
	.long	0xb4
	.uleb128 0x29
	.long	.LASF255
	.byte	0x1
	.value	0x7e5
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x7e5
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x28
	.long	0x3460
	.long	.LASF297
	.byte	0x1
	.value	0x4e6
	.byte	0x1
	.long	0x3f
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x4e2
	.long	0x885
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2a
	.long	.LASF163
	.byte	0x1
	.value	0x4e3
	.long	0xb4
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x2a
	.long	.LASF162
	.byte	0x1
	.value	0x4e4
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x1
	.value	0x4e5
	.long	0x3f
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x4e7
	.long	0x1394
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF181
	.byte	0x1
	.value	0x4e8
	.long	0x10ad
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x29
	.long	.LASF298
	.byte	0x1
	.value	0x4e8
	.long	0x10ad
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x29
	.long	.LASF299
	.byte	0x1
	.value	0x4e8
	.long	0x333
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x4e8
	.long	0x333
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF300
	.byte	0x1
	.value	0x4e8
	.long	0x333
	.uleb128 0x29
	.long	.LASF301
	.byte	0x1
	.value	0x4e8
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x38
	.long	.LASF302
	.byte	0x1
	.value	0x4e9
	.long	0xb4
	.uleb128 0x29
	.long	.LASF303
	.byte	0x1
	.value	0x4e9
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x29
	.long	.LASF176
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF304
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x29
	.long	.LASF305
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF239
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF253
	.byte	0x1
	.value	0x4ea
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x54e
	.quad	.L456
	.uleb128 0x3b
	.long	.LASF306
	.long	0x3470
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.uleb128 0x1b
	.long	0x32ad
	.long	0x3475
	.quad	.LBB289
	.quad	.LBE289
	.uleb128 0x1e
	.long	0x3483
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x20
	.long	0x348e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3305
	.long	0x1f57
	.quad	.LBB293
	.quad	.LBE293
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB295
	.quad	.LBE295
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB297
	.quad	.LBE297
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x335d
	.long	0x2072
	.quad	.LBB298
	.quad	.LBE298
	.uleb128 0x1e
	.long	0x2083
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB300
	.quad	.LBE300
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB302
	.quad	.LBE302
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x33b3
	.long	0x27f6
	.quad	.LBB303
	.quad	.LBE303
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB305
	.quad	.LBE305
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB307
	.quad	.LBE307
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x340b
	.long	0x307d
	.quad	.LBB308
	.quad	.LBE308
	.uleb128 0x1e
	.long	0x308a
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB310
	.quad	.LBE310
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB312
	.quad	.LBE312
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1f57
	.quad	.LBB313
	.quad	.LBE313
	.uleb128 0x1e
	.long	0x1f64
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB315
	.quad	.LBE315
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB317
	.quad	.LBE317
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x3470
	.long	0x75
	.uleb128 0x9
	.long	0x61
	.byte	0x18
	.byte	0x0
	.uleb128 0x6
	.long	0x3460
	.uleb128 0x3c
	.long	0x3499
	.long	.LASF307
	.byte	0x1
	.value	0x18b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x18a
	.long	0x885
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x18c
	.long	0x1394
	.byte	0x0
	.uleb128 0x25
	.long	0x34e2
	.long	.LASF308
	.byte	0x1
	.value	0x755
	.byte	0x1
	.quad	.LFB144
	.quad	.LFE144
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x753
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x1
	.value	0x754
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.value	0x754
	.long	0xb4
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x28
	.long	0x352f
	.long	.LASF309
	.byte	0x1
	.value	0x723
	.byte	0x1
	.long	0xb4
	.quad	.LFB142
	.quad	.LFE142
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x722
	.long	0x885
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.value	0x722
	.long	0xb4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x724
	.long	0xb4
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x28
	.long	0x396e
	.long	.LASF310
	.byte	0x1
	.value	0x59c
	.byte	0x1
	.long	0x3f
	.quad	.LFB129
	.quad	.LFE129
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x59b
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x59d
	.long	0x1394
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"sn"
	.byte	0x1
	.value	0x59e
	.long	0x10d9
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"h"
	.byte	0x1
	.value	0x59f
	.long	0xe1e
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x5a0
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x29
	.long	.LASF170
	.byte	0x1
	.value	0x5a0
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF169
	.byte	0x1
	.value	0x5a0
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF197
	.byte	0x1
	.value	0x5a0
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x29
	.long	.LASF284
	.byte	0x1
	.value	0x5a1
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x29
	.long	.LASF291
	.byte	0x1
	.value	0x5a2
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x5a3
	.long	0xb4
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF167
	.byte	0x1
	.value	0x5a3
	.long	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x5dc
	.quad	.L587
	.uleb128 0x1b
	.long	0x3661
	.long	0x27f6
	.quad	.LBB318
	.quad	.LBE318
	.uleb128 0x1c
	.long	0x2807
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB320
	.quad	.LBE320
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB322
	.quad	.LBE322
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x36b9
	.long	0x2811
	.quad	.LBB323
	.quad	.LBE323
	.uleb128 0x1c
	.long	0x2822
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB325
	.quad	.LBE325
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB327
	.quad	.LBE327
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3711
	.long	0x2811
	.quad	.LBB328
	.quad	.LBE328
	.uleb128 0x1c
	.long	0x2822
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB330
	.quad	.LBE330
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB332
	.quad	.LBE332
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3769
	.long	0x2811
	.quad	.LBB333
	.quad	.LBE333
	.uleb128 0x1c
	.long	0x2822
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB335
	.quad	.LBE335
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB337
	.quad	.LBE337
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x37c1
	.long	0x2811
	.quad	.LBB338
	.quad	.LBE338
	.uleb128 0x1c
	.long	0x2822
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB340
	.quad	.LBE340
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB342
	.quad	.LBE342
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3819
	.long	0x27f6
	.quad	.LBB343
	.quad	.LBE343
	.uleb128 0x1c
	.long	0x2807
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB345
	.quad	.LBE345
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB347
	.quad	.LBE347
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3871
	.long	0x24c7
	.quad	.LBB348
	.quad	.LBE348
	.uleb128 0x1e
	.long	0x24d8
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB350
	.quad	.LBE350
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB352
	.quad	.LBE352
	.uleb128 0x31
	.long	0x20c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x38c9
	.long	0x24c7
	.quad	.LBB353
	.quad	.LBE353
	.uleb128 0x1e
	.long	0x24d8
	.uleb128 0x1d
	.long	0x20a8
	.quad	.LBB355
	.quad	.LBE355
	.uleb128 0x1e
	.long	0x20b9
	.uleb128 0x1f
	.quad	.LBB357
	.quad	.LBE357
	.uleb128 0x31
	.long	0x20c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x20ce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3915
	.long	0x27f6
	.quad	.LBB358
	.quad	.LBE358
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB360
	.quad	.LBE360
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3936
	.long	0x2811
	.quad	.LBB368
	.quad	.LBE368
	.uleb128 0x1c
	.long	0x2822
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB371
	.quad	.LBE371
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x1f
	.quad	.LBB373
	.quad	.LBE373
	.uleb128 0x20
	.long	0x1343
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x39e2
	.long	.LASF311
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	0x3f
	.quad	.LFB135
	.quad	.LFE135
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x67d
	.long	0x885
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.LASF312
	.byte	0x1
	.value	0x67d
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x67f
	.long	0x1394
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"sn"
	.byte	0x1
	.value	0x680
	.long	0x10d9
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF313
	.byte	0x1
	.value	0x681
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x681
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.long	0x3bf1
	.long	.LASF314
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.long	0x3f
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x1ab
	.long	0x885
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x1ab
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1ad
	.long	0x1394
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF315
	.byte	0x1
	.value	0x1ae
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF316
	.byte	0x1
	.value	0x1ae
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x1ae
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1ae
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	.LASF317
	.byte	0x1
	.value	0x1af
	.long	0x10ad
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF318
	.byte	0x1
	.value	0x1b0
	.long	0x333
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF284
	.byte	0x1
	.value	0x1b1
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF291
	.byte	0x1
	.value	0x1b2
	.long	0x328
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x1de
	.quad	.L626
	.uleb128 0x1b
	.long	0x3b04
	.long	0x27f6
	.quad	.LBB374
	.quad	.LBE374
	.uleb128 0x1c
	.long	0x2807
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB376
	.quad	.LBE376
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB378
	.quad	.LBE378
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3b5c
	.long	0x2072
	.quad	.LBB379
	.quad	.LBE379
	.uleb128 0x1c
	.long	0x2083
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB381
	.quad	.LBE381
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB383
	.quad	.LBE383
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3ba8
	.long	0x27f6
	.quad	.LBB384
	.quad	.LBE384
	.uleb128 0x1e
	.long	0x2807
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB386
	.quad	.LBE386
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x31
	.long	0x1f89
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x2811
	.quad	.LBB394
	.quad	.LBE394
	.uleb128 0x1e
	.long	0x2822
	.uleb128 0x1d
	.long	0x1328
	.quad	.LBB396
	.quad	.LBE396
	.uleb128 0x1e
	.long	0x1339
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x220
	.uleb128 0x31
	.long	0x1343
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x134e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3cdb
	.long	.LASF319
	.byte	0x1
	.value	0x655
	.byte	0x1
	.long	0x3f
	.quad	.LFB134
	.quad	.LFE134
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x653
	.long	0x885
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF312
	.byte	0x1
	.value	0x654
	.long	0x6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x656
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"sn"
	.byte	0x1
	.value	0x657
	.long	0x10d9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x658
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	.LASF313
	.byte	0x1
	.value	0x658
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF300
	.byte	0x1
	.value	0x658
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x679
	.quad	.L655
	.uleb128 0x1b
	.long	0x3ca1
	.long	0x1f57
	.quad	.LBB404
	.quad	.LBE404
	.uleb128 0x1c
	.long	0x1f64
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB407
	.quad	.LBE407
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB409
	.quad	.LBE409
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x31
	.long	0x1f94
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x3e39
	.long	.LASF320
	.byte	0x1
	.value	0x60e
	.byte	0x1
	.long	0x3f
	.quad	.LFB133
	.quad	.LFE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x60c
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x1
	.value	0x60d
	.long	0xa30
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x60f
	.long	0x1394
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x610
	.long	0x10d9
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"sn1"
	.byte	0x1
	.value	0x610
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.string	"sn"
	.byte	0x1
	.value	0x610
	.long	0x10d9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x611
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x611
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF181
	.byte	0x1
	.value	0x612
	.long	0x10ad
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x64c
	.quad	.L683
	.uleb128 0x1b
	.long	0x3de0
	.long	0x3e39
	.quad	.LBB410
	.quad	.LBE410
	.uleb128 0x1e
	.long	0x3e47
	.uleb128 0x1e
	.long	0x3e52
	.uleb128 0x1e
	.long	0x3e5e
	.uleb128 0x1f
	.quad	.LBB411
	.quad	.LBE411
	.uleb128 0x20
	.long	0x3e6a
	.uleb128 0x20
	.long	0x3e74
	.uleb128 0x31
	.long	0x3e7f
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	0x3e89
	.uleb128 0x31
	.long	0x3e94
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x3e01
	.long	0x27f6
	.quad	.LBB412
	.quad	.LBE412
	.uleb128 0x1c
	.long	0x2807
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1d
	.long	0x1f6e
	.quad	.LBB415
	.quad	.LBE415
	.uleb128 0x1e
	.long	0x1f7f
	.uleb128 0x1f
	.quad	.LBB417
	.quad	.LBE417
	.uleb128 0x20
	.long	0x1f89
	.uleb128 0x20
	.long	0x1f94
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0x3ea1
	.long	.LASF322
	.byte	0x1
	.value	0x5e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x5e0
	.long	0x885
	.uleb128 0x3a
	.long	.LASF119
	.byte	0x1
	.value	0x5e1
	.long	0xae
	.uleb128 0x3a
	.long	.LASF169
	.byte	0x1
	.value	0x5e1
	.long	0x3f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x5e3
	.long	0x1394
	.uleb128 0x37
	.string	"sn"
	.byte	0x1
	.value	0x5e4
	.long	0x10d9
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x5e5
	.long	0x3f
	.uleb128 0x37
	.string	"id"
	.byte	0x1
	.value	0x5e5
	.long	0x3f
	.uleb128 0x38
	.long	.LASF323
	.byte	0x1
	.value	0x5e5
	.long	0x3f
	.byte	0x0
	.uleb128 0x28
	.long	0x4161
	.long	.LASF324
	.byte	0x1
	.value	0x1f4
	.byte	0x1
	.long	0x333
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x1f0
	.long	0x885
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x1
	.value	0x1f1
	.long	0x333
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.long	.LASF325
	.byte	0x1
	.value	0x1f1
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF326
	.byte	0x1
	.value	0x1f2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x2a
	.long	.LASF327
	.byte	0x1
	.value	0x1f3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF328
	.byte	0x1
	.value	0x1f3
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1f5
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF329
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	.LASF330
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF331
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x1f6
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF299
	.byte	0x1
	.value	0x1f7
	.long	0x333
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF298
	.byte	0x1
	.value	0x1f7
	.long	0x10ad
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x1f7
	.long	0x333
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x1f7
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x29
	.long	.LASF303
	.byte	0x1
	.value	0x1f7
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF332
	.byte	0x1
	.value	0x222
	.quad	.L716
	.uleb128 0x2f
	.long	.LASF333
	.byte	0x1
	.value	0x23c
	.quad	.L745
	.uleb128 0x1b
	.long	0x402a
	.long	0x4161
	.quad	.LBB418
	.quad	.LBE418
	.uleb128 0x1e
	.long	0x4173
	.uleb128 0x1f
	.quad	.LBB419
	.quad	.LBE419
	.uleb128 0x31
	.long	0x417e
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4188
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	0x4194
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	0x41a0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x4077
	.long	0x4161
	.quad	.LBB420
	.quad	.LBE420
	.uleb128 0x1e
	.long	0x4173
	.uleb128 0x1f
	.quad	.LBB421
	.quad	.LBE421
	.uleb128 0x31
	.long	0x417e
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.long	0x4188
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.long	0x4194
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.long	0x41a0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x4096
	.long	0x2072
	.quad	.LBB422
	.quad	.LBE422
	.uleb128 0x1e
	.long	0x2083
	.byte	0x0
	.uleb128 0x3d
	.long	0x40fd
	.long	.Ldebug_ranges0+0x250
	.uleb128 0x29
	.long	.LASF239
	.byte	0x1
	.value	0x268
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x41ab
	.quad	.LBB425
	.quad	.LBE425
	.uleb128 0x1e
	.long	0x41bd
	.uleb128 0x1e
	.long	0x41c8
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x2a0
	.uleb128 0x31
	.long	0x41d4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	0x41de
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	0x41ea
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.long	0x41f6
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.long	0x420c
	.quad	.L779
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4121
	.quad	.LBB427
	.quad	.LBE427
	.uleb128 0x29
	.long	.LASF239
	.byte	0x1
	.value	0x247
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1b
	.long	0x4140
	.long	0x27f6
	.quad	.LBB432
	.quad	.LBE432
	.uleb128 0x1e
	.long	0x2807
	.byte	0x0
	.uleb128 0x1f
	.quad	.LBB436
	.quad	.LBE436
	.uleb128 0x29
	.long	.LASF334
	.byte	0x1
	.value	0x25a
	.long	0x333
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x41ab
	.long	.LASF335
	.byte	0x1
	.value	0x194
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x193
	.long	0x885
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x195
	.long	0x1394
	.uleb128 0x38
	.long	.LASF336
	.byte	0x1
	.value	0x196
	.long	0x328
	.uleb128 0x38
	.long	.LASF329
	.byte	0x1
	.value	0x197
	.long	0x3f
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x197
	.long	0x3f
	.byte	0x0
	.uleb128 0x35
	.long	0x4215
	.long	.LASF337
	.byte	0x1
	.value	0x72e
	.byte	0x1
	.long	0xb4
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x72d
	.long	0x885
	.uleb128 0x3a
	.long	.LASF160
	.byte	0x1
	.value	0x72d
	.long	0x3f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x72f
	.long	0x1394
	.uleb128 0x38
	.long	.LASF222
	.byte	0x1
	.value	0x730
	.long	0xb4
	.uleb128 0x38
	.long	.LASF203
	.byte	0x1
	.value	0x730
	.long	0xb4
	.uleb128 0x38
	.long	.LASF338
	.byte	0x1
	.value	0x731
	.long	0x3f
	.uleb128 0x3e
	.long	.LASF306
	.long	0x4225
	.byte	0x1
	.uleb128 0x39
	.long	.LASF339
	.byte	0x1
	.value	0x74d
	.byte	0x0
	.uleb128 0x8
	.long	0x4225
	.long	0x75
	.uleb128 0x9
	.long	0x61
	.byte	0xb
	.byte	0x0
	.uleb128 0x6
	.long	0x4215
	.uleb128 0x28
	.long	0x4335
	.long	.LASF340
	.byte	0x1
	.value	0x48e
	.byte	0x1
	.long	0x3f
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x48c
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x48c
	.long	0xb4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x48d
	.long	0x34a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x48d
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x48f
	.long	0x1394
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF245
	.byte	0x1
	.value	0x490
	.long	0xc6f
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x491
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.long	.LASF246
	.byte	0x1
	.value	0x491
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.long	.LASF218
	.byte	0x1
	.value	0x492
	.long	0x8b0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x493
	.long	0x333
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x4335
	.quad	.LBB437
	.quad	.LBE437
	.uleb128 0x1e
	.long	0x4347
	.uleb128 0x1c
	.long	0x4352
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	0x435e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	0x436a
	.byte	0x1
	.byte	0x5e
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x2e0
	.uleb128 0x31
	.long	0x4376
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	0x4380
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x438c
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	0x4398
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	0x43a2
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x43af
	.long	.LASF341
	.byte	0x1
	.value	0x2f9
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x2f7
	.long	0x885
	.uleb128 0x3a
	.long	.LASF201
	.byte	0x1
	.value	0x2f7
	.long	0xb4
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x2f8
	.long	0x34a
	.uleb128 0x3a
	.long	.LASF202
	.byte	0x1
	.value	0x2f8
	.long	0x3f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x2fa
	.long	0x1394
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x38
	.long	.LASF342
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.value	0x2fb
	.long	0x3f
	.uleb128 0x38
	.long	.LASF203
	.byte	0x1
	.value	0x2fc
	.long	0x333
	.byte	0x0
	.uleb128 0x28
	.long	0x44a1
	.long	.LASF343
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	0x3f
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x171
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x1
	.value	0x171
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF203
	.byte	0x1
	.value	0x172
	.long	0x333
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF327
	.byte	0x1
	.value	0x172
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.LASF328
	.byte	0x1
	.value	0x172
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x174
	.long	0x1394
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x175
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x175
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	0x44a1
	.quad	.LBB442
	.quad	.LBE442
	.uleb128 0x1e
	.long	0x44b3
	.uleb128 0x1c
	.long	0x44be
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.long	0x44ca
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.long	0x44d6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x20
	.long	0x44e2
	.uleb128 0x31
	.long	0x44ec
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x44f8
	.byte	0x1
	.byte	0x56
	.uleb128 0x31
	.long	0x4504
	.byte	0x1
	.byte	0x5c
	.uleb128 0x31
	.long	0x450e
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	0x4519
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x4526
	.long	.LASF344
	.byte	0x1
	.value	0x2cc
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x36
	.string	"bs"
	.byte	0x1
	.value	0x2ca
	.long	0x885
	.uleb128 0x3a
	.long	.LASF201
	.byte	0x1
	.value	0x2ca
	.long	0xb4
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x2cb
	.long	0x8b0
	.uleb128 0x3a
	.long	.LASF202
	.byte	0x1
	.value	0x2cb
	.long	0x3f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x2cd
	.long	0x1394
	.uleb128 0x37
	.string	"ret"
	.byte	0x1
	.value	0x2ce
	.long	0x3f
	.uleb128 0x38
	.long	.LASF342
	.byte	0x1
	.value	0x2ce
	.long	0x3f
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.value	0x2ce
	.long	0x3f
	.uleb128 0x37
	.string	"n1"
	.byte	0x1
	.value	0x2ce
	.long	0x3f
	.uleb128 0x38
	.long	.LASF203
	.byte	0x1
	.value	0x2cf
	.long	0x333
	.byte	0x0
	.uleb128 0x25
	.long	0x45c1
	.long	.LASF345
	.byte	0x1
	.value	0x39c
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF61
	.byte	0x1
	.value	0x39b
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x39b
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x37
	.string	"acb"
	.byte	0x1
	.value	0x39d
	.long	0x2312
	.uleb128 0x27
	.string	"bs"
	.byte	0x1
	.value	0x39e
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x39f
	.long	0x1394
	.byte	0x1
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF342
	.byte	0x1
	.value	0x3a0
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x3a1
	.long	0x333
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF346
	.byte	0x1
	.value	0x3a2
	.long	0x34a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x3c1
	.quad	.L874
	.byte	0x0
	.uleb128 0x28
	.long	0x4651
	.long	.LASF347
	.byte	0x1
	.value	0x3dc
	.byte	0x1
	.long	0x997
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x3d9
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x3da
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x3da
	.long	0x34a
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x3da
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.string	"cb"
	.byte	0x1
	.value	0x3db
	.long	0x99d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF61
	.byte	0x1
	.value	0x3db
	.long	0xac
	.byte	0x1
	.byte	0x59
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x3dd
	.long	0x1394
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.string	"acb"
	.byte	0x1
	.value	0x3de
	.long	0x2312
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x25
	.long	0x46ed
	.long	.LASF348
	.byte	0x1
	.value	0x326
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.long	.LASF61
	.byte	0x1
	.value	0x325
	.long	0xac
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x325
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x37
	.string	"acb"
	.byte	0x1
	.value	0x327
	.long	0x2312
	.uleb128 0x27
	.string	"bs"
	.byte	0x1
	.value	0x328
	.long	0x885
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x329
	.long	0x1394
	.byte	0x1
	.byte	0x5c
	.uleb128 0x29
	.long	.LASF342
	.byte	0x1
	.value	0x32a
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"n1"
	.byte	0x1
	.value	0x32a
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x35e
	.quad	.L891
	.uleb128 0x2f
	.long	.LASF339
	.byte	0x1
	.value	0x360
	.quad	.L892
	.byte	0x0
	.uleb128 0x28
	.long	0x4771
	.long	.LASF349
	.byte	0x1
	.value	0x390
	.byte	0x1
	.long	0x997
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x38d
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x38e
	.long	0xb4
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x38e
	.long	0x8b0
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x38e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.string	"cb"
	.byte	0x1
	.value	0x38f
	.long	0x99d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF61
	.byte	0x1
	.value	0x38f
	.long	0xac
	.byte	0x1
	.byte	0x59
	.uleb128 0x27
	.string	"acb"
	.byte	0x1
	.value	0x391
	.long	0x2312
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x28
	.long	0x47fe
	.long	.LASF350
	.byte	0x1
	.value	0x27b
	.byte	0x1
	.long	0x3f
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"bs"
	.byte	0x1
	.value	0x279
	.long	0x885
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x1
	.value	0x279
	.long	0xb4
	.byte	0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x1
	.value	0x27a
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.long	.LASF351
	.byte	0x1
	.value	0x27a
	.long	0x4d
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x27c
	.long	0x1394
	.byte	0x1
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF342
	.byte	0x1
	.value	0x27d
	.long	0x3f
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x27d
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x29
	.long	.LASF203
	.byte	0x1
	.value	0x27e
	.long	0x333
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3f
	.long	.LASF352
	.byte	0xc
	.byte	0x91
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.long	.LASF353
	.byte	0xc
	.byte	0x92
	.long	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF354
	.byte	0x1
	.value	0x8b3
	.long	0x514
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_qcow2
	.uleb128 0x41
	.long	.LASF355
	.byte	0x5
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4846
	.long	0x4818
	.string	"bdrv_qcow2"
	.long	0x482f
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
	.quad	.LBB113-.Ltext0
	.quad	.LBE113-.Ltext0
	.quad	.LBB164-.Ltext0
	.quad	.LBE164-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB115-.Ltext0
	.quad	.LBE115-.Ltext0
	.quad	.LBB172-.Ltext0
	.quad	.LBE172-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB174-.Ltext0
	.quad	.LBE174-.Ltext0
	.quad	.LBB181-.Ltext0
	.quad	.LBE181-.Ltext0
	.quad	.LBB179-.Ltext0
	.quad	.LBE179-.Ltext0
	.quad	.LBB177-.Ltext0
	.quad	.LBE177-.Ltext0
	.quad	.LBB176-.Ltext0
	.quad	.LBE176-.Ltext0
	.quad	.LBB175-.Ltext0
	.quad	.LBE175-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB218-.Ltext0
	.quad	.LBE218-.Ltext0
	.quad	.LBB223-.Ltext0
	.quad	.LBE223-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB238-.Ltext0
	.quad	.LBE238-.Ltext0
	.quad	.LBB283-.Ltext0
	.quad	.LBE283-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB255-.Ltext0
	.quad	.LBE255-.Ltext0
	.quad	.LBB260-.Ltext0
	.quad	.LBE260-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB271-.Ltext0
	.quad	.LBE271-.Ltext0
	.quad	.LBB276-.Ltext0
	.quad	.LBE276-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB290-.Ltext0
	.quad	.LBE290-.Ltext0
	.quad	.LBB292-.Ltext0
	.quad	.LBE292-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB362-.Ltext0
	.quad	.LBE362-.Ltext0
	.quad	.LBB367-.Ltext0
	.quad	.LBE367-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB388-.Ltext0
	.quad	.LBE388-.Ltext0
	.quad	.LBB393-.Ltext0
	.quad	.LBE393-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB398-.Ltext0
	.quad	.LBE398-.Ltext0
	.quad	.LBB403-.Ltext0
	.quad	.LBE403-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB424-.Ltext0
	.quad	.LBE424-.Ltext0
	.quad	.LBB433-.Ltext0
	.quad	.LBE433-.Ltext0
	.quad	.LBB431-.Ltext0
	.quad	.LBE431-.Ltext0
	.quad	.LBB428-.Ltext0
	.quad	.LBE428-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB426-.Ltext0
	.quad	.LBE426-.Ltext0
	.quad	.LBB435-.Ltext0
	.quad	.LBE435-.Ltext0
	.quad	.LBB430-.Ltext0
	.quad	.LBE430-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB438-.Ltext0
	.quad	.LBE438-.Ltext0
	.quad	.LBB441-.Ltext0
	.quad	.LBE441-.Ltext0
	.quad	.LBB439-.Ltext0
	.quad	.LBE439-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB443-.Ltext0
	.quad	.LBE443-.Ltext0
	.quad	.LBB447-.Ltext0
	.quad	.LBE447-.Ltext0
	.quad	.LBB445-.Ltext0
	.quad	.LBE445-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"translation"
.LASF242:
	.string	"decompress_buffer"
.LASF230:
	.string	"refcount_init"
.LASF9:
	.string	"size_t"
.LASF276:
	.string	"cluster_index"
.LASF300:
	.string	"l1_size2"
.LASF260:
	.string	"backing_filename_len"
.LASF162:
	.string	"l1_size"
.LASF268:
	.string	"__s2_len"
.LASF344:
	.string	"qcow_read"
.LASF257:
	.string	"qcow_create"
.LASF54:
	.string	"total_sectors"
.LASF92:
	.string	"bdrv_set_key"
.LASF247:
	.string	"backing_read1"
.LASF286:
	.string	"min_size"
.LASF123:
	.string	"date_nsec"
.LASF217:
	.string	"encrypt_sectors"
.LASF137:
	.string	"total_in"
.LASF25:
	.string	"_IO_save_end"
.LASF99:
	.string	"bdrv_pread"
.LASF74:
	.string	"cyls"
.LASF106:
	.string	"bdrv_snapshot_delete"
.LASF324:
	.string	"get_cluster_offset"
.LASF347:
	.string	"qcow_aio_write"
.LASF18:
	.string	"_IO_write_base"
.LASF188:
	.string	"refcount_table"
.LASF141:
	.string	"state"
.LASF277:
	.string	"refcount_table_index"
.LASF34:
	.string	"_lock"
.LASF180:
	.string	"cluster_offset_mask"
.LASF184:
	.string	"l2_cache_counts"
.LASF351:
	.string	"pnum"
.LASF157:
	.string	"backing_file_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF84:
	.string	"bdrv_probe"
.LASF149:
	.string	"z_stream"
.LASF331:
	.string	"l2_index"
.LASF307:
	.string	"l2_cache_reset"
.LASF281:
	.string	"not_found"
.LASF115:
	.string	"BlockDriverInfo"
.LASF340:
	.string	"qcow_write_compressed"
.LASF31:
	.string	"_cur_column"
.LASF282:
	.string	"update_cluster_refcount"
.LASF254:
	.string	"start"
.LASF100:
	.string	"bdrv_pwrite"
.LASF41:
	.string	"_mode"
.LASF76:
	.string	"secs"
.LASF283:
	.string	"addend"
.LASF56:
	.string	"removable"
.LASF178:
	.string	"csize_shift"
.LASF124:
	.string	"vm_clock_nsec"
.LASF266:
	.string	"find_snapshot_by_id"
.LASF2:
	.string	"long int"
.LASF164:
	.string	"refcount_table_offset"
.LASF249:
	.string	"qcow_aio_cancel"
.LASF65:
	.string	"backing_file"
.LASF317:
	.string	"new_l1_table"
.LASF140:
	.string	"total_out"
.LASF316:
	.string	"new_l1_size2"
.LASF274:
	.string	"load_refcount_block"
.LASF312:
	.string	"snapshot_id"
.LASF45:
	.string	"_IO_marker"
.LASF61:
	.string	"opaque"
.LASF330:
	.string	"l1_index"
.LASF225:
	.string	"shift"
.LASF355:
	.string	"bdrv_first"
.LASF297:
	.string	"update_snapshot_refcount"
.LASF121:
	.string	"vm_state_size"
.LASF200:
	.string	"common"
.LASF284:
	.string	"data64"
.LASF129:
	.string	"uLong"
.LASF114:
	.string	"free_aiocb"
.LASF192:
	.string	"free_cluster_index"
.LASF326:
	.string	"compressed_size"
.LASF7:
	.string	"signed char"
.LASF251:
	.string	"qcow_close"
.LASF44:
	.string	"_IO_FILE"
.LASF130:
	.string	"Bytef"
.LASF70:
	.string	"rd_bytes"
.LASF189:
	.string	"refcount_table_size"
.LASF343:
	.string	"copy_sectors"
.LASF68:
	.string	"backing_hd"
.LASF6:
	.string	"unsigned char"
.LASF288:
	.string	"new_table_size2"
.LASF190:
	.string	"refcount_block_cache_offset"
.LASF110:
	.string	"bdrv_media_changed"
.LASF318:
	.string	"new_l1_table_offset"
.LASF329:
	.string	"min_index"
.LASF53:
	.string	"BlockDriverState"
.LASF101:
	.string	"bdrv_truncate"
.LASF270:
	.string	"qcow_snapshot_list"
.LASF67:
	.string	"media_changed"
.LASF176:
	.string	"l2_size"
.LASF336:
	.string	"min_count"
.LASF199:
	.string	"QCowAIOCB"
.LASF5:
	.string	"char"
.LASF89:
	.string	"bdrv_create"
.LASF98:
	.string	"protocol_name"
.LASF43:
	.string	"_IO_lock_t"
.LASF96:
	.string	"bdrv_aio_cancel"
.LASF214:
	.string	"qcow_free_snapshots"
.LASF182:
	.string	"l2_cache"
.LASF64:
	.string	"filename"
.LASF298:
	.string	"l2_table"
.LASF231:
	.string	"refcount_table_size2"
.LASF334:
	.string	"start_sect"
.LASF138:
	.string	"next_out"
.LASF234:
	.string	"be64_to_cpu"
.LASF278:
	.string	"block_index"
.LASF224:
	.string	"flags"
.LASF105:
	.string	"bdrv_snapshot_goto"
.LASF319:
	.string	"qcow_snapshot_goto"
.LASF15:
	.string	"_IO_read_ptr"
.LASF198:
	.string	"snapshots"
.LASF280:
	.string	"nb_clusters"
.LASF88:
	.string	"bdrv_close"
.LASF228:
	.string	"be64_to_cpus"
.LASF48:
	.string	"_pos"
.LASF352:
	.string	"stdin"
.LASF240:
	.string	"sector_offset"
.LASF215:
	.string	"qcow_set_key"
.LASF301:
	.string	"l1_allocated"
.LASF353:
	.string	"stdout"
.LASF267:
	.string	"__s1_len"
.LASF239:
	.string	"nb_csectors"
.LASF174:
	.string	"cluster_sectors"
.LASF26:
	.string	"_markers"
.LASF73:
	.string	"wr_ops"
.LASF289:
	.string	"new_table"
.LASF304:
	.string	"l1_modified"
.LASF79:
	.string	"device_name"
.LASF194:
	.string	"crypt_method_header"
.LASF139:
	.string	"avail_out"
.LASF75:
	.string	"heads"
.LASF248:
	.string	"qcow_aio_setup"
.LASF261:
	.string	"cpu_to_be64"
.LASF187:
	.string	"cluster_cache_offset"
.LASF35:
	.string	"_offset"
.LASF90:
	.string	"bdrv_flush"
.LASF87:
	.string	"bdrv_write"
.LASF159:
	.string	"cluster_bits"
.LASF179:
	.string	"csize_mask"
.LASF112:
	.string	"bdrv_set_locked"
.LASF293:
	.string	"old_table_offset"
.LASF126:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF206:
	.string	"refcount_block"
.LASF208:
	.string	"buf_size"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF172:
	.string	"QCowSnapshot"
.LASF175:
	.string	"l2_bits"
.LASF322:
	.string	"find_new_snapshot_id"
.LASF158:
	.string	"backing_file_size"
.LASF42:
	.string	"_unused2"
.LASF291:
	.string	"data32"
.LASF63:
	.string	"boot_sector_data"
.LASF226:
	.string	"header"
.LASF332:
	.string	"l2_allocate"
.LASF348:
	.string	"qcow_aio_read_cb"
.LASF299:
	.string	"l2_offset"
.LASF250:
	.string	"blockacb"
.LASF83:
	.string	"instance_size"
.LASF350:
	.string	"qcow_is_allocated"
.LASF117:
	.string	"vm_state_offset"
.LASF30:
	.string	"_old_offset"
.LASF303:
	.string	"old_l2_offset"
.LASF323:
	.string	"id_max"
.LASF177:
	.string	"l1_vm_state_index"
.LASF147:
	.string	"internal_state"
.LASF210:
	.string	"be32_to_cpu"
.LASF333:
	.string	"found"
.LASF220:
	.string	"ivec"
.LASF308:
	.string	"free_clusters"
.LASF58:
	.string	"encrypted"
.LASF205:
	.string	"QCowCreateState"
.LASF243:
	.string	"out_buf_size"
.LASF134:
	.string	"z_stream_s"
.LASF3:
	.string	"long long int"
.LASF335:
	.string	"l2_cache_new_entry"
.LASF253:
	.string	"refcount"
.LASF269:
	.string	"find_snapshot_by_id_or_name"
.LASF201:
	.string	"sector_num"
.LASF20:
	.string	"_IO_write_end"
.LASF204:
	.string	"hd_aiocb"
.LASF235:
	.string	"be16_to_cpu"
.LASF328:
	.string	"n_end"
.LASF55:
	.string	"read_only"
.LASF238:
	.string	"csize"
.LASF221:
	.string	"align_offset"
.LASF93:
	.string	"bdrv_make_empty"
.LASF227:
	.string	"be32_to_cpus"
.LASF354:
	.string	"bdrv_qcow2"
.LASF21:
	.string	"_IO_buf_base"
.LASF223:
	.string	"qcow_open"
.LASF314:
	.string	"grow_l1_table"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF103:
	.string	"bdrv_write_compressed"
.LASF102:
	.string	"bdrv_getlength"
.LASF356:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF86:
	.string	"bdrv_read"
.LASF60:
	.string	"change_opaque"
.LASF145:
	.string	"adler"
.LASF72:
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
.LASF219:
	.string	"in_buf"
.LASF47:
	.string	"_sbuf"
.LASF154:
	.string	"QCowHeader"
.LASF241:
	.string	"coffset"
.LASF108:
	.string	"bdrv_get_info"
.LASF349:
	.string	"qcow_aio_read"
.LASF245:
	.string	"strm"
.LASF107:
	.string	"bdrv_snapshot_list"
.LASF191:
	.string	"refcount_block_cache"
.LASF166:
	.string	"nb_snapshots"
.LASF320:
	.string	"qcow_snapshot_create"
.LASF305:
	.string	"l2_modified"
.LASF14:
	.string	"_flags"
.LASF150:
	.string	"aes_key_st"
.LASF203:
	.string	"cluster_offset"
.LASF196:
	.string	"aes_decrypt_key"
.LASF294:
	.string	"cpu_to_be64s"
.LASF296:
	.string	"length"
.LASF271:
	.string	"psn_tab"
.LASF78:
	.string	"type"
.LASF195:
	.string	"aes_encrypt_key"
.LASF80:
	.string	"next"
.LASF127:
	.string	"Byte"
.LASF252:
	.string	"create_refcount_update"
.LASF310:
	.string	"qcow_write_snapshots"
.LASF339:
	.string	"redo"
.LASF71:
	.string	"wr_bytes"
.LASF216:
	.string	"keybuf"
.LASF209:
	.string	"qcow_probe"
.LASF212:
	.string	"cow_header"
.LASF262:
	.string	"cpu_to_be32"
.LASF290:
	.string	"table_offset"
.LASF272:
	.string	"sn_tab"
.LASF131:
	.string	"voidpf"
.LASF153:
	.string	"AES_KEY"
.LASF91:
	.string	"bdrv_is_allocated"
.LASF327:
	.string	"n_start"
.LASF160:
	.string	"size"
.LASF258:
	.string	"total_size"
.LASF13:
	.string	"long long unsigned int"
.LASF49:
	.string	"uint8_t"
.LASF285:
	.string	"grow_refcount_table"
.LASF50:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF211:
	.string	"bswap32"
.LASF27:
	.string	"_chain"
.LASF135:
	.string	"next_in"
.LASF273:
	.string	"sn_info"
.LASF287:
	.string	"new_table_size"
.LASF169:
	.string	"id_str_size"
.LASF302:
	.string	"old_offset"
.LASF237:
	.string	"decompress_cluster"
.LASF85:
	.string	"bdrv_open"
.LASF342:
	.string	"index_in_cluster"
.LASF246:
	.string	"out_len"
.LASF59:
	.string	"change_cb"
.LASF171:
	.string	"extra_data_size"
.LASF259:
	.string	"header_size"
.LASF109:
	.string	"bdrv_is_inserted"
.LASF346:
	.string	"src_buf"
.LASF156:
	.string	"version"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF309:
	.string	"alloc_clusters"
.LASF163:
	.string	"l1_table_offset"
.LASF275:
	.string	"get_refcount"
.LASF118:
	.string	"QEMUSnapshotInfo"
.LASF11:
	.string	"__off64_t"
.LASF97:
	.string	"aiocb_size"
.LASF119:
	.string	"id_str"
.LASF345:
	.string	"qcow_aio_write_cb"
.LASF244:
	.string	"strm1"
.LASF292:
	.string	"old_table_size"
.LASF358:
	.string	"/home/remco/Projects/Argos/src"
.LASF136:
	.string	"avail_in"
.LASF148:
	.string	"dummy"
.LASF170:
	.string	"name_size"
.LASF155:
	.string	"magic"
.LASF111:
	.string	"bdrv_eject"
.LASF222:
	.string	"offset"
.LASF186:
	.string	"cluster_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF311:
	.string	"qcow_snapshot_delete"
.LASF173:
	.string	"BDRVQcowState"
.LASF185:
	.string	"cluster_cache"
.LASF120:
	.string	"name"
.LASF94:
	.string	"bdrv_aio_read"
.LASF62:
	.string	"boot_sector_enabled"
.LASF236:
	.string	"bswap16"
.LASF8:
	.string	"short int"
.LASF213:
	.string	"refcount_close"
.LASF69:
	.string	"sync_aiocb"
.LASF52:
	.string	"uint64_t"
.LASF229:
	.string	"bswap64"
.LASF338:
	.string	"free_in_cluster"
.LASF161:
	.string	"crypt_method"
.LASF32:
	.string	"_vtable_offset"
.LASF113:
	.string	"bdrv_ioctl"
.LASF143:
	.string	"zfree"
.LASF357:
	.string	"block-qcow2.c"
.LASF144:
	.string	"data_type"
.LASF128:
	.string	"uInt"
.LASF95:
	.string	"bdrv_aio_write"
.LASF325:
	.string	"allocate"
.LASF207:
	.string	"refcount_block_offset"
.LASF233:
	.string	"qcow_read_snapshots"
.LASF256:
	.string	"cpu_to_be16"
.LASF16:
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
.LASF337:
	.string	"alloc_bytes"
.LASF321:
	.string	"snapshots1"
.LASF28:
	.string	"_fileno"
.LASF193:
	.string	"free_byte_offset"
.LASF165:
	.string	"refcount_table_clusters"
.LASF167:
	.string	"snapshots_offset"
.LASF66:
	.string	"is_temporary"
.LASF152:
	.string	"rounds"
.LASF146:
	.string	"reserved"
.LASF168:
	.string	"QCowSnapshotHeader"
.LASF82:
	.string	"format_name"
.LASF4:
	.string	"short unsigned int"
.LASF116:
	.string	"cluster_size"
.LASF232:
	.string	"fail"
.LASF313:
	.string	"snapshot_index"
.LASF151:
	.string	"rd_key"
.LASF125:
	.string	"BlockDriverAIOCB"
.LASF133:
	.string	"free_func"
.LASF19:
	.string	"_IO_write_ptr"
.LASF202:
	.string	"nb_sectors"
.LASF132:
	.string	"alloc_func"
.LASF306:
	.string	"__PRETTY_FUNCTION__"
.LASF264:
	.string	"qcow_flush"
.LASF12:
	.string	"int64_t"
.LASF142:
	.string	"zalloc"
.LASF295:
	.string	"update_refcount"
.LASF341:
	.string	"qcow_write"
.LASF218:
	.string	"out_buf"
.LASF181:
	.string	"l1_table"
.LASF183:
	.string	"l2_cache_offsets"
.LASF265:
	.string	"qcow_get_info"
.LASF315:
	.string	"new_l1_size"
.LASF263:
	.string	"qcow_make_empty"
.LASF279:
	.string	"alloc_clusters_noref"
.LASF255:
	.string	"last"
.LASF197:
	.string	"snapshots_size"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
