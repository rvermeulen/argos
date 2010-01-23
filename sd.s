	.file	"sd.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 16
	.type	sd_csd_rw_mask, @object
	.size	sd_csd_rw_mask, 16
sd_csd_rw_mask:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	-2
	.align 32
	.type	sd_cmd_class, @object
	.size	sd_cmd_class, 256
sd_cmd_class:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	9
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.long	6
	.long	5
	.long	5
	.long	10
	.long	10
	.long	10
	.long	10
	.long	5
	.long	9
	.long	9
	.long	9
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	10
	.long	7
	.long	9
	.long	9
	.long	9
	.long	8
	.long	8
	.long	10
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.align 32
	.type	sd_cmd_type, @object
	.size	sd_cmd_type, 256
sd_cmd_type:
	.long	0
	.long	-1
	.long	1
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	1
	.long	2
	.long	2
	.long	3
	.long	2
	.long	2
	.long	-1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	3
	.long	3
	.long	3
	.long	3
	.long	2
	.long	2
	.long	3
	.long	-1
	.long	2
	.long	2
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	2
	.long	3
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.text
	.p2align 4,,15
	.type	sd_crc7, @function
sd_crc7:
.LFB109:
	.file 1 "/home/remco/Projects/Argos/src/hw/sd.c"
	.loc 1 161 0
	.loc 1 163 0
	xorl	%r8d, %r8d
	.loc 1 166 0
	xorl	%r11d, %r11d
	testq	%rsi, %rsi
	je	.L12
	.p2align 4,,7
.L10:
	movzbl	(%rdi), %r10d
	.loc 1 167 0
	movl	$7, %r9d
	.p2align 4,,7
.L9:
	.loc 1 168 0
	addl	%r8d, %r8d
	.loc 1 169 0
	movl	%r9d, %ecx
	movl	%r10d, %edx
	movl	%r8d, %eax
	sarl	%cl, %edx
	.loc 1 170 0
	movl	%r8d, %ecx
	.loc 1 169 0
	shrb	$7, %al
	andl	$1, %edx
	.loc 1 170 0
	xorl	$-119, %ecx
	.loc 1 169 0
	movzbl	%al, %eax
	.loc 1 170 0
	cmpl	%edx, %eax
	cmovne	%ecx, %r8d
	.loc 1 167 0
	decl	%r9d
	jns	.L9
	.loc 1 166 0
	incl	%r11d
	incq	%rdi
	movslq	%r11d,%rax
	cmpq	%rsi, %rax
	jb	.L10
.L12:
	.loc 1 173 0
	movzbl	%r8b, %eax
	.loc 1 174 0
	ret
.LFE109:
	.size	sd_crc7, .-sd_crc7
	.p2align 4,,15
	.type	sd_reset, @function
sd_reset:
.LFB123:
	.loc 1 364 0
	pushq	%r12
.LCFI0:
	.loc 1 372 0
	movl	$1073741824, %r12d
	.loc 1 364 0
	pushq	%rbp
.LCFI1:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI2:
	movq	%rdi, %rbx
	.loc 1 368 0
	movq	%rbp, %rdi
	.loc 1 364 0
	subq	$16, %rsp
.LCFI3:
	.loc 1 368 0
	leaq	8(%rsp), %rsi
	call	bdrv_get_geometry
	.loc 1 369 0
	movq	8(%rsp), %rax
.LBB2:
.LBB3:
	.loc 1 236 0
	leaq	20(%rbx), %rdi
	movl	$15, %esi
.LBE3:
.LBE2:
	.loc 1 378 0
	movl	$0, 4(%rbx)
	.loc 1 379 0
	movw	$0, 52(%rbx)
.LBB4:
.LBB5:
	.loc 1 196 0
	movl	$-2130706560, 8(%rbx)
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	.loc 1 201 0
	movb	$0, 12(%rbx)
.LBE7:
.LBE6:
	.loc 1 369 0
	salq	$9, %rax
.LBB8:
.LBB9:
	.loc 1 202 0
	movb	$47, 13(%rbx)
	.loc 1 203 0
	movb	$0, 14(%rbx)
.LBE9:
.LBE8:
	.loc 1 372 0
	leal	1(%rax), %edx
	cmpq	$1073741825, %rax
.LBB10:
.LBB11:
	.loc 1 204 0
	movb	$0, 15(%rbx)
	.loc 1 205 0
	movb	$0, 16(%rbx)
	.loc 1 206 0
	movb	$0, 17(%rbx)
.LBE11:
.LBE10:
	.loc 1 372 0
	cmovb	%edx, %r12d
.LBB12:
.LBB13:
	.loc 1 207 0
	movb	$0, 18(%rbx)
	.loc 1 208 0
	movb	$0, 19(%rbx)
.LBE13:
.LBE12:
	.loc 1 376 0
	movl	%r12d, %eax
.LBB14:
.LBB15:
	.loc 1 220 0
	movb	$-86, 20(%rbx)
	.loc 1 221 0
	movb	$88, 21(%rbx)
.LBE15:
.LBE14:
	.loc 1 376 0
	shrl	$21, %eax
.LBB16:
.LBB17:
	.loc 1 222 0
	movb	$89, 22(%rbx)
	.loc 1 223 0
	movb	$81, 23(%rbx)
.LBE17:
.LBE16:
	.loc 1 376 0
	incl	%eax
.LBB18:
.LBB19:
	.loc 1 224 0
	movb	$69, 24(%rbx)
	.loc 1 225 0
	movb	$77, 25(%rbx)
	.loc 1 226 0
	movb	$85, 26(%rbx)
	.loc 1 227 0
	movb	$33, 27(%rbx)
	.loc 1 228 0
	movb	$1, 28(%rbx)
	.loc 1 229 0
	movb	$-34, 29(%rbx)
	.loc 1 230 0
	movb	$-83, 30(%rbx)
	.loc 1 231 0
	movb	$-66, 31(%rbx)
	.loc 1 232 0
	movb	$-17, 32(%rbx)
	.loc 1 233 0
	movb	$0, 33(%rbx)
	.loc 1 235 0
	movb	$98, 34(%rbx)
.LBE19:
.LBE18:
	.loc 1 376 0
	movq	%rax, 8(%rsp)
.LBB20:
.LBB21:
	.loc 1 236 0
	call	sd_crc7
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 254 0
	movl	%r12d, %edx
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 236 0
	movzbl	%al, %eax
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 1 282 0
	leaq	36(%rbx), %rdi
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 1 236 0
	addl	%eax, %eax
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 1 254 0
	shrl	$18, %edx
	.loc 1 282 0
	movl	$15, %esi
	.loc 1 254 0
	decl	%edx
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 1 236 0
	orl	$1, %eax
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 258 0
	movb	$0, 36(%rbx)
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 1 236 0
	movb	%al, 35(%rbx)
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	.loc 1 265 0
	movl	%edx, %eax
	.loc 1 259 0
	movb	$38, 37(%rbx)
	.loc 1 265 0
	shrl	$10, %eax
	.loc 1 260 0
	movb	$0, 38(%rbx)
	.loc 1 261 0
	movb	$90, 39(%rbx)
	.loc 1 265 0
	andl	$3, %eax
	.loc 1 262 0
	movb	$95, 40(%rbx)
	.loc 1 263 0
	movb	$89, 41(%rbx)
	.loc 1 265 0
	orl	$-32, %eax
	.loc 1 271 0
	movb	$-1, 45(%rbx)
	.loc 1 273 0
	movb	$-33, 46(%rbx)
	.loc 1 265 0
	movb	%al, 42(%rbx)
	.loc 1 267 0
	movl	%edx, %eax
	.loc 1 269 0
	sall	$6, %edx
	orl	$63, %edx
	.loc 1 267 0
	shrl	$2, %eax
	.loc 1 275 0
	movb	$-1, 47(%rbx)
	.loc 1 269 0
	movb	%dl, 44(%rbx)
	.loc 1 267 0
	movb	%al, 43(%rbx)
	.loc 1 277 0
	movb	$-110, 48(%rbx)
	.loc 1 279 0
	movb	$96, 49(%rbx)
	.loc 1 281 0
	movb	$0, 50(%rbx)
	.loc 1 282 0
	call	sd_crc7
	movzbl	%al, %eax
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 1 301 0
	leaq	60(%rbx), %rdi
	xorl	%esi, %esi
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 1 282 0
	addl	%eax, %eax
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 1 296 0
	movl	$256, 56(%rbx)
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 1 301 0
	movl	$64, %edx
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	.loc 1 282 0
	orl	$1, %eax
	movb	%al, 51(%rbx)
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 1 301 0
	call	memset
.LBE51:
.LBE50:
	.loc 1 389 0
	movq	136(%rbx), %rdi
	.loc 1 387 0
	movq	%rbp, 752(%rbx)
	.loc 1 389 0
	testq	%rdi, %rdi
	jne	.L26
.L25:
	.loc 1 391 0
	movq	%rbp, %rdi
	call	bdrv_is_read_only
	.loc 1 392 0
	movq	8(%rsp), %rdi
	.loc 1 391 0
	movl	%eax, 128(%rbx)
	.loc 1 392 0
	salq	$2, %rdi
	call	qemu_mallocz
	.loc 1 393 0
	leaq	180(%rbx), %rdi
	.loc 1 392 0
	movq	%rax, 136(%rbx)
	.loc 1 393 0
	movl	$3, %ecx
	cld
	xorl	%eax, %eax
	rep
	stosq
	.loc 1 396 0
	movl	%r12d, 144(%rbx)
	.loc 1 394 0
	movl	$0, 152(%rbx)
	.loc 1 395 0
	movl	$0, 156(%rbx)
	.loc 1 397 0
	movl	$512, 148(%rbx)
	.loc 1 398 0
	movl	$0, 176(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L26:
	.loc 1 390 0
	call	qemu_free
	jmp	.L25
.LFE123:
	.size	sd_reset, .-sd_reset
	.p2align 4,,15
	.type	sd_cardchange, @function
sd_cardchange:
.LFB124:
	.loc 1 402 0
	pushq	%rbx
.LCFI4:
	.loc 1 402 0
	movq	%rdi, %rbx
	.loc 1 404 0
	movq	752(%rdi), %rdi
	call	bdrv_is_inserted
	movq	744(%rbx), %rdi
	movl	%eax, %esi
	call	qemu_set_irq
	.loc 1 405 0
	movq	752(%rbx), %rdi
	call	bdrv_is_inserted
	testl	%eax, %eax
	jne	.L29
	.loc 1 409 0
	popq	%rbx
	ret
	.p2align 4,,7
.L29:
	.loc 1 406 0
	movq	752(%rbx), %rsi
	movq	%rbx, %rdi
	call	sd_reset
	.loc 1 407 0
	movl	128(%rbx), %esi
	movq	736(%rbx), %rdi
	.loc 1 409 0
	popq	%rbx
	.loc 1 407 0
	jmp	qemu_set_irq
.LFE124:
	.size	sd_cardchange, .-sd_cardchange
	.p2align 4,,15
.globl sd_init
	.type	sd_init, @function
sd_init:
.LFB125:
	.loc 1 416 0
	movq	%rbx, -24(%rsp)
.LCFI5:
	movq	%r12, -16(%rsp)
.LCFI6:
	movl	%esi, %r12d
	movq	%r13, -8(%rsp)
.LCFI7:
	subq	$24, %rsp
.LCFI8:
	.loc 1 416 0
	movq	%rdi, %r13
	.loc 1 419 0
	movl	$768, %edi
	call	qemu_mallocz
	.loc 1 420 0
	movl	$512, %esi
	.loc 1 419 0
	movq	%rax, %rbx
	.loc 1 420 0
	movl	$512, %edi
	call	qemu_memalign
	.loc 1 421 0
	movl	%r12d, 204(%rbx)
	.loc 1 420 0
	movq	%rax, 760(%rbx)
	.loc 1 422 0
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	sd_reset
	.loc 1 423 0
	movq	752(%rbx), %rdi
	movq	%rbx, %rdx
	movl	$sd_cardchange, %esi
	call	bdrv_set_change_cb
	.loc 1 425 0
	movq	%rbx, %rax
	movq	8(%rsp), %r12
	movq	(%rsp), %rbx
	movq	16(%rsp), %r13
	addq	$24, %rsp
	ret
.LFE125:
	.size	sd_init, .-sd_init
	.p2align 4,,15
.globl sd_set_cb
	.type	sd_set_cb, @function
sd_set_cb:
.LFB126:
	.loc 1 428 0
	movq	%rbx, -24(%rsp)
.LCFI9:
	movq	%r12, -16(%rsp)
.LCFI10:
	movq	%rdi, %rbx
	movq	%r13, -8(%rsp)
.LCFI11:
	subq	$24, %rsp
.LCFI12:
	.loc 1 431 0
	movq	752(%rdi), %rdi
	.loc 1 428 0
	movq	%rsi, %r12
	.loc 1 430 0
	movq	%rdx, 744(%rbx)
	.loc 1 429 0
	movq	%rsi, 736(%rbx)
	.loc 1 428 0
	movq	%rdx, %r13
	.loc 1 431 0
	call	bdrv_is_read_only
	movq	%r12, %rdi
	movl	%eax, %esi
	call	qemu_set_irq
	.loc 1 432 0
	movq	752(%rbx), %rdi
	call	bdrv_is_inserted
	movq	%r13, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movl	%eax, %esi
	addq	$24, %rsp
	jmp	qemu_set_irq
.LFE126:
	.size	sd_set_cb, .-sd_set_cb
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"SD: Unknown CMD%i\n"
.LC3:
	.string	"SD: CMD%i in a wrong state\n"
.LC0:
	.string	"SD: GEN_CMD 0x%08x\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"SD: CMD%i not implemented in SPI mode\n"
	.text
	.p2align 4,,15
	.type	sd_normal_command, @function
sd_normal_command:
.LFB132:
	.loc 1 577 0
	pushq	%rbp
.LCFI13:
	.loc 1 578 0
	xorl	%ecx, %ecx
	.loc 1 577 0
	pushq	%rbx
.LCFI14:
	movq	%rdi, %rbx
	subq	$40, %rsp
.LCFI15:
	.loc 1 577 0
	movq	%rsi, 16(%rsp)
	.loc 1 580 0
	movzbl	16(%rsp), %esi
	.loc 1 577 0
	movl	%edx, 24(%rsp)
	.loc 1 580 0
	movl	%esi, %edx
	movzbl	%dl, %eax 
	.loc 1 581 0
	movzwl	22(%rsp), %edx
	.loc 1 580 0
	movl	sd_cmd_type(,%rax,4), %eax
	subl	$2, %eax
	.loc 1 581 0
	cmpl	$1, %eax
	.loc 1 584 0
	movzbl	%sil, %eax
	.loc 1 581 0
	cmovbe	%edx, %ecx
	.loc 1 584 0
	cmpl	$56, %eax
	ja	.L42
	mov	%eax, %eax
	jmp	*.L241(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L241:
	.quad	.L36
	.quad	.L40
	.quad	.L43
	.quad	.L48
	.quad	.L55
	.quad	.L42
	.quad	.L60
	.quad	.L81
	.quad	.L95
	.quad	.L103
	.quad	.L110
	.quad	.L117
	.quad	.L123
	.quad	.L128
	.quad	.L42
	.quad	.L133
	.quad	.L139
	.quad	.L150
	.quad	.L150
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L166
	.quad	.L166
	.quad	.L176
	.quad	.L227
	.quad	.L186
	.quad	.L191
	.quad	.L196
	.quad	.L42
	.quad	.L206
	.quad	.L210
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L214
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L227
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L232
	.quad	.L234
	.text
.L55:
	.loc 1 634 0
	movl	204(%rdi), %r10d
	testl	%r10d, %r10d
	je	.L35
	.p2align 4,,7
.L42:
	.loc 1 1097 0
	orl	$4194304, 56(%rbx)
	.loc 1 1099 0
	movzbl	%sil, %esi
	movl	$.LC1, %edi
.L252:
	.loc 1 1110 0
	xorl	%eax, %eax
	call	printf
.L255:
	.loc 1 1111 0
	xorl	%edx, %edx
.L32:
	.loc 1 1112 0
	addq	$40, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
.L227:
	.loc 1 1056 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	jne	.L157
.L266:
	.loc 1 1058 0
	cmpl	$4, 4(%rbx)
	je	.L271
	.p2align 4,,7
.L35:
	.loc 1 1109 0
	orl	$4194304, 56(%rbx)
	.loc 1 1110 0
	movzbl	%sil, %esi
	movl	$.LC3, %edi
	jmp	.L252
.L166:
	.loc 1 902 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	jne	.L157
	.loc 1 904 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 909 0
	movl	$6, 4(%rdi)
	.loc 1 910 0
	movl	20(%rsp), %eax
	.loc 1 911 0
	movl	$0, 220(%rdi)
	.loc 1 912 0
	movl	$0, 212(%rdi)
	.loc 1 910 0
	movl	%eax, 216(%rdi)
	.loc 1 914 0
	addl	148(%rdi), %eax
	cmpl	144(%rdi), %eax
	jbe	.L171
	.loc 1 915 0
	orl	$1073741824, 56(%rdi)
.L171:
.LBB52:
	.loc 1 502 0
	movl	216(%rbx), %eax
.LBB53:
	.loc 1 503 0
	movq	136(%rbx), %rdx
	shrl	$21, %eax
	mov	%eax, %eax
.LBE53:
.LBE52:
	.loc 1 502 0
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	je	.L172
	.loc 1 917 0
	orl	$67108864, 56(%rbx)
.L172:
	.loc 1 918 0
	movzbl	50(%rbx), %eax
	testb	$48, %al
	je	.L253
	.loc 1 919 0
	orl	$67108864, 56(%rbx)
.L253:
	.loc 1 1088 0
	movl	$1, %edx
	jmp	.L32
.L150:
	.loc 1 859 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 861 0
	movl	$5, 4(%rdi)
	.loc 1 862 0
	movl	20(%rsp), %eax
	.loc 1 863 0
	movl	$0, 220(%rdi)
	.loc 1 862 0
	movl	%eax, 216(%rdi)
	.loc 1 865 0
	addl	148(%rdi), %eax
	cmpl	144(%rdi), %eax
	jbe	.L253
	.loc 1 866 0
	orl	$1073741824, 56(%rdi)
	.loc 1 1088 0
	movl	$1, %edx
	jmp	.L32
.L186:
	.loc 1 959 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 961 0
	movl	20(%rsp), %eax
	cmpl	144(%rdi), %eax
	jae	.L258
	.loc 1 967 0
	shrl	$21, %eax
	mov	%eax, %edx
	movq	136(%rdi), %rax
	movl	$1, (%rax,%rdx,4)
.L220:
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 1046 0
	movl	$4, 4(%rbx)
	jmp	.L32
.L176:
	.loc 1 928 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	je	.L266
	jmp	.L42
.L214:
	.loc 1 1036 0
	cmpl	$4, 4(%rdi)
	.p2align 4,,2
	jne	.L35
	.loc 1 1038 0
	movzbl	50(%rdi), %edx
	testb	$48, %dl
	.p2align 4,,5
	je	.L217
	.loc 1 1039 0
	orl	$67108864, 56(%rdi)
	.loc 1 1047 0
	movl	$-1, %edx
	jmp	.L32
.L36:
	.loc 1 587 0
	cmpl	$-1, 4(%rdi)
	je	.L257
	.loc 1 593 0
	movq	752(%rdi), %rsi
	.loc 1 592 0
	movl	$0, 4(%rdi)
	.loc 1 593 0
	call	sd_reset
.L257:
	.loc 1 594 0
	movl	204(%rbx), %eax
	testl	%eax, %eax
	setne	%al
	.loc 1 801 0
	movzbl	%al, %edx
	jmp	.L32
.L48:
	.loc 1 619 0
	movl	204(%rdi), %r11d
	testl	%r11d, %r11d
	jne	.L42
	.loc 1 621 0
	movl	4(%rdi), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L35
.LBB54:
.LBB55:
	.loc 1 287 0
	addw	$17767, 52(%rdi)
.LBE55:
.LBE54:
	.loc 1 626 0
	movl	$6, %edx
	.loc 1 624 0
	movl	$3, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L139:
	.loc 1 828 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 830 0
	movl	20(%rsp), %eax
	cmpl	$512, %eax
	jbe	.L142
	.loc 1 831 0
	orl	$536870912, 56(%rdi)
	.loc 1 1088 0
	movl	$1, %edx
	jmp	.L32
.L133:
	.loc 1 811 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 813 0
	cmpl	$2, (%rdi)
	jne	.L35
	.loc 1 815 0
	movzwl	52(%rdi), %eax
	.loc 1 816 0
	xorl	%edx, %edx
	.loc 1 815 0
	cmpl	%ecx, %eax
	jne	.L32
	.loc 1 818 0
	movl	$-1, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L234:
	.loc 1 1079 0
	movl	20(%rsp), %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	call	printf
	.loc 1 1081 0
	cmpl	$4, 4(%rbx)
	je	.L272
	movzbl	16(%rsp), %esi
	jmp	.L35
.L232:
	.loc 1 1072 0
	movzwl	52(%rdi), %eax
	.loc 1 1073 0
	xorl	%edx, %edx
	.loc 1 1072 0
	cmpl	%ecx, %eax
	jne	.L32
	.loc 1 1075 0
	orl	$32, 56(%rdi)
	.loc 1 1076 0
	movb	$1, %dl
	jmp	.L32
.L196:
	.loc 1 999 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 1001 0
	movl	$5, 4(%rdi)
.LBB56:
	.loc 1 457 0
	movl	20(%rsp), %r10d
.LBB57:
	.loc 1 459 0
	xorl	%r9d, %r9d
	movl	144(%rbx), %r8d
	.loc 1 463 0
	xorl	%edi, %edi
	movl	$1, %r11d
	.loc 1 461 0
	movl	%r10d, %esi
.LBE57:
	.loc 1 457 0
	movl	%r10d, %ebp
.LBB58:
	.loc 1 461 0
	shrl	$21, %esi
.L203:
	.loc 1 464 0
	cmpl	%ebp, %r8d
	jbe	.L201
	movq	136(%rbx), %rax
	mov	%esi, %edx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L201
	.loc 1 465 0
	movl	%r11d, %eax
	movl	%edi, %ecx
	sall	%cl, %eax
	orl	%eax, %r9d
.L201:
	.loc 1 463 0
	incl	%edi
	incl	%esi
	addl	$2097152, %ebp
	cmpl	$31, %edi
	jbe	.L203
.LBE58:
.LBE56:
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 457 0
	movl	%r9d, 224(%rbx)
	.loc 1 1003 0
	movl	%r10d, 216(%rbx)
	.loc 1 1004 0
	movl	$0, 220(%rbx)
	jmp	.L32
	.p2align 4,,7
.L191:
	.loc 1 979 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 981 0
	movl	20(%rsp), %eax
	cmpl	144(%rdi), %eax
	jb	.L194
.L258:
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 982 0
	movl	$1073741824, 56(%rbx)
	jmp	.L32
.L210:
	.loc 1 1025 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 1027 0
	movl	20(%rsp), %eax
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 1027 0
	movl	%eax, 156(%rdi)
	jmp	.L32
.L206:
	.loc 1 1014 0
	cmpl	$4, 4(%rdi)
	jne	.L35
	.loc 1 1016 0
	movl	20(%rsp), %eax
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 1016 0
	movl	%eax, 152(%rdi)
	jmp	.L32
.L81:
	.loc 1 662 0
	movl	204(%rdi), %r8d
	testl	%r8d, %r8d
	jne	.L42
	.loc 1 664 0
	movl	4(%rdi), %eax
	subl	$3, %eax
	cmpl	$5, %eax
	ja	.L35
	mov	%eax, %eax
	jmp	*.L94(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L94:
	.quad	.L84
	.quad	.L87
	.quad	.L87
	.quad	.L35
	.quad	.L91
	.quad	.L89
	.text
.L60:
	.loc 1 646 0
	movl	204(%rdi), %r9d
	testl	%r9d, %r9d
	jne	.L42
	.loc 1 648 0
	cmpl	$2, (%rdi)
	jne	.L35
.LBB59:
	.loc 1 471 0
	movl	20(%rsp), %r8d
.LBB60:
	.loc 1 475 0
	movb	$0, 224(%rdi)
	.loc 1 476 0
	movb	$1, 225(%rdi)
	.loc 1 477 0
	movb	$-128, 226(%rdi)
	.loc 1 478 0
	movb	$1, 227(%rdi)
	.loc 1 479 0
	movb	$-128, 228(%rdi)
	.loc 1 473 0
	movl	%r8d, %r9d
	.loc 1 480 0
	movb	$1, 229(%rdi)
	.loc 1 481 0
	movb	$-128, 230(%rdi)
	.loc 1 482 0
	movb	$1, 231(%rdi)
	.loc 1 483 0
	movb	$-128, 232(%rdi)
	.loc 1 473 0
	shrl	$31, %r9d
	.loc 1 484 0
	movb	$1, 233(%rdi)
	.loc 1 485 0
	movb	$-128, 234(%rdi)
	.loc 1 486 0
	movb	$67, 235(%rdi)
	.loc 1 487 0
	movb	$-128, 236(%rdi)
	.loc 1 488 0
	movb	$3, 237(%rdi)
	.loc 1 489 0
	xorl	%edi, %edi
.L68:
	.loc 1 490 0
	leal	0(,%rdi,4), %ecx
	movl	%r8d, %esi
	shrl	%cl, %esi
	andl	$15, %esi
	.loc 1 491 0
	testl	%r9d, %r9d
	setne	%dl
	xorl	%eax, %eax
	cmpl	$15, %esi
	setne	%al
	testl	%edx, %eax
	je	.L67
	.loc 1 492 0
	movslq	%edi,%rax
	movl	%esi, 180(%rbx,%rax,4)
.L67:
	.loc 1 493 0
	movl	%edi, %eax
	movl	%ecx, %edx
	.loc 1 489 0
	incl	%edi
	.loc 1 493 0
	sarl	%eax
	andl	$4, %edx
	addl	$14, %eax
	movl	%edx, %ecx
	sall	%cl, %esi
	cltq
	.loc 1 489 0
	cmpl	$5, %edi
	.loc 1 493 0
	movb	%sil, 224(%rax,%rbx)
	.loc 1 489 0
	jle	.L68
	.loc 1 495 0
	leaq	241(%rbx), %rdi
	movl	$5, %edx
	xorl	%eax, %eax
	cld
	movq	%rdx, %rcx
.LBB61:
.LBB62:
	.loc 1 180 0
	leaq	224(%rbx), %r8
	.loc 1 179 0
	xorl	%esi, %esi
.LBE62:
.LBE61:
	.loc 1 495 0
	rep
	stosq
.LBB63:
.LBB64:
	.loc 1 183 0
	xorl	%r9d, %r9d
.LBE64:
.LBE63:
	.loc 1 495 0
	movl	$0, (%rdi)
	addq	$4, %rdi
	movw	$0, (%rdi)
	movb	$0, 2(%rdi)
.L77:
	movzwl	(%r8), %edi
.LBB65:
.LBB66:
	.loc 1 184 0
	movl	$15, %ecx
	.p2align 4,,7
.L76:
	.loc 1 185 0
	addl	%esi, %esi
	.loc 1 186 0
	movl	%edi, %edx
	movl	%esi, %eax
	sarl	%cl, %edx
	.loc 1 187 0
	movl	%esi, %ebp
	.loc 1 186 0
	shrw	$15, %ax
	andl	$1, %edx
	.loc 1 187 0
	xorw	$4113, %bp
	.loc 1 186 0
	movzwl	%ax, %eax
	.loc 1 187 0
	cmpl	%edx, %eax
	cmovne	%ebp, %esi
	.loc 1 184 0
	decl	%ecx
	jns	.L76
	.loc 1 183 0
	incl	%r9d
	addq	$2, %r8
	movslq	%r9d,%rax
	cmpq	$128, %rax
	jb	.L77
.LBE66:
.LBE65:
	.loc 1 177 0
	movzwl	%si, %edx
.LBE60:
.LBE59:
	.loc 1 651 0
	movl	$5, 4(%rbx)
.LBB67:
.LBB68:
	.loc 1 497 0
	movl	%edx, %eax
	.loc 1 498 0
	movb	%dl, 290(%rbx)
	.loc 1 497 0
	sarl	$8, %eax
	movb	%al, 289(%rbx)
.L264:
.LBE68:
.LBE67:
	.loc 1 1061 0
	movl	$0, 216(%rbx)
	jmp	.L259
.L43:
	.loc 1 606 0
	movl	204(%rdi), %ebp
	testl	%ebp, %ebp
	jne	.L42
	.loc 1 608 0
	cmpl	$1, 4(%rdi)
	jne	.L35
	.loc 1 611 0
	movl	$2, %edx
	.loc 1 610 0
	movl	$2, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L40:
	.loc 1 599 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 602 0
	movl	$4, 4(%rdi)
	jmp	.L32
.L128:
	.loc 1 798 0
	cmpl	$2, (%rdi)
	jne	.L35
	.loc 1 800 0
	movzwl	52(%rdi), %eax
	.loc 1 801 0
	cmpl	%ecx, %eax
	sete	%al
	movzbl	%al, %edx
	jmp	.L32
.L123:
	.loc 1 781 0
	movl	4(%rdi), %eax
	cmpl	$5, %eax
	je	.L220
	cmpl	$6, %eax
	jne	.L35
	.p2align 4,,5
	jmp	.L220
	.p2align 4,,7
.L117:
	.loc 1 763 0
	movl	204(%rdi), %eax
	testl	%eax, %eax
	.p2align 4,,2
	jne	.L42
	.loc 1 765 0
	cmpl	$4, 4(%rdi)
	.p2align 4,,2
	jne	.L35
	.loc 1 767 0
	movl	$5, 4(%rdi)
	.loc 1 768 0
	movl	20(%rsp), %eax
	.loc 1 769 0
	movl	$0, 220(%rdi)
	.loc 1 768 0
	movl	%eax, 216(%rdi)
	.loc 1 771 0
	addl	148(%rdi), %eax
	cmpl	144(%rdi), %eax
	jbe	.L255
	.loc 1 772 0
	orl	$1073741824, 56(%rdi)
	jmp	.L255
.L110:
	.loc 1 741 0
	movl	4(%rdi), %eax
	cmpl	$3, %eax
	je	.L112
	cmpl	$4, %eax
	.p2align 4,,3
	jne	.L35
	.loc 1 749 0
	movl	204(%rdi), %edx
	testl	%edx, %edx
	je	.L35
	.loc 1 752 0
	movq	20(%rdi), %rax
	.loc 1 751 0
	movl	$5, 4(%rdi)
	.loc 1 752 0
	movq	%rax, 224(%rdi)
	movq	28(%rdi), %rax
.L263:
	.loc 1 730 0
	movq	%rax, 232(%rbx)
	.loc 1 731 0
	movl	20(%rsp), %eax
	movl	%eax, 216(%rbx)
.L259:
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 732 0
	movl	$0, 220(%rbx)
	jmp	.L32
.L103:
	.loc 1 719 0
	movl	4(%rdi), %eax
	cmpl	$3, %eax
	je	.L105
	cmpl	$4, %eax
	jne	.L35
	.loc 1 727 0
	movl	204(%rdi), %ecx
	testl	%ecx, %ecx
	je	.L35
	.loc 1 730 0
	movq	36(%rdi), %rax
	.loc 1 729 0
	movl	$5, 4(%rdi)
	.loc 1 730 0
	movq	%rax, 224(%rdi)
	movq	44(%rdi), %rax
	jmp	.L263
.L95:
	.loc 1 701 0
	movl	4(%rdi), %edi
	testl	%edi, %edi
	jne	.L35
	.loc 1 706 0
	movl	20(%rsp), %edx
	movl	%edx, %eax
	shrl	$8, %eax
	testl	%eax, %eax
	je	.L99
	movl	%edx, %eax
	movl	$-1, %ecx
	movl	%edx, %esi
	xorb	%al, %al
	bsfl	%eax, %eax
	cmove	%ecx, %eax
	incl	%eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	testl	%esi, %esi
	je	.L98
.L99:
	.loc 1 707 0
	movl	204(%rbx), %eax
	movl	$0, 124(%rbx)
	cmpl	$1, %eax
	sbbl	%edx, %edx
	notl	%edx
	andl	$7, %edx
	jmp	.L32
.L89:
	.loc 1 681 0
	movzwl	52(%rdi), %eax
	.loc 1 682 0
	xorl	%edx, %edx
	.loc 1 681 0
	cmpl	%ecx, %eax
	jne	.L32
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 684 0
	movl	$7, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L91:
	.loc 1 688 0
	movzwl	52(%rdi), %eax
	cmpl	%ecx, %eax
	je	.L35
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 691 0
	movl	$8, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L87:
	.loc 1 674 0
	movzwl	52(%rdi), %eax
	cmpl	%ecx, %eax
	je	.L35
	.loc 1 1047 0
	movl	$-1, %edx
	.loc 1 677 0
	movl	$3, 4(%rdi)
	jmp	.L32
	.p2align 4,,7
.L84:
	.loc 1 666 0
	movzwl	52(%rdi), %eax
	.loc 1 667 0
	xorl	%edx, %edx
	.loc 1 666 0
	cmpl	%ecx, %eax
	jne	.L32
	jmp	.L220
	.p2align 4,,7
.L157:
	.loc 1 1104 0
	orl	$4194304, 56(%rbx)
	.loc 1 1105 0
	movzbl	%sil, %esi
	movl	$.LC2, %edi
	jmp	.L252
.L271:
	.loc 1 1060 0
	movl	$6, 4(%rbx)
	jmp	.L264
.L105:
	.loc 1 721 0
	movzwl	52(%rdi), %eax
	.loc 1 722 0
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	sete	%dl
	leal	(%rdx,%rdx,2), %edx
	jmp	.L32
.L112:
	.loc 1 743 0
	movzwl	52(%rdi), %eax
	.loc 1 744 0
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	sete	%dl
	addl	%edx, %edx
	jmp	.L32
.L272:
	.loc 1 1084 0
	movl	20(%rsp), %eax
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 1083 0
	movl	$0, 220(%rbx)
	.loc 1 1084 0
	andl	$1, %eax
	.loc 1 1085 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	addl	$6, %eax
	movl	%eax, 4(%rbx)
	jmp	.L32
.L217:
.LBB69:
.LBB70:
	.loc 1 438 0
	movl	152(%rdi), %eax
	testl	%eax, %eax
	je	.L219
	movl	156(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.L218
.L219:
	.loc 1 439 0
	orl	$268435456, 56(%rbx)
	jmp	.L220
.L194:
.LBE70:
.LBE69:
	.loc 1 987 0
	shrl	$21, %eax
	mov	%eax, %edx
	movq	136(%rdi), %rax
	movl	$0, (%rax,%rdx,4)
	jmp	.L220
.L142:
	.loc 1 1088 0
	movl	$1, %edx
	.loc 1 833 0
	movl	%eax, 148(%rdi)
	jmp	.L32
.L218:
.LBB71:
.LBB72:
	.loc 1 449 0
	orl	$64, %edx
	.loc 1 445 0
	movl	%ecx, %esi
	.loc 1 447 0
	movl	$0, 152(%rdi)
	.loc 1 449 0
	movb	%dl, 50(%rdi)
	.loc 1 451 0
	movl	%eax, %edx
	.loc 1 445 0
	shrl	$21, %esi
	.loc 1 451 0
	shrl	$21, %edx
	.loc 1 448 0
	movl	$0, 156(%rdi)
	.loc 1 451 0
	cmpl	%esi, %edx
	jg	.L220
	movq	136(%rdi), %rcx
	movl	$7, 4(%rdi)
.L225:
	.loc 1 452 0
	movslq	%edx,%rax
	movl	(%rcx,%rax,4), %edi
	testl	%edi, %edi
	je	.L223
	.loc 1 453 0
	orl	$32768, 56(%rbx)
.L223:
	.loc 1 451 0
	incl	%edx
	cmpl	%esi, %edx
	jle	.L225
	jmp	.L220
.L98:
.LBE72:
.LBE71:
	.loc 1 710 0
	movl	%edx, 124(%rbx)
	.loc 1 711 0
	movl	$7, %edx
	.p2align 4,,2
	jmp	.L32
.LFE132:
	.size	sd_normal_command, .-sd_normal_command
	.section	.rodata.str1.1
.LC4:
	.string	"SD: Card is locked"
.LC5:
	.string	"SD: ACMD%i in a wrong state\n"
	.text
	.p2align 4,,15
.globl sd_do_command
	.type	sd_do_command, @function
sd_do_command:
.LFB134:
	.loc 1 1225 0
	movq	%rbx, -32(%rsp)
.LCFI16:
	movq	%rbp, -24(%rsp)
.LCFI17:
	movq	%rdi, %rbx
	movq	%r12, -16(%rsp)
.LCFI18:
	movq	%r13, -8(%rsp)
.LCFI19:
	subq	$56, %rsp
.LCFI20:
	.loc 1 1226 0
	movl	56(%rdi), %r13d
	.loc 1 1230 0
	movq	752(%rdi), %rdi
	.loc 1 1225 0
	movq	%rdx, %r12
	movq	%rsi, %rbp
	.loc 1 1230 0
	call	bdrv_is_inserted
	.loc 1 1231 0
	xorl	%edx, %edx
	.loc 1 1230 0
	testl	%eax, %eax
	je	.L273
.LBB73:
.LBB74:
	.loc 1 307 0
	movl	$64, %esi
	orb	(%rbp), %sil
	movb	%sil, (%rsp)
	.loc 1 308 0
	movl	4(%rbp), %edx
	movl	%edx, %eax
	.loc 1 311 0
	movb	%dl, 4(%rsp)
	.loc 1 308 0
	shrl	$24, %eax
	movb	%al, 1(%rsp)
	.loc 1 309 0
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rsp)
	.loc 1 310 0
	movl	%edx, %eax
	shrl	$8, %eax
	movb	%al, 3(%rsp)
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	.loc 1 106 0
	movl	4(%rbx), %edi
.LBE76:
.LBE75:
	.loc 1 1239 0
	movl	56(%rbx), %edx
.LBB77:
.LBB78:
	.loc 1 106 0
	leal	1(%rdi), %eax
.LBE78:
.LBE77:
	.loc 1 1239 0
	andl	$-12590593, %edx
.LBB79:
.LBB80:
	.loc 1 106 0
	cmpl	$9, %eax
	jbe	.L357
.L277:
	.loc 1 128 0
	movl	%edi, %ecx
	sall	$9, %ecx
	orl	%edx, %ecx
.LBE80:
.LBE79:
	.loc 1 1242 0
	testl	$33554432, %r13d
.LBB81:
.LBB82:
	.loc 1 128 0
	movl	%ecx, %r8d
	movl	%ecx, 56(%rbx)
.LBE82:
.LBE81:
	.loc 1 1242 0
	je	.L290
	.loc 1 1243 0
	testb	$32, %r13b
	jne	.L358
	movzbl	(%rbp), %esi
	movl	%esi, %edx
	movzbl	%dl, %eax 
	movl	sd_cmd_class(,%rax,4), %eax
	testl	%eax, %eax
	sete	%dl
	cmpl	$7, %eax
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L292
	cmpb	$16, %sil
	je	.L292
	cmpb	$55, %sil
	.p2align 4,,7
.L349:
	jne	.L290
	.p2align 4,,7
.L292:
	.loc 1 1249 0
	orl	$4194304, %ecx
	.loc 1 1250 0
	movl	$.LC4, %edi
	.loc 1 1249 0
	movl	%ecx, 56(%rbx)
	.loc 1 1250 0
	call	puts
	.loc 1 1251 0
	xorl	%edx, %edx
	.p2align 4,,7
.L273:
	.loc 1 1316 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movl	%edx, %eax
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L357:
.LBB83:
.LBB84:
	.loc 1 106 0
	mov	%eax, %eax
	jmp	*.L288(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L288:
	.quad	.L278
	.quad	.L281
	.quad	.L281
	.quad	.L281
	.quad	.L287
	.quad	.L287
	.quad	.L287
	.quad	.L287
	.quad	.L287
	.quad	.L287
	.text
	.p2align 4,,7
.L290:
.LBE84:
.LBE83:
	.loc 1 1254 0
	testb	$32, %r13b
	je	.L294
.LBB85:
	.loc 1 1115 0
	movq	(%rbp), %r9
	movq	%r9, (%rsp)
.LBB86:
	.loc 1 1118 0
	movzbl	(%rsp), %esi
.LBE86:
	.loc 1 1115 0
	movl	8(%rbp), %edx
.LBB87:
	.loc 1 1122 0
	movzbl	%sil, %eax
.LBE87:
	.loc 1 1115 0
	movl	%edx, 8(%rsp)
.LBB88:
	.loc 1 1122 0
	subl	$6, %eax
	cmpl	$45, %eax
	ja	.L329
	mov	%eax, %eax
	jmp	*.L330(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L330:
	.quad	.L298
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L303
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L307
	.quad	.L321
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L315
	.quad	.L321
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L329
	.quad	.L325
	.text
	.p2align 4,,7
.L358:
.LBE88:
.LBE85:
	.loc 1 1243 0
	cmpb	$41, (%rbp)
	jmp	.L349
.L287:
.LBB89:
.LBB90:
	.loc 1 123 0
	movl	$2, (%rbx)
	.p2align 4,,5
	jmp	.L277
.L281:
	.loc 1 114 0
	movl	$1, (%rbx)
	.p2align 4,,5
	jmp	.L277
.L278:
	.loc 1 108 0
	movl	$0, (%rbx)
	.p2align 4,,5
	jmp	.L277
.L329:
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	.loc 1 1216 0
	andl	$-33, %ecx
	movq	%r9, %rsi
	movq	%rbx, %rdi
	movl	%ecx, 56(%rbx)
	call	sd_normal_command
.L350:
	movl	56(%rbx), %r8d
.L301:
.LBE92:
.LBE91:
	.loc 1 1256 0
	andl	$-33, %r8d
	.loc 1 1115 0
	movl	%eax, %edx
	.loc 1 1256 0
	movl	%r8d, 56(%rbx)
.L331:
	.loc 1 1260 0
	movzbl	(%rbp), %eax
	movl	%eax, 208(%rbx)
	.loc 1 1262 0
	leal	1(%rdx), %eax
	cmpl	$8, %eax
	ja	.L345
	mov	%eax, %eax
	jmp	*.L346(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L346:
	.quad	.L334
	.quad	.L345
	.quad	.L334
	.quad	.L336
	.quad	.L337
	.quad	.L338
	.quad	.L345
	.quad	.L340
	.quad	.L342
	.text
	.p2align 4,,7
.L345:
	.loc 1 1296 0
	xorl	%eax, %eax
.L332:
	.loc 1 1301 0
	xorl	%edx, %edx
	testb	$64, 58(%rbx)
	.loc 1 1316 0
	movq	32(%rsp), %rbp
	movq	24(%rsp), %rbx
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	.loc 1 1301 0
	cmove	%eax, %edx
	.loc 1 1316 0
	addq	$56, %rsp
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L294:
	.loc 1 1258 0
	movl	8(%rbp), %edx
	movq	(%rbp), %rsi
	movq	%rbx, %rdi
	call	sd_normal_command
	movl	%eax, %edx
	jmp	.L331
.L321:
.LBB93:
.LBB94:
	.loc 1 1191 0
	cmpl	$4, %edi
	.loc 1 1192 0
	movl	$1, %eax
	.loc 1 1191 0
	je	.L301
.L297:
	.loc 1 1220 0
	movzbl	%sil, %esi
	movl	$.LC5, %edi
	xorl	%eax, %eax
	call	printf
	xorl	%eax, %eax
	jmp	.L350
.L342:
.LBE94:
.LBE93:
.LBB95:
.LBB96:
	.loc 1 357 0
	movzbl	127(%rbx), %eax
	movb	%al, (%r12)
	.loc 1 358 0
	movzwl	126(%rbx), %eax
	movb	%al, 1(%r12)
	.loc 1 359 0
	movl	124(%rbx), %eax
	shrl	$8, %eax
	movb	%al, 2(%r12)
	.loc 1 360 0
	movl	124(%rbx), %eax
	movb	%al, 3(%r12)
.L352:
.LBE96:
.LBE95:
	.loc 1 1291 0
	movl	$4, %eax
	jmp	.L332
.L340:
.LBB97:
.LBB98:
	.loc 1 345 0
	movl	56(%rbx), %ecx
	.loc 1 344 0
	movzwl	52(%rbx), %esi
	.loc 1 345 0
	movl	%ecx, %edx
	movl	%ecx, %eax
	andw	$8191, %cx
	shrl	$8, %edx
	shrl	$6, %eax
	.loc 1 350 0
	movb	%sil, 1(%r12)
	.loc 1 345 0
	andw	$8192, %ax
	andw	$-16384, %dx
	orl	%eax, %edx
	.loc 1 349 0
	movl	%esi, %eax
	shrw	$8, %ax
	.loc 1 345 0
	orl	%ecx, %edx
	.loc 1 349 0
	movb	%al, (%r12)
	.loc 1 351 0
	movl	%edx, %eax
	shrw	$8, %ax
.L355:
	movb	%al, 2(%r12)
.LBE98:
.LBE97:
	.loc 1 1291 0
	movl	$4, %eax
.LBB99:
.LBB100:
	.loc 1 352 0
	movb	%dl, 3(%r12)
	jmp	.L332
.L338:
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	.loc 1 333 0
	movzbl	11(%rbx), %eax
	movb	%al, (%r12)
	.loc 1 334 0
	movzwl	10(%rbx), %eax
	movb	%al, 1(%r12)
	.loc 1 335 0
	movl	8(%rbx), %eax
	shrl	$8, %eax
	movb	%al, 2(%r12)
	.loc 1 336 0
	movl	8(%rbx), %eax
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	.loc 1 360 0
	movb	%al, 3(%r12)
	jmp	.L352
.L337:
.LBE104:
.LBE103:
	.loc 1 1275 0
	movq	36(%rbx), %rax
	movq	%rax, (%r12)
	movq	44(%rbx), %rax
.L353:
	movq	%rax, 8(%r12)
	.loc 1 1276 0
	movl	$16, %eax
	jmp	.L332
.L336:
	.loc 1 1270 0
	movq	20(%rbx), %rax
	movq	%rax, (%r12)
	movq	28(%rbx), %rax
	jmp	.L353
.L334:
.LBB105:
.LBB106:
	.loc 1 322 0
	movl	56(%rbx), %eax
	andl	$8396288, %r13d
	movl	%eax, %edx
	.loc 1 323 0
	andl	$46555127, %eax
	.loc 1 322 0
	andl	$-8396289, %edx
	.loc 1 323 0
	movl	%eax, 56(%rbx)
	.loc 1 322 0
	orl	%r13d, %edx
	.loc 1 325 0
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, (%r12)
	.loc 1 326 0
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 1(%r12)
	.loc 1 327 0
	movl	%edx, %eax
	shrl	$8, %eax
	jmp	.L355
.L325:
.LBE106:
.LBE105:
.LBB107:
.LBB108:
	.loc 1 1202 0
	cmpl	$4, %edi
	jne	.L297
	.loc 1 1204 0
	movl	$5, 4(%rbx)
.L354:
	.loc 1 1206 0
	movl	$1, %eax
	.loc 1 1205 0
	movl	$0, 216(%rbx)
	.loc 1 1206 0
	movl	$0, 220(%rbx)
	jmp	.L301
.L307:
	.loc 1 1148 0
	cmpl	$4, %edi
	jne	.L297
	.loc 1 1150 0
	movl	212(%rbx), %eax
	movl	%eax, 224(%rbx)
	jmp	.L354
.L315:
	.loc 1 1172 0
	movl	204(%rbx), %eax
	testl	%eax, %eax
	je	.L316
	.loc 1 1206 0
	movl	$1, %eax
	.loc 1 1174 0
	movl	$4, 4(%rbx)
	jmp	.L301
.L298:
	.loc 1 1124 0
	cmpl	$4, %edi
	jne	.L297
	.loc 1 1127 0
	movzbl	4(%rsp), %eax
	.loc 1 1126 0
	movzbl	60(%rbx), %edx
	.loc 1 1127 0
	andl	$3, %eax
	.loc 1 1126 0
	andl	$63, %edx
	.loc 1 1127 0
	sall	$6, %eax
	orl	%eax, %edx
	.loc 1 1206 0
	movl	$1, %eax
	.loc 1 1127 0
	movb	%dl, 60(%rbx)
	jmp	.L301
.L303:
	.loc 1 1136 0
	cmpl	$4, %edi
	jne	.L297
	jmp	.L354
.L316:
	.loc 1 1177 0
	testl	%edi, %edi
	.p2align 4,,7
	jne	.L297
	.loc 1 1180 0
	movl	4(%rsp), %eax
	testl	%eax, %eax
	.p2align 4,,4
	je	.L319
	.loc 1 1181 0
	movl	$1, 4(%rbx)
.L319:
	movl	$4, %eax
	jmp	.L301
.LBE108:
.LBE107:
.LFE134:
	.size	sd_do_command, .-sd_do_command
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"sd_blk_read: read error on host side"
	.text
	.p2align 4,,15
	.type	sd_blk_read, @function
sd_blk_read:
.LFB135:
	.loc 1 1320 0
	movq	%rbx, -32(%rsp)
.LCFI21:
	movq	%rbp, -24(%rsp)
.LCFI22:
	movq	%rdi, %rbp
	movq	%r12, -16(%rsp)
.LCFI23:
	movq	%r13, -8(%rsp)
.LCFI24:
	subq	$40, %rsp
.LCFI25:
	.loc 1 1323 0
	movq	752(%rdi), %rdi
	.loc 1 1320 0
	movl	%esi, %ebx
	movl	%edx, %r12d
	.loc 1 1321 0
	leal	(%rbx,%r12), %r13d
	.loc 1 1323 0
	testq	%rdi, %rdi
	jne	.L367
.L366:
	.loc 1 1338 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	.loc 1 1332 0
	movl	$.LC6, %edi
	.loc 1 1338 0
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 1332 0
	jmp	puts
	.p2align 4,,7
.L367:
	.loc 1 1323 0
	movq	760(%rbp), %rdx
	shrl	$9, %esi
	movl	$1, %ecx
	mov	%esi, %esi
	call	bdrv_read
	incl	%eax
	je	.L366
	.loc 1 1328 0
	movl	%ebx, %eax
	andl	$-512, %eax
	addl	$512, %eax
	cmpl	%r13d, %eax
	jae	.L362
	.loc 1 1329 0
	movq	760(%rbp), %rsi
	movl	%ebx, %eax
	leaq	224(%rbp), %rdi
	andl	$511, %eax
	andl	$511, %ebx
	movl	$512, %edx
	subl	%eax, %edx
	addq	%rbx, %rsi
	call	memcpy
	.loc 1 1331 0
	movq	760(%rbp), %rdx
	movl	%r13d, %esi
	movq	752(%rbp), %rdi
	shrl	$9, %esi
	movl	$1, %ecx
	mov	%esi, %esi
	call	bdrv_read
	incl	%eax
	je	.L366
	.loc 1 1335 0
	movq	%rbp, %rdi
	movq	760(%rbp), %rsi
	movq	%r13, %rdx
	subq	%rbx, %rdi
	andl	$511, %edx
	addq	$736, %rdi
.L365:
	.loc 1 1338 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 1337 0
	jmp	memcpy
.L362:
	movq	%rbx, %rsi
	leaq	224(%rbp), %rdi
	mov	%r12d, %edx
	andl	$511, %esi
	addq	760(%rbp), %rsi
	jmp	.L365
.LFE135:
	.size	sd_blk_read, .-sd_blk_read
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"sd_blk_write: read error on host side"
	.align 8
.LC8:
	.string	"sd_blk_write: write error on host side"
	.text
	.p2align 4,,15
	.type	sd_blk_write, @function
sd_blk_write:
.LFB136:
	.loc 1 1341 0
	movq	%rbx, -32(%rsp)
.LCFI26:
	movq	%rbp, -24(%rsp)
.LCFI27:
	movl	%edx, %ebp
	movq	%r12, -16(%rsp)
.LCFI28:
	movq	%r13, -8(%rsp)
.LCFI29:
	subq	$40, %rsp
.LCFI30:
	.loc 1 1344 0
	testl	$511, %esi
	.loc 1 1341 0
	movl	%esi, %ebx
	movq	%rdi, %r12
	.loc 1 1344 0
	setne	%dl
	cmpl	$511, %ebp
	.loc 1 1342 0
	leal	(%rbx,%rbp), %r13d
	.loc 1 1344 0
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L369
	.loc 1 1345 0
	movq	752(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L382
.L381:
	.loc 1 1358 0
	movl	$.LC7, %edi
.L379:
	.loc 1 1369 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 1367 0
	jmp	puts
	.p2align 4,,7
.L382:
	.loc 1 1345 0
	movq	760(%r12), %rdx
	shrl	$9, %esi
	movl	$1, %ecx
	mov	%esi, %esi
	call	bdrv_read
	incl	%eax
	je	.L381
	.p2align 4,,7
.L369:
	.loc 1 1350 0
	movl	%ebx, %eax
	andl	$-512, %eax
	addl	$512, %eax
	cmpl	%r13d, %eax
	jae	.L372
	.loc 1 1351 0
	movq	760(%r12), %rdi
	movq	%rbx, %rbp
	movl	%ebx, %eax
	andl	$511, %eax
	andl	$511, %ebp
	leaq	224(%r12), %rsi
	movl	$512, %edx
	.loc 1 1352 0
	shrl	$9, %ebx
	.loc 1 1351 0
	subl	%eax, %edx
	addq	%rbp, %rdi
	call	memcpy
	.loc 1 1352 0
	movq	760(%r12), %rdx
	movq	752(%r12), %rdi
	mov	%ebx, %esi
	movl	$1, %ecx
	call	bdrv_write
	incl	%eax
	je	.L378
	.loc 1 1357 0
	movl	%r13d, %eax
	movq	760(%r12), %rdx
	movq	752(%r12), %rdi
	shrl	$9, %eax
	movl	$1, %ecx
	mov	%eax, %ebx
	movq	%rbx, %rsi
	call	bdrv_read
	incl	%eax
	je	.L381
	.loc 1 1361 0
	movq	760(%r12), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	subq	%rbp, %rsi
	andl	$511, %edx
	addq	$736, %rsi
	call	memcpy
	.loc 1 1362 0
	movq	760(%r12), %rdx
	movq	752(%r12), %rdi
	movl	$1, %ecx
	movq	%rbx, %rsi
.L380:
	.loc 1 1366 0
	call	bdrv_write
	incl	%eax
	je	.L378
	.loc 1 1369 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L372:
	.loc 1 1365 0
	movq	%rbx, %rdi
	leaq	224(%r12), %rsi
	mov	%ebp, %edx
	andl	$511, %edi
	addq	760(%r12), %rdi
	call	memcpy
	.loc 1 1366 0
	movq	752(%r12), %rdi
	testq	%rdi, %rdi
	jne	.L383
.L378:
	.loc 1 1367 0
	movl	$.LC8, %edi
	jmp	.L379
.L383:
	.loc 1 1366 0
	movq	760(%r12), %rdx
	shrl	$9, %ebx
	movl	$1, %ecx
	mov	%ebx, %esi
	jmp	.L380
.LFE136:
	.size	sd_blk_write, .-sd_blk_write
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"sd_write_data: not in Receiving-Data state"
	.align 8
.LC11:
	.string	"sd_write_data: unknown command"
	.align 8
.LC10:
	.string	"SD: Card force-erased by CMD42"
	.text
	.p2align 4,,15
.globl sd_write_data
	.type	sd_write_data, @function
sd_write_data:
.LFB137:
	.loc 1 1377 0
	movq	%rbx, -32(%rsp)
.LCFI31:
	movq	%rbp, -24(%rsp)
.LCFI32:
	movq	%rdi, %rbp
	movq	%r12, -16(%rsp)
.LCFI33:
	movq	%r13, -8(%rsp)
.LCFI34:
	subq	$40, %rsp
.LCFI35:
	.loc 1 1380 0
	movq	752(%rdi), %rdi
	.loc 1 1377 0
	movl	%esi, %ebx
	.loc 1 1380 0
	testq	%rdi, %rdi
	jne	.L455
.L384:
	.loc 1 1495 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L455:
	.loc 1 1380 0
	call	bdrv_is_inserted
	testl	%eax, %eax
	je	.L384
	.loc 1 1383 0
	cmpl	$6, 4(%rbp)
	.loc 1 1384 0
	movl	$.LC9, %edi
	.loc 1 1383 0
	je	.L456
.L453:
	.loc 1 1495 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	.loc 1 1492 0
	jmp	puts
.L456:
	.loc 1 1388 0
	movl	56(%rbp), %r10d
	testl	$1140850688, %r10d
	jne	.L384
	.loc 1 1391 0
	movl	208(%rbp), %eax
	subl	$24, %eax
	cmpl	$32, %eax
	ja	.L443
	mov	%eax, %eax
	jmp	*.L444(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L444:
	.quad	.L390
	.quad	.L392
	.quad	.L397
	.quad	.L409
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L422
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L443
	.quad	.L441
	.text
.L443:
	.loc 1 1492 0
	movl	$.LC11, %edi
	jmp	.L453
.L441:
	.loc 1 1484 0
	movl	220(%rbp), %eax
	mov	%eax, %edx
	incl	%eax
	.loc 1 1485 0
	cmpl	148(%rbp), %eax
	.loc 1 1484 0
	movb	%bl, 224(%rdx,%rbp)
	movl	%eax, 220(%rbp)
	.loc 1 1485 0
	jb	.L384
.L452:
	.loc 1 1487 0
	movl	$4, 4(%rbp)
	jmp	.L384
.L422:
	.loc 1 1473 0
	movl	220(%rbp), %eax
	.loc 1 1474 0
	movl	148(%rbp), %ecx
	.loc 1 1473 0
	mov	%eax, %edx
	incl	%eax
	.loc 1 1474 0
	cmpl	%ecx, %eax
	.loc 1 1473 0
	movb	%bl, 224(%rdx,%rbp)
	movl	%eax, 220(%rbp)
	.loc 1 1474 0
	jb	.L384
.LBB109:
.LBB110:
	.loc 1 510 0
	movzbl	224(%rbp), %eax
	.loc 1 518 0
	xorl	%ebx, %ebx
	.loc 1 510 0
	movl	%eax, %edx
	.loc 1 511 0
	movl	%eax, %r12d
	.loc 1 512 0
	movl	%eax, %r13d
	.loc 1 510 0
	shrl	$3, %edx
	.loc 1 513 0
	movl	%eax, %r9d
	.loc 1 511 0
	andl	$4, %r12d
	.loc 1 510 0
	andl	$1, %edx
	.loc 1 512 0
	andl	$2, %r13d
	.loc 1 513 0
	andl	$1, %r9d
	.loc 1 515 0
	cmpl	$1, %ecx
	jle	.L425
	.loc 1 516 0
	movzbl	225(%rbp), %ebx
.L425:
	.loc 1 520 0
	testl	%edx, %edx
	je	.L426
	.loc 1 521 0
	testl	$33554432, %r10d
	je	.L434
	decl	%ecx
	setg	%dl
	testl	%r9d, %r9d
	setne	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L434
	orl	%r12d, %r13d
	jne	.L434
	movl	128(%rbp), %eax
	testl	%eax, %eax
	jne	.L434
	testb	$32, 50(%rbp)
	je	.L457
.L434:
	.loc 1 556 0
	orl	$16777216, %r10d
	.loc 1 572 0
	movl	%r10d, 56(%rbp)
	jmp	.L452
.L409:
.LBE110:
.LBE109:
	.loc 1 1449 0
	movl	220(%rbp), %eax
	mov	%eax, %edx
	incl	%eax
	.loc 1 1450 0
	cmpl	$15, %eax
	.loc 1 1449 0
	movb	%bl, 224(%rdx,%rbp)
	movl	%eax, 220(%rbp)
	.loc 1 1450 0
	jbe	.L384
	.loc 1 1453 0
	xorl	%esi, %esi
.L415:
	.loc 1 1454 0
	movslq	%esi,%rax
	movzbl	sd_csd_rw_mask(%rax), %edx
	movzbl	36(%rax,%rbp), %ecx
	orl	%edx, %ecx
	orb	224(%rax,%rbp), %dl
	cmpb	%dl, %cl
	je	.L413
	.loc 1 1456 0
	orl	$65536, %r10d
	movl	%r10d, 56(%rbp)
.L413:
	.loc 1 1453 0
	incl	%esi
	cmpl	$15, %esi
	jbe	.L415
	.loc 1 1459 0
	movzbl	238(%rbp), %eax
	movzbl	50(%rbp), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$96, %edx
	je	.L416
	.loc 1 1460 0
	orl	$65536, %r10d
	movl	%r10d, 56(%rbp)
.L416:
	.loc 1 1462 0
	andl	$65536, %r10d
	jne	.L452
	.loc 1 1463 0
	xorl	%esi, %esi
.L421:
	.loc 1 1464 0
	movslq	%esi,%rdx
	.loc 1 1463 0
	incl	%esi
	.loc 1 1464 0
	movzbl	sd_csd_rw_mask(%rdx), %eax
	orb	36(%rdx,%rbp), %al
	.loc 1 1465 0
	andb	224(%rdx,%rbp), %al
	.loc 1 1463 0
	cmpl	$15, %esi
	.loc 1 1465 0
	movb	%al, 36(%rdx,%rbp)
	.loc 1 1463 0
	jbe	.L421
	jmp	.L452
.L392:
	.loc 1 1406 0
	movl	220(%rbp), %edx
	mov	%edx, %eax
	incl	%edx
	.loc 1 1407 0
	cmpl	148(%rbp), %edx
	.loc 1 1406 0
	movb	%bl, 224(%rax,%rbp)
	movl	%edx, 220(%rbp)
	.loc 1 1407 0
	jb	.L384
	.loc 1 1410 0
	movl	216(%rbp), %esi
	.loc 1 1409 0
	movl	$7, 4(%rbp)
	.loc 1 1410 0
	movq	%rbp, %rdi
	call	sd_blk_write
	.loc 1 1412 0
	movl	148(%rbp), %eax
	movl	216(%rbp), %edx
	.loc 1 1411 0
	incl	212(%rbp)
	.loc 1 1413 0
	movl	$0, 220(%rbp)
	.loc 1 1412 0
	addl	%eax, %edx
	.loc 1 1414 0
	leal	(%rdx,%rax), %eax
	cmpl	144(%rbp), %eax
	.loc 1 1412 0
	movl	%edx, 216(%rbp)
	.loc 1 1414 0
	jbe	.L394
	.loc 1 1415 0
	orl	$1073741824, 56(%rbp)
	jmp	.L384
.L397:
	.loc 1 1430 0
	movl	220(%rbp), %eax
	mov	%eax, %edx
	incl	%eax
	.loc 1 1431 0
	cmpl	$15, %eax
	.loc 1 1430 0
	movb	%bl, 224(%rdx,%rbp)
	movl	%eax, 220(%rbp)
	.loc 1 1431 0
	jbe	.L384
	.loc 1 1434 0
	xorl	%esi, %esi
.L403:
	.loc 1 1435 0
	movslq	%esi,%rdx
	movzbl	224(%rdx,%rbp), %eax
	cmpb	%al, 20(%rdx,%rbp)
	je	.L401
	.loc 1 1436 0
	orl	$65536, %r10d
	movl	%r10d, 56(%rbp)
.L401:
	.loc 1 1434 0
	incl	%esi
	cmpl	$15, %esi
	jbe	.L403
	.loc 1 1438 0
	andl	$65536, %r10d
	jne	.L452
	.loc 1 1439 0
	xorl	%esi, %esi
.L408:
	.loc 1 1440 0
	movslq	%esi,%rax
	.loc 1 1439 0
	incl	%esi
	.loc 1 1441 0
	movzbl	224(%rax,%rbp), %edx
	andb	%dl, 20(%rax,%rbp)
	.loc 1 1439 0
	cmpl	$15, %esi
	jbe	.L408
	jmp	.L452
.L390:
	.loc 1 1393 0
	movl	220(%rbp), %edx
	mov	%edx, %eax
	incl	%edx
	.loc 1 1394 0
	cmpl	148(%rbp), %edx
	.loc 1 1393 0
	movb	%bl, 224(%rax,%rbp)
	movl	%edx, 220(%rbp)
	.loc 1 1394 0
	jb	.L384
	.loc 1 1397 0
	movl	216(%rbp), %esi
	.loc 1 1396 0
	movl	$7, 4(%rbp)
	.loc 1 1397 0
	movq	%rbp, %rdi
	call	sd_blk_write
	.loc 1 1398 0
	incl	212(%rbp)
	.loc 1 1399 0
	orb	$64, 50(%rbp)
	jmp	.L452
.L426:
.LBB111:
.LBB112:
	.loc 1 537 0
	leal	2(%rbx), %eax
	cmpl	%eax, %ecx
	jl	.L434
	movl	176(%rbp), %r8d
	cmpl	%ebx, %r8d
	jge	.L434
	leal	16(%r8), %eax
	cmpl	%ebx, %eax
	jl	.L434
	.loc 1 544 0
	testl	%r8d, %r8d
	movl	$7, 4(%rbp)
	je	.L432
	leaq	226(%rbp), %rdx
	movslq	%r8d,%rcx
	leaq	160(%rbp), %rsi
	cld
	cmpq	%rcx, %rcx
	movq	%rdx, %rdi
	repz
	cmpsb
	jne	.L434
.L432:
	.loc 1 550 0
	subl	%r8d, %ebx
	setne	%dl
	xorl	%eax, %eax
	testl	%r9d, %r9d
	sete	%al
	testl	%edx, %eax
	jne	.L434
	testl	%r13d, %r13d
	je	.L435
	movl	%r9d, %eax
	orl	%r12d, %eax
	jne	.L434
.L435:
	testl	%r12d, %r12d
	.p2align 4,,3
	je	.L436
	movl	%r8d, %edi
	orl	%r9d, %edi
	je	.L434
.L436:
	movl	%r9d, %eax
	orl	%r13d, %eax
	jne	.L433
	movl	%r10d, %edx
	shrl	$25, %edx
	andl	$1, %edx
	testl	%r12d, %r12d
	setne	%al
	testl	%eax, %edx
	jne	.L434
	orl	%r12d, %edx
	je	.L434
.L433:
	.loc 1 560 0
	testl	%r9d, %r9d
	je	.L437
	.loc 1 561 0
	movslq	%r8d,%rsi
	leaq	160(%rbp), %rdi
	movslq	%ebx,%rdx
	leaq	226(%rsi,%rbp), %rsi
	call	memcpy
	movl	56(%rbp), %r10d
	.loc 1 562 0
	movl	%ebx, 176(%rbp)
.L437:
	.loc 1 565 0
	testl	%r13d, %r13d
	je	.L438
	.loc 1 566 0
	movl	$0, 176(%rbp)
.L438:
	.loc 1 569 0
	testl	%r12d, %r12d
	je	.L439
	.loc 1 570 0
	orl	$33554432, %r10d
	.loc 1 572 0
	movl	%r10d, 56(%rbp)
	jmp	.L452
	.p2align 4,,7
.L394:
.LBE112:
.LBE111:
.LBB113:
.LBB114:
	.loc 1 503 0
	movq	136(%rbp), %rax
	shrl	$21, %edx
	mov	%edx, %edx
.LBE114:
.LBE113:
	.loc 1 502 0
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L395
	.loc 1 1419 0
	orl	$67108864, 56(%rbp)
	jmp	.L384
.L395:
	.loc 1 1422 0
	orb	$64, 50(%rbp)
	.loc 1 1425 0
	movl	$6, 4(%rbp)
	jmp	.L384
.L457:
.LBB115:
.LBB116:
	.loc 1 527 0
	movl	144(%rbp), %edx
	movq	136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$7, 4(%rbp)
	shrl	$21, %edx
	mov	%edx, %edx
	salq	$2, %rdx
	call	memset
	.loc 1 529 0
	andb	$-17, 50(%rbp)
	.loc 1 530 0
	andl	$-33554433, 56(%rbp)
	.loc 1 533 0
	movl	$.LC10, %edi
	.loc 1 531 0
	movl	$0, 176(%rbp)
	.loc 1 533 0
	call	puts
	jmp	.L452
.L439:
	.loc 1 572 0
	andl	$-33554433, %r10d
	movl	%r10d, 56(%rbp)
	jmp	.L452
.LBE116:
.LBE115:
.LFE137:
	.size	sd_write_data, .-sd_write_data
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"sd_read_data: not in Sending-Data state"
	.section	.rodata.str1.1
.LC13:
	.string	"sd_read_data: unknown command"
	.text
	.p2align 4,,15
.globl sd_read_data
	.type	sd_read_data, @function
sd_read_data:
.LFB138:
	.loc 1 1498 0
	pushq	%rbx
.LCFI36:
	.loc 1 1498 0
	movq	%rdi, %rbx
	.loc 1 1502 0
	movq	752(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L509
.L498:
	.loc 1 1607 0
	xorl	%eax, %eax
.L458:
	.loc 1 1611 0
	popq	%rbx
	ret
	.p2align 4,,7
.L509:
	.loc 1 1502 0
	call	bdrv_is_inserted
	testl	%eax, %eax
	.p2align 4,,4
	je	.L498
	.loc 1 1505 0
	cmpl	$5, 4(%rbx)
	.loc 1 1506 0
	movl	$.LC12, %edi
	.loc 1 1505 0
	jne	.L497
	.loc 1 1511 0
	xorl	%eax, %eax
	.loc 1 1510 0
	testl	$1140850688, 56(%rbx)
	jne	.L458
	.loc 1 1513 0
	movl	208(%rbx), %eax
	subl	$6, %eax
	cmpl	$50, %eax
	ja	.L491
	mov	%eax, %eax
	jmp	*.L492(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L492:
	.quad	.L464
	.quad	.L491
	.quad	.L491
	.quad	.L467
	.quad	.L467
	.quad	.L478
	.quad	.L491
	.quad	.L473
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L475
	.quad	.L478
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L484
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L484
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L486
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L491
	.quad	.L488
	.text
.L491:
	.loc 1 1606 0
	movl	$.LC13, %edi
.L497:
	call	puts
	.loc 1 1607 0
	xorl	%eax, %eax
	jmp	.L458
.L484:
	.loc 1 1583 0
	movl	220(%rbx), %eax
	mov	%eax, %edx
	incl	%eax
	movzbl	224(%rdx,%rbx), %ecx
	movl	%eax, 220(%rbx)
	.loc 1 1585 0
	cmpl	$3, %eax
.L504:
	.loc 1 1592 0
	jbe	.L463
.L495:
	.loc 1 1602 0
	movl	$4, 4(%rbx)
.L463:
	.loc 1 1610 0
	movzbl	%cl, %eax
.L511:
	.loc 1 1611 0
	popq	%rbx
	ret
.L478:
	.loc 1 1561 0
	movl	220(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L510
.L479:
	.loc 1 1565 0
	movl	148(%rbx), %esi
	.loc 1 1563 0
	leal	1(%rcx), %edx
	mov	%ecx, %eax
	movzbl	224(%rax,%rbx), %ecx
	.loc 1 1565 0
	cmpl	%esi, %edx
	jb	.L494
	.loc 1 1566 0
	movl	216(%rbx), %eax
	.loc 1 1567 0
	movl	$0, 220(%rbx)
	.loc 1 1566 0
	addl	%esi, %eax
	movl	%eax, 216(%rbx)
	.loc 1 1568 0
	addl	%esi, %eax
	cmpl	144(%rbx), %eax
	jbe	.L463
	.loc 1 1569 0
	orl	$1073741824, 56(%rbx)
	.loc 1 1610 0
	movzbl	%cl, %eax
	jmp	.L511
.L473:
	.loc 1 1545 0
	movl	220(%rbx), %eax
	mov	%eax, %edx
	incl	%eax
	movzbl	60(%rdx,%rbx), %ecx
	.loc 1 1547 0
	cmpl	$63, %eax
	.loc 1 1545 0
	movl	%eax, 220(%rbx)
	jmp	.L504
.L467:
	.loc 1 1523 0
	movl	220(%rbx), %eax
	mov	%eax, %edx
	incl	%eax
	movzbl	224(%rdx,%rbx), %ecx
	.loc 1 1525 0
	cmpl	$15, %eax
	.loc 1 1523 0
	movl	%eax, 220(%rbx)
	jmp	.L504
.L475:
	.loc 1 1552 0
	movl	220(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L512
.L489:
	.loc 1 1599 0
	leal	1(%rcx), %eax
	.loc 1 1601 0
	cmpl	148(%rbx), %eax
	.loc 1 1599 0
	mov	%ecx, %edx
	movzbl	224(%rdx,%rbx), %ecx
	movl	%eax, 220(%rbx)
	.loc 1 1601 0
	jae	.L495
	.loc 1 1610 0
	movzbl	%cl, %eax
	jmp	.L511
.L464:
	.loc 1 1515 0
	movl	220(%rbx), %eax
	mov	%eax, %edx
	incl	%eax
	movzbl	224(%rdx,%rbx), %ecx
	.loc 1 1547 0
	cmpl	$63, %eax
	.loc 1 1515 0
	movl	%eax, 220(%rbx)
	jmp	.L504
.L488:
	.loc 1 1597 0
	movl	220(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L489
	.loc 1 1598 0
	movslq	148(%rbx),%rdx
	leaq	224(%rbx), %rdi
	movl	$236, %esi
	call	memset
.L506:
	movl	220(%rbx), %ecx
	jmp	.L489
.L486:
	.loc 1 1590 0
	movl	220(%rbx), %eax
	mov	%eax, %edx
	incl	%eax
	movzbl	12(%rbx,%rdx), %ecx
	.loc 1 1592 0
	cmpl	$7, %eax
	.loc 1 1590 0
	movl	%eax, 220(%rbx)
	jmp	.L504
.L494:
	.loc 1 1610 0
	movzbl	%cl, %eax
	movl	%edx, 220(%rbx)
	jmp	.L511
.L510:
	.loc 1 1562 0
	movl	148(%rbx), %edx
	movl	216(%rbx), %esi
	movq	%rbx, %rdi
	call	sd_blk_read
	movl	220(%rbx), %ecx
	jmp	.L479
.L512:
	.loc 1 1553 0
	movl	148(%rbx), %edx
	movl	216(%rbx), %esi
	movq	%rbx, %rdi
	call	sd_blk_read
	jmp	.L506
.LFE138:
	.size	sd_read_data, .-sd_read_data
	.p2align 4,,15
.globl sd_data_ready
	.type	sd_data_ready, @function
sd_data_ready:
.LFB139:
	.loc 1 1614 0
	.loc 1 1615 0
	xorl	%eax, %eax
	cmpl	$5, 4(%rdi)
	sete	%al
	.loc 1 1616 0
	ret
.LFE139:
	.size	sd_data_ready, .-sd_data_ready
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI0-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI4-.LFB124
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
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI6-.LFB125
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI10-.LFB126
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI13-.LFB132
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI17-.LFB134
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI22-.LFB135
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI27-.LFB136
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI32-.LFB137
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI32
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI36-.LFB138
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
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.align 8
.LEFDE22:
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI0-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.byte	0x4
	.long	.LCFI4-.LFB124
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
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.byte	0x4
	.long	.LCFI6-.LFB125
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI8-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI10-.LFB126
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.byte	0x4
	.long	.LCFI13-.LFB132
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI17-.LFB134
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI17
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI22-.LFB135
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI27-.LFB136
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.byte	0x4
	.long	.LCFI32-.LFB137
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI32
	.byte	0xe
	.uleb128 0x30
	.byte	0x8d
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x3
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI36-.LFB138
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
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.align 8
.LEFDE23:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/sd.h"
	.file 5 "./qemu-common.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x12c8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF172
	.byte	0x1
	.long	.LASF173
	.long	.LASF174
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
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
	.uleb128 0x6
	.long	0x3f
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
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
	.byte	0x8e
	.long	0x53
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x281
	.long	.LASF43
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x7
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x7
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0xb4
	.uleb128 0x8
	.long	0x2bf
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x288
	.uleb128 0x5
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0x2db
	.long	0x74
	.uleb128 0xd
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.long	0x2f1
	.long	0x74
	.uleb128 0xd
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x2
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x2
	.byte	0x38
	.long	0x38
	.uleb128 0x6
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x6e
	.long	0x32d
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x7b
	.long	0x33e
	.uleb128 0x5
	.byte	0x8
	.long	0x344
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.uleb128 0xf
	.long	0x371
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.uleb128 0x10
	.long	.LASF55
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF56
	.sleb128 0
	.uleb128 0x10
	.long	.LASF57
	.sleb128 1
	.uleb128 0x10
	.long	.LASF58
	.sleb128 2
	.uleb128 0x10
	.long	.LASF59
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x4
	.byte	0x3c
	.long	0x34a
	.uleb128 0x8
	.long	0x3b3
	.long	.LASF61
	.byte	0xc
	.byte	0x4
	.byte	0x3e
	.uleb128 0x11
	.string	"cmd"
	.byte	0x4
	.byte	0x3f
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.string	"arg"
	.byte	0x4
	.byte	0x40
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"crc"
	.byte	0x4
	.byte	0x41
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x4
	.byte	0x44
	.long	0x3be
	.uleb128 0x12
	.long	0x575
	.long	.LASF62
	.value	0x300
	.byte	0x4
	.byte	0x44
	.uleb128 0xb
	.long	.LASF63
	.byte	0x1
	.byte	0x3d
	.long	0x5b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF64
	.byte	0x1
	.byte	0x49
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"ocr"
	.byte	0x1
	.byte	0x4a
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"scr"
	.byte	0x1
	.byte	0x4b
	.long	0x619
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"cid"
	.byte	0x1
	.byte	0x4c
	.long	0x629
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"csd"
	.byte	0x1
	.byte	0x4d
	.long	0x629
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"rca"
	.byte	0x1
	.byte	0x4e
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF65
	.byte	0x1
	.byte	0x4f
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1
	.byte	0x50
	.long	0x639
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.string	"vhs"
	.byte	0x1
	.byte	0x51
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.long	.LASF67
	.byte	0x1
	.byte	0x52
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF68
	.byte	0x1
	.byte	0x53
	.long	0x4d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF69
	.byte	0x1
	.byte	0x54
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF70
	.byte	0x1
	.byte	0x55
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.long	.LASF71
	.byte	0x1
	.byte	0x56
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF72
	.byte	0x1
	.byte	0x57
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.string	"pwd"
	.byte	0x1
	.byte	0x58
	.long	0x629
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF74
	.byte	0x1
	.byte	0x5a
	.long	0x649
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.string	"spi"
	.byte	0x1
	.byte	0x5c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.byte	0x5f
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.byte	0x60
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.byte	0x61
	.long	0x659
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.byte	0x62
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.byte	0x63
	.long	0x333
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.byte	0x64
	.long	0x66a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x65
	.long	0x670
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.byte	0x0
	.uleb128 0xf
	.long	0x5ae
	.byte	0x4
	.byte	0x1
	.byte	0x2d
	.uleb128 0x10
	.long	.LASF83
	.sleb128 0
	.uleb128 0x10
	.long	.LASF84
	.sleb128 1
	.uleb128 0x10
	.long	.LASF85
	.sleb128 2
	.uleb128 0x10
	.long	.LASF86
	.sleb128 3
	.uleb128 0x10
	.long	.LASF87
	.sleb128 4
	.uleb128 0x10
	.long	.LASF88
	.sleb128 6
	.uleb128 0x10
	.long	.LASF89
	.sleb128 7
	.uleb128 0x10
	.long	.LASF90
	.sleb128 -1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1
	.byte	0x36
	.long	0x575
	.uleb128 0xf
	.long	0x5d4
	.byte	0x4
	.byte	0x1
	.byte	0x39
	.uleb128 0x10
	.long	.LASF92
	.sleb128 0
	.uleb128 0x10
	.long	.LASF93
	.sleb128 1
	.uleb128 0x10
	.long	.LASF94
	.sleb128 2
	.byte	0x0
	.uleb128 0xf
	.long	0x619
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.uleb128 0x10
	.long	.LASF95
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF96
	.sleb128 0
	.uleb128 0x10
	.long	.LASF97
	.sleb128 1
	.uleb128 0x10
	.long	.LASF98
	.sleb128 2
	.uleb128 0x10
	.long	.LASF99
	.sleb128 3
	.uleb128 0x10
	.long	.LASF100
	.sleb128 4
	.uleb128 0x10
	.long	.LASF101
	.sleb128 5
	.uleb128 0x10
	.long	.LASF102
	.sleb128 6
	.uleb128 0x10
	.long	.LASF103
	.sleb128 7
	.uleb128 0x10
	.long	.LASF104
	.sleb128 8
	.byte	0x0
	.uleb128 0xc
	.long	0x629
	.long	0x2f1
	.uleb128 0xd
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x639
	.long	0x2f1
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.long	0x649
	.long	0x2f1
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x659
	.long	0x3f
	.uleb128 0xd
	.long	0x61
	.byte	0x5
	.byte	0x0
	.uleb128 0xc
	.long	0x66a
	.long	0x2f1
	.uleb128 0x13
	.long	0x61
	.value	0x1ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x322
	.uleb128 0x5
	.byte	0x8
	.long	0x2f1
	.uleb128 0x14
	.long	0x6e5
	.long	.LASF108
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	0x2f1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0xa0
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.long	.LASF106
	.byte	0x1
	.byte	0xa0
	.long	0x2d
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xa2
	.long	0x3f
	.byte	0x1
	.byte	0x5b
	.uleb128 0x16
	.string	"bit"
	.byte	0x1
	.byte	0xa2
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.byte	0xa3
	.long	0x2f1
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.byte	0xa4
	.long	0x670
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x18
	.long	0x80f
	.long	.LASF109
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.quad	.LFB123
	.quad	.LFE123
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x16b
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x16b
	.long	0x66a
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.value	0x16d
	.long	0x307
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.value	0x16e
	.long	0x312
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	0x75b
	.long	0x815
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1d
	.long	0x822
	.byte	0x0
	.uleb128 0x1c
	.long	0x77a
	.long	0x82d
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1d
	.long	0x83a
	.byte	0x0
	.uleb128 0x1c
	.long	0x799
	.long	0x845
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1d
	.long	0x852
	.byte	0x0
	.uleb128 0x1c
	.long	0x7d4
	.long	0x85d
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1d
	.long	0x86a
	.uleb128 0x1d
	.long	0x874
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x1f
	.long	0x87f
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0x88a
	.uleb128 0x20
	.long	0x895
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0x7f3
	.long	0x8a2
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x1d
	.long	0x8b0
	.byte	0x0
	.uleb128 0x21
	.long	0x8bc
	.quad	.LBB44
	.quad	.LBE44
	.uleb128 0x1d
	.long	0x8ca
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3b3
	.uleb128 0x22
	.long	0x82d
	.long	.LASF111
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sd"
	.byte	0x1
	.byte	0xda
	.long	0x80f
	.byte	0x0
	.uleb128 0x22
	.long	0x845
	.long	.LASF112
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sd"
	.byte	0x1
	.byte	0xc1
	.long	0x80f
	.byte	0x0
	.uleb128 0x22
	.long	0x85d
	.long	.LASF113
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sd"
	.byte	0x1
	.byte	0xc7
	.long	0x80f
	.byte	0x0
	.uleb128 0x22
	.long	0x8a2
	.long	.LASF114
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sd"
	.byte	0x1
	.byte	0xfc
	.long	0x80f
	.uleb128 0x24
	.long	.LASF69
	.byte	0x1
	.byte	0xfc
	.long	0x307
	.uleb128 0x25
	.long	.LASF115
	.byte	0x1
	.byte	0xfe
	.long	0x307
	.uleb128 0x25
	.long	.LASF116
	.byte	0x1
	.byte	0xff
	.long	0x307
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x100
	.long	0x307
	.byte	0x0
	.uleb128 0x27
	.long	0x8bc
	.long	.LASF118
	.byte	0x1
	.value	0x12c
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x12b
	.long	0x80f
	.byte	0x0
	.uleb128 0x27
	.long	0x8d6
	.long	.LASF119
	.byte	0x1
	.value	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x126
	.long	0x80f
	.byte	0x0
	.uleb128 0x18
	.long	0x90f
	.long	.LASF120
	.byte	0x1
	.value	0x192
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.value	0x191
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x29
	.string	"sd"
	.byte	0x1
	.value	0x193
	.long	0x80f
	.byte	0x0
	.uleb128 0x2a
	.long	0x95c
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.value	0x1a0
	.byte	0x1
	.long	0x80f
	.quad	.LFB125
	.quad	.LFE125
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.value	0x19f
	.long	0x66a
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.value	0x19f
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"sd"
	.byte	0x1
	.value	0x1a1
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2c
	.long	0x9a6
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.quad	.LFB126
	.quad	.LFE126
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x1ab
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.value	0x1ab
	.long	0x333
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x1
	.value	0x1ab
	.long	0x333
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x2d
	.long	0xb58
	.long	.LASF127
	.byte	0x1
	.value	0x241
	.byte	0x1
	.long	0x5ae
	.quad	.LFB132
	.quad	.LFE132
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x23f
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"req"
	.byte	0x1
	.value	0x240
	.long	0x37c
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.string	"rca"
	.byte	0x1
	.value	0x242
	.long	0x307
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.long	.LASF128
	.byte	0x1
	.value	0x448
	.quad	.L42
	.uleb128 0x2e
	.long	.LASF129
	.byte	0x1
	.value	0x44e
	.quad	.L157
	.uleb128 0x1c
	.long	0xa39
	.long	0xb58
	.quad	.LBB52
	.quad	.LBE52
	.uleb128 0x1d
	.long	0xb6a
	.uleb128 0x2f
	.long	0xb75
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.long	0xa58
	.long	0xb82
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x1d
	.long	0xb90
	.byte	0x0
	.uleb128 0x1c
	.long	0xa99
	.long	0xb9c
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1d
	.long	0xbae
	.uleb128 0x2f
	.long	0xbb9
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x1f
	.long	0xbc5
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	0xbcf
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0xbdb
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xb23
	.long	0xbe8
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x1d
	.long	0xbf6
	.uleb128 0x2f
	.long	0xc01
	.byte	0x1
	.byte	0x58
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x1f
	.long	0xc0d
	.byte	0x1
	.byte	0x55
	.uleb128 0x1f
	.long	0xc17
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.long	0xc23
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0xc2f
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.long	0xc3c
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x1d
	.long	0xc4d
	.uleb128 0x1d
	.long	0xc58
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0xe0
	.uleb128 0x1f
	.long	0xc63
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.long	0xc6c
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	0xc77
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0xc82
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xc94
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x1d
	.long	0xca2
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x1f
	.long	0xcad
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	0xcb7
	.uleb128 0x1f
	.long	0xcc3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xb82
	.long	.LASF130
	.byte	0x1
	.value	0x1f6
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x1f5
	.long	0x80f
	.uleb128 0x31
	.long	.LASF131
	.byte	0x1
	.value	0x1f5
	.long	0x307
	.byte	0x0
	.uleb128 0x27
	.long	0xb9c
	.long	.LASF132
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x11d
	.long	0x80f
	.byte	0x0
	.uleb128 0x30
	.long	0xbe8
	.long	.LASF133
	.byte	0x1
	.value	0x1c9
	.byte	0x1
	.long	0x307
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x1c8
	.long	0x80f
	.uleb128 0x31
	.long	.LASF131
	.byte	0x1
	.value	0x1c8
	.long	0x307
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1ca
	.long	0x307
	.uleb128 0x26
	.long	.LASF134
	.byte	0x1
	.value	0x1ca
	.long	0x307
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x1cb
	.long	0x307
	.byte	0x0
	.uleb128 0x27
	.long	0xc3c
	.long	.LASF135
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x1d6
	.long	0x80f
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x1d6
	.long	0x307
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1d8
	.long	0x3f
	.uleb128 0x26
	.long	.LASF63
	.byte	0x1
	.value	0x1d8
	.long	0x3f
	.uleb128 0x26
	.long	.LASF136
	.byte	0x1
	.value	0x1d8
	.long	0x3f
	.uleb128 0x29
	.string	"crc"
	.byte	0x1
	.value	0x1d8
	.long	0x3f
	.byte	0x0
	.uleb128 0x32
	.long	0xc8e
	.long	.LASF137
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0x2fc
	.byte	0x1
	.uleb128 0x24
	.long	.LASF105
	.byte	0x1
	.byte	0xb0
	.long	0xa6
	.uleb128 0x24
	.long	.LASF106
	.byte	0x1
	.byte	0xb0
	.long	0x2d
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.uleb128 0x33
	.string	"bit"
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.uleb128 0x25
	.long	.LASF107
	.byte	0x1
	.byte	0xb3
	.long	0x2fc
	.uleb128 0x33
	.string	"msg"
	.byte	0x1
	.byte	0xb4
	.long	0xc8e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2fc
	.uleb128 0x27
	.long	0xcd0
	.long	.LASF138
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x1b3
	.long	0x80f
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1b5
	.long	0x3f
	.uleb128 0x26
	.long	.LASF139
	.byte	0x1
	.value	0x1b5
	.long	0x3f
	.uleb128 0x29
	.string	"end"
	.byte	0x1
	.value	0x1b5
	.long	0x3f
	.byte	0x0
	.uleb128 0x2a
	.long	0xe95
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.value	0x4c9
	.byte	0x1
	.long	0x3f
	.quad	.LFB134
	.quad	.LFE134
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x4c8
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"req"
	.byte	0x1
	.value	0x4c8
	.long	0xe95
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.value	0x4c9
	.long	0x670
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.long	.LASF142
	.byte	0x1
	.value	0x4ca
	.long	0x307
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x1
	.value	0x4cb
	.long	0x5ae
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x1
	.value	0x4cc
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	0xd80
	.long	0xe9b
	.quad	.LBB73
	.quad	.LBE73
	.uleb128 0x1d
	.long	0xead
	.uleb128 0x34
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x1f
	.long	0xeb9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xd9f
	.long	0xed6
	.quad	.LBB75
	.quad	.LBE75
	.uleb128 0x1d
	.long	0xee3
	.byte	0x0
	.uleb128 0x1c
	.long	0xdd1
	.long	0xeee
	.quad	.LBB85
	.quad	.LBE85
	.uleb128 0x1d
	.long	0xf00
	.uleb128 0x2f
	.long	0xf0b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x150
	.uleb128 0x20
	.long	0xf17
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xdf5
	.long	0xf24
	.quad	.LBB95
	.quad	.LBE95
	.uleb128 0x1d
	.long	0xf32
	.uleb128 0x1d
	.long	0xf3d
	.byte	0x0
	.uleb128 0x1c
	.long	0xe2d
	.long	0xf4a
	.quad	.LBB97
	.quad	.LBE97
	.uleb128 0x1d
	.long	0xf58
	.uleb128 0x1d
	.long	0xf63
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1f
	.long	0xf6f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	0xf7b
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	0xe51
	.long	0xf88
	.quad	.LBB101
	.quad	.LBE101
	.uleb128 0x1d
	.long	0xf96
	.uleb128 0x1d
	.long	0xfa1
	.byte	0x0
	.uleb128 0x21
	.long	0xfae
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x1d
	.long	0xfbc
	.uleb128 0x1d
	.long	0xfc7
	.uleb128 0x1d
	.long	0xfd3
	.uleb128 0x34
	.quad	.LBB106
	.quad	.LBE106
	.uleb128 0x20
	.long	0xfdf
	.uleb128 0x1f
	.long	0xfeb
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x37c
	.uleb128 0x30
	.long	0xec6
	.long	.LASF145
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"req"
	.byte	0x1
	.value	0x130
	.long	0xe95
	.uleb128 0x26
	.long	.LASF146
	.byte	0x1
	.value	0x132
	.long	0xec6
	.byte	0x0
	.uleb128 0xc
	.long	0xed6
	.long	0x2f1
	.uleb128 0xd
	.long	0x61
	.byte	0x4
	.byte	0x0
	.uleb128 0x22
	.long	0xeee
	.long	.LASF147
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"sd"
	.byte	0x1
	.byte	0x68
	.long	0x80f
	.byte	0x0
	.uleb128 0x30
	.long	0xf24
	.long	.LASF148
	.byte	0x1
	.value	0x45b
	.byte	0x1
	.long	0x5ae
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x45a
	.long	0x80f
	.uleb128 0x28
	.string	"req"
	.byte	0x1
	.value	0x45b
	.long	0x37c
	.uleb128 0x29
	.string	"rca"
	.byte	0x1
	.value	0x45c
	.long	0x307
	.byte	0x0
	.uleb128 0x27
	.long	0xf4a
	.long	.LASF149
	.byte	0x1
	.value	0x164
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x163
	.long	0x80f
	.uleb128 0x31
	.long	.LASF141
	.byte	0x1
	.value	0x163
	.long	0x670
	.byte	0x0
	.uleb128 0x27
	.long	0xf88
	.long	.LASF150
	.byte	0x1
	.value	0x154
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x153
	.long	0x80f
	.uleb128 0x31
	.long	.LASF141
	.byte	0x1
	.value	0x153
	.long	0x670
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x155
	.long	0x2fc
	.uleb128 0x26
	.long	.LASF151
	.byte	0x1
	.value	0x156
	.long	0x2fc
	.byte	0x0
	.uleb128 0x27
	.long	0xfae
	.long	.LASF152
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x14b
	.long	0x80f
	.uleb128 0x31
	.long	.LASF141
	.byte	0x1
	.value	0x14b
	.long	0x670
	.byte	0x0
	.uleb128 0x27
	.long	0xff8
	.long	.LASF153
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x13c
	.long	0x80f
	.uleb128 0x31
	.long	.LASF141
	.byte	0x1
	.value	0x13d
	.long	0x670
	.uleb128 0x31
	.long	.LASF142
	.byte	0x1
	.value	0x13d
	.long	0x307
	.uleb128 0x26
	.long	.LASF154
	.byte	0x1
	.value	0x13f
	.long	0x307
	.uleb128 0x26
	.long	.LASF151
	.byte	0x1
	.value	0x140
	.long	0x307
	.byte	0x0
	.uleb128 0x18
	.long	0x104f
	.long	.LASF155
	.byte	0x1
	.value	0x528
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x527
	.long	0x80f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.value	0x527
	.long	0x307
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x527
	.long	0x307
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x529
	.long	0x307
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x18
	.long	0x10a6
	.long	.LASF156
	.byte	0x1
	.value	0x53d
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x53c
	.long	0x80f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.value	0x53c
	.long	0x307
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x53c
	.long	0x307
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x53e
	.long	0x307
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x2c
	.long	0x1156
	.byte	0x1
	.long	.LASF157
	.byte	0x1
	.value	0x561
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x560
	.long	0x80f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x1
	.value	0x560
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x562
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	0x1135
	.long	0x1156
	.quad	.LBB109
	.quad	.LBE109
	.uleb128 0x1d
	.long	0x1164
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x1f
	.long	0x116f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.long	0x117b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.long	0x1187
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.long	0x1193
	.byte	0x1
	.byte	0x59
	.uleb128 0x1f
	.long	0x119f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0xb58
	.quad	.LBB113
	.quad	.LBE113
	.uleb128 0x1d
	.long	0xb6a
	.uleb128 0x1d
	.long	0xb75
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x11ac
	.long	.LASF159
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"sd"
	.byte	0x1
	.value	0x1fb
	.long	0x80f
	.uleb128 0x26
	.long	.LASF160
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x26
	.long	.LASF161
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x26
	.long	.LASF162
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x26
	.long	.LASF163
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.uleb128 0x26
	.long	.LASF73
	.byte	0x1
	.value	0x1fd
	.long	0x3f
	.byte	0x0
	.uleb128 0x2a
	.long	0x11ec
	.byte	0x1
	.long	.LASF164
	.byte	0x1
	.value	0x5da
	.byte	0x1
	.long	0x2f1
	.quad	.LFB138
	.quad	.LFE138
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x5d9
	.long	0x80f
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x5dc
	.long	0x2f1
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2a
	.long	0x121e
	.byte	0x1
	.long	.LASF165
	.byte	0x1
	.value	0x64e
	.byte	0x1
	.long	0x3f
	.quad	.LFB139
	.quad	.LFE139
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"sd"
	.byte	0x1
	.value	0x64d
	.long	0x80f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x35
	.long	.LASF166
	.byte	0x6
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF167
	.byte	0x6
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x1248
	.long	0x1248
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0x6
	.long	0x371
	.uleb128 0x17
	.long	.LASF168
	.byte	0x1
	.byte	0x83
	.long	0x1262
	.byte	0x9
	.byte	0x3
	.quad	sd_cmd_type
	.uleb128 0x6
	.long	0x1238
	.uleb128 0x25
	.long	.LASF169
	.byte	0x1
	.byte	0x8e
	.long	0x1272
	.uleb128 0x6
	.long	0x1238
	.uleb128 0xc
	.long	0x1287
	.long	0x6f
	.uleb128 0xd
	.long	0x61
	.byte	0x3f
	.byte	0x0
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.byte	0x99
	.long	0x129c
	.byte	0x9
	.byte	0x3
	.quad	sd_cmd_class
	.uleb128 0x6
	.long	0x1277
	.uleb128 0xc
	.long	0x12b1
	.long	0x31d
	.uleb128 0xd
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x17
	.long	.LASF171
	.byte	0x1
	.byte	0xf7
	.long	0x12c6
	.byte	0x9
	.byte	0x3
	.quad	sd_csd_rw_mask
	.uleb128 0x6
	.long	0x12a1
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x2
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x6f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x12cc
	.long	0x90f
	.string	"sd_init"
	.long	0x95c
	.string	"sd_set_cb"
	.long	0xcd0
	.string	"sd_do_command"
	.long	0x10a6
	.string	"sd_write_data"
	.long	0x11ac
	.string	"sd_read_data"
	.long	0x11ec
	.string	"sd_data_ready"
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
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB108-.Ltext0
	.quad	.LBE108-.Ltext0
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	.LBB88-.Ltext0
	.quad	.LBE88-.Ltext0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB98-.Ltext0
	.quad	.LBE98-.Ltext0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB110-.Ltext0
	.quad	.LBE110-.Ltext0
	.quad	.LBB116-.Ltext0
	.quad	.LBE116-.Ltext0
	.quad	.LBB112-.Ltext0
	.quad	.LBE112-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF61:
	.string	"sd_request_s"
.LASF171:
	.string	"sd_csd_rw_mask"
.LASF147:
	.string	"sd_set_status"
.LASF24:
	.string	"_IO_save_end"
.LASF10:
	.string	"__off_t"
.LASF120:
	.string	"sd_cardchange"
.LASF164:
	.string	"sd_read_data"
.LASF17:
	.string	"_IO_write_base"
.LASF122:
	.string	"is_spi"
.LASF97:
	.string	"sd_ready_state"
.LASF64:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF152:
	.string	"sd_response_r3_make"
.LASF95:
	.string	"sd_inactive_state"
.LASF134:
	.string	"wpnum"
.LASF22:
	.string	"_IO_save_base"
.LASF128:
	.string	"bad_cmd"
.LASF107:
	.string	"shift_reg"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF66:
	.string	"sd_status"
.LASF103:
	.string	"sd_programming_state"
.LASF173:
	.string	"/home/remco/Projects/Argos/src/hw/sd.c"
.LASF110:
	.string	"sect"
.LASF101:
	.string	"sd_sendingdata_state"
.LASF73:
	.string	"pwd_len"
.LASF2:
	.string	"long int"
.LASF136:
	.string	"new_func"
.LASF81:
	.string	"inserted_cb"
.LASF44:
	.string	"_IO_marker"
.LASF121:
	.string	"opaque"
.LASF75:
	.string	"current_cmd"
.LASF7:
	.string	"signed char"
.LASF63:
	.string	"mode"
.LASF43:
	.string	"_IO_FILE"
.LASF138:
	.string	"sd_erase"
.LASF6:
	.string	"unsigned char"
.LASF153:
	.string	"sd_response_r1_make"
.LASF52:
	.string	"BlockDriverState"
.LASF102:
	.string	"sd_receivingdata_state"
.LASF156:
	.string	"sd_blk_write"
.LASF150:
	.string	"sd_response_r6_make"
.LASF99:
	.string	"sd_standby_state"
.LASF158:
	.string	"value"
.LASF5:
	.string	"char"
.LASF148:
	.string	"sd_app_command"
.LASF42:
	.string	"_IO_lock_t"
.LASF98:
	.string	"sd_identification_state"
.LASF139:
	.string	"start"
.LASF3:
	.string	"long long int"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF166:
	.string	"stdin"
.LASF109:
	.string	"sd_reset"
.LASF62:
	.string	"SDState"
.LASF167:
	.string	"stdout"
.LASF25:
	.string	"_markers"
.LASF146:
	.string	"buffer"
.LASF123:
	.string	"sd_init"
.LASF76:
	.string	"blk_written"
.LASF132:
	.string	"sd_set_rca"
.LASF34:
	.string	"_offset"
.LASF78:
	.string	"data_offset"
.LASF144:
	.string	"rsplen"
.LASF161:
	.string	"lock"
.LASF0:
	.string	"long unsigned int"
.LASF151:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF111:
	.string	"sd_set_cid"
.LASF91:
	.string	"sd_rsp_type_t"
.LASF55:
	.string	"sd_none"
.LASF41:
	.string	"_unused2"
.LASF96:
	.string	"sd_idle_state"
.LASF113:
	.string	"sd_set_scr"
.LASF29:
	.string	"_old_offset"
.LASF168:
	.string	"sd_cmd_type"
.LASF85:
	.string	"sd_r2_i"
.LASF88:
	.string	"sd_r6"
.LASF125:
	.string	"readonly"
.LASF86:
	.string	"sd_r2_s"
.LASF104:
	.string	"sd_disconnect_state"
.LASF135:
	.string	"sd_function_switch"
.LASF83:
	.string	"sd_r0"
.LASF84:
	.string	"sd_r1"
.LASF119:
	.string	"sd_set_cardstatus"
.LASF87:
	.string	"sd_r3"
.LASF89:
	.string	"sd_r7"
.LASF129:
	.string	"unimplemented_cmd"
.LASF106:
	.string	"width"
.LASF54:
	.string	"IRQState"
.LASF19:
	.string	"_IO_write_end"
.LASF92:
	.string	"sd_inactive"
.LASF115:
	.string	"csize"
.LASF142:
	.string	"last_status"
.LASF131:
	.string	"addr"
.LASF140:
	.string	"sd_do_command"
.LASF20:
	.string	"_IO_buf_base"
.LASF154:
	.string	"mask"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF172:
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
.LASF13:
	.string	"_flags"
.LASF126:
	.string	"insert"
.LASF68:
	.string	"wp_groups"
.LASF116:
	.string	"sectsize"
.LASF59:
	.string	"sd_adtc"
.LASF112:
	.string	"sd_set_ocr"
.LASF155:
	.string	"sd_blk_read"
.LASF57:
	.string	"sd_bcr"
.LASF130:
	.string	"sd_wp_addr"
.LASF69:
	.string	"size"
.LASF169:
	.string	"sd_acmd_type"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF100:
	.string	"sd_transfer_state"
.LASF26:
	.string	"_chain"
.LASF65:
	.string	"card_status"
.LASF133:
	.string	"sd_wpbits"
.LASF162:
	.string	"clr_pwd"
.LASF80:
	.string	"readonly_cb"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF67:
	.string	"wp_switch"
.LASF118:
	.string	"sd_set_sdstatus"
.LASF114:
	.string	"sd_set_csd"
.LASF11:
	.string	"__off64_t"
.LASF174:
	.string	"/home/remco/Projects/Argos/src"
.LASF21:
	.string	"_IO_buf_end"
.LASF170:
	.string	"sd_cmd_class"
.LASF94:
	.string	"sd_data_transfer_mode"
.LASF124:
	.string	"sd_set_cb"
.LASF8:
	.string	"short int"
.LASF51:
	.string	"uint64_t"
.LASF71:
	.string	"erase_start"
.LASF31:
	.string	"_vtable_offset"
.LASF159:
	.string	"sd_lock_command"
.LASF72:
	.string	"erase_end"
.LASF105:
	.string	"message"
.LASF149:
	.string	"sd_response_r7_make"
.LASF141:
	.string	"response"
.LASF74:
	.string	"function_group"
.LASF160:
	.string	"erase"
.LASF127:
	.string	"sd_normal_command"
.LASF15:
	.string	"_IO_read_end"
.LASF157:
	.string	"sd_write_data"
.LASF50:
	.string	"uint32_t"
.LASF77:
	.string	"data_start"
.LASF27:
	.string	"_fileno"
.LASF108:
	.string	"sd_crc7"
.LASF70:
	.string	"blk_len"
.LASF4:
	.string	"short unsigned int"
.LASF143:
	.string	"rtype"
.LASF117:
	.string	"wpsize"
.LASF93:
	.string	"sd_card_identification_mode"
.LASF18:
	.string	"_IO_write_ptr"
.LASF163:
	.string	"set_pwd"
.LASF145:
	.string	"sd_req_crc_validate"
.LASF58:
	.string	"sd_ac"
.LASF60:
	.string	"sd_cmd_type_t"
.LASF165:
	.string	"sd_data_ready"
.LASF79:
	.string	"data"
.LASF82:
	.string	"bdrv"
.LASF90:
	.string	"sd_r1b"
.LASF56:
	.string	"sd_bc"
.LASF137:
	.string	"sd_crc16"
.LASF53:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
