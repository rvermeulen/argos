	.file	"block-vvfat.c"
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
	.string	"vvfat"
.LC1:
	.string	"fat"
.globl bdrv_vvfat
	.data
	.align 32
	.type	bdrv_vvfat, @object
	.size	bdrv_vvfat, 272
bdrv_vvfat:
	.quad	.LC0
	.long	33008
	.zero	4
	.quad	0
	.quad	vvfat_open
	.quad	vvfat_read
	.quad	vvfat_write
	.quad	vvfat_close
	.quad	0
	.quad	0
	.quad	vvfat_is_allocated
	.zero	48
	.quad	.LC1
	.zero	136
	.section	.rodata.str1.1
.LC2:
	.string	"vvfat_write_target"
	.data
	.align 32
	.type	vvfat_write_target, @object
	.size	vvfat_write_target, 272
vvfat_write_target:
	.quad	.LC2
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	write_target_commit
	.quad	write_target_close
	.quad	0
	.quad	0
	.quad	0
	.zero	192
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.10, @object
	.size	__PRETTY_FUNCTION__.10, 19
__PRETTY_FUNCTION__.10:
	.string	"array_remove_slice"
	.section	.rodata.str1.1
.LC3:
	.string	"block-vvfat.c"
.LC4:
	.string	"index >=0"
.LC6:
	.string	"index + count <= array->next"
	.text
	.p2align 4,,15
	.type	array_remove, @function
array_remove:
.LFB105:
	.file 1 "block-vvfat.c"
	.loc 1 190 0
	movq	%rbx, -48(%rsp)
.LCFI0:
	movq	%r12, -32(%rsp)
.LCFI1:
	movl	%esi, %ebx
	movq	%rbp, -40(%rsp)
.LCFI2:
	movq	%r13, -24(%rsp)
.LCFI3:
	movq	%rdi, %r12
	movq	%r14, -16(%rsp)
.LCFI4:
	movq	%r15, -8(%rsp)
.LCFI5:
	subq	$72, %rsp
.LCFI6:
.LBB2:
.LBB3:
	.loc 1 180 0
	testl	%esi, %esi
	js	.L20
	.loc 1 182 0
	movl	12(%rdi), %ecx
	leal	1(%rbx), %eax
	cmpl	%ecx, %eax
	ja	.L21
.LBB4:
	.loc 1 146 0
	leal	-1(%rcx), %ebp
.LBB5:
	.loc 1 152 0
	xorl	%eax, %eax
	testq	%rdi, %rdi
	sete	%al
	movl	%ebp, %edx
	shrl	$31, %edx
	orl	%edx, %eax
	jne	.L10
	xorl	%eax, %eax
	movl	%esi, %edx
	cmpl	%ecx, %ebp
	setae	%al
	shrl	$31, %edx
	orl	%edx, %eax
	jne	.L10
	cmpl	%ecx, %esi
	jb	.L9
	.p2align 4,,7
.L10:
.LBE5:
.LBE4:
	.loc 1 183 0
	movl	$-1, %eax
.L15:
.LBE3:
.LBE2:
	.loc 1 192 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L9:
.LBB6:
.LBB7:
.LBB8:
.LBB9:
	.loc 1 157 0
	cmpl	%esi, %ebp
	je	.L8
	.loc 1 160 0
	movl	16(%rdi), %r15d
	.loc 1 161 0
	movl	%esi, %eax
	movq	(%rdi), %rdx
	imull	%r15d, %eax
	.loc 1 163 0
	movslq	%r15d,%r14
	movq	%r14, %rdi
	.loc 1 161 0
	cltq
	leaq	(%rdx,%rax), %r13
	.loc 1 162 0
	movl	%ebp, %eax
	imull	%r15d, %eax
	cltq
	addq	%rax, %rdx
	movq	%rdx, 8(%rsp)
	.loc 1 163 0
	call	malloc
	.loc 1 164 0
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	.loc 1 163 0
	movq	%rax, 16(%rsp)
	.loc 1 164 0
	call	memcpy
	.loc 1 166 0
	cmpl	%ebx, %ebp
	jl	.L22
	.loc 1 169 0
	movq	8(%rsp), %rdx
	leaq	(%r14,%r13), %rsi
	movq	%r13, %rdi
	subq	%r13, %rdx
.L17:
	call	memmove
	.loc 1 171 0
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	movslq	%r15d,%rdx
	call	memcpy
	.loc 1 173 0
	movq	16(%rsp), %rdi
	call	free
.L8:
.LBE9:
.LBE8:
	.loc 1 185 0
	decl	12(%r12)
	xorl	%eax, %eax
	jmp	.L15
.L22:
.LBB10:
.LBB11:
	.loc 1 167 0
	movq	8(%rsp), %rax
	subq	8(%rsp), %r13
	leaq	(%r14,%rax), %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	jmp	.L17
.L20:
.LBE11:
.LBE10:
	.loc 1 180 0
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$180, %edx
	movl	$.LC3, %esi
	movl	$.LC4, %edi
	.loc 1 182 0
	call	__assert_fail
.L21:
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$182, %edx
	movl	$.LC3, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.LBE7:
.LBE6:
.LFE105:
	.size	array_remove, .-array_remove
	.section	.rodata
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 12
__PRETTY_FUNCTION__.7:
	.string	"array_index"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"(offset % array->item_size) == 0"
	.align 8
.LC8:
	.string	"offset/array->item_size < array->next"
	.text
	.p2align 4,,15
	.type	array_index, @function
array_index:
.LFB106:
	.loc 1 196 0
	pushq	%rbx
.LCFI7:
	.loc 1 199 0
	mov	16(%rdi), %edx
	.loc 1 196 0
	movq	%rsi, %rax
	.loc 1 197 0
	subq	(%rdi), %rax
	.loc 1 199 0
	movq	%rdx, %rbx
	xorl	%edx, %edx
	divq	%rbx
	testq	%rdx, %rdx
	movq	%rax, %rcx
	jne	.L29
	.loc 1 200 0
	mov	12(%rdi), %eax
	cmpq	%rax, %rcx
	jae	.L30
	.loc 1 202 0
	popq	%rbx
	movl	%ecx, %eax
	ret
.L29:
	.loc 1 199 0
	movl	$__PRETTY_FUNCTION__.7, %ecx
	movl	$199, %edx
	movl	$.LC3, %esi
	movl	$.LC7, %edi
	.loc 1 200 0
	call	__assert_fail
.L30:
	movl	$__PRETTY_FUNCTION__.7, %ecx
	movl	$200, %edx
	movl	$.LC3, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.LFE106:
	.size	array_index, .-array_index
	.p2align 4,,15
	.type	sector2CHS, @function
sector2CHS:
.LFB107:
	.loc 1 361 0
	.loc 1 363 0
	movl	%edx, %eax
	cltd
	idivl	2696(%rdi)
	movl	%edx, %r8d
	.loc 1 364 0
	cltd
	idivl	2692(%rdi)
	.loc 1 365 0
	cmpl	%eax, 2688(%rdi)
	.loc 1 364 0
	movl	%eax, %ecx
	.loc 1 365 0
	jg	.L32
	.loc 1 372 0
	movl	$1, %eax
	.loc 1 369 0
	movb	$-1, (%rsi)
	.loc 1 370 0
	movb	$-1, 1(%rsi)
	.loc 1 371 0
	movb	$-1, 2(%rsi)
	.loc 1 372 0
	ret
	.p2align 4,,7
.L32:
	.loc 1 374 0
	movb	%dl, (%rsi)
	.loc 1 375 0
	sarl	$8, %eax
	leal	1(%r8), %edx
	sall	$6, %eax
	.loc 1 376 0
	movb	%cl, 2(%rsi)
	.loc 1 375 0
	orl	%eax, %edx
	.loc 1 377 0
	xorl	%eax, %eax
	.loc 1 375 0
	movb	%dl, 1(%rsi)
	.loc 1 378 0
	ret
.LFE107:
	.size	sector2CHS, .-sector2CHS
	.p2align 4,,15
	.type	is_free, @function
is_free:
.LFB111:
	.loc 1 456 0
	.loc 1 458 0
	xorl	%eax, %eax
	cmpb	$0, 11(%rdi)
	je	.L35
	cmpb	$-27, (%rdi)
	je	.L35
	.loc 1 459 0
	rep ; ret
	.p2align 4,,7
.L35:
	.loc 1 458 0
	movl	$1, %eax
	.loc 1 459 0
	ret
.LFE111:
	.size	is_free, .-is_free
	.p2align 4,,15
	.type	is_volume_label, @function
is_volume_label:
.LFB112:
	.loc 1 462 0
	.loc 1 463 0
	xorl	%eax, %eax
	cmpb	$40, 11(%rdi)
	sete	%al
	.loc 1 464 0
	ret
.LFE112:
	.size	is_volume_label, .-is_volume_label
	.p2align 4,,15
	.type	is_long_name, @function
is_long_name:
.LFB113:
	.loc 1 467 0
	.loc 1 468 0
	xorl	%eax, %eax
	cmpb	$15, 11(%rdi)
	sete	%al
	.loc 1 469 0
	ret
.LFE113:
	.size	is_long_name, .-is_long_name
	.p2align 4,,15
	.type	is_short_name, @function
is_short_name:
.LFB114:
	.loc 1 472 0
	movq	%rbx, -16(%rsp)
.LCFI8:
	movq	%rbp, -8(%rsp)
.LCFI9:
	subq	$16, %rsp
.LCFI10:
	.loc 1 472 0
	movq	%rdi, %rbx
	.loc 1 473 0
	xorl	%ebp, %ebp
	call	is_volume_label
	testb	%al, %al
	jne	.L39
	movq	%rbx, %rdi
	call	is_long_name
	testb	%al, %al
	.p2align 4,,2
	jne	.L39
	movq	%rbx, %rdi
	call	is_free
	testb	%al, %al
	movl	$1, %eax
	cmove	%eax, %ebp
	.p2align 4,,7
.L39:
	.loc 1 475 0
	movl	%ebp, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	addq	$16, %rsp
	ret
.LFE114:
	.size	is_short_name, .-is_short_name
	.p2align 4,,15
	.type	is_directory, @function
is_directory:
.LFB115:
	.loc 1 478 0
	.loc 1 479 0
	xorl	%edx, %edx
	testb	$16, 11(%rdi)
	je	.L41
	cmpb	$-27, (%rdi)
	movl	$1, %eax
	cmovne	%eax, %edx
.L41:
	.loc 1 480 0
	movl	%edx, %eax
	ret
.LFE115:
	.size	is_directory, .-is_directory
	.p2align 4,,15
	.type	is_file, @function
is_file:
.LFB117:
	.loc 1 488 0
	movq	%rbx, -16(%rsp)
.LCFI11:
	movq	%rbp, -8(%rsp)
.LCFI12:
	subq	$16, %rsp
.LCFI13:
	.loc 1 488 0
	movq	%rdi, %rbx
	.loc 1 489 0
	xorl	%ebp, %ebp
	call	is_short_name
	testb	%al, %al
	je	.L43
	movq	%rbx, %rdi
	call	is_directory
	testb	%al, %al
	movl	$1, %eax
	cmove	%eax, %ebp
.L43:
	.loc 1 490 0
	movl	%ebp, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	addq	$16, %rsp
	ret
.LFE117:
	.size	is_file, .-is_file
	.p2align 4,,15
	.type	set_begin_of_direntry, @function
set_begin_of_direntry:
.LFB120:
	.loc 1 503 0
	.file 2 "bswap.h"
	.loc 2 123 0
	movw	%si, 26(%rdi)
.LBB12:
.LBB13:
	shrl	$16, %esi
.LBE13:
.LBE12:
	movw	%si, 20(%rdi)
	ret
.LFE120:
	.size	set_begin_of_direntry, .-set_begin_of_direntry
	.p2align 4,,15
	.type	fat_datetime, @function
fat_datetime:
.LFB122:
	.loc 1 523 0
	pushq	%rbx
.LCFI14:
	movl	%esi, %ebx
	subq	$80, %rsp
.LCFI15:
	.loc 1 523 0
	movq	%rdi, 8(%rsp)
	.loc 1 529 0
	leaq	16(%rsp), %rsi
	.loc 1 530 0
	leaq	8(%rsp), %rdi
	call	localtime_r
	.loc 1 532 0
	testl	%ebx, %ebx
	je	.L48
.LBB14:
	.loc 2 123 0
	movl	16(%rsp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	movl	20(%rsp), %eax
	sarl	%edx
	sall	$5, %eax
	orl	%eax, %edx
	movl	24(%rsp), %eax
.LBE14:
	.loc 1 535 0
	addq	$80, %rsp
	popq	%rbx
.LBB15:
	.loc 2 123 0
	sall	$11, %eax
.LBE15:
.LBB16:
	orl	%eax, %edx
.LBE16:
	movzwl	%dx, %eax
	.loc 1 535 0
	ret
	.p2align 4,,7
.L48:
.LBB17:
	.loc 2 123 0
	movl	32(%rsp), %eax
	movl	28(%rsp), %edx
	incl	%eax
	sall	$5, %eax
	orl	%eax, %edx
	movl	36(%rsp), %eax
.LBE17:
	.loc 1 535 0
	addq	$80, %rsp
	popq	%rbx
.LBB18:
	.loc 2 123 0
	subl	$80, %eax
	sall	$9, %eax
	orl	%eax, %edx
.LBE18:
	movzwl	%dx, %eax
	.loc 1 535 0
	ret
.LFE122:
	.size	fat_datetime, .-fat_datetime
	.section	.rodata
	.type	__PRETTY_FUNCTION__.15, @object
	.size	__PRETTY_FUNCTION__.15, 13
__PRETTY_FUNCTION__.15:
	.string	"read_cluster"
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 25
__PRETTY_FUNCTION__.0:
	.string	"find_mapping_for_cluster"
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 29
__PRETTY_FUNCTION__.1:
	.string	"find_mapping_for_cluster_aux"
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 10
__PRETTY_FUNCTION__.2:
	.string	"array_get"
	.section	.rodata.str1.1
.LC13:
	.string	"index1<=index2"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"!s->current_mapping || s->current_fd || (s->current_mapping->mode & MODE_DIRECTORY)"
	.section	.rodata.str1.1
.LC10:
	.string	"index < array->next"
.LC11:
	.string	"mapping->begin < mapping->end"
.LC12:
	.string	"index2!=index3 || index2==0"
.LC18:
	.string	"s->current_fd"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"!mapping || (cluster_num>=mapping->begin && cluster_num<mapping->end)"
	.align 8
.LC14:
	.string	"mapping->begin<=cluster_num && mapping->end>cluster_num"
	.align 8
.LC17:
	.string	"(char*)s->cluster+s->cluster_size <= s->directory.pointer+s->directory.next*s->directory.item_size"
	.align 8
.LC16:
	.string	"((s->cluster-(unsigned char*)s->directory.pointer)%s->cluster_size)==0"
	.text
	.p2align 4,,15
	.type	vvfat_read, @function
vvfat_read:
.LFB140:
	.loc 1 1283 0
	pushq	%r15
.LCFI16:
	.loc 1 1287 0
	xorl	%r15d, %r15d
	.loc 1 1283 0
	pushq	%r14
.LCFI17:
	pushq	%r13
.LCFI18:
	movq	%rsi, %r13
	pushq	%r12
.LCFI19:
	pushq	%rbp
.LCFI20:
	pushq	%rbx
.LCFI21:
	subq	$40, %rsp
.LCFI22:
	.loc 1 1287 0
	cmpl	%ecx, %r15d
	.loc 1 1283 0
	movq	%rdx, 24(%rsp)
	movl	%ecx, 20(%rsp)
	.loc 1 1284 0
	movq	56(%rdi), %rbx
	.loc 1 1287 0
	jge	.L130
	leaq	32832(%rbx), %r12
	.p2align 4,,7
.L128:
	.loc 1 1288 0
	mov	32880(%rbx), %eax
	cmpq	%r13, %rax
	jle	.L137
	.loc 1 1290 0
	movq	32944(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L141
.L57:
	.loc 1 1303 0
	movl	32876(%rbx), %edx
	mov	%edx, %eax
	cmpq	%r13, %rax
	jle	.L60
	.loc 1 1304 0
	mov	8(%rbx), %eax
	cmpq	%r13, %rax
	jg	.L142
	.loc 1 1306 0
	movq	%r13, %rsi
	subq	%rax, %rsi
	mov	32864(%rbx), %eax
	cmpq	%rax, %rsi
	jl	.L140
	.loc 1 1308 0
	subq	%rax, %rsi
	cmpq	%rax, %rsi
	jl	.L140
	.p2align 4,,7
.L55:
	.loc 1 1287 0
	incl	%r15d
	incq	%r13
	cmpl	20(%rsp), %r15d
	jl	.L128
.L130:
	.loc 1 1322 0
	xorl	%eax, %eax
.L52:
	.loc 1 1323 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L60:
.LBB19:
	.loc 1 1311 0
	movl	%r13d, %eax
	subl	%edx, %eax
	.loc 1 1312 0
	xorl	%edx, %edx
	divl	32860(%rbx)
	movl	%edx, 16(%rsp)
.LBB20:
.LBB21:
	.loc 1 1175 0
	cmpl	%eax, 32920(%rbx)
.LBE21:
.LBE20:
	.loc 1 1312 0
	movl	%eax, %ebp
.LBB22:
.LBB23:
	.loc 1 1175 0
	je	.L67
.LBB24:
	.loc 1 1178 0
	movq	32896(%rbx), %r9
	testq	%r9, %r9
	jne	.L143
.L72:
.LBB25:
.LBB26:
.LBB27:
.LBB28:
	.loc 1 1098 0
	movl	32844(%rbx), %r10d
	xorl	%edi, %edi
	movl	%r10d, %esi
	jmp	.L73
	.p2align 4,,7
.L147:
.LBB29:
.LBB30:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L144
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L132
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L145
.L73:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB31:
.LBB32:
	.loc 1 97 0
	cmpl	%ecx, 12(%r12)
	jbe	.L139
	movl	16(%r12), %eax
	movq	32832(%rbx), %r8
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE32:
.LBE31:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L146
	.loc 1 1105 0
	cmpl	%ebp, %edx
	jae	.L147
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L148
	.loc 1 1113 0
	movl	%ecx, %edi
	.loc 1 1115 0
	cmpl	%esi, %edi
	.p2align 4,,3
	jle	.L73
.L145:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE30:
.LBE29:
.LBE28:
.LBE27:
.LBE26:
.LBE25:
	.loc 1 1205 0
	call	__assert_fail
.L143:
	.loc 1 1178 0
	movl	32892(%rbx), %eax
	testl	%eax, %eax
	je	.L149
.L70:
	.loc 1 1179 0
	testq	%r9, %r9
	je	.L72
	cmpl	%ebp, (%r9)
	ja	.L72
	cmpl	%ebp, 4(%r9)
	.p2align 4,,5
	jbe	.L72
	.loc 1 1202 0
	testb	$4, 32(%r9)
	.p2align 4,,5
	je	.L122
.L107:
.LBB33:
	.loc 1 1191 0
	movl	%ebp, %eax
	subl	(%r9), %eax
	mov	32856(%rbx), %ecx
	.loc 1 1192 0
	movq	32808(%rbx), %rdi
	.loc 1 1191 0
	movl	%eax, %r14d
	.loc 1 1192 0
	movl	20(%r9), %eax
	.loc 1 1191 0
	imull	%ecx, %r14d
	.loc 1 1192 0
	sall	$5, %eax
	leaq	(%rdi,%r14), %rdx
	cltq
	leaq	(%rdx,%rax), %rsi
	.loc 1 1194 0
	movq	%rsi, %rax
	.loc 1 1192 0
	movq	%rsi, 32904(%rbx)
	.loc 1 1194 0
	subq	%rdi, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L150
	.loc 1 1195 0
	movl	32824(%rbx), %eax
	leaq	(%rsi,%rcx), %rdx
	imull	32820(%rbx), %eax
	leaq	(%rdi,%rax), %rax
	cmpq	%rax, %rdx
	ja	.L151
.L127:
.LBE33:
	.loc 1 1216 0
	movl	%ebp, 32920(%rbx)
.L67:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 1319 0
	sall	$9, 16(%rsp)
	movl	%r15d, %edi
	sall	$9, %edi
	mov	16(%rsp), %esi
	movslq	%edi,%rdi
	addq	32904(%rbx), %rsi
	addq	24(%rsp), %rdi
	jmp	.L136
.L140:
.LBE19:
	.loc 1 1309 0
	movl	%r15d, %edi
	salq	$9, %rsi
	addq	32784(%rbx), %rsi
	sall	$9, %edi
	movslq	%edi,%rdi
	addq	24(%rsp), %rdi
.L136:
.LBB34:
	.loc 1 1319 0
	movl	$512, %edx
	call	memcpy
	jmp	.L55
.L141:
.LBE34:
.LBB35:
	.loc 1 1292 0
	movl	20(%rsp), %edx
	movq	48(%rdi), %rax
	leaq	36(%rsp), %rcx
	movq	%r13, %rsi
	subl	%r15d, %edx
	call	*72(%rax)
	testl	%eax, %eax
	je	.L57
	.loc 1 1295 0
	movq	32944(%rbx), %rdi
	movl	%r15d, %edx
	movl	36(%rsp), %ecx
	sall	$9, %edx
	movq	%r13, %rsi
	movslq	%edx,%rdx
	addq	24(%rsp), %rdx
	movq	48(%rdi), %rax
	call	*32(%rax)
	testl	%eax, %eax
	jne	.L137
	.loc 1 1297 0
	movslq	36(%rsp),%rax
	leal	-1(%r15,%rax), %r15d
	.loc 1 1298 0
	leaq	-1(%rax,%r13), %r13
	jmp	.L55
.L142:
.LBE35:
	.loc 1 1305 0
	movl	%r15d, %edi
	movq	%r13, %rsi
	sall	$9, %edi
	salq	$9, %rsi
	movslq	%edi,%rdi
	addq	24(%rsp), %rdi
	leaq	12(%rsi,%rbx), %rsi
	jmp	.L136
.L149:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 1178 0
	testb	$4, 32(%r9)
	jne	.L70
	movl	$__PRETTY_FUNCTION__.15, %ecx
	movl	$1178, %edx
	movl	$.LC3, %esi
	movl	$.LC9, %edi
	.loc 1 1205 0
	call	__assert_fail
	.p2align 4,,7
.L139:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
.LBB44:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
.LBE44:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
	.loc 1 1205 0
	call	__assert_fail
.L146:
.LBB45:
.LBB46:
.LBB47:
.LBB48:
.LBB49:
.LBB50:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE50:
.LBE49:
.LBE48:
.LBE47:
.LBE46:
.LBE45:
	.loc 1 1205 0
	call	__assert_fail
.L132:
.LBB51:
.LBB52:
.LBB53:
.LBB54:
.LBB55:
.LBB56:
	.loc 1 1107 0
	movl	%edi, %edx
.L84:
.LBE56:
.LBE55:
.LBE54:
	.loc 1 1128 0
	cmpl	%r10d, %edx
	movq	$0, 8(%rsp)
	jae	.L103
.LBB57:
.LBB58:
	.loc 1 97 0
	cmpl	%edx, 12(%r12)
	jbe	.L139
	movl	16(%r12), %eax
	imull	%edx, %eax
	leaq	(%r8,%rax), %rax
.LBE58:
.LBE57:
	.loc 1 1131 0
	movl	(%rax), %edx
	movq	$0, 8(%rsp)
	cmpl	%ebp, %edx
	ja	.L103
	.loc 1 1133 0
	movl	4(%rax), %ecx
	cmpl	%ebp, %ecx
	jbe	.L152
.LBE53:
.LBE52:
	.loc 1 1185 0
	testq	%rax, %rax
.LBB59:
.LBB60:
	.loc 1 1133 0
	movq	%rax, 8(%rsp)
.LBE60:
.LBE59:
	.loc 1 1185 0
	je	.L135
	cmpl	%edx, %ebp
	jb	.L102
	cmpl	%ecx, %ebp
	.p2align 4,,2
	jae	.L102
	.loc 1 1187 0
	movq	8(%rsp), %rax
	testb	$4, 32(%rax)
	.p2align 4,,2
	je	.L103
.LBB61:
.LBB62:
	.loc 1 1084 0
	testq	%r9, %r9
	.p2align 4,,2
	je	.L104
	.loc 1 1086 0
	movl	32892(%rbx), %edi
	testl	%edi, %edi
	jne	.L153
.L104:
	.loc 1 1091 0
	movl	$-1, 32920(%rbx)
.LBE62:
.LBE61:
	.loc 1 1189 0
	movq	8(%rsp), %rdx
	movq	%rdx, %r9
	movq	%rdx, 32896(%rbx)
	jmp	.L107
.L103:
.LBB63:
.LBB64:
	.loc 1 1158 0
	cmpq	$0, 8(%rsp)
	je	.L135
	.loc 1 1160 0
	testq	%r9, %r9
	je	.L131
.LBB65:
	.loc 1 1161 0
	movq	8(%rsp), %rax
	movq	24(%r9), %rdi
	movq	24(%rax), %r14
	movq	%r14, %rsi
	call	strcmp
.LBE65:
	testl	%eax, %eax
	je	.L122
	jmp	.L117
.L148:
.LBE64:
.LBE63:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
.LBB70:
	.loc 1 1111 0
	cmpl	%ebp, %eax
	movl	%edi, %edx
	.p2align 4,,5
	ja	.L84
	movl	%esi, %edx
	.p2align 4,,5
	jmp	.L84
.L131:
	movq	8(%rsp), %rdx
	movq	24(%rdx), %r14
.L117:
.LBE70:
.LBE69:
.LBE68:
.LBE67:
.LBE66:
.LBB71:
.LBB72:
.LBB73:
	.loc 1 1163 0
	xorl	%esi, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	call	open64
	.loc 1 1164 0
	testl	%eax, %eax
	.loc 1 1163 0
	movl	%eax, %r14d
	.loc 1 1164 0
	js	.L135
.LBB74:
.LBB75:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbx)
	jne	.L154
.L119:
	.loc 1 1091 0
	movl	$-1, 32920(%rbx)
.LBE75:
.LBE74:
	.loc 1 1167 0
	movl	%r14d, 32892(%rbx)
	.loc 1 1168 0
	movq	8(%rsp), %rax
	movq	%rax, 32896(%rbx)
.L122:
.LBE73:
.LBE72:
.LBE71:
.LBE51:
	.loc 1 1205 0
	movl	32892(%rbx), %edi
	testl	%edi, %edi
	je	.L155
	.loc 1 1207 0
	movq	32896(%rbx), %rax
	movl	%ebp, %edx
	subl	(%rax), %edx
	imull	32856(%rbx), %edx
	movl	%edx, %r14d
	addl	16(%rax), %r14d
	.loc 1 1208 0
	xorl	%edx, %edx
	movq	%r14, %rsi
	call	lseek64
	cmpq	%r14, %rax
	je	.L156
.L135:
.LBE39:
.LBE38:
.LBE37:
	.loc 1 1316 0
	movl	%r15d, %edi
	movl	$512, %edx
	xorl	%esi, %esi
	sall	$9, %edi
	movslq	%edi,%rdi
	addq	24(%rsp), %rdi
	call	memset
	jmp	.L55
.L144:
.LBB76:
.LBB77:
.LBB78:
.LBB79:
.LBB80:
.LBB81:
.LBB82:
.LBB83:
.LBB84:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE84:
.LBE83:
.LBE82:
.LBE81:
.LBE80:
.LBE79:
	.loc 1 1205 0
	call	__assert_fail
.L154:
.LBB85:
.LBB86:
.LBB87:
.LBB88:
.LBB89:
.LBB90:
	.loc 1 1086 0
	movl	32892(%rbx), %edi
	testl	%edi, %edi
	je	.L119
	movq	$0, 32896(%rbx)
	.loc 1 1087 0
	call	close
	jmp	.L119
.L156:
.LBE90:
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBE85:
	.loc 1 1210 0
	movq	32912(%rbx), %rsi
	.loc 1 1211 0
	mov	32856(%rbx), %edx
	movl	32892(%rbx), %edi
	.loc 1 1210 0
	movq	%rsi, 32904(%rbx)
	.loc 1 1211 0
	call	read
	.loc 1 1212 0
	testl	%eax, %eax
	jns	.L127
	.loc 1 1213 0
	movl	$-1, 32920(%rbx)
	jmp	.L135
.L137:
.LBE78:
.LBE77:
.LBE76:
.LBE36:
.LBB91:
	.loc 1 1296 0
	movl	$-1, %eax
	.p2align 4,,2
	jmp	.L52
.L153:
	movq	$0, 32896(%rbx)
.LBE91:
.LBB92:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
.LBB97:
.LBB98:
	.loc 1 1087 0
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbx)
	jmp	.L104
.L155:
.LBE98:
.LBE97:
.LBE96:
	.loc 1 1205 0
	movl	$__PRETTY_FUNCTION__.15, %ecx
	movl	$1205, %edx
	movl	$.LC3, %esi
	movl	$.LC18, %edi
	call	__assert_fail
.L102:
.LBB99:
	.loc 1 1185 0
	movl	$__PRETTY_FUNCTION__.15, %ecx
	movl	$1185, %edx
	movl	$.LC3, %esi
	movl	$.LC15, %edi
.LBE99:
	.loc 1 1205 0
	call	__assert_fail
.L152:
.LBB100:
.LBB101:
.LBB102:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE102:
.LBE101:
.LBE100:
	.loc 1 1205 0
	call	__assert_fail
.L151:
.LBB103:
	.loc 1 1195 0
	movl	$__PRETTY_FUNCTION__.15, %ecx
	movl	$1195, %edx
	movl	$.LC3, %esi
	movl	$.LC17, %edi
.LBE103:
	.loc 1 1205 0
	call	__assert_fail
.L150:
.LBB104:
	.loc 1 1194 0
	movl	$__PRETTY_FUNCTION__.15, %ecx
	movl	$1194, %edx
	movl	$.LC3, %esi
	movl	$.LC16, %edi
.LBE104:
	.loc 1 1205 0
	call	__assert_fail
.LBE95:
.LBE94:
.LBE93:
.LBE92:
.LFE140:
	.size	vvfat_read, .-vvfat_read
	.p2align 4,,15
	.type	schedule_rename, @function
schedule_rename:
.LFB142:
	.loc 1 1379 0
	movq	%rbx, -48(%rsp)
.LCFI23:
.LBB105:
	.loc 1 115 0
	leaq	32968(%rdi), %rbx
.LBE105:
	.loc 1 1379 0
	movq	%r12, -32(%rsp)
.LCFI24:
	movq	%r14, -16(%rsp)
.LCFI25:
	movq	%r15, -8(%rsp)
.LCFI26:
	movq	%rdx, %r15
	movq	%rbp, -40(%rsp)
.LCFI27:
	movq	%r13, -24(%rsp)
.LCFI28:
	subq	$56, %rsp
.LCFI29:
	.loc 1 1379 0
	movl	%esi, 4(%rsp)
.LBB106:
.LBB107:
	.loc 1 116 0
	movl	12(%rbx), %ebp
.LBE107:
.LBE106:
	.loc 1 1379 0
	movq	%rdi, %r12
.LBB108:
.LBB109:
.LBB110:
.LBB111:
	.loc 1 103 0
	movl	16(%rbx), %edx
	leal	1(%rbp), %r14d
	movl	%r14d, %eax
	imull	%edx, %eax
	cmpl	8(%rbx), %eax
	ja	.L167
.L159:
.LBE111:
.LBE110:
	.loc 1 122 0
	leal	1(%rbp), %eax
.LBB112:
.LBB113:
	.loc 1 97 0
	cmpl	%ebp, %eax
.LBE113:
.LBE112:
	.loc 1 122 0
	movl	%eax, 12(%rbx)
.LBB114:
.LBB115:
	.loc 1 97 0
	jbe	.L168
	movl	16(%rbx), %edx
	imull	%ebp, %edx
.LBE115:
.LBE114:
	.loc 1 123 0
	addq	(%rbx), %rdx
.L162:
.LBE109:
.LBE108:
	.loc 1 1381 0
	movq	%r15, (%rdx)
	.loc 1 1382 0
	movl	4(%rsp), %eax
	.loc 1 1383 0
	movl	$0, 16(%rdx)
	.loc 1 1382 0
	movl	%eax, 8(%rdx)
	.loc 1 1383 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L167:
.LBB116:
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.loc 1 104 0
	leal	32(%rbp), %r13d
	.loc 1 105 0
	movq	32968(%rdi), %rdi
	.loc 1 104 0
	imull	%edx, %r13d
	.loc 1 105 0
	movslq	%r13d,%rsi
	call	realloc
.LBE120:
.LBE119:
.LBE118:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB121:
.LBB122:
.LBB123:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32968(%r12)
	.loc 1 106 0
	je	.L162
	.loc 1 108 0
	movl	%r13d, 8(%rbx)
	.loc 1 109 0
	movl	%r14d, 12(%rbx)
	jmp	.L159
.L168:
.LBE123:
.LBE122:
.LBE121:
.LBB124:
.LBB125:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.LBE125:
.LBE124:
.LBE117:
.LBE116:
.LFE142:
	.size	schedule_rename, .-schedule_rename
	.p2align 4,,15
	.type	lfn_init, @function
lfn_init:
.LFB146:
	.loc 1 1420 0
	.loc 1 1421 0
	movl	$0, 1028(%rdi)
	movl	$0, 1032(%rdi)
	.loc 1 1422 0
	movl	$256, 1024(%rdi)
	ret
.LFE146:
	.size	lfn_init, .-lfn_init
	.p2align 4,,15
	.type	parse_long_name, @function
parse_long_name:
.LFB147:
	.loc 1 1428 0
	pushq	%r12
.LCFI30:
	pushq	%rbp
.LCFI31:
	movq	%rdi, %rbp
	.loc 1 1432 0
	movq	%rsi, %rdi
	.loc 1 1428 0
	pushq	%rbx
.LCFI32:
	.loc 1 1428 0
	movq	%rsi, %rbx
	.loc 1 1432 0
	call	is_long_name
	testb	%al, %al
	.loc 1 1433 0
	movl	$1, %edx
	.loc 1 1432 0
	je	.L170
	.loc 1 1435 0
	movzbl	(%rbx), %eax
	testb	$64, %al
	je	.L172
	.loc 1 1436 0
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, 1032(%rbp)
	.loc 1 1437 0
	movzbl	13(%rbx), %eax
	.loc 1 1438 0
	movb	$0, (%rbp)
	.loc 1 1437 0
	movl	%eax, 1024(%rbp)
.L173:
	.loc 1 1446 0
	movl	%ecx, %eax
	movl	$13, %edx
	.loc 1 1447 0
	xorl	%esi, %esi
	.loc 1 1446 0
	imull	%edx, %eax
	.loc 1 1447 0
	movl	$1, %ecx
	.loc 1 1446 0
	leal	-13(%rax), %r12d
	jmp	.L191
	.p2align 4,,7
.L197:
	.loc 1 1454 0
	movzbl	(%rdx,%rbx), %edx
	leal	(%r12,%rsi), %eax
	.loc 1 1447 0
	incl	%esi
	addl	$2, %ecx
	cmpl	$12, %esi
	.loc 1 1454 0
	cltq
	movb	%dl, (%rbp,%rax)
	.loc 1 1447 0
	jg	.L195
.L191:
	.loc 1 1448 0
	cmpl	$11, %ecx
	je	.L196
	.loc 1 1451 0
	cmpl	$26, %ecx
	movl	$28, %eax
	cmove	%eax, %ecx
.L184:
	.loc 1 1453 0
	movslq	%ecx,%rdx
	movzbl	1(%rdx,%rbx), %eax
	testb	%al, %al
	je	.L197
	.loc 1 1455 0
	incb	%al
	jne	.L189
	testb	$64, (%rbx)
	je	.L189
	.loc 1 1458 0
	leal	(%r12,%rsi), %eax
	.loc 1 1447 0
	incl	%esi
	addl	$2, %ecx
	cmpl	$12, %esi
	.loc 1 1458 0
	cltq
	movb	$0, (%rbp,%rax)
	.loc 1 1447 0
	jle	.L191
.L195:
	.loc 1 1461 0
	testb	$64, (%rbx)
	je	.L192
	.loc 1 1462 0
	movslq	%r12d,%rdi
	addq	%rbp, %rdi
	call	strlen
	leal	(%r12,%rax), %eax
	movl	%eax, 1028(%rbp)
.L192:
	.loc 1 1464 0
	xorl	%edx, %edx
	.p2align 4,,7
.L170:
	.loc 1 1465 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	movl	%edx, %eax
	ret
.L172:
	.loc 1 1439 0
	movl	1032(%rbp), %ecx
	andl	$63, %eax
	.loc 1 1440 0
	movl	$-1, %edx
	.loc 1 1439 0
	decl	%ecx
	cmpl	%ecx, %eax
	movl	%ecx, 1032(%rbp)
	jne	.L170
	.loc 1 1441 0
	movzbl	13(%rbx), %eax
	.loc 1 1442 0
	movb	$-2, %dl
	.loc 1 1441 0
	cmpl	1024(%rbp), %eax
	jne	.L170
	.loc 1 1443 0
	cmpb	$0, 12(%rbx)
	jne	.L179
	cmpb	$0, 26(%rbx)
	jne	.L179
	cmpb	$0, 27(%rbx)
	.p2align 4,,5
	je	.L173
.L179:
	.loc 1 1465 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	.loc 1 1444 0
	movl	$-3, %edx
	.loc 1 1465 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L196:
	.loc 1 1449 0
	movb	$14, %cl
	jmp	.L184
.L189:
	.loc 1 1456 0
	movl	$-4, %edx
	jmp	.L170
.LFE147:
	.size	parse_long_name, .-parse_long_name
	.p2align 4,,15
	.type	get_basename, @function
get_basename:
.LFB151:
	.loc 1 1544 0
	pushq	%rbx
.LCFI33:
	.loc 1 1545 0
	movl	$47, %esi
	.loc 1 1544 0
	movq	%rdi, %rbx
	.loc 1 1545 0
	call	strrchr
	.loc 1 1547 0
	leaq	1(%rax), %rdx
	testq	%rax, %rax
	cmovne	%rdx, %rbx
	.loc 1 1550 0
	movq	%rbx, %rax
	popq	%rbx
	ret
.LFE151:
	.size	get_basename, .-get_basename
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 28
__PRETTY_FUNCTION__.5:
	.string	"check_directory_consistency"
	.align 16
	.type	__PRETTY_FUNCTION__.6, @object
	.size	__PRETTY_FUNCTION__.6, 31
__PRETTY_FUNCTION__.6:
	.string	"get_cluster_count_for_direntry"
	.section	.rodata.str1.1
.LC23:
	.string	"Error fetching direntries\n"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"cluster %d used more than once\n"
	.section	.rodata.str1.1
.LC24:
	.string	"Error in long name\n"
.LC29:
	.string	"mapping->mode & MODE_NORMAL"
.LC21:
	.string	"mapping->mode & MODE_DELETED"
.LC28:
	.string	"Name too long: %s/%s\n"
.LC25:
	.string	"Error in short name (%d)\n"
.LC30:
	.string	"0"
.LC19:
	.string	"path_len < 4096"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"mapping->mode & MODE_DIRECTORY"
	.text
	.p2align 4,,15
	.type	check_directory_consistency, @function
check_directory_consistency:
.LFB153:
	.loc 1 1722 0
	pushq	%r15
.LCFI34:
	pushq	%r14
.LCFI35:
	pushq	%r13
.LCFI36:
	movq	%rdi, %r13
	pushq	%r12
.LCFI37:
	pushq	%rbp
.LCFI38:
	pushq	%rbx
.LCFI39:
	subq	$5320, %rsp
.LCFI40:
	.loc 1 1722 0
	movl	%esi, 164(%rsp)
	movq	%rdx, 152(%rsp)
	.loc 1 1723 0
	movl	$0, 148(%rsp)
	.loc 1 1724 0
	mov	32856(%rdi), %edi
	call	malloc
	movq	%rax, 136(%rsp)
.LBB126:
.LBB127:
.LBB128:
	.loc 1 1098 0
	movl	32844(%r13), %r9d
	leaq	32832(%r13), %rax
	xorl	%edi, %edi
	movq	%rax, 48(%rsp)
	movl	%r9d, %esi
	jmp	.L202
.L579:
.LBB129:
.LBB130:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L571
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L523
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L572
.L202:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
.LBB131:
.LBB132:
	.loc 1 97 0
	movq	48(%rsp), %rdx
.LBE132:
.LBE131:
	.loc 1 1102 0
	sarl	%ecx
.LBB133:
.LBB134:
	.loc 1 97 0
	cmpl	%ecx, 12(%rdx)
	jbe	.L578
	movq	48(%rsp), %rbx
	movq	32832(%r13), %r8
	movl	16(%rbx), %eax
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE134:
.LBE133:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L570
	.loc 1 1105 0
	cmpl	164(%rsp), %edx
	jae	.L579
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L580
	.loc 1 1113 0
	movl	%ecx, %edi
	.loc 1 1115 0
	cmpl	%esi, %edi
	jle	.L202
.L572:
.LBE130:
.LBE129:
.LBE128:
.LBE127:
.LBE126:
.LBB135:
.LBB136:
.LBB137:
.LBB138:
.LBB139:
.LBB140:
.LBB141:
.LBB142:
.LBB143:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE143:
.LBE142:
.LBE141:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
	.loc 1 1830 0
	call	__assert_fail
.L578:
.LBB144:
.LBB145:
.LBB146:
.LBB147:
.LBB148:
.LBB149:
.LBB150:
.LBB151:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
.LBE151:
.LBE150:
.LBE149:
.LBE148:
.LBE147:
.LBE146:
.LBE145:
.LBE144:
	.loc 1 1830 0
	call	__assert_fail
.L570:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE158:
.LBE157:
.LBE156:
.LBE155:
.LBE154:
.LBE153:
.LBE152:
	.loc 1 1830 0
	call	__assert_fail
.L580:
.LBE136:
.LBE135:
.LBB159:
.LBB160:
.LBB161:
.LBB162:
.LBB163:
	.loc 1 1111 0
	cmpl	164(%rsp), %eax
	movl	%edi, %edx
	ja	.L213
	movl	%esi, %edx
.L213:
.LBE163:
.LBE162:
.LBE161:
	.loc 1 1128 0
	xorl	%ebp, %ebp
	cmpl	%r9d, %edx
	jae	.L221
.LBB164:
.LBB165:
	.loc 1 97 0
	movq	48(%rsp), %rax
	cmpl	%edx, 12(%rax)
	jbe	.L578
	movq	48(%rsp), %rcx
.LBE165:
.LBE164:
	.loc 1 1131 0
	xorl	%ebp, %ebp
	movl	164(%rsp), %ebx
.LBB166:
.LBB167:
	.loc 1 97 0
	movl	16(%rcx), %eax
	imull	%edx, %eax
	leaq	(%r8,%rax), %rax
.LBE167:
.LBE166:
	.loc 1 1131 0
	cmpl	%ebx, (%rax)
	ja	.L221
	.loc 1 1133 0
	cmpl	%ebx, 4(%rax)
	movq	%rax, %rbp
	jbe	.L566
.L221:
.LBE160:
.LBE159:
	.loc 1 1729 0
	movq	152(%rsp), %rdi
	call	strlen
	.loc 1 1732 0
	cmpl	$4095, %eax
	.loc 1 1729 0
	movl	%eax, 132(%rsp)
	.loc 1 1732 0
	jg	.L581
	.loc 1 1733 0
	movq	152(%rsp), %rsi
	leaq	176(%rsp), %rdi
	call	strcpy
	.loc 1 1734 0
	movslq	132(%rsp),%rax
	movq	%rax, 40(%rsp)
	movb	$47, 176(%rsp,%rax)
	.loc 1 1735 0
	movl	132(%rsp), %eax
	incl	%eax
	.loc 1 1737 0
	testq	%rbp, %rbp
	.loc 1 1735 0
	cltq
	movb	$0, 176(%rsp,%rax)
	.loc 1 1737 0
	je	.L231
.LBB168:
	.loc 1 1738 0
	movq	24(%rbp), %rdi
	call	get_basename
	.loc 1 1739 0
	movq	152(%rsp), %rdi
	.loc 1 1738 0
	movq	%rax, %rbx
	.loc 1 1739 0
	call	get_basename
	movq	%rax, %rsi
	.loc 1 1741 0
	movl	32(%rbp), %eax
	testb	$4, %al
	je	.L582
	.loc 1 1743 0
	testb	$16, %al
	movl	$__PRETTY_FUNCTION__.5, %ecx
	movl	$1743, %edx
	je	.L567
	.loc 1 1744 0
	andl	$-17, %eax
.LBB169:
	.loc 1 1746 0
	movq	%rbx, %rdi
.LBE169:
	.loc 1 1744 0
	movl	%eax, 32(%rbp)
.LBB170:
	.loc 1 1746 0
	call	strcmp
.LBE170:
	testl	%eax, %eax
	jne	.L583
.L237:
.LBE168:
	.loc 1 1752 0
	leaq	4272(%rsp), %rdi
	leaq	32968(%r13), %rbx
	call	lfn_init
	movq	%rbx, 24(%rsp)
	.p2align 4,,7
.L247:
.LBB171:
	.loc 1 1757 0
	incl	148(%rsp)
	.loc 1 1759 0
	movslq	164(%rsp),%rdx
	movq	32960(%r13), %rax
	testb	$3, (%rax,%rdx)
	jne	.L525
	.loc 1 1763 0
	movb	$1, (%rax,%rdx)
.LBB172:
.LBB173:
	.loc 1 825 0
	movl	32860(%r13), %ecx
	movl	164(%rsp), %esi
.LBE173:
.LBE172:
	.loc 1 824 0
	movq	136(%rsp), %rdx
	movq	(%r13), %rdi
.LBB174:
.LBB175:
	.loc 1 825 0
	imull	%ecx, %esi
	addl	32876(%r13), %esi
.LBE175:
.LBE174:
	.loc 1 824 0
	call	vvfat_read
	.loc 1 1768 0
	testl	%eax, %eax
	jne	.L584
	.loc 1 1775 0
	movl	32860(%r13), %r12d
	xorl	%r14d, %r14d
	movl	%r12d, %eax
	sall	$4, %eax
	cmpl	%eax, %r14d
	jae	.L505
	leaq	32968(%r13), %rax
	movq	%rax, 32(%rsp)
	jmp	.L488
	.p2align 4,,7
.L256:
	movl	%r12d, %eax
	incl	%r14d
	sall	$4, %eax
	cmpl	%eax, %r14d
	jae	.L505
.L488:
.LBB176:
	.loc 1 1779 0
	movq	136(%rsp), %rdx
	movslq	%r14d,%r15
	movq	%r15, %rax
	salq	$5, %rax
	leaq	(%rax,%rdx), %rbx
	movq	%rbx, %rdi
	call	is_volume_label
	testb	%al, %al
	jne	.L256
.LBB177:
.LBB178:
	.loc 1 484 0
	movq	%rbx, %rdi
	xorl	%ebp, %ebp
	call	is_short_name
	testb	%al, %al
	je	.L260
	cmpb	$46, (%rbx)
	movl	$1, %eax
	cmove	%eax, %ebp
.L260:
.LBE178:
.LBE177:
	.loc 1 483 0
	testl	%ebp, %ebp
	jne	.L256
	movq	%rbx, %rdi
	call	is_free
	testb	%al, %al
	jne	.L256
	.loc 1 1783 0
	leaq	4272(%rsp), %rdi
	movq	%rbx, %rsi
	call	parse_long_name
	.loc 1 1784 0
	testl	%eax, %eax
	jl	.L526
	.loc 1 1788 0
	jne	.L585
.L520:
	movl	32860(%r13), %r12d
.LBE176:
	.loc 1 1775 0
	incl	%r14d
	movl	%r12d, %eax
	sall	$4, %eax
	cmpl	%eax, %r14d
	jb	.L488
	.p2align 4,,7
.L505:
.LBB179:
.LBB180:
	.loc 1 1509 0
	movl	32872(%r13), %eax
	cmpl	164(%rsp), %eax
	jbe	.L489
	.loc 1 1510 0
	movl	164(%rsp), %edx
	incl	%edx
	cmpl	%eax, %edx
	movl	%edx, %esi
	je	.L586
.L558:
	movl	32888(%r13), %edx
.L491:
.LBE180:
.LBE179:
.LBE171:
.LBB181:
.LBB182:
	.loc 1 577 0
	leal	-8(%rdx), %eax
.LBE182:
.LBE181:
.LBB183:
	.loc 1 1508 0
	movl	%esi, 164(%rsp)
.LBE183:
.LBB184:
.LBB185:
	.loc 1 577 0
	cmpl	%esi, %eax
	jae	.L247
.LBE185:
.LBE184:
	.loc 1 1838 0
	movq	136(%rsp), %rdi
	call	free
	.loc 1 1839 0
	movl	148(%rsp), %eax
	.loc 1 1840 0
	addq	$5320, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L489:
.LBB186:
.LBB187:
.LBB188:
	.loc 1 1516 0
	movl	32780(%r13), %eax
	cmpl	$32, %eax
	je	.L587
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L588
.LBB189:
	.loc 1 1523 0
	movl	164(%rsp), %edx
	leal	(%rdx,%rdx,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%r13), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	testb	$1, 164(%rsp)
	je	.L499
	movl	%edx, %esi
	shrl	$4, %esi
	jmp	.L558
.L585:
.LBE189:
.LBE188:
.LBE187:
.LBB190:
	.loc 1 1788 0
	movq	%rbx, %rdi
	call	is_free
	testb	%al, %al
	jne	.L520
.LBB191:
.LBB192:
	.loc 1 512 0
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movl	$10, %esi
	.p2align 4,,7
.L270:
	.loc 1 516 0
	movzbl	%dl, %eax
	movl	%eax, %edx
	shrl	%edx
	testb	$1, %al
	je	.L268
	orb	$-128, %dl
.L268:
	movzbl	(%rcx), %eax
	incq	%rcx
	addl	%edx, %eax
	decl	%esi
	movl	%eax, %edx
	jns	.L270
.LBE192:
.LBE191:
	.loc 1 511 0
	movzbl	%al, %eax
	cmpl	5296(%rsp), %eax
	je	.L264
.LBB193:
	.loc 1 1470 0
	movq	%r15, %rax
	salq	$5, %rax
	addq	136(%rsp), %rax
	movq	%rax, 120(%rsp)
.LBB194:
	.loc 1 1473 0
	movq	%rax, %rdi
	call	is_short_name
	testb	%al, %al
	movl	$1, %edx
	je	.L273
	.loc 1 1476 0
	movq	120(%rsp), %rcx
	movl	$7, %r12d
	cmpb	$32, 7(%rcx)
	jne	.L275
.L589:
	decl	%r12d
	js	.L275
	movq	120(%rsp), %rbx
	movslq	%r12d,%rax
	cmpb	$32, (%rbx,%rax)
	je	.L589
.L275:
	.loc 1 1477 0
	xorl	%r8d, %r8d
	cmpl	%r12d, %r8d
	jg	.L510
.L590:
	.loc 1 1478 0
	movq	120(%rsp), %rax
	movslq	%r8d,%rbp
	movzbl	(%rax,%rbp), %ebx
	leal	-33(%rbx), %eax
	cmpb	$94, %al
	ja	.L527
	.loc 1 1480 0
	movl	33000(%r13), %r11d
	testl	%r11d, %r11d
	je	.L283
.LBB195:
	.loc 1 1481 0
	movl	%r8d, 8(%rsp)
	call	__ctype_tolower_loc
	movq	(%rax), %rax
	movzbl	%bl, %edx 
	movl	(%rax,%rdx,4), %eax
.LBE195:
	movb	%al, 4272(%rsp,%rbp)
	movl	8(%rsp), %r8d
	.loc 1 1477 0
	incl	%r8d
.L593:
	cmpl	%r12d, %r8d
	jle	.L590
.L510:
	.loc 1 1486 0
	movq	120(%rsp), %rdx
	movl	$2, %r12d
	cmpb	$32, 10(%rdx)
	jne	.L540
.L591:
	decl	%r12d
	js	.L298
	movq	120(%rsp), %rcx
	movslq	%r12d,%rax
	cmpb	$32, 8(%rcx,%rax)
	je	.L591
.L540:
	.loc 1 1488 0
	movslq	%r8d,%rax
	incl	%r8d
	movb	$46, 4272(%rsp,%rax)
	.loc 1 1489 0
	leal	1(%r8,%r12), %eax
	cltq
	movb	$0, 4272(%rsp,%rax)
	jmp	.L314
.L592:
	.loc 1 1494 0
	leal	(%r8,%r12), %ebx
.LBB196:
	movl	%r8d, 8(%rsp)
	call	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	%ebp, %ecx
.LBE196:
	movslq	%ebx,%rbx
.LBB197:
	movzbl	%cl, %edx 
.LBE197:
	.loc 1 1490 0
	decl	%r12d
.LBB198:
	.loc 1 1494 0
	movl	(%rax,%rdx,4), %eax
.LBE198:
	movb	%al, 4272(%rsp,%rbx)
	movl	8(%rsp), %r8d
	.loc 1 1490 0
	js	.L315
.L314:
	.loc 1 1491 0
	movq	120(%rsp), %rbx
	movslq	%r12d,%rax
	movzbl	8(%rbx,%rax), %ebp
	leal	-33(%rbp), %eax
	cmpb	$94, %al
	ja	.L528
	.loc 1 1493 0
	movl	33000(%r13), %r10d
	testl	%r10d, %r10d
	jne	.L592
	.loc 1 1496 0
	leal	(%r8,%r12), %eax
	.loc 1 1490 0
	decl	%r12d
	.loc 1 1496 0
	cltq
	movb	%bpl, 4272(%rsp,%rax)
	.loc 1 1490 0
	jns	.L314
.L315:
	.loc 1 1501 0
	leaq	4272(%rsp), %rcx
.L316:
	movl	(%rcx), %eax
	addq	$4, %rcx
	leal	-16843009(%rax), %edx
	notl	%eax
	andl	%eax, %edx
	andl	$-2139062144, %edx
	je	.L316
	movl	%edx, %eax
	leaq	4272(%rsp), %rbx
	shrl	$16, %eax
	testl	$32896, %edx
	cmove	%eax, %edx
	leaq	2(%rcx), %rax
	cmove	%rax, %rcx
	addb	%dl, %dl
	sbbq	$3, %rcx
	xorl	%edx, %edx
	subq	%rbx, %rcx
	movl	%ecx, 5300(%rsp)
.L273:
.LBE194:
.LBE193:
	.loc 1 1793 0
	testl	%edx, %edx
	jl	.L529
	.loc 1 1797 0
	jg	.L520
.LBB199:
.LBB200:
	movzbl	4272(%rsp), %eax
	movl	%eax, %edx
	subl	$46, %edx
	jne	.L323
	movzbl	4273(%rsp), %edx
.L323:
.LBE200:
.LBE199:
	testl	%edx, %edx
	je	.L520
.LBB201:
.LBB202:
	.loc 1 1798 0
	subl	$46, %eax
	jne	.L328
	movzbl	4273(%rsp), %eax
	subl	$46, %eax
	jne	.L328
	movzbl	4274(%rsp), %eax
.L328:
.LBE202:
.LBE201:
	testl	%eax, %eax
	je	.L520
.L264:
	.loc 1 1803 0
	movl	132(%rsp), %eax
	addl	5300(%rsp), %eax
	.loc 1 1801 0
	movl	$256, 5296(%rsp)
	.loc 1 1803 0
	incl	%eax
	cmpl	$4095, %eax
	jg	.L530
	.loc 1 1807 0
	movq	40(%rsp), %rax
	leaq	4272(%rsp), %rsi
	leaq	177(%rsp,%rax), %rdi
	call	strcpy
	.loc 1 1809 0
	movq	%r15, %rax
	salq	$5, %rax
	addq	136(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	%rax, %rdi
	call	is_directory
	testb	%al, %al
	je	.L332
.LBB203:
.LBB204:
	.loc 2 123 0
	movq	112(%rsp), %rcx
	movzwl	26(%rcx), %edx
	movzwl	20(%rcx), %eax
.LBE204:
.LBE203:
	.loc 1 493 0
	movl	%edx, %esi
.LBB205:
.LBB206:
	.loc 2 123 0
	sall	$16, %eax
.LBE206:
.LBE205:
	.loc 1 493 0
	orl	%eax, %esi
	je	.L253
	leaq	176(%rsp), %rdx
	movq	%r13, %rdi
	call	check_directory_consistency
	.loc 1 1816 0
	testl	%eax, %eax
	.loc 1 493 0
	movl	%eax, %ecx
	.loc 1 1816 0
	je	.L253
.L342:
	.loc 1 1832 0
	addl	%ecx, 148(%rsp)
	jmp	.L520
.L586:
.LBE190:
.LBB207:
.LBB208:
	.loc 1 1510 0
	movl	32888(%r13), %esi
	movl	%esi, %edx
	jmp	.L491
.L587:
.LBB209:
	.loc 1 1517 0
	mov	164(%rsp), %edx
	movq	32952(%r13), %rax
.LBB210:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %esi
	jmp	.L558
.L499:
.LBE210:
.LBE209:
.LBB211:
	.loc 1 1523 0
	movl	%edx, %esi
	andl	$4095, %esi
	jmp	.L558
.L588:
.LBE211:
.LBB212:
	.loc 1 1520 0
	mov	164(%rsp), %edx
	movq	32952(%r13), %rax
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %esi
	jmp	.L558
.L523:
.LBE212:
.LBE208:
.LBE207:
.LBE186:
.LBB213:
.LBB214:
.LBB215:
.LBB216:
.LBB217:
	.loc 1 1107 0
	movl	%edi, %edx
	jmp	.L213
.L571:
.LBE217:
.LBE216:
.LBE215:
.LBE214:
.LBE213:
.LBB218:
.LBB219:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
.LBB224:
.LBB225:
.LBB226:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE226:
.LBE225:
.LBE224:
.LBE223:
.LBE222:
.LBE221:
.LBE220:
	.loc 1 1830 0
	call	__assert_fail
.L583:
.LBE219:
.LBE218:
.LBB227:
	.loc 1 1747 0
	movq	152(%rsp), %rdi
	call	__strdup
	movl	164(%rsp), %esi
	movq	%rax, %rdx
	movq	%r13, %rdi
	call	schedule_rename
	jmp	.L237
	.p2align 4,,7
.L283:
.LBE227:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
	.loc 1 1477 0
	incl	%r8d
	.loc 1 1483 0
	movb	%bl, 4272(%rsp,%rbp)
	jmp	.L593
.L332:
.LBE231:
.LBE230:
	.loc 1 1820 0
	movq	112(%rsp), %rdi
	call	is_file
	testb	%al, %al
	je	.L343
.LBB232:
.LBB233:
.LBB234:
.LBB235:
	.loc 2 123 0
	movq	112(%rsp), %rbx
.LBE235:
.LBE234:
	.loc 1 1593 0
	movl	$0, 108(%rsp)
	.loc 1 1594 0
	movl	$0, 104(%rsp)
	.loc 1 1595 0
	movl	$0, 100(%rsp)
.LBB236:
.LBB237:
	.loc 2 123 0
	movzwl	20(%rbx), %eax
	movzwl	26(%rbx), %ebp
.LBE237:
.LBE236:
	.loc 1 1598 0
	movl	$0, 92(%rsp)
	.loc 1 1599 0
	movl	$-1, 88(%rsp)
	.loc 1 1600 0
	movq	$0, 80(%rsp)
	.loc 1 1601 0
	movq	$0, 72(%rsp)
.LBB238:
.LBB239:
	.loc 2 123 0
	sall	$16, %eax
	orl	%eax, %ebp
.LBE239:
.LBE238:
	.loc 1 493 0
	movl	%ebp, 96(%rsp)
.LBB240:
.LBB241:
	.loc 1 1084 0
	cmpq	$0, 32896(%r13)
	je	.L347
	.loc 1 1086 0
	movl	32892(%r13), %edi
	.loc 1 1085 0
	movq	$0, 32896(%r13)
	.loc 1 1086 0
	testl	%edi, %edi
	jne	.L594
.L347:
.LBE241:
.LBE240:
	.loc 1 1606 0
	xorl	%esi, %esi
	testl	%ebp, %ebp
.LBB242:
.LBB243:
	.loc 1 1091 0
	movl	$-1, 32920(%r13)
.LBE243:
.LBE242:
	.loc 1 1606 0
	je	.L351
	.loc 1 1610 0
	cmpq	$0, 32944(%r13)
	je	.L400
	.loc 1 1611 0
	leaq	176(%rsp), %rdi
	call	get_basename
	movq	%rax, 72(%rsp)
.LBB244:
.LBB245:
.LBB246:
	.loc 1 1098 0
	movl	32844(%r13), %r9d
	xorl	%edi, %edi
	movl	%r9d, %esi
	jmp	.L353
.L595:
.LBB247:
.LBB248:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L571
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L531
	.loc 1 1109 0
	movl	%ecx, %esi
.L365:
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L572
.L353:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
.LBB249:
.LBB250:
	.loc 1 97 0
	movq	48(%rsp), %rax
.LBE250:
.LBE249:
	.loc 1 1102 0
	sarl	%ecx
.LBB251:
.LBB252:
	.loc 1 97 0
	cmpl	%ecx, 12(%rax)
	jbe	.L578
	movq	48(%rsp), %rdx
	movq	32832(%r13), %r8
	movl	16(%rdx), %eax
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE252:
.LBE251:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L570
	.loc 1 1105 0
	cmpl	%ebp, %edx
	jae	.L595
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L596
	.loc 1 1113 0
	movl	%ecx, %edi
	.p2align 4,,5
	jmp	.L365
.L609:
.LBE248:
.LBE247:
.LBE246:
.LBE245:
.LBE244:
.LBB253:
	.loc 1 1689 0
	movq	32912(%r13), %rdx
	movq	(%r13), %rdi
	movl	$1, %ecx
	movq	%rbp, %rsi
	call	vvfat_read
	testl	%eax, %eax
	jne	.L484
	.loc 1 1692 0
	movq	32944(%r13), %rdi
	movq	32912(%r13), %rdx
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	48(%rdi), %rax
	call	*40(%rax)
	testl	%eax, %eax
	je	.L461
	movl	$-2, %esi
.L351:
.LBE253:
.LBE233:
.LBE232:
	.loc 2 124 0
	movq	136(%rsp), %rbx
.LBB254:
	salq	$5, %r15
.LBE254:
	movl	32856(%r13), %edi
	.loc 1 1575 0
	movl	%esi, %ecx
	.loc 2 124 0
	movl	28(%r15,%rbx), %edx
	addl	%edi, %edx
	leal	-1(%rdx), %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%edi
	cmpl	%eax, %ecx
	je	.L342
.L253:
.LBE229:
	.loc 1 1771 0
	movq	136(%rsp), %rdi
	call	free
	.loc 1 1772 0
	xorl	%eax, %eax
.L605:
.LBE228:
	.loc 1 1840 0
	addq	$5320, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L298:
.LBB255:
.LBB256:
.LBB257:
.LBB258:
	.loc 1 1499 0
	leal	1(%r8,%r12), %eax
	cltq
	movb	$0, 4272(%rsp,%rax)
	jmp	.L315
.L527:
	.loc 1 1478 0
	movl	$-1, %edx
	jmp	.L273
.L528:
	.loc 1 1491 0
	movl	$-2, %edx
	jmp	.L273
.L533:
.LBE258:
.LBE257:
.LBB259:
.LBB260:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
	.loc 1 1107 0
	movl	%r10d, %eax
.L422:
.LBE265:
.LBE264:
.LBE263:
	.loc 1 1128 0
	xorl	%edx, %edx
	cmpl	%r9d, %eax
	jae	.L430
.LBB266:
.LBB267:
	.loc 1 97 0
	movq	48(%rsp), %rcx
	cmpl	%eax, 12(%rcx)
	jbe	.L578
	movq	48(%rsp), %rbx
.LBE267:
.LBE266:
	.loc 1 1131 0
	xorl	%edx, %edx
	movl	96(%rsp), %ecx
.LBB268:
.LBB269:
	.loc 1 97 0
	imull	16(%rbx), %eax
	leaq	(%r8,%rax), %rax
.LBE269:
.LBE268:
	.loc 1 1131 0
	cmpl	%ecx, (%rax)
	ja	.L430
	.loc 1 1133 0
	cmpl	%ecx, 4(%rax)
	jbe	.L597
	movq	%rax, %rdx
.L430:
.LBE262:
.LBE261:
	.loc 1 1125 0
	movq	%rdx, 80(%rsp)
.L409:
	.loc 1 1646 0
	cmpq	$0, 80(%rsp)
	je	.L400
	movq	80(%rsp), %rbx
	testb	$4, 32(%rbx)
	jne	.L400
	.loc 1 1650 0
	movl	96(%rsp), %eax
	subl	(%rbx), %eax
	imull	32856(%r13), %eax
	addl	16(%rbx), %eax
	cmpl	92(%rsp), %eax
	jne	.L598
	.loc 1 1655 0
	movl	92(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L440
.LBB270:
	.loc 1 1656 0
	movq	80(%rsp), %rax
	movq	24(%rax), %rdi
	call	get_basename
.LBB271:
	.loc 1 1658 0
	movq	72(%rsp), %rsi
.LBE271:
	.loc 1 1656 0
	movq	%rax, %rdi
.LBB272:
	.loc 1 1658 0
	call	strcmp
.LBE272:
	.loc 1 1659 0
	testl	%eax, %eax
	movl	$1, %eax
	cmove	108(%rsp), %eax
	.loc 1 1660 0
	movq	80(%rsp), %rsi
	movq	48(%rsp), %rdi
	.loc 1 1659 0
	movl	%eax, 108(%rsp)
	.loc 1 1660 0
	call	array_index
	movl	%eax, 88(%rsp)
.L440:
.LBE270:
	.loc 1 1663 0
	movq	80(%rsp), %rdx
	movl	88(%rsp), %ecx
	cmpl	%ecx, 12(%rdx)
	je	.L443
	movl	16(%rdx), %edi
	testl	%edi, %edi
	jne	.L599
.L443:
	.loc 1 1670 0
	movl	104(%rsp), %esi
	testl	%esi, %esi
	jne	.L401
	movq	112(%rsp), %rdi
	call	is_file
	testb	%al, %al
	je	.L401
.LBB273:
	.loc 1 1388 0
	movq	80(%rsp), %rbx
.LBE273:
	.loc 1 1671 0
	movl	$1, 104(%rsp)
.LBB274:
.LBB275:
.LBB276:
.LBB277:
	.loc 1 116 0
	movq	32(%rsp), %rax
.LBB278:
.LBB279:
	.loc 1 103 0
	movq	32(%rsp), %rcx
.LBE279:
.LBE278:
.LBE277:
.LBE276:
.LBE275:
	.loc 1 1388 0
	movl	8(%rbx), %ebx
	movl	%ebx, 56(%rsp)
.LBB280:
.LBB281:
.LBB282:
	.loc 1 116 0
	movl	12(%rax), %ebp
.LBB283:
.LBB284:
	.loc 1 103 0
	movl	16(%rax), %edx
	leal	1(%rbp), %r12d
	movl	%r12d, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	ja	.L600
.L446:
.LBE284:
.LBE283:
	.loc 1 122 0
	leal	1(%rbp), %eax
	movq	32(%rsp), %rdx
.LBB285:
.LBB286:
	.loc 1 97 0
	cmpl	%ebp, %eax
.LBE286:
.LBE285:
	.loc 1 122 0
	movl	%eax, 12(%rdx)
.LBB287:
.LBB288:
	.loc 1 97 0
	jbe	.L578
	movq	32(%rsp), %rcx
	movl	16(%rcx), %edx
	imull	%ebp, %edx
.LBE288:
.LBE287:
	.loc 1 123 0
	addq	(%rcx), %rdx
.L449:
.LBE282:
.LBE281:
	.loc 1 1390 0
	movq	$0, (%rdx)
	.loc 1 1391 0
	movl	56(%rsp), %ebx
	movl	%ebx, 8(%rdx)
	.loc 1 1392 0
	movl	92(%rsp), %eax
	.loc 1 1393 0
	movl	$1, 16(%rdx)
	.loc 1 1392 0
	movl	%eax, 12(%rdx)
.L401:
.LBE280:
.LBE274:
	.loc 1 1677 0
	movl	108(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L503
.L400:
	.loc 1 1699 0
	incl	100(%rsp)
	.loc 1 1700 0
	mov	96(%rsp), %ecx
	xorl	%esi, %esi
	movq	32960(%r13), %rax
	testb	$3, (%rax,%rcx)
	jne	.L351
	.loc 1 1702 0
	movb	$2, (%rax,%rcx)
.LBB289:
.LBB290:
	.loc 1 1509 0
	movl	32872(%r13), %edx
	cmpl	96(%rsp), %edx
	jbe	.L467
	.loc 1 1510 0
	movl	96(%rsp), %eax
	incl	%eax
	cmpl	%edx, %eax
	movl	%eax, %ecx
	je	.L601
.L557:
	movl	32888(%r13), %edx
.L469:
.LBE290:
.LBE289:
.LBB291:
.LBB292:
	.loc 1 577 0
	leal	-8(%rdx), %eax
.LBE292:
.LBE291:
	.loc 1 1508 0
	movl	%ecx, 96(%rsp)
	.loc 1 1706 0
	movl	100(%rsp), %esi
.LBB293:
.LBB294:
	.loc 1 577 0
	cmpl	%ecx, %eax
	jb	.L351
.LBE294:
.LBE293:
	.loc 1 1708 0
	cmpl	$1, %ecx
	jbe	.L484
	leal	-16(%rdx), %eax
	cmpl	%ecx, %eax
	jb	.L484
	.loc 1 1711 0
	movl	32856(%r13), %ecx
	addl	%ecx, 92(%rsp)
.L521:
	movq	32944(%r13), %rdi
	.loc 1 1638 0
	testq	%rdi, %rdi
	je	.L400
	.loc 1 1639 0
	movl	108(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L503
.LBB295:
.LBB296:
	.loc 1 1536 0
	xorl	%ebx, %ebx
	movl	32860(%r13), %r12d
	cmpl	%r12d, 108(%rsp)
	jb	.L408
	jmp	.L400
	.p2align 4,,7
.L602:
	movl	32860(%r13), %r12d
	cmpl	%r12d, %ebx
	jae	.L401
	movq	32944(%r13), %rdi
.L408:
.LBB297:
.LBB298:
	.loc 1 825 0
	imull	96(%rsp), %r12d
	movl	32876(%r13), %esi
.LBE298:
.LBE297:
	.loc 1 824 0
	movslq	%ebx,%rax
	leaq	172(%rsp), %rcx
	movl	$1, %edx
	.loc 1 1536 0
	incl	%ebx
.LBB299:
.LBB300:
	.loc 1 825 0
	addl	%r12d, %esi
.LBE300:
.LBE299:
	.loc 1 824 0
	addq	%rax, %rsi
	movq	48(%rdi), %rax
	call	*72(%rax)
	.loc 1 1536 0
	testl	%eax, %eax
	je	.L602
.LBE296:
.LBE295:
	.loc 1 1640 0
	cmpq	$0, 80(%rsp)
	je	.L410
	movq	80(%rsp), %rdx
	movl	96(%rsp), %ecx
	cmpl	%ecx, (%rdx)
	ja	.L410
	cmpl	%ecx, 4(%rdx)
	ja	.L409
.L410:
.LBB301:
.LBB302:
.LBB303:
	.loc 1 1098 0
	movl	32844(%r13), %esi
	xorl	%r10d, %r10d
	movl	%esi, %r9d
	jmp	.L411
	.p2align 4,,7
.L603:
.LBB304:
.LBB305:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L571
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L533
	.loc 1 1109 0
	movl	%ecx, %esi
.L423:
	.loc 1 1115 0
	cmpl	%esi, %r10d
	jg	.L572
.L411:
	.loc 1 1102 0
	leal	(%r10,%rsi), %edx
.LBB306:
.LBB307:
	.loc 1 97 0
	movq	48(%rsp), %rbx
.LBE307:
.LBE306:
	.loc 1 1102 0
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB308:
.LBB309:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L578
	movq	48(%rsp), %rdx
	movq	32832(%r13), %r8
	movl	16(%rdx), %eax
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE309:
.LBE308:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %edi
	cmpl	%edi, %edx
	jae	.L570
	.loc 1 1105 0
	cmpl	96(%rsp), %edx
	jae	.L603
	.loc 1 1111 0
	cmpl	%ecx, %r10d
	je	.L604
	.loc 1 1113 0
	movl	%ecx, %r10d
	.p2align 4,,4
	jmp	.L423
.L484:
.LBE305:
.LBE304:
.LBE303:
.LBE302:
.LBE301:
	.loc 1 1708 0
	movl	$-1, %esi
	.p2align 4,,5
	jmp	.L351
.L584:
.LBE260:
.LBE259:
.LBE256:
	.loc 1 1769 0
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	jmp	.L253
.L525:
	.loc 1 1760 0
	movl	164(%rsp), %edx
	movq	stderr(%rip), %rdi
	movl	$.LC22, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 1772 0
	xorl	%eax, %eax
	jmp	.L605
.L594:
.LBB310:
.LBB311:
.LBB312:
.LBB313:
.LBB314:
	.loc 1 1087 0
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%r13)
	jmp	.L347
.L566:
.LBE314:
.LBE313:
.LBB315:
.LBB316:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
.L574:
.LBE316:
.LBE315:
.LBB317:
.LBB318:
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE318:
.LBE317:
.LBE312:
.LBE311:
	.loc 1 1830 0
	call	__assert_fail
.L231:
.LBE310:
.LBE255:
.LBB319:
	.loc 1 1406 0
	movq	152(%rsp), %rdi
.LBB320:
.LBB321:
	.loc 1 115 0
	leaq	32968(%r13), %rbx
.LBE321:
.LBE320:
	.loc 1 1406 0
	call	__strdup
.LBB322:
.LBB323:
.LBB324:
	.loc 1 116 0
	movl	12(%rbx), %r12d
.LBB325:
.LBB326:
	.loc 1 103 0
	movl	16(%rbx), %edx
.LBE326:
.LBE325:
.LBE324:
.LBE323:
.LBE322:
	.loc 1 1406 0
	movq	%rax, %r15
.LBB327:
.LBB328:
.LBB329:
.LBB330:
.LBB331:
	.loc 1 103 0
	leal	1(%r12), %r14d
	movl	%r14d, %eax
	imull	%edx, %eax
	cmpl	8(%rbx), %eax
	ja	.L606
.L239:
.LBE331:
.LBE330:
	.loc 1 122 0
	leal	1(%r12), %eax
.LBB332:
.LBB333:
	.loc 1 97 0
	cmpl	%r12d, %eax
.LBE333:
.LBE332:
	.loc 1 122 0
	movl	%eax, 12(%rbx)
.LBB334:
.LBB335:
	.loc 1 97 0
	jbe	.L578
	movl	16(%rbx), %edx
	imull	%r12d, %edx
.LBE335:
.LBE334:
	.loc 1 123 0
	addq	(%rbx), %rdx
.L242:
.LBE329:
.LBE328:
	.loc 1 1408 0
	movq	%r15, (%rdx)
	.loc 1 1409 0
	movl	164(%rsp), %ecx
	.loc 1 1410 0
	movl	$3, 16(%rdx)
	.loc 1 1409 0
	movl	%ecx, 8(%rdx)
	jmp	.L237
.L526:
.LBE327:
.LBE319:
.LBB336:
.LBB337:
	.loc 1 1785 0
	movq	stderr(%rip), %rcx
	movl	$19, %edx
	movl	$1, %esi
	movl	$.LC24, %edi
.LBE337:
	.loc 1 1769 0
	call	fwrite
	jmp	.L253
.L467:
.LBB338:
.LBB339:
.LBB340:
.LBB341:
.LBB342:
	.loc 1 1516 0
	movl	32780(%r13), %eax
	cmpl	$32, %eax
	je	.L607
	.loc 1 1519 0
	cmpl	$16, %eax
	.p2align 4,,2
	je	.L608
.LBB343:
	.loc 1 1523 0
	movl	96(%rsp), %edx
	leal	(%rdx,%rdx,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%r13), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	testb	$1, 96(%rsp)
	je	.L477
	movl	%edx, %ecx
	shrl	$4, %ecx
	jmp	.L557
	.p2align 4,,7
.L601:
.LBE343:
	.loc 1 1510 0
	movl	32888(%r13), %edx
	movl	%edx, %ecx
	jmp	.L469
.L607:
.LBB344:
	.loc 1 1517 0
	movq	32952(%r13), %rax
.LBB345:
	.loc 2 124 0
	movl	(%rax,%rcx,4), %ecx
	jmp	.L557
.L503:
.LBE345:
.LBE344:
.LBE342:
.LBE341:
.LBB346:
.LBB347:
.LBB348:
	.loc 1 825 0
	movl	32860(%r13), %r12d
	movl	96(%rsp), %eax
	movl	32876(%r13), %ebp
	imull	%r12d, %eax
	addl	%eax, %ebp
.LBE348:
.LBE347:
.LBB349:
.LBB350:
	.loc 1 1084 0
	cmpq	$0, 32896(%r13)
	je	.L456
	.loc 1 1086 0
	movl	32892(%r13), %edi
	.loc 1 1085 0
	movq	$0, 32896(%r13)
	.loc 1 1086 0
	testl	%edi, %edi
	je	.L456
	.loc 1 1087 0
	call	close
	movl	32860(%r13), %r12d
	.loc 1 1088 0
	movl	$0, 32892(%r13)
.L456:
.LBE350:
.LBE349:
	.loc 1 1686 0
	xorl	%ebx, %ebx
.LBB351:
.LBB352:
	.loc 1 1091 0
	movl	$-1, 32920(%r13)
.LBE352:
.LBE351:
	.loc 1 1686 0
	cmpl	%r12d, %ebx
.L556:
	jae	.L400
	.loc 1 1687 0
	movq	32944(%r13), %rdi
	movslq	%ebx,%rsi
	leaq	168(%rsp), %rcx
	addq	%rbp, %rsi
	movl	$1, %edx
	movq	48(%rdi), %rax
	call	*72(%rax)
	testl	%eax, %eax
	je	.L609
.L461:
	.loc 1 1686 0
	incl	%ebx
	cmpl	32860(%r13), %ebx
	jmp	.L556
.L606:
.LBE346:
.LBE340:
.LBE339:
.LBE338:
.LBE336:
.LBB353:
.LBB354:
.LBB355:
.LBB356:
.LBB357:
.LBB358:
.LBB359:
	.loc 1 104 0
	leal	32(%r12), %ebp
	.loc 1 105 0
	movq	32968(%r13), %rdi
	.loc 1 104 0
	imull	%edx, %ebp
	.loc 1 105 0
	movslq	%ebp,%rsi
	call	realloc
.LBE359:
.LBE358:
.LBE357:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB360:
.LBB361:
.LBB362:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32968(%r13)
	.loc 1 106 0
	je	.L242
	.loc 1 108 0
	movl	%ebp, 8(%rbx)
	.loc 1 109 0
	movl	%r14d, 12(%rbx)
	jmp	.L239
	.p2align 4,,7
.L531:
.LBE362:
.LBE361:
.LBE360:
.LBE356:
.LBE355:
.LBE354:
.LBE353:
.LBB363:
.LBB364:
.LBB365:
.LBB366:
.LBB367:
.LBB368:
.LBB369:
.LBB370:
.LBB371:
	.loc 1 1107 0
	movl	%edi, %edx
.L364:
.LBE371:
.LBE370:
.LBE369:
	.loc 1 1128 0
	xorl	%ecx, %ecx
	cmpl	%r9d, %edx
	jae	.L372
.LBB372:
.LBB373:
	.loc 1 97 0
	movq	48(%rsp), %rcx
	cmpl	%edx, 12(%rcx)
	jbe	.L578
	movq	48(%rsp), %rbx
.LBE373:
.LBE372:
	.loc 1 1131 0
	xorl	%ecx, %ecx
.LBB374:
.LBB375:
	.loc 1 97 0
	movl	16(%rbx), %eax
	imull	%edx, %eax
	leaq	(%r8,%rax), %rax
.LBE375:
.LBE374:
	.loc 1 1131 0
	cmpl	%ebp, (%rax)
	ja	.L372
	.loc 1 1133 0
	cmpl	%ebp, 4(%rax)
	jbe	.L566
	movq	%rax, %rcx
.L372:
.LBE368:
.LBE367:
	.loc 1 1615 0
	testq	%rcx, %rcx
	.loc 1 1125 0
	movq	%rcx, 80(%rsp)
	.loc 1 1615 0
	je	.L380
.LBB376:
	.loc 1 1618 0
	movl	32(%rcx), %ebx
	testb	$16, %bl
	je	.L610
	.loc 1 1619 0
	movq	80(%rsp), %rdx
	movl	%ebx, %eax
	andl	$-17, %eax
	.loc 1 1621 0
	movq	24(%rdx), %rdi
	.loc 1 1619 0
	movl	%eax, 32(%rdx)
	.loc 1 1621 0
	call	get_basename
	.loc 1 1623 0
	andl	$1, %ebx
	.loc 1 1621 0
	movq	%rax, %rdi
	.loc 1 1623 0
	je	.L611
.LBB377:
	.loc 1 1626 0
	movq	72(%rsp), %rsi
	call	strcmp
.LBE377:
	testl	%eax, %eax
	je	.L521
	.loc 1 1627 0
	leaq	176(%rsp), %rdi
	call	__strdup
	movl	%ebp, %esi
	movq	%rax, %rdx
	movq	%r13, %rdi
	call	schedule_rename
	jmp	.L521
	.p2align 4,,7
.L596:
.LBE376:
.LBB378:
.LBB379:
.LBB380:
.LBB381:
.LBB382:
	.loc 1 1111 0
	cmpl	%ebp, %eax
	movl	%edi, %edx
	ja	.L364
	movl	%esi, %edx
	.p2align 4,,5
	jmp	.L364
.L611:
.LBE382:
.LBE381:
.LBE380:
.LBE379:
.LBE378:
.LBB383:
	.loc 1 1623 0
	movl	$__PRETTY_FUNCTION__.6, %ecx
	movl	$1623, %edx
	movl	$.LC3, %esi
	movl	$.LC29, %edi
.LBE383:
.LBE366:
.LBE365:
	.loc 1 1830 0
	call	__assert_fail
.L610:
.LBB384:
.LBB385:
.LBB386:
	.loc 1 1618 0
	movl	$__PRETTY_FUNCTION__.6, %ecx
	movl	$1618, %edx
.L567:
	movl	$.LC3, %esi
	movl	$.LC21, %edi
.LBE386:
.LBE385:
.LBE384:
	.loc 1 1830 0
	call	__assert_fail
.L530:
	.loc 1 1804 0
	movq	152(%rsp), %rdx
	movq	stderr(%rip), %rdi
	leaq	4272(%rsp), %rcx
	movl	$.LC28, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L253
.L529:
	.loc 1 1794 0
	movq	stderr(%rip), %rdi
	movl	$.LC25, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L253
.L380:
.LBB387:
.LBB388:
	.loc 1 1628 0
	movq	112(%rsp), %rdi
	call	is_file
	testb	%al, %al
	.p2align 4,,3
	je	.L387
.LBB389:
	.loc 1 1398 0
	leaq	176(%rsp), %rdi
	call	__strdup
.LBB390:
.LBB391:
.LBB392:
	.loc 1 116 0
	movq	24(%rsp), %rcx
.LBE392:
.LBE391:
.LBE390:
	.loc 1 1398 0
	movq	%rax, 64(%rsp)
.LBB393:
.LBB394:
.LBB395:
	.loc 1 116 0
	movl	12(%rcx), %r12d
.LBB396:
.LBB397:
	.loc 1 103 0
	leal	1(%r12), %ebx
	movl	%ebx, 60(%rsp)
	movl	16(%rcx), %edx
	movl	%ebx, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	ja	.L612
.L389:
.LBE397:
.LBE396:
	.loc 1 122 0
	leal	1(%r12), %eax
	movq	24(%rsp), %rcx
.LBB398:
.LBB399:
	.loc 1 97 0
	cmpl	%r12d, %eax
.LBE399:
.LBE398:
	.loc 1 122 0
	movl	%eax, 12(%rcx)
.LBB400:
.LBB401:
	.loc 1 97 0
	jbe	.L578
	movq	24(%rsp), %rbx
	movl	16(%rbx), %edx
	imull	%r12d, %edx
.LBE401:
.LBE400:
	.loc 1 123 0
	addq	(%rbx), %rdx
.L392:
.LBE395:
.LBE394:
	.loc 1 1400 0
	movq	64(%rsp), %rax
	.loc 1 1401 0
	movl	%ebp, 8(%rdx)
	.loc 1 1402 0
	movl	$2, 16(%rdx)
	.loc 1 1400 0
	movq	%rax, (%rdx)
	jmp	.L521
.L343:
.LBE393:
.LBE389:
.LBE388:
.LBE387:
	.loc 1 1830 0
	movl	$__PRETTY_FUNCTION__.5, %ecx
	movl	$1830, %edx
.L576:
	movl	$.LC3, %esi
	movl	$.LC30, %edi
	call	__assert_fail
.L612:
.LBB402:
.LBB403:
.LBB404:
.LBB405:
.LBB406:
.LBB407:
.LBB408:
.LBB409:
.LBB410:
	.loc 1 104 0
	leal	32(%r12), %ebx
	.loc 1 105 0
	movq	32968(%r13), %rdi
	.loc 1 104 0
	imull	%edx, %ebx
	.loc 1 105 0
	movslq	%ebx,%rsi
	call	realloc
.LBE410:
.LBE409:
.LBE408:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB411:
.LBB412:
.LBB413:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32968(%r13)
	.loc 1 106 0
	je	.L392
	.loc 1 108 0
	movq	24(%rsp), %rax
	movl	%ebx, 8(%rax)
	.loc 1 109 0
	movl	60(%rsp), %edx
	movl	%edx, 12(%rax)
	jmp	.L389
.L387:
.LBE413:
.LBE412:
.LBE411:
.LBE407:
.LBE406:
.LBE405:
.LBE404:
	.loc 1 1632 0
	movl	$__PRETTY_FUNCTION__.6, %ecx
	movl	$1632, %edx
	jmp	.L576
.L600:
.LBB414:
.LBB415:
.LBB416:
.LBB417:
.LBB418:
.LBB419:
.LBB420:
	.loc 1 104 0
	leal	32(%rbp), %ebx
	.loc 1 105 0
	movq	32968(%r13), %rdi
	.loc 1 104 0
	imull	%edx, %ebx
	.loc 1 105 0
	movslq	%ebx,%rsi
	call	realloc
.LBE420:
.LBE419:
.LBE418:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB421:
.LBB422:
.LBB423:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32968(%r13)
	.loc 1 106 0
	je	.L449
	.loc 1 108 0
	movq	32(%rsp), %rax
	movl	%ebx, 8(%rax)
	.loc 1 109 0
	movl	%r12d, 12(%rax)
	jmp	.L446
.L581:
.LBE423:
.LBE422:
.LBE421:
.LBE417:
.LBE416:
.LBE415:
.LBE414:
.LBE403:
.LBE402:
.LBE364:
.LBE363:
	.loc 1 1732 0
	movl	$__PRETTY_FUNCTION__.5, %ecx
	movl	$1732, %edx
	movl	$.LC3, %esi
	movl	$.LC19, %edi
.LBB424:
.LBB425:
	.loc 1 1830 0
	call	__assert_fail
.L582:
.LBE425:
.LBE424:
.LBB426:
	.loc 1 1741 0
	movl	$__PRETTY_FUNCTION__.5, %ecx
	movl	$1741, %edx
	movl	$.LC3, %esi
	movl	$.LC20, %edi
.LBE426:
.LBB427:
.LBB428:
	.loc 1 1830 0
	call	__assert_fail
.L477:
.LBB429:
.LBB430:
.LBB431:
.LBB432:
.LBB433:
	.loc 1 1523 0
	movl	%edx, %ecx
	andl	$4095, %ecx
	jmp	.L557
.L608:
.LBE433:
.LBB434:
	.loc 1 1520 0
	movq	32952(%r13), %rax
	.loc 2 123 0
	movzwl	(%rax,%rcx,2), %ecx
	jmp	.L557
.L598:
.LBE434:
.LBE432:
.LBE431:
	.loc 1 1653 0
	movl	$__PRETTY_FUNCTION__.6, %ecx
	movl	$1653, %edx
	jmp	.L576
.L599:
	.loc 1 1665 0
	movl	$__PRETTY_FUNCTION__.6, %ecx
	movl	$1665, %edx
	jmp	.L576
.L604:
.LBB435:
.LBB436:
.LBB437:
.LBB438:
.LBB439:
	.loc 1 1111 0
	cmpl	96(%rsp), %edi
	movl	%r10d, %eax
	ja	.L422
	movl	%esi, %eax
	jmp	.L422
.L597:
.LBE439:
.LBE438:
.LBE437:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movw	$1133, %dx
	jmp	.L574
.LBE436:
.LBE435:
.LBE430:
.LBE429:
.LBE428:
.LBE427:
.LFE153:
	.size	check_directory_consistency, .-check_directory_consistency
	.p2align 4,,15
	.type	insert_mapping, @function
insert_mapping:
.LFB156:
	.loc 1 1938 0
	pushq	%r15
.LCFI41:
.LBB440:
	.loc 1 1098 0
	xorl	%r8d, %r8d
.LBE440:
	.loc 1 1938 0
	pushq	%r14
.LCFI42:
	pushq	%r13
.LCFI43:
	pushq	%r12
.LCFI44:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI45:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI46:
	leaq	32832(%rdi), %rbx
	subq	$8, %rsp
.LCFI47:
	.loc 1 1938 0
	movl	%edx, 4(%rsp)
.LBB441:
	.loc 1 1098 0
	movl	32844(%rdi), %r10d
	movl	%r10d, %esi
	jmp	.L614
	.p2align 4,,7
.L671:
.LBB442:
.LBB443:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L668
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L663
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %r8d
	jg	.L669
.L614:
	.loc 1 1102 0
	leal	(%r8,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB444:
.LBB445:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L666
	movl	16(%rbx), %eax
	movq	32832(%rbp), %r9
	imull	%ecx, %eax
	leaq	(%r9,%rax), %rax
.LBE445:
.LBE444:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %edi
	cmpl	%edi, %edx
	jae	.L670
	.loc 1 1105 0
	cmpl	%r12d, %edx
	jae	.L671
	.loc 1 1111 0
	cmpl	%ecx, %r8d
	je	.L672
	.loc 1 1113 0
	movl	%ecx, %r8d
	.loc 1 1115 0
	cmpl	%esi, %r8d
	.p2align 4,,3
	jle	.L614
.L669:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE443:
.LBE442:
.LBE441:
.LBB446:
.LBB447:
	.loc 1 97 0
	call	__assert_fail
.L666:
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L670:
.LBE447:
.LBE446:
.LBB448:
.LBB449:
.LBB450:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE450:
.LBE449:
.LBE448:
.LBB451:
.LBB452:
	.loc 1 97 0
	call	__assert_fail
.L663:
.LBE452:
.LBE451:
.LBB453:
.LBB454:
.LBB455:
	.loc 1 1107 0
	movl	%r8d, %eax
.L625:
.LBE455:
.LBE454:
.LBE453:
	.loc 1 1098 0
	movl	%eax, %r14d
.LBB456:
.LBB457:
	.loc 1 97 0
	movl	12(%rbx), %eax
	cmpl	$0, %eax
	jbe	.L666
.LBE457:
.LBE456:
	.loc 1 1950 0
	cmpl	%r10d, %r14d
.LBB458:
.LBB459:
	.loc 1 97 0
	movl	16(%rbx), %edx
	movq	%r9, %r15
.LBE459:
.LBE458:
	.loc 1 1950 0
	jae	.L643
.LBB460:
.LBB461:
	.loc 1 97 0
	cmpl	%r14d, %eax
	jbe	.L666
	movl	%edx, %eax
.LBE461:
.LBE460:
	.loc 1 95 0
	movq	%r9, %rsi
.LBB462:
.LBB463:
	.loc 1 97 0
	imull	%r14d, %eax
.LBE463:
.LBE462:
	.loc 1 95 0
	addq	%rax, %rsi
	je	.L635
	cmpl	%r12d, (%rsi)
	jae	.L635
	.loc 1 1952 0
	movl	%r12d, 4(%rsi)
	.loc 1 1953 0
	incl	%r14d
.LBB464:
.LBB465:
	.loc 1 97 0
	cmpl	%r14d, 12(%rbx)
	jbe	.L666
	movl	16(%rbx), %esi
	movl	32844(%rbp), %r10d
	imull	%r14d, %esi
.LBE465:
.LBE464:
	.loc 1 95 0
	addq	32832(%rbp), %rsi
.L635:
	.loc 1 1956 0
	cmpl	%r10d, %r14d
	jae	.L643
	cmpl	%r12d, (%rsi)
	jbe	.L642
.L643:
.LBB466:
.LBB467:
	.loc 1 129 0
	movl	12(%rbx), %edx
	movl	16(%rbx), %r13d
	movl	8(%rbx), %ecx
	leal	1(%rdx), %eax
	imull	%r13d, %eax
	cmpl	%ecx, %eax
	jbe	.L644
.LBB468:
	.loc 1 131 0
	movq	32832(%rbp), %rdi
	leal	(%rcx,%r13), %esi
	call	realloc
	.loc 1 132 0
	xorl	%edx, %edx
	testq	%rax, %rax
	.loc 1 131 0
	movq	%rax, 32832(%rbp)
	.loc 1 132 0
	je	.L646
	.loc 1 134 0
	addl	%r13d, 8(%rbx)
	movl	12(%rbx), %edx
	movl	16(%rbx), %r13d
.L644:
.LBE468:
	.loc 1 136 0
	movl	%r13d, %esi
	leal	1(%r14), %eax
	movq	(%rbx), %rdi
	imull	%r14d, %esi
	subl	%r14d, %edx
	imull	%r13d, %eax
	leaq	(%rdi,%rsi), %rsi
	imull	%r13d, %edx
	addq	%rax, %rdi
	call	memmove
	.loc 1 139 0
	movl	16(%rbx), %edx
	incl	12(%rbx)
	imull	%r14d, %edx
	addq	(%rbx), %rdx
.L646:
.LBE467:
.LBE466:
	.loc 1 1958 0
	movq	$0, 24(%rdx)
.LBB469:
.LBB470:
	.loc 1 1922 0
	xorl	%ecx, %ecx
	cmpl	32844(%rbp), %ecx
.LBE470:
.LBE469:
	.loc 1 128 0
	movq	%rdx, %rsi
.LBB471:
.LBB472:
	.loc 1 1922 0
	jae	.L642
.L673:
.LBB473:
.LBB474:
.LBB475:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L666
	movl	16(%rbx), %edx
	imull	%ecx, %edx
	addq	32832(%rbp), %rdx
.LBE475:
.LBE474:
	.loc 1 1929 0
	movl	12(%rdx), %eax
	cmpl	%r14d, %eax
	jl	.L653
	incl	%eax
	movl	%eax, 12(%rdx)
.L653:
	.loc 1 1930 0
	testb	$4, 32(%rdx)
	je	.L649
	.loc 1 1931 0
	movl	16(%rdx), %eax
	cmpl	%r14d, %eax
	jl	.L649
	incl	%eax
	movl	%eax, 16(%rdx)
.L649:
.LBE473:
	.loc 1 1922 0
	incl	%ecx
	cmpl	32844(%rbp), %ecx
	jb	.L673
.L642:
.LBE472:
.LBE471:
	.loc 1 1962 0
	movl	%r12d, (%rsi)
	.loc 1 1963 0
	movl	4(%rsp), %eax
	movl	%eax, 4(%rsi)
	.loc 1 1970 0
	movq	32896(%rbp), %rax
	testq	%rax, %rax
	je	.L658
	movq	32832(%rbp), %rdx
	cmpq	%r15, %rdx
	je	.L658
.LBB476:
	.loc 1 95 0
	subq	%r15, %rax
	sarq	$3, %rax
	imull	$-858993459, %eax, %eax
.LBB477:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L666
	imull	16(%rbx), %eax
	leaq	(%rdx,%rax), %rax
.LBE477:
.LBE476:
	.loc 1 95 0
	movq	%rax, 32896(%rbp)
.L658:
	.loc 1 1975 0
	addq	$8, %rsp
	movq	%rsi, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L672:
.LBB478:
.LBB479:
.LBB480:
	.loc 1 1111 0
	cmpl	%r12d, %edi
	movl	%r8d, %eax
	ja	.L625
	movl	%esi, %eax
	jmp	.L625
.L668:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE480:
.LBE479:
.LBE478:
.LBB481:
.LBB482:
	.loc 1 97 0
	call	__assert_fail
.LBE482:
.LBE481:
.LFE156:
	.size	insert_mapping, .-insert_mapping
	.p2align 4,,15
	.type	remove_mapping, @function
remove_mapping:
.LFB157:
	.loc 1 1978 0
	pushq	%r13
.LCFI48:
	pushq	%r12
.LCFI49:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI50:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI51:
.LBB483:
	.loc 1 95 0
	leaq	32832(%rdi), %rbx
.LBE483:
	.loc 1 1978 0
	subq	$8, %rsp
.LCFI52:
.LBB484:
.LBB485:
	.loc 1 97 0
	movl	12(%rbx), %edx
	cmpl	%esi, %edx
	jbe	.L700
	movl	16(%rbx), %eax
	movq	32832(%rdi), %r13
	imull	%esi, %eax
.LBE485:
.LBE484:
.LBB486:
.LBB487:
	cmpl	$0, %edx
.LBE487:
.LBE486:
.LBB488:
.LBB489:
	leaq	(%r13,%rax), %rax
.LBE489:
.LBE488:
.LBB490:
.LBB491:
	jbe	.L700
.LBE491:
.LBE490:
	.loc 1 1983 0
	movl	12(%rax), %edx
	testl	%edx, %edx
	js	.L701
.L681:
	.loc 1 1987 0
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	array_remove
.LBB492:
.LBB493:
	.loc 1 1922 0
	xorl	%ecx, %ecx
	cmpl	32844(%rbp), %ecx
	jae	.L698
	.p2align 4,,7
.L702:
.LBB494:
.LBB495:
.LBB496:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L700
	movl	16(%rbx), %edx
	imull	%ecx, %edx
	addq	32832(%rbp), %rdx
.LBE496:
.LBE495:
	.loc 1 1929 0
	movl	12(%rdx), %eax
	cmpl	%r12d, %eax
	jl	.L688
	decl	%eax
	movl	%eax, 12(%rdx)
.L688:
	.loc 1 1930 0
	testb	$4, 32(%rdx)
	je	.L684
	.loc 1 1931 0
	movl	16(%rdx), %eax
	cmpl	%r12d, %eax
	jl	.L684
	decl	%eax
	movl	%eax, 16(%rdx)
	.p2align 4,,7
.L684:
.LBE494:
	.loc 1 1922 0
	incl	%ecx
	cmpl	32844(%rbp), %ecx
	jb	.L702
.L698:
.LBE493:
.LBE492:
	.loc 1 1992 0
	movq	32896(%rbp), %rax
	testq	%rax, %rax
	je	.L693
	movq	32832(%rbp), %rdx
	cmpq	%r13, %rdx
	je	.L693
.LBB497:
	.loc 1 95 0
	subq	%r13, %rax
	sarq	$3, %rax
	imull	$-858993459, %eax, %eax
.LBB498:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L700
	imull	16(%rbx), %eax
	leaq	(%rdx,%rax), %rax
.LBE498:
.LBE497:
	.loc 1 95 0
	movq	%rax, 32896(%rbp)
.L693:
	.loc 1 1997 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L701:
	.loc 1 1984 0
	movq	24(%rax), %rdi
	call	free
	jmp	.L681
.L700:
.LBB499:
.LBB500:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.LBE500:
.LBE499:
.LFE157:
	.size	remove_mapping, .-remove_mapping
	.p2align 4,,15
	.type	adjust_dirindices, @function
adjust_dirindices:
.LFB158:
	.loc 1 2000 0
	subq	$8, %rsp
.LCFI53:
	.loc 1 2002 0
	xorl	%r8d, %r8d
	cmpl	32844(%rdi), %r8d
	jae	.L714
	leaq	32832(%rdi), %r9
	.p2align 4,,7
.L712:
.LBB501:
.LBB502:
.LBB503:
	.loc 1 97 0
	cmpl	%r8d, 12(%r9)
	jbe	.L715
	movl	16(%r9), %ecx
	imull	%r8d, %ecx
	addq	32832(%rdi), %rcx
.LBE503:
.LBE502:
	.loc 1 2004 0
	movl	8(%rcx), %eax
	cmpl	%esi, %eax
	jb	.L710
	.loc 1 2005 0
	addl	%edx, %eax
	movl	%eax, 8(%rcx)
.L710:
	.loc 1 2006 0
	testb	$4, 32(%rcx)
	je	.L706
	movl	20(%rcx), %eax
	cmpl	%esi, %eax
	jl	.L706
	.loc 1 2008 0
	addl	%edx, %eax
	movl	%eax, 20(%rcx)
	.p2align 4,,7
.L706:
.LBE501:
	.loc 1 2002 0
	incl	%r8d
	cmpl	32844(%rdi), %r8d
	jb	.L712
.L714:
	addq	$8, %rsp
	ret
.L715:
.LBB504:
.LBB505:
.LBB506:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.LBE506:
.LBE505:
.LBE504:
.LFE158:
	.size	adjust_dirindices, .-adjust_dirindices
	.p2align 4,,15
	.type	insert_direntries, @function
insert_direntries:
.LFB159:
	.loc 1 2014 0
	movq	%rbx, -40(%rsp)
.LCFI54:
.LBB507:
	.loc 1 128 0
	leaq	32808(%rdi), %rbx
.LBE507:
	.loc 1 2014 0
	movq	%rbp, -32(%rsp)
.LCFI55:
	movq	%r12, -24(%rsp)
.LCFI56:
	movq	%r13, -16(%rsp)
.LCFI57:
	movl	%edx, %ebp
	movq	%r14, -8(%rsp)
.LCFI58:
	subq	$40, %rsp
.LCFI59:
.LBB508:
.LBB509:
	.loc 1 129 0
	movl	12(%rbx), %edx
	movl	16(%rbx), %ecx
.LBE509:
.LBE508:
	.loc 1 2014 0
	movl	%esi, %r12d
.LBB510:
.LBB511:
	.loc 1 129 0
	movl	8(%rbx), %esi
.LBE511:
.LBE510:
	.loc 1 2014 0
	movq	%rdi, %r13
.LBB512:
.LBB513:
	.loc 1 129 0
	leal	(%rdx,%rbp), %eax
	imull	%ecx, %eax
	cmpl	%esi, %eax
	jbe	.L717
.LBB514:
	.loc 1 130 0
	movl	%ecx, %r14d
	.loc 1 131 0
	movq	32808(%rdi), %rdi
	.loc 1 130 0
	imull	%ebp, %r14d
	.loc 1 131 0
	addl	%r14d, %esi
	call	realloc
	.loc 1 132 0
	testq	%rax, %rax
	.loc 1 131 0
	movq	%rax, 32808(%r13)
	.loc 1 132 0
	jne	.L722
.L721:
.LBE514:
.LBE513:
.LBE512:
	.loc 1 2021 0
	xorl	%eax, %eax
	jmp	.L716
	.p2align 4,,7
.L722:
.LBB515:
.LBB516:
.LBB517:
	.loc 1 134 0
	addl	%r14d, 8(%rbx)
	movl	12(%rbx), %edx
	movl	16(%rbx), %ecx
.L717:
.LBE517:
	.loc 1 136 0
	movl	%ecx, %esi
	leal	(%r12,%rbp), %eax
	movq	(%rbx), %rdi
	imull	%r12d, %esi
	subl	%r12d, %edx
	imull	%ecx, %eax
	leaq	(%rdi,%rsi), %rsi
	imull	%ecx, %edx
	addq	%rax, %rdi
	call	memmove
	.loc 1 139 0
	movl	16(%rbx), %eax
	addl	%ebp, 12(%rbx)
	imull	%r12d, %eax
.LBE516:
.LBE515:
	.loc 1 2020 0
	addq	(%rbx), %rax
	movq	%rax, %rbx
	je	.L721
	.loc 1 2022 0
	movl	%ebp, %edx
	movl	%r12d, %esi
	movq	%r13, %rdi
	call	adjust_dirindices
	.loc 1 2023 0
	movq	%rbx, %rax
.L716:
	.loc 1 2024 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE159:
	.size	insert_direntries, .-insert_direntries
	.section	.rodata.str1.1
.LC5:
	.string	"count > 0"
	.text
	.p2align 4,,15
	.type	remove_direntries, @function
remove_direntries:
.LFB160:
	.loc 1 2027 0
	movq	%rbx, -48(%rsp)
.LCFI60:
	movq	%r12, -32(%rsp)
.LCFI61:
	movl	%esi, %ebx
	movq	%r13, -24(%rsp)
.LCFI62:
	movq	%r14, -16(%rsp)
.LCFI63:
	movl	%edx, %r12d
	movq	%rbp, -40(%rsp)
.LCFI64:
	movq	%r15, -8(%rsp)
.LCFI65:
	subq	$88, %rsp
.LCFI66:
.LBB518:
.LBB519:
	.loc 1 180 0
	testl	%esi, %esi
.LBE519:
.LBE518:
	.loc 1 2027 0
	movq	%rdi, %r14
.LBB520:
	.loc 1 179 0
	leaq	32808(%rdi), %r13
.LBB521:
	.loc 1 180 0
	js	.L743
	.loc 1 181 0
	testl	%edx, %edx
	jle	.L744
	.loc 1 182 0
	movl	12(%r13), %ecx
	leal	(%rbx,%r12), %eax
	cmpl	%ecx, %eax
	ja	.L745
.LBB522:
	.loc 1 146 0
	leal	-1(%rcx), %ebp
.LBB523:
	.loc 1 152 0
	xorl	%eax, %eax
	testq	%r13, %r13
	sete	%al
	movl	%ebp, %edx
	shrl	$31, %edx
	orl	%edx, %eax
	jne	.L732
	xorl	%eax, %eax
	movl	%esi, %edx
	cmpl	%ecx, %ebp
	setae	%al
	shrl	$31, %edx
	orl	%edx, %eax
	jne	.L732
	cmpl	%ecx, %esi
	jb	.L731
	.p2align 4,,7
.L732:
.LBE523:
.LBE522:
.LBE521:
.LBE520:
	.loc 1 2030 0
	movl	$-1, %eax
.L723:
	.loc 1 2033 0
	movq	40(%rsp), %rbx
	movq	48(%rsp), %rbp
	movq	56(%rsp), %r12
	movq	64(%rsp), %r13
	movq	72(%rsp), %r14
	movq	80(%rsp), %r15
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L731:
.LBB524:
.LBB525:
.LBB526:
.LBB527:
	.loc 1 157 0
	cmpl	%esi, %ebp
	je	.L730
	.loc 1 160 0
	movl	16(%r13), %eax
	movl	%eax, 20(%rsp)
	.loc 1 161 0
	movq	32808(%rdi), %rdx
	imull	%esi, %eax
	cltq
	leaq	(%rdx,%rax), %r15
	.loc 1 162 0
	movl	20(%rsp), %eax
	imull	%ebp, %eax
	cltq
	addq	%rax, %rdx
	.loc 1 163 0
	movl	20(%rsp), %eax
	.loc 1 162 0
	movq	%rdx, 24(%rsp)
	.loc 1 163 0
	imull	%r12d, %eax
	cltq
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	malloc
	.loc 1 164 0
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	.loc 1 163 0
	movq	%rax, 32(%rsp)
	.loc 1 164 0
	call	memcpy
	.loc 1 166 0
	cmpl	%ebx, %ebp
	jl	.L746
	.loc 1 169 0
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%r15, %rdi
	subq	%r15, %rdx
	addq	%r15, %rsi
.L741:
	call	memmove
	.loc 1 171 0
	movl	20(%rsp), %eax
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	imull	%r12d, %eax
	movslq	%eax,%rdx
	call	memcpy
	.loc 1 173 0
	movq	32(%rsp), %rdi
	call	free
.L730:
.LBE527:
.LBE526:
	.loc 1 185 0
	subl	%r12d, 12(%r13)
.LBE525:
.LBE524:
	.loc 1 2031 0
	negl	%r12d
	movl	%ebx, %esi
	movl	%r12d, %edx
	movq	%r14, %rdi
	call	adjust_dirindices
	.loc 1 2032 0
	xorl	%eax, %eax
	jmp	.L723
.L746:
.LBB528:
.LBB529:
.LBB530:
.LBB531:
	.loc 1 167 0
	subq	24(%rsp), %r15
	movq	8(%rsp), %rdi
	addq	24(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	%r15, %rdx
	jmp	.L741
.L743:
.LBE531:
.LBE530:
	.loc 1 180 0
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$180, %edx
	movl	$.LC3, %esi
	movl	$.LC4, %edi
	.loc 1 182 0
	call	__assert_fail
.L744:
	.loc 1 181 0
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$181, %edx
	movl	$.LC3, %esi
	movl	$.LC5, %edi
	.loc 1 182 0
	call	__assert_fail
.L745:
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$182, %edx
	movl	$.LC3, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.LBE529:
.LBE528:
.LFE160:
	.size	remove_direntries, .-remove_direntries
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.12, @object
	.size	__PRETTY_FUNCTION__.12, 16
__PRETTY_FUNCTION__.12:
	.string	"commit_mappings"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"mapping == array_get(&(s->mapping), s->mapping.next - 1) || mapping[1].begin >= c"
	.align 8
.LC32:
	.string	"mapping->begin == first_cluster"
	.section	.rodata.str1.1
.LC31:
	.string	"mapping"
	.text
	.p2align 4,,15
	.type	commit_mappings, @function
commit_mappings:
.LFB161:
	.loc 1 2043 0
	pushq	%r15
.LCFI67:
	movl	%edx, %r15d
	pushq	%r14
.LCFI68:
	pushq	%r13
.LCFI69:
	pushq	%r12
.LCFI70:
	movl	%esi, %r12d
	pushq	%rbp
.LCFI71:
	movq	%rdi, %rbp
.LBB532:
.LBB533:
.LBB534:
	.loc 1 1098 0
	xorl	%edi, %edi
.LBE534:
.LBE533:
.LBE532:
	.loc 1 2043 0
	pushq	%rbx
.LCFI72:
	leaq	32832(%rbp), %rbx
	subq	$24, %rsp
.LCFI73:
.LBB535:
.LBB536:
.LBB537:
	.loc 1 1098 0
	movl	32844(%rbp), %r9d
	movl	%r9d, %esi
	jmp	.L748
	.p2align 4,,7
.L889:
.LBB538:
.LBB539:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L887
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L874
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L888
.L748:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB540:
.LBB541:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L884
	movl	16(%rbx), %eax
	movq	32832(%rbp), %r8
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE541:
.LBE540:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L886
	.loc 1 1105 0
	cmpl	%r12d, %edx
	jae	.L889
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L890
	.loc 1 1113 0
	movl	%ecx, %edi
	.loc 1 1115 0
	cmpl	%esi, %edi
	.p2align 4,,3
	jle	.L748
.L888:
.LBE539:
.LBE538:
.LBE537:
.LBE536:
.LBE535:
.LBB542:
.LBB543:
.LBB544:
.LBB545:
.LBB546:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE546:
.LBE545:
.LBE544:
.LBB547:
.LBB548:
.LBB549:
	.loc 1 97 0
	call	__assert_fail
.L884:
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L886:
.LBE549:
.LBE548:
.LBE547:
.LBB550:
.LBB551:
.LBB552:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE552:
.LBE551:
.LBE550:
.LBB553:
.LBB554:
.LBB555:
	.loc 1 97 0
	call	__assert_fail
.L874:
.LBE555:
.LBE554:
.LBE553:
.LBE543:
.LBE542:
.LBB556:
.LBB557:
.LBB558:
.LBB559:
.LBB560:
	.loc 1 1107 0
	movl	%edi, %edx
.L759:
.LBE560:
.LBE559:
.LBE558:
	.loc 1 1128 0
	xorl	%r11d, %r11d
	cmpl	%r9d, %edx
	jae	.L767
.LBB561:
.LBB562:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L884
	movl	16(%rbx), %eax
.LBE562:
.LBE561:
	.loc 1 1131 0
	xorl	%r11d, %r11d
.LBB563:
.LBB564:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%r8,%rax), %rax
.LBE564:
.LBE563:
	.loc 1 1131 0
	cmpl	%r12d, (%rax)
	ja	.L767
	.loc 1 1133 0
	cmpl	%r12d, 4(%rax)
	movq	%rax, %r11
	jbe	.L891
.L767:
.LBE557:
.LBE556:
.LBB565:
	.loc 1 95 0
	leaq	32808(%rbp), %rax
.LBE565:
	.loc 1 1125 0
	movq	%r11, %r10
.LBB566:
.LBB567:
	.loc 1 97 0
	cmpl	%r15d, 12(%rax)
	jbe	.L884
	movl	16(%rax), %r14d
.LBE567:
.LBE566:
	.loc 1 2046 0
	movl	%r12d, %r13d
.LBB568:
.LBB569:
	.loc 1 97 0
	imull	%r15d, %r14d
	addq	32808(%rbp), %r14
.LBE569:
.LBE568:
.LBB570:
.LBB571:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbp)
	je	.L778
	.loc 1 1086 0
	movl	32892(%rbp), %edi
	.loc 1 1085 0
	movq	$0, 32896(%rbp)
	.loc 1 1086 0
	testl	%edi, %edi
	jne	.L892
.L778:
.LBE571:
.LBE570:
	.loc 1 2050 0
	testq	%r11, %r11
.LBB572:
.LBB573:
	.loc 1 1091 0
	movl	$-1, 32920(%rbp)
.LBE573:
.LBE572:
	.loc 1 2050 0
	je	.L893
	.loc 1 2051 0
	cmpl	%r12d, (%r11)
	jne	.L894
	.loc 1 2054 0
	testl	%r15d, %r15d
	.loc 1 2052 0
	movl	$-1, 12(%r11)
	.loc 1 2053 0
	movl	%r15d, 8(%r11)
	.loc 1 2054 0
	jle	.L787
	movq	%r10, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r14, %rdi
	call	is_directory
	testb	%al, %al
	movl	$1, %edx
	movq	16(%rsp), %r10
	movq	8(%rsp), %r11
	jne	.L787
.L786:
	movl	%edx, 32(%r11)
	movl	32888(%rbp), %esi
.L788:
.LBB574:
.LBB575:
	.loc 1 577 0
	leal	-8(%rsi), %eax
	cmpl	%r13d, %eax
	jb	.L895
.LBE575:
.LBE574:
.LBB576:
.LBB577:
.LBB578:
	.loc 1 1509 0
	movl	32872(%rbp), %ecx
.LBE578:
.LBE577:
	.loc 1 2060 0
	movl	%r13d, %r15d
.LBB579:
.LBB580:
	.loc 1 1509 0
	cmpl	%r13d, %ecx
	jbe	.L792
	.loc 1 1510 0
	leal	1(%r13), %eax
	cmpl	%ecx, %eax
	cmove	%esi, %eax
.L794:
.LBE580:
.LBE579:
	.loc 1 1508 0
	movl	%eax, %r12d
	leal	1(%r13), %eax
	cmpl	%r12d, %eax
	jne	.L870
	.p2align 4,,7
.L896:
.LBB581:
.LBB582:
	.loc 1 1509 0
	cmpl	%r12d, %ecx
.LBE582:
.LBE581:
	.loc 1 2060 0
	movl	%r12d, %r15d
.LBB583:
.LBB584:
	.loc 1 1509 0
	jbe	.L807
	.loc 1 1510 0
	leal	1(%r12), %eax
	cmpl	%ecx, %eax
	cmove	%esi, %eax
.L809:
.LBE584:
.LBE583:
	.loc 1 1508 0
	movl	%eax, %r12d
	leal	1(%r15), %eax
	cmpl	%r12d, %eax
	je	.L896
.L870:
	.loc 1 2063 0
	incl	%r15d
	.loc 1 2064 0
	cmpl	%r15d, 4(%r10)
	jb	.L897
.L873:
	movl	32844(%rbp), %r9d
.L820:
.LBB585:
	.loc 1 95 0
	leal	-1(%r9), %eax
.LBB586:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L884
	imull	16(%rbx), %eax
	addq	32832(%rbp), %rax
.LBE586:
.LBE585:
	.loc 1 95 0
	cmpq	%r10, %rax
	je	.L829
	cmpl	%r15d, 40(%r10)
	jb	.L898
.L829:
	.loc 1 2073 0
	movl	%r15d, 4(%r10)
.LBB587:
.LBB588:
	.loc 1 577 0
	movl	32888(%rbp), %esi
	leal	-8(%rsi), %eax
	cmpl	%r12d, %eax
	jb	.L833
.LBE588:
.LBE587:
.LBB589:
.LBB590:
	.loc 1 1098 0
	movl	32844(%rbp), %r9d
	xorl	%edi, %edi
	movl	%r9d, %esi
	jmp	.L836
	.p2align 4,,7
.L899:
.LBB591:
.LBB592:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L887
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L876
	.loc 1 1109 0
	movl	%ecx, %esi
.L848:
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L888
.L836:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB593:
.LBB594:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L884
	movl	16(%rbx), %eax
	movq	32832(%rbp), %r8
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE594:
.LBE593:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L886
	.loc 1 1105 0
	cmpl	%r12d, %edx
	jae	.L899
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L900
	.loc 1 1113 0
	movl	%ecx, %edi
	.p2align 4,,5
	jmp	.L848
.L900:
	.loc 1 1111 0
	cmpl	%r12d, %eax
	movl	%edi, %edx
	.p2align 4,,3
	ja	.L847
	movl	%esi, %edx
.L847:
.LBE592:
.LBE591:
.LBE590:
	.loc 1 2077 0
	cmpl	%r9d, %edx
	jae	.L860
.LBB595:
.LBB596:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L884
	movl	16(%rbx), %eax
.LBE596:
.LBE595:
	.loc 1 2080 0
	movq	%r8, %r13
.LBB597:
.LBB598:
	.loc 1 97 0
	imull	%edx, %eax
.LBE598:
.LBE597:
	.loc 1 2080 0
	addq	%rax, %r13
	je	.L860
	cmpl	%r12d, (%r13)
	jbe	.L859
.L860:
.LBB599:
	.loc 1 2081 0
	movq	%r10, %rsi
	movq	%rbx, %rdi
	call	array_index
	.loc 1 2083 0
	leal	1(%r12), %edx
	movl	%r12d, %esi
	movq	%rbp, %rdi
	.loc 1 2081 0
	movl	%eax, %r14d
	.loc 1 2083 0
	call	insert_mapping
	.loc 1 2086 0
	cmpl	%r15d, %r12d
	.loc 1 2083 0
	movq	%rax, %r13
	.loc 1 2086 0
	adcl	$0, %r14d
.LBB600:
.LBB601:
	.loc 1 97 0
	cmpl	%r14d, 12(%rbx)
	jbe	.L884
	movl	16(%rbx), %r10d
	imull	%r14d, %r10d
.LBE601:
.LBE600:
	.loc 1 95 0
	addq	32832(%rbp), %r10
.L859:
.LBE599:
	.loc 1 2090 0
	movl	8(%r10), %eax
	movl	%eax, 8(%r13)
	.loc 1 2091 0
	movl	12(%r10), %eax
	testl	%eax, %eax
	js	.L901
.L865:
	movl	%eax, 12(%r13)
	.loc 1 2095 0
	movq	24(%r10), %rax
	movq	%rax, 24(%r13)
	.loc 1 2096 0
	movl	32(%r10), %eax
	movl	%eax, 32(%r13)
	.loc 1 2098 0
	testb	$4, 32(%r10)
	.loc 1 2097 0
	movl	36(%r10), %eax
	movl	%eax, 36(%r13)
	.loc 1 2098 0
	je	.L866
	.loc 1 2099 0
	movl	16(%r10), %eax
	movl	%eax, 16(%r13)
	.loc 1 2101 0
	movl	4(%r10), %eax
	subl	(%r10), %eax
	imull	32860(%rbp), %eax
	sall	$4, %eax
	addl	20(%r10), %eax
	movl	%eax, 20(%r13)
.L867:
	movl	32888(%rbp), %esi
	.loc 1 2109 0
	movq	%r13, %r10
.L833:
.LBE589:
	.loc 1 2112 0
	movl	%r12d, %r13d
	jmp	.L788
.L787:
.LBE576:
	.loc 1 2054 0
	movl	$4, %edx
	jmp	.L786
.L807:
.LBB602:
.LBB603:
.LBB604:
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L902
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L903
.LBB605:
	.loc 1 1523 0
	leal	(%r12,%r12,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %r12d
	je	.L817
	movl	%edx, %eax
	shrl	$4, %eax
	jmp	.L809
.L902:
.LBE605:
.LBB606:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%r12d, %edx
.LBB607:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
	jmp	.L809
.L792:
.LBE607:
.LBE606:
.LBE604:
.LBE603:
.LBB608:
.LBB609:
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L904
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L905
.LBB610:
	.loc 1 1523 0
	leal	(%r13,%r13,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	testb	$1, %r13b
	je	.L802
	movl	%edx, %eax
	shrl	$4, %eax
	jmp	.L794
.L817:
.LBE610:
.LBE609:
.LBE608:
.LBB611:
.LBB612:
.LBB613:
	movl	%edx, %eax
	andl	$4095, %eax
	jmp	.L809
.L903:
.LBE613:
.LBB614:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%r12d, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
	jmp	.L809
.L897:
.LBE614:
.LBE612:
.LBE611:
.LBB615:
	.loc 1 2065 0
	movq	%r10, %rsi
	movq	%rbx, %rdi
	movq	%r10, 16(%rsp)
	call	array_index
	.loc 1 2066 0
	movl	32844(%rbp), %r9d
	.loc 1 2067 0
	movl	$1, %r13d
	.loc 1 2065 0
	movl	%eax, %ecx
	.loc 1 2067 0
	movq	16(%rsp), %r10
	.loc 1 2066 0
	movl	%r9d, %edx
	subl	%eax, %edx
	.loc 1 2067 0
	cmpl	%edx, %r13d
	jge	.L822
	cmpl	%r15d, 40(%r10)
	jae	.L822
.L906:
	incl	%r13d
	cmpl	%edx, %r13d
	jge	.L822
	movslq	%r13d,%rax
	leaq	(%rax,%rax,4), %rax
	cmpl	%r15d, (%r10,%rax,8)
	jb	.L906
.L822:
	.loc 1 2069 0
	decl	%r13d
	testl	%r13d, %r13d
	jle	.L820
	leal	1(%rcx), %r14d
.L827:
	movl	%r14d, %esi
	movq	%rbp, %rdi
	decl	%r13d
	movq	%r10, 16(%rsp)
	call	remove_mapping
	testl	%r13d, %r13d
	movq	16(%rsp), %r10
	jg	.L827
	jmp	.L873
.L890:
.LBE615:
.LBE602:
.LBB616:
.LBB617:
.LBB618:
.LBB619:
.LBB620:
	.loc 1 1111 0
	cmpl	%r12d, %eax
	movl	%edi, %edx
	.p2align 4,,2
	ja	.L759
	movl	%esi, %edx
	.p2align 4,,5
	jmp	.L759
.L887:
.LBE620:
.LBE619:
.LBE618:
.LBE617:
.LBE616:
.LBB621:
.LBB622:
.LBB623:
.LBB624:
.LBB625:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE625:
.LBE624:
.LBE623:
.LBB626:
.LBB627:
.LBB628:
	.loc 1 97 0
	call	__assert_fail
.L904:
.LBE628:
.LBE627:
.LBE626:
.LBE622:
.LBB629:
.LBB630:
.LBB631:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
.LBB632:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
	jmp	.L794
.L802:
.LBE632:
.LBE631:
.LBB633:
	.loc 1 1523 0
	movl	%edx, %eax
	andl	$4095, %eax
	jmp	.L794
.L905:
.LBE633:
.LBB634:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
	jmp	.L794
.L891:
.LBE634:
.LBE630:
.LBE629:
.LBE621:
.LBB635:
.LBB636:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE636:
.LBE635:
.LBB637:
.LBB638:
.LBB639:
.LBB640:
.LBB641:
	.loc 1 97 0
	call	__assert_fail
.L876:
.LBE641:
.LBE640:
.LBE639:
.LBB642:
.LBB643:
.LBB644:
	.loc 1 1107 0
	movl	%edi, %edx
	jmp	.L847
.L866:
.LBE644:
.LBE643:
.LBE642:
	.loc 1 2106 0
	movl	4(%r10), %eax
	addl	16(%r10), %eax
	subl	(%r10), %eax
	movl	%eax, 16(%r13)
	jmp	.L867
.L892:
.LBE638:
.LBE637:
.LBB645:
.LBB646:
	.loc 1 1087 0
	movq	%r11, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbp)
	movq	8(%rsp), %r11
	movq	16(%rsp), %r10
	jmp	.L778
.L901:
.LBE646:
.LBE645:
.LBB647:
.LBB648:
	.loc 1 2091 0
	movq	%r10, %rsi
	movq	%rbx, %rdi
	movq	%r10, 16(%rsp)
	call	array_index
	movq	16(%rsp), %r10
	jmp	.L865
.L895:
.LBE648:
.LBE647:
	.loc 1 2116 0
	addq	$24, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L898:
.LBB649:
	.loc 1 95 0
	movl	$__PRETTY_FUNCTION__.12, %ecx
	movl	$2072, %edx
	movl	$.LC3, %esi
	movl	$.LC33, %edi
.LBB650:
.LBB651:
.LBB652:
.LBB653:
	.loc 1 97 0
	call	__assert_fail
.L894:
.LBE653:
.LBE652:
.LBE651:
.LBE650:
.LBE649:
	.loc 1 2051 0
	movl	$__PRETTY_FUNCTION__.12, %ecx
	movl	$2051, %edx
	movl	$.LC3, %esi
	movl	$.LC32, %edi
.LBB654:
.LBB655:
.LBB656:
.LBB657:
.LBB658:
	.loc 1 97 0
	call	__assert_fail
.L893:
.LBE658:
.LBE657:
.LBE656:
.LBE655:
.LBE654:
	.loc 1 2050 0
	movl	$__PRETTY_FUNCTION__.12, %ecx
	movl	$2050, %edx
	movl	$.LC3, %esi
	movl	$.LC31, %edi
.LBB659:
.LBB660:
.LBB661:
.LBB662:
.LBB663:
	.loc 1 97 0
	call	__assert_fail
.LBE663:
.LBE662:
.LBE661:
.LBE660:
.LBE659:
.LFE161:
	.size	commit_mappings, .-commit_mappings
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.11, @object
	.size	__PRETTY_FUNCTION__.11, 18
__PRETTY_FUNCTION__.11:
	.string	"commit_direntries"
	.section	.rodata.str1.1
.LC37:
	.string	"QEMU"
	.section	.rodata.str1.8
	.align 8
.LC38:
	.ascii	"!(__extension__ (__builtin_constant_p (4) && ((__builtin_con"
	.ascii	"stant_p (s->directory.pointer) && strlen (s->directory.point"
	.ascii	"er) < ((size_t) (4))) || (__builtin_constant_p (\"QEMU\") &&"
	.ascii	" strlen (\"QEMU\") < ((size_t) (4)))) ? __extension__ ({ siz"
	.ascii	"e_t __s1_len, __s2_len; (__builtin_constant_p (s->directory."
	.ascii	"pointer) && __builtin_constant_p (\"QEMU\") && (__s1_len = s"
	.ascii	"trlen (s->directory.pointer), __s2_len = strlen (\"QEMU\"), "
	.ascii	"(!((size_t)(const void *)((s->directory.pointer) + 1) - (siz"
	.ascii	"e_t)(const void *)(s->directory.pointer) == 1) || __s1_len >"
	.ascii	"= 4) && (!((size_t)(const void *)((\"QEMU\") + 1) - (size_t)"
	.ascii	"(const void *)(\"QEMU\") == 1) || __s2_len >= 4)) ? __builti"
	.ascii	"n_strcmp (s->directory.pointer, \"QEMU\") : (__builtin_const"
	.ascii	"ant_p (s->directory.pointer) && ((size_t)(const void *)((s->"
	.ascii	"directory.pointer) + 1) - (size_t)(const void *)(s->director"
	.ascii	"y.pointer) == 1) && (__s1_len = strlen (s->directory.pointer"
	.ascii	"), __s1_len < 4) ? (__builtin_constant_p (\"QEMU\") && ((siz"
	.ascii	"e_t)(const void *)((\"QEMU\") + 1) - (size_t)(const void *)("
	.ascii	"\"QEMU\") == 1) ? __builtin_strcmp (s->directory.pointer, \""
	.ascii	"QEMU\") : (__extension__ ({ __const unsigned char *__s2 = (_"
	.ascii	"_const unsigned char *) (__const char *) (\"QEMU\"); registe"
	.ascii	"r int __result = (((__const unsigned char *) (__const char *"
	.ascii	") (s->directory.pointer))[0] - __s2[0]); if (__s1_len > 0 &&"
	.ascii	" __result == 0) { __result = (((__const unsigned char *) (__"
	.ascii	"const char *) (s->directory.pointer))[1] - __s2[1]); if (__s"
	.ascii	"1_len > 1 && __result == 0) { __result = (((__const unsigned"
	.ascii	" char *) (__const char *) (s->directory.pointer))[2] - __s2["
	.ascii	"2]); if (__s1_len > 2 && __result == 0) __result = (((__cons"
	.ascii	"t unsigned char *) (__const char *) (s->directory.pointer))["
	.ascii	"3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (\""
	.ascii	"QEMU\") && ((size_t)(const void *)((\"QEMU\") + 1) - (size_t"
	.ascii	")(const void *)(\"QEMU\") == 1) && (__s2_len = strlen (\"QEM"
	.ascii	"U\"), __s2_len < 4) ? (__builtin_constant_p (s->directory.po"
	.ascii	"inter) && ((size_t)(const void *)((s->directory.pointer) + 1"
	.ascii	") - (size_t)(const void *)(s->directory.pointer) =="
	.ascii	" 1) ? __builtin_strcmp (s->directory.pointer, \"QEMU\") : (_"
	.ascii	"_extension__ ({ __const unsigned char *__s1 = (__const unsig"
	.ascii	"ned char *) (__const char *) (s->directory.pointer); registe"
	.ascii	"r int __result = __s1[0] - ((__const unsigned char *) (__con"
	.ascii	"st char *) (\"QEMU\"))[0]; if (__s2_len > 0 && __result == 0"
	.ascii	") { __result = (__s1[1] - ((__const unsigned char *) (__cons"
	.ascii	"t char *) (\"QEMU\"))[1]); if (__s2_len > 1 && __result == 0"
	.ascii	") { __result = (__s1[2] - ((__const unsigned char *) (__cons"
	.ascii	"t char"
	.string	" *) (\"QEMU\"))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((__const unsigned char *) (__const char *) (\"QEMU\"))[3]); } } __result; }))) : __builtin_strcmp (s->directory.pointer, \"QEMU\")))); }) : strncmp (s->directory.pointer, \"QEMU\", 4)))"
	.align 8
.LC36:
	.string	"dir_index == 0 || is_directory(direntry)"
	.align 8
.LC35:
	.string	"mapping->info.dir.first_dir_index < s->directory.next"
	.section	.rodata.str1.1
.LC34:
	.string	"direntry"
	.text
	.p2align 4,,15
	.type	commit_direntries, @function
commit_direntries:
.LFB162:
	.loc 1 2120 0
	pushq	%r15
.LCFI74:
.LBB664:
	.loc 1 95 0
	leaq	32808(%rdi), %r15
.LBE664:
	.loc 1 2120 0
	pushq	%r14
.LCFI75:
	pushq	%r13
.LCFI76:
	pushq	%r12
.LCFI77:
	pushq	%rbp
.LCFI78:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI79:
	subq	$40, %rsp
.LCFI80:
	.loc 1 2120 0
	movl	%esi, 36(%rsp)
	movl	%edx, 32(%rsp)
.LBB665:
.LBB666:
	.loc 1 97 0
	cmpl	%esi, 12(%r15)
	jbe	.L1093
	movl	36(%rsp), %edi
.LBE666:
.LBE665:
	.loc 1 2122 0
	movl	36(%rsp), %esi
	.loc 1 493 0
	xorl	%r14d, %r14d
.LBB667:
.LBB668:
	.loc 1 97 0
	imull	16(%r15), %edi
	addq	32808(%rbp), %rdi
.LBE668:
.LBE667:
	.loc 1 2122 0
	testl	%esi, %esi
	jne	.L1094
.L912:
.LBB669:
.LBB670:
.LBB671:
	.loc 1 1098 0
	movl	32844(%rbp), %r10d
	leaq	32832(%rbp), %r12
	xorl	%r8d, %r8d
	movl	%r10d, %esi
	jmp	.L916
	.p2align 4,,7
.L1095:
.LBB672:
.LBB673:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1084
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1069
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %r8d
	jg	.L1085
.L916:
	.loc 1 1102 0
	leal	(%r8,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB674:
.LBB675:
	.loc 1 97 0
	cmpl	%ecx, 12(%r12)
	jbe	.L1093
	movl	16(%r12), %eax
	movq	32832(%rbp), %r9
	imull	%ecx, %eax
	leaq	(%r9,%rax), %rax
.LBE675:
.LBE674:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1083
	.loc 1 1105 0
	cmpl	%r14d, %edx
	jae	.L1095
	.loc 1 1111 0
	cmpl	%ecx, %r8d
	je	.L1096
	.loc 1 1113 0
	movl	%ecx, %r8d
	.loc 1 1115 0
	cmpl	%esi, %r8d
	.p2align 4,,3
	jle	.L916
.L1085:
.LBE673:
.LBE672:
.LBE671:
.LBE670:
.LBE669:
.LBB676:
.LBB677:
.LBB678:
.LBB679:
.LBB680:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE680:
.LBE679:
.LBE678:
.LBE677:
.LBE676:
	.loc 1 2185 0
	call	__assert_fail
.L1094:
.LBB681:
.LBB682:
	.loc 2 123 0
	movzwl	20(%rdi), %eax
	movzwl	26(%rdi), %r14d
	sall	$16, %eax
.LBE682:
.LBE681:
	.loc 1 493 0
	orl	%eax, %r14d
	jmp	.L912
.L1093:
.LBB683:
.LBB684:
.LBB685:
.LBB686:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
.LBE686:
.LBE685:
.LBE684:
.LBE683:
	.loc 1 2185 0
	call	__assert_fail
.L1083:
.LBB687:
.LBB688:
.LBB689:
.LBB690:
.LBB691:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE691:
.LBE690:
.LBE689:
.LBE688:
.LBE687:
	.loc 1 2185 0
	call	__assert_fail
.L1096:
.LBB692:
.LBB693:
.LBB694:
.LBB695:
.LBB696:
	.loc 1 1111 0
	cmpl	%r14d, %eax
	movl	%r8d, %edx
	ja	.L927
	movl	%esi, %edx
.L927:
.LBE696:
.LBE695:
.LBE694:
	.loc 1 1128 0
	xorl	%ebx, %ebx
	cmpl	%r10d, %edx
	jae	.L935
.LBB697:
.LBB698:
	.loc 1 97 0
	cmpl	%edx, 12(%r12)
	jbe	.L1093
	movl	16(%r12), %eax
.LBE698:
.LBE697:
	.loc 1 1131 0
	xorl	%ebx, %ebx
.LBB699:
.LBB700:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%r9,%rax), %rax
.LBE700:
.LBE699:
	.loc 1 1131 0
	cmpl	%r14d, (%rax)
	ja	.L935
	.loc 1 1133 0
	cmpl	%r14d, 4(%rax)
	movq	%rax, %rbx
	jbe	.L1087
.L935:
.LBE693:
.LBE692:
	.loc 1 2125 0
	movl	32860(%rbp), %eax
	sall	$4, %eax
	.loc 1 2134 0
	testq	%rdi, %rdi
	.loc 1 2125 0
	movl	%eax, 28(%rsp)
	.loc 1 2127 0
	movl	20(%rbx), %eax
	movl	%eax, 20(%rsp)
	.loc 1 2128 0
	movl	%eax, %r13d
	.loc 1 2134 0
	je	.L1097
	.loc 1 2135 0
	testq	%rbx, %rbx
	je	.L1098
	.loc 1 2136 0
	cmpl	%r14d, (%rbx)
	jne	.L1099
	.loc 1 2137 0
	movl	20(%rsp), %eax
	cmpl	32820(%rbp), %eax
	jae	.L1100
	.loc 1 2138 0
	testb	$4, 32(%rbx)
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2138, %edx
	je	.L1088
	.loc 1 2139 0
	movl	36(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L954
	call	is_directory
	testb	%al, %al
	je	.L1101
.L954:
	.loc 1 2141 0
	movl	32(%rsp), %eax
	.loc 1 2143 0
	testl	%r14d, %r14d
	.loc 1 2141 0
	movl	%eax, 16(%rbx)
	.loc 1 2143 0
	jne	.L955
	.loc 1 2144 0
	movl	32872(%rbp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, %edi
.L956:
	.loc 1 2156 0
	cmpl	%edi, 24(%rsp)
	jg	.L1102
	.loc 1 2161 0
	jl	.L1103
.L998:
	movl	32888(%rbp), %esi
	.loc 1 2166 0
	movl	%r14d, %ebx
	.p2align 4,,7
.L1000:
.LBB701:
.LBB702:
	.loc 1 577 0
	leal	-8(%rsi), %eax
	cmpl	%ebx, %eax
	jb	.L1104
.LBE702:
.LBE701:
.LBB703:
.LBB704:
.LBB705:
	.loc 1 97 0
	cmpl	%r13d, 12(%r15)
	jbe	.L1093
.LBE705:
.LBE704:
.LBB706:
.LBB707:
	.loc 1 825 0
	movl	32860(%rbp), %ecx
.LBE707:
.LBE706:
.LBB708:
.LBB709:
	.loc 1 97 0
	movl	16(%r15), %edx
.LBE709:
.LBE708:
	.loc 1 824 0
	movq	(%rbp), %rdi
.LBB710:
.LBB711:
	.loc 1 825 0
	movl	%ecx, %esi
.LBE711:
.LBE710:
.LBB712:
.LBB713:
	.loc 1 97 0
	imull	%r13d, %edx
	addq	32808(%rbp), %rdx
.LBE713:
.LBE712:
.LBB714:
.LBB715:
	.loc 1 825 0
	imull	%ebx, %esi
	addl	32876(%rbp), %esi
.LBE715:
.LBE714:
	.loc 1 824 0
	call	vvfat_read
	.loc 1 2170 0
	testl	%eax, %eax
	jne	.L1074
	.loc 1 2172 0
	movq	32808(%rbp), %rsi
	movl	$.LC37, %edi
	movl	$4, %ecx
	cld
	repz
	cmpsb
	jne	.L1105
.LBE703:
.LBB716:
.LBB717:
	.loc 1 1509 0
	movl	32872(%rbp), %ecx
.LBE717:
.LBE716:
.LBB718:
	.loc 1 2173 0
	addl	28(%rsp), %r13d
.LBE718:
.LBB719:
.LBB720:
	.loc 1 1509 0
	cmpl	%ebx, %ecx
	jbe	.L1012
	.loc 1 1510 0
	leal	1(%rbx), %eax
	cmpl	%ecx, %eax
	je	.L1106
.L1079:
	movl	32888(%rbp), %esi
.LBE720:
.LBE719:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L1000
.L1012:
.LBB721:
.LBB722:
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1107
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L1108
.LBB723:
	.loc 1 1523 0
	leal	(%rbx,%rbx,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %ebx
	je	.L1022
	movl	%edx, %eax
	shrl	$4, %eax
	jmp	.L1079
.L1106:
.LBE723:
	.loc 1 1510 0
	movl	32888(%rbp), %esi
	movl	%esi, %eax
.LBE722:
.LBE721:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L1000
.L1107:
.LBB724:
.LBB725:
.LBB726:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%ebx, %edx
.LBB727:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
	jmp	.L1079
.L1022:
.LBE727:
.LBE726:
.LBB728:
	.loc 1 1523 0
	movl	%edx, %eax
	andl	$4095, %eax
	jmp	.L1079
.L1108:
.LBE728:
.LBB729:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%ebx, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
	jmp	.L1079
.L1069:
.LBE729:
.LBE725:
.LBE724:
.LBB730:
.LBB731:
.LBB732:
.LBB733:
.LBB734:
	.loc 1 1107 0
	movl	%r8d, %edx
	jmp	.L927
.L955:
	leaq	32784(%rbp), %rcx
.LBE734:
.LBE733:
.LBE732:
.LBE731:
.LBE730:
	.loc 1 2147 0
	xorl	%edi, %edi
	movl	%r14d, %ebx
	movl	32888(%rbp), %esi
	movq	%rcx, %r8
.LBB735:
.LBB736:
	.loc 1 577 0
	leal	-8(%rsi), %eax
	cmpl	%ebx, %eax
	jb	.L1109
	.p2align 4,,7
.L960:
.LBE736:
.LBE735:
.LBB737:
.LBB738:
	.loc 1 563 0
	movl	32780(%rbp), %eax
.LBE738:
.LBE737:
	.loc 1 2149 0
	incl	%edi
.LBB739:
.LBB740:
	.loc 1 563 0
	cmpl	$32, %eax
	je	.L1110
	.loc 1 566 0
	cmpl	$16, %eax
	je	.L1111
.LBB741:
	.loc 1 570 0
	leal	(%rbx,%rbx,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32784(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %ebx
	je	.L975
	movl	%edx, %eax
	shrl	$4, %eax
.LBE741:
.LBE740:
.LBE739:
	.loc 1 562 0
	movl	%eax, %ebx
	.p2align 4,,7
.L1112:
.LBB742:
.LBB743:
	.loc 1 577 0
	leal	-8(%rsi), %eax
	cmpl	%ebx, %eax
	jae	.L960
.L1109:
.LBE743:
.LBE742:
	.loc 1 2151 0
	movl	$0, 24(%rsp)
	movl	%r14d, %ebx
	movl	%eax, %r8d
.L978:
.LBB744:
.LBB745:
	.loc 1 577 0
	cmpl	%ebx, %r8d
	jb	.L956
.LBE745:
.LBE744:
	.loc 1 2153 0
	incl	24(%rsp)
.LBB746:
.LBB747:
	.loc 1 1509 0
	movl	32872(%rbp), %ecx
	cmpl	%ebx, %ecx
	jbe	.L983
	.loc 1 1510 0
	leal	1(%rbx), %eax
	cmpl	%ecx, %eax
	cmove	%esi, %eax
.LBE747:
.LBE746:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L978
.L1110:
.LBB748:
.LBB749:
.LBB750:
.LBB751:
.LBB752:
	.loc 1 97 0
	cmpl	%ebx, 12(%rcx)
	jbe	.L1093
	movl	16(%rcx), %eax
	imull	%ebx, %eax
	addq	32784(%rbp), %rax
.LBE752:
.LBE751:
.LBB753:
	.loc 2 124 0
	movl	(%rax), %eax
.LBE753:
.LBE750:
.LBE749:
.LBE748:
	.loc 1 562 0
	movl	%eax, %ebx
	jmp	.L1112
.L975:
.LBB754:
.LBB755:
.LBB756:
	.loc 1 570 0
	movl	%edx, %eax
	andl	$4095, %eax
.LBE756:
.LBE755:
.LBE754:
	.loc 1 562 0
	movl	%eax, %ebx
	jmp	.L1112
.L1111:
.LBB757:
.LBB758:
.LBB759:
.LBB760:
.LBB761:
	.loc 1 97 0
	cmpl	%ebx, 12(%r8)
	jbe	.L1093
	movl	16(%r8), %eax
	imull	%ebx, %eax
	addq	32784(%rbp), %rax
.LBE761:
.LBE760:
	.loc 2 123 0
	movzwl	(%rax), %eax
.LBE759:
.LBE758:
.LBE757:
	.loc 1 562 0
	movl	%eax, %ebx
	jmp	.L1112
.L1084:
.LBB762:
.LBB763:
.LBB764:
.LBB765:
.LBB766:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE766:
.LBE765:
.LBE764:
.LBE763:
.LBE762:
	.loc 1 2185 0
	call	__assert_fail
.L1102:
	.loc 1 2157 0
	movl	24(%rsp), %edx
	movl	28(%rsp), %esi
	subl	%edi, %edx
	imull	28(%rsp), %edx
	imull	%edi, %esi
	addl	20(%rsp), %esi
	movq	%rbp, %rdi
	call	insert_direntries
	testq	%rax, %rax
	.loc 1 2160 0
	movl	$-1, %edx
	.loc 1 2157 0
	jne	.L998
.L907:
	.loc 1 2194 0
	addq	$40, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1103:
	.loc 1 2162 0
	subl	24(%rsp), %edi
	movl	28(%rsp), %esi
	imull	28(%rsp), %edi
	imull	24(%rsp), %esi
	addl	20(%rsp), %esi
	movl	%edi, %edx
	movq	%rbp, %rdi
	call	remove_direntries
	jmp	.L998
.L1087:
.LBB767:
.LBB768:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE768:
.LBE767:
	.loc 1 2185 0
	call	__assert_fail
	.p2align 4,,7
.L983:
.LBB769:
.LBB770:
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1113
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L1114
.LBB771:
	.loc 1 1523 0
	leal	(%rbx,%rbx,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %ebx
	je	.L993
	movl	%edx, %eax
	shrl	$4, %eax
.LBE771:
.LBE770:
.LBE769:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L978
.L1113:
.LBB772:
.LBB773:
.LBB774:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%ebx, %edx
.LBB775:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
.LBE775:
.LBE774:
.LBE773:
.LBE772:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L978
.L993:
.LBB776:
.LBB777:
.LBB778:
	.loc 1 1523 0
	movl	%edx, %eax
	andl	$4095, %eax
.LBE778:
.LBE777:
.LBE776:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L978
.L1114:
.LBB779:
.LBB780:
.LBB781:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%ebx, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
.LBE781:
.LBE780:
.LBE779:
	.loc 1 1508 0
	movl	%eax, %ebx
	jmp	.L978
.L1104:
	.loc 1 2176 0
	movl	36(%rsp), %edx
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	commit_mappings
	.loc 1 2177 0
	testl	%eax, %eax
	.loc 1 2178 0
	movl	%eax, %edx
	.loc 1 2177 0
	jne	.L907
	.loc 1 2181 0
	movl	28(%rsp), %eax
	movl	$0, 16(%rsp)
	imull	24(%rsp), %eax
	cmpl	$0, %eax
	jle	.L1068
	movl	20(%rsp), %eax
	movl	%eax, 12(%rsp)
.L1066:
.LBB782:
.LBB783:
	.loc 1 97 0
	movl	12(%rsp), %eax
	cmpl	%eax, 12(%r15)
	jbe	.L1093
	movl	12(%rsp), %ebx
	imull	16(%r15), %ebx
	addq	32808(%rbp), %rbx
.LBE783:
.LBE782:
	.loc 1 2183 0
	movq	%rbx, %rdi
	call	is_directory
	testb	%al, %al
	je	.L1028
.LBB784:
.LBB785:
	.loc 1 484 0
	movq	%rbx, %rdi
	xorl	%r13d, %r13d
	call	is_short_name
	testb	%al, %al
	je	.L1034
	cmpb	$46, (%rbx)
	movl	$1, %eax
	cmove	%eax, %r13d
.L1034:
.LBE785:
.LBE784:
	.loc 1 483 0
	testl	%r13d, %r13d
	jne	.L1028
.LBB786:
.LBB787:
.LBB788:
	.loc 1 1098 0
	movl	32844(%rbp), %r10d
	xorl	%edi, %edi
	movl	%r10d, %esi
	jmp	.L1035
.L1115:
.LBB789:
.LBB790:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1084
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1072
	.loc 1 1109 0
	movl	%ecx, %esi
.L1047:
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L1085
.L1035:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB791:
.LBB792:
	.loc 1 97 0
	cmpl	%ecx, 12(%r12)
	jbe	.L1093
	movl	16(%r12), %eax
	movq	32832(%rbp), %r9
	imull	%ecx, %eax
	leaq	(%r9,%rax), %rax
.LBE792:
.LBE791:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1083
	.loc 1 1105 0
	cmpl	%r14d, %edx
	jae	.L1115
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L1116
	.loc 1 1113 0
	movl	%ecx, %edi
	.p2align 4,,5
	jmp	.L1047
.L1072:
	.loc 1 1107 0
	movl	%edi, %edx
.L1046:
.LBE790:
.LBE789:
.LBE788:
	.loc 1 1128 0
	xorl	%eax, %eax
	cmpl	%r10d, %edx
	jae	.L1054
.LBB793:
.LBB794:
	.loc 1 97 0
	cmpl	%edx, 12(%r12)
	jbe	.L1093
	movl	16(%r12), %eax
	imull	%edx, %eax
	leaq	(%r9,%rax), %rsi
.LBE794:
.LBE793:
	.loc 1 1131 0
	xorl	%eax, %eax
	cmpl	%r14d, (%rsi)
	ja	.L1054
	.loc 1 1133 0
	cmpl	%r14d, 4(%rsi)
	jbe	.L1087
	movq	%rsi, %rax
.L1054:
.LBE787:
.LBE786:
	.loc 1 2185 0
	testb	$4, 32(%rax)
	je	.L1117
	.loc 1 2186 0
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	array_index
	movl	12(%rsp), %esi
	movl	%eax, %edx
	movq	%rbp, %rdi
	call	commit_direntries
	.loc 1 2188 0
	testl	%eax, %eax
	jne	.L1074
.L1028:
	.loc 1 2181 0
	movl	28(%rsp), %eax
	incl	16(%rsp)
	imull	24(%rsp), %eax
	incl	12(%rsp)
	cmpl	16(%rsp), %eax
	jg	.L1066
.L1068:
	.loc 1 2193 0
	xorl	%edx, %edx
	jmp	.L907
.L1074:
	.loc 1 2189 0
	movl	%eax, %edx
	jmp	.L907
.L1105:
.LBB795:
	.loc 1 2172 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2172, %edx
	movl	$.LC3, %esi
	movl	$.LC38, %edi
.LBE795:
	.loc 1 2185 0
	call	__assert_fail
.L1116:
.LBB796:
.LBB797:
.LBB798:
.LBB799:
.LBB800:
	.loc 1 1111 0
	cmpl	%r14d, %eax
	movl	%edi, %edx
	ja	.L1046
	movl	%esi, %edx
	jmp	.L1046
.L1101:
.LBE800:
.LBE799:
.LBE798:
.LBE797:
.LBE796:
	.loc 1 2139 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2139, %edx
	movl	$.LC3, %esi
	movl	$.LC36, %edi
	.loc 1 2185 0
	call	__assert_fail
.L1117:
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2185, %edx
.L1088:
	movl	$.LC3, %esi
	movl	$.LC20, %edi
	call	__assert_fail
.L1100:
	.loc 1 2137 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2137, %edx
	movl	$.LC3, %esi
	movl	$.LC35, %edi
	.loc 1 2185 0
	call	__assert_fail
.L1099:
	.loc 1 2136 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2136, %edx
	movl	$.LC3, %esi
	movl	$.LC32, %edi
	.loc 1 2185 0
	call	__assert_fail
.L1098:
	.loc 1 2135 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2135, %edx
	movl	$.LC3, %esi
	movl	$.LC31, %edi
	.loc 1 2185 0
	call	__assert_fail
.L1097:
	.loc 1 2134 0
	movl	$__PRETTY_FUNCTION__.11, %ecx
	movl	$2134, %edx
	movl	$.LC3, %esi
	movl	$.LC34, %edi
	.loc 1 2185 0
	call	__assert_fail
.LFE162:
	.size	commit_direntries, .-commit_direntries
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.14, @object
	.size	__PRETTY_FUNCTION__.14, 16
__PRETTY_FUNCTION__.14:
	.string	"commit_one_file"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"Could not open %s... (%s, %d)\n"
	.align 8
.LC42:
	.string	"(size - offset == 0 && fat_eof(s, c)) || (size > offset && c >=2 && !fat_eof(s, c))"
	.align 8
.LC40:
	.string	"(offset % s->cluster_size) == 0"
	.section	.rodata.str1.1
.LC39:
	.string	"offset < size"
	.text
	.p2align 4,,15
	.type	commit_one_file, @function
commit_one_file:
.LFB163:
	.loc 1 2200 0
	pushq	%r15
.LCFI81:
.LBB801:
	.loc 1 95 0
	leaq	32808(%rdi), %rax
.LBE801:
	.loc 1 2200 0
	movl	%edx, %r15d
	pushq	%r14
.LCFI82:
	pushq	%r13
.LCFI83:
	pushq	%r12
.LCFI84:
	pushq	%rbp
.LCFI85:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI86:
	subq	$24, %rsp
.LCFI87:
	.loc 1 2200 0
	movl	%esi, 20(%rsp)
.LBB802:
.LBB803:
	.loc 1 97 0
	cmpl	%esi, 12(%rax)
	jbe	.L1217
	movl	20(%rsp), %esi
.LBE803:
.LBE802:
.LBB804:
.LBB805:
.LBB806:
	.loc 1 1098 0
	movl	32844(%rdi), %r11d
	leaq	32832(%rbp), %r8
.LBE806:
.LBE805:
.LBE804:
.LBB807:
.LBB808:
	.loc 1 97 0
	imull	16(%rax), %esi
.LBE808:
.LBE807:
.LBB809:
.LBB810:
.LBB811:
	.loc 1 1098 0
	xorl	%r9d, %r9d
.LBE811:
.LBE810:
.LBE809:
.LBB812:
.LBB813:
	.loc 1 97 0
	addq	32808(%rdi), %rsi
.LBE813:
.LBE812:
.LBB814:
.LBB815:
.LBB816:
	.loc 1 1098 0
	movl	%r11d, %edi
.LBE816:
.LBE815:
.LBE814:
.LBB817:
.LBB818:
	.loc 2 123 0
	movzwl	20(%rsi), %eax
	movzwl	26(%rsi), %r12d
	sall	$16, %eax
	orl	%eax, %r12d
.LBE818:
.LBE817:
	.loc 1 2203 0
	movl	%r12d, %r13d
	jmp	.L1125
	.p2align 4,,7
.L1221:
.LBB819:
.LBB820:
.LBB821:
.LBB822:
.LBB823:
	.loc 1 1106 0
	cmpl	%ecx, %edi
	sete	%dl
	xorl	%eax, %eax
	testl	%edi, %edi
	setne	%al
	testl	%edx, %eax
	jne	.L1218
	.loc 1 1107 0
	cmpl	%ecx, %edi
	je	.L1211
	.loc 1 1109 0
	movl	%ecx, %edi
	.loc 1 1115 0
	cmpl	%edi, %r9d
	jg	.L1219
.L1125:
	.loc 1 1102 0
	leal	(%r9,%rdi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB824:
.LBB825:
	.loc 1 97 0
	cmpl	%ecx, 12(%r8)
	jbe	.L1217
	movl	16(%r8), %eax
	movq	32832(%rbp), %r10
	imull	%ecx, %eax
	leaq	(%r10,%rax), %rax
.LBE825:
.LBE824:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1220
	.loc 1 1105 0
	cmpl	%r12d, %edx
	jae	.L1221
	.loc 1 1111 0
	cmpl	%ecx, %r9d
	je	.L1222
	.loc 1 1113 0
	movl	%ecx, %r9d
	.loc 1 1115 0
	cmpl	%edi, %r9d
	.p2align 4,,3
	jle	.L1125
.L1219:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE823:
.LBE822:
.LBE821:
.LBE820:
.LBE819:
.LBB826:
	.loc 1 576 0
	call	__assert_fail
.L1217:
.LBE826:
.LBB827:
.LBB828:
.LBB829:
.LBB830:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
.LBE830:
.LBE829:
.LBE828:
.LBE827:
.LBB831:
	.loc 1 576 0
	call	__assert_fail
.L1220:
.LBE831:
.LBB832:
.LBB833:
.LBB834:
.LBB835:
.LBB836:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE836:
.LBE835:
.LBE834:
.LBE833:
.LBE832:
.LBB837:
	.loc 1 576 0
	call	__assert_fail
.L1211:
.LBE837:
.LBB838:
.LBB839:
.LBB840:
.LBB841:
.LBB842:
	.loc 1 1107 0
	movl	%r9d, %edx
.L1136:
.LBE842:
.LBE841:
.LBE840:
	.loc 1 1128 0
	xorl	%r14d, %r14d
	cmpl	%r11d, %edx
	jae	.L1144
.LBB843:
.LBB844:
	.loc 1 97 0
	cmpl	%edx, 12(%r8)
	jbe	.L1217
	movl	16(%r8), %eax
.LBE844:
.LBE843:
	.loc 1 1131 0
	xorl	%r14d, %r14d
.LBB845:
.LBB846:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%r10,%rax), %rax
.LBE846:
.LBE845:
	.loc 1 1131 0
	cmpl	%r12d, (%rax)
	ja	.L1144
	.loc 1 1133 0
	cmpl	%r12d, 4(%rax)
	movq	%rax, %r14
	jbe	.L1223
.L1144:
.LBE839:
.LBE838:
.LBB847:
.LBB848:
.LBB849:
	.loc 2 124 0
	movl	28(%rsi), %esi
	movl	%esi, 16(%rsp)
.LBE849:
.LBE848:
.LBE847:
	.loc 1 2206 0
	mov	32856(%rbp), %edi
	call	malloc
	.loc 1 2210 0
	cmpl	16(%rsp), %r15d
	.loc 1 2206 0
	movq	%rax, 8(%rsp)
	.loc 1 2210 0
	jae	.L1224
	.loc 1 2211 0
	movl	32856(%rbp), %esi
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	%esi
	testl	%edx, %edx
	jne	.L1225
	.loc 1 2213 0
	cmpl	%r15d, %esi
	movl	%esi, %ecx
	jae	.L1208
	movl	32872(%rbp), %edi
	jmp	.L1173
.L1227:
.LBB850:
.LBB851:
	.loc 1 1510 0
	leal	1(%r13), %eax
	cmpl	%edi, %eax
	je	.L1226
.L1163:
.LBE851:
.LBE850:
	.loc 1 2213 0
	addl	%esi, %ecx
	.loc 1 1508 0
	movl	%eax, %r13d
	.loc 1 2213 0
	cmpl	%r15d, %ecx
	jae	.L1208
.L1173:
.LBB852:
.LBB853:
	.loc 1 1509 0
	cmpl	%r13d, %edi
	ja	.L1227
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1228
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L1229
.LBB854:
	.loc 1 1523 0
	leal	(%r13,%r13,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %r13d
	je	.L1171
	movl	%edx, %eax
.LBE854:
.LBE853:
.LBE852:
	.loc 1 2213 0
	addl	%esi, %ecx
.LBB855:
.LBB856:
.LBB857:
	.loc 1 1523 0
	shrl	$4, %eax
.LBE857:
.LBE856:
.LBE855:
	.loc 1 2213 0
	cmpl	%r15d, %ecx
	.loc 1 1508 0
	movl	%eax, %r13d
	.loc 1 2213 0
	jb	.L1173
.L1208:
	.loc 1 2216 0
	movq	24(%r14), %rdi
	xorl	%eax, %eax
	movl	$438, %edx
	movl	$66, %esi
	call	open64
	.loc 1 2217 0
	testl	%eax, %eax
	.loc 1 2216 0
	movl	%eax, 4(%rsp)
	.loc 1 2217 0
	js	.L1230
	.loc 1 2222 0
	testl	%r15d, %r15d
	jne	.L1231
.L1175:
	.loc 1 2248 0
	cmpl	16(%rsp), %r15d
	jae	.L1210
.L1234:
.LBB858:
	.loc 1 2228 0
	movl	16(%rsp), %edx
	movl	32856(%rbp), %eax
	subl	%r15d, %edx
	movl	%eax, %ebx
	cmpl	%eax, %edx
	cmovbe	%edx, %ebx
.LBB859:
.LBB860:
	.loc 1 1509 0
	movl	32872(%rbp), %edx
	cmpl	%r13d, %edx
	jbe	.L1181
	.loc 1 1510 0
	leal	1(%r13), %eax
	cmpl	%edx, %eax
	movl	%eax, %r14d
	je	.L1232
.L1183:
.LBE860:
.LBE859:
	.loc 1 2234 0
	cmpl	%r15d, 16(%rsp)
	je	.L1233
.L1195:
	.loc 1 576 0
	cmpl	%r15d, 16(%rsp)
	setbe	%dl
	cmpl	$1, %r13d
	setbe	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L1198
.LBB861:
.LBB862:
	.loc 1 577 0
	movl	32888(%rbp), %eax
	subl	$8, %eax
	cmpl	%r13d, %eax
	jb	.L1198
.L1194:
.LBE862:
.LBE861:
.LBB863:
.LBB864:
	.loc 1 825 0
	movl	32860(%rbp), %esi
.LBE864:
.LBE863:
	.loc 1 824 0
	leal	1022(%rbx), %eax
	movl	%ebx, %ecx
	movq	8(%rsp), %rdx
	movq	(%rbp), %rdi
.LBB865:
.LBB866:
	.loc 1 825 0
	imull	%r13d, %esi
	addl	32876(%rbp), %esi
.LBE866:
.LBE865:
	.loc 1 824 0
	addl	$511, %ecx
	cmovs	%eax, %ecx
	sarl	$9, %ecx
	call	vvfat_read
	.loc 1 2241 0
	testl	%eax, %eax
	js	.L1213
	.loc 1 2244 0
	movq	8(%rsp), %rsi
	movl	4(%rsp), %edi
	movslq	%ebx,%rdx
	call	write
	testq	%rax, %rax
	js	.L1214
	.loc 1 2247 0
	addl	%ebx, %r15d
	.loc 1 2248 0
	movl	%r14d, %r13d
.LBE858:
	cmpl	16(%rsp), %r15d
	jb	.L1234
.L1210:
	.loc 1 2251 0
	mov	16(%rsp), %esi
	movl	4(%rsp), %edi
	call	ftruncate64
	.loc 1 2252 0
	movl	4(%rsp), %edi
	call	close
	.loc 1 2254 0
	movl	20(%rsp), %edx
	.loc 1 2255 0
	addq	$24, %rsp
	.loc 1 2254 0
	movq	%rbp, %rdi
	.loc 1 2255 0
	popq	%rbx
	popq	%rbp
	.loc 1 2254 0
	movl	%r12d, %esi
	.loc 1 2255 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.loc 1 2254 0
	jmp	commit_mappings
.L1181:
.LBB867:
.LBB868:
.LBB869:
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1235
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L1236
.LBB870:
	.loc 1 1523 0
	leal	(%r13,%r13,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	testb	$1, %r13b
	je	.L1191
	movl	%edx, %r14d
	shrl	$4, %r14d
.LBE870:
.LBE869:
.LBE868:
	.loc 1 2234 0
	cmpl	%r15d, 16(%rsp)
	jne	.L1195
.L1233:
.LBB871:
.LBB872:
	.loc 1 577 0
	movl	32888(%rbp), %eax
	subl	$8, %eax
	cmpl	%r13d, %eax
	jb	.L1194
	jmp	.L1195
.L1226:
.LBE872:
.LBE871:
.LBE867:
.LBB873:
.LBB874:
	.loc 1 1510 0
	movl	32888(%rbp), %eax
	jmp	.L1163
.L1228:
.LBB875:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
.LBB876:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
	jmp	.L1163
.L1171:
.LBE876:
.LBE875:
.LBB877:
	.loc 1 1523 0
	movl	%edx, %eax
	andl	$4095, %eax
	jmp	.L1163
.L1229:
.LBE877:
.LBB878:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
	jmp	.L1163
.L1222:
.LBE878:
.LBE874:
.LBE873:
.LBB879:
.LBB880:
.LBB881:
.LBB882:
.LBB883:
	.loc 1 1111 0
	cmpl	%r12d, %eax
	movl	%r9d, %edx
	ja	.L1136
	movl	%edi, %edx
	jmp	.L1136
.L1232:
.LBE883:
.LBE882:
.LBE881:
.LBE880:
.LBE879:
.LBB884:
.LBB885:
.LBB886:
	.loc 1 1510 0
	movl	32888(%rbp), %r14d
	jmp	.L1183
.L1235:
.LBB887:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
.LBB888:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %r14d
	jmp	.L1183
.L1191:
.LBE888:
.LBE887:
.LBB889:
	.loc 1 1523 0
	movl	%edx, %r14d
	andl	$4095, %r14d
	jmp	.L1183
.L1236:
.LBE889:
.LBB890:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%r13d, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %r14d
	jmp	.L1183
.L1218:
.LBE890:
.LBE886:
.LBE885:
.LBE884:
.LBB891:
.LBB892:
.LBB893:
.LBB894:
.LBB895:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE895:
.LBE894:
.LBE893:
.LBE892:
.LBE891:
.LBB896:
	.loc 1 576 0
	call	__assert_fail
.L1231:
.LBE896:
	.loc 1 2223 0
	movl	4(%rsp), %edi
	mov	%r15d, %ebx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	call	lseek64
	cmpq	%rbx, %rax
	.loc 1 2224 0
	movl	$-3, %edx
	.loc 1 2223 0
	je	.L1175
.L1118:
	.loc 1 2255 0
	addq	$24, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1223:
.LBB897:
.LBB898:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE898:
.LBE897:
.LBB899:
	.loc 1 576 0
	call	__assert_fail
.L1230:
.LBE899:
	.loc 1 2218 0
	call	__errno_location
	movl	(%rax), %edi
	movq	%rax, %rbx
	call	strerror
	movq	24(%r14), %rdx
	movl	(%rbx), %r8d
	movq	%rax, %rcx
	movq	stderr(%rip), %rdi
	movl	$.LC41, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 2220 0
	movl	4(%rsp), %edx
	jmp	.L1118
.L1198:
.LBB900:
	.loc 1 576 0
	movl	$__PRETTY_FUNCTION__.14, %ecx
	movl	$2235, %edx
	movl	$.LC3, %esi
	movl	$.LC42, %edi
	call	__assert_fail
.L1213:
	.loc 1 2242 0
	movl	%eax, %edx
	jmp	.L1118
.L1214:
	.loc 1 2245 0
	movl	$-2, %edx
	jmp	.L1118
.L1225:
.LBE900:
	.loc 1 2211 0
	movl	$__PRETTY_FUNCTION__.14, %ecx
	movl	$2211, %edx
	movl	$.LC3, %esi
	movl	$.LC40, %edi
.LBB901:
	.loc 1 576 0
	call	__assert_fail
.L1224:
.LBE901:
	.loc 1 2210 0
	movl	$__PRETTY_FUNCTION__.14, %ecx
	movl	$2210, %edx
	movl	$.LC3, %esi
	movl	$.LC39, %edi
.LBB902:
	.loc 1 576 0
	call	__assert_fail
.LBE902:
.LFE163:
	.size	commit_one_file, .-commit_one_file
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3, @object
	.size	__PRETTY_FUNCTION__.3, 14
__PRETTY_FUNCTION__.3:
	.string	"is_consistent"
	.type	__PRETTY_FUNCTION__.4, @object
	.size	__PRETTY_FUNCTION__.4, 14
__PRETTY_FUNCTION__.4:
	.string	"clear_commits"
	.type	__PRETTY_FUNCTION__.8, @object
	.size	__PRETTY_FUNCTION__.8, 10
__PRETTY_FUNCTION__.8:
	.string	"do_commit"
	.align 16
	.type	__PRETTY_FUNCTION__.9, @object
	.size	__PRETTY_FUNCTION__.9, 26
__PRETTY_FUNCTION__.9:
	.string	"handle_renames_and_mkdirs"
	.type	__PRETTY_FUNCTION__.13, @object
	.size	__PRETTY_FUNCTION__.13, 15
__PRETTY_FUNCTION__.13:
	.string	"handle_commits"
	.section	.rodata.str1.1
.LC43:
	.string	"Could not copy fat\n"
.LC47:
	.string	"commit->path == ((void *)0)"
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"commit->path || commit->action == ACTION_WRITEOUT"
	.section	.rodata.str1.1
.LC44:
	.string	"s->used_clusters"
.LC50:
	.string	"j < s->mapping.next"
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"Fatal: error while committing (%d)\n"
	.section	.rodata.str1.1
.LC51:
	.string	"Error handling renames (%d)\n"
.LC46:
	.string	"commit->path"
.LC49:
	.string	"j"
.LC53:
	.string	"mapping->begin == begin"
	.section	.rodata.str1.8
	.align 8
.LC48:
	.ascii	"!(__extension__ (__builtin_constant_p (l2) && ((__builtin_co"
	.ascii	"nstant_p (m->path) && strlen (m->path) < ((size_t) (l2))) ||"
	.ascii	" (__builtin_constant_p (mapping->path) && strlen (mapping->p"
	.ascii	"ath) < ((size_t) (l2)))) ? __extension__ ({ size_t __s1_len,"
	.ascii	" __s2_len; (__builtin_constant_p (m->path) && __builtin_cons"
	.ascii	"tant_p (mapping->path) && (__s1_len = strlen (m->path), __s2"
	.ascii	"_len = strlen (mapping->path), (!((size_t)(const void *)((m-"
	.ascii	">path) + 1) - (size_t)(const void *)(m->path) == 1) || __s1_"
	.ascii	"len >= 4) && (!((size_t)(const void *)((mapping->path) + 1) "
	.ascii	"- (size_t)(const void *)(mapping->path) == 1) || __s2_len >="
	.ascii	" 4)) ? __builtin_strcmp (m->path, mapping->path) : (__builti"
	.ascii	"n_constant_p (m->path) && ((size_t)(const void *)((m->path) "
	.ascii	"+ 1) - (size_t)(const void *)(m->path) == 1) && (__s1_len = "
	.ascii	"strlen (m->path), __s1_len < 4) ? (__builtin_constant_p (map"
	.ascii	"ping->path) && ((size_t)(const void *)((mapping->path) + 1) "
	.ascii	"- (size_t)(const void *)(mapping->path) == 1) ? __builtin_st"
	.ascii	"rcmp (m->path, mapping->path) : (__extension__ ({ __const un"
	.ascii	"signed char *__s2 = (__const unsigned char *) (__const char "
	.ascii	"*) (mapping->path); register int __result = (((__const unsig"
	.ascii	"ned char *) (__const char *) (m->path))[0] - __s2[0]); if (_"
	.ascii	"_s1_len > 0 && __result == 0) { __result = (((__const unsign"
	.ascii	"ed char *) (__const char *) (m->path))[1] - __s2[1]); if (__"
	.ascii	"s1_len > 1 && __result == 0) { __result = (((__const unsigne"
	.ascii	"d char *) (__const char *) (m->path))[2] - __s2[2]); if (__s"
	.ascii	"1_len > 2 && __result == 0) __result = (((__const unsigned c"
	.ascii	"har *) (__const char *) (m->path))[3] - __s2[3]); } } __resu"
	.ascii	"lt; }))) : (__builtin_constant_p (mapping->path) && ((size_t"
	.ascii	")(const void *)((mapping->path) + 1) - (size_t)(const void *"
	.ascii	")(mapping->path) == 1) && (__s2_len = strlen (mapping->path)"
	.ascii	", __s2_len < 4) ? (__builtin_constant_p (m->path) && ((size_"
	.ascii	"t)(const void *)((m->path) + 1) - (size_t)(const void *)(m->"
	.ascii	"path) == 1) ? __builtin_strcmp (m->path, mapping->path) : (_"
	.ascii	"_extension__ ({ __const unsigned char *__s1 = (__const unsig"
	.ascii	"ned char *) (__const"
	.ascii	" char *) (m->path); register int __result = __s1[0] - ((__co"
	.ascii	"nst unsigned char *) (__const char *) (mapping->path))[0]; i"
	.ascii	"f (__s2_len > 0 && __result == 0) { __result = (__s1[1] - (("
	.ascii	"__const unsigned char *) (__const char *) (mapping->path))[1"
	.ascii	"]); if (__s2_len > 1 && __result == 0) { __result = (__s1[2]"
	.ascii	" - ((__const unsigned char *) (__const char *)"
	.string	" (mapping->path))[2]); if (__s2_len > 2 && __result == 0) __result = (__s1[3] - ((__const unsigned char *) (__const char *) (mapping->path))[3]); } } __result; }))) : __builtin_strcmp (m->path, mapping->path)))); }) : strncmp (m->path, mapping->path, l2)))"
	.section	.rodata.str1.1
.LC54:
	.string	"Error handling commits (%d)\n"
.LC55:
	.string	"Error deleting\n"
	.text
	.p2align 4,,15
	.type	try_commit, @function
try_commit:
.LFB168:
	.loc 1 2631 0
	pushq	%r15
.LCFI88:
	pushq	%r14
.LCFI89:
	pushq	%r13
.LCFI90:
	pushq	%r12
.LCFI91:
	pushq	%rbp
.LCFI92:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI93:
	subq	$184, %rsp
.LCFI94:
.LBB903:
.LBB904:
	.loc 1 1084 0
	cmpq	$0, 32896(%rdi)
	je	.L1238
	.loc 1 1085 0
	movq	$0, 32896(%rdi)
	.loc 1 1086 0
	movl	32892(%rdi), %edi
	testl	%edi, %edi
	jne	.L1650
.L1238:
.LBE904:
.LBE903:
.LBB905:
.LBB906:
	.loc 1 1862 0
	movq	32952(%rbp), %rax
	.loc 1 1846 0
	xorl	%r12d, %r12d
.LBE906:
.LBE905:
.LBB907:
.LBB908:
	.loc 1 1091 0
	movl	$-1, 32920(%rbp)
.LBE908:
.LBE907:
.LBB909:
.LBB910:
	.loc 1 1862 0
	testq	%rax, %rax
	je	.L1651
.L1242:
	.loc 1 1867 0
	mov	8(%rbp), %esi
	movl	32864(%rbp), %ecx
	movq	%rax, %rdx
	movq	(%rbp), %rdi
	call	vvfat_read
	.loc 1 1869 0
	testl	%eax, %eax
	jne	.L1652
	.loc 1 1873 0
	movq	32960(%rbp), %rsi
	testq	%rsi, %rsi
	je	.L1653
.LBB911:
.LBB912:
	.loc 1 820 0
	mov	32876(%rbp), %edx
.LBE912:
	.loc 1 819 0
	mov	32880(%rbp), %edi
.LBE911:
	.loc 1 1874 0
	xorl	%ecx, %ecx
.LBB913:
.LBB914:
	.loc 1 820 0
	subq	%rdx, %rdi
	mov	32860(%rbp), %edx
	movq	%rdi, %rax
	movq	%rdx, %rbx
	cqto
	idivq	%rbx
.LBE914:
.LBE913:
	.loc 1 819 0
	cmpl	%eax, %r12d
	jb	.L1251
.L1578:
.LBB915:
.LBB916:
	.loc 1 1365 0
	movl	32980(%rbp), %edx
	xorl	%ebx, %ebx
	cmpl	%edx, %ebx
	jae	.L1580
	leaq	32968(%rbp), %r13
	jmp	.L1266
	.p2align 4,,7
.L1656:
.LBB917:
	.loc 1 1367 0
	cmpl	$1, 16(%rax)
	jne	.L1654
.L1260:
	.loc 1 1372 0
	testq	%rdi, %rdi
	.p2align 4,,2
	jne	.L1655
.LBE917:
	.loc 1 1365 0
	incl	%ebx
	cmpl	%edx, %ebx
	.p2align 4,,4
	jae	.L1580
.L1266:
.LBB918:
.LBB919:
.LBB920:
	.loc 1 97 0
	cmpl	%ebx, 12(%r13)
	.p2align 4,,4
	jbe	.L1649
	movl	16(%r13), %eax
	imull	%ebx, %eax
	addq	32968(%rbp), %rax
.LBE920:
.LBE919:
	.loc 1 1367 0
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L1656
	.loc 1 1368 0
	cmpl	$1, 16(%rax)
	je	.L1260
	.loc 1 1370 0
	call	free
	movl	32980(%rbp), %edx
.LBE918:
	.loc 1 1365 0
	incl	%ebx
	cmpl	%edx, %ebx
	jb	.L1266
	.p2align 4,,7
.L1580:
.LBE916:
.LBE915:
	.loc 1 1881 0
	cmpq	$0, 32944(%rbp)
.LBB921:
.LBB922:
	.loc 1 1374 0
	movl	$0, 32980(%rbp)
.LBE922:
.LBE921:
	.loc 1 1881 0
	je	.L1268
	.loc 1 1882 0
	movl	32844(%rbp), %r12d
	xorl	%ecx, %ecx
	cmpl	%r12d, %ecx
	jae	.L1268
	leaq	32832(%rbp), %rbx
	jmp	.L1276
	.p2align 4,,7
.L1271:
	incl	%ecx
	cmpl	%r12d, %ecx
	jae	.L1268
.L1276:
.LBB923:
.LBB924:
.LBB925:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	imull	%ecx, %eax
	addq	32832(%rbp), %rax
.LBE925:
.LBE924:
	.loc 1 1884 0
	movl	12(%rax), %r10d
	testl	%r10d, %r10d
	jns	.L1271
	.loc 1 1885 0
	orl	$16, 32(%rax)
.LBE923:
	.loc 1 1882 0
	incl	%ecx
	movl	32844(%rbp), %r12d
	cmpl	%r12d, %ecx
	jb	.L1276
	.p2align 4,,7
.L1268:
	.loc 1 1888 0
	movq	32992(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	check_directory_consistency
	.loc 1 1889 0
	testl	%eax, %eax
	.loc 1 1888 0
	movl	%eax, %r12d
	.loc 1 1889 0
	jle	.L1612
.LBB926:
.LBB927:
	.loc 1 820 0
	mov	32876(%rbp), %eax
.LBE927:
	.loc 1 819 0
	mov	32880(%rbp), %edi
.LBB928:
	.loc 1 820 0
	mov	32860(%rbp), %r8d
.LBE928:
.LBE926:
	.loc 1 1894 0
	movl	32872(%rbp), %r9d
.LBB929:
.LBB930:
	.loc 1 820 0
	subq	%rax, %rdi
.LBE930:
.LBE929:
	.loc 1 1894 0
	movl	%r9d, %r11d
	.loc 1 1895 0
	movl	%r9d, %ecx
.LBB931:
.LBB932:
	.loc 1 820 0
	movq	%rdi, %rax
	cqto
	idivq	%r8
.LBE932:
.LBE931:
	.loc 1 819 0
	cmpl	%eax, %r9d
	jae	.L1583
	movq	32960(%rbp), %rsi
	movq	%rdi, %r10
	leal	(%r9,%r9,2), %edi
	jmp	.L1297
	.p2align 4,,7
.L1658:
.LBB933:
.LBB934:
	.loc 1 1510 0
	leal	1(%rcx), %eax
	cmpl	%r11d, %eax
	je	.L1657
.L1285:
.LBE934:
.LBE933:
	.loc 1 1508 0
	testl	%eax, %eax
	movslq	%ecx,%rdx
	je	.L1282
	.loc 1 1897 0
	cmpb	$0, (%rsi,%rdx)
	je	.L1612
	.loc 1 1901 0
	incl	%r9d
.L1282:
	.loc 1 1904 0
	cmpb	$4, (%rsi,%rdx)
	je	.L1612
.LBB935:
.LBB936:
	.loc 1 820 0
	movq	%r10, %rax
.LBE936:
.LBE935:
	.loc 1 1895 0
	incl	%ecx
	addl	$3, %edi
.LBB937:
.LBB938:
	.loc 1 820 0
	cqto
	idivq	%r8
.LBE938:
.LBE937:
	.loc 1 819 0
	cmpl	%eax, %ecx
	jae	.L1583
.L1297:
.LBB939:
.LBB940:
	.loc 1 1509 0
	cmpl	%ecx, %r11d
	ja	.L1658
	.loc 1 1516 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1659
	.loc 1 1519 0
	cmpl	$16, %eax
	je	.L1660
.LBB941:
	.loc 1 1523 0
	movl	%edi, %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32952(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	testb	$1, %cl
	je	.L1293
	movl	%edx, %eax
	shrl	$4, %eax
	jmp	.L1285
	.p2align 4,,7
.L1595:
	movq	32960(%rbp), %rsi
.L1251:
.LBE941:
.LBE940:
.LBE939:
	.loc 1 1875 0
	movslq	%ecx,%rax
	.loc 1 1874 0
	incl	%ecx
	.loc 1 1875 0
	andb	$-4, (%rsi,%rax)
.LBB942:
.LBB943:
	.loc 1 820 0
	mov	32876(%rbp), %eax
.LBE943:
	.loc 1 819 0
	mov	32880(%rbp), %edx
.LBB944:
	.loc 1 820 0
	mov	32860(%rbp), %esi
	subq	%rax, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rsi
.LBE944:
.LBE942:
	.loc 1 819 0
	cmpl	%eax, %ecx
	jb	.L1595
	jmp	.L1578
.L1652:
	.loc 1 1870 0
	movq	stderr(%rip), %rcx
	movl	$19, %edx
	movl	$1, %esi
	movl	$.LC43, %edi
	call	fwrite
.L1612:
.LBE910:
.LBE909:
	.loc 1 2635 0
	movl	$-1, %eax
.L1237:
	.loc 1 2637 0
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1651:
.LBB945:
.LBB946:
.LBB947:
	.loc 1 1863 0
	movl	32864(%rbp), %eax
	sall	$9, %eax
	.loc 1 1864 0
	movslq	%eax,%rbx
	movq	%rbx, %rdi
	call	malloc
	.loc 1 1865 0
	movq	32784(%rbp), %rsi
	.loc 1 1864 0
	movq	%rax, 32952(%rbp)
	.loc 1 1865 0
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	memcpy
	movq	32952(%rbp), %rax
	jmp	.L1242
.L1650:
.LBE947:
.LBE946:
.LBE945:
.LBB948:
.LBB949:
	.loc 1 1087 0
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbp)
	jmp	.L1238
.L1583:
.LBE949:
.LBE948:
.LBB950:
.LBB951:
	.loc 1 1911 0
	cmpl	%r12d, %r9d
	jne	.L1612
.LBE951:
.LBE950:
	.loc 1 1844 0
	testl	%r12d, %r12d
	.p2align 4,,2
	je	.L1612
.LBB952:
.LBB953:
	.loc 1 2585 0
	movl	32980(%rbp), %edx
	testl	%edx, %edx
	je	.L1300
.LBB954:
.LBB955:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbp)
	jne	.L1661
.L1301:
	.loc 1 1091 0
	movl	$-1, 32920(%rbp)
.LBE955:
.LBE954:
.LBB956:
.LBB957:
	.loc 1 2339 0
	movl	$0, 180(%rsp)
	cmpl	%edx, 180(%rsp)
	jae	.L1585
	leaq	32784(%rbp), %rsi
	leaq	32808(%rbp), %rbx
	leaq	32968(%rbp), %r13
	movq	%rbx, 64(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rsi, 32(%rsp)
.L1424:
.LBB958:
.LBB959:
.LBB960:
	.loc 1 97 0
	movl	180(%rsp), %eax
	cmpl	%eax, 12(%r13)
	jbe	.L1649
	movl	180(%rsp), %r15d
	imull	16(%r13), %r15d
	addq	32968(%rbp), %r15
.LBE960:
.LBE959:
	.loc 1 2341 0
	movl	16(%r15), %eax
	testl	%eax, %eax
	jne	.L1309
.LBB961:
.LBB962:
.LBB963:
.LBB964:
	.loc 1 1098 0
	movl	32844(%rbp), %r12d
.LBE964:
.LBE963:
	.loc 1 1125 0
	movl	8(%r15), %r9d
	leaq	32832(%rbp), %rbx
.LBB965:
.LBB966:
	.loc 1 1098 0
	xorl	%r8d, %r8d
	movl	%r12d, %esi
	jmp	.L1310
.L1662:
.LBB967:
.LBB968:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1646
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1600
	.loc 1 1109 0
	movl	%ecx, %esi
.L1322:
	.loc 1 1115 0
	cmpl	%esi, %r8d
	jg	.L1647
.L1310:
	.loc 1 1102 0
	leal	(%r8,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB969:
.LBB970:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	movq	32832(%rbp), %rdi
	imull	%ecx, %eax
	leaq	(%rdi,%rax), %rax
.LBE970:
.LBE969:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1645
	.loc 1 1105 0
	cmpl	%r9d, %edx
	jae	.L1662
	.loc 1 1111 0
	cmpl	%ecx, %r8d
	je	.L1663
	.loc 1 1113 0
	movl	%ecx, %r8d
	.p2align 4,,5
	jmp	.L1322
.L1657:
.LBE968:
.LBE967:
.LBE966:
.LBE965:
.LBE962:
.LBE961:
.LBE958:
.LBE957:
.LBE956:
.LBE953:
.LBE952:
.LBB971:
.LBB972:
.LBB973:
.LBB974:
	.loc 1 1510 0
	movl	32888(%rbp), %eax
	.p2align 4,,2
	jmp	.L1285
.L1659:
.LBB975:
	.loc 1 1517 0
	movq	32952(%rbp), %rax
	mov	%ecx, %edx
.LBB976:
	.loc 2 124 0
	movl	(%rax,%rdx,4), %eax
	jmp	.L1285
.L1293:
.LBE976:
.LBE975:
.LBB977:
	.loc 1 1523 0
	movl	%edx, %eax
	andl	$4095, %eax
	jmp	.L1285
.L1660:
.LBE977:
.LBB978:
	.loc 1 1520 0
	movq	32952(%rbp), %rax
	mov	%ecx, %edx
	.loc 2 123 0
	movzwl	(%rax,%rdx,2), %eax
	jmp	.L1285
.L1649:
.LBE978:
.LBE974:
.LBE973:
.LBE972:
.LBE971:
.LBB979:
.LBB980:
.LBB981:
.LBB982:
.LBB983:
.LBB984:
.LBB985:
.LBB986:
.LBB987:
.LBB988:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
.L1642:
.LBE988:
.LBE987:
.LBE986:
.LBE985:
.LBE984:
.LBE983:
.LBE982:
.LBE981:
.LBB989:
.LBB990:
.LBB991:
.LBB992:
.LBB993:
.LBB994:
.LBB995:
.LBB996:
.LBB997:
.LBB998:
	movl	$.LC3, %esi
	movl	$.LC10, %edi
.LBE998:
.LBE997:
.LBE996:
.LBE995:
.LBE994:
.LBE993:
.LBE992:
.LBE991:
.LBE990:
.LBE989:
	.loc 1 2618 0
	call	__assert_fail
.L1592:
.LBB999:
.LBB1000:
	.loc 1 2523 0
	movl	92(%rsp), %edi
	testl	%edi, %edi
	setne	%dl
	xorl	%eax, %eax
	cmpl	$0, 88(%rsp)
	setne	%al
	testl	%edx, %eax
	jne	.L1573
	.loc 1 2567 0
	xorl	%eax, %eax
.L1561:
.LBE1000:
.LBE999:
	.loc 1 2616 0
	testl	%eax, %eax
	jne	.L1664
	.loc 1 2622 0
	movq	32944(%rbp), %rdi
	movq	48(%rdi), %rax
	call	*88(%rax)
.LBB1001:
.LBB1002:
	.loc 1 820 0
	mov	32876(%rbp), %eax
.LBE1002:
	.loc 1 819 0
	mov	32880(%rbp), %ecx
.LBB1003:
	.loc 1 820 0
	mov	32860(%rbp), %esi
.LBE1003:
.LBE1001:
	.loc 1 819 0
	movq	32960(%rbp), %rdi
.LBB1004:
.LBB1005:
	.loc 1 820 0
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rsi
.LBE1005:
.LBE1004:
	.loc 1 819 0
	xorl	%esi, %esi
	mov	%eax, %edx
	call	memset
.L1300:
.LBE980:
.LBE979:
	.loc 1 2581 0
	xorl	%eax, %eax
	jmp	.L1237
.L1661:
.LBB1006:
.LBB1007:
.LBB1008:
.LBB1009:
	.loc 1 1086 0
	movl	32892(%rbp), %edi
	.loc 1 1085 0
	movq	$0, 32896(%rbp)
	.loc 1 1086 0
	testl	%edi, %edi
	je	.L1301
	.loc 1 1087 0
	call	close
	movl	32980(%rbp), %edx
	.loc 1 1088 0
	movl	$0, 32892(%rbp)
	jmp	.L1301
.L1309:
.LBE1009:
.LBE1008:
.LBB1010:
.LBB1011:
.LBB1012:
	.loc 1 2387 0
	cmpl	$3, %eax
	je	.L1665
	.loc 1 2429 0
	incl	180(%rsp)
.L1304:
.LBE1012:
	.loc 1 2339 0
	cmpl	%edx, 180(%rsp)
	jb	.L1424
.L1585:
	.loc 1 2430 0
	xorl	%eax, %eax
.L1340:
.LBE1011:
.LBE1010:
	.loc 1 2591 0
	testl	%eax, %eax
	jne	.L1666
	.loc 1 2598 0
	movl	32864(%rbp), %edx
	movq	32784(%rbp), %rdi
	movq	32952(%rbp), %rsi
	sall	$9, %edx
	mov	%edx, %edx
	call	memcpy
	.loc 1 2601 0
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbp, %rdi
	call	commit_direntries
	.loc 1 2602 0
	testl	%eax, %eax
	jne	.L1667
.LBB1013:
.LBB1014:
	.loc 1 2439 0
	movl	$0, 112(%rsp)
.LBB1015:
.LBB1016:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbp)
	je	.L1427
	.loc 1 1086 0
	movl	32892(%rbp), %edi
	.loc 1 1085 0
	movq	$0, 32896(%rbp)
	.loc 1 1086 0
	testl	%edi, %edi
	jne	.L1668
.L1427:
	.loc 1 1091 0
	movl	$-1, 32920(%rbp)
.LBE1016:
.LBE1015:
	.loc 1 2443 0
	movl	$0, 116(%rsp)
	movl	112(%rsp), %ebx
	cmpl	32980(%rbp), %ebx
	jae	.L1527
	leaq	32968(%rbp), %r13
.L1526:
.LBB1017:
.LBB1018:
.LBB1019:
	.loc 1 97 0
	movl	116(%rsp), %esi
	cmpl	%esi, 12(%r13)
	jbe	.L1649
	movl	116(%rsp), %r11d
	imull	16(%r13), %r11d
	addq	32968(%rbp), %r11
.LBE1019:
.LBE1018:
	.loc 1 2445 0
	movl	16(%r11), %eax
	cmpl	$1, %eax
	je	.L1439
	jb	.L1438
	cmpl	$2, %eax
	jne	.L1669
.LBB1020:
.LBB1021:
.LBB1022:
.LBB1023:
	.loc 1 1098 0
	movl	32844(%rbp), %r12d
.LBE1023:
.LBE1022:
.LBE1021:
	.loc 1 2467 0
	movl	8(%r11), %r14d
	leaq	32832(%rbp), %rbx
.LBB1024:
.LBB1025:
.LBB1026:
	.loc 1 1098 0
	xorl	%r8d, %r8d
	movl	%r12d, %esi
	jmp	.L1481
.L1670:
.LBB1027:
.LBB1028:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1646
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1609
	.loc 1 1109 0
	movl	%ecx, %esi
.L1493:
	.loc 1 1115 0
	cmpl	%esi, %r8d
	jg	.L1647
.L1481:
	.loc 1 1102 0
	leal	(%r8,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB1029:
.LBB1030:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	movq	32832(%rbp), %rdi
	imull	%ecx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1030:
.LBE1029:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1645
	.loc 1 1105 0
	cmpl	%r14d, %edx
	jae	.L1670
	.loc 1 1111 0
	cmpl	%ecx, %r8d
	je	.L1671
	.loc 1 1113 0
	movl	%ecx, %r8d
	.p2align 4,,5
	jmp	.L1493
.L1655:
.LBE1028:
.LBE1027:
.LBE1026:
.LBE1025:
.LBE1024:
.LBE1020:
.LBE1017:
.LBE1014:
.LBE1013:
.LBE1007:
.LBE1006:
.LBB1031:
.LBB1032:
.LBB1033:
.LBB1034:
.LBB1035:
	.loc 1 1372 0
	movl	$__PRETTY_FUNCTION__.4, %ecx
	movl	$1372, %edx
.L1627:
.LBE1035:
.LBE1034:
.LBE1033:
.LBE1032:
.LBE1031:
.LBB1036:
.LBB1037:
.LBB1038:
.LBB1039:
.LBB1040:
.LBB1041:
	.loc 1 2458 0
	movl	$.LC3, %esi
	movl	$.LC47, %edi
.LBE1041:
.LBE1040:
.LBE1039:
.LBE1038:
	.loc 1 2618 0
	call	__assert_fail
.L1654:
.LBE1037:
.LBE1036:
.LBB1042:
.LBB1043:
.LBB1044:
.LBB1045:
.LBB1046:
	.loc 1 1367 0
	movl	$__PRETTY_FUNCTION__.4, %ecx
	movl	$1367, %edx
	movl	$.LC3, %esi
	movl	$.LC45, %edi
.LBE1046:
.LBE1045:
.LBE1044:
.LBE1043:
.LBE1042:
.LBB1047:
.LBB1048:
	.loc 1 2618 0
	call	__assert_fail
.L1645:
.LBB1049:
.LBB1050:
.LBB1051:
.LBB1052:
.LBB1053:
.LBB1054:
.LBB1055:
.LBB1056:
.LBB1057:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE1057:
.LBE1056:
.LBE1055:
.LBE1054:
.LBE1053:
.LBE1052:
.LBE1051:
.LBE1050:
.LBE1049:
	.loc 1 2618 0
	call	__assert_fail
.L1647:
.LBB1058:
.LBB1059:
.LBB1060:
.LBB1061:
.LBB1062:
.LBB1063:
.LBB1064:
.LBB1065:
.LBB1066:
	.loc 1 1115 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE1066:
.LBE1065:
.LBE1064:
.LBE1063:
.LBE1062:
.LBE1061:
.LBE1060:
.LBE1059:
.LBE1058:
	.loc 1 2618 0
	call	__assert_fail
.L1609:
.LBB1067:
.LBB1068:
.LBB1069:
.LBB1070:
.LBB1071:
.LBB1072:
.LBB1073:
.LBB1074:
.LBB1075:
	.loc 1 1107 0
	movl	%r8d, %edx
.L1492:
.LBE1075:
.LBE1074:
.LBE1073:
	.loc 1 1128 0
	xorl	%r9d, %r9d
	cmpl	%r12d, %edx
	jae	.L1500
.LBB1076:
.LBB1077:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
.LBE1077:
.LBE1076:
	.loc 1 1131 0
	xorl	%r9d, %r9d
.LBB1078:
.LBB1079:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1079:
.LBE1078:
	.loc 1 1131 0
	cmpl	%r14d, (%rax)
	ja	.L1500
	.loc 1 1133 0
	cmpl	%r14d, 4(%rax)
	jbe	.L1648
	movq	%rax, %r9
.L1500:
.LBE1072:
.LBE1071:
	.loc 1 2473 0
	movl	32820(%rbp), %eax
	xorl	%r15d, %r15d
	.loc 1 1125 0
	movq	%r9, %r8
	.loc 1 2473 0
	cmpl	%eax, %r15d
	movl	%eax, 80(%rsp)
	jae	.L1618
	leaq	32808(%rbp), %r12
.L1518:
.LBB1080:
.LBB1081:
	.loc 1 97 0
	cmpl	%r15d, 12(%r12)
	jbe	.L1649
	movl	16(%r12), %ebx
	imull	%r15d, %ebx
	addq	32808(%rbp), %rbx
.LBE1081:
.LBE1080:
	.loc 1 2475 0
	movq	%r8, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, %rdi
	call	is_file
	testb	%al, %al
	movq	24(%rsp), %r8
	movq	16(%rsp), %r9
	movq	8(%rsp), %r11
	je	.L1510
.LBB1082:
.LBB1083:
	.loc 2 123 0
	movzwl	20(%rbx), %eax
	movzwl	26(%rbx), %edx
	sall	$16, %eax
	orl	%eax, %edx
.LBE1083:
.LBE1082:
	.loc 1 493 0
	cmpl	%r14d, %edx
	je	.L1509
.L1510:
	.loc 1 2473 0
	incl	%r15d
	cmpl	80(%rsp), %r15d
	jb	.L1518
.L1618:
	.loc 1 2480 0
	movl	$-6, 112(%rsp)
.L1432:
.LBE1070:
.LBE1069:
	.loc 1 2443 0
	movl	112(%rsp), %r9d
	incl	116(%rsp)
	testl	%r9d, %r9d
	jne	.L1431
	movl	116(%rsp), %edx
	cmpl	32980(%rbp), %edx
	jb	.L1526
.L1431:
	.loc 1 2508 0
	movl	116(%rsp), %r8d
	testl	%r8d, %r8d
	jle	.L1527
.LBB1084:
	.loc 1 179 0
	leaq	32968(%rbp), %rbx
	movq	%rbx, 104(%rsp)
.LBB1085:
	.loc 1 182 0
	movl	12(%rbx), %ecx
	cmpl	%ecx, 116(%rsp)
	ja	.L1672
.LBB1086:
.LBB1087:
	.loc 1 152 0
	xorl	%eax, %eax
	cmpq	$0, 104(%rsp)
.LBE1087:
	.loc 1 146 0
	leal	-1(%rcx), %r14d
.LBB1088:
	.loc 1 152 0
	movl	%r14d, %edx
	sete	%al
	shrl	$31, %edx
	orl	%edx, %eax
	jne	.L1536
	xorl	%eax, %eax
	cmpl	%ecx, %r14d
	setae	%al
	testl	%eax, %eax
	jne	.L1536
	cmpl	%ecx, %eax
	jae	.L1536
	.loc 1 157 0
	testl	%r14d, %r14d
	jne	.L1673
.L1534:
.LBE1088:
.LBE1086:
	.loc 1 185 0
	movq	104(%rsp), %rax
	movl	116(%rsp), %edx
	subl	%edx, 12(%rax)
.L1527:
.LBE1085:
.LBE1084:
	.loc 1 2508 0
	movl	112(%rsp), %eax
.L1542:
.LBE1068:
.LBE1067:
	.loc 1 2609 0
	testl	%eax, %eax
	jne	.L1674
	leaq	32808(%rbp), %rbx
	leaq	32832(%rbp), %r15
	movl	32844(%rbp), %r12d
	movq	%rbx, 56(%rsp)
.L1573:
.LBB1089:
.LBB1090:
	.loc 1 2520 0
	movl	$0, 92(%rsp)
	.loc 1 2521 0
	movl	$0, 88(%rsp)
	.loc 1 2523 0
	movl	$1, %r14d
.L1621:
	cmpl	%r12d, %r14d
	jae	.L1592
.LBB1091:
.LBB1092:
.LBB1093:
	.loc 1 97 0
	cmpl	%r14d, 12(%r15)
	jbe	.L1649
	movl	16(%r15), %ebx
	imull	%r14d, %ebx
	addq	32832(%rbp), %rbx
.LBE1093:
.LBE1092:
	.loc 1 2525 0
	movl	32(%rbx), %r13d
	testb	$16, %r13b
	je	.L1548
.LBB1094:
.LBB1095:
.LBB1096:
	.loc 1 97 0
	movq	56(%rsp), %rsi
.LBE1096:
	.loc 1 95 0
	movl	8(%rbx), %eax
.LBB1097:
	.loc 1 97 0
	cmpl	%eax, 12(%rsi)
	jbe	.L1649
	movq	56(%rsp), %rdx
	movl	16(%rdx), %edi
	imull	%eax, %edi
	addq	32808(%rbp), %rdi
.LBE1097:
.LBE1095:
	.loc 1 2529 0
	call	is_free
	testb	%al, %al
	je	.L1556
	.loc 1 2531 0
	andl	$4, %r13d
	jne	.L1675
.L1570:
	.loc 1 2564 0
	movl	%r14d, %esi
	movq	%rbp, %rdi
	call	remove_mapping
.L1624:
	movl	32844(%rbp), %r12d
.L1548:
.LBE1094:
.LBE1091:
	.loc 1 2523 0
	incl	%r14d
	jmp	.L1621
.L1556:
.LBB1098:
.LBB1099:
	.loc 1 2559 0
	movq	24(%rbx), %rdi
	call	unlink
	testl	%eax, %eax
	jne	.L1611
	.loc 1 2561 0
	incl	88(%rsp)
	jmp	.L1570
.L1611:
	.loc 1 2559 0
	movl	$-4, %eax
	.p2align 4,,4
	jmp	.L1561
	.p2align 4,,7
.L1675:
.LBB1100:
	.loc 1 2533 0
	movl	20(%rbx), %esi
	.loc 1 2532 0
	movl	32820(%rbp), %r13d
	.loc 1 2533 0
	movl	%esi, 84(%rsp)
	.loc 1 2535 0
	movq	24(%rbx), %rdi
	call	rmdir
	testl	%eax, %eax
	js	.L1676
	.loc 1 2543 0
	movl	32844(%rbp), %r12d
	movl	$1, %edx
.L1622:
	cmpl	%r12d, %edx
	jae	.L1594
.LBB1101:
.LBB1102:
.LBB1103:
	.loc 1 97 0
	cmpl	%edx, 12(%r15)
	jbe	.L1649
	movl	16(%r15), %eax
	imull	%edx, %eax
	addq	32832(%rbp), %rax
.LBE1103:
.LBE1102:
	.loc 1 2545 0
	testb	$4, 32(%rax)
	je	.L1564
	movl	20(%rax), %eax
	cmpl	84(%rsp), %eax
	jle	.L1564
	.loc 1 2550 0
	cmpl	%r13d, %eax
	cmovl	%eax, %r13d
.L1564:
.LBE1101:
	.loc 1 2543 0
	incl	%edx
	jmp	.L1622
.L1594:
	.loc 1 2553 0
	subl	84(%rsp), %r13d
	movl	84(%rsp), %esi
	movq	%rbp, %rdi
	movl	%r13d, %edx
	call	remove_direntries
.LBE1100:
	.loc 1 2561 0
	incl	88(%rsp)
	jmp	.L1570
.L1653:
.LBE1099:
.LBE1098:
.LBE1090:
.LBE1089:
.LBE1048:
.LBE1047:
.LBB1104:
.LBB1105:
	.loc 1 1873 0
	movl	$__PRETTY_FUNCTION__.3, %ecx
	movl	$1873, %edx
	movl	$.LC3, %esi
	movl	$.LC44, %edi
.LBE1105:
.LBE1104:
.LBB1106:
.LBB1107:
	.loc 1 2618 0
	call	__assert_fail
.L1646:
.LBB1108:
.LBB1109:
.LBB1110:
.LBB1111:
.LBB1112:
.LBB1113:
.LBB1114:
.LBB1115:
.LBB1116:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE1116:
.LBE1115:
.LBE1114:
.LBE1113:
.LBE1112:
.LBE1111:
.LBE1110:
.LBE1109:
.LBE1108:
	.loc 1 2618 0
	call	__assert_fail
.L1439:
.LBB1117:
.LBB1118:
.LBB1119:
.LBB1120:
.LBB1121:
	.loc 1 95 0
	leaq	32808(%rbp), %r12
	movl	8(%r11), %esi
.LBB1122:
	.loc 1 97 0
	cmpl	%esi, 12(%r12)
	jbe	.L1649
	movl	16(%r12), %eax
.LBE1122:
.LBE1121:
.LBB1123:
.LBB1124:
.LBB1125:
	.loc 1 1098 0
	movl	32844(%rbp), %r12d
	leaq	32832(%rbp), %rbx
	xorl	%r9d, %r9d
.LBE1125:
.LBE1124:
.LBE1123:
.LBB1126:
.LBB1127:
	.loc 1 97 0
	imull	%esi, %eax
	addq	32808(%rbp), %rax
.LBE1127:
.LBE1126:
.LBB1128:
.LBB1129:
.LBB1130:
	.loc 1 1098 0
	movl	%r12d, %r8d
.LBE1130:
.LBE1129:
.LBE1128:
.LBB1131:
.LBB1132:
	.loc 2 123 0
	movzwl	26(%rax), %r10d
	movzwl	20(%rax), %eax
	sall	$16, %eax
	orl	%eax, %r10d
	jmp	.L1446
.L1677:
.LBE1132:
.LBE1131:
.LBB1133:
.LBB1134:
.LBB1135:
.LBB1136:
.LBB1137:
	.loc 1 1106 0
	cmpl	%ecx, %r8d
	sete	%dl
	xorl	%eax, %eax
	testl	%r8d, %r8d
	setne	%al
	testl	%edx, %eax
	jne	.L1646
	.loc 1 1107 0
	cmpl	%ecx, %r8d
	je	.L1607
	.loc 1 1109 0
	movl	%ecx, %r8d
.L1458:
	.loc 1 1115 0
	cmpl	%r8d, %r9d
	jg	.L1647
.L1446:
	.loc 1 1102 0
	leal	(%r9,%r8), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB1138:
.LBB1139:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	movq	32832(%rbp), %rdi
	imull	%ecx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1139:
.LBE1138:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1645
	.loc 1 1105 0
	cmpl	%r10d, %edx
	jae	.L1677
	.loc 1 1111 0
	cmpl	%ecx, %r9d
	je	.L1678
	.loc 1 1113 0
	movl	%ecx, %r9d
	.p2align 4,,5
	jmp	.L1458
.L1663:
.LBE1137:
.LBE1136:
.LBE1135:
.LBE1134:
.LBE1133:
.LBE1120:
.LBE1119:
.LBE1118:
.LBE1117:
.LBB1140:
.LBB1141:
.LBB1142:
.LBB1143:
.LBB1144:
.LBB1145:
.LBB1146:
.LBB1147:
.LBB1148:
	.loc 1 1111 0
	cmpl	%r9d, %eax
	movl	%r8d, %edx
	.p2align 4,,3
	ja	.L1321
	movl	%esi, %edx
.L1321:
.LBE1148:
.LBE1147:
.LBE1146:
	.loc 1 1128 0
	cmpl	%r12d, %edx
	movq	$0, 168(%rsp)
	jae	.L1329
.LBB1149:
.LBB1150:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
.LBE1150:
.LBE1149:
	.loc 1 1131 0
	movq	$0, 168(%rsp)
.LBB1151:
.LBB1152:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1152:
.LBE1151:
	.loc 1 1131 0
	cmpl	%r9d, (%rax)
	ja	.L1329
	.loc 1 1133 0
	cmpl	%r9d, 4(%rax)
	jbe	.L1648
	movq	%rax, 168(%rsp)
.L1329:
.LBE1145:
.LBE1144:
	.loc 1 2344 0
	movq	168(%rsp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 160(%rsp)
	.loc 1 2346 0
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.L1679
	.loc 1 2347 0
	movq	168(%rsp), %rax
	movq	%rsi, 24(%rax)
	.loc 1 2348 0
	movq	160(%rsp), %rdi
	call	rename
	testl	%eax, %eax
	jne	.L1602
	.loc 1 2351 0
	movq	168(%rsp), %rdx
	testb	$4, 32(%rdx)
	je	.L1341
.LBB1153:
	.loc 1 2352 0
	movq	24(%rdx), %rdi
	call	strlen
	.loc 1 2353 0
	movq	160(%rsp), %rdi
	.loc 1 2352 0
	movl	%eax, 156(%rsp)
	.loc 1 2353 0
	call	strlen
	.loc 1 2354 0
	movl	156(%rsp), %esi
.LBB1154:
	.loc 1 95 0
	movq	64(%rsp), %r12
	movq	168(%rsp), %rdx
.LBE1154:
	.loc 1 2354 0
	subl	%eax, %esi
	movl	%esi, 152(%rsp)
.LBB1155:
	.loc 1 95 0
	movl	20(%rdx), %ecx
.LBB1156:
	.loc 1 97 0
	cmpl	%ecx, 12(%r12)
	jbe	.L1649
	imull	16(%r12), %ecx
.LBE1156:
.LBE1155:
	.loc 1 2357 0
	movq	168(%rsp), %rdx
	cltq
.LBB1157:
.LBB1158:
	.loc 1 97 0
	movq	%rcx, 144(%rsp)
	movq	32808(%rbp), %rsi
	addq	%rsi, 144(%rsp)
.LBE1158:
.LBE1157:
	.loc 1 2357 0
	movl	(%rdx), %r15d
	.loc 1 2358 0
	movl	$0, 140(%rsp)
	movq	%rax, 48(%rsp)
.L1345:
.LBB1159:
.LBB1160:
	.loc 1 577 0
	movl	32888(%rbp), %eax
	subl	$8, %eax
	cmpl	%r15d, %eax
	jb	.L1341
.L1349:
.LBE1160:
.LBE1159:
.LBB1161:
	.loc 1 2363 0
	movslq	140(%rsp),%rax
	movq	144(%rsp), %rsi
	salq	$5, %rax
	leaq	(%rax,%rsi), %r12
	.loc 1 2365 0
	movq	%r12, %rdi
	call	is_file
	testb	%al, %al
	jne	.L1353
	movq	%r12, %rdi
	call	is_directory
	testb	%al, %al
	.p2align 4,,2
	je	.L1352
.LBB1162:
.LBB1163:
	.loc 1 484 0
	movq	%r12, %rdi
	xorl	%r14d, %r14d
	call	is_short_name
	testb	%al, %al
	je	.L1355
	cmpb	$46, (%r12)
	movl	$1, %eax
	cmove	%eax, %r14d
.L1355:
.LBE1163:
.LBE1162:
	.loc 1 483 0
	testl	%r14d, %r14d
	jne	.L1352
.L1353:
.LBB1164:
.LBB1165:
.LBB1166:
.LBB1167:
	.loc 2 123 0
	movzwl	20(%r12), %eax
	movzwl	26(%r12), %r9d
.LBE1167:
.LBE1166:
.LBB1168:
.LBB1169:
	.loc 1 1098 0
	xorl	%r8d, %r8d
	movl	32844(%rbp), %r12d
.LBE1169:
.LBE1168:
.LBB1170:
.LBB1171:
	.loc 2 123 0
	sall	$16, %eax
.LBE1171:
.LBE1170:
.LBB1172:
.LBB1173:
	.loc 1 1098 0
	movl	%r12d, %esi
.LBE1173:
.LBE1172:
.LBB1174:
.LBB1175:
	.loc 2 123 0
	orl	%eax, %r9d
	jmp	.L1359
.L1680:
.LBE1175:
.LBE1174:
.LBB1176:
.LBB1177:
.LBB1178:
.LBB1179:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1646
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1603
	.loc 1 1109 0
	movl	%ecx, %esi
.L1371:
	.loc 1 1115 0
	cmpl	%esi, %r8d
	jg	.L1647
.L1359:
	.loc 1 1102 0
	leal	(%r8,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB1180:
.LBB1181:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	movq	32832(%rbp), %rdi
	imull	%ecx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1181:
.LBE1180:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1645
	.loc 1 1105 0
	cmpl	%r9d, %edx
	jae	.L1680
	.loc 1 1111 0
	cmpl	%ecx, %r8d
	je	.L1681
	.loc 1 1113 0
	movl	%ecx, %r8d
	.p2align 4,,5
	jmp	.L1371
.L1603:
	.loc 1 1107 0
	movl	%r8d, %edx
.L1370:
.LBE1179:
.LBE1178:
.LBE1177:
	.loc 1 1128 0
	cmpl	%r12d, %edx
	movq	$0, 128(%rsp)
	jae	.L1378
.LBB1182:
.LBB1183:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
.LBE1183:
.LBE1182:
	.loc 1 1131 0
	movq	$0, 128(%rsp)
.LBB1184:
.LBB1185:
	.loc 1 97 0
	imull	%edx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1185:
.LBE1184:
	.loc 1 1131 0
	cmpl	%r9d, (%rax)
	ja	.L1378
	.loc 1 1133 0
	cmpl	%r9d, 4(%rax)
	jbe	.L1648
	movq	%rax, 128(%rsp)
.L1378:
.LBE1176:
.LBE1165:
	.loc 1 2368 0
	movq	128(%rsp), %rax
	movq	24(%rax), %rdi
	call	strlen
	.loc 1 2369 0
	movl	152(%rsp), %edx
	leal	1(%rdx,%rax), %eax
	movslq	%eax,%rdi
	call	malloc
	.loc 1 2371 0
	movq	168(%rsp), %rsi
	.loc 1 2369 0
	movq	%rax, %r12
	.loc 1 2371 0
	movq	128(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	24(%rsi), %r14
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	call	strncmp
	testl	%eax, %eax
	jne	.L1682
	.loc 1 2373 0
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	strcpy
	.loc 1 2374 0
	movq	128(%rsp), %rdx
	movslq	156(%rsp),%rdi
	movq	48(%rsp), %rsi
	addq	24(%rdx), %rsi
	addq	%r12, %rdi
	call	strcpy
	.loc 1 2376 0
	movq	128(%rsp), %rax
	movq	%r12, %rdx
	movq	%rbp, %rdi
	movl	(%rax), %esi
	call	schedule_rename
.L1352:
.LBE1164:
	.loc 1 2378 0
	incl	140(%rsp)
.LBE1161:
	.loc 1 2379 0
	movl	32860(%rbp), %edx
	movl	140(%rsp), %eax
	sall	$4, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	divl	%esi
	testl	%edx, %edx
	jne	.L1349
.LBB1186:
.LBB1187:
	.loc 1 563 0
	movl	32780(%rbp), %eax
	cmpl	$32, %eax
	je	.L1683
	.loc 1 566 0
	cmpl	$16, %eax
	je	.L1684
.LBB1188:
	.loc 1 570 0
	leal	(%r15,%r15,2), %eax
	shrl	%eax
	mov	%eax, %eax
	addq	32784(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %eax
	orl	%eax, %edx
	andl	$1, %r15d
	je	.L1403
	movl	%edx, %eax
	shrl	$4, %eax
.LBE1188:
.LBE1187:
.LBE1186:
	.loc 1 562 0
	movl	%eax, %r15d
	jmp	.L1345
	.p2align 4,,7
.L1665:
.LBE1153:
.LBE1143:
.LBB1189:
	.loc 1 2395 0
	movq	(%r15), %rdi
	movl	$493, %esi
	call	mkdir
	testl	%eax, %eax
	jne	.L1605
	.loc 1 2399 0
	movl	8(%r15), %esi
	movq	%rbp, %rdi
	leal	1(%rsi), %edx
	call	insert_mapping
	.loc 1 2401 0
	testq	%rax, %rax
	.loc 1 2399 0
	movq	%rax, 120(%rsp)
	.loc 1 2401 0
	je	.L1606
	.loc 1 2404 0
	movl	$4, 32(%rax)
	.loc 1 2405 0
	movl	$0, 36(%rax)
	.loc 1 2406 0
	movq	(%r15), %rax
	movq	120(%rsp), %rbx
	movq	%rax, 24(%rbx)
	.loc 1 2407 0
	movl	32820(%rbp), %r14d
	.loc 1 2408 0
	testl	%r14d, %r14d
	je	.L1685
	.loc 1 2409 0
	movl	32860(%rbp), %edx
	movl	%r14d, %esi
	movq	%rbp, %rdi
	sall	$4, %edx
	call	insert_direntries
	.loc 1 2411 0
	movq	120(%rsp), %rsi
	movl	%r14d, 20(%rsi)
	.loc 1 2413 0
	movq	(%r15), %rdi
	.loc 1 2415 0
	xorl	%r14d, %r14d
	.loc 1 2413 0
	call	strlen
	movq	(%r15), %rdi
	movq	%rax, %rbx
	call	get_basename
	movq	%rax, %rdi
	call	strlen
	.loc 1 2415 0
	movl	32844(%rbp), %r12d
	.loc 1 2413 0
	subl	%eax, %ebx
	movl	%ebx, %eax
	decl	%eax
	.loc 1 2415 0
	cmpl	%r12d, %r14d
	jae	.L1617
	cltq
	leaq	32832(%rbp), %rbx
	movq	%rax, 72(%rsp)
.L1421:
.LBB1190:
.LBB1191:
.LBB1192:
	.loc 1 97 0
	cmpl	%r14d, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %ecx
	imull	%r14d, %ecx
	addq	32832(%rbp), %rcx
.LBE1192:
.LBE1191:
	.loc 1 2417 0
	movl	12(%rcx), %eax
	shrl	$31, %eax
	cmpq	120(%rsp), %rcx
	setne	%dl
	testl	%edx, %eax
	je	.L1414
	.loc 1 2418 0
	movq	120(%rsp), %rax
	movq	24(%rcx), %r15
	movq	72(%rsp), %rdx
	movq	24(%rax), %rsi
	movq	%r15, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L1414
	movq	%r15, %rdi
	call	strlen
	cmpq	72(%rsp), %rax
	je	.L1413
.L1414:
.LBE1190:
	.loc 1 2415 0
	incl	%r14d
	cmpl	%r12d, %r14d
	jb	.L1421
.L1617:
	.loc 1 2422 0
	movl	$__PRETTY_FUNCTION__.9, %ecx
	movl	$2422, %edx
	movl	$.LC3, %esi
	movl	$.LC50, %edi
.LBE1189:
.LBE1142:
.LBE1141:
.LBE1140:
	.loc 1 2618 0
	call	__assert_fail
.L1600:
.LBB1193:
.LBB1194:
.LBB1195:
.LBB1196:
.LBB1197:
.LBB1198:
.LBB1199:
.LBB1200:
.LBB1201:
	.loc 1 1107 0
	movl	%r8d, %edx
	jmp	.L1321
.L1668:
.LBE1201:
.LBE1200:
.LBE1199:
.LBE1198:
.LBE1197:
.LBE1196:
.LBE1195:
.LBE1194:
.LBE1193:
.LBB1202:
.LBB1203:
.LBB1204:
.LBB1205:
	.loc 1 1087 0
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbp)
	jmp	.L1427
.L1341:
.LBE1205:
.LBE1204:
.LBE1203:
.LBE1202:
.LBB1206:
.LBB1207:
.LBB1208:
.LBB1209:
	.loc 1 2384 0
	movq	160(%rsp), %rdi
	call	free
.L1619:
.LBE1209:
.LBB1210:
	.loc 1 2425 0
	movl	180(%rsp), %esi
	movq	%r13, %rdi
	call	array_remove
	movl	32980(%rbp), %edx
	jmp	.L1304
.L1676:
.LBE1210:
.LBE1208:
.LBE1207:
.LBE1206:
.LBB1211:
.LBB1212:
.LBB1213:
.LBB1214:
.LBB1215:
	.loc 1 2536 0
	call	__errno_location
	cmpl	$39, (%rax)
	je	.L1686
	.loc 1 2539 0
	movl	$-5, %eax
	.p2align 4,,4
	jmp	.L1561
.L1671:
.LBE1215:
.LBE1214:
.LBE1213:
.LBE1212:
.LBE1211:
.LBB1216:
.LBB1217:
.LBB1218:
.LBB1219:
.LBB1220:
.LBB1221:
.LBB1222:
.LBB1223:
.LBB1224:
	.loc 1 1111 0
	cmpl	%r14d, %eax
	movl	%r8d, %edx
	.p2align 4,,3
	ja	.L1492
	movl	%esi, %edx
	.p2align 4,,3
	jmp	.L1492
.L1681:
.LBE1224:
.LBE1223:
.LBE1222:
.LBE1221:
.LBE1220:
.LBE1219:
.LBE1218:
.LBE1217:
.LBE1216:
.LBB1225:
.LBB1226:
.LBB1227:
.LBB1228:
.LBB1229:
.LBB1230:
.LBB1231:
.LBB1232:
.LBB1233:
.LBB1234:
.LBB1235:
.LBB1236:
	cmpl	%r9d, %eax
	movl	%r8d, %edx
	ja	.L1370
	movl	%esi, %edx
	.p2align 4,,3
	jmp	.L1370
.L1686:
.LBE1236:
.LBE1235:
.LBE1234:
.LBE1233:
.LBE1232:
.LBE1231:
.LBE1230:
.LBE1229:
.LBE1228:
.LBE1227:
.LBE1226:
.LBE1225:
.LBB1237:
.LBB1238:
.LBB1239:
.LBB1240:
.LBB1241:
	.loc 1 2537 0
	incl	92(%rsp)
	.p2align 4,,2
	jmp	.L1624
.L1678:
.LBE1241:
.LBE1240:
.LBE1239:
.LBE1238:
.LBE1237:
.LBB1242:
.LBB1243:
.LBB1244:
.LBB1245:
.LBB1246:
.LBB1247:
.LBB1248:
.LBB1249:
.LBB1250:
	.loc 1 1111 0
	cmpl	%r10d, %eax
	movl	%r9d, %edx
	.p2align 4,,2
	ja	.L1457
	movl	%r8d, %edx
.L1457:
.LBE1250:
.LBE1249:
.LBE1248:
	.loc 1 1128 0
	cmpl	%r12d, %edx
	jae	.L1613
.LBB1251:
.LBB1252:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L1649
	movl	16(%rbx), %eax
	imull	%edx, %eax
	leaq	(%rdi,%rax), %rax
.LBE1252:
.LBE1251:
	.loc 1 1131 0
	movl	(%rax), %edx
	cmpl	%r10d, %edx
	ja	.L1613
	.loc 1 1133 0
	cmpl	%r10d, 4(%rax)
	jbe	.L1648
.LBE1247:
.LBE1246:
	.loc 1 2456 0
	testq	%rax, %rax
	je	.L1613
	.loc 1 2457 0
	cmpl	%r10d, %edx
	.p2align 4,,5
	jne	.L1687
	.loc 1 2458 0
	cmpq	$0, (%r11)
	.p2align 4,,5
	jne	.L1688
	.loc 1 2460 0
	movl	12(%r11), %edx
	movq	%rbp, %rdi
	call	commit_one_file
	testl	%eax, %eax
	je	.L1432
	.loc 1 2462 0
	movl	$-3, 112(%rsp)
	jmp	.L1432
.L1607:
.LBB1253:
.LBB1254:
.LBB1255:
.LBB1256:
.LBB1257:
	.loc 1 1107 0
	movl	%r9d, %edx
	.p2align 4,,4
	jmp	.L1457
.L1413:
.LBE1257:
.LBE1256:
.LBE1255:
.LBE1254:
.LBE1253:
.LBE1245:
.LBE1244:
.LBE1243:
.LBE1242:
.LBB1258:
.LBB1259:
.LBB1260:
.LBB1261:
	.loc 1 2422 0
	cmpl	%r12d, %r14d
	.p2align 4,,4
	jae	.L1617
	.loc 1 2423 0
	movq	120(%rsp), %rdx
	movl	%r14d, 16(%rdx)
	.p2align 4,,2
	jmp	.L1619
.L1683:
.LBE1261:
.LBB1262:
.LBB1263:
.LBB1264:
.LBB1265:
.LBB1266:
.LBB1267:
.LBB1268:
	.loc 1 97 0
	movq	40(%rsp), %rax
	cmpl	%r15d, 12(%rax)
	jbe	.L1689
	movq	40(%rsp), %rdx
	movl	16(%rdx), %eax
	imull	%r15d, %eax
	addq	32784(%rbp), %rax
.LBE1268:
.LBE1267:
.LBB1269:
	.loc 2 124 0
	movl	(%rax), %eax
.LBE1269:
.LBE1266:
.LBE1265:
.LBE1264:
	.loc 1 562 0
	movl	%eax, %r15d
	jmp	.L1345
.L1509:
.LBE1263:
.LBE1262:
.LBE1260:
.LBE1259:
.LBE1258:
.LBB1270:
.LBB1271:
.LBB1272:
.LBB1273:
	.loc 1 2479 0
	cmpl	80(%rsp), %r15d
	jae	.L1618
	.loc 1 2485 0
	testq	%r9, %r9
	je	.L1576
	cmpl	%r14d, (%r9)
	.p2align 4,,4
	je	.L1520
	.loc 1 2486 0
	movl	%r14d, 4(%r9)
.L1576:
	.loc 1 2490 0
	leal	1(%r14), %edx
	movl	%r14d, %esi
	movq	%rbp, %rdi
	movq	%r11, 8(%rsp)
	call	insert_mapping
	movq	8(%rsp), %r11
	movq	%rax, %r8
.L1521:
	.loc 1 2493 0
	movq	(%r11), %rax
	testq	%rax, %rax
	je	.L1690
	.loc 1 2499 0
	xorl	%edx, %edx
	.loc 1 2494 0
	movq	%rax, 24(%r8)
	.loc 1 2495 0
	movl	$0, 36(%r8)
	.loc 1 2496 0
	movl	$1, 32(%r8)
	.loc 1 2497 0
	movl	$0, 16(%r8)
	.loc 1 2499 0
	movl	%r15d, %esi
	movq	%rbp, %rdi
	call	commit_one_file
	testl	%eax, %eax
	je	.L1432
	.loc 1 2500 0
	movl	$-7, 112(%rsp)
	jmp	.L1432
	.p2align 4,,7
.L1536:
.LBE1273:
.LBE1272:
	.loc 1 2508 0
	movl	$-1, %eax
	.p2align 4,,4
	jmp	.L1542
.L1520:
.LBB1274:
.LBB1275:
	.loc 1 2489 0
	testq	%r8, %r8
	.p2align 4,,4
	jne	.L1521
	.p2align 4,,7
	jmp	.L1576
.L1667:
.LBE1275:
.LBE1274:
.LBE1271:
.LBE1270:
	.loc 1 2603 0
	movq	stderr(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC52, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 2604 0
	movl	$__PRETTY_FUNCTION__.8, %ecx
	movl	$2604, %edx
.L1644:
	.loc 1 2618 0
	movl	$.LC3, %esi
	movl	$.LC30, %edi
	call	__assert_fail
.L1666:
	.loc 1 2592 0
	movq	stderr(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC51, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 2593 0
	movl	$__PRETTY_FUNCTION__.8, %ecx
	movl	$2593, %edx
	jmp	.L1644
.L1606:
.LBB1276:
.LBB1277:
.LBB1278:
.LBB1279:
	.loc 1 2401 0
	movl	$-6, %eax
	jmp	.L1340
.L1605:
	.loc 1 2395 0
	movl	$-5, %eax
	jmp	.L1340
.L1679:
.LBE1279:
.LBB1280:
	.loc 1 2346 0
	movl	$__PRETTY_FUNCTION__.9, %ecx
	movl	$2346, %edx
.L1636:
.LBE1280:
.LBE1278:
.LBE1277:
.LBE1276:
.LBB1281:
.LBB1282:
.LBB1283:
.LBB1284:
	.loc 1 2493 0
	movl	$.LC3, %esi
	movl	$.LC46, %edi
.LBE1284:
.LBE1283:
.LBE1282:
.LBE1281:
	.loc 1 2618 0
	call	__assert_fail
.L1648:
.LBB1285:
.LBB1286:
.LBB1287:
.LBB1288:
.LBB1289:
.LBB1290:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE1290:
.LBE1289:
.LBE1288:
.LBE1287:
.LBE1286:
.LBE1285:
	.loc 1 2618 0
	call	__assert_fail
.L1602:
.LBB1291:
.LBB1292:
.LBB1293:
.LBB1294:
	.loc 1 2348 0
	movl	$-2, %eax
	jmp	.L1340
.L1684:
.LBB1295:
.LBB1296:
.LBB1297:
.LBB1298:
.LBB1299:
.LBB1300:
	.loc 1 97 0
	movq	32(%rsp), %rsi
	cmpl	%r15d, 12(%rsi)
	jbe	.L1649
	movq	32(%rsp), %rdx
	movl	16(%rdx), %eax
	imull	%r15d, %eax
	addq	32784(%rbp), %rax
.LBE1300:
.LBE1299:
	.loc 2 123 0
	movzwl	(%rax), %eax
.LBE1298:
.LBE1297:
.LBE1296:
	.loc 1 562 0
	movl	%eax, %r15d
	jmp	.L1345
.L1685:
.LBE1295:
.LBE1294:
.LBB1301:
	.loc 1 2408 0
	movl	$__PRETTY_FUNCTION__.9, %ecx
	movl	$2408, %edx
	movl	$.LC3, %esi
	movl	$.LC49, %edi
.LBE1301:
.LBE1293:
.LBE1292:
.LBE1291:
	.loc 1 2618 0
	call	__assert_fail
.L1403:
.LBB1302:
.LBB1303:
.LBB1304:
.LBB1305:
.LBB1306:
.LBB1307:
.LBB1308:
.LBB1309:
	.loc 1 570 0
	movl	%edx, %eax
	andl	$4095, %eax
.LBE1309:
.LBE1308:
.LBE1307:
	.loc 1 562 0
	movl	%eax, %r15d
	jmp	.L1345
.L1669:
.LBE1306:
.LBE1305:
.LBE1304:
.LBE1303:
.LBE1302:
.LBB1310:
.LBB1311:
.LBB1312:
	.loc 1 2445 0
	cmpl	$3, %eax
	.loc 1 2505 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2505, %edx
	.loc 1 2445 0
	jne	.L1644
.L1438:
	.loc 1 2447 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2447, %edx
	jmp	.L1644
.L1688:
.LBB1313:
	.loc 1 2458 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2458, %edx
	jmp	.L1627
.L1687:
	.loc 1 2457 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2457, %edx
	movl	$.LC3, %esi
	movl	$.LC53, %edi
.LBE1313:
.LBE1312:
.LBE1311:
.LBE1310:
	.loc 1 2618 0
	call	__assert_fail
.L1613:
.LBB1314:
.LBB1315:
.LBB1316:
.LBB1317:
	.loc 1 2456 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2456, %edx
	movl	$.LC3, %esi
	movl	$.LC31, %edi
.LBE1317:
.LBE1316:
.LBE1315:
.LBE1314:
	.loc 1 2618 0
	call	__assert_fail
.L1682:
.LBB1318:
.LBB1319:
.LBB1320:
.LBB1321:
.LBB1322:
.LBB1323:
.LBB1324:
	.loc 1 2371 0
	movl	$__PRETTY_FUNCTION__.9, %ecx
	movl	$2371, %edx
	movl	$.LC3, %esi
	movl	$.LC48, %edi
.LBE1324:
.LBE1323:
.LBE1322:
.LBE1321:
.LBE1320:
.LBE1319:
.LBE1318:
	.loc 1 2618 0
	call	__assert_fail
.L1674:
	.loc 1 2610 0
	movq	stderr(%rip), %rdi
	movl	%eax, %edx
	movl	$.LC54, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 2611 0
	movl	$__PRETTY_FUNCTION__.8, %ecx
	movl	$2611, %edx
	jmp	.L1644
.L1664:
	.loc 1 2617 0
	movq	stderr(%rip), %rcx
	movl	$15, %edx
	movl	$1, %esi
	movl	$.LC55, %edi
	call	fwrite
	.loc 1 2618 0
	movl	$__PRETTY_FUNCTION__.8, %ecx
	movl	$2618, %edx
	jmp	.L1644
.L1689:
.LBB1325:
.LBB1326:
.LBB1327:
.LBB1328:
.LBB1329:
.LBB1330:
.LBB1331:
.LBB1332:
.LBB1333:
.LBB1334:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movb	$97, %dl
	jmp	.L1642
.L1672:
.LBE1334:
.LBE1333:
.LBE1332:
.LBE1331:
.LBE1330:
.LBE1329:
.LBE1328:
.LBE1327:
.LBE1326:
.LBE1325:
.LBB1335:
.LBB1336:
.LBB1337:
.LBB1338:
	.loc 1 182 0
	movl	$__PRETTY_FUNCTION__.10, %ecx
	movl	$182, %edx
	movl	$.LC3, %esi
	movl	$.LC6, %edi
.LBE1338:
.LBE1337:
.LBE1336:
.LBE1335:
	.loc 1 2618 0
	call	__assert_fail
.L1690:
.LBB1339:
.LBB1340:
.LBB1341:
.LBB1342:
	.loc 1 2493 0
	movl	$__PRETTY_FUNCTION__.13, %ecx
	movl	$2493, %edx
	jmp	.L1636
.L1673:
.LBE1342:
.LBE1341:
.LBB1343:
.LBB1344:
.LBB1345:
.LBB1346:
	.loc 1 160 0
	movq	104(%rsp), %rsi
	.loc 1 162 0
	movl	%r14d, %eax
	.loc 1 161 0
	movq	32968(%rbp), %rbx
	.loc 1 160 0
	movl	16(%rsi), %r15d
	.loc 1 162 0
	imull	%r15d, %eax
	cltq
	leaq	(%rbx,%rax), %r13
	.loc 1 163 0
	movl	116(%rsp), %eax
	imull	%r15d, %eax
	movslq	%eax,%r12
	movq	%r12, %rdi
	call	malloc
	.loc 1 164 0
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	.loc 1 163 0
	movq	%rax, 96(%rsp)
	.loc 1 164 0
	call	memcpy
	.loc 1 166 0
	cmpl	$0, %r14d
	jl	.L1691
	.loc 1 169 0
	movq	%r13, %rdx
	leaq	(%r12,%rbx), %rsi
	movq	%rbx, %rdi
	subq	%rbx, %rdx
.L1620:
	call	memmove
	.loc 1 171 0
	imull	116(%rsp), %r15d
	movq	96(%rsp), %rsi
	movq	%r13, %rdi
	movslq	%r15d,%rdx
	call	memcpy
	.loc 1 173 0
	movq	96(%rsp), %rdi
	call	free
	jmp	.L1534
.L1691:
	.loc 1 167 0
	subq	%r13, %rbx
	leaq	(%r12,%r13), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	jmp	.L1620
.LBE1346:
.LBE1345:
.LBE1344:
.LBE1343:
.LBE1340:
.LBE1339:
.LBE1107:
.LBE1106:
.LFE168:
	.size	try_commit, .-try_commit
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"Error writing to qcow backend\n"
	.section	.rodata.str1.1
.LC57:
	.string	"Warning: non-ASCII filename\n"
	.section	.rodata.str1.8
	.align 8
.LC56:
	.string	"Tried to write to write-protected file %s\n"
	.align 8
.LC58:
	.string	"Warning: tried to write to write-protected file\n"
	.text
	.p2align 4,,15
	.type	vvfat_write, @function
vvfat_write:
.LFB169:
	.loc 1 2641 0
	pushq	%r15
.LCFI95:
	pushq	%r14
.LCFI96:
	pushq	%r13
.LCFI97:
	pushq	%r12
.LCFI98:
	movq	%rsi, %r12
	pushq	%rbp
.LCFI99:
	pushq	%rbx
.LCFI100:
	subq	$1112, %rsp
.LCFI101:
	.loc 1 2641 0
	movq	%rdx, 56(%rsp)
	movl	%ecx, 52(%rsp)
	.loc 1 2642 0
	movq	56(%rdi), %rbx
.LBB1347:
.LBB1348:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbx)
	je	.L1693
	.loc 1 1086 0
	movl	32892(%rbx), %edi
	.loc 1 1085 0
	movq	$0, 32896(%rbx)
	.loc 1 1086 0
	testl	%edi, %edi
	jne	.L1770
.L1693:
.LBE1348:
.LBE1347:
	.loc 1 2655 0
	mov	8(%rbx), %eax
.LBB1349:
.LBB1350:
	.loc 1 1091 0
	movl	$-1, 32920(%rbx)
.LBE1350:
.LBE1349:
	.loc 1 2656 0
	movl	$-1, %edx
	.loc 1 2655 0
	cmpq	%r12, %rax
	jg	.L1692
.LBB1351:
.LBB1352:
	.loc 1 820 0
	movl	32876(%rbx), %r10d
	movl	32860(%rbx), %r11d
	movq	%r12, %rax
.LBE1352:
.LBE1351:
.LBB1353:
	.loc 1 819 0
	movslq	52(%rsp),%r15
.LBE1353:
.LBB1354:
.LBB1355:
	.loc 1 820 0
	mov	%r10d, %ecx
	mov	%r11d, %edi
	subq	%rcx, %rax
	cqto
	idivq	%rdi
.LBE1355:
.LBE1354:
	.loc 1 819 0
	movl	%eax, %r9d
.LBB1356:
	leaq	-1(%r15,%r12), %rax
.LBB1357:
	.loc 1 820 0
	subq	%rcx, %rax
	cqto
	idivq	%rdi
.LBE1357:
.LBE1356:
	.loc 1 819 0
	cmpl	%eax, %r9d
	ja	.L1756
	leaq	32808(%rbx), %rcx
	leaq	32832(%rbx), %rbp
	movq	%rcx, 8(%rsp)
.L1746:
.LBB1358:
.LBB1359:
.LBB1360:
.LBB1361:
	.loc 1 1098 0
	movl	32844(%rbx), %esi
	xorl	%edi, %edi
	movl	%esi, %r13d
	jmp	.L1701
	.p2align 4,,7
.L1774:
.LBB1362:
.LBB1363:
	.loc 1 1106 0
	cmpl	%ecx, %esi
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	jne	.L1771
	.loc 1 1107 0
	cmpl	%ecx, %esi
	je	.L1761
	.loc 1 1109 0
	movl	%ecx, %esi
	.loc 1 1115 0
	cmpl	%esi, %edi
	jg	.L1772
.L1701:
	.loc 1 1102 0
	leal	(%rdi,%rsi), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	leal	(%rdx,%rax), %ecx
	sarl	%ecx
.LBB1364:
.LBB1365:
	.loc 1 97 0
	cmpl	%ecx, 12(%rbp)
	jbe	.L1769
	movl	16(%rbp), %eax
	movq	32832(%rbx), %r8
	imull	%ecx, %eax
	leaq	(%r8,%rax), %rax
.LBE1365:
.LBE1364:
	.loc 1 1104 0
	movl	(%rax), %edx
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jae	.L1773
	.loc 1 1105 0
	cmpl	%r9d, %edx
	jae	.L1774
	.loc 1 1111 0
	cmpl	%ecx, %edi
	je	.L1775
	.loc 1 1113 0
	movl	%ecx, %edi
	.loc 1 1115 0
	cmpl	%esi, %edi
	.p2align 4,,3
	jle	.L1701
.L1772:
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1115, %edx
	movl	$.LC3, %esi
	movl	$.LC13, %edi
.LBE1363:
.LBE1362:
.LBE1361:
.LBE1360:
.LBE1359:
.LBB1366:
.LBB1367:
.LBB1368:
	.loc 1 97 0
	call	__assert_fail
.L1775:
.LBE1368:
.LBE1367:
.LBE1366:
.LBB1369:
.LBB1370:
.LBB1371:
.LBB1372:
.LBB1373:
	.loc 1 1111 0
	cmpl	%r9d, %eax
	movl	%edi, %edx
	ja	.L1712
	movl	%esi, %edx
.L1712:
.LBE1373:
.LBE1372:
.LBE1371:
	.loc 1 1128 0
	cmpl	%r13d, %edx
	jb	.L1719
.L1728:
.LBE1370:
.LBE1369:
	.loc 1 2705 0
	incl	%r9d
.L1698:
.LBE1358:
.LBB1374:
	.loc 1 819 0
	leaq	-1(%r15,%r12), %rax
.LBB1375:
	.loc 1 820 0
	mov	%r10d, %edx
	subq	%rdx, %rax
	mov	%r11d, %edx
	movq	%rdx, %rcx
	cqto
	idivq	%rcx
.LBE1375:
.LBE1374:
	.loc 1 819 0
	cmpl	%eax, %r9d
	jbe	.L1746
.L1756:
	.loc 1 2712 0
	movq	32944(%rbx), %rdi
	movl	52(%rsp), %ecx
	movq	%r12, %rsi
	movq	56(%rsp), %rdx
	movq	48(%rdi), %rax
	call	*40(%rax)
	.loc 1 2713 0
	testl	%eax, %eax
	.loc 1 2712 0
	movl	%eax, %ebp
	.loc 1 2713 0
	js	.L1776
.LBB1376:
.LBB1377:
	.loc 1 820 0
	movl	32876(%rbx), %r10d
	movl	32860(%rbx), %r11d
	movq	%r12, %rax
.LBE1377:
.LBE1376:
.LBB1378:
	.loc 1 819 0
	leaq	-1(%r15,%r12), %rsi
.LBE1378:
.LBB1379:
.LBB1380:
	.loc 1 820 0
	mov	%r10d, %ecx
	mov	%r11d, %edi
	subq	%rcx, %rax
	cqto
	idivq	%rdi
.LBE1380:
.LBE1379:
	.loc 1 819 0
	movl	%eax, %r9d
.LBB1381:
.LBB1382:
	.loc 1 820 0
	movq	%rsi, %rax
	subq	%rcx, %rax
	cqto
	idivq	%rdi
.LBE1382:
.LBE1381:
	.loc 1 819 0
	cmpl	%eax, %r9d
	jbe	.L1777
	.loc 1 2725 0
	movq	%rbx, %rdi
	call	try_commit
	.loc 1 2728 0
	xorl	%edx, %edx
.L1692:
	.loc 1 2729 0
	addq	$1112, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1769:
.LBB1383:
.LBB1384:
.LBB1385:
.LBB1386:
	.loc 1 97 0
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L1773:
.LBE1386:
.LBE1385:
.LBE1384:
.LBB1387:
.LBB1388:
.LBB1389:
.LBB1390:
.LBB1391:
	.loc 1 1104 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1104, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE1391:
.LBE1390:
.LBE1389:
.LBE1388:
.LBE1387:
.LBB1392:
.LBB1393:
.LBB1394:
	.loc 1 97 0
	call	__assert_fail
.L1770:
.LBE1394:
.LBE1393:
.LBE1392:
.LBE1383:
.LBB1395:
.LBB1396:
	.loc 1 1087 0
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbx)
	jmp	.L1693
.L1777:
	movq	%rsi, %rcx
.L1754:
.LBE1396:
.LBE1395:
	.loc 1 2720 0
	testl	%r9d, %r9d
	js	.L1751
	.loc 1 2721 0
	movq	32960(%rbx), %rax
	movslq	%r9d,%rdx
	orb	$4, (%rax,%rdx)
	movl	32876(%rbx), %r10d
	movl	32860(%rbx), %r11d
.L1751:
.LBB1397:
.LBB1398:
	.loc 1 820 0
	mov	%r10d, %eax
	movq	%rcx, %rdx
	mov	%r11d, %edi
	subq	%rax, %rdx
.LBE1398:
.LBE1397:
	.loc 1 2718 0
	incl	%r9d
.LBB1399:
.LBB1400:
	.loc 1 820 0
	movq	%rdx, %rax
	cqto
	idivq	%rdi
.LBE1400:
.LBE1399:
	.loc 1 819 0
	cmpl	%eax, %r9d
	jbe	.L1754
	.loc 1 2725 0
	movq	%rbx, %rdi
	call	try_commit
	.loc 1 2728 0
	xorl	%edx, %edx
	jmp	.L1692
.L1719:
.LBB1401:
.LBB1402:
.LBB1403:
.LBB1404:
.LBB1405:
	.loc 1 97 0
	cmpl	%edx, 12(%rbp)
	.p2align 4,,2
	jbe	.L1769
	movl	16(%rbp), %eax
	imull	%edx, %eax
	leaq	(%r8,%rax), %rax
.LBE1405:
.LBE1404:
	.loc 1 1131 0
	cmpl	%r9d, (%rax)
	ja	.L1728
	.loc 1 1133 0
	cmpl	%r9d, 4(%rax)
	jbe	.L1778
.LBE1403:
.LBE1402:
	.loc 1 2661 0
	testq	%rax, %rax
.LBB1406:
.LBB1407:
	.loc 1 1133 0
	movq	%rax, 40(%rsp)
.LBE1407:
.LBE1406:
	.loc 1 2661 0
	je	.L1728
	.loc 1 2662 0
	movl	36(%rax), %r13d
	testl	%r13d, %r13d
	jne	.L1763
	.loc 1 2668 0
	testb	$4, 32(%rax)
	jne	.L1779
.L1730:
	.loc 1 2703 0
	movq	40(%rsp), %rdx
	movl	4(%rdx), %r9d
	jmp	.L1698
.L1761:
.LBB1408:
.LBB1409:
.LBB1410:
.LBB1411:
.LBB1412:
	.loc 1 1107 0
	movl	%edi, %edx
	.p2align 4,,2
	jmp	.L1712
.L1771:
	.loc 1 1106 0
	movl	$__PRETTY_FUNCTION__.1, %ecx
	movl	$1106, %edx
	movl	$.LC3, %esi
	movl	$.LC12, %edi
.LBE1412:
.LBE1411:
.LBE1410:
.LBE1409:
.LBE1408:
.LBB1413:
.LBB1414:
.LBB1415:
	.loc 1 97 0
	call	__assert_fail
.L1779:
.LBE1415:
.LBE1414:
.LBB1416:
.LBB1417:
	.loc 1 825 0
	movl	%r11d, %eax
.LBE1417:
.LBE1416:
	.loc 1 2675 0
	leaq	64(%rsp), %rdi
.LBB1418:
.LBB1419:
	.loc 1 825 0
	imull	%r9d, %eax
.LBE1419:
.LBE1418:
	.loc 1 824 0
	leal	(%r10,%rax), %r13d
	.loc 1 2670 0
	leal	(%r11,%r13), %r14d
	.loc 1 2675 0
	call	lfn_init
	.loc 1 2677 0
	movslq	%r13d,%rsi
	cmpq	%r12, %rsi
	jge	.L1732
	.loc 1 2678 0
	movl	%r12d, %r13d
	movslq	%r12d,%rsi
.L1732:
	.loc 1 2680 0
	movl	52(%rsp), %edx
	.loc 1 2679 0
	leaq	(%r15,%r12), %rax
	movslq	%r14d,%rcx
	.loc 1 2681 0
	movl	32860(%rbx), %r11d
	.loc 1 2680 0
	addl	%r12d, %edx
	cmpq	%rax, %rcx
	.loc 1 2681 0
	movq	40(%rsp), %rcx
	.loc 1 2680 0
	cmovle	%r14d, %edx
	.loc 1 2683 0
	subq	%r12, %rsi
	salq	$9, %rsi
	addq	56(%rsp), %rsi
	.loc 1 2685 0
	subl	%r13d, %edx
	.loc 1 2681 0
	movl	(%rcx), %eax
	movl	%r13d, %ecx
	.loc 1 2685 0
	sall	$4, %edx
	.loc 1 2681 0
	imull	%r11d, %eax
	subl	%eax, %ecx
	movq	40(%rsp), %rax
	sall	$4, %ecx
	movl	%ecx, 32(%rsp)
	movl	8(%rax), %eax
	.loc 1 2683 0
	movq	%rsi, 24(%rsp)
	.loc 1 2685 0
	movl	$0, 36(%rsp)
	.loc 1 2681 0
	addl	%eax, %ecx
	.loc 1 2685 0
	cmpl	$0, %edx
	.loc 1 2681 0
	movl	%ecx, 32(%rsp)
	.loc 1 2685 0
	jle	.L1760
	movl	%edx, 20(%rsp)
.L1744:
	.loc 1 2687 0
	movslq	36(%rsp),%r13
	movq	24(%rsp), %rdx
	leaq	64(%rsp), %rdi
	salq	$5, %r13
	leaq	(%r13,%rdx), %r14
	movq	%r14, %rsi
	call	parse_long_name
	testl	%eax, %eax
	js	.L1764
	.loc 1 2692 0
	movq	%r14, %rdi
	call	is_short_name
	testb	%al, %al
	.p2align 4,,2
	je	.L1736
	movq	24(%rsp), %rcx
	testb	$1, 11(%r13,%rcx)
	je	.L1736
.LBB1420:
.LBB1421:
	.loc 1 97 0
	movq	8(%rsp), %rdx
.LBE1421:
	.loc 1 95 0
	movl	32(%rsp), %eax
	addl	36(%rsp), %eax
.LBB1422:
	.loc 1 97 0
	cmpl	%eax, 12(%rdx)
	jbe	.L1769
	movq	8(%rsp), %rcx
.LBE1422:
.LBE1420:
	.loc 1 95 0
	movq	%r14, %rsi
	cld
.LBB1423:
.LBB1424:
	.loc 1 97 0
	movl	16(%rcx), %edi
.LBE1424:
.LBE1423:
	.loc 1 95 0
	movl	$32, %ecx
.LBB1425:
.LBB1426:
	.loc 1 97 0
	imull	%eax, %edi
	addq	32808(%rbx), %rdi
.LBE1426:
.LBE1425:
	.loc 1 95 0
	repz
	cmpsb
	jne	.L1765
.L1736:
	.loc 1 2685 0
	incl	36(%rsp)
	movl	36(%rsp), %eax
	cmpl	%eax, 20(%rsp)
	jg	.L1744
	movl	32876(%rbx), %r10d
	movl	32860(%rbx), %r11d
	jmp	.L1730
.L1776:
.LBE1413:
.LBE1401:
	.loc 1 2714 0
	movq	stderr(%rip), %rcx
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC59, %edi
	call	fwrite
	.loc 1 2715 0
	movl	%ebp, %edx
	jmp	.L1692
.L1764:
.LBB1427:
.LBB1428:
	.loc 1 2688 0
	movq	stderr(%rip), %rcx
	movl	$28, %edx
	movl	$1, %esi
	movl	$.LC57, %edi
	.loc 1 2697 0
	call	fwrite
.L1767:
	.loc 1 2698 0
	movl	$-1, %edx
	jmp	.L1692
.L1760:
	movl	32876(%rbx), %r10d
	jmp	.L1730
.L1778:
.LBE1428:
.LBB1429:
.LBB1430:
	.loc 1 1133 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$1133, %edx
	movl	$.LC3, %esi
	movl	$.LC14, %edi
.LBE1430:
.LBE1429:
.LBB1431:
.LBB1432:
.LBB1433:
	.loc 1 97 0
	call	__assert_fail
.L1763:
.LBE1433:
.LBE1432:
.LBE1431:
	.loc 1 2663 0
	movq	40(%rsp), %rax
	movq	stderr(%rip), %rdi
	movl	$.LC56, %esi
	movq	24(%rax), %rdx
	xorl	%eax, %eax
	call	fprintf
.LBB1434:
	.loc 1 2698 0
	movl	$-1, %edx
	jmp	.L1692
.L1765:
	.loc 1 2697 0
	movq	stderr(%rip), %rcx
	movl	$48, %edx
	movl	$1, %esi
	movl	$.LC58, %edi
	call	fwrite
	jmp	.L1767
.LBE1434:
.LBE1427:
.LFE169:
	.size	vvfat_write, .-vvfat_write
	.p2align 4,,15
	.type	vvfat_is_allocated, @function
vvfat_is_allocated:
.LFB170:
	.loc 1 2733 0
	.loc 1 2734 0
	movq	56(%rdi), %rax
	.loc 1 2735 0
	movl	32880(%rax), %edi
	subl	%esi, %edi
	.loc 1 2736 0
	cmpl	%edx, %edi
	jle	.L1781
	.loc 1 2737 0
	movl	%edx, (%rcx)
	.loc 1 2740 0
	movl	$1, %eax
.L1780:
	.loc 1 2741 0
	rep ; ret
	.p2align 4,,7
.L1781:
	.loc 1 2739 0
	xorl	%eax, %eax
	.loc 1 2738 0
	testl	%edi, %edi
	movl	%edi, (%rcx)
	js	.L1780
	.loc 1 2740 0
	movl	$1, %eax
	jmp	.L1780
.LFE170:
	.size	vvfat_is_allocated, .-vvfat_is_allocated
	.p2align 4,,15
	.type	write_target_commit, @function
write_target_commit:
.LFB171:
	.loc 1 2744 0
	.loc 1 2745 0
	movq	56(%rdi), %rdi
	.loc 1 2746 0
	jmp	try_commit
.LFE171:
	.size	write_target_commit, .-write_target_commit
	.p2align 4,,15
	.type	write_target_close, @function
write_target_close:
.LFB172:
	.loc 1 2749 0
	pushq	%rbx
.LCFI102:
	.loc 1 2750 0
	movq	56(%rdi), %rbx
	.loc 1 2751 0
	movq	32944(%rbx), %rdi
	call	bdrv_delete
	.loc 1 2752 0
	movq	32936(%rbx), %rdi
	popq	%rbx
	jmp	free
.LFE172:
	.size	write_target_close, .-write_target_close
	.section	.rodata.str1.1
.LC60:
	.string	"fat:"
.LC61:
	.string	""
	.text
	.p2align 4,,15
	.type	enable_write_target, @function
enable_write_target:
.LFB173:
	.loc 1 2763 0
	pushq	%rbp
.LCFI103:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI104:
	subq	$8, %rsp
.LCFI105:
.LBB1435:
.LBB1436:
	.loc 1 820 0
	mov	32876(%rdi), %eax
.LBE1436:
	.loc 1 819 0
	mov	32880(%rdi), %ecx
.LBB1437:
	.loc 1 820 0
	mov	32860(%rdi), %esi
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%rsi
.LBE1437:
.LBE1435:
	.loc 1 2765 0
	movl	$1, %esi
	movslq	%eax,%rdi
	call	calloc
	movq	%rax, 32960(%rbp)
.LBB1438:
	.loc 1 80 0
	leaq	32968(%rbp), %rax
.LBE1438:
	.loc 1 2769 0
	movl	$1024, %edi
.LBB1439:
.LBB1440:
	.loc 1 81 0
	movq	$0, 32968(%rbp)
	.loc 1 82 0
	movl	$0, 8(%rax)
	.loc 1 83 0
	movl	$0, 12(%rax)
	.loc 1 84 0
	movl	$24, 16(%rax)
.LBE1440:
.LBE1439:
	.loc 1 2769 0
	call	malloc
	.loc 1 2770 0
	movl	$1024, %esi
	.loc 1 2769 0
	movq	%rax, %rdi
	movq	%rax, 32936(%rbp)
	.loc 1 2770 0
	call	get_tmp_filename
	.loc 1 2771 0
	mov	32880(%rbp), %edx
	movq	32936(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	$.LC60, %ecx
	movl	$bdrv_qcow, %edi
	call	bdrv_create
	testl	%eax, %eax
	.loc 1 2773 0
	movl	$-1, %edx
	.loc 1 2771 0
	js	.L1786
	.loc 1 2774 0
	movl	$.LC61, %edi
	call	bdrv_new
	.loc 1 2775 0
	testq	%rax, %rax
	.loc 1 2774 0
	movq	%rax, 32944(%rbp)
	.loc 1 2775 0
	je	.L1791
	movq	32936(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	bdrv_open
	testl	%eax, %eax
	js	.L1791
	.loc 1 2779 0
	movq	32936(%rbp), %rdi
	call	unlink
	.loc 1 2782 0
	movq	(%rbp), %rbx
	movl	$1, %esi
	movl	$2752, %edi
	call	calloc
	.loc 1 2786 0
	xorl	%edx, %edx
	.loc 1 2782 0
	movq	%rax, 2640(%rbx)
	.loc 1 2783 0
	movq	(%rbp), %rax
	movq	2640(%rax), %rax
	movq	$vvfat_write_target, 48(%rax)
	.loc 1 2784 0
	movq	(%rbp), %rax
	movq	2640(%rax), %rax
	movq	%rbp, 56(%rax)
.L1786:
	.loc 1 2787 0
	addq	$8, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L1791:
	addq	$8, %rsp
	.loc 1 2776 0
	movl	$-1, %edx
	.loc 1 2787 0
	popq	%rbx
	popq	%rbp
	movl	%edx, %eax
	ret
.LFE173:
	.size	enable_write_target, .-enable_write_target
	.section	.rodata
	.type	__PRETTY_FUNCTION__.16, @object
	.size	__PRETTY_FUNCTION__.16, 11
__PRETTY_FUNCTION__.16:
	.string	"vvfat_open"
	.align 16
	.type	__PRETTY_FUNCTION__.17, @object
	.size	__PRETTY_FUNCTION__.17, 17
__PRETTY_FUNCTION__.17:
	.string	"init_directories"
	.type	__PRETTY_FUNCTION__.18, @object
	.size	__PRETTY_FUNCTION__.18, 15
__PRETTY_FUNCTION__.18:
	.string	"read_directory"
	.section	.rodata.str1.1
.LC62:
	.string	":floppy:"
.LC63:
	.string	":32:"
	.section	.rodata.str1.8
	.align 8
.LC64:
	.string	"Big fat greek warning: FAT32 has not been tested. You are welcome to do so!\n"
	.section	.rodata.str1.1
.LC67:
	.string	":rw:"
.LC70:
	.string	"QEMU VVFAT"
.LC72:
	.string	"%s/%s"
.LC80:
	.string	"FAT12   "
.LC78:
	.string	"FAT16   "
.LC79:
	.string	"FAT32   "
.LC65:
	.string	":16:"
.LC73:
	.string	".*?<>|\":/\\[];,+='"
.LC66:
	.string	":12:"
.LC71:
	.string	"buffer"
.LC74:
	.string	"File %s is larger than 2GB\n"
.LC75:
	.string	"Could not read directory %s\n"
.LC68:
	.string	"i >= 3"
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"mapping->mode == MODE_UNDEFINED"
	.section	.rodata.str1.1
.LC69:
	.string	"s->cluster_buffer"
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"Directory does not fit in FAT%d\n"
	.text
	.p2align 4,,15
	.type	vvfat_open, @function
vvfat_open:
.LFB133:
	.loc 1 995 0
	pushq	%r15
.LCFI106:
	pushq	%r14
.LCFI107:
	pushq	%r13
.LCFI108:
	movq	%rsi, %r13
	.loc 1 1027 0
	movl	$.LC60, %esi
	.loc 1 995 0
	pushq	%r12
.LCFI109:
	pushq	%rbp
.LCFI110:
	pushq	%rbx
.LCFI111:
	subq	$568, %rsp
.LCFI112:
	.loc 1 995 0
	movq	%rdi, 136(%rsp)
	.loc 1 996 0
	movq	56(%rdi), %rax
	.loc 1 997 0
	movl	$0, 124(%rsp)
	.loc 1 996 0
	movq	%rax, 128(%rsp)
	.loc 1 1009 0
	movq	%rdi, (%rax)
	.loc 1 1027 0
	movq	%r13, %rdi
	.loc 1 1011 0
	movl	$16, 32780(%rax)
	.loc 1 1013 0
	movl	$16, 32860(%rax)
	.loc 1 1015 0
	movq	136(%rsp), %rdx
	movl	$1024, 2688(%rdx)
	movl	$16, 2692(%rdx)
	movl	$63, 2696(%rdx)
	.loc 1 1017 0
	movl	$-1, 32920(%rax)
	.loc 1 1019 0
	movl	$64, 8(%rax)
	.loc 1 1021 0
	movl	$1, 8(%rdx)
	.loc 1 1027 0
	xorl	%edx, %edx
	.loc 1 1022 0
	movq	$0, 32928(%rax)
	movq	$0, 32944(%rax)
	.loc 1 1023 0
	movq	$0, 32936(%rax)
	.loc 1 1024 0
	movq	$0, 32952(%rax)
	.loc 1 1025 0
	movl	$1, 33000(%rax)
	.loc 1 1027 0
	call	strstart
	testl	%eax, %eax
	.loc 1 1028 0
	movl	$-1, %edx
	.loc 1 1027 0
	je	.L1792
	.loc 1 1030 0
	movl	$.LC62, %esi
	movq	%r13, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L1794
	.loc 1 1032 0
	movq	128(%rsp), %rcx
	.loc 1 1031 0
	movl	$1, 124(%rsp)
	.loc 1 1032 0
	movl	$12, 32780(%rcx)
	.loc 1 1033 0
	movl	$1, 8(%rcx)
	.loc 1 1034 0
	movl	$2, 32860(%rcx)
	.loc 1 1035 0
	movq	136(%rsp), %rbx
	movl	$80, 2688(%rbx)
	movl	$2, 2692(%rbx)
	movl	$36, 2696(%rbx)
.L1794:
	.loc 1 1038 0
	movq	136(%rsp), %rsi
	movq	128(%rsp), %rdx
	.loc 1 1040 0
	movq	%r13, %rdi
	.loc 1 1038 0
	movl	2692(%rsi), %eax
	imull	2688(%rsi), %eax
	imull	2696(%rsi), %eax
	.loc 1 1040 0
	movl	$.LC63, %esi
	.loc 1 1038 0
	movl	%eax, 32880(%rdx)
	.loc 1 1040 0
	call	strstr
	testq	%rax, %rax
	je	.L1795
	.loc 1 1041 0
	movq	stderr(%rip), %rcx
	movl	$76, %edx
	movl	$1, %esi
	movl	$.LC64, %edi
	call	fwrite
	.loc 1 1042 0
	movq	128(%rsp), %rcx
	movl	$32, 32780(%rcx)
.L1796:
	.loc 1 1050 0
	movl	$.LC67, %esi
	movq	%r13, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L1800
	.loc 1 1051 0
	movq	128(%rsp), %rdi
	call	enable_write_target
	testl	%eax, %eax
	.loc 1 1052 0
	movl	$-1, %edx
	.loc 1 1051 0
	jne	.L1792
	.loc 1 1053 0
	movq	136(%rsp), %rax
	movl	$0, 8(%rax)
.L1800:
	.loc 1 1056 0
	movl	$58, %esi
	movq	%r13, %rdi
	call	strrchr
	subl	%r13d, %eax
	.loc 1 1057 0
	cmpl	$2, %eax
	jle	.L2266
	.loc 1 1058 0
	movslq	%eax,%rbx
	cmpb	$58, -2(%rbx,%r13)
	je	.L2267
.L1804:
	.loc 1 1062 0
	leaq	1(%rbx,%r13), %r13
.L1805:
	.loc 1 1064 0
	movq	136(%rsp), %rdx
.LBB1441:
.LBB1442:
	.loc 1 850 0
	xorl	%esi, %esi
.LBE1442:
.LBE1441:
	.loc 1 1064 0
	movl	2692(%rdx), %eax
	imull	2688(%rdx), %eax
	imull	2696(%rdx), %eax
	cltq
	movq	%rax, (%rdx)
.LBB1443:
.LBB1444:
	.loc 1 850 0
	movq	128(%rsp), %rcx
	movl	$32768, %edx
	addq	$12, %rcx
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)
	call	memset
	.loc 1 852 0
	movq	128(%rsp), %rbx
	movl	32860(%rbx), %edi
	sall	$9, %edi
	movl	%edi, 32856(%rbx)
	.loc 1 853 0
	mov	%edi, %edi
	call	malloc
	.loc 1 854 0
	testq	%rax, %rax
	.loc 1 853 0
	movq	%rax, 32912(%rbx)
	.loc 1 854 0
	je	.L2268
	.loc 1 863 0
	movq	128(%rsp), %rsi
	xorl	%edx, %edx
.LBB1445:
.LBB1446:
.LBB1447:
.LBB1448:
.LBB1449:
.LBB1450:
	.loc 1 105 0
	xorl	%edi, %edi
.LBE1450:
.LBE1449:
.LBE1448:
.LBE1447:
.LBE1446:
.LBE1445:
	.loc 1 863 0
	movl	32860(%rsi), %eax
	sall	$12, %eax
	divl	32780(%rsi)
	.loc 1 864 0
	xorl	%edx, %edx
	.loc 1 863 0
	incl	%eax
	movl	%eax, 120(%rsp)
	.loc 1 864 0
	addl	32880(%rsi), %eax
	divl	120(%rsp)
	movl	%eax, 32864(%rsi)
.LBB1451:
.LBB1452:
	.loc 1 81 0
	movq	128(%rsp), %rax
.LBE1452:
	.loc 1 80 0
	addq	$32832, %rsi
	movq	%rsi, (%rsp)
.LBB1453:
	.loc 1 82 0
	movl	$0, 8(%rsi)
	.loc 1 83 0
	movl	$0, 12(%rsi)
	.loc 1 84 0
	movl	$40, 16(%rsi)
.LBE1453:
.LBE1451:
.LBB1454:
.LBB1455:
.LBB1456:
.LBB1457:
.LBB1458:
.LBB1459:
	.loc 1 105 0
	movl	$1024, %esi
.LBE1459:
.LBE1458:
.LBE1457:
.LBE1456:
.LBE1455:
.LBE1454:
.LBB1460:
.LBB1461:
	.loc 1 81 0
	movq	$0, 32832(%rax)
.LBE1461:
.LBE1460:
.LBB1462:
.LBB1463:
	movq	128(%rsp), %rdx
.LBE1463:
	.loc 1 80 0
	addq	$32808, %rax
	movq	%rax, 8(%rsp)
.LBB1464:
	.loc 1 82 0
	movl	$0, 8(%rax)
	.loc 1 83 0
	movl	$0, 12(%rax)
	.loc 1 84 0
	movl	$32, 16(%rax)
	.loc 1 81 0
	movq	$0, 32808(%rdx)
.LBE1464:
.LBE1462:
.LBB1465:
.LBB1466:
.LBB1467:
.LBB1468:
.LBB1469:
.LBB1470:
	.loc 1 105 0
	call	realloc
	movq	128(%rsp), %rcx
.LBE1470:
.LBE1469:
.LBE1468:
	.loc 1 119 0
	xorl	%edi, %edi
.LBB1471:
.LBB1472:
.LBB1473:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32808(%rcx)
	.loc 1 106 0
	jne	.L2269
.L1815:
.LBE1473:
.LBE1472:
.LBE1471:
.LBE1467:
.LBE1466:
	.loc 1 873 0
	movl	$11, %esi
	xorl	%eax, %eax
	.loc 1 872 0
	movb	$40, 11(%rdi)
	.loc 1 873 0
	movl	$.LC70, %edx
	call	snprintf
.LBE1465:
.LBB1474:
.LBB1475:
	.loc 1 584 0
	movq	128(%rsp), %rsi
	movl	32780(%rsi), %eax
	cmpl	$12, %eax
	je	.L2270
.LBB1476:
	.loc 1 80 0
	movq	128(%rsp), %rbx
	xorl	%ecx, %ecx
.LBB1477:
	.loc 1 81 0
	movq	128(%rsp), %rsi
.LBE1477:
	.loc 1 80 0
	addq	$32784, %rbx
	cmpl	$32, %eax
	sete	%cl
	movq	%rbx, 16(%rsp)
.LBB1478:
	.loc 1 82 0
	movl	$0, 8(%rbx)
.LBE1478:
	.loc 1 80 0
	leal	2(%rcx,%rcx), %ecx
.LBB1479:
	.loc 1 83 0
	movl	$0, 12(%rbx)
.LBE1479:
.LBE1476:
.LBB1480:
	.loc 1 102 0
	xorl	%edx, %edx
.LBE1480:
.LBB1481:
.LBB1482:
	.loc 1 81 0
	movq	$0, 32784(%rsi)
	.loc 1 84 0
	movl	%ecx, 16(%rbx)
.LBE1482:
.LBE1481:
.LBB1483:
	.loc 1 102 0
	movl	32864(%rsi), %eax
	sall	$9, %eax
	divl	32800(%rsi)
	movl	%eax, %ebx
.LBB1484:
	.loc 1 103 0
	imull	%ecx, %eax
	cmpl	$0, %eax
	ja	.L2271
.L1824:
.LBE1484:
.LBE1483:
	.loc 1 593 0
	movq	128(%rsp), %rbx
	xorl	%esi, %esi
	mov	32792(%rbx), %edx
	movq	32784(%rbx), %rdi
	call	memset
	.loc 1 595 0
	movl	32780(%rbx), %eax
	cmpl	$16, %eax
	je	.L1833
	jg	.L1836
	cmpl	$12, %eax
	.p2align 4,,2
	je	.L1832
.L1835:
	.loc 1 599 0
	movq	128(%rsp), %rcx
	movl	$0, 32888(%rcx)
.L1837:
.LBE1475:
.LBE1474:
	.loc 1 879 0
	movq	128(%rsp), %rbx
	movl	8(%rbx), %edx
	movl	32864(%rbx), %eax
.LBB1485:
	.loc 1 819 0
	mov	32880(%rbx), %esi
.LBB1486:
	.loc 1 820 0
	mov	32860(%rbx), %edi
.LBE1486:
.LBE1485:
	.loc 1 879 0
	leal	(%rdx,%rax,2), %eax
	movl	%eax, 32876(%rbx)
.LBB1487:
.LBB1488:
	.loc 1 820 0
	mov	%eax, %eax
	subq	%rax, %rsi
	movq	%rsi, %rax
	cqto
	idivq	%rdi
.LBE1488:
.LBE1487:
	.loc 1 819 0
	movl	%eax, 32884(%rbx)
.LBB1489:
.LBB1490:
	.loc 1 116 0
	movq	(%rsp), %rcx
	movl	12(%rcx), %ebx
.LBB1491:
.LBB1492:
	.loc 1 103 0
	movl	16(%rcx), %edx
	leal	1(%rbx), %r14d
	movl	%r14d, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	ja	.L2272
.L1840:
.LBE1492:
.LBE1491:
	.loc 1 122 0
	leal	1(%rbx), %eax
	movq	(%rsp), %rsi
.LBB1493:
.LBB1494:
	.loc 1 97 0
	cmpl	%ebx, %eax
.LBE1494:
.LBE1493:
	.loc 1 122 0
	movl	%eax, 12(%rsi)
.LBB1495:
.LBB1496:
	.loc 1 97 0
	jbe	.L2254
	movq	(%rsp), %rax
	movl	16(%rax), %r12d
	imull	%ebx, %r12d
.LBE1496:
.LBE1495:
	.loc 1 123 0
	addq	(%rax), %r12
.L1843:
.LBE1490:
.LBE1489:
	.loc 1 887 0
	movq	%r13, %rdi
	.loc 1 115 0
	movq	%r12, %rbp
	.loc 1 883 0
	movl	$0, (%r12)
	.loc 1 884 0
	movl	$0, 8(%r12)
	.loc 1 885 0
	movl	$-1, 16(%r12)
	.loc 1 886 0
	movl	$-1, 12(%r12)
	.loc 1 887 0
	call	__strdup
	movq	%rax, 24(%rbp)
	.loc 1 888 0
	movq	%rax, %rdi
	.loc 1 887 0
	movq	%rax, %rbx
	.loc 1 888 0
	call	strlen
	.loc 1 889 0
	testl	%eax, %eax
	.loc 1 888 0
	movl	%eax, 120(%rsp)
	.loc 1 889 0
	je	.L1847
	decl	%eax
	cmpb	$47, (%rbx,%rax)
	je	.L2273
.L1847:
	.loc 1 891 0
	movl	$4, 32(%r12)
	.loc 1 892 0
	movl	$0, 36(%r12)
	.loc 1 895 0
	xorl	%esi, %esi
	.loc 1 893 0
	movq	128(%rsp), %rdx
	movq	%rbx, 32992(%rdx)
	.loc 1 895 0
	movl	$0, 120(%rsp)
	movl	32844(%rdx), %r14d
	testl	%r14d, %r14d
	je	.L2197
.L2114:
.LBB1497:
	.loc 1 900 0
	xorl	%eax, %eax
	cmpl	$0, 120(%rsp)
.LBB1498:
.LBB1499:
	.loc 1 97 0
	movq	(%rsp), %rcx
	movl	120(%rsp), %ebx
.LBE1499:
.LBE1498:
	.loc 1 900 0
	setne	%al
	movl	%eax, 116(%rsp)
.LBB1500:
.LBB1501:
	.loc 1 97 0
	cmpl	%ebx, 12(%rcx)
	jbe	.L2254
	movq	(%rsp), %rax
	movl	120(%rsp), %edx
	movq	128(%rsp), %rcx
	imull	16(%rax), %edx
	movq	%rdx, 104(%rsp)
	movq	32832(%rcx), %rcx
	addq	%rcx, %rdx
	movq	%rdx, 104(%rsp)
.LBE1501:
.LBE1500:
	.loc 1 903 0
	movl	32(%rdx), %eax
	.loc 1 95 0
	movq	%rdx, %rbp
	.loc 1 903 0
	testb	$4, %al
	je	.L1854
	.loc 1 904 0
	movl	%esi, (%rdx)
.LBB1502:
.LBB1503:
.LBB1504:
.LBB1505:
	.loc 1 97 0
	movq	(%rsp), %rbx
	movl	12(%rbx), %esi
	cmpl	120(%rsp), %esi
	jbe	.L2254
	movq	(%rsp), %rax
	movq	128(%rsp), %rbx
	movl	16(%rax), %ecx
	movl	120(%rsp), %eax
	movq	32832(%rbx), %rdx
	imull	%ecx, %eax
	leaq	(%rdx,%rax), %rbx
.LBE1505:
.LBE1504:
	.loc 1 698 0
	movq	24(%rbx), %rax
	movq	%rax, 96(%rsp)
	.loc 1 699 0
	movl	(%rbx), %eax
	movl	%eax, 92(%rsp)
	.loc 1 700 0
	movl	16(%rbx), %eax
	.loc 1 701 0
	testl	%eax, %eax
	js	.L1864
.LBB1506:
.LBB1507:
	.loc 1 97 0
	cmpl	%eax, %esi
	jbe	.L2254
	imull	%ecx, %eax
.LBE1507:
.LBE1506:
	.loc 1 703 0
	addq	%rdx, %rax
	je	.L1864
	movl	(%rax), %eax
	movl	%eax, 88(%rsp)
.L1865:
	.loc 1 705 0
	movq	96(%rsp), %rdi
	call	opendir
	movq	%rax, 80(%rsp)
	.loc 1 709 0
	testb	$4, 32(%rbx)
	je	.L2274
	.loc 1 711 0
	cmpq	$0, 80(%rsp)
	je	.L2275
	.loc 1 716 0
	movl	92(%rsp), %r13d
	movl	$0, 76(%rsp)
	testl	%r13d, %r13d
	je	.L1871
	movq	128(%rsp), %rdx
	movl	32820(%rdx), %edx
	movl	%edx, 76(%rsp)
.L1871:
	movl	76(%rsp), %ecx
	movl	%ecx, 20(%rbx)
.L2265:
	.loc 1 784 0
	movq	80(%rsp), %rdi
	call	readdir64
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L2276
.LBB1508:
	.loc 1 721 0
	movq	96(%rsp), %rdi
	leaq	19(%rbp), %r15
	call	strlen
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	strlen
.LBB1509:
.LBB1510:
	.loc 1 725 0
	movzbl	19(%rbp), %edx
.LBE1510:
.LBE1509:
	.loc 1 721 0
	leal	(%rbx,%rax), %eax
	leal	2(%rax), %ecx
.LBB1511:
.LBB1512:
	.loc 1 725 0
	movl	%edx, %eax
	subl	$46, %eax
	jne	.L1876
	movzbl	1(%r15), %eax
.L1876:
.LBE1512:
.LBE1511:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 60(%rsp)
.LBB1513:
.LBB1514:
	.loc 1 726 0
	movl	%edx, %eax
	subl	$46, %eax
	jne	.L1881
	movzbl	1(%r15), %eax
	subl	$46, %eax
	jne	.L1881
	movzbl	2(%r15), %eax
.L1881:
.LBE1514:
.LBE1513:
	.loc 1 728 0
	movl	92(%rsp), %r12d
	.loc 1 726 0
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 728 0
	testl	%r12d, %r12d
	.loc 1 726 0
	movl	%eax, 56(%rsp)
	.loc 1 728 0
	jne	.L1884
	orl	60(%rsp), %eax
	jne	.L2265
.L1884:
	.loc 1 731 0
	mov	%ecx, %ebx
	movq	%rbx, %rdi
	call	malloc
	.loc 1 732 0
	testq	%rax, %rax
	.loc 1 731 0
	movq	%rax, 64(%rsp)
	.loc 1 732 0
	je	.L2277
	.loc 1 733 0
	movq	96(%rsp), %rcx
	movq	64(%rsp), %rdi
	movq	%r15, %r8
	movl	$.LC72, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	snprintf
.LBB1515:
.LBB1516:
	.file 3 "/usr/include/sys/stat.h"
	.loc 3 455 0
	movq	64(%rsp), %rsi
	leaq	416(%rsp), %rdx
	movl	$1, %edi
	call	__xstat64
.LBE1516:
.LBE1515:
	.loc 3 454 0
	testl	%eax, %eax
	js	.L2278
.LBB1517:
	.loc 1 608 0
	movl	60(%rsp), %ebx
.LBB1518:
	.loc 1 609 0
	movq	128(%rsp), %rsi
.LBE1518:
	.loc 1 608 0
	orl	56(%rsp), %ebx
.LBB1519:
	.loc 1 609 0
	movl	32820(%rsi), %esi
.LBE1519:
	.loc 1 608 0
	setne	%al
.LBB1520:
	.loc 1 613 0
	testb	$1, %al
	.loc 1 609 0
	movl	%esi, 52(%rsp)
	.loc 1 613 0
	je	.L1889
.LBB1521:
.LBB1522:
	.loc 1 116 0
	movq	8(%rsp), %rax
.LBB1523:
.LBB1524:
	.loc 1 103 0
	movq	8(%rsp), %rcx
.LBE1524:
.LBE1523:
	.loc 1 116 0
	movl	12(%rax), %ebp
.LBB1525:
.LBB1526:
	.loc 1 103 0
	movl	16(%rax), %edx
	leal	1(%rbp), %r13d
	movl	%r13d, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	ja	.L2279
.L1891:
.LBE1526:
.LBE1525:
	.loc 1 122 0
	leal	1(%rbp), %eax
	movq	8(%rsp), %rdx
.LBB1527:
.LBB1528:
	.loc 1 97 0
	cmpl	%ebp, %eax
.LBE1528:
.LBE1527:
	.loc 1 122 0
	movl	%eax, 12(%rdx)
.LBB1529:
.LBB1530:
	.loc 1 97 0
	jbe	.L2254
	movq	8(%rsp), %rcx
	movl	16(%rcx), %ebx
	imull	%ebp, %ebx
.LBE1530:
.LBE1529:
	.loc 1 123 0
	addq	(%rcx), %rbx
.L1894:
.LBE1522:
.LBE1521:
	.loc 1 615 0
	movabsq	$2314885530818453536, %rbp
	.loc 1 616 0
	movq	%r15, %rdi
	.loc 1 615 0
	movw	$8224, 8(%rbx)
	movq	%rbp, (%rbx)
	movb	$32, 10(%rbx)
	.loc 1 616 0
	call	strlen
	movq	%r15, %rsi
	movq	%rax, %rdx
	movq	%rbx, %rdi
	call	memcpy
.L1898:
.LBE1520:
.LBE1517:
	.loc 1 743 0
	movl	440(%rsp), %edx
	movl	$16, %eax
	.loc 1 744 0
	movb	$0, 13(%rbx)
	movb	$0, 12(%rbx)
	.loc 1 745 0
	movl	$1, %esi
	.loc 1 743 0
	andl	$61440, %edx
	cmpl	$16384, %edx
	movl	$32, %edx
	cmovne	%edx, %eax
	movb	%al, 11(%rbx)
	.loc 1 745 0
	movq	520(%rsp), %rdi
	call	fat_datetime
	movw	%ax, 14(%rbx)
	.loc 1 746 0
	movq	520(%rsp), %rdi
	xorl	%esi, %esi
	call	fat_datetime
	movw	%ax, 16(%rbx)
	.loc 1 747 0
	movq	488(%rsp), %rdi
	xorl	%esi, %esi
	call	fat_datetime
	.loc 1 748 0
	movw	$0, 20(%rbx)
	.loc 1 747 0
	movw	%ax, 18(%rbx)
	.loc 1 749 0
	movl	$1, %esi
	movq	504(%rsp), %rdi
	call	fat_datetime
	movw	%ax, 22(%rbx)
	.loc 1 750 0
	movq	504(%rsp), %rdi
	xorl	%esi, %esi
	call	fat_datetime
	movw	%ax, 24(%rbx)
	.loc 1 751 0
	movl	56(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L2280
	.loc 1 753 0
	movl	60(%rsp), %edi
	testl	%edi, %edi
	jne	.L2281
	.loc 1 756 0
	movw	$0, 26(%rbx)
.L2012:
	.loc 1 757 0
	movq	464(%rsp), %rcx
	cmpq	$2147483647, %rcx
	jg	.L2224
.LBB1531:
	.loc 2 124 0
	movl	440(%rsp), %edx
	xorl	%eax, %eax
	andl	$61440, %edx
	cmpl	$16384, %edx
	cmovne	%ecx, %eax
.LBE1531:
	movl	%eax, 28(%rbx)
	.loc 1 765 0
	movl	60(%rsp), %ecx
	orl	56(%rsp), %ecx
	jne	.L2265
	movl	440(%rsp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	je	.L2020
	cmpq	$0, 464(%rsp)
	je	.L2265
.L2020:
.LBB1532:
.LBB1533:
	.loc 1 116 0
	movq	(%rsp), %rsi
	movl	12(%rsi), %ebx
.LBB1534:
.LBB1535:
	.loc 1 103 0
	movl	16(%rsi), %edx
	leal	1(%rbx), %r12d
	movl	%r12d, %eax
	imull	%edx, %eax
	cmpl	8(%rsi), %eax
	ja	.L2282
.L2022:
.LBE1535:
.LBE1534:
	.loc 1 122 0
	leal	1(%rbx), %eax
	movq	(%rsp), %rsi
.LBB1536:
.LBB1537:
	.loc 1 97 0
	cmpl	%ebx, %eax
.LBE1537:
.LBE1536:
	.loc 1 122 0
	movl	%eax, 12(%rsi)
.LBB1538:
.LBB1539:
	.loc 1 97 0
	jbe	.L2254
	movq	(%rsp), %rax
	movl	16(%rax), %edx
	imull	%ebx, %edx
.LBE1539:
.LBE1538:
	.loc 1 123 0
	addq	(%rax), %rdx
.L2025:
.LBE1533:
.LBE1532:
	.loc 1 115 0
	movq	128(%rsp), %rcx
	movq	%rdx, 32896(%rcx)
	.loc 1 767 0
	movl	$0, (%rdx)
	.loc 1 768 0
	movq	32896(%rcx), %rdx
	movq	464(%rsp), %rax
	movl	%eax, 4(%rdx)
	.loc 1 773 0
	movl	32820(%rcx), %eax
	movq	32896(%rcx), %rdx
	decl	%eax
	movl	%eax, 8(%rdx)
	.loc 1 774 0
	movq	32896(%rcx), %rax
	movl	$-1, 12(%rax)
	.loc 1 775 0
	movl	440(%rsp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	je	.L2283
	.loc 1 780 0
	movq	128(%rsp), %rsi
	movq	32896(%rsi), %rax
	movl	$0, 32(%rax)
	.loc 1 781 0
	movq	32896(%rsi), %rax
	movl	$0, 16(%rax)
.L2030:
	.loc 1 783 0
	movq	128(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	32896(%rdx), %rax
	movq	%rcx, 24(%rax)
	.loc 1 784 0
	movq	128(%rsp), %rbx
	xorl	%eax, %eax
	testb	$-110, 440(%rsp)
	movq	32896(%rbx), %rdx
	sete	%al
	movl	%eax, 36(%rdx)
	jmp	.L2265
.L2269:
.LBE1508:
.LBE1503:
.LBE1502:
.LBE1497:
.LBB1540:
.LBB1541:
.LBB1542:
.LBB1543:
.LBB1544:
.LBB1545:
	.loc 1 108 0
	movq	8(%rsp), %rbx
.LBE1545:
.LBE1544:
.LBE1543:
.LBB1546:
.LBB1547:
	.loc 1 97 0
	movq	%rax, %rdi
.LBE1547:
.LBE1546:
.LBB1548:
.LBB1549:
.LBB1550:
	.loc 1 108 0
	movl	$1024, 8(%rbx)
.LBE1550:
.LBE1549:
.LBE1548:
	.loc 1 122 0
	movl	$1, 12(%rbx)
	jmp	.L1815
.L2267:
.LBE1542:
.LBE1541:
.LBE1540:
.LBE1444:
.LBE1443:
	.loc 1 1058 0
	call	__ctype_b_loc
	movsbq	-1(%rbx,%r13),%rdx
	movq	(%rax), %rax
	testb	$4, 1(%rax,%rdx,2)
	je	.L1804
	.loc 1 1060 0
	leaq	-1(%rbx,%r13), %r13
	jmp	.L1805
	.p2align 4,,7
.L1889:
.LBB1551:
.LBB1552:
.LBB1553:
.LBB1554:
.LBB1555:
.LBB1556:
.LBB1557:
.LBB1558:
.LBB1559:
.LBB1560:
.LBB1561:
.LBB1562:
	.loc 1 419 0
	xorl	%ecx, %ecx
	cmpb	$0, 19(%rbp)
	je	.L1900
	xorl	%edx, %edx
.L1902:
	.loc 1 420 0
	movzbl	(%rdx,%r15), %edx
	leal	(%rcx,%rcx), %eax
	.loc 1 419 0
	incl	%ecx
	cmpl	$128, %ecx
	.loc 1 420 0
	cltq
	.loc 1 421 0
	movb	$0, 145(%rsp,%rax)
	.loc 1 420 0
	movb	%dl, 144(%rsp,%rax)
	.loc 1 419 0
	jg	.L1900
	movslq	%ecx,%rdx
	cmpb	$0, (%rdx,%r15)
	jne	.L1902
.L1900:
	.loc 1 423 0
	leal	(%rcx,%rcx), %edi
	.loc 1 425 0
	leal	2(%rdi), %ecx
	.loc 1 424 0
	movslq	%edi,%rax
	movb	$0, 145(%rsp,%rax)
	movb	$0, 144(%rsp,%rax)
	jmp	.L2245
.L2284:
	.loc 1 426 0
	movb	$-1, 144(%rsp,%rsi)
	.loc 1 425 0
	incl	%ecx
.L2245:
	movslq	%ecx,%rsi
	movl	$26, %ebx
	imulq	$1321528399, %rsi, %rax
	shrq	$32, %rax
	movl	%eax, %r8d
	movl	%ecx, %eax
	cltd
	sarl	$3, %r8d
	subl	%edx, %r8d
	movl	%r8d, %eax
	imull	%ebx, %eax
	cmpl	%eax, %ecx
	jne	.L2284
.LBE1562:
.LBE1561:
	.loc 1 434 0
	leal	25(%rdi), %edx
	.loc 1 437 0
	xorl	%ebp, %ebp
	.loc 1 434 0
	movslq	%edx,%rax
	sarl	$31, %edx
	imulq	$1321528399, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %r14d
	sarl	$3, %r14d
	subl	%edx, %r14d
	jmp	.L2246
.L1912:
.LBB1563:
.LBB1564:
	.loc 1 122 0
	leal	1(%rbx), %eax
	movq	8(%rsp), %rsi
.LBB1565:
.LBB1566:
	.loc 1 97 0
	cmpl	%ebx, %eax
.LBE1566:
.LBE1565:
	.loc 1 122 0
	movl	%eax, 12(%rsi)
.LBB1567:
.LBB1568:
	.loc 1 97 0
	jbe	.L2254
	movq	8(%rsp), %rax
	movl	16(%rax), %ecx
	imull	%ebx, %ecx
.LBE1568:
.LBE1567:
	.loc 1 123 0
	addq	(%rax), %rcx
.L1915:
.LBE1564:
.LBE1563:
	.loc 1 442 0
	movl	%r14d, %eax
	.loc 1 439 0
	movb	$15, 11(%rcx)
	.loc 1 440 0
	movb	$0, 12(%rcx)
	.loc 1 442 0
	subl	%ebp, %eax
	.loc 1 441 0
	movw	$0, 26(%rcx)
	.loc 1 442 0
	movl	%eax, %edx
	orl	$64, %edx
	testl	%ebp, %ebp
	cmove	%edx, %eax
	.loc 1 437 0
	incl	%ebp
	.loc 1 442 0
	movb	%al, (%rcx)
.L2246:
	.loc 1 437 0
	cmpl	%r14d, %ebp
	jge	.L2202
.LBB1569:
.LBB1570:
	.loc 1 116 0
	movq	8(%rsp), %rdx
	movl	12(%rdx), %ebx
.LBB1571:
.LBB1572:
	.loc 1 103 0
	movq	%rdx, %rcx
	movl	16(%rdx), %edx
	leal	1(%rbx), %r13d
	movl	%r13d, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	jbe	.L1912
.LBB1573:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	32(%rbx), %r12d
	imull	%edx, %r12d
	.loc 1 105 0
	movq	32808(%rax), %rdi
	movslq	%r12d,%rsi
	call	realloc
	movq	128(%rsp), %rdx
.LBE1573:
.LBE1572:
.LBE1571:
	.loc 1 119 0
	xorl	%ecx, %ecx
.LBB1574:
.LBB1575:
.LBB1576:
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32808(%rdx)
	.loc 1 106 0
	je	.L1915
	.loc 1 108 0
	movq	8(%rsp), %rcx
	movl	%r12d, 8(%rcx)
	.loc 1 109 0
	movl	%r13d, 12(%rcx)
	jmp	.L1912
.L2202:
.LBE1576:
.LBE1575:
.LBE1574:
.LBE1570:
.LBE1569:
	.loc 1 444 0
	movl	%r14d, %eax
	movl	$26, %r11d
	xorl	%ebp, %ebp
	imull	%r11d, %eax
	cmpl	$0, %eax
	jle	.L2204
	movl	%eax, %r9d
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L1931
.L2285:
.LBB1577:
	.loc 1 446 0
	incl	%ecx
.L1925:
.LBB1578:
	.loc 1 95 0
	movq	%rdi, %rax
	movq	128(%rsp), %rbx
	shrq	$32, %rax
	movl	%eax, %edx
	movl	%ebp, %eax
	sarl	$31, %eax
	sarl	$3, %edx
	subl	%eax, %edx
.LBB1579:
	.loc 1 97 0
	movq	8(%rsp), %rax
.LBE1579:
	.loc 1 95 0
	notl	%edx
	addl	32820(%rbx), %edx
.LBB1580:
	.loc 1 97 0
	cmpl	%edx, 12(%rax)
	jbe	.L2254
	movq	8(%rsp), %rbx
.LBE1580:
.LBE1578:
.LBE1577:
	.loc 1 444 0
	incl	%ebp
.LBB1581:
	.loc 1 450 0
	movslq	%ecx,%rcx
	addq	$1321528399, %rsi
	addq	$1321528399, %rdi
.LBB1582:
.LBB1583:
	.loc 1 97 0
	movl	16(%rbx), %eax
	imull	%edx, %eax
	movq	128(%rsp), %rdx
	addq	32808(%rdx), %rax
.LBE1583:
.LBE1582:
	.loc 1 450 0
	movzbl	144(%rsp,%r8), %edx
.LBE1581:
	.loc 1 444 0
	cmpl	%ebp, %r9d
.LBB1584:
	.loc 1 450 0
	movb	%dl, (%rax,%rcx)
.LBE1584:
	.loc 1 444 0
	jle	.L2204
.L1931:
.LBB1585:
	.loc 1 445 0
	movq	%rsi, %rax
	movl	$26, %r10d
	movslq	%ebp,%r8
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%ebp, %eax
	cltd
	sarl	$3, %ecx
	subl	%edx, %ecx
	movl	%ecx, %eax
	movl	%ebp, %ecx
	imull	%r10d, %eax
	subl	%eax, %ecx
	.loc 1 446 0
	cmpl	$9, %ecx
	jle	.L2285
	.loc 1 447 0
	leal	4(%rcx), %edx
	leal	6(%rcx), %eax
	cmpl	$21, %ecx
	movl	%edx, %ecx
	cmovg	%eax, %ecx
	jmp	.L1925
.L2280:
.LBE1585:
.LBE1560:
.LBE1559:
.LBE1558:
.LBE1557:
	.loc 1 752 0
	movl	88(%rsp), %esi
.L2251:
	.loc 1 754 0
	movq	%rbx, %rdi
	call	set_begin_of_direntry
	jmp	.L2012
.L1854:
.LBE1556:
.LBE1555:
.LBE1554:
	.loc 1 912 0
	testl	%eax, %eax
	jne	.L2286
	.loc 1 913 0
	movq	104(%rsp), %rax
	movl	$1, 32(%rax)
	.loc 1 914 0
	movl	%esi, (%rax)
	.loc 1 915 0
	movq	104(%rsp), %rdx
	movl	4(%rdx), %eax
	testl	%eax, %eax
	je	.L2063
.LBB1586:
.LBB1587:
.LBB1588:
	.loc 1 97 0
	movq	8(%rsp), %rbx
.LBE1588:
	.loc 1 95 0
	movl	8(%rdx), %edx
.LBB1589:
	.loc 1 97 0
	cmpl	%edx, 12(%rbx)
	jbe	.L2254
	movq	8(%rsp), %rcx
	movq	128(%rsp), %rbx
.LBE1589:
.LBE1587:
	.loc 1 919 0
	decl	%eax
.LBB1590:
.LBB1591:
	.loc 1 97 0
	movl	16(%rcx), %edi
	imull	%edx, %edi
.LBE1591:
.LBE1590:
	.loc 1 919 0
	xorl	%edx, %edx
.LBB1592:
.LBB1593:
	.loc 1 97 0
	addq	32808(%rbx), %rdi
.LBE1593:
.LBE1592:
	.loc 1 919 0
	divl	32856(%rbx)
	movq	104(%rsp), %rdx
	leal	1(%rax,%rsi), %eax
	movl	%eax, 4(%rdx)
	.loc 1 920 0
	call	set_begin_of_direntry
.L2060:
.LBE1586:
	.loc 1 927 0
	movl	(%rbp), %eax
	movl	4(%rbp), %esi
	cmpl	%esi, %eax
	jae	.L2287
	.loc 1 930 0
	movl	116(%rsp), %edx
	testl	%edx, %edx
	je	.L2070
	.loc 1 931 0
	movl	%eax, %edi
	leal	-1(%rsi), %eax
	cmpl	%eax, %edi
	jae	.L2223
	movq	128(%rsp), %rbx
	leal	(%rdi,%rdi,2), %r9d
	movl	32780(%rbx), %edx
	jmp	.L2093
.L2074:
.LBB1594:
.LBB1595:
	.loc 1 542 0
	cmpl	$16, %edx
	je	.L2288
.LBB1596:
.LBB1597:
.LBB1598:
	.loc 1 97 0
	movq	16(%rsp), %rbx
.LBE1598:
.LBE1597:
	.loc 1 546 0
	movl	%r9d, %eax
	shrl	%eax
.LBB1599:
.LBB1600:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L2254
	movq	16(%rsp), %rbx
	movl	16(%rbx), %ecx
	imull	%eax, %ecx
	movq	128(%rsp), %rax
	addq	32784(%rax), %rcx
.LBE1600:
.LBE1599:
	.loc 1 548 0
	movl	%edi, %eax
	andl	$1, %eax
	je	.L2090
	decl	%eax
	je	.L2091
.L2073:
.LBE1596:
.LBE1595:
.LBE1594:
	.loc 1 931 0
	leal	-1(%rsi), %eax
	incl	%edi
	addl	$3, %r9d
	cmpl	%eax, %edi
	jae	.L2217
.L2093:
.LBB1601:
.LBB1602:
	.loc 1 539 0
	cmpl	$32, %edx
.LBE1602:
	.loc 1 538 0
	leal	1(%rdi), %r8d
.LBB1603:
	.loc 1 539 0
	jne	.L2074
.LBB1604:
.LBB1605:
.LBB1606:
	.loc 1 97 0
	movq	16(%rsp), %rsi
	cmpl	%edi, 12(%rsi)
	jbe	.L2262
	movq	16(%rsp), %rdx
	movq	128(%rsp), %rcx
	movl	16(%rdx), %eax
	imull	%edi, %eax
	addq	32784(%rcx), %rax
.LBE1606:
.LBE1605:
	.loc 2 124 0
	movl	%r8d, (%rax)
.L2259:
	movl	32780(%rcx), %edx
	movl	4(%rbp), %esi
	jmp	.L2073
.L2295:
.LBE1604:
.LBE1603:
.LBE1601:
.LBB1607:
.LBB1608:
.LBB1609:
.LBB1610:
.LBB1611:
	.loc 1 97 0
	movq	16(%rsp), %rsi
	cmpl	%ecx, 12(%rsi)
	jbe	.L2262
	movq	16(%rsp), %rdx
	movl	16(%rdx), %eax
	imull	%ecx, %eax
	movq	128(%rsp), %rcx
	addq	32784(%rcx), %rax
.LBE1611:
.LBE1610:
	.loc 2 124 0
	movl	%r8d, (%rax)
	movl	4(%rbp), %esi
.L2070:
.LBE1609:
.LBE1608:
.LBE1607:
	.loc 1 939 0
	movq	128(%rsp), %rax
	cmpl	%esi, 32884(%rax)
	jb	.L2226
.LBE1553:
	.loc 1 895 0
	incl	120(%rsp)
	movl	120(%rsp), %edx
	cmpl	%edx, 32844(%rax)
	ja	.L2114
.L2197:
.LBB1612:
.LBB1613:
	.loc 1 97 0
	movq	(%rsp), %rcx
	movl	12(%rcx), %eax
	testl	%eax, %eax
	je	.L2254
	movq	128(%rsp), %rbx
	movq	32832(%rbx), %rax
.LBE1613:
.LBE1612:
	.loc 1 946 0
	movl	32860(%rbx), %edx
.LBB1614:
	.loc 1 538 0
	movl	32888(%rbx), %ecx
.LBE1614:
	.loc 1 946 0
	imull	4(%rax), %edx
	movl	%edx, 32868(%rbx)
	.loc 1 947 0
	movl	4(%rax), %eax
	movl	%eax, 32872(%rbx)
.LBB1615:
.LBB1616:
	.loc 1 539 0
	movl	32780(%rbx), %eax
	cmpl	$32, %eax
	je	.L2289
	.loc 1 542 0
	cmpl	$16, %eax
	je	.L2290
.LBB1617:
.LBB1618:
.LBB1619:
	.loc 1 97 0
	movq	16(%rsp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L2254
	movq	128(%rsp), %rdx
	movq	32784(%rdx), %rax
.LBE1619:
.LBE1618:
	.loc 1 551 0
	movzbl	1(%rax), %edx
	.loc 1 550 0
	movb	%cl, (%rax)
	.loc 1 551 0
	shrl	$8, %ecx
	andl	$15, %ecx
	andl	$-16, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
.L2136:
.LBE1617:
.LBE1616:
.LBE1615:
.LBB1620:
	.loc 1 538 0
	movq	128(%rsp), %rcx
.LBB1621:
	.loc 1 539 0
	movl	32780(%rcx), %eax
.LBE1621:
	.loc 1 538 0
	movl	32888(%rcx), %esi
.LBB1622:
	.loc 1 539 0
	cmpl	$32, %eax
	je	.L2291
.L2137:
	.loc 1 542 0
	cmpl	$16, %eax
	je	.L2292
.LBB1623:
.LBB1624:
.LBB1625:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	cmpl	$1, 12(%rbx)
	jbe	.L2254
	movq	16(%rsp), %rdx
	movq	128(%rsp), %rcx
	mov	16(%rdx), %eax
	addq	32784(%rcx), %rax
.LBE1625:
.LBE1624:
	.loc 1 554 0
	movl	%esi, %ecx
	.loc 1 555 0
	shrl	$4, %esi
	.loc 1 554 0
	sall	$4, %ecx
	movzbl	(%rax), %edx
	.loc 1 555 0
	movb	%sil, 1(%rax)
	.loc 1 554 0
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
.L2155:
.LBE1623:
.LBE1622:
.LBE1620:
	.loc 1 953 0
	movq	128(%rsp), %rbx
	.loc 1 955 0
	movl	8(%rbx), %eax
	.loc 1 953 0
	movq	$0, 32896(%rbx)
	.loc 1 955 0
	sall	$9, %eax
	subl	$512, %eax
	addq	%rbx, %rax
	leaq	12(%rax), %rcx
	.loc 1 956 0
	movb	$-21, 12(%rax)
	.loc 1 959 0
	movabsq	$2314885531710604625, %rax
	.loc 1 957 0
	movb	$62, 1(%rcx)
	.loc 1 958 0
	movb	$-112, 2(%rcx)
	.loc 1 959 0
	movq	%rax, 3(%rcx)
	.loc 2 123 0
	movw	$512, 11(%rcx)
	.loc 1 961 0
	movl	32860(%rbx), %eax
	.loc 2 123 0
	movw	$1, 14(%rcx)
	.loc 1 963 0
	movb	$2, 16(%rcx)
	.loc 1 961 0
	movb	%al, 13(%rcx)
.LBB1626:
	.loc 2 123 0
	movl	32868(%rbx), %eax
	sall	$4, %eax
.LBE1626:
	movw	%ax, 17(%rcx)
	.loc 1 965 0
	movl	32880(%rbx), %edx
	.loc 2 123 0
	xorl	%eax, %eax
	cmpl	$65535, %edx
	cmovbe	%edx, %eax
	.loc 1 966 0
	movl	$-8, %edx
	.loc 2 123 0
	movw	%ax, 19(%rcx)
	.loc 1 966 0
	cmpl	$12, 32780(%rbx)
	je	.L2293
.L2163:
	movb	%dl, 21(%rcx)
	.loc 1 967 0
	movq	128(%rsp), %rsi
	.loc 1 980 0
	movabsq	$5068333127522141521, %r15
	.loc 1 967 0
	movq	32784(%rsi), %rax
	movb	%dl, (%rax)
.LBB1627:
.LBB1628:
	.loc 2 123 0
	movzwl	32864(%rsi), %eax
.LBE1628:
.LBE1627:
.LBB1629:
	.loc 2 124 0
	xorl	%edx, %edx
.LBE1629:
	.loc 2 123 0
	movw	%ax, 22(%rcx)
.LBB1630:
	movq	(%rsi), %rax
.LBB1631:
	movzwl	2696(%rax), %eax
.LBE1631:
.LBE1630:
	movw	%ax, 24(%rcx)
.LBB1632:
	movq	(%rsi), %rax
.LBB1633:
	movzwl	2692(%rax), %eax
.LBE1633:
.LBE1632:
	movw	%ax, 26(%rcx)
.LBB1634:
	.loc 2 124 0
	cmpl	$1, 8(%rsi)
	movl	$63, %eax
	cmove	%edx, %eax
.LBE1634:
	movl	%eax, 28(%rcx)
.LBB1635:
	movl	32880(%rsi), %eax
	cmpl	$65536, %eax
	cmovae	%eax, %edx
.LBE1635:
	.loc 1 975 0
	xorl	%eax, %eax
	.loc 2 124 0
	movl	%edx, 32(%rcx)
	.loc 1 975 0
	cmpl	$12, 32780(%rsi)
	movl	$-128, %edx
	.loc 1 976 0
	movb	$0, 37(%rcx)
	.loc 1 977 0
	movb	$41, 38(%rcx)
	.loc 2 124 0
	movl	$-88204547, 39(%rcx)
	.loc 1 980 0
	movq	%r15, 43(%rcx)
	movw	$21569, 51(%rcx)
	movb	$32, 53(%rcx)
	.loc 1 975 0
	cmovne	%edx, %eax
	.loc 1 981 0
	movl	$.LC80, %edx
	.loc 1 975 0
	movb	%al, 36(%rcx)
	.loc 1 981 0
	movl	32780(%rsi), %eax
	cmpl	$12, %eax
	je	.L2179
	cmpl	$16, %eax
	movl	$.LC78, %edx
	movl	$.LC79, %eax
	cmovne	%rax, %rdx
.L2179:
	movq	(%rdx), %rax
	.loc 1 982 0
	movb	$85, 510(%rcx)
	movb	$-86, 511(%rcx)
	.loc 1 981 0
	movq	%rax, 54(%rcx)
.LBE1552:
.LBE1551:
	.loc 1 1069 0
	movq	128(%rsp), %rbx
	movl	32884(%rbx), %eax
	imull	32860(%rbx), %eax
	addl	32876(%rbx), %eax
	.loc 1 1071 0
	cmpl	$64, 8(%rbx)
	.loc 1 1069 0
	movl	%eax, 32880(%rbx)
	.loc 1 1071 0
	je	.L2294
.L2182:
	.loc 1 1075 0
	movl	124(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L2195
	.loc 1 1076 0
	movq	136(%rsp), %rbx
	movl	$0, 2696(%rbx)
	movl	$0, 2688(%rbx)
	movl	$0, 2692(%rbx)
.L2195:
	.loc 1 1079 0
	xorl	%edx, %edx
.L1792:
	.loc 1 1080 0
	addq	$568, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2281:
.LBB1636:
.LBB1637:
.LBB1638:
.LBB1639:
.LBB1640:
.LBB1641:
	.loc 1 754 0
	movl	92(%rsp), %esi
	jmp	.L2251
.L2279:
.LBB1642:
.LBB1643:
.LBB1644:
.LBB1645:
.LBB1646:
.LBB1647:
.LBB1648:
	.loc 1 105 0
	movq	128(%rsp), %rbx
	.loc 1 104 0
	leal	32(%rbp), %r12d
	imull	%edx, %r12d
	.loc 1 105 0
	movq	32808(%rbx), %rdi
	movslq	%r12d,%rsi
	call	realloc
	movq	%rax, 32808(%rbx)
.LBE1648:
.LBE1647:
.LBE1646:
	.loc 1 119 0
	xorl	%ebx, %ebx
.LBB1649:
.LBB1650:
.LBB1651:
	.loc 1 106 0
	testq	%rax, %rax
	je	.L1894
	.loc 1 108 0
	movq	8(%rsp), %rsi
	movl	%r12d, 8(%rsi)
	.loc 1 109 0
	movl	%r13d, 12(%rsi)
	jmp	.L1891
.L1795:
.LBE1651:
.LBE1650:
.LBE1649:
.LBE1645:
.LBE1644:
.LBE1643:
.LBE1642:
.LBE1641:
.LBE1640:
.LBE1639:
.LBE1638:
.LBE1637:
.LBE1636:
	.loc 1 1043 0
	movl	$.LC65, %esi
	movq	%r13, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L1797
	.loc 1 1044 0
	movq	128(%rsp), %rbx
	movl	$16, 32780(%rbx)
	jmp	.L1796
.L1836:
.LBB1652:
.LBB1653:
.LBB1654:
.LBB1655:
	.loc 1 595 0
	cmpl	$32, %eax
	jne	.L1835
	.loc 1 598 0
	movq	128(%rsp), %rdx
	movl	$268435455, 32888(%rdx)
	jmp	.L1837
.L2272:
.LBE1655:
.LBE1654:
.LBB1656:
.LBB1657:
.LBB1658:
.LBB1659:
.LBB1660:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	32(%rbx), %ebp
.LBE1660:
.LBE1659:
.LBE1658:
	.loc 1 119 0
	xorl	%r12d, %r12d
.LBB1661:
.LBB1662:
.LBB1663:
	.loc 1 104 0
	imull	%edx, %ebp
	.loc 1 105 0
	movq	32832(%rax), %rdi
	movslq	%ebp,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32832(%rdx)
	.loc 1 106 0
	je	.L1843
	.loc 1 108 0
	movq	(%rsp), %rcx
	movl	%ebp, 8(%rcx)
	.loc 1 109 0
	movl	%r14d, 12(%rcx)
	jmp	.L1840
.L1833:
.LBE1663:
.LBE1662:
.LBE1661:
.LBE1657:
.LBE1656:
.LBB1664:
.LBB1665:
	.loc 1 597 0
	movq	128(%rsp), %rax
	movl	$65535, 32888(%rax)
	jmp	.L1837
.L2270:
.LBB1666:
.LBB1667:
	.loc 1 81 0
	movq	128(%rsp), %rax
.LBE1667:
	.loc 1 80 0
	addq	$32784, %rsi
	movq	%rsi, 16(%rsp)
.LBB1668:
	.loc 1 82 0
	movl	$0, 8(%rsi)
	.loc 1 83 0
	movl	$0, 12(%rsi)
	.loc 1 84 0
	movl	$1, 16(%rsi)
.LBE1668:
.LBE1666:
.LBB1669:
	.loc 1 102 0
	movl	32864(%rax), %r15d
.LBE1669:
.LBB1670:
.LBB1671:
	.loc 1 81 0
	movq	$0, 32784(%rax)
.LBE1671:
.LBE1670:
.LBB1672:
	.loc 1 102 0
	imull	$1536, %r15d, %ebx
	shrl	%ebx
.LBB1673:
	.loc 1 103 0
	cmpl	$0, %ebx
.LBB1674:
	.loc 1 104 0
	leal	31(%rbx), %ebp
.LBE1674:
	.loc 1 103 0
	jbe	.L1824
	jmp	.L2257
.L2063:
.LBE1673:
.LBE1672:
.LBE1665:
.LBE1664:
.LBB1675:
	.loc 1 922 0
	movq	104(%rsp), %rcx
	leal	1(%rsi), %eax
	movl	%eax, 4(%rcx)
	.loc 1 923 0
	movl	$0, 116(%rsp)
	jmp	.L2060
.L2282:
.LBB1676:
.LBB1677:
.LBB1678:
.LBB1679:
.LBB1680:
.LBB1681:
.LBB1682:
.LBB1683:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	32(%rbx), %ebp
	imull	%edx, %ebp
	.loc 1 105 0
	movq	32832(%rax), %rdi
	movslq	%ebp,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	movq	%rax, 32832(%rdx)
.LBE1683:
.LBE1682:
.LBE1681:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB1684:
.LBB1685:
.LBB1686:
	.loc 1 106 0
	testq	%rax, %rax
	je	.L2025
	.loc 1 108 0
	movq	(%rsp), %rcx
	movl	%ebp, 8(%rcx)
	.loc 1 109 0
	movl	%r12d, 12(%rcx)
	jmp	.L2022
.L2283:
.LBE1686:
.LBE1685:
.LBE1684:
.LBE1680:
.LBE1679:
	.loc 1 776 0
	movq	32896(%rcx), %rax
	movl	$4, 32(%rax)
	.loc 1 777 0
	movq	32896(%rcx), %rax
	movl	120(%rsp), %ebx
	movl	%ebx, 16(%rax)
	jmp	.L2030
.L2271:
.LBE1678:
.LBE1677:
.LBE1676:
.LBE1675:
.LBB1687:
.LBB1688:
.LBB1689:
.LBB1690:
.LBB1691:
	.loc 1 104 0
	leal	31(%rbx), %ebp
	imull	%ecx, %ebp
.L2257:
	.loc 1 105 0
	xorl	%edi, %edi
	movslq	%ebp,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32784(%rdx)
	.loc 1 106 0
	je	.L1824
	.loc 1 108 0
	movq	16(%rsp), %rcx
	movl	%ebp, 8(%rcx)
	.loc 1 109 0
	movl	%ebx, 12(%rcx)
	jmp	.L1824
.L2223:
	movq	128(%rsp), %rax
	movl	32780(%rax), %edx
.L2217:
.LBE1691:
.LBE1690:
.LBE1689:
.LBE1688:
.LBE1687:
.LBB1692:
.LBB1693:
	.loc 1 538 0
	movq	128(%rsp), %rbx
.LBB1694:
	.loc 1 539 0
	cmpl	$32, %edx
.LBE1694:
	.loc 1 538 0
	leal	-1(%rsi), %ecx
	movl	32888(%rbx), %r8d
.LBB1695:
	.loc 1 539 0
	je	.L2295
	.loc 1 542 0
	cmpl	$16, %edx
	je	.L2296
.LBB1696:
.LBB1697:
.LBB1698:
	.loc 1 97 0
	movq	16(%rsp), %rbx
.LBE1698:
.LBE1697:
	.loc 1 546 0
	leal	(%rcx,%rcx,2), %eax
	shrl	%eax
.LBB1699:
.LBB1700:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L2254
	movq	16(%rsp), %rdx
	movq	128(%rsp), %rbx
	movl	16(%rdx), %edi
	imull	%eax, %edi
.LBE1700:
.LBE1699:
	.loc 1 548 0
	movl	%ecx, %eax
.LBB1701:
.LBB1702:
	.loc 1 97 0
	addq	32784(%rbx), %rdi
.LBE1702:
.LBE1701:
	.loc 1 548 0
	andl	$1, %eax
	je	.L2110
	decl	%eax
	jne	.L2070
	.loc 1 554 0
	movzbl	(%rdi), %eax
	movl	%r8d, %edx
	.loc 1 555 0
	shrl	$4, %r8d
	.loc 1 554 0
	sall	$4, %edx
	.loc 1 555 0
	movb	%r8b, 1(%rdi)
	.loc 1 554 0
	andl	$15, %eax
	orl	%edx, %eax
	movb	%al, (%rdi)
	movl	4(%rbp), %esi
	jmp	.L2070
	.p2align 4,,7
.L2204:
.LBE1696:
.LBE1695:
.LBE1693:
.LBB1703:
.LBB1704:
.LBB1705:
.LBB1706:
.LBB1707:
.LBB1708:
.LBB1709:
.LBB1710:
	.loc 1 95 0
	movq	128(%rsp), %rcx
.LBB1711:
	.loc 1 97 0
	movq	8(%rsp), %rbx
.LBE1711:
	.loc 1 95 0
	movl	32820(%rcx), %eax
	subl	%r14d, %eax
.LBB1712:
	.loc 1 97 0
	cmpl	%eax, 12(%rbx)
	jbe	.L2254
	movq	8(%rsp), %rsi
.LBE1712:
.LBE1710:
.LBE1709:
.LBE1708:
	.loc 1 622 0
	movq	%r15, %rdi
.LBB1713:
.LBB1714:
.LBB1715:
.LBB1716:
	.loc 1 97 0
	imull	16(%rsi), %eax
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rax
	movq	32808(%rax), %rax
	addq	%rax, 40(%rsp)
.LBE1716:
.LBE1715:
.LBE1714:
.LBE1713:
	.loc 1 622 0
	call	strlen
	.loc 1 623 0
	leal	-1(%rax), %ebx
	.loc 1 622 0
	movl	%eax, %r12d
	jmp	.L2258
.L2297:
	.loc 1 623 0
	decl	%ebx
.L2258:
	testl	%ebx, %ebx
	jle	.L1940
	movslq	%ebx,%rax
	cmpb	$46, (%rax,%r15)
	jne	.L2297
	.loc 1 624 0
	testl	%ebx, %ebx
	.p2align 4,,2
	jle	.L1940
	.loc 1 625 0
	cmpl	$8, %ebx
	movl	%ebx, %r12d
	jle	.L1942
	movl	$8, %r12d
.L1942:
.LBB1717:
.LBB1718:
	.loc 1 116 0
	movq	8(%rsp), %rdx
	movl	12(%rdx), %r13d
.LBB1719:
.LBB1720:
	.loc 1 103 0
	movq	%rdx, %rsi
	leal	1(%r13), %ecx
	movl	%ecx, 36(%rsp)
	movl	16(%rdx), %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	cmpl	8(%rsi), %eax
	ja	.L2298
.L1945:
.LBE1720:
.LBE1719:
	.loc 1 122 0
	leal	1(%r13), %eax
	movq	8(%rsp), %rdx
.LBB1721:
.LBB1722:
	.loc 1 97 0
	cmpl	%r13d, %eax
.LBE1722:
.LBE1721:
	.loc 1 122 0
	movl	%eax, 12(%rdx)
.LBB1723:
.LBB1724:
	.loc 1 97 0
	jbe	.L2254
	movq	8(%rsp), %rcx
	movl	16(%rcx), %ebp
	imull	%r13d, %ebp
.LBE1724:
.LBE1723:
	.loc 1 123 0
	addq	(%rcx), %rbp
.L1948:
.LBE1718:
.LBE1717:
	.loc 1 630 0
	movabsq	$2314885530818453536, %r9
	movw	$8224, 8(%rbp)
	movb	$32, 10(%rbp)
	movq	%r9, (%rbp)
	.loc 1 631 0
	movslq	%r12d,%rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	strncpy
	.loc 1 633 0
	testl	%ebx, %ebx
	jle	.L1952
	.loc 1 634 0
	movslq	%ebx,%rax
	xorl	%r12d, %r12d
	cmpb	$0, 1(%rax,%r15)
	je	.L1952
.L2299:
	.loc 1 635 0
	leal	(%rbx,%r12), %edx
	movslq	%r12d,%rax
	.loc 1 634 0
	incl	%r12d
	cmpl	$2, %r12d
	.loc 1 635 0
	movslq	%edx,%rdx
	movzbl	1(%rdx,%r15), %edx
	movb	%dl, 8(%rbp,%rax)
	.loc 1 634 0
	jg	.L1952
	leal	(%rbx,%r12), %eax
	cltq
	cmpb	$0, 1(%rax,%r15)
	jne	.L2299
.L1952:
	.loc 1 638 0
	movl	$10, %r12d
	.p2align 4,,7
.L1971:
	.loc 1 639 0
	cmpl	$10, %r12d
	movslq	%r12d,%rbx
	sete	%dl
	cmpl	$7, %r12d
	sete	%al
	orl	%edx, %eax
	testb	$1, %al
	je	.L1960
	testl	%r12d, %r12d
	jle	.L1960
	cmpb	$32, (%rbp,%rbx)
	jne	.L1960
	.p2align 4,,7
.L2300:
	decl	%r12d
	testl	%r12d, %r12d
	.p2align 4,,3
	jle	.L2220
	movslq	%r12d,%rbx
	cmpb	$32, (%rbp,%rbx)
	je	.L2300
.L1960:
	.loc 1 640 0
	movzbl	(%rbp,%rbx), %r13d
	leal	-33(%r13), %eax
	cmpb	$94, %al
	ja	.L1966
	movzbl	%r13b, %esi
	movl	$.LC73, %edi
	call	strchr
	testq	%rax, %rax
	je	.L1965
.L1966:
	.loc 1 642 0
	movb	$95, (%rbp,%rbx)
.L1959:
	.loc 1 638 0
	decl	%r12d
	jns	.L1971
	.p2align 4,,7
.L2264:
.LBB1725:
.LBB1726:
.LBB1727:
	.loc 1 97 0
	movq	8(%rsp), %rbx
	movl	76(%rsp), %esi
	cmpl	%esi, 12(%rbx)
	jbe	.L2254
.L2304:
	movq	8(%rsp), %rdx
	movl	76(%rsp), %eax
	movq	128(%rsp), %rcx
	imull	16(%rdx), %eax
	movq	32808(%rcx), %r12
.LBE1727:
.LBE1726:
	.loc 1 95 0
	leaq	(%r12,%rax), %rbx
	.loc 1 652 0
	cmpq	%rbp, %rbx
	jae	.L1978
	.p2align 4,,7
.L2301:
	.loc 1 653 0
	movq	%rbx, %rdi
	call	is_long_name
	testb	%al, %al
	jne	.L1979
	cld
	movq	%rbx, %rsi
	movl	$11, %ecx
	movq	%rbp, %rdi
	repz
	cmpsb
	je	.L1978
.L1979:
	.loc 1 652 0
	addq	$32, %rbx
	cmpq	%rbp, %rbx
	jb	.L2301
.L1978:
	.loc 1 655 0
	cmpq	%rbp, %rbx
	je	.L1973
	.loc 1 659 0
	movzbl	7(%rbp), %eax
	cmpb	$32, %al
	je	.L2302
.L1983:
	.loc 1 666 0
	cmpb	$57, %al
	movl	$7, %edx
	je	.L2303
	.loc 1 669 0
	movslq	%edx,%rdx
	movzbl	(%rbp,%rdx), %ecx
	leal	-48(%rcx), %eax
	cmpb	$9, %al
	jbe	.L1993
.L2305:
	.loc 1 670 0
	movb	$48, (%rbp,%rdx)
.LBB1728:
.LBB1729:
	.loc 1 97 0
	movq	8(%rsp), %rbx
	movl	76(%rsp), %esi
	cmpl	%esi, 12(%rbx)
	ja	.L2304
.L2254:
.LBE1729:
.LBE1728:
.LBE1725:
.LBE1707:
.LBE1706:
.LBE1705:
.LBE1704:
.LBE1703:
.LBE1692:
.LBB1730:
.LBB1731:
.LBB1732:
.LBB1733:
.LBB1734:
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movl	$97, %edx
.L2255:
	movl	$.LC3, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L1965:
.LBE1734:
.LBE1733:
.LBE1732:
.LBE1731:
.LBE1730:
.LBB1735:
.LBB1736:
.LBB1737:
.LBB1738:
.LBB1739:
.LBB1740:
	.loc 1 643 0
	leal	-97(%r13), %eax
	cmpb	$25, %al
	ja	.L1959
	.loc 1 644 0
	leal	-32(%r13), %eax
	movb	%al, (%rbp,%rbx)
	jmp	.L1959
.L2303:
	movl	$7, %eax
	.p2align 4,,7
.L1991:
.LBB1741:
	.loc 1 666 0
	decl	%edx
	.loc 1 667 0
	movb	$48, (%rbp,%rax)
	.loc 1 666 0
	testl	%edx, %edx
	jle	.L2264
	movslq	%edx,%rax
	cmpb	$57, (%rbp,%rax)
	je	.L1991
	.loc 1 669 0
	movslq	%edx,%rdx
	movzbl	(%rbp,%rdx), %ecx
	leal	-48(%rcx), %eax
	cmpb	$9, %al
	ja	.L2305
.L1993:
	.loc 1 672 0
	leal	1(%rcx), %eax
	movb	%al, (%rbp,%rdx)
	jmp	.L2264
.L2302:
.LBB1742:
	.loc 1 661 0
	cmpb	$32, 6(%rbp)
	movl	$6, %edx
	jne	.L1983
	movl	$6, %eax
.L1987:
	decl	%edx
	.loc 1 662 0
	movb	$126, (%rbp,%rax)
	.loc 1 661 0
	testl	%edx, %edx
	jle	.L2221
	movslq	%edx,%rax
	cmpb	$32, (%rbp,%rax)
	je	.L1987
.L2221:
	movzbl	7(%rbp), %eax
	jmp	.L1983
.L2278:
.LBE1742:
.LBE1741:
.LBE1740:
.LBE1739:
	.loc 1 736 0
	movq	64(%rsp), %rdi
	call	free
	.p2align 4,,3
	jmp	.L2265
.L2090:
.LBE1738:
.LBE1737:
.LBE1736:
.LBB1743:
.LBB1744:
.LBB1745:
	.loc 1 551 0
	movzbl	1(%rcx), %eax
	.loc 1 550 0
	movb	%r8b, (%rcx)
	.loc 1 551 0
	shrl	$8, %r8d
	movl	%r8d, %edx
	andl	$15, %edx
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, 1(%rcx)
.L2263:
	movq	128(%rsp), %rcx
	jmp	.L2259
.L2298:
.LBE1745:
.LBE1744:
.LBE1743:
.LBB1746:
.LBB1747:
.LBB1748:
.LBB1749:
.LBB1750:
.LBB1751:
.LBB1752:
.LBB1753:
.LBB1754:
.LBB1755:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	32(%r13), %r14d
.LBE1755:
.LBE1754:
.LBE1753:
	.loc 1 119 0
	xorl	%ebp, %ebp
.LBB1756:
.LBB1757:
.LBB1758:
	.loc 1 104 0
	imull	%edx, %r14d
	.loc 1 105 0
	movq	32808(%rax), %rdi
	movslq	%r14d,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32808(%rdx)
	.loc 1 106 0
	je	.L1948
	.loc 1 108 0
	movq	8(%rsp), %rcx
	movl	%r14d, 8(%rcx)
	.loc 1 109 0
	movl	36(%rsp), %esi
	movl	%esi, 12(%rcx)
	jmp	.L1945
.L2288:
.LBE1758:
.LBE1757:
.LBE1756:
.LBE1752:
.LBE1751:
.LBE1750:
.LBE1749:
.LBE1748:
.LBE1747:
.LBE1746:
.LBB1759:
.LBB1760:
.LBB1761:
.LBB1762:
.LBB1763:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	cmpl	%edi, 12(%rbx)
	jbe	.L2262
	movq	16(%rsp), %rsi
	movq	128(%rsp), %rdx
	movl	16(%rsi), %eax
	imull	%edi, %eax
	addq	32784(%rdx), %rax
.LBE1763:
.LBE1762:
	.loc 2 123 0
	movw	%r8w, (%rax)
	jmp	.L2263
.L1864:
.LBE1761:
.LBE1760:
.LBE1759:
.LBB1764:
.LBB1765:
	.loc 1 703 0
	movl	$-1, 88(%rsp)
	jmp	.L1865
.L2273:
.LBE1765:
.LBE1764:
.LBE1735:
	.loc 1 890 0
	movb	$0, (%rbx,%rax)
	movq	24(%r12), %rbx
	jmp	.L1847
.L2289:
.LBB1766:
.LBB1767:
.LBB1768:
.LBB1769:
.LBB1770:
	.loc 1 97 0
	movq	16(%rsp), %rsi
	movl	12(%rsi), %eax
	testl	%eax, %eax
	je	.L2254
	movq	128(%rsp), %rdx
	movq	32784(%rdx), %rax
.LBE1770:
.LBE1769:
	.loc 2 124 0
	movl	%ecx, (%rax)
.LBE1768:
.LBE1767:
.LBE1766:
.LBB1771:
	.loc 1 538 0
	movq	128(%rsp), %rcx
.LBB1772:
	.loc 1 539 0
	movl	32780(%rcx), %eax
.LBE1772:
	.loc 1 538 0
	movl	32888(%rcx), %esi
.LBB1773:
	.loc 1 539 0
	cmpl	$32, %eax
	jne	.L2137
.L2291:
.LBB1774:
.LBB1775:
.LBB1776:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	cmpl	$1, 12(%rbx)
	jbe	.L2254
	movq	16(%rsp), %rdx
	movq	128(%rsp), %rcx
	mov	16(%rdx), %eax
	addq	32784(%rcx), %rax
.LBE1776:
.LBE1775:
	.loc 2 124 0
	movl	%esi, (%rax)
	jmp	.L2155
.L2293:
.LBE1774:
.LBE1773:
.LBE1771:
	.loc 1 966 0
	cmpl	$5760, 32880(%rbx)
	sete	%al
	leal	(%rax,%rdx), %edx
	jmp	.L2163
.L2091:
.LBB1777:
.LBB1778:
.LBB1779:
.LBB1780:
	.loc 1 554 0
	movzbl	(%rcx), %eax
	movl	%r8d, %edx
	.loc 1 555 0
	shrl	$4, %r8d
	.loc 1 554 0
	sall	$4, %edx
	.loc 1 555 0
	movb	%r8b, 1(%rcx)
	.loc 1 554 0
	andl	$15, %eax
	orl	%edx, %eax
	movb	%al, (%rcx)
	movq	128(%rsp), %rbx
	movl	4(%rbp), %esi
	movl	32780(%rbx), %edx
	jmp	.L2073
.L1832:
.LBE1780:
.LBE1779:
.LBE1778:
.LBE1777:
.LBB1781:
.LBB1782:
	.loc 1 596 0
	movq	128(%rsp), %rsi
	movl	$4095, 32888(%rsi)
	jmp	.L1837
.L2292:
.LBE1782:
.LBE1781:
.LBB1783:
.LBB1784:
.LBB1785:
.LBB1786:
.LBB1787:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	cmpl	$1, 12(%rbx)
	jbe	.L2254
	movq	16(%rsp), %rdx
	movq	128(%rsp), %rcx
	mov	16(%rdx), %eax
	addq	32784(%rcx), %rax
.LBE1787:
.LBE1786:
	.loc 2 123 0
	movw	%si, (%rax)
	jmp	.L2155
.L2290:
.LBE1785:
.LBE1784:
.LBE1783:
.LBB1788:
.LBB1789:
.LBB1790:
.LBB1791:
.LBB1792:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	movl	12(%rbx), %eax
	testl	%eax, %eax
	je	.L2254
	movq	128(%rsp), %rsi
	movq	32784(%rsi), %rax
.LBE1792:
.LBE1791:
	.loc 2 123 0
	movw	%cx, (%rax)
	jmp	.L2136
.L1797:
.LBE1790:
.LBE1789:
.LBE1788:
.LBE1653:
.LBE1652:
	.loc 1 1045 0
	movl	$.LC66, %esi
	movq	%r13, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L1796
	.loc 1 1046 0
	movq	128(%rsp), %rsi
	movl	$12, 32780(%rsi)
	.loc 1 1047 0
	movl	$2880, 32880(%rsi)
	jmp	.L1796
.L2110:
.LBB1793:
.LBB1794:
.LBB1795:
.LBB1796:
.LBB1797:
.LBB1798:
	.loc 1 551 0
	movzbl	1(%rdi), %eax
	.loc 1 550 0
	movb	%r8b, (%rdi)
	.loc 1 551 0
	shrl	$8, %r8d
	movl	%r8d, %edx
	andl	$15, %edx
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, 1(%rdi)
	movl	4(%rbp), %esi
	jmp	.L2070
.L2296:
.LBE1798:
.LBB1799:
.LBB1800:
.LBB1801:
	.loc 1 97 0
	movq	16(%rsp), %rbx
	cmpl	%ecx, 12(%rbx)
	jbe	.L2262
	movq	16(%rsp), %rsi
	movq	128(%rsp), %rdx
	movl	16(%rsi), %eax
	imull	%ecx, %eax
	addq	32784(%rdx), %rax
.LBE1801:
.LBE1800:
	.loc 2 123 0
	movw	%r8w, (%rax)
	movl	4(%rbp), %esi
	jmp	.L2070
.L2294:
.LBE1799:
.LBE1797:
.LBE1796:
.LBE1795:
.LBE1794:
.LBE1793:
.LBB1802:
.LBB1803:
	.loc 1 387 0
	movq	24(%rsp), %rdi
	xorl	%esi, %esi
	movl	$512, %edx
	.loc 1 384 0
	movq	%rbx, %rbp
	addq	$458, %rbp
	.loc 1 387 0
	call	memset
	.loc 2 124 0
	movq	24(%rsp), %rsi
	movl	$-1105527302, 440(%rsi)
	.loc 1 395 0
	movl	8(%rbx), %edx
	movq	%rbx, %rsi
	movq	(%rbx), %rdi
	addq	$459, %rsi
	.loc 1 392 0
	movb	$-128, 458(%rbx)
	.loc 1 395 0
	decl	%edx
	call	sector2CHS
	movl	%eax, %ebx
	.loc 1 396 0
	movq	128(%rsp), %rax
	movl	32880(%rax), %edx
	movq	(%rax), %rdi
	movq	%rax, %rsi
	addq	$463, %rsi
	call	sector2CHS
.LBB1804:
	.loc 2 124 0
	movq	128(%rsp), %rdx
.LBE1804:
	.loc 1 396 0
	orl	%eax, %ebx
.LBB1805:
	.loc 2 124 0
	movl	8(%rdx), %eax
	decl	%eax
.LBE1805:
	movl	%eax, 8(%rbp)
.LBB1806:
	movl	32880(%rdx), %eax
	subl	8(%rdx), %eax
	incl	%eax
.LBE1806:
	movl	%eax, 12(%rbp)
	.loc 1 405 0
	movl	32780(%rdx), %eax
	movl	$1, %edx
	cmpl	$12, %eax
	je	.L2187
	cmpl	$16, %eax
	je	.L2306
	cmpl	$1, %ebx
	sbbl	%edx, %edx
	addl	$12, %edx
.L2187:
	movb	%dl, 4(%rbp)
	.loc 1 409 0
	movq	24(%rsp), %rcx
	movb	$85, 510(%rcx)
	movb	$-86, 511(%rcx)
	jmp	.L2182
.L2276:
.LBE1803:
.LBE1802:
.LBB1807:
.LBB1808:
.LBB1809:
.LBB1810:
.LBB1811:
	.loc 1 788 0
	movq	80(%rsp), %rdi
	call	closedir
	.loc 1 793 0
	movq	128(%rsp), %rsi
	movq	128(%rsp), %rax
	xorl	%edx, %edx
	movl	32860(%rsi), %ecx
	movl	32820(%rax), %ebx
	movl	%ecx, %esi
	movl	%ebx, %eax
	sall	$4, %esi
	divl	%esi
	testl	%edx, %edx
	je	.L2215
	xorl	%r13d, %r13d
	jmp	.L2042
.L2035:
.LBB1812:
.LBB1813:
.LBB1814:
	.loc 1 122 0
	leal	1(%rbx), %eax
	movq	8(%rsp), %rsi
.LBB1815:
.LBB1816:
	.loc 1 97 0
	cmpl	%ebx, %eax
.LBE1816:
.LBE1815:
	.loc 1 122 0
	movl	%eax, 12(%rsi)
.LBB1817:
.LBB1818:
	.loc 1 97 0
	jbe	.L2254
	movq	8(%rsp), %rax
	movl	16(%rax), %edx
	imull	%ebx, %edx
.LBE1818:
.LBE1817:
	.loc 1 123 0
	addq	(%rax), %rdx
.L2038:
.LBE1814:
.LBE1813:
	.loc 1 793 0
	cld
	movq	%rdx, %rdi
	movq	%r13, %rax
	movl	$4, %ecx
	rep
	stosq
.LBE1812:
	movq	128(%rsp), %rdx
	movl	32860(%rdx), %ecx
	movl	32820(%rdx), %ebx
	xorl	%edx, %edx
	movl	%ecx, %esi
	movl	%ebx, %eax
	sall	$4, %esi
	divl	%esi
	testl	%edx, %edx
	je	.L2215
.L2042:
.LBB1819:
.LBB1820:
.LBB1821:
	.loc 1 116 0
	movq	8(%rsp), %rdx
	movl	12(%rdx), %ebx
.LBB1822:
.LBB1823:
	.loc 1 103 0
	movq	%rdx, %rcx
	movl	16(%rdx), %edx
	leal	1(%rbx), %r12d
	movl	%r12d, %eax
	imull	%edx, %eax
	cmpl	8(%rcx), %eax
	jbe	.L2035
.LBB1824:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	32(%rbx), %ebp
	imull	%edx, %ebp
	.loc 1 105 0
	movq	32808(%rax), %rdi
	movslq	%ebp,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	movq	%rax, 32808(%rdx)
.LBE1824:
.LBE1823:
.LBE1822:
	.loc 1 119 0
	xorl	%edx, %edx
.LBB1825:
.LBB1826:
.LBB1827:
	.loc 1 106 0
	testq	%rax, %rax
	je	.L2038
	.loc 1 108 0
	movq	8(%rsp), %rcx
	movl	%ebp, 8(%rcx)
	.loc 1 109 0
	movl	%r12d, 12(%rcx)
	jmp	.L2035
.L2215:
.LBE1827:
.LBE1826:
.LBE1825:
.LBE1821:
.LBE1820:
.LBE1819:
	.loc 1 798 0
	movl	120(%rsp), %esi
	testl	%esi, %esi
	jne	.L2043
	movl	%ecx, %r12d
	sall	$5, %r12d
	cmpl	%r12d, %ebx
	jae	.L2043
.LBB1828:
.LBB1829:
.LBB1830:
	.loc 1 103 0
	movq	8(%rsp), %rsi
	movl	%r12d, %eax
	movl	16(%rsi), %edx
	imull	%edx, %eax
	cmpl	8(%rsi), %eax
	ja	.L2307
.L2046:
.LBE1830:
.LBE1829:
	.loc 1 802 0
	sall	$5, %ecx
.LBB1831:
.LBB1832:
	.loc 1 97 0
	movq	8(%rsp), %rax
.LBE1832:
.LBE1831:
	.loc 1 802 0
	movl	%ecx, %edx
	subl	%ebx, %edx
	salq	$5, %rdx
.LBB1833:
.LBB1834:
	.loc 1 97 0
	cmpl	%ebx, 12(%rax)
	jbe	.L2254
	movq	8(%rsp), %rcx
.LBE1834:
.LBE1833:
	.loc 1 95 0
	xorl	%esi, %esi
.LBB1835:
.LBB1836:
	.loc 1 97 0
	movl	16(%rcx), %edi
	imull	%ebx, %edi
	movq	128(%rsp), %rbx
	addq	32808(%rbx), %rdi
.LBE1836:
.LBE1835:
	.loc 1 95 0
	call	memset
.L2043:
.LBE1828:
.LBB1837:
.LBB1838:
	.loc 1 97 0
	movq	(%rsp), %rsi
	movl	120(%rsp), %eax
	cmpl	%eax, 12(%rsi)
	jbe	.L2254
	movq	(%rsp), %rdx
	movq	128(%rsp), %rbx
	movl	120(%rsp), %ecx
	imull	16(%rdx), %ecx
.LBE1838:
.LBE1837:
	.loc 1 808 0
	movl	32820(%rbx), %eax
	xorl	%edx, %edx
.LBB1839:
.LBB1840:
	.loc 1 97 0
	addq	32832(%rbx), %rcx
.LBE1840:
.LBE1839:
	.loc 1 808 0
	subl	20(%rcx), %eax
	sall	$5, %eax
	divl	32856(%rbx)
	addl	%eax, 92(%rsp)
	.loc 1 810 0
	movl	92(%rsp), %esi
.LBB1841:
	.loc 1 95 0
	movl	8(%rcx), %eax
.LBE1841:
	.loc 1 810 0
	movl	%esi, 4(%rcx)
.LBB1842:
.LBB1843:
	.loc 1 97 0
	movq	8(%rsp), %rdx
	cmpl	%eax, 12(%rdx)
	jbe	.L2254
	movq	8(%rsp), %rbx
	movq	128(%rsp), %rsi
	movl	16(%rbx), %edi
	imull	%eax, %edi
	addq	32808(%rsi), %rdi
.LBE1843:
.LBE1842:
	.loc 1 813 0
	movl	(%rcx), %esi
	call	set_begin_of_direntry
.LBE1811:
.LBE1810:
.LBB1844:
.LBB1845:
	.loc 1 97 0
	movq	(%rsp), %rax
	movl	120(%rsp), %edx
	cmpl	%edx, 12(%rax)
	jbe	.L2254
	movq	(%rsp), %rcx
	movl	120(%rsp), %ebp
.LBE1845:
.LBE1844:
	.loc 1 95 0
	movq	128(%rsp), %rbx
.LBB1846:
.LBB1847:
	.loc 1 97 0
	imull	16(%rcx), %ebp
.LBE1847:
.LBE1846:
	.loc 1 95 0
	addq	32832(%rbx), %rbp
	jmp	.L2060
	.p2align 4,,7
.L1973:
.LBB1848:
.LBB1849:
.LBB1850:
.LBB1851:
.LBB1852:
	.loc 1 677 0
	cmpq	$0, 40(%rsp)
	je	.L1995
.LBB1853:
.LBB1854:
.LBB1855:
	.loc 1 512 0
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	$10, %esi
.L2001:
	.loc 1 516 0
	movzbl	%dl, %eax
	movl	%eax, %edx
	shrl	%edx
	testb	$1, %al
	je	.L1999
	orb	$-128, %dl
.L1999:
	movzbl	(%rcx), %eax
	incq	%rcx
	addl	%edx, %eax
	decl	%esi
	movl	%eax, %edx
	jns	.L2001
.LBE1855:
.LBE1854:
.LBB1856:
.LBB1857:
	.loc 1 97 0
	movq	8(%rsp), %rbx
	movl	52(%rsp), %esi
.LBE1857:
.LBE1856:
	.loc 1 511 0
	movl	%eax, %r13d
.LBB1858:
.LBB1859:
	.loc 1 97 0
	cmpl	%esi, 12(%rbx)
	jbe	.L2254
	movq	8(%rsp), %rdx
	movl	52(%rsp), %eax
	imull	16(%rdx), %eax
.LBE1859:
.LBE1858:
	.loc 1 95 0
	leaq	(%r12,%rax), %rbx
	jmp	.L2006
.L2308:
	.loc 1 684 0
	movq	%rbx, %rdi
	call	is_long_name
	testb	%al, %al
	je	.L1995
	.loc 1 683 0
	movb	%r13b, 13(%rbx)
	.loc 1 684 0
	addq	$32, %rbx
.L2006:
	cmpq	%rbp, %rbx
	jb	.L2308
.L1995:
.LBE1853:
	.loc 1 686 0
	movq	%rbp, %rbx
	jmp	.L1898
.L2220:
	movslq	%r12d,%rbx
	jmp	.L1960
.L1940:
	.loc 1 627 0
	cmpl	$9, %r12d
	movl	$8, %eax
	cmovge	%eax, %r12d
	jmp	.L1942
.L2277:
.LBE1852:
.LBE1851:
	.loc 1 732 0
	movl	$__PRETTY_FUNCTION__.18, %ecx
	movl	$732, %edx
	movl	$.LC3, %esi
	movl	$.LC71, %edi
.LBE1850:
.LBE1849:
.LBE1848:
.LBE1809:
.LBB1860:
.LBB1861:
.LBB1862:
.LBB1863:
.LBB1864:
	.loc 1 97 0
	call	__assert_fail
.L2224:
.LBE1864:
.LBE1863:
.LBE1862:
.LBE1861:
.LBE1860:
.LBB1865:
.LBB1866:
.LBB1867:
.LBB1868:
	.loc 1 758 0
	movq	stderr(%rip), %rdi
	movq	64(%rsp), %rdx
	movl	$.LC74, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 759 0
	movq	64(%rsp), %rdi
	call	free
.L2225:
.LBE1868:
.LBE1867:
.LBE1866:
	.loc 1 906 0
	movq	104(%rsp), %rax
	movq	stderr(%rip), %rdi
	movl	$.LC75, %esi
	movq	24(%rax), %rdx
	xorl	%eax, %eax
	call	fprintf
.LBE1865:
.LBE1808:
.LBE1807:
	.loc 1 1067 0
	movl	$-1, %edx
	jmp	.L1792
.L2306:
.LBB1869:
.LBB1870:
	.loc 1 405 0
	cmpl	$1, %ebx
	sbbl	%edx, %edx
	andl	$-8, %edx
	addl	$14, %edx
	jmp	.L2187
.L2287:
.LBE1870:
.LBE1869:
.LBB1871:
.LBB1872:
.LBB1873:
	.loc 1 927 0
	movl	$__PRETTY_FUNCTION__.17, %ecx
	movl	$927, %edx
	movl	$.LC3, %esi
	movl	$.LC11, %edi
.LBE1873:
.LBB1874:
.LBB1875:
.LBB1876:
.LBB1877:
.LBB1878:
	.loc 1 97 0
	call	__assert_fail
.L2266:
.LBE1878:
.LBE1877:
.LBE1876:
.LBE1875:
.LBE1874:
.LBE1872:
.LBE1871:
	.loc 1 1057 0
	movl	$__PRETTY_FUNCTION__.16, %ecx
	movl	$1057, %edx
	movl	$.LC3, %esi
	movl	$.LC68, %edi
.LBB1879:
.LBB1880:
.LBB1881:
.LBB1882:
.LBB1883:
.LBB1884:
.LBB1885:
	.loc 1 97 0
	call	__assert_fail
.L2286:
.LBE1885:
.LBE1884:
.LBE1883:
.LBE1882:
.LBE1881:
.LBB1886:
	.loc 1 912 0
	movl	$__PRETTY_FUNCTION__.17, %ecx
	movl	$912, %edx
	movl	$.LC3, %esi
	movl	$.LC76, %edi
.LBE1886:
.LBB1887:
.LBB1888:
.LBB1889:
.LBB1890:
.LBB1891:
	.loc 1 97 0
	call	__assert_fail
.L2274:
.LBE1891:
.LBE1890:
.LBE1889:
.LBE1888:
.LBE1887:
.LBB1892:
.LBB1893:
.LBB1894:
	.loc 1 709 0
	movl	$__PRETTY_FUNCTION__.18, %ecx
	movl	$709, %edx
	movl	$.LC3, %esi
	movl	$.LC20, %edi
.LBE1894:
.LBE1893:
.LBE1892:
.LBB1895:
.LBB1896:
.LBB1897:
.LBB1898:
.LBB1899:
	.loc 1 97 0
	call	__assert_fail
.L2268:
.LBE1899:
.LBE1898:
.LBE1897:
.LBE1896:
.LBE1895:
	.loc 1 854 0
	movl	$__PRETTY_FUNCTION__.17, %ecx
	movl	$854, %edx
	movl	$.LC3, %esi
	movl	$.LC69, %edi
.LBB1900:
.LBB1901:
.LBB1902:
.LBB1903:
.LBB1904:
	.loc 1 97 0
	call	__assert_fail
.L2262:
.LBE1904:
.LBE1903:
.LBE1902:
.LBE1901:
.LBE1900:
.LBB1905:
.LBB1906:
.LBB1907:
.LBB1908:
.LBB1909:
.LBB1910:
	movl	$__PRETTY_FUNCTION__.2, %ecx
	movb	$97, %dl
	jmp	.L2255
.L2307:
.LBE1910:
.LBE1909:
.LBE1908:
.LBE1907:
.LBE1906:
.LBB1911:
.LBB1912:
.LBB1913:
.LBB1914:
.LBB1915:
.LBB1916:
	.loc 1 105 0
	movq	128(%rsp), %rax
	.loc 1 104 0
	leal	31(%r12), %ebp
	imull	%edx, %ebp
	.loc 1 105 0
	movq	32808(%rax), %rdi
	movslq	%ebp,%rsi
	call	realloc
	movq	128(%rsp), %rdx
	.loc 1 106 0
	testq	%rax, %rax
	.loc 1 105 0
	movq	%rax, 32808(%rdx)
	.loc 1 106 0
	je	.L2222
	.loc 1 108 0
	movq	8(%rsp), %rcx
	movl	%ebp, 8(%rcx)
	.loc 1 109 0
	movl	%r12d, 12(%rcx)
	movl	32860(%rdx), %ecx
	jmp	.L2046
.L2275:
.LBE1916:
.LBE1915:
.LBE1914:
.LBE1913:
	.loc 1 712 0
	movl	(%rbx), %eax
	movl	%eax, 4(%rbx)
	jmp	.L2225
.L2226:
.LBE1912:
.LBE1911:
	.loc 1 940 0
	movq	128(%rsp), %rcx
	movq	stderr(%rip), %rdi
	movl	$.LC77, %esi
	xorl	%eax, %eax
	movl	32780(%rcx), %edx
	call	fprintf
.LBE1905:
.LBE1880:
.LBE1879:
	.loc 1 1067 0
	movl	$-1, %edx
	jmp	.L1792
.L2222:
	movq	128(%rsp), %rsi
	movl	32860(%rsi), %ecx
	jmp	.L2046
.LFE133:
	.size	vvfat_open, .-vvfat_open
	.p2align 4,,15
	.type	vvfat_close, @function
vvfat_close:
.LFB174:
	.loc 1 2790 0
	pushq	%rbp
.LCFI113:
	pushq	%rbx
.LCFI114:
	subq	$8, %rsp
.LCFI115:
	.loc 1 2791 0
	movq	56(%rdi), %rbx
.LBB1917:
.LBB1918:
	.loc 1 1084 0
	cmpq	$0, 32896(%rbx)
	je	.L2310
	.loc 1 1086 0
	movl	32892(%rbx), %edi
	.loc 1 1085 0
	movq	$0, 32896(%rbx)
	.loc 1 1086 0
	testl	%edi, %edi
	jne	.L2320
.L2310:
.LBE1918:
.LBE1917:
.LBB1919:
.LBB1920:
	.loc 1 89 0
	movq	32784(%rbx), %rdi
.LBE1920:
.LBE1919:
.LBB1921:
.LBB1922:
	.loc 1 1091 0
	movl	$-1, 32920(%rbx)
.LBE1922:
.LBE1921:
.LBB1923:
	.loc 1 88 0
	leaq	32784(%rbx), %rbp
.LBB1924:
	.loc 1 89 0
	testq	%rdi, %rdi
	jne	.L2321
.L2313:
.LBE1924:
.LBE1923:
.LBB1925:
.LBB1926:
	movq	32808(%rbx), %rdi
.LBE1926:
.LBE1925:
.LBB1927:
.LBB1928:
	.loc 1 91 0
	movl	$0, 12(%rbp)
	movl	$0, 8(%rbp)
.LBE1928:
.LBE1927:
.LBB1929:
	.loc 1 88 0
	leaq	32808(%rbx), %rbp
.LBB1930:
	.loc 1 89 0
	testq	%rdi, %rdi
	jne	.L2322
.L2315:
.LBE1930:
.LBE1929:
.LBB1931:
.LBB1932:
	movq	32832(%rbx), %rdi
.LBE1932:
.LBE1931:
.LBB1933:
.LBB1934:
	.loc 1 91 0
	movl	$0, 12(%rbp)
	movl	$0, 8(%rbp)
.LBE1934:
.LBE1933:
.LBB1935:
	.loc 1 88 0
	leaq	32832(%rbx), %rbp
.LBB1936:
	.loc 1 89 0
	testq	%rdi, %rdi
	jne	.L2323
.L2317:
	.loc 1 91 0
	movl	$0, 12(%rbp)
	movl	$0, 8(%rbp)
.LBE1936:
.LBE1935:
	.loc 1 2797 0
	movq	32912(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L2324
	.loc 1 2799 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L2324:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 2798 0
	jmp	free
	.p2align 4,,7
.L2323:
.LBB1937:
.LBB1938:
	.loc 1 90 0
	call	free
	jmp	.L2317
	.p2align 4,,7
.L2322:
.LBE1938:
.LBE1937:
.LBB1939:
.LBB1940:
	.p2align 4,,8
	call	free
	.p2align 4,,8
	jmp	.L2315
	.p2align 4,,7
.L2321:
.LBE1940:
.LBE1939:
.LBB1941:
.LBB1942:
	.p2align 4,,8
	call	free
	.p2align 4,,8
	jmp	.L2313
	.p2align 4,,7
.L2320:
.LBE1942:
.LBE1941:
.LBB1943:
.LBB1944:
	.loc 1 1087 0
	.p2align 4,,8
	call	close
	.loc 1 1088 0
	movl	$0, 32892(%rbx)
	.p2align 4,,3
	jmp	.L2310
.LBE1944:
.LBE1943:
.LFE174:
	.size	vvfat_close, .-vvfat_close
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
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI1-.LFB105
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI7-.LFB106
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
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI10-.LFB114
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI13-.LFB117
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI14-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI16-.LFB140
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI23-.LFB142
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI30-.LFB147
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI33-.LFB151
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI34-.LFB153
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x1500
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI41-.LFB156
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI48-.LFB157
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI53-.LFB158
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.byte	0x4
	.long	.LCFI54-.LFB159
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI57-.LCFI54
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.byte	0x4
	.long	.LCFI61-.LFB160
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI66-.LCFI61
	.byte	0xe
	.uleb128 0x60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI67-.LFB161
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI74-.LFB162
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI78-.LCFI77
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
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.byte	0x4
	.long	.LCFI81-.LFB163
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI85-.LCFI84
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
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI88-.LFB168
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI92-.LCFI91
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
	.long	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0xf0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.byte	0x4
	.long	.LCFI95-.LFB169
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x490
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.align 8
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.byte	0x4
	.long	.LCFI102-.LFB172
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.byte	0x4
	.long	.LCFI103-.LFB173
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI106-.LFB133
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x270
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.byte	0x4
	.long	.LCFI113-.LFB174
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
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
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI1-.LFB105
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI7-.LFB106
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
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI10-.LFB114
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI13-.LFB117
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI14-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x60
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI16-.LFB140
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI23-.LFB142
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
	.byte	0xe
	.uleb128 0x40
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI30-.LFB147
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI33-.LFB151
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI34-.LFB153
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x1500
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI41-.LFB156
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x40
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI48-.LFB157
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI53-.LFB158
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.byte	0x4
	.long	.LCFI54-.LFB159
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI57-.LCFI54
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE41:
.LSFDE43:
	.long	.LEFDE43-.LASFDE43
.LASFDE43:
	.long	.LASFDE43-.Lframe1
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.byte	0x4
	.long	.LCFI61-.LFB160
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI66-.LCFI61
	.byte	0xe
	.uleb128 0x60
	.byte	0x8f
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE43:
.LSFDE45:
	.long	.LEFDE45-.LASFDE45
.LASFDE45:
	.long	.LASFDE45-.Lframe1
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.byte	0x4
	.long	.LCFI67-.LFB161
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x50
	.align 8
.LEFDE45:
.LSFDE47:
	.long	.LEFDE47-.LASFDE47
.LASFDE47:
	.long	.LASFDE47-.Lframe1
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.byte	0x4
	.long	.LCFI74-.LFB162
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI78-.LCFI77
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
	.long	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xe
	.uleb128 0x60
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE47:
.LSFDE49:
	.long	.LEFDE49-.LASFDE49
.LASFDE49:
	.long	.LASFDE49-.Lframe1
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.byte	0x4
	.long	.LCFI81-.LFB163
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI85-.LCFI84
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
	.long	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x50
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE49:
.LSFDE51:
	.long	.LEFDE51-.LASFDE51
.LASFDE51:
	.long	.LASFDE51-.Lframe1
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.byte	0x4
	.long	.LCFI88-.LFB168
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI92-.LCFI91
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
	.long	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0xf0
	.byte	0x83
	.uleb128 0x7
	.align 8
.LEFDE51:
.LSFDE53:
	.long	.LEFDE53-.LASFDE53
.LASFDE53:
	.long	.LASFDE53-.Lframe1
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.byte	0x4
	.long	.LCFI95-.LFB169
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x490
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.align 8
.LEFDE53:
.LSFDE55:
	.long	.LEFDE55-.LASFDE55
.LASFDE55:
	.long	.LASFDE55-.Lframe1
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.align 8
.LEFDE55:
.LSFDE57:
	.long	.LEFDE57-.LASFDE57
.LASFDE57:
	.long	.LASFDE57-.Lframe1
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.align 8
.LEFDE57:
.LSFDE59:
	.long	.LEFDE59-.LASFDE59
.LASFDE59:
	.long	.LASFDE59-.Lframe1
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.byte	0x4
	.long	.LCFI102-.LFB172
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE59:
.LSFDE61:
	.long	.LEFDE61-.LASFDE61
.LASFDE61:
	.long	.LASFDE61-.Lframe1
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.byte	0x4
	.long	.LCFI103-.LFB173
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE61:
.LSFDE63:
	.long	.LEFDE63-.LASFDE63
.LASFDE63:
	.long	.LASFDE63-.Lframe1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.byte	0x4
	.long	.LCFI106-.LFB133
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x270
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.align 8
.LEFDE63:
.LSFDE65:
	.long	.LEFDE65-.LASFDE65
.LASFDE65:
	.long	.LASFDE65-.Lframe1
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.byte	0x4
	.long	.LCFI113-.LFB174
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE65:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 5 "qemu-common.h"
	.file 6 "block_int.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "block.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/include/dirent.h"
	.file 13 "/usr/include/bits/dirent.h"
	.file 14 "/usr/include/bits/stat.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x6f01
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF458
	.byte	0x1
	.long	.LASF459
	.long	.LASF460
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.long	.LASF7
	.byte	0xb
	.byte	0x86
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0xb
	.byte	0x87
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0xb
	.byte	0x88
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0xb
	.byte	0x89
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0xb
	.byte	0x8a
	.long	0x42
	.uleb128 0x4
	.long	.LASF12
	.byte	0xb
	.byte	0x8b
	.long	0x3b
	.uleb128 0x4
	.long	.LASF13
	.byte	0xb
	.byte	0x8c
	.long	0x42
	.uleb128 0x4
	.long	.LASF14
	.byte	0xb
	.byte	0x8d
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0xb
	.byte	0x8e
	.long	0x5e
	.uleb128 0x2
	.long	.LASF3
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.long	.LASF16
	.byte	0xb
	.byte	0x95
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF17
	.byte	0xb
	.byte	0xa4
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0xb
	.byte	0xa9
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0x2
	.long	.LASF19
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.long	.LASF20
	.byte	0xa
	.byte	0x4c
	.long	0xcf
	.uleb128 0x7
	.long	0x133
	.long	.LASF24
	.byte	0x10
	.byte	0xa
	.byte	0x79
	.uleb128 0x8
	.long	.LASF21
	.byte	0xa
	.byte	0x7a
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF22
	.byte	0xa
	.byte	0x7b
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x4e
	.long	0xbd
	.uleb128 0x7
	.long	0x21d
	.long	.LASF25
	.byte	0x90
	.byte	0xe
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF26
	.byte	0xe
	.byte	0x2d
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF27
	.byte	0xe
	.byte	0x32
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF28
	.byte	0xe
	.byte	0x3a
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF29
	.byte	0xe
	.byte	0x3b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF30
	.byte	0xe
	.byte	0x3d
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF31
	.byte	0xe
	.byte	0x3e
	.long	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF32
	.byte	0xe
	.byte	0x40
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF33
	.byte	0xe
	.byte	0x42
	.long	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF34
	.byte	0xe
	.byte	0x47
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF35
	.byte	0xe
	.byte	0x4b
	.long	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF36
	.byte	0xe
	.byte	0x4d
	.long	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF37
	.byte	0xe
	.byte	0x58
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF38
	.byte	0xe
	.byte	0x59
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF39
	.byte	0xe
	.byte	0x5a
	.long	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF40
	.byte	0xe
	.byte	0x67
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x9
	.long	0x22d
	.long	0x5e
	.uleb128 0xa
	.long	0xc8
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.long	0x281
	.long	.LASF41
	.value	0x118
	.byte	0xd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd
	.byte	0x1d
	.long	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF43
	.byte	0xd
	.byte	0x1e
	.long	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF44
	.byte	0xd
	.byte	0x20
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF45
	.byte	0xd
	.byte	0x21
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF46
	.byte	0xd
	.byte	0x22
	.long	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x291
	.long	0xf8
	.uleb128 0xa
	.long	0xc8
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.string	"DIR"
	.byte	0xc
	.byte	0x80
	.long	0x29c
	.uleb128 0xd
	.long	.LASF461
	.byte	0x1
	.uleb128 0x4
	.long	.LASF47
	.byte	0x4
	.byte	0xd5
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.long	.LASF48
	.byte	0x8
	.byte	0x5
	.uleb128 0x6
	.byte	0x8
	.long	0x2c0
	.uleb128 0xe
	.long	0xf8
	.uleb128 0x4
	.long	.LASF49
	.byte	0x7
	.byte	0xc5
	.long	0x57
	.uleb128 0x4
	.long	.LASF50
	.byte	0x7
	.byte	0xc6
	.long	0x5e
	.uleb128 0x2
	.long	.LASF51
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.long	0x2f2
	.long	0xf8
	.uleb128 0xa
	.long	0xc8
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.long	0x4be
	.long	.LASF52
	.byte	0xd8
	.byte	0xf
	.byte	0x2d
	.uleb128 0xf
	.long	.LASF53
	.byte	0x10
	.value	0x110
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x10
	.value	0x115
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF55
	.byte	0x10
	.value	0x116
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF56
	.byte	0x10
	.value	0x117
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.long	.LASF57
	.byte	0x10
	.value	0x118
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.long	.LASF58
	.byte	0x10
	.value	0x119
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.long	.LASF59
	.byte	0x10
	.value	0x11a
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.long	.LASF60
	.byte	0x10
	.value	0x11b
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF61
	.byte	0x10
	.value	0x11c
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.long	.LASF62
	.byte	0x10
	.value	0x11e
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.long	.LASF63
	.byte	0x10
	.value	0x11f
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.long	.LASF64
	.byte	0x10
	.value	0x120
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.long	.LASF65
	.byte	0x10
	.value	0x122
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.long	.LASF66
	.byte	0x10
	.value	0x124
	.long	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.long	.LASF67
	.byte	0x10
	.value	0x126
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.long	.LASF68
	.byte	0x10
	.value	0x12a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.long	.LASF69
	.byte	0x10
	.value	0x12c
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.long	.LASF70
	.byte	0x10
	.value	0x130
	.long	0x34
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.long	.LASF71
	.byte	0x10
	.value	0x131
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xf
	.long	.LASF72
	.byte	0x10
	.value	0x132
	.long	0x508
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.value	0x136
	.long	0x518
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.value	0x13f
	.long	0xbd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.value	0x148
	.long	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.value	0x149
	.long	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.long	.LASF77
	.byte	0x10
	.value	0x14a
	.long	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.value	0x14b
	.long	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.value	0x14c
	.long	0x2a2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x10
	.value	0x14e
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.value	0x150
	.long	0x51e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x10
	.long	.LASF82
	.byte	0x10
	.byte	0xb4
	.uleb128 0x7
	.long	0x4fc
	.long	.LASF83
	.byte	0x18
	.byte	0x10
	.byte	0xba
	.uleb128 0x8
	.long	.LASF84
	.byte	0x10
	.byte	0xbb
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF85
	.byte	0x10
	.byte	0xbc
	.long	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF86
	.byte	0x10
	.byte	0xc0
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c5
	.uleb128 0x6
	.byte	0x8
	.long	0x2f2
	.uleb128 0x9
	.long	0x518
	.long	0xf8
	.uleb128 0xa
	.long	0xc8
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4be
	.uleb128 0x9
	.long	0x52e
	.long	0xf8
	.uleb128 0xa
	.long	0xc8
	.byte	0x13
	.byte	0x0
	.uleb128 0x4
	.long	.LASF87
	.byte	0x9
	.byte	0x31
	.long	0x2d
	.uleb128 0x4
	.long	.LASF88
	.byte	0x9
	.byte	0x32
	.long	0x34
	.uleb128 0x4
	.long	.LASF89
	.byte	0x9
	.byte	0x34
	.long	0x3b
	.uleb128 0x4
	.long	.LASF90
	.byte	0x9
	.byte	0x38
	.long	0x42
	.uleb128 0x11
	.long	0x600
	.string	"tm"
	.byte	0x38
	.byte	0xa
	.byte	0x86
	.uleb128 0x8
	.long	.LASF91
	.byte	0xa
	.byte	0x87
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF92
	.byte	0xa
	.byte	0x88
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF93
	.byte	0xa
	.byte	0x89
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x8a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF95
	.byte	0xa
	.byte	0x8b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF96
	.byte	0xa
	.byte	0x8c
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.long	.LASF97
	.byte	0xa
	.byte	0x8d
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa
	.byte	0x8e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa
	.byte	0x8f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x92
	.long	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0x93
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x12
	.long	0x60c
	.byte	0x1
	.uleb128 0x13
	.long	0xda
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x612
	.uleb128 0xe
	.long	0x52e
	.uleb128 0x4
	.long	.LASF102
	.byte	0x5
	.byte	0x6e
	.long	0x622
	.uleb128 0xb
	.long	0x7d6
	.long	.LASF102
	.value	0xac0
	.byte	0x5
	.byte	0x6e
	.uleb128 0x8
	.long	.LASF103
	.byte	0x6
	.byte	0x5d
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF104
	.byte	0x6
	.byte	0x5f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF105
	.byte	0x6
	.byte	0x60
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF106
	.byte	0x6
	.byte	0x61
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF107
	.byte	0x6
	.byte	0x62
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"sg"
	.byte	0x6
	.byte	0x63
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF108
	.byte	0x6
	.byte	0x65
	.long	0xd71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF109
	.byte	0x6
	.byte	0x66
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"drv"
	.byte	0x6
	.byte	0x68
	.long	0xd77
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF110
	.byte	0x6
	.byte	0x69
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF111
	.byte	0x6
	.byte	0x6b
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF112
	.byte	0x6
	.byte	0x6c
	.long	0xd7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.long	.LASF113
	.byte	0x6
	.byte	0x6e
	.long	0xd8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x8
	.long	.LASF114
	.byte	0x6
	.byte	0x6f
	.long	0xd8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x644
	.uleb128 0x8
	.long	.LASF115
	.byte	0x6
	.byte	0x71
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa44
	.uleb128 0x8
	.long	.LASF116
	.byte	0x6
	.byte	0x72
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa48
	.uleb128 0x8
	.long	.LASF117
	.byte	0x6
	.byte	0x74
	.long	0xb37
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0x8
	.long	.LASF118
	.byte	0x6
	.byte	0x77
	.long	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xa58
	.uleb128 0x8
	.long	.LASF119
	.byte	0x6
	.byte	0x7a
	.long	0x54f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa60
	.uleb128 0x8
	.long	.LASF120
	.byte	0x6
	.byte	0x7b
	.long	0x54f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0x8
	.long	.LASF121
	.byte	0x6
	.byte	0x7c
	.long	0x54f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0x8
	.long	.LASF122
	.byte	0x6
	.byte	0x7d
	.long	0x54f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x8
	.long	.LASF123
	.byte	0x6
	.byte	0x81
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x8
	.long	.LASF124
	.byte	0x6
	.byte	0x81
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x8
	.long	.LASF125
	.byte	0x6
	.byte	0x81
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x8
	.long	.LASF126
	.byte	0x6
	.byte	0x81
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x8
	.long	.LASF127
	.byte	0x6
	.byte	0x82
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x8
	.long	.LASF128
	.byte	0x6
	.byte	0x83
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa94
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0x84
	.long	0xb37
	.byte	0x3
	.byte	0x23
	.uleb128 0xab8
	.byte	0x0
	.uleb128 0x4
	.long	.LASF130
	.byte	0x8
	.byte	0x5
	.long	0x7e1
	.uleb128 0xb
	.long	0x9dd
	.long	.LASF130
	.value	0x110
	.byte	0x8
	.byte	0x5
	.uleb128 0x8
	.long	.LASF131
	.byte	0x6
	.byte	0x22
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x6
	.byte	0x23
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0x6
	.byte	0x24
	.long	0xb17
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF134
	.byte	0x6
	.byte	0x25
	.long	0xb3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF135
	.byte	0x6
	.byte	0x27
	.long	0xb68
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF136
	.byte	0x6
	.byte	0x29
	.long	0xb8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF137
	.byte	0x6
	.byte	0x2a
	.long	0xb9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF138
	.byte	0x6
	.byte	0x2c
	.long	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF139
	.byte	0x6
	.byte	0x2d
	.long	0xb9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF140
	.byte	0x6
	.byte	0x2f
	.long	0xbe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF141
	.byte	0x6
	.byte	0x30
	.long	0xc04
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF142
	.byte	0x6
	.byte	0x31
	.long	0xc1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF143
	.byte	0x6
	.byte	0x35
	.long	0xc55
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF144
	.byte	0x6
	.byte	0x38
	.long	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF145
	.byte	0x6
	.byte	0x39
	.long	0xc96
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF146
	.byte	0x6
	.byte	0x3a
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF147
	.byte	0x6
	.byte	0x3c
	.long	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF148
	.byte	0x6
	.byte	0x3e
	.long	0xb68
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF149
	.byte	0x6
	.byte	0x40
	.long	0xb8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF150
	.byte	0x6
	.byte	0x41
	.long	0xcb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF151
	.byte	0x6
	.byte	0x42
	.long	0xcc7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF152
	.byte	0x6
	.byte	0x44
	.long	0xb8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF153
	.byte	0x6
	.byte	0x47
	.long	0xce8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF154
	.byte	0x6
	.byte	0x49
	.long	0xc04
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF155
	.byte	0x6
	.byte	0x4a
	.long	0xc04
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF156
	.byte	0x6
	.byte	0x4c
	.long	0xd09
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x8
	.long	.LASF157
	.byte	0x6
	.byte	0x4d
	.long	0xd2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x8
	.long	.LASF158
	.byte	0x6
	.byte	0x50
	.long	0xc1a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x8
	.long	.LASF159
	.byte	0x6
	.byte	0x51
	.long	0xc1a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x8
	.long	.LASF160
	.byte	0x6
	.byte	0x52
	.long	0xd45
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x6
	.byte	0x53
	.long	0xd45
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x6
	.byte	0x56
	.long	0xd65
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x8
	.long	.LASF163
	.byte	0x6
	.byte	0x58
	.long	0xc49
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0x59
	.long	0xd6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.byte	0x0
	.uleb128 0x7
	.long	0xa06
	.long	.LASF164
	.byte	0x10
	.byte	0x8
	.byte	0x14
	.uleb128 0x8
	.long	.LASF165
	.byte	0x8
	.byte	0x16
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF166
	.byte	0x8
	.byte	0x18
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	.LASF164
	.byte	0x8
	.byte	0x19
	.long	0x9dd
	.uleb128 0xb
	.long	0xa78
	.long	.LASF167
	.value	0x198
	.byte	0x8
	.byte	0x1b
	.uleb128 0x8
	.long	.LASF168
	.byte	0x8
	.byte	0x1c
	.long	0xa78
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x8
	.byte	0x1f
	.long	0x281
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF170
	.byte	0x8
	.byte	0x20
	.long	0x544
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x8
	.long	.LASF171
	.byte	0x8
	.byte	0x21
	.long	0x544
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x8
	.long	.LASF172
	.byte	0x8
	.byte	0x22
	.long	0x544
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x8
	.long	.LASF173
	.byte	0x8
	.byte	0x23
	.long	0x54f
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.byte	0x0
	.uleb128 0x9
	.long	0xa88
	.long	0xf8
	.uleb128 0xa
	.long	0xc8
	.byte	0x7f
	.byte	0x0
	.uleb128 0x4
	.long	.LASF167
	.byte	0x8
	.byte	0x24
	.long	0xa11
	.uleb128 0x4
	.long	.LASF174
	.byte	0x8
	.byte	0x50
	.long	0xa9e
	.uleb128 0x7
	.long	0xae1
	.long	.LASF174
	.byte	0x20
	.byte	0x8
	.byte	0x50
	.uleb128 0x14
	.string	"bs"
	.byte	0x6
	.byte	0x88
	.long	0xb37
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"cb"
	.byte	0x6
	.byte	0x89
	.long	0xc4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF110
	.byte	0x6
	.byte	0x8a
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0x8b
	.long	0xc49
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x4
	.long	.LASF175
	.byte	0x8
	.byte	0x51
	.long	0xaec
	.uleb128 0x12
	.long	0xafd
	.byte	0x1
	.uleb128 0x13
	.long	0xda
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x15
	.long	0xb17
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0x60c
	.uleb128 0x13
	.long	0x57
	.uleb128 0x13
	.long	0x2ba
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xafd
	.uleb128 0x15
	.long	0xb37
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2ba
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x617
	.uleb128 0x6
	.byte	0x8
	.long	0xb1d
	.uleb128 0x15
	.long	0xb62
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0xb62
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x52e
	.uleb128 0x6
	.byte	0x8
	.long	0xb43
	.uleb128 0x15
	.long	0xb8d
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0x60c
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6e
	.uleb128 0x12
	.long	0xb9f
	.byte	0x1
	.uleb128 0x13
	.long	0xb37
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xb93
	.uleb128 0x15
	.long	0xbc4
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0x2ba
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0x2ba
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xba5
	.uleb128 0x15
	.long	0xbe9
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0x57
	.uleb128 0x13
	.long	0x2ad
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xbca
	.uleb128 0x15
	.long	0xc04
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2ba
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xbef
	.uleb128 0x15
	.long	0xc1a
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc0a
	.uleb128 0x15
	.long	0xc49
	.byte	0x1
	.long	0xc49
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0xb62
	.uleb128 0x13
	.long	0x57
	.uleb128 0x13
	.long	0xc4f
	.uleb128 0x13
	.long	0xda
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa93
	.uleb128 0x6
	.byte	0x8
	.long	0xae1
	.uleb128 0x6
	.byte	0x8
	.long	0xc20
	.uleb128 0x15
	.long	0xc84
	.byte	0x1
	.long	0xc49
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.uleb128 0x13
	.long	0x60c
	.uleb128 0x13
	.long	0x57
	.uleb128 0x13
	.long	0xc4f
	.uleb128 0x13
	.long	0xda
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc5b
	.uleb128 0x12
	.long	0xc96
	.byte	0x1
	.uleb128 0x13
	.long	0xc49
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc8a
	.uleb128 0x15
	.long	0xcb1
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x2d0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc9c
	.uleb128 0x15
	.long	0xcc7
	.byte	0x1
	.long	0x2d0
	.uleb128 0x13
	.long	0xb37
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xcb7
	.uleb128 0x15
	.long	0xce2
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0xce2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa88
	.uleb128 0x6
	.byte	0x8
	.long	0xccd
	.uleb128 0x15
	.long	0xd03
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0xd03
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xce2
	.uleb128 0x6
	.byte	0x8
	.long	0xcee
	.uleb128 0x15
	.long	0xd24
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0xd24
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa06
	.uleb128 0x6
	.byte	0x8
	.long	0xd0f
	.uleb128 0x15
	.long	0xd45
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xd30
	.uleb128 0x15
	.long	0xd65
	.byte	0x1
	.long	0x57
	.uleb128 0x13
	.long	0xb37
	.uleb128 0x13
	.long	0x42
	.uleb128 0x13
	.long	0xda
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xd4b
	.uleb128 0x6
	.byte	0x8
	.long	0x7e1
	.uleb128 0x6
	.byte	0x8
	.long	0x600
	.uleb128 0x6
	.byte	0x8
	.long	0x7d6
	.uleb128 0x9
	.long	0xd8e
	.long	0x52e
	.uleb128 0x16
	.long	0xc8
	.value	0x1ff
	.byte	0x0
	.uleb128 0x9
	.long	0xd9f
	.long	0xf8
	.uleb128 0x16
	.long	0xc8
	.value	0x3ff
	.byte	0x0
	.uleb128 0x7
	.long	0xde4
	.long	.LASF176
	.byte	0x18
	.byte	0x1
	.byte	0x4a
	.uleb128 0x8
	.long	.LASF177
	.byte	0x1
	.byte	0x4b
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF178
	.byte	0x1
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF129
	.byte	0x1
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF179
	.byte	0x1
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	.LASF176
	.byte	0x1
	.byte	0x4d
	.long	0xd9f
	.uleb128 0x17
	.long	0xe3d
	.byte	0x12
	.byte	0x1
	.byte	0xe5
	.uleb128 0x8
	.long	.LASF180
	.byte	0x1
	.byte	0xe0
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x1
	.byte	0xe1
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF182
	.byte	0x1
	.byte	0xe2
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.string	"id"
	.byte	0x1
	.byte	0xe3
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF183
	.byte	0x1
	.byte	0xe4
	.long	0xe3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x9
	.long	0xe4d
	.long	0x52e
	.uleb128 0xa
	.long	0xc8
	.byte	0xa
	.byte	0x0
	.uleb128 0x17
	.long	0xec6
	.byte	0x12
	.byte	0x1
	.byte	0xee
	.uleb128 0x8
	.long	.LASF184
	.byte	0x1
	.byte	0xe7
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF185
	.byte	0x1
	.byte	0xe8
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF186
	.byte	0x1
	.byte	0xe9
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF187
	.byte	0x1
	.byte	0xe9
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF188
	.byte	0x1
	.byte	0xea
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF189
	.byte	0x1
	.byte	0xeb
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF190
	.byte	0x1
	.byte	0xec
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF191
	.byte	0x1
	.byte	0xed
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x18
	.long	0xee5
	.byte	0x12
	.byte	0x1
	.byte	0xef
	.uleb128 0x19
	.long	.LASF192
	.byte	0x1
	.byte	0xe5
	.long	0xdef
	.uleb128 0x19
	.long	.LASF193
	.byte	0x1
	.byte	0xee
	.long	0xe4d
	.byte	0x0
	.uleb128 0xb
	.long	0xfee
	.long	.LASF194
	.value	0x200
	.byte	0x1
	.byte	0xcf
	.uleb128 0x8
	.long	.LASF195
	.byte	0x1
	.byte	0xd0
	.long	0xfee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x1
	.byte	0xd1
	.long	0xffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF196
	.byte	0x1
	.byte	0xd2
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.long	.LASF197
	.byte	0x1
	.byte	0xd3
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.long	.LASF198
	.byte	0x1
	.byte	0xd4
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF199
	.byte	0x1
	.byte	0xd5
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF200
	.byte	0x1
	.byte	0xd6
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.long	.LASF201
	.byte	0x1
	.byte	0xd7
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x8
	.long	.LASF202
	.byte	0x1
	.byte	0xd8
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x8
	.long	.LASF184
	.byte	0x1
	.byte	0xd9
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.long	.LASF203
	.byte	0x1
	.byte	0xda
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF204
	.byte	0x1
	.byte	0xdb
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.long	.LASF205
	.byte	0x1
	.byte	0xdc
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.long	.LASF103
	.byte	0x1
	.byte	0xdd
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"u"
	.byte	0x1
	.byte	0xef
	.long	0xec6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.long	.LASF206
	.byte	0x1
	.byte	0xf0
	.long	0xffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x8
	.long	.LASF191
	.byte	0x1
	.byte	0xf1
	.long	0x100e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x8
	.long	.LASF207
	.byte	0x1
	.byte	0xf2
	.long	0x101f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fe
	.byte	0x0
	.uleb128 0x9
	.long	0xffe
	.long	0x52e
	.uleb128 0xa
	.long	0xc8
	.byte	0x2
	.byte	0x0
	.uleb128 0x9
	.long	0x100e
	.long	0x52e
	.uleb128 0xa
	.long	0xc8
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.long	0x101f
	.long	0x52e
	.uleb128 0x16
	.long	0xc8
	.value	0x1bf
	.byte	0x0
	.uleb128 0x9
	.long	0x102f
	.long	0x52e
	.uleb128 0xa
	.long	0xc8
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.long	.LASF194
	.byte	0x1
	.byte	0xf3
	.long	0xee5
	.uleb128 0x17
	.long	0x106d
	.byte	0x3
	.byte	0x1
	.byte	0xf9
	.uleb128 0x8
	.long	.LASF208
	.byte	0x1
	.byte	0xf6
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF209
	.byte	0x1
	.byte	0xf7
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF210
	.byte	0x1
	.byte	0xf8
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x4
	.long	.LASF211
	.byte	0x1
	.byte	0xf9
	.long	0x103a
	.uleb128 0x7
	.long	0x10db
	.long	.LASF212
	.byte	0x10
	.byte	0x1
	.byte	0xfb
	.uleb128 0x8
	.long	.LASF213
	.byte	0x1
	.byte	0xfc
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF214
	.byte	0x1
	.byte	0xfd
	.long	0x106d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF215
	.byte	0x1
	.byte	0xfe
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF216
	.byte	0x1
	.byte	0xff
	.long	0x106d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xf
	.long	.LASF217
	.byte	0x1
	.value	0x100
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF218
	.byte	0x1
	.value	0x101
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF212
	.byte	0x1
	.value	0x102
	.long	0x1078
	.uleb128 0x1b
	.long	0x1145
	.long	.LASF219
	.value	0x200
	.byte	0x1
	.value	0x104
	.uleb128 0xf
	.long	.LASF191
	.byte	0x1
	.value	0x105
	.long	0x1145
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF220
	.byte	0x1
	.value	0x106
	.long	0x544
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0xf
	.long	.LASF221
	.byte	0x1
	.value	0x107
	.long	0x101f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xf
	.long	.LASF222
	.byte	0x1
	.value	0x108
	.long	0x1156
	.byte	0x3
	.byte	0x23
	.uleb128 0x1be
	.uleb128 0xf
	.long	.LASF207
	.byte	0x1
	.value	0x109
	.long	0x101f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fe
	.byte	0x0
	.uleb128 0x9
	.long	0x1156
	.long	0x52e
	.uleb128 0x16
	.long	0xc8
	.value	0x1b7
	.byte	0x0
	.uleb128 0x9
	.long	0x1166
	.long	0x10db
	.uleb128 0xa
	.long	0xc8
	.byte	0x3
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF219
	.byte	0x1
	.value	0x10a
	.long	0x10e7
	.uleb128 0x1c
	.long	0x1234
	.long	.LASF223
	.byte	0x20
	.byte	0x1
	.value	0x10c
	.uleb128 0xf
	.long	.LASF169
	.byte	0x1
	.value	0x10d
	.long	0xffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF224
	.byte	0x1
	.value	0x10e
	.long	0xfee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF213
	.byte	0x1
	.value	0x10f
	.long	0x52e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xf
	.long	.LASF225
	.byte	0x1
	.value	0x110
	.long	0x101f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF226
	.byte	0x1
	.value	0x111
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.long	.LASF227
	.byte	0x1
	.value	0x112
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF228
	.byte	0x1
	.value	0x113
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xf
	.long	.LASF229
	.byte	0x1
	.value	0x114
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF230
	.byte	0x1
	.value	0x115
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xf
	.long	.LASF231
	.byte	0x1
	.value	0x116
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.long	.LASF232
	.byte	0x1
	.value	0x117
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xf
	.long	.LASF178
	.byte	0x1
	.value	0x118
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF223
	.byte	0x1
	.value	0x119
	.long	0x1172
	.uleb128 0x1d
	.long	0x1259
	.byte	0x4
	.byte	0x1
	.value	0x12c
	.uleb128 0xf
	.long	.LASF233
	.byte	0x1
	.value	0x12b
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1281
	.byte	0x8
	.byte	0x1
	.value	0x130
	.uleb128 0xf
	.long	.LASF234
	.byte	0x1
	.value	0x12e
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF235
	.byte	0x1
	.value	0x12f
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1e
	.long	0x12a3
	.byte	0x8
	.byte	0x1
	.value	0x131
	.uleb128 0x1f
	.long	.LASF236
	.byte	0x1
	.value	0x12c
	.long	0x1240
	.uleb128 0x20
	.string	"dir"
	.byte	0x1
	.value	0x130
	.long	0x1259
	.byte	0x0
	.uleb128 0x21
	.long	0x12d7
	.byte	0x4
	.byte	0x1
	.value	0x135
	.uleb128 0x22
	.long	.LASF237
	.sleb128 0
	.uleb128 0x22
	.long	.LASF238
	.sleb128 1
	.uleb128 0x22
	.long	.LASF239
	.sleb128 2
	.uleb128 0x22
	.long	.LASF240
	.sleb128 4
	.uleb128 0x22
	.long	.LASF241
	.sleb128 8
	.uleb128 0x22
	.long	.LASF242
	.sleb128 16
	.uleb128 0x22
	.long	.LASF243
	.sleb128 32
	.byte	0x0
	.uleb128 0x1c
	.long	0x135d
	.long	.LASF244
	.byte	0x28
	.byte	0x1
	.value	0x11d
	.uleb128 0xf
	.long	.LASF232
	.byte	0x1
	.value	0x11f
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x11f
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF245
	.byte	0x1
	.value	0x121
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF246
	.byte	0x1
	.value	0x123
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF247
	.byte	0x1
	.value	0x131
	.long	0x1281
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF248
	.byte	0x1
	.value	0x133
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.long	.LASF249
	.byte	0x1
	.value	0x137
	.long	0x12a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.long	.LASF104
	.byte	0x1
	.value	0x138
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF244
	.byte	0x1
	.value	0x139
	.long	0x12d7
	.uleb128 0x1b
	.long	0x155e
	.long	.LASF250
	.value	0x80f0
	.byte	0x1
	.value	0x142
	.uleb128 0x23
	.string	"bs"
	.byte	0x1
	.value	0x143
	.long	0xb37
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF251
	.byte	0x1
	.value	0x144
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF252
	.byte	0x1
	.value	0x145
	.long	0x155e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.long	.LASF206
	.byte	0x1
	.value	0x147
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0x800c
	.uleb128 0x23
	.string	"fat"
	.byte	0x1
	.value	0x148
	.long	0xde4
	.byte	0x4
	.byte	0x23
	.uleb128 0x8010
	.uleb128 0xf
	.long	.LASF253
	.byte	0x1
	.value	0x148
	.long	0xde4
	.byte	0x4
	.byte	0x23
	.uleb128 0x8028
	.uleb128 0xf
	.long	.LASF254
	.byte	0x1
	.value	0x148
	.long	0xde4
	.byte	0x4
	.byte	0x23
	.uleb128 0x8040
	.uleb128 0xf
	.long	.LASF165
	.byte	0x1
	.value	0x14a
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x8058
	.uleb128 0xf
	.long	.LASF197
	.byte	0x1
	.value	0x14b
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x805c
	.uleb128 0xf
	.long	.LASF184
	.byte	0x1
	.value	0x14c
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.uleb128 0xf
	.long	.LASF255
	.byte	0x1
	.value	0x14d
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x8064
	.uleb128 0xf
	.long	.LASF256
	.byte	0x1
	.value	0x14e
	.long	0x544
	.byte	0x4
	.byte	0x23
	.uleb128 0x8068
	.uleb128 0xf
	.long	.LASF257
	.byte	0x1
	.value	0x14f
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x806c
	.uleb128 0xf
	.long	.LASF258
	.byte	0x1
	.value	0x150
	.long	0x544
	.byte	0x4
	.byte	0x23
	.uleb128 0x8070
	.uleb128 0xf
	.long	.LASF259
	.byte	0x1
	.value	0x151
	.long	0x544
	.byte	0x4
	.byte	0x23
	.uleb128 0x8074
	.uleb128 0xf
	.long	.LASF260
	.byte	0x1
	.value	0x152
	.long	0x544
	.byte	0x4
	.byte	0x23
	.uleb128 0x8078
	.uleb128 0xf
	.long	.LASF261
	.byte	0x1
	.value	0x154
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0x807c
	.uleb128 0xf
	.long	.LASF262
	.byte	0x1
	.value	0x155
	.long	0x156f
	.byte	0x4
	.byte	0x23
	.uleb128 0x8080
	.uleb128 0xf
	.long	.LASF263
	.byte	0x1
	.value	0x156
	.long	0x1575
	.byte	0x4
	.byte	0x23
	.uleb128 0x8088
	.uleb128 0xf
	.long	.LASF264
	.byte	0x1
	.value	0x157
	.long	0x1575
	.byte	0x4
	.byte	0x23
	.uleb128 0x8090
	.uleb128 0xf
	.long	.LASF265
	.byte	0x1
	.value	0x158
	.long	0x3b
	.byte	0x4
	.byte	0x23
	.uleb128 0x8098
	.uleb128 0xf
	.long	.LASF266
	.byte	0x1
	.value	0x15b
	.long	0xb37
	.byte	0x4
	.byte	0x23
	.uleb128 0x80a0
	.uleb128 0xf
	.long	.LASF267
	.byte	0x1
	.value	0x15c
	.long	0xf2
	.byte	0x4
	.byte	0x23
	.uleb128 0x80a8
	.uleb128 0xf
	.long	.LASF268
	.byte	0x1
	.value	0x15d
	.long	0xb37
	.byte	0x4
	.byte	0x23
	.uleb128 0x80b0
	.uleb128 0xf
	.long	.LASF269
	.byte	0x1
	.value	0x15e
	.long	0xda
	.byte	0x4
	.byte	0x23
	.uleb128 0x80b8
	.uleb128 0xf
	.long	.LASF270
	.byte	0x1
	.value	0x15f
	.long	0xf2
	.byte	0x4
	.byte	0x23
	.uleb128 0x80c0
	.uleb128 0xf
	.long	.LASF271
	.byte	0x1
	.value	0x160
	.long	0xde4
	.byte	0x4
	.byte	0x23
	.uleb128 0x80c8
	.uleb128 0xf
	.long	.LASF248
	.byte	0x1
	.value	0x161
	.long	0x2ba
	.byte	0x4
	.byte	0x23
	.uleb128 0x80e0
	.uleb128 0xf
	.long	.LASF272
	.byte	0x1
	.value	0x162
	.long	0x57
	.byte	0x4
	.byte	0x23
	.uleb128 0x80e8
	.byte	0x0
	.uleb128 0x9
	.long	0x156f
	.long	0x2d
	.uleb128 0x16
	.long	0xc8
	.value	0x7fff
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x135d
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF250
	.byte	0x1
	.value	0x163
	.long	0x1369
	.uleb128 0x1d
	.long	0x15a0
	.byte	0x4
	.byte	0x1
	.value	0x546
	.uleb128 0xf
	.long	.LASF263
	.byte	0x1
	.value	0x546
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x15c8
	.byte	0x8
	.byte	0x1
	.value	0x547
	.uleb128 0xf
	.long	.LASF245
	.byte	0x1
	.value	0x547
	.long	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF273
	.byte	0x1
	.value	0x547
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x15e1
	.byte	0x4
	.byte	0x1
	.value	0x548
	.uleb128 0xf
	.long	.LASF274
	.byte	0x1
	.value	0x548
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x15fa
	.byte	0x4
	.byte	0x1
	.value	0x549
	.uleb128 0xf
	.long	.LASF263
	.byte	0x1
	.value	0x549
	.long	0x544
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0x1634
	.byte	0x8
	.byte	0x1
	.value	0x54a
	.uleb128 0x1f
	.long	.LASF275
	.byte	0x1
	.value	0x546
	.long	0x1587
	.uleb128 0x1f
	.long	.LASF276
	.byte	0x1
	.value	0x547
	.long	0x15a0
	.uleb128 0x1f
	.long	.LASF277
	.byte	0x1
	.value	0x548
	.long	0x15c8
	.uleb128 0x1f
	.long	.LASF278
	.byte	0x1
	.value	0x549
	.long	0x15e1
	.byte	0x0
	.uleb128 0x21
	.long	0x1656
	.byte	0x4
	.byte	0x1
	.value	0x54c
	.uleb128 0x22
	.long	.LASF279
	.sleb128 0
	.uleb128 0x22
	.long	.LASF280
	.sleb128 1
	.uleb128 0x22
	.long	.LASF281
	.sleb128 2
	.uleb128 0x22
	.long	.LASF282
	.sleb128 3
	.byte	0x0
	.uleb128 0x1c
	.long	0x1691
	.long	.LASF283
	.byte	0x18
	.byte	0x1
	.value	0x543
	.uleb128 0xf
	.long	.LASF248
	.byte	0x1
	.value	0x544
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF284
	.byte	0x1
	.value	0x54a
	.long	0x15fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF285
	.byte	0x1
	.value	0x54e
	.long	0x1634
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x1
	.value	0x54f
	.long	0x1656
	.uleb128 0x24
	.long	0x16e7
	.value	0x40c
	.byte	0x1
	.value	0x589
	.uleb128 0xf
	.long	.LASF169
	.byte	0x1
	.value	0x586
	.long	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF286
	.byte	0x1
	.value	0x587
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x587
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x404
	.uleb128 0xf
	.long	.LASF287
	.byte	0x1
	.value	0x588
	.long	0x57
	.byte	0x3
	.byte	0x23
	.uleb128 0x408
	.byte	0x0
	.uleb128 0x9
	.long	0x16f8
	.long	0x2d
	.uleb128 0x16
	.long	0xc8
	.value	0x3ff
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x1
	.value	0x589
	.long	0x169d
	.uleb128 0x25
	.long	0x17b6
	.long	.LASF291
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.long	0x57
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF289
	.byte	0x1
	.byte	0xbd
	.long	0x17b6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF290
	.byte	0x1
	.byte	0xbd
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x27
	.long	0x17bc
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x28
	.long	0x17cd
	.uleb128 0x28
	.long	0x17d8
	.uleb128 0x28
	.long	0x17e3
	.uleb128 0x27
	.long	0x180e
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x28
	.long	0x181f
	.uleb128 0x29
	.long	0x182a
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	0x1835
	.uleb128 0x28
	.long	0x1840
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.long	0x184b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2b
	.long	0x1856
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	0x1861
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	0x186b
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xde4
	.uleb128 0x2c
	.long	0x17f9
	.long	.LASF292
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0xb2
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF290
	.byte	0x1
	.byte	0xb2
	.long	0x57
	.uleb128 0x2d
	.long	.LASF293
	.byte	0x1
	.byte	0xb2
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x1809
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x1809
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x12
	.byte	0x0
	.uleb128 0xe
	.long	0x17f9
	.uleb128 0x2c
	.long	0x1876
	.long	.LASF294
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x91
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF295
	.byte	0x1
	.byte	0x91
	.long	0x57
	.uleb128 0x2d
	.long	.LASF296
	.byte	0x1
	.byte	0x91
	.long	0x57
	.uleb128 0x2d
	.long	.LASF293
	.byte	0x1
	.byte	0x91
	.long	0x57
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.long	0xf2
	.uleb128 0x30
	.long	.LASF298
	.byte	0x1
	.byte	0x94
	.long	0xf2
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.byte	0x95
	.long	0xf2
	.uleb128 0x2f
	.string	"is"
	.byte	0x1
	.byte	0x96
	.long	0x57
	.byte	0x0
	.uleb128 0x25
	.long	0x18d2
	.long	.LASF299
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.long	0x57
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF289
	.byte	0x1
	.byte	0xc3
	.long	0x17b6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF177
	.byte	0x1
	.byte	0xc3
	.long	0xda
	.byte	0x1
	.byte	0x50
	.uleb128 0x30
	.long	.LASF233
	.byte	0x1
	.byte	0xc5
	.long	0x2a2
	.uleb128 0x31
	.long	.LASF297
	.long	0x18e2
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7
	.byte	0x0
	.uleb128 0x9
	.long	0x18e2
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xb
	.byte	0x0
	.uleb128 0xe
	.long	0x18d2
	.uleb128 0x32
	.long	0x194c
	.long	.LASF300
	.byte	0x1
	.value	0x169
	.byte	0x1
	.long	0x57
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0x169
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.string	"chs"
	.byte	0x1
	.value	0x169
	.long	0x194c
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF301
	.byte	0x1
	.value	0x169
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.long	.LASF208
	.byte	0x1
	.value	0x16a
	.long	0x57
	.uleb128 0x35
	.long	.LASF209
	.byte	0x1
	.value	0x16a
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x106d
	.uleb128 0x32
	.long	0x1984
	.long	.LASF302
	.byte	0x1
	.value	0x1c8
	.byte	0x1
	.long	0xf8
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1c7
	.long	0x1984
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x198a
	.uleb128 0xe
	.long	0x1234
	.uleb128 0x32
	.long	0x19c1
	.long	.LASF304
	.byte	0x1
	.value	0x1ce
	.byte	0x1
	.long	0xf8
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1cd
	.long	0x1984
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x32
	.long	0x19f3
	.long	.LASF305
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0xf8
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1d2
	.long	0x1984
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x32
	.long	0x1a25
	.long	.LASF306
	.byte	0x1
	.value	0x1d8
	.byte	0x1
	.long	0xf8
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1d7
	.long	0x1984
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x1a57
	.long	.LASF307
	.byte	0x1
	.value	0x1de
	.byte	0x1
	.long	0xf8
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1dd
	.long	0x1984
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x32
	.long	0x1a89
	.long	.LASF308
	.byte	0x1
	.value	0x1e8
	.byte	0x1
	.long	0xf8
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1e7
	.long	0x1984
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x36
	.long	0x1ae0
	.long	.LASF309
	.byte	0x1
	.value	0x1f7
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x1f6
	.long	0x1ae0
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF232
	.byte	0x1
	.value	0x1f6
	.long	0x544
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.long	0x1ae6
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1234
	.uleb128 0x2c
	.long	0x1b01
	.long	.LASF310
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0x539
	.byte	0x3
	.uleb128 0x37
	.string	"v"
	.byte	0x2
	.byte	0x7b
	.long	0x539
	.byte	0x0
	.uleb128 0x32
	.long	0x1b96
	.long	.LASF311
	.byte	0x1
	.value	0x20b
	.byte	0x1
	.long	0x539
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF312
	.byte	0x1
	.value	0x20b
	.long	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF313
	.byte	0x1
	.value	0x20b
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.value	0x20c
	.long	0x1b96
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.string	"t1"
	.byte	0x1
	.value	0x210
	.long	0x55a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.long	0x1b7a
	.long	0x1ae6
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.uleb128 0x27
	.long	0x1ae6
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x55a
	.uleb128 0x32
	.long	0x1ded
	.long	.LASF314
	.byte	0x1
	.value	0x503
	.byte	0x1
	.long	0x57
	.quad	.LFB140
	.quad	.LFE140
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0x501
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF315
	.byte	0x1
	.value	0x501
	.long	0x2d0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x502
	.long	0xb62
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.long	.LASF316
	.byte	0x1
	.value	0x502
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0x504
	.long	0x1ded
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x505
	.long	0x57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3a
	.long	0x1d2a
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x3b
	.long	.LASF209
	.byte	0x1
	.value	0x51f
	.long	0x544
	.byte	0x1
	.byte	0x50
	.uleb128 0x35
	.long	.LASF317
	.byte	0x1
	.value	0x520
	.long	0x544
	.uleb128 0x35
	.long	.LASF318
	.byte	0x1
	.value	0x521
	.long	0x544
	.uleb128 0x39
	.long	0x1c76
	.long	0x1df3
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x28
	.long	0x1e05
	.uleb128 0x28
	.long	0x1e0f
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x3c
	.long	0x1e25
	.quad	.L107
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x3d
	.long	0x1e2e
	.uleb128 0x2b
	.long	0x1e3a
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x3d
	.long	0x1e47
	.uleb128 0x27
	.long	0x1e6b
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2a0
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x300
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x1d41
	.long	.Ldebug_ranges0+0x360
	.uleb128 0x38
	.string	"n"
	.byte	0x1
	.value	0x50b
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0x0
	.uleb128 0x39
	.long	0x1d65
	.long	0x1f45
	.quad	.LBB43
	.quad	.LBE43
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x1d84
	.long	0x1f8c
	.quad	.LBB61
	.quad	.LBE61
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x1dc4
	.long	0x1fa5
	.quad	.LBB63
	.quad	.LBE63
	.uleb128 0x28
	.long	0x1fb7
	.uleb128 0x28
	.long	0x1fc1
	.uleb128 0x3e
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x3d
	.long	0x1fd2
	.uleb128 0x3d
	.long	0x1fde
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x390
	.uleb128 0x2b
	.long	0x2024
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.long	0x1f8c
	.quad	.LBB74
	.quad	.LBE74
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x157b
	.uleb128 0x3f
	.long	0x1e56
	.long	.LASF319
	.byte	0x1
	.value	0x496
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x495
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF318
	.byte	0x1
	.value	0x495
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x1e66
	.byte	0x1
	.uleb128 0x42
	.long	.LASF348
	.byte	0x1
	.value	0x4b3
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF320
	.byte	0x1
	.value	0x498
	.long	0x57
	.uleb128 0x35
	.long	.LASF233
	.byte	0x1
	.value	0x499
	.long	0x133
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x49f
	.long	0x156f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x1e66
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x1e56
	.uleb128 0x3f
	.long	0x1eb6
	.long	.LASF321
	.byte	0x1
	.value	0x465
	.byte	0x1
	.long	0x156f
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x464
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF318
	.byte	0x1
	.value	0x464
	.long	0x57
	.uleb128 0x35
	.long	.LASF290
	.byte	0x1
	.value	0x466
	.long	0x57
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x467
	.long	0x156f
	.uleb128 0x2e
	.long	.LASF297
	.long	0x1ec6
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x1ec6
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x18
	.byte	0x0
	.uleb128 0xe
	.long	0x1eb6
	.uleb128 0x3f
	.long	0x1f30
	.long	.LASF322
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x449
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF318
	.byte	0x1
	.value	0x449
	.long	0x57
	.uleb128 0x41
	.long	.LASF323
	.byte	0x1
	.value	0x449
	.long	0x57
	.uleb128 0x41
	.long	.LASF324
	.byte	0x1
	.value	0x449
	.long	0x57
	.uleb128 0x35
	.long	.LASF325
	.byte	0x1
	.value	0x44b
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x1f40
	.byte	0x1
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x44d
	.long	0x156f
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x1f40
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x1c
	.byte	0x0
	.uleb128 0xe
	.long	0x1f30
	.uleb128 0x2c
	.long	0x1f77
	.long	.LASF326
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	0xda
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x5f
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF290
	.byte	0x1
	.byte	0x5f
	.long	0x3b
	.uleb128 0x2e
	.long	.LASF297
	.long	0x1f87
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.long	0x1f87
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x9
	.byte	0x0
	.uleb128 0xe
	.long	0x1f77
	.uleb128 0x44
	.long	0x1fa5
	.long	.LASF327
	.byte	0x1
	.value	0x43b
	.byte	0x1
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x43a
	.long	0x1ded
	.byte	0x0
	.uleb128 0x3f
	.long	0x2031
	.long	.LASF328
	.byte	0x1
	.value	0x485
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x484
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF254
	.byte	0x1
	.value	0x484
	.long	0x156f
	.uleb128 0x45
	.long	0x2023
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x489
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x489
	.long	0x2a2
	.uleb128 0x45
	.long	0x2008
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x489
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x489
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x489
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x489
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"fd"
	.byte	0x1
	.value	0x48b
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2037
	.uleb128 0xe
	.long	0x2d
	.uleb128 0x36
	.long	0x211d
	.long	.LASF334
	.byte	0x1
	.value	0x563
	.byte	0x1
	.quad	.LFB142
	.quad	.LFE142
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x561
	.long	0x1ded
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF263
	.byte	0x1
	.value	0x562
	.long	0x544
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF335
	.byte	0x1
	.value	0x562
	.long	0xf2
	.byte	0x1
	.byte	0x5f
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x564
	.long	0x211d
	.uleb128 0x39
	.long	0x20b1
	.long	0x2123
	.quad	.LBB105
	.quad	.LBE105
	.uleb128 0x29
	.long	0x2134
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x20c7
	.long	.Ldebug_ranges0+0x3c0
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	0x214a
	.byte	0x0
	.uleb128 0x39
	.long	0x20eb
	.long	0x2156
	.quad	.LBB110
	.quad	.LBE110
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x39
	.long	0x210f
	.long	0x1f45
	.quad	.LBB112
	.quad	.LBE112
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x400
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1691
	.uleb128 0x2c
	.long	0x2156
	.long	.LASF337
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0xda
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x73
	.long	0x17b6
	.uleb128 0x30
	.long	.LASF129
	.byte	0x1
	.byte	0x74
	.long	0x3b
	.uleb128 0x30
	.long	.LASF320
	.byte	0x1
	.byte	0x75
	.long	0xda
	.byte	0x0
	.uleb128 0x2c
	.long	0x218b
	.long	.LASF338
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x65
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF290
	.byte	0x1
	.byte	0x65
	.long	0x57
	.uleb128 0x43
	.uleb128 0x30
	.long	.LASF339
	.byte	0x1
	.byte	0x68
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x21b9
	.long	.LASF340
	.byte	0x1
	.value	0x58c
	.byte	0x1
	.quad	.LFB146
	.quad	.LFE146
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"lfn"
	.byte	0x1
	.value	0x58b
	.long	0x21b9
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x16f8
	.uleb128 0x32
	.long	0x2233
	.long	.LASF341
	.byte	0x1
	.value	0x594
	.byte	0x1
	.long	0x57
	.quad	.LFB147
	.quad	.LFE147
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"lfn"
	.byte	0x1
	.value	0x592
	.long	0x21b9
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF303
	.byte	0x1
	.value	0x593
	.long	0x1984
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x595
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0x595
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x3b
	.long	.LASF233
	.byte	0x1
	.value	0x595
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3b
	.long	.LASF177
	.byte	0x1
	.value	0x596
	.long	0x2031
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x2271
	.long	.LASF342
	.byte	0x1
	.value	0x608
	.byte	0x1
	.long	0x2ba
	.quad	.LFB151
	.quad	.LFE151
	.byte	0x1
	.byte	0x57
	.uleb128 0x34
	.long	.LASF248
	.byte	0x1
	.value	0x607
	.long	0x2ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x35
	.long	.LASF343
	.byte	0x1
	.value	0x609
	.long	0xf2
	.byte	0x0
	.uleb128 0x32
	.long	0x2d41
	.long	.LASF344
	.byte	0x1
	.value	0x6ba
	.byte	0x1
	.long	0x57
	.quad	.LFB153
	.quad	.LFE153
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x6b8
	.long	0x1ded
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.long	.LASF318
	.byte	0x1
	.value	0x6b9
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 164
	.uleb128 0x34
	.long	.LASF248
	.byte	0x1
	.value	0x6b9
	.long	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x6bb
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 148
	.uleb128 0x3b
	.long	.LASF263
	.byte	0x1
	.value	0x6bc
	.long	0x1575
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x35
	.long	.LASF345
	.byte	0x1
	.value	0x6bd
	.long	0x1ae0
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x6be
	.long	0x156f
	.uleb128 0x38
	.string	"lfn"
	.byte	0x1
	.value	0x6c0
	.long	0x16f8
	.byte	0x3
	.byte	0x91
	.sleb128 4272
	.uleb128 0x3b
	.long	.LASF346
	.byte	0x1
	.value	0x6c1
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 132
	.uleb128 0x3b
	.long	.LASF347
	.byte	0x1
	.value	0x6c2
	.long	0x2d41
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x31
	.long	.LASF297
	.long	0x2d62
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5
	.uleb128 0x47
	.long	.LASF349
	.byte	0x1
	.value	0x6fa
	.quad	.L253
	.uleb128 0x39
	.long	0x23e6
	.long	0x1e6b
	.quad	.LBB126
	.quad	.LBE126
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x430
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB128
	.quad	.LBE128
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x470
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x4b0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB131
	.quad	.LBE131
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x258b
	.long	.Ldebug_ranges0+0x4f0
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x6da
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3b
	.long	.LASF350
	.byte	0x1
	.value	0x6db
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x5b0
	.uleb128 0x3b
	.long	.LASF259
	.byte	0x1
	.value	0x6f0
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.long	0x2509
	.long	0x2d67
	.quad	.LBB137
	.quad	.LBE137
	.uleb128 0x28
	.long	0x2d79
	.uleb128 0x28
	.long	0x2d83
	.uleb128 0x28
	.long	0x2d8f
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x680
	.uleb128 0x2b
	.long	0x2d9b
	.byte	0x3
	.byte	0x91
	.sleb128 108
	.uleb128 0x2b
	.long	0x2da7
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x2b
	.long	0x2db3
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0x2b
	.long	0x2dbf
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x2b
	.long	0x2dcb
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x2b
	.long	0x2dd7
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x2b
	.long	0x2de3
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2b
	.long	0x2def
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x27
	.long	0x1e6b
	.quad	.LBB139
	.quad	.LBE139
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x760
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB141
	.quad	.LBE141
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x5a
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x7e0
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x850
	.uleb128 0x3d
	.long	0x1f22
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x2f43
	.quad	.LBB146
	.quad	.LBE146
	.uleb128 0x28
	.long	0x2f51
	.uleb128 0x29
	.long	0x2f5b
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x28
	.long	0x2f67
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x8c0
	.uleb128 0x3d
	.long	0x2f73
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB148
	.quad	.LBE148
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x910
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB150
	.quad	.LBE150
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x25af
	.long	0x1f45
	.quad	.LBB164
	.quad	.LBE164
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x3a
	.long	0x25f3
	.long	.Ldebug_ranges0+0x960
	.uleb128 0x3b
	.long	.LASF343
	.byte	0x1
	.value	0x6ca
	.long	0x2ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x3b
	.long	.LASF351
	.byte	0x1
	.value	0x6cb
	.long	0x2ba
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x9a0
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x6d2
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x6d2
	.long	0x2a2
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2617
	.long	0x2f80
	.quad	.LBB172
	.quad	.LBE172
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.uleb128 0x39
	.long	0x2636
	.long	0x2fa9
	.quad	.LBB177
	.quad	.LBE177
	.uleb128 0x28
	.long	0x2fbb
	.byte	0x0
	.uleb128 0x39
	.long	0x265a
	.long	0x2fc8
	.quad	.LBB179
	.quad	.LBE179
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x39
	.long	0x267e
	.long	0x302d
	.quad	.LBB181
	.quad	.LBE181
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x3a
	.long	0x268f
	.long	.Ldebug_ranges0+0x9d0
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x26ce
	.long	0x3056
	.quad	.LBB191
	.quad	.LBE191
	.uleb128 0x28
	.long	0x3068
	.uleb128 0x3e
	.quad	.LBB192
	.quad	.LBE192
	.uleb128 0x2b
	.long	0x3074
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x3080
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2739
	.long	0x308b
	.quad	.LBB193
	.quad	.LBE193
	.uleb128 0x28
	.long	0x309d
	.uleb128 0x28
	.long	0x30a7
	.uleb128 0x29
	.long	0x30b3
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xa00
	.uleb128 0x2b
	.long	0x30bf
	.byte	0x1
	.byte	0x58
	.uleb128 0x2b
	.long	0x30c9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x48
	.long	0x272a
	.quad	.LBB195
	.quad	.LBE195
	.uleb128 0x2b
	.long	0x30d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xa40
	.uleb128 0x2b
	.long	0x30f4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x2793
	.quad	.LBB199
	.quad	.LBE199
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x705
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x705
	.long	0x2a2
	.uleb128 0x3e
	.quad	.LBB200
	.quad	.LBE200
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x705
	.long	0x2031
	.uleb128 0x3b
	.long	.LASF332
	.byte	0x1
	.value	0x705
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x27ed
	.quad	.LBB201
	.quad	.LBE201
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x706
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x706
	.long	0x2a2
	.uleb128 0x3e
	.quad	.LBB202
	.quad	.LBE202
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x706
	.long	0x2031
	.uleb128 0x3b
	.long	.LASF332
	.byte	0x1
	.value	0x706
	.long	0x57
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x280c
	.long	0x3110
	.quad	.LBB203
	.quad	.LBE203
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x48
	.long	0x2842
	.quad	.LBB209
	.quad	.LBE209
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB210
	.quad	.LBE210
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x285d
	.quad	.LBB212
	.quad	.LBE212
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x39
	.long	0x287c
	.long	0x3110
	.quad	.LBB234
	.quad	.LBE234
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x39
	.long	0x289b
	.long	0x1f8c
	.quad	.LBB240
	.quad	.LBE240
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x2935
	.long	0x1e6b
	.quad	.LBB244
	.quad	.LBE244
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xa80
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB246
	.quad	.LBE246
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xad0
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xb10
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB249
	.quad	.LBE249
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2956
	.long	.Ldebug_ranges0+0xb50
	.uleb128 0x2b
	.long	0x2f0a
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x2f14
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x2b
	.long	0x2f20
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x39
	.long	0x2975
	.long	0x312f
	.quad	.LBB254
	.quad	.LBE254
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.uleb128 0x39
	.long	0x2999
	.long	0x1f45
	.quad	.LBB266
	.quad	.LBE266
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x48
	.long	0x29c4
	.quad	.LBB270
	.quad	.LBE270
	.uleb128 0x3d
	.long	0x2eaa
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xb80
	.uleb128 0x3d
	.long	0x2eb7
	.uleb128 0x3d
	.long	0x2ec3
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x29e8
	.long	0x2156
	.quad	.LBB278
	.quad	.LBE278
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x39
	.long	0x2a0c
	.long	0x2fc8
	.quad	.LBB289
	.quad	.LBE289
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x39
	.long	0x2a30
	.long	0x302d
	.quad	.LBB291
	.quad	.LBE291
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x2a9d
	.long	0x314a
	.quad	.LBB295
	.quad	.LBE295
	.uleb128 0x28
	.long	0x315c
	.uleb128 0x28
	.long	0x3166
	.uleb128 0x3e
	.quad	.LBB296
	.quad	.LBE296
	.uleb128 0x2b
	.long	0x3172
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x317e
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x3188
	.byte	0x3
	.byte	0x91
	.sleb128 172
	.uleb128 0x27
	.long	0x2f80
	.quad	.LBB297
	.quad	.LBE297
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2ac1
	.long	0x1f45
	.quad	.LBB306
	.quad	.LBE306
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x2b6e
	.long	0x3195
	.quad	.LBB319
	.quad	.LBE319
	.uleb128 0x28
	.long	0x31a3
	.uleb128 0x28
	.long	0x31ad
	.uleb128 0x29
	.long	0x31b9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3a
	.long	0x2b17
	.long	.Ldebug_ranges0+0xbb0
	.uleb128 0x3d
	.long	0x31c5
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB321
	.quad	.LBE321
	.uleb128 0x29
	.long	0x2134
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2b4d
	.long	.Ldebug_ranges0+0xc00
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x27
	.long	0x2156
	.quad	.LBB325
	.quad	.LBE325
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB332
	.quad	.LBE332
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2b7f
	.long	.Ldebug_ranges0+0xc40
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x2bb5
	.quad	.LBB344
	.quad	.LBE344
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB345
	.quad	.LBE345
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2bd9
	.long	0x2f80
	.quad	.LBB347
	.quad	.LBE347
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.uleb128 0x39
	.long	0x2bf8
	.long	0x1f8c
	.quad	.LBB349
	.quad	.LBE349
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x3a
	.long	0x2c09
	.long	.Ldebug_ranges0+0xc70
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x39
	.long	0x2c2d
	.long	0x1f45
	.quad	.LBB372
	.quad	.LBE372
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x3a
	.long	0x2c5a
	.long	.Ldebug_ranges0+0xca0
	.uleb128 0x2b
	.long	0x2e0a
	.byte	0x1
	.byte	0x55
	.uleb128 0x3e
	.quad	.LBB377
	.quad	.LBE377
	.uleb128 0x3d
	.long	0x2e1b
	.uleb128 0x3d
	.long	0x2e27
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2d07
	.long	0x31d2
	.quad	.LBB389
	.quad	.LBE389
	.uleb128 0x28
	.long	0x31e0
	.uleb128 0x29
	.long	0x31ea
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x28
	.long	0x31f6
	.uleb128 0x3a
	.long	0x2cc2
	.long	.Ldebug_ranges0+0xce0
	.uleb128 0x3d
	.long	0x3202
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB391
	.quad	.LBE391
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xd20
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3d
	.long	0x214a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x2ce6
	.long	0x2156
	.quad	.LBB396
	.quad	.LBE396
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB398
	.quad	.LBE398
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x2d18
	.long	.Ldebug_ranges0+0xd60
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3a
	.long	0x2d29
	.long	.Ldebug_ranges0+0xd90
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB434
	.quad	.LBE434
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x2d52
	.long	0xf8
	.uleb128 0x16
	.long	0xc8
	.value	0xfff
	.byte	0x0
	.uleb128 0x9
	.long	0x2d62
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x1b
	.byte	0x0
	.uleb128 0xe
	.long	0x2d52
	.uleb128 0x3f
	.long	0x2f2e
	.long	.LASF352
	.byte	0x1
	.value	0x627
	.byte	0x1
	.long	0x544
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x625
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF303
	.byte	0x1
	.value	0x626
	.long	0x1ae0
	.uleb128 0x41
	.long	.LASF248
	.byte	0x1
	.value	0x626
	.long	0x2ba
	.uleb128 0x35
	.long	.LASF353
	.byte	0x1
	.value	0x639
	.long	0x57
	.uleb128 0x35
	.long	.LASF354
	.byte	0x1
	.value	0x63a
	.long	0x57
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.value	0x63b
	.long	0x2c5
	.uleb128 0x35
	.long	.LASF318
	.byte	0x1
	.value	0x63d
	.long	0x544
	.uleb128 0x35
	.long	.LASF233
	.byte	0x1
	.value	0x63e
	.long	0x544
	.uleb128 0x35
	.long	.LASF246
	.byte	0x1
	.value	0x63f
	.long	0x57
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x640
	.long	0x156f
	.uleb128 0x35
	.long	.LASF351
	.byte	0x1
	.value	0x641
	.long	0x2ba
	.uleb128 0x2e
	.long	.LASF297
	.long	0x2f3e
	.byte	0x1
	.uleb128 0x45
	.long	0x2e87
	.uleb128 0x35
	.long	.LASF343
	.byte	0x1
	.value	0x650
	.long	0x2ba
	.uleb128 0x45
	.long	0x2e6c
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x65a
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x65a
	.long	0x2a2
	.uleb128 0x45
	.long	0x2e51
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x65a
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x65a
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x65a
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x65a
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF355
	.byte	0x1
	.value	0x65b
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF356
	.byte	0x1
	.value	0x65b
	.long	0xf2
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.long	0x2ea5
	.uleb128 0x35
	.long	.LASF355
	.byte	0x1
	.value	0x65e
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF356
	.byte	0x1
	.value	0x65e
	.long	0xf2
	.byte	0x0
	.uleb128 0x45
	.long	0x2f09
	.uleb128 0x35
	.long	.LASF343
	.byte	0x1
	.value	0x678
	.long	0x2ba
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x67a
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x67a
	.long	0x2a2
	.uleb128 0x45
	.long	0x2eed
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x67a
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x67a
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x67a
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x67a
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x68e
	.long	0x57
	.uleb128 0x35
	.long	.LASF357
	.byte	0x1
	.value	0x68e
	.long	0x57
	.uleb128 0x35
	.long	.LASF233
	.byte	0x1
	.value	0x693
	.long	0x2d0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x2f3e
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x1e
	.byte	0x0
	.uleb128 0xe
	.long	0x2f2e
	.uleb128 0x44
	.long	0x2f80
	.long	.LASF358
	.byte	0x1
	.value	0x56c
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x56a
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF245
	.byte	0x1
	.value	0x56b
	.long	0x57
	.uleb128 0x41
	.long	.LASF273
	.byte	0x1
	.value	0x56b
	.long	0x544
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x56d
	.long	0x211d
	.byte	0x0
	.uleb128 0x3f
	.long	0x2fa9
	.long	.LASF359
	.byte	0x1
	.value	0x338
	.byte	0x1
	.long	0x133
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x337
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF318
	.byte	0x1
	.value	0x337
	.long	0x544
	.byte	0x0
	.uleb128 0x3f
	.long	0x2fc8
	.long	.LASF360
	.byte	0x1
	.value	0x1e3
	.byte	0x1
	.long	0xf8
	.byte	0x3
	.uleb128 0x41
	.long	.LASF303
	.byte	0x1
	.value	0x1e2
	.long	0x1984
	.byte	0x0
	.uleb128 0x3f
	.long	0x3021
	.long	.LASF361
	.byte	0x1
	.value	0x5e4
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x5e2
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF263
	.byte	0x1
	.value	0x5e3
	.long	0x3b
	.uleb128 0x45
	.long	0x3002
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x5ed
	.long	0x3021
	.byte	0x0
	.uleb128 0x45
	.long	0x3014
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x5f0
	.long	0x3027
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"x"
	.byte	0x1
	.value	0x5f3
	.long	0x60c
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x6
	.byte	0x8
	.long	0x539
	.uleb128 0x3f
	.long	0x3056
	.long	.LASF363
	.byte	0x1
	.value	0x240
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x23f
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF364
	.byte	0x1
	.value	0x23f
	.long	0x544
	.byte	0x0
	.uleb128 0x3f
	.long	0x308b
	.long	.LASF365
	.byte	0x1
	.value	0x1ff
	.byte	0x1
	.long	0x52e
	.byte	0x3
	.uleb128 0x41
	.long	.LASF362
	.byte	0x1
	.value	0x1fe
	.long	0x1984
	.uleb128 0x35
	.long	.LASF366
	.byte	0x1
	.value	0x200
	.long	0x52e
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x201
	.long	0x57
	.byte	0x0
	.uleb128 0x3f
	.long	0x3110
	.long	.LASF367
	.byte	0x1
	.value	0x5be
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x5bc
	.long	0x1ded
	.uleb128 0x40
	.string	"lfn"
	.byte	0x1
	.value	0x5bd
	.long	0x21b9
	.uleb128 0x41
	.long	.LASF303
	.byte	0x1
	.value	0x5bd
	.long	0x1ae0
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x5bf
	.long	0x57
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x5bf
	.long	0x57
	.uleb128 0x45
	.long	0x30f3
	.uleb128 0x35
	.long	.LASF368
	.byte	0x1
	.value	0x5c9
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"__c"
	.byte	0x1
	.value	0x5c9
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF368
	.byte	0x1
	.value	0x5d6
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"__c"
	.byte	0x1
	.value	0x5d6
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x312f
	.long	.LASF369
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x41
	.long	.LASF303
	.byte	0x1
	.value	0x1ec
	.long	0x1984
	.byte	0x0
	.uleb128 0x2c
	.long	0x314a
	.long	.LASF370
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x37
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x544
	.byte	0x0
	.uleb128 0x3f
	.long	0x3195
	.long	.LASF371
	.byte	0x1
	.value	0x5f9
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x5f8
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF318
	.byte	0x1
	.value	0x5f8
	.long	0x544
	.uleb128 0x35
	.long	.LASF354
	.byte	0x1
	.value	0x5fa
	.long	0x57
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x5fb
	.long	0x57
	.uleb128 0x35
	.long	.LASF357
	.byte	0x1
	.value	0x5fb
	.long	0x57
	.byte	0x0
	.uleb128 0x44
	.long	0x31d2
	.long	.LASF372
	.byte	0x1
	.value	0x57e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x57d
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF263
	.byte	0x1
	.value	0x57d
	.long	0x544
	.uleb128 0x41
	.long	.LASF248
	.byte	0x1
	.value	0x57d
	.long	0xf2
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x57f
	.long	0x211d
	.byte	0x0
	.uleb128 0x44
	.long	0x320f
	.long	.LASF373
	.byte	0x1
	.value	0x576
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x574
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF248
	.byte	0x1
	.value	0x575
	.long	0xf2
	.uleb128 0x41
	.long	.LASF274
	.byte	0x1
	.value	0x575
	.long	0x544
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x577
	.long	0x211d
	.byte	0x0
	.uleb128 0x32
	.long	0x3431
	.long	.LASF374
	.byte	0x1
	.value	0x792
	.byte	0x1
	.long	0x156f
	.quad	.LFB156
	.quad	.LFE156
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x790
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF232
	.byte	0x1
	.value	0x791
	.long	0x544
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x791
	.long	0x544
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF290
	.byte	0x1
	.value	0x79a
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x3b
	.long	.LASF254
	.byte	0x1
	.value	0x79b
	.long	0x156f
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.long	.LASF375
	.byte	0x1
	.value	0x79c
	.long	0x156f
	.uleb128 0x39
	.long	0x32b5
	.long	0x1ecb
	.quad	.LBB440
	.quad	.LBE440
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x3a
	.long	0x32f1
	.long	.Ldebug_ranges0+0xdc0
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xe10
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB444
	.quad	.LBE444
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x3317
	.long	0x1f45
	.quad	.LBB446
	.quad	.LBE446
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x333b
	.long	0x1f45
	.quad	.LBB456
	.quad	.LBE456
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x335f
	.long	0x1f45
	.quad	.LBB460
	.quad	.LBE460
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3383
	.long	0x1f45
	.quad	.LBB464
	.quad	.LBE464
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x33c3
	.long	0x3431
	.quad	.LBB466
	.quad	.LBE466
	.uleb128 0x28
	.long	0x3442
	.uleb128 0x28
	.long	0x344d
	.uleb128 0x28
	.long	0x3458
	.uleb128 0x3e
	.quad	.LBB468
	.quad	.LBE468
	.uleb128 0x3d
	.long	0x3464
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x33f9
	.long	0x3471
	.quad	.LBB469
	.quad	.LBE469
	.uleb128 0x28
	.long	0x347f
	.uleb128 0x28
	.long	0x3489
	.uleb128 0x28
	.long	0x3495
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xe60
	.uleb128 0x2b
	.long	0x34a1
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB473
	.quad	.LBE473
	.uleb128 0x3d
	.long	0x34ac
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB474
	.quad	.LBE474
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3471
	.long	.LASF376
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	0xda
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x80
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF290
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.uleb128 0x2d
	.long	.LASF293
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.uleb128 0x43
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.byte	0x82
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.long	0x34ba
	.long	.LASF378
	.byte	0x1
	.value	0x77f
	.byte	0x1
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x77d
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF233
	.byte	0x1
	.value	0x77e
	.long	0x57
	.uleb128 0x41
	.long	.LASF379
	.byte	0x1
	.value	0x77e
	.long	0x57
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x780
	.long	0x57
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x783
	.long	0x156f
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x35f3
	.long	.LASF380
	.byte	0x1
	.value	0x7ba
	.byte	0x1
	.long	0x57
	.quad	.LFB157
	.quad	.LFE157
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x7b9
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF381
	.byte	0x1
	.value	0x7b9
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x7bb
	.long	0x156f
	.uleb128 0x35
	.long	.LASF375
	.byte	0x1
	.value	0x7bc
	.long	0x156f
	.uleb128 0x39
	.long	0x3533
	.long	0x1f45
	.quad	.LBB483
	.quad	.LBE483
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3557
	.long	0x1f45
	.quad	.LBB486
	.quad	.LBE486
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x35d0
	.long	0x3471
	.quad	.LBB492
	.quad	.LBE492
	.uleb128 0x28
	.long	0x347f
	.uleb128 0x28
	.long	0x3489
	.uleb128 0x28
	.long	0x3495
	.uleb128 0x3e
	.quad	.LBB493
	.quad	.LBE493
	.uleb128 0x2b
	.long	0x34a1
	.byte	0x1
	.byte	0x52
	.uleb128 0x3e
	.quad	.LBB494
	.quad	.LBE494
	.uleb128 0x3d
	.long	0x34ac
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB495
	.quad	.LBE495
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB497
	.quad	.LBE497
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x3679
	.long	.LASF382
	.byte	0x1
	.value	0x7d0
	.byte	0x1
	.quad	.LFB158
	.quad	.LFE158
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x7cf
	.long	0x1ded
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF233
	.byte	0x1
	.value	0x7cf
	.long	0x57
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF379
	.byte	0x1
	.value	0x7cf
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x7d1
	.long	0x57
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xe90
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x7d3
	.long	0x156f
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB502
	.quad	.LBE502
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x3709
	.long	.LASF383
	.byte	0x1
	.value	0x7de
	.byte	0x1
	.long	0x1ae0
	.quad	.LFB159
	.quad	.LFE159
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x7dc
	.long	0x1ded
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x7dd
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF293
	.byte	0x1
	.value	0x7dd
	.long	0x57
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.long	.LASF320
	.byte	0x1
	.value	0x7e3
	.long	0x1ae0
	.uleb128 0x39
	.long	0x36fb
	.long	0x3431
	.quad	.LBB507
	.quad	.LBE507
	.uleb128 0x29
	.long	0x3442
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	0x344d
	.uleb128 0x28
	.long	0x3458
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xec0
	.uleb128 0x2b
	.long	0x3464
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x37dd
	.long	.LASF384
	.byte	0x1
	.value	0x7eb
	.byte	0x1
	.long	0x57
	.quad	.LFB160
	.quad	.LFE160
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x7ea
	.long	0x1ded
	.byte	0x1
	.byte	0x5e
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x7ea
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF293
	.byte	0x1
	.value	0x7ea
	.long	0x57
	.byte	0x1
	.byte	0x5c
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.value	0x7ec
	.long	0x57
	.uleb128 0x39
	.long	0x378b
	.long	0x17bc
	.quad	.LBB518
	.quad	.LBE518
	.uleb128 0x29
	.long	0x17cd
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	0x17d8
	.uleb128 0x28
	.long	0x17e3
	.byte	0x0
	.uleb128 0x27
	.long	0x180e
	.quad	.LBB522
	.quad	.LBE522
	.uleb128 0x28
	.long	0x181f
	.uleb128 0x29
	.long	0x182a
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.long	0x1835
	.uleb128 0x28
	.long	0x1840
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xef0
	.uleb128 0x2b
	.long	0x184b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2b
	.long	0x1856
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	0x1861
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.long	0x186b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x3c26
	.long	.LASF385
	.byte	0x1
	.value	0x7fb
	.byte	0x1
	.long	0x57
	.quad	.LFB161
	.quad	.LFE161
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x7f9
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF274
	.byte	0x1
	.value	0x7fa
	.long	0x544
	.byte	0x1
	.byte	0x5c
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x7fa
	.long	0x57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x3b
	.long	.LASF254
	.byte	0x1
	.value	0x7fc
	.long	0x156f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x7fd
	.long	0x1ae0
	.uleb128 0x3b
	.long	.LASF263
	.byte	0x1
	.value	0x7fe
	.long	0x544
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.long	.LASF297
	.long	0x3c36
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.12
	.uleb128 0x39
	.long	0x38c6
	.long	0x1e6b
	.quad	.LBB532
	.quad	.LBE532
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xf30
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB534
	.quad	.LBE534
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x3902
	.long	.Ldebug_ranges0+0xf90
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xfd0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB540
	.quad	.LBE540
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x39c0
	.long	.Ldebug_ranges0+0x1010
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.value	0x80a
	.long	0x544
	.byte	0x1
	.byte	0x5f
	.uleb128 0x38
	.string	"c1"
	.byte	0x1
	.value	0x80a
	.long	0x544
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x10b0
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x81c
	.long	0x57
	.uleb128 0x3b
	.long	.LASF386
	.byte	0x1
	.value	0x81d
	.long	0x156f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x39
	.long	0x398b
	.long	0x1ecb
	.quad	.LBB544
	.quad	.LBE544
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1140
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x11a0
	.uleb128 0x3d
	.long	0x1f22
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1200
	.uleb128 0x38
	.string	"i1"
	.byte	0x1
	.value	0x821
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB548
	.quad	.LBE548
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x39e4
	.long	0x1f45
	.quad	.LBB561
	.quad	.LBE561
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3a0a
	.long	0x1f45
	.quad	.LBB565
	.quad	.LBE565
	.uleb128 0x29
	.long	0x1f56
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3a29
	.long	0x1f8c
	.quad	.LBB570
	.quad	.LBE570
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x3a4d
	.long	0x302d
	.quad	.LBB574
	.quad	.LBE574
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x3a71
	.long	0x2fc8
	.quad	.LBB577
	.quad	.LBE577
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x39
	.long	0x3a95
	.long	0x2fc8
	.quad	.LBB581
	.quad	.LBE581
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x39
	.long	0x3abb
	.long	0x1f45
	.quad	.LBB585
	.quad	.LBE585
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x3adf
	.long	0x302d
	.quad	.LBB587
	.quad	.LBE587
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x3b03
	.long	0x1f45
	.quad	.LBB593
	.quad	.LBE593
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3b27
	.long	0x1f45
	.quad	.LBB595
	.quad	.LBE595
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x3a
	.long	0x3b38
	.long	.Ldebug_ranges0+0x1290
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x3b6e
	.quad	.LBB606
	.quad	.LBE606
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB607
	.quad	.LBE607
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x3b7f
	.long	.Ldebug_ranges0+0x12c0
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x3b9a
	.quad	.LBB614
	.quad	.LBE614
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x48
	.long	0x3bd8
	.quad	.LBB615
	.quad	.LBE615
	.uleb128 0x3b
	.long	.LASF290
	.byte	0x1
	.value	0x811
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x812
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3b
	.long	.LASF387
	.byte	0x1
	.value	0x812
	.long	0x57
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x48
	.long	0x3c0e
	.quad	.LBB631
	.quad	.LBE631
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB632
	.quad	.LBE632
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB634
	.quad	.LBE634
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x3c36
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.long	0x3c26
	.uleb128 0x32
	.long	0x41de
	.long	.LASF388
	.byte	0x1
	.value	0x848
	.byte	0x1
	.long	0x57
	.quad	.LFB162
	.quad	.LFE162
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x846
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x847
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x34
	.long	.LASF234
	.byte	0x1
	.value	0x847
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3b
	.long	.LASF303
	.byte	0x1
	.value	0x849
	.long	0x1ae0
	.byte	0x1
	.byte	0x50
	.uleb128 0x3b
	.long	.LASF274
	.byte	0x1
	.value	0x84a
	.long	0x544
	.byte	0x1
	.byte	0x5e
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x84b
	.long	0x156f
	.uleb128 0x35
	.long	.LASF389
	.byte	0x1
	.value	0x84d
	.long	0x57
	.uleb128 0x3b
	.long	.LASF390
	.byte	0x1
	.value	0x84e
	.long	0x57
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.long	.LASF391
	.byte	0x1
	.value	0x84e
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3b
	.long	.LASF392
	.byte	0x1
	.value	0x84f
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3b
	.long	.LASF235
	.byte	0x1
	.value	0x850
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x851
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x851
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.value	0x852
	.long	0x544
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF297
	.long	0x41ee
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.11
	.uleb128 0x39
	.long	0x3d55
	.long	0x1f45
	.quad	.LBB664
	.quad	.LBE664
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3def
	.long	0x1e6b
	.quad	.LBB669
	.quad	.LBE669
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x12f0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB671
	.quad	.LBE671
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1330
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1370
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB674
	.quad	.LBE674
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x3e69
	.long	0x1e6b
	.quad	.LBB676
	.quad	.LBE676
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x13b0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB678
	.quad	.LBE678
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1430
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1490
	.uleb128 0x3d
	.long	0x1f22
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x3e88
	.long	0x3110
	.quad	.LBB681
	.quad	.LBE681
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x39
	.long	0x3eac
	.long	0x1f45
	.quad	.LBB685
	.quad	.LBE685
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3ed0
	.long	0x1f45
	.quad	.LBB697
	.quad	.LBE697
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x3ef4
	.long	0x302d
	.quad	.LBB701
	.quad	.LBE701
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x3a
	.long	0x3f5c
	.long	.Ldebug_ranges0+0x14f0
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x877
	.long	0xda
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x878
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x3f3b
	.long	0x1f45
	.quad	.LBB704
	.quad	.LBE704
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x27
	.long	0x2f80
	.quad	.LBB706
	.quad	.LBE706
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x3f80
	.long	0x2fc8
	.quad	.LBB716
	.quad	.LBE716
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x3a
	.long	0x3f91
	.long	.Ldebug_ranges0+0x1530
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x3fc7
	.quad	.LBB726
	.quad	.LBE726
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB727
	.quad	.LBE727
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x3fe2
	.quad	.LBB729
	.quad	.LBE729
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x39
	.long	0x4006
	.long	0x302d
	.quad	.LBB735
	.quad	.LBE735
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x402a
	.long	0x41f3
	.quad	.LBB737
	.quad	.LBE737
	.uleb128 0x28
	.long	0x4205
	.uleb128 0x28
	.long	0x420f
	.byte	0x0
	.uleb128 0x3a
	.long	0x403b
	.long	.Ldebug_ranges0+0x1560
	.uleb128 0x2b
	.long	0x4240
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x405f
	.long	0x302d
	.quad	.LBB744
	.quad	.LBE744
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x4083
	.long	0x2fc8
	.quad	.LBB746
	.quad	.LBE746
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x48
	.long	0x40dd
	.quad	.LBB750
	.quad	.LBE750
	.uleb128 0x3d
	.long	0x4220
	.uleb128 0x39
	.long	0x40c1
	.long	0x1f45
	.quad	.LBB751
	.quad	.LBE751
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB753
	.quad	.LBE753
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x4118
	.quad	.LBB759
	.quad	.LBE759
	.uleb128 0x3d
	.long	0x4232
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB760
	.quad	.LBE760
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4129
	.long	.Ldebug_ranges0+0x1590
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x415f
	.quad	.LBB774
	.quad	.LBE774
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB775
	.quad	.LBE775
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x417a
	.quad	.LBB781
	.quad	.LBE781
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x39
	.long	0x419e
	.long	0x1f45
	.quad	.LBB782
	.quad	.LBE782
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x41bd
	.long	0x2fa9
	.quad	.LBB784
	.quad	.LBE784
	.uleb128 0x28
	.long	0x2fbb
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB791
	.quad	.LBE791
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x41ee
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x11
	.byte	0x0
	.uleb128 0xe
	.long	0x41de
	.uleb128 0x3f
	.long	0x424c
	.long	.LASF393
	.byte	0x1
	.value	0x232
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x231
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF263
	.byte	0x1
	.value	0x231
	.long	0x3b
	.uleb128 0x45
	.long	0x422d
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x234
	.long	0x3021
	.byte	0x0
	.uleb128 0x45
	.long	0x423f
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x237
	.long	0x3027
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"x"
	.byte	0x1
	.value	0x23a
	.long	0x60c
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x45fb
	.long	.LASF394
	.byte	0x1
	.value	0x898
	.byte	0x1
	.long	0x57
	.quad	.LFB163
	.quad	.LFE163
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x896
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x34
	.long	.LASF245
	.byte	0x1
	.value	0x897
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x34
	.long	.LASF233
	.byte	0x1
	.value	0x897
	.long	0x544
	.byte	0x1
	.byte	0x5f
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x899
	.long	0x1ae0
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.value	0x89a
	.long	0x544
	.byte	0x1
	.byte	0x5d
	.uleb128 0x35
	.long	.LASF274
	.byte	0x1
	.value	0x89b
	.long	0x544
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x89c
	.long	0x156f
	.uleb128 0x35
	.long	.LASF178
	.byte	0x1
	.value	0x89d
	.long	0x544
	.uleb128 0x3b
	.long	.LASF263
	.byte	0x1
	.value	0x89e
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x89f
	.long	0x544
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"fd"
	.byte	0x1
	.value	0x8a0
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF297
	.long	0x45fb
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.14
	.uleb128 0x39
	.long	0x4337
	.long	0x1f45
	.quad	.LBB801
	.quad	.LBE801
	.uleb128 0x29
	.long	0x1f56
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4399
	.long	0x1e6b
	.quad	.LBB804
	.quad	.LBE804
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x15c0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB806
	.quad	.LBE806
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x43b8
	.long	0x3110
	.quad	.LBB817
	.quad	.LBE817
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x3a
	.long	0x43f4
	.long	.Ldebug_ranges0+0x1670
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x16d0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB824
	.quad	.LBE824
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4425
	.long	.Ldebug_ranges0+0x1730
	.uleb128 0x46
	.string	"c1"
	.byte	0x1
	.value	0x8b3
	.long	0x544
	.uleb128 0x3b
	.long	.LASF395
	.byte	0x1
	.value	0x8b4
	.long	0x57
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x8b6
	.long	0x57
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x4449
	.long	0x1f45
	.quad	.LBB829
	.quad	.LBE829
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4486
	.long	0x4600
	.quad	.LBB847
	.quad	.LBE847
	.uleb128 0x28
	.long	0x4612
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB849
	.quad	.LBE849
	.uleb128 0x29
	.long	0x3140
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x44aa
	.long	0x2fc8
	.quad	.LBB850
	.quad	.LBE850
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x3a
	.long	0x44bb
	.long	.Ldebug_ranges0+0x17f0
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x44df
	.long	0x2fc8
	.quad	.LBB859
	.quad	.LBE859
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x39
	.long	0x4503
	.long	0x302d
	.quad	.LBB861
	.quad	.LBE861
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x39
	.long	0x4527
	.long	0x2f80
	.quad	.LBB863
	.quad	.LBE863
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.uleb128 0x3a
	.long	0x4538
	.long	.Ldebug_ranges0+0x1830
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x455c
	.long	0x302d
	.quad	.LBB871
	.quad	.LBE871
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x48
	.long	0x4592
	.quad	.LBB875
	.quad	.LBE875
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB876
	.quad	.LBE876
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x45ad
	.quad	.LBB878
	.quad	.LBE878
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x48
	.long	0x45e3
	.quad	.LBB887
	.quad	.LBE887
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB888
	.quad	.LBE888
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB890
	.quad	.LBE890
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x3c26
	.uleb128 0x3f
	.long	0x461f
	.long	.LASF396
	.byte	0x1
	.value	0x1f2
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x41
	.long	.LASF303
	.byte	0x1
	.value	0x1f1
	.long	0x1984
	.byte	0x0
	.uleb128 0x32
	.long	0x509e
	.long	.LASF397
	.byte	0x1
	.value	0xa47
	.byte	0x1
	.long	0x57
	.quad	.LFB168
	.quad	.LFE168
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0xa46
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x466d
	.long	0x1f8c
	.quad	.LBB903
	.quad	.LBE903
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x46a7
	.long	0x509e
	.quad	.LBB905
	.quad	.LBE905
	.uleb128 0x28
	.long	0x50b0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1860
	.uleb128 0x2b
	.long	0x50ba
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x50c4
	.byte	0x1
	.byte	0x59
	.uleb128 0x2b
	.long	0x50d0
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x46cd
	.long	0x511c
	.quad	.LBB911
	.quad	.LBE911
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x39
	.long	0x4728
	.long	0x5145
	.quad	.LBB915
	.quad	.LBE915
	.uleb128 0x28
	.long	0x5153
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x18f0
	.uleb128 0x2b
	.long	0x515d
	.byte	0x1
	.byte	0x53
	.uleb128 0x3a
	.long	0x4706
	.long	.Ldebug_ranges0+0x1940
	.uleb128 0x3d
	.long	0x5172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB919
	.quad	.LBE919
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x4763
	.quad	.LBB923
	.quad	.LBE923
	.uleb128 0x3d
	.long	0x50f9
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB924
	.quad	.LBE924
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x4787
	.long	0x511c
	.quad	.LBB926
	.quad	.LBE926
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x28
	.long	0x5138
	.byte	0x0
	.uleb128 0x39
	.long	0x47ab
	.long	0x2fc8
	.quad	.LBB933
	.quad	.LBE933
	.uleb128 0x28
	.long	0x2fda
	.uleb128 0x28
	.long	0x2fe4
	.byte	0x0
	.uleb128 0x3a
	.long	0x47bc
	.long	.Ldebug_ranges0+0x1990
	.uleb128 0x2b
	.long	0x3015
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x48
	.long	0x47d7
	.quad	.LBB947
	.quad	.LBE947
	.uleb128 0x3d
	.long	0x50eb
	.byte	0x0
	.uleb128 0x39
	.long	0x492b
	.long	0x5185
	.quad	.LBB952
	.quad	.LBE952
	.uleb128 0x28
	.long	0x5197
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x19c0
	.uleb128 0x2b
	.long	0x51a1
	.byte	0x1
	.byte	0x50
	.uleb128 0x39
	.long	0x4820
	.long	0x1f8c
	.quad	.LBB954
	.quad	.LBE954
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x27
	.long	0x51bd
	.quad	.LBB956
	.quad	.LBE956
	.uleb128 0x28
	.long	0x51cf
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1a30
	.uleb128 0x2b
	.long	0x51d9
	.byte	0x3
	.byte	0x91
	.sleb128 180
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1b10
	.uleb128 0x3d
	.long	0x51ee
	.uleb128 0x39
	.long	0x4876
	.long	0x1f45
	.quad	.LBB959
	.quad	.LBE959
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1bf0
	.uleb128 0x3d
	.long	0x51ff
	.uleb128 0x2b
	.long	0x520b
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x27
	.long	0x1e6b
	.quad	.LBB962
	.quad	.LBE962
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x29
	.long	0x1e87
	.byte	0x1
	.byte	0x59
	.uleb128 0x3a
	.long	0x48ec
	.long	.Ldebug_ranges0+0x1cc0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB964
	.quad	.LBE964
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1d10
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1d50
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB969
	.quad	.LBE969
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x4961
	.quad	.LBB975
	.quad	.LBE975
	.uleb128 0x3d
	.long	0x2ff5
	.uleb128 0x27
	.long	0x312f
	.quad	.LBB976
	.quad	.LBE976
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x497c
	.quad	.LBB978
	.quad	.LBE978
	.uleb128 0x3d
	.long	0x3007
	.byte	0x0
	.uleb128 0x39
	.long	0x4a18
	.long	0x5375
	.quad	.LBB981
	.quad	.LBE981
	.uleb128 0x28
	.long	0x5387
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1d90
	.uleb128 0x2b
	.long	0x5391
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	0x539b
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x2b
	.long	0x53a7
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1df0
	.uleb128 0x3d
	.long	0x53b4
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1e50
	.uleb128 0x3d
	.long	0x53c1
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1eb0
	.uleb128 0x2b
	.long	0x53ce
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x53d8
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	0x53e4
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1f00
	.uleb128 0x3d
	.long	0x53f1
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB987
	.quad	.LBE987
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4a9b
	.long	.Ldebug_ranges0+0x1f30
	.uleb128 0x2b
	.long	0x5218
	.byte	0x3
	.byte	0x91
	.sleb128 156
	.uleb128 0x2b
	.long	0x5223
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x522e
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x3d
	.long	0x523a
	.uleb128 0x2b
	.long	0x5246
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.long	0x5250
	.byte	0x3
	.byte	0x91
	.sleb128 140
	.uleb128 0x27
	.long	0x41f3
	.quad	.LBB994
	.quad	.LBE994
	.uleb128 0x28
	.long	0x4205
	.uleb128 0x28
	.long	0x420f
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x1fc0
	.uleb128 0x3d
	.long	0x4220
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB997
	.quad	.LBE997
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x4ac1
	.long	0x511c
	.quad	.LBB1001
	.quad	.LBE1001
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x39
	.long	0x4c00
	.long	0x5400
	.quad	.LBB1013
	.quad	.LBE1013
	.uleb128 0x28
	.long	0x5412
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2000
	.uleb128 0x2b
	.long	0x541c
	.byte	0x3
	.byte	0x91
	.sleb128 116
	.uleb128 0x2b
	.long	0x5426
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.uleb128 0x39
	.long	0x4b15
	.long	0x1f8c
	.quad	.LBB1015
	.quad	.LBE1015
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2120
	.uleb128 0x3d
	.long	0x543d
	.uleb128 0x39
	.long	0x4b43
	.long	0x1f45
	.quad	.LBB1018
	.quad	.LBE1018
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2230
	.uleb128 0x2b
	.long	0x5474
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	0x5480
	.byte	0x1
	.byte	0x58
	.uleb128 0x3d
	.long	0x548c
	.uleb128 0x2b
	.long	0x5498
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.long	0x4bc4
	.long	0x1e6b
	.quad	.LBB1021
	.quad	.LBE1021
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x22f0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB1023
	.quad	.LBE1023
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2380
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x23f0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1029
	.quad	.LBE1029
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4c19
	.long	.Ldebug_ranges0+0x2460
	.uleb128 0x3d
	.long	0x544e
	.uleb128 0x3d
	.long	0x545a
	.uleb128 0x3d
	.long	0x5466
	.byte	0x0
	.uleb128 0x39
	.long	0x4c3d
	.long	0x1f45
	.quad	.LBB1076
	.quad	.LBE1076
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4c61
	.long	0x1f45
	.quad	.LBB1080
	.quad	.LBE1080
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4c80
	.long	0x3110
	.quad	.LBB1082
	.quad	.LBE1082
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x39
	.long	0x4cfd
	.long	0x17bc
	.quad	.LBB1084
	.quad	.LBE1084
	.uleb128 0x29
	.long	0x17cd
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x28
	.long	0x17d8
	.uleb128 0x28
	.long	0x17e3
	.uleb128 0x27
	.long	0x180e
	.quad	.LBB1086
	.quad	.LBE1086
	.uleb128 0x28
	.long	0x181f
	.uleb128 0x29
	.long	0x182a
	.byte	0x1
	.byte	0x5e
	.uleb128 0x28
	.long	0x1835
	.uleb128 0x28
	.long	0x1840
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x24c0
	.uleb128 0x2b
	.long	0x184b
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x2b
	.long	0x1856
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x1861
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.long	0x186b
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x4d21
	.long	0x1f45
	.quad	.LBB1092
	.quad	.LBE1092
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4d47
	.long	0x1f45
	.quad	.LBB1095
	.quad	.LBE1095
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x4d6b
	.long	0x1f45
	.quad	.LBB1121
	.quad	.LBE1121
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4dcd
	.long	0x1e6b
	.quad	.LBB1123
	.quad	.LBE1123
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2500
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB1125
	.quad	.LBE1125
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x4dec
	.long	0x3110
	.quad	.LBB1131
	.quad	.LBE1131
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x3a
	.long	0x4e28
	.long	.Ldebug_ranges0+0x2560
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x25a0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1138
	.quad	.LBE1138
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x4e4c
	.long	0x1f45
	.quad	.LBB1149
	.quad	.LBE1149
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x4e72
	.long	0x1f45
	.quad	.LBB1154
	.quad	.LBE1154
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x39
	.long	0x4e96
	.long	0x302d
	.quad	.LBB1159
	.quad	.LBE1159
	.uleb128 0x28
	.long	0x303f
	.uleb128 0x28
	.long	0x3049
	.byte	0x0
	.uleb128 0x3a
	.long	0x4fba
	.long	.Ldebug_ranges0+0x25e0
	.uleb128 0x2b
	.long	0x525b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x39
	.long	0x4ec5
	.long	0x2fa9
	.quad	.LBB1162
	.quad	.LBE1162
	.uleb128 0x28
	.long	0x2fbb
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2620
	.uleb128 0x3d
	.long	0x5266
	.uleb128 0x3d
	.long	0x5270
	.uleb128 0x2b
	.long	0x527a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.long	0x1e6b
	.quad	.LBB1165
	.quad	.LBE1165
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x39
	.long	0x4f19
	.long	0x3110
	.quad	.LBB1166
	.quad	.LBE1166
	.uleb128 0x28
	.long	0x3122
	.byte	0x0
	.uleb128 0x3a
	.long	0x4f5b
	.long	.Ldebug_ranges0+0x2660
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB1169
	.quad	.LBE1169
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4f97
	.long	.Ldebug_ranges0+0x26b0
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x26e0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1180
	.quad	.LBE1180
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1182
	.quad	.LBE1182
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x4fcb
	.long	.Ldebug_ranges0+0x2710
	.uleb128 0x2b
	.long	0x4240
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x5023
	.long	.Ldebug_ranges0+0x2740
	.uleb128 0x2b
	.long	0x52dd
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x2b
	.long	0x52e9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	0x52f3
	.byte	0x1
	.byte	0x50
	.uleb128 0x3e
	.quad	.LBB1190
	.quad	.LBE1190
	.uleb128 0x3d
	.long	0x5300
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1191
	.quad	.LBE1191
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5047
	.long	0x1f45
	.quad	.LBB1251
	.quad	.LBE1251
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x5066
	.long	0x312f
	.quad	.LBB1269
	.quad	.LBE1269
	.uleb128 0x28
	.long	0x3140
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB1298
	.quad	.LBE1298
	.uleb128 0x3d
	.long	0x4232
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1299
	.quad	.LBE1299
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x5107
	.long	.LASF398
	.byte	0x1
	.value	0x734
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x733
	.long	0x1ded
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x735
	.long	0x57
	.uleb128 0x35
	.long	.LASF399
	.byte	0x1
	.value	0x735
	.long	0x57
	.uleb128 0x35
	.long	.LASF400
	.byte	0x1
	.value	0x736
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x5117
	.byte	0x1
	.uleb128 0x45
	.long	0x50f8
	.uleb128 0x35
	.long	.LASF178
	.byte	0x1
	.value	0x747
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x75b
	.long	0x156f
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x5117
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xd
	.byte	0x0
	.uleb128 0xe
	.long	0x5107
	.uleb128 0x3f
	.long	0x5145
	.long	.LASF401
	.byte	0x1
	.value	0x333
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x332
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF315
	.byte	0x1
	.value	0x332
	.long	0x133
	.byte	0x0
	.uleb128 0x44
	.long	0x5180
	.long	.LASF402
	.byte	0x1
	.value	0x552
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x551
	.long	0x1ded
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x553
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x5180
	.byte	0x1
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x556
	.long	0x211d
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x5107
	.uleb128 0x3f
	.long	0x51b8
	.long	.LASF403
	.byte	0x1
	.value	0xa15
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0xa14
	.long	0x1ded
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.value	0xa16
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x51b8
	.byte	0x1
	.byte	0x0
	.uleb128 0xe
	.long	0x1f77
	.uleb128 0x3f
	.long	0x5360
	.long	.LASF404
	.byte	0x1
	.value	0x918
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x917
	.long	0x1ded
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x919
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x5370
	.byte	0x1
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x924
	.long	0x211d
	.uleb128 0x45
	.long	0x52dc
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x926
	.long	0x156f
	.uleb128 0x35
	.long	.LASF405
	.byte	0x1
	.value	0x928
	.long	0xf2
	.uleb128 0x43
	.uleb128 0x46
	.string	"l1"
	.byte	0x1
	.value	0x930
	.long	0x57
	.uleb128 0x46
	.string	"l2"
	.byte	0x1
	.value	0x931
	.long	0x57
	.uleb128 0x35
	.long	.LASF406
	.byte	0x1
	.value	0x932
	.long	0x57
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x933
	.long	0x1ae0
	.uleb128 0x46
	.string	"c"
	.byte	0x1
	.value	0x935
	.long	0x544
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x936
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"d"
	.byte	0x1
	.value	0x93b
	.long	0x1ae0
	.uleb128 0x43
	.uleb128 0x46
	.string	"m"
	.byte	0x1
	.value	0x93e
	.long	0x156f
	.uleb128 0x46
	.string	"l"
	.byte	0x1
	.value	0x940
	.long	0x57
	.uleb128 0x35
	.long	.LASF335
	.byte	0x1
	.value	0x941
	.long	0xf2
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x943
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x943
	.long	0x2a2
	.uleb128 0x45
	.long	0x52bd
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x943
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x943
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x943
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x943
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x954
	.long	0x156f
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x955
	.long	0x57
	.uleb128 0x35
	.long	.LASF407
	.byte	0x1
	.value	0x955
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"m"
	.byte	0x1
	.value	0x970
	.long	0x156f
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x972
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x972
	.long	0x2a2
	.uleb128 0x45
	.long	0x5341
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x972
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x972
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x972
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x972
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x5370
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x19
	.byte	0x0
	.uleb128 0xe
	.long	0x5360
	.uleb128 0x3f
	.long	0x5400
	.long	.LASF408
	.byte	0x1
	.value	0x9d2
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x9d1
	.long	0x1ded
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x9d3
	.long	0x57
	.uleb128 0x35
	.long	.LASF409
	.byte	0x1
	.value	0x9d3
	.long	0x57
	.uleb128 0x35
	.long	.LASF410
	.byte	0x1
	.value	0x9d3
	.long	0x57
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x9dc
	.long	0x156f
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x9de
	.long	0x1ae0
	.uleb128 0x43
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x9e4
	.long	0x57
	.uleb128 0x35
	.long	.LASF411
	.byte	0x1
	.value	0x9e4
	.long	0x57
	.uleb128 0x35
	.long	.LASF235
	.byte	0x1
	.value	0x9e5
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"m"
	.byte	0x1
	.value	0x9f0
	.long	0x156f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.long	0x54a5
	.long	.LASF412
	.byte	0x1
	.value	0x986
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x985
	.long	0x1ded
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x987
	.long	0x57
	.uleb128 0x35
	.long	.LASF349
	.byte	0x1
	.value	0x987
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x54b5
	.byte	0x1
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF336
	.byte	0x1
	.value	0x98c
	.long	0x211d
	.uleb128 0x45
	.long	0x5473
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x993
	.long	0x1ae0
	.uleb128 0x35
	.long	.LASF232
	.byte	0x1
	.value	0x995
	.long	0x544
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x996
	.long	0x156f
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF232
	.byte	0x1
	.value	0x9a3
	.long	0x57
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x9a4
	.long	0x156f
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x9a5
	.long	0x1ae0
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x9a6
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x54b5
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xe
	.byte	0x0
	.uleb128 0xe
	.long	0x54a5
	.uleb128 0x32
	.long	0x5763
	.long	.LASF413
	.byte	0x1
	.value	0xa51
	.byte	0x1
	.long	0x57
	.quad	.LFB169
	.quad	.LFE169
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0xa4f
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF315
	.byte	0x1
	.value	0xa4f
	.long	0x2d0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0xa50
	.long	0x60c
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x34
	.long	.LASF316
	.byte	0x1
	.value	0xa50
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0xa52
	.long	0x1ded
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xa53
	.long	0x57
	.byte	0x1
	.byte	0x59
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0xa53
	.long	0x57
	.byte	0x1
	.byte	0x56
	.uleb128 0x39
	.long	0x555b
	.long	0x1f8c
	.quad	.LBB1347
	.quad	.LBE1347
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x557f
	.long	0x511c
	.quad	.LBB1351
	.quad	.LBE1351
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x28
	.long	0x5138
	.byte	0x0
	.uleb128 0x39
	.long	0x55a5
	.long	0x511c
	.quad	.LBB1353
	.quad	.LBE1353
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x3a
	.long	0x56d4
	.long	.Ldebug_ranges0+0x27a0
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0xa64
	.long	0x156f
	.uleb128 0x39
	.long	0x5654
	.long	0x1e6b
	.quad	.LBB1359
	.quad	.LBE1359
	.uleb128 0x28
	.long	0x1e7d
	.uleb128 0x28
	.long	0x1e87
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x27f0
	.uleb128 0x3d
	.long	0x1e93
	.uleb128 0x3d
	.long	0x1e9f
	.uleb128 0x27
	.long	0x1ecb
	.quad	.LBB1361
	.quad	.LBE1361
	.uleb128 0x28
	.long	0x1edd
	.uleb128 0x28
	.long	0x1ee7
	.uleb128 0x29
	.long	0x1ef3
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.long	0x1eff
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2870
	.uleb128 0x2b
	.long	0x1f0b
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x28c0
	.uleb128 0x3d
	.long	0x1f22
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1364
	.quad	.LBE1364
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2910
	.uleb128 0x3b
	.long	.LASF232
	.byte	0x1
	.value	0xa6d
	.long	0x57
	.byte	0x1
	.byte	0x5d
	.uleb128 0x38
	.string	"end"
	.byte	0x1
	.value	0xa6e
	.long	0x57
	.byte	0x1
	.byte	0x5e
	.uleb128 0x38
	.string	"k"
	.byte	0x1
	.value	0xa6e
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x3b
	.long	.LASF245
	.byte	0x1
	.value	0xa6f
	.long	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3b
	.long	.LASF345
	.byte	0x1
	.value	0xa70
	.long	0x1984
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.string	"lfn"
	.byte	0x1
	.value	0xa71
	.long	0x16f8
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1367
	.quad	.LBE1367
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x56f8
	.long	0x511c
	.quad	.LBB1376
	.quad	.LBE1376
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x28
	.long	0x5138
	.byte	0x0
	.uleb128 0x39
	.long	0x571e
	.long	0x511c
	.quad	.LBB1378
	.quad	.LBE1378
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x39
	.long	0x5742
	.long	0x1f45
	.quad	.LBB1404
	.quad	.LBE1404
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x27
	.long	0x2f80
	.quad	.LBB1416
	.quad	.LBE1416
	.uleb128 0x28
	.long	0x2f92
	.uleb128 0x28
	.long	0x2f9c
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x57c8
	.long	.LASF414
	.byte	0x1
	.value	0xaad
	.byte	0x1
	.long	0x57
	.quad	.LFB170
	.quad	.LFE170
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0xaab
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF315
	.byte	0x1
	.value	0xaac
	.long	0x2d0
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF316
	.byte	0x1
	.value	0xaac
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0xaac
	.long	0x2ad
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0xaae
	.long	0x1ded
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x32
	.long	0x582f
	.long	.LASF415
	.byte	0x1
	.value	0xab8
	.byte	0x1
	.long	0x57
	.quad	.LFB171
	.quad	.LFE171
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0xab7
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.long	.LASF315
	.byte	0x1
	.value	0xab7
	.long	0x2d0
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	.LASF416
	.byte	0x1
	.value	0xab8
	.long	0x60c
	.byte	0x1
	.byte	0x51
	.uleb128 0x34
	.long	.LASF316
	.byte	0x1
	.value	0xab8
	.long	0x57
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0xab9
	.long	0x1ded
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x36
	.long	0x5868
	.long	.LASF417
	.byte	0x1
	.value	0xabd
	.byte	0x1
	.quad	.LFB172
	.quad	.LFE172
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0xabd
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0xabe
	.long	0x1ded
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x32
	.long	0x58ec
	.long	.LASF418
	.byte	0x1
	.value	0xacb
	.byte	0x1
	.long	0x57
	.quad	.LFB173
	.quad	.LFE173
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0xaca
	.long	0x1ded
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.long	.LASF178
	.byte	0x1
	.value	0xacc
	.long	0x57
	.uleb128 0x39
	.long	0x58c9
	.long	0x511c
	.quad	.LBB1435
	.quad	.LBE1435
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x27
	.long	0x58ec
	.quad	.LBB1438
	.quad	.LBE1438
	.uleb128 0x29
	.long	0x58f9
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.long	0x5904
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.long	0x5910
	.long	.LASF419
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x4f
	.long	0x17b6
	.uleb128 0x2d
	.long	.LASF179
	.byte	0x1
	.byte	0x4f
	.long	0x3b
	.byte	0x0
	.uleb128 0x32
	.long	0x6879
	.long	.LASF420
	.byte	0x1
	.value	0x3e3
	.byte	0x1
	.long	0x57
	.quad	.LFB133
	.quad	.LFE133
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0x3e2
	.long	0xb37
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x34
	.long	.LASF421
	.byte	0x1
	.value	0x3e2
	.long	0x2ba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x34
	.long	.LASF185
	.byte	0x1
	.value	0x3e2
	.long	0x57
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0x3e4
	.long	0x1ded
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x3b
	.long	.LASF422
	.byte	0x1
	.value	0x3e5
	.long	0x57
	.byte	0x3
	.byte	0x91
	.sleb128 124
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x3e6
	.long	0x57
	.byte	0x1
	.byte	0x50
	.uleb128 0x31
	.long	.LASF297
	.long	0x6889
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.16
	.uleb128 0x39
	.long	0x59e4
	.long	0x688e
	.quad	.LBB1441
	.quad	.LBE1441
	.uleb128 0x28
	.long	0x68a0
	.uleb128 0x28
	.long	0x68aa
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2990
	.uleb128 0x2b
	.long	0x68b6
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x68c2
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	0x68ce
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x2b
	.long	0x68d8
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x5a49
	.long	.Ldebug_ranges0+0x2a30
	.uleb128 0x3d
	.long	0x68f3
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB1446
	.quad	.LBE1446
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2a80
	.uleb128 0x3d
	.long	0x213f
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x27
	.long	0x2156
	.quad	.LBB1448
	.quad	.LBE1448
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2ad0
	.uleb128 0x3d
	.long	0x217e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5a6d
	.long	0x58ec
	.quad	.LBB1451
	.quad	.LBE1451
	.uleb128 0x28
	.long	0x58f9
	.uleb128 0x28
	.long	0x5904
	.byte	0x0
	.uleb128 0x39
	.long	0x5a91
	.long	0x58ec
	.quad	.LBB1462
	.quad	.LBE1462
	.uleb128 0x28
	.long	0x58f9
	.uleb128 0x28
	.long	0x5904
	.byte	0x0
	.uleb128 0x39
	.long	0x5af6
	.long	0x6960
	.quad	.LBB1474
	.quad	.LBE1474
	.uleb128 0x28
	.long	0x696e
	.uleb128 0x39
	.long	0x5ad5
	.long	0x58ec
	.quad	.LBB1476
	.quad	.LBE1476
	.uleb128 0x28
	.long	0x58f9
	.uleb128 0x29
	.long	0x5904
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x27
	.long	0x2156
	.quad	.LBB1480
	.quad	.LBE1480
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5b1c
	.long	0x511c
	.quad	.LBB1485
	.quad	.LBE1485
	.uleb128 0x28
	.long	0x512e
	.uleb128 0x29
	.long	0x5138
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x39
	.long	0x5b91
	.long	0x2123
	.quad	.LBB1489
	.quad	.LBE1489
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2b40
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x39
	.long	0x5b6f
	.long	0x2156
	.quad	.LBB1491
	.quad	.LBE1491
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1493
	.quad	.LBE1493
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x5e9c
	.long	.Ldebug_ranges0+0x2b70
	.uleb128 0x2b
	.long	0x691f
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.long	0x6929
	.byte	0x3
	.byte	0x91
	.sleb128 116
	.uleb128 0x39
	.long	0x5bce
	.long	0x1f45
	.quad	.LBB1498
	.quad	.LBE1498
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x27
	.long	0x6979
	.quad	.LBB1502
	.quad	.LBE1502
	.uleb128 0x28
	.long	0x698b
	.uleb128 0x28
	.long	0x6995
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2c60
	.uleb128 0x3d
	.long	0x69a1
	.uleb128 0x3d
	.long	0x69ad
	.uleb128 0x2b
	.long	0x69b9
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x2b
	.long	0x69c5
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x2b
	.long	0x69d1
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x69dd
	.byte	0x1
	.byte	0x50
	.uleb128 0x2b
	.long	0x69e9
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x2b
	.long	0x69f5
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x2b
	.long	0x6a01
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	0x6a0d
	.uleb128 0x39
	.long	0x5c5e
	.long	0x1f45
	.quad	.LBB1504
	.quad	.LBE1504
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x5c82
	.long	0x1f45
	.quad	.LBB1506
	.quad	.LBE1506
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2d40
	.uleb128 0x2b
	.long	0x6a26
	.byte	0x1
	.byte	0x52
	.uleb128 0x2b
	.long	0x6a32
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x3d
	.long	0x6a3e
	.uleb128 0x2b
	.long	0x6a4a
	.byte	0x3
	.byte	0x91
	.sleb128 416
	.uleb128 0x2b
	.long	0x6a55
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x2b
	.long	0x6a61
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x3a
	.long	0x5cdb
	.long	.Ldebug_ranges0+0x2de0
	.uleb128 0x3d
	.long	0x6a72
	.uleb128 0x3d
	.long	0x6a7e
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2e10
	.uleb128 0x3d
	.long	0x6aa9
	.uleb128 0x2b
	.long	0x6ab5
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x5d19
	.quad	.LBB1513
	.quad	.LBE1513
	.uleb128 0x3d
	.long	0x6ac4
	.uleb128 0x3d
	.long	0x6ad0
	.uleb128 0x3e
	.quad	.LBB1514
	.quad	.LBE1514
	.uleb128 0x3d
	.long	0x6afb
	.uleb128 0x2b
	.long	0x6b07
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5d3d
	.long	0x6b48
	.quad	.LBB1515
	.quad	.LBE1515
	.uleb128 0x28
	.long	0x6b5b
	.uleb128 0x28
	.long	0x6b67
	.byte	0x0
	.uleb128 0x39
	.long	0x5e08
	.long	0x6b7a
	.quad	.LBB1517
	.quad	.LBE1517
	.uleb128 0x28
	.long	0x6b8c
	.uleb128 0x28
	.long	0x6b96
	.uleb128 0x28
	.long	0x6ba2
	.uleb128 0x28
	.long	0x6bae
	.uleb128 0x3a
	.long	0x5d96
	.long	.Ldebug_ranges0+0x2e40
	.uleb128 0x2b
	.long	0x6bba
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	0x6bc4
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x6bce
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x3d
	.long	0x6bda
	.uleb128 0x2b
	.long	0x6be6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB1521
	.quad	.LBE1521
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2ee0
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x39
	.long	0x5de5
	.long	0x2156
	.quad	.LBB1523
	.quad	.LBE1523
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1527
	.quad	.LBE1527
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5e27
	.long	0x6c29
	.quad	.LBB1531
	.quad	.LBE1531
	.uleb128 0x28
	.long	0x6c3a
	.byte	0x0
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB1532
	.quad	.LBE1532
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2f10
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x39
	.long	0x5e76
	.long	0x2156
	.quad	.LBB1534
	.quad	.LBE1534
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1536
	.quad	.LBE1536
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5ec0
	.long	0x1f45
	.quad	.LBB1546
	.quad	.LBE1546
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x5ffe
	.long	0x6c44
	.quad	.LBB1559
	.quad	.LBE1559
	.uleb128 0x28
	.long	0x6c56
	.uleb128 0x28
	.long	0x6c60
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2f40
	.uleb128 0x2b
	.long	0x6c6c
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x3d
	.long	0x6c78
	.uleb128 0x2b
	.long	0x6c84
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2b
	.long	0x6c90
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	0x6c9a
	.uleb128 0x39
	.long	0x5f4b
	.long	0x6cc6
	.quad	.LBB1561
	.quad	.LBE1561
	.uleb128 0x28
	.long	0x6cd8
	.uleb128 0x28
	.long	0x6ce4
	.uleb128 0x3e
	.quad	.LBB1562
	.quad	.LBE1562
	.uleb128 0x2b
	.long	0x6cf0
	.byte	0x1
	.byte	0x52
	.uleb128 0x3d
	.long	0x6cfa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5f9c
	.long	0x2123
	.quad	.LBB1563
	.quad	.LBE1563
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2f80
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1565
	.quad	.LBE1565
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x5fcd
	.long	0x2156
	.quad	.LBB1571
	.quad	.LBE1571
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2fb0
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x2fe0
	.uleb128 0x2b
	.long	0x6ca7
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1578
	.quad	.LBE1578
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x603b
	.quad	.LBB1586
	.quad	.LBE1586
	.uleb128 0x3d
	.long	0x6936
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1587
	.quad	.LBE1587
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6098
	.long	0x6d07
	.quad	.LBB1594
	.quad	.LBE1594
	.uleb128 0x28
	.long	0x6d15
	.uleb128 0x28
	.long	0x6d1f
	.uleb128 0x29
	.long	0x6d2b
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x3030
	.uleb128 0x2b
	.long	0x6d5c
	.byte	0x1
	.byte	0x50
	.uleb128 0x3d
	.long	0x6d68
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1597
	.quad	.LBE1597
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x60d3
	.quad	.LBB1604
	.quad	.LBE1604
	.uleb128 0x3d
	.long	0x6d3c
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1605
	.quad	.LBE1605
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6137
	.long	0x6d07
	.quad	.LBB1607
	.quad	.LBE1607
	.uleb128 0x28
	.long	0x6d15
	.uleb128 0x29
	.long	0x6d1f
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	0x6d2b
	.byte	0x1
	.byte	0x58
	.uleb128 0x3e
	.quad	.LBB1609
	.quad	.LBE1609
	.uleb128 0x3d
	.long	0x6d3c
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1610
	.quad	.LBE1610
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x615b
	.long	0x1f45
	.quad	.LBB1612
	.quad	.LBE1612
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x6186
	.long	0x6d07
	.quad	.LBB1614
	.quad	.LBE1614
	.uleb128 0x28
	.long	0x6d15
	.uleb128 0x28
	.long	0x6d1f
	.uleb128 0x29
	.long	0x6d2b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x48
	.long	0x61c6
	.quad	.LBB1617
	.quad	.LBE1617
	.uleb128 0x3d
	.long	0x6d5c
	.uleb128 0x3d
	.long	0x6d68
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1618
	.quad	.LBE1618
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6221
	.long	0x6d07
	.quad	.LBB1620
	.quad	.LBE1620
	.uleb128 0x28
	.long	0x6d15
	.uleb128 0x28
	.long	0x6d1f
	.uleb128 0x29
	.long	0x6d2b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x3070
	.uleb128 0x3d
	.long	0x6d5c
	.uleb128 0x3d
	.long	0x6d68
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1624
	.quad	.LBE1624
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6242
	.long	0x1ae6
	.quad	.LBB1626
	.quad	.LBE1626
	.uleb128 0x29
	.long	0x1af7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x6261
	.long	0x1ae6
	.quad	.LBB1627
	.quad	.LBE1627
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.uleb128 0x39
	.long	0x6282
	.long	0x6c29
	.quad	.LBB1629
	.quad	.LBE1629
	.uleb128 0x29
	.long	0x6c3a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x62a1
	.long	0x1ae6
	.quad	.LBB1630
	.quad	.LBE1630
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.uleb128 0x39
	.long	0x62c0
	.long	0x1ae6
	.quad	.LBB1632
	.quad	.LBE1632
	.uleb128 0x28
	.long	0x1af7
	.byte	0x0
	.uleb128 0x39
	.long	0x62df
	.long	0x6c29
	.quad	.LBB1635
	.quad	.LBE1635
	.uleb128 0x28
	.long	0x6c3a
	.byte	0x0
	.uleb128 0x3a
	.long	0x62f0
	.long	.Ldebug_ranges0+0x3100
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x3a
	.long	0x6301
	.long	.Ldebug_ranges0+0x3130
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x39
	.long	0x6325
	.long	0x58ec
	.quad	.LBB1666
	.quad	.LBE1666
	.uleb128 0x28
	.long	0x58f9
	.uleb128 0x28
	.long	0x5904
	.byte	0x0
	.uleb128 0x39
	.long	0x6349
	.long	0x2156
	.quad	.LBB1669
	.quad	.LBE1669
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x48
	.long	0x6364
	.quad	.LBB1674
	.quad	.LBE1674
	.uleb128 0x3d
	.long	0x217e
	.byte	0x0
	.uleb128 0x3a
	.long	0x6375
	.long	.Ldebug_ranges0+0x3160
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x48
	.long	0x6392
	.quad	.LBB1691
	.quad	.LBE1691
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x3a
	.long	0x63c8
	.long	.Ldebug_ranges0+0x3190
	.uleb128 0x2b
	.long	0x6d5c
	.byte	0x1
	.byte	0x50
	.uleb128 0x3d
	.long	0x6d68
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1697
	.quad	.LBE1697
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x63ee
	.long	0x1f45
	.quad	.LBB1710
	.quad	.LBE1710
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x6463
	.long	0x2123
	.quad	.LBB1717
	.quad	.LBE1717
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x31c0
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x39
	.long	0x6441
	.long	0x2156
	.quad	.LBB1719
	.quad	.LBE1719
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1721
	.quad	.LBE1721
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x649b
	.long	.Ldebug_ranges0+0x31f0
	.uleb128 0x2b
	.long	0x6bf7
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	0x6c03
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1726
	.quad	.LBE1726
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x64b8
	.quad	.LBB1742
	.quad	.LBE1742
	.uleb128 0x2b
	.long	0x6c0e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x3a
	.long	0x64c9
	.long	.Ldebug_ranges0+0x3220
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x48
	.long	0x6504
	.quad	.LBB1761
	.quad	.LBE1761
	.uleb128 0x3d
	.long	0x6d4e
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1762
	.quad	.LBE1762
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x653f
	.quad	.LBB1768
	.quad	.LBE1768
	.uleb128 0x3d
	.long	0x6d3c
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1769
	.quad	.LBE1769
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x657a
	.quad	.LBB1774
	.quad	.LBE1774
	.uleb128 0x3d
	.long	0x6d3c
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1775
	.quad	.LBE1775
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x65b5
	.quad	.LBB1785
	.quad	.LBE1785
	.uleb128 0x3d
	.long	0x6d4e
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1786
	.quad	.LBE1786
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.long	0x65f0
	.quad	.LBB1790
	.quad	.LBE1790
	.uleb128 0x3d
	.long	0x6d4e
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1791
	.quad	.LBE1791
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x661f
	.long	.Ldebug_ranges0+0x3250
	.uleb128 0x3d
	.long	0x6d4e
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1800
	.quad	.LBE1800
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6695
	.long	0x6d74
	.quad	.LBB1802
	.quad	.LBE1802
	.uleb128 0x28
	.long	0x6d82
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x3280
	.uleb128 0x3d
	.long	0x6d8c
	.uleb128 0x2b
	.long	0x6d98
	.byte	0x1
	.byte	0x56
	.uleb128 0x2b
	.long	0x6da4
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x6676
	.long	0x6c29
	.quad	.LBB1804
	.quad	.LBE1804
	.uleb128 0x29
	.long	0x6c3a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.long	0x6c29
	.quad	.LBB1806
	.quad	.LBE1806
	.uleb128 0x29
	.long	0x6c3a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x66f1
	.long	.Ldebug_ranges0+0x32b0
	.uleb128 0x3d
	.long	0x6b1b
	.uleb128 0x27
	.long	0x2123
	.quad	.LBB1813
	.quad	.LBE1813
	.uleb128 0x28
	.long	0x2134
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x32e0
	.uleb128 0x2b
	.long	0x213f
	.byte	0x1
	.byte	0x53
	.uleb128 0x3d
	.long	0x214a
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1815
	.quad	.LBE1815
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6722
	.long	0x2156
	.quad	.LBB1822
	.quad	.LBE1822
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x3310
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0x6775
	.long	.Ldebug_ranges0+0x3340
	.uleb128 0x3d
	.long	0x6b29
	.uleb128 0x39
	.long	0x6754
	.long	0x2156
	.quad	.LBB1829
	.quad	.LBE1829
	.uleb128 0x28
	.long	0x2167
	.uleb128 0x28
	.long	0x2172
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1831
	.quad	.LBE1831
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x6799
	.long	0x1f45
	.quad	.LBB1837
	.quad	.LBE1837
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x39
	.long	0x67bf
	.long	0x1f45
	.quad	.LBB1841
	.quad	.LBE1841
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x29
	.long	0x1f61
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x39
	.long	0x67e3
	.long	0x1f45
	.quad	.LBB1844
	.quad	.LBE1844
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.uleb128 0x48
	.long	0x685f
	.quad	.LBB1853
	.quad	.LBE1853
	.uleb128 0x2b
	.long	0x6c1b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x39
	.long	0x683e
	.long	0x3056
	.quad	.LBB1854
	.quad	.LBE1854
	.uleb128 0x28
	.long	0x3068
	.uleb128 0x3e
	.quad	.LBB1855
	.quad	.LBE1855
	.uleb128 0x2b
	.long	0x3074
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	0x3080
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x1f45
	.quad	.LBB1856
	.quad	.LBE1856
	.uleb128 0x28
	.long	0x1f56
	.uleb128 0x28
	.long	0x1f61
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.quad	.LBB1916
	.quad	.LBE1916
	.uleb128 0x2b
	.long	0x217e
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x6889
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0xa
	.byte	0x0
	.uleb128 0xe
	.long	0x6879
	.uleb128 0x3f
	.long	0x6945
	.long	.LASF423
	.byte	0x1
	.value	0x34c
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x34a
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF421
	.byte	0x1
	.value	0x34b
	.long	0x2ba
	.uleb128 0x35
	.long	.LASF424
	.byte	0x1
	.value	0x34d
	.long	0x6945
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x34e
	.long	0x156f
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x34f
	.long	0x3b
	.uleb128 0x35
	.long	.LASF263
	.byte	0x1
	.value	0x350
	.long	0x3b
	.uleb128 0x2e
	.long	.LASF297
	.long	0x695b
	.byte	0x1
	.uleb128 0x45
	.long	0x6900
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x367
	.long	0x1ae0
	.byte	0x0
	.uleb128 0x45
	.long	0x691e
	.uleb128 0x35
	.long	.LASF355
	.byte	0x1
	.value	0x377
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF356
	.byte	0x1
	.value	0x377
	.long	0xf2
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x380
	.long	0x57
	.uleb128 0x35
	.long	.LASF425
	.byte	0x1
	.value	0x384
	.long	0x57
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x394
	.long	0x1ae0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x102f
	.uleb128 0x9
	.long	0x695b
	.long	0x2c0
	.uleb128 0xa
	.long	0xc8
	.byte	0x10
	.byte	0x0
	.uleb128 0xe
	.long	0x694b
	.uleb128 0x44
	.long	0x6979
	.long	.LASF426
	.byte	0x1
	.value	0x247
	.byte	0x1
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x246
	.long	0x1ded
	.byte	0x0
	.uleb128 0x3f
	.long	0x6b37
	.long	.LASF427
	.byte	0x1
	.value	0x2b7
	.byte	0x1
	.long	0x57
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x2b6
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF381
	.byte	0x1
	.value	0x2b6
	.long	0x57
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x2b8
	.long	0x156f
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x2b9
	.long	0x1ae0
	.uleb128 0x35
	.long	.LASF421
	.byte	0x1
	.value	0x2ba
	.long	0x2ba
	.uleb128 0x35
	.long	.LASF274
	.byte	0x1
	.value	0x2bb
	.long	0x57
	.uleb128 0x35
	.long	.LASF428
	.byte	0x1
	.value	0x2bc
	.long	0x57
	.uleb128 0x35
	.long	.LASF429
	.byte	0x1
	.value	0x2bd
	.long	0x156f
	.uleb128 0x35
	.long	.LASF430
	.byte	0x1
	.value	0x2bf
	.long	0x57
	.uleb128 0x46
	.string	"dir"
	.byte	0x1
	.value	0x2c1
	.long	0x6b37
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x2c2
	.long	0x6b3d
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x2c3
	.long	0x57
	.uleb128 0x2e
	.long	.LASF297
	.long	0x6b43
	.byte	0x1
	.uleb128 0x45
	.long	0x6b16
	.uleb128 0x35
	.long	.LASF431
	.byte	0x1
	.value	0x2d1
	.long	0x3b
	.uleb128 0x35
	.long	.LASF416
	.byte	0x1
	.value	0x2d2
	.long	0xf2
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x2d3
	.long	0x1ae0
	.uleb128 0x46
	.string	"st"
	.byte	0x1
	.value	0x2d4
	.long	0x13e
	.uleb128 0x35
	.long	.LASF360
	.byte	0x1
	.value	0x2d5
	.long	0x57
	.uleb128 0x35
	.long	.LASF432
	.byte	0x1
	.value	0x2d6
	.long	0x57
	.uleb128 0x45
	.long	0x6ac3
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x2d5
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x2d5
	.long	0x2a2
	.uleb128 0x45
	.long	0x6aa8
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x2d5
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x2d5
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x2d5
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x2d5
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.value	0x2d6
	.long	0x2a2
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.value	0x2d6
	.long	0x2a2
	.uleb128 0x45
	.long	0x6afa
	.uleb128 0x35
	.long	.LASF331
	.byte	0x1
	.value	0x2d6
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x2d6
	.long	0x57
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x2d6
	.long	0x2031
	.uleb128 0x35
	.long	.LASF332
	.byte	0x1
	.value	0x2d6
	.long	0x57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.long	0x6b28
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x318
	.long	0x1ae0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x46
	.string	"cur"
	.byte	0x1
	.value	0x320
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x6
	.byte	0x8
	.long	0x22d
	.uleb128 0xe
	.long	0x54a5
	.uleb128 0x4a
	.long	0x6b74
	.byte	0x1
	.long	.LASF25
	.byte	0x3
	.value	0x1c6
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x41
	.long	.LASF433
	.byte	0x3
	.value	0x1c5
	.long	0x2ba
	.uleb128 0x41
	.long	.LASF434
	.byte	0x3
	.value	0x1c5
	.long	0x6b74
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x13e
	.uleb128 0x3f
	.long	0x6c29
	.long	.LASF435
	.byte	0x1
	.value	0x260
	.byte	0x1
	.long	0x1ae0
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x25e
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF436
	.byte	0x1
	.value	0x25f
	.long	0x3b
	.uleb128 0x41
	.long	.LASF113
	.byte	0x1
	.value	0x25f
	.long	0x2ba
	.uleb128 0x41
	.long	.LASF360
	.byte	0x1
	.value	0x25f
	.long	0x57
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x261
	.long	0x57
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x261
	.long	0x57
	.uleb128 0x35
	.long	.LASF437
	.byte	0x1
	.value	0x261
	.long	0x57
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x262
	.long	0x1ae0
	.uleb128 0x35
	.long	.LASF438
	.byte	0x1
	.value	0x263
	.long	0x1ae0
	.uleb128 0x45
	.long	0x6c1a
	.uleb128 0x35
	.long	.LASF439
	.byte	0x1
	.value	0x289
	.long	0x1ae0
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x28a
	.long	0x57
	.uleb128 0x43
	.uleb128 0x46
	.string	"j"
	.byte	0x1
	.value	0x294
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF366
	.byte	0x1
	.value	0x2a6
	.long	0x52e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x6c44
	.long	.LASF440
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x544
	.byte	0x3
	.uleb128 0x37
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x544
	.byte	0x0
	.uleb128 0x3f
	.long	0x6cb5
	.long	.LASF441
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.long	0x1ae0
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x1ae
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF113
	.byte	0x1
	.value	0x1ae
	.long	0x2ba
	.uleb128 0x35
	.long	.LASF416
	.byte	0x1
	.value	0x1b0
	.long	0x6cb5
	.uleb128 0x35
	.long	.LASF431
	.byte	0x1
	.value	0x1b1
	.long	0x57
	.uleb128 0x35
	.long	.LASF442
	.byte	0x1
	.value	0x1b2
	.long	0x57
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x1b2
	.long	0x57
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x1b3
	.long	0x1ae0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF233
	.byte	0x1
	.value	0x1bd
	.long	0x57
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.long	0x6cc6
	.long	0xf8
	.uleb128 0x16
	.long	0xc8
	.value	0x101
	.byte	0x0
	.uleb128 0x3f
	.long	0x6d07
	.long	.LASF443
	.byte	0x1
	.value	0x1a0
	.byte	0x1
	.long	0x57
	.byte	0x3
	.uleb128 0x41
	.long	.LASF444
	.byte	0x1
	.value	0x19f
	.long	0xf2
	.uleb128 0x40
	.string	"src"
	.byte	0x1
	.value	0x19f
	.long	0x2ba
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.value	0x1a1
	.long	0x57
	.uleb128 0x46
	.string	"len"
	.byte	0x1
	.value	0x1a2
	.long	0x57
	.byte	0x0
	.uleb128 0x44
	.long	0x6d74
	.long	.LASF445
	.byte	0x1
	.value	0x21a
	.byte	0x1
	.byte	0x3
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x219
	.long	0x1ded
	.uleb128 0x41
	.long	.LASF263
	.byte	0x1
	.value	0x219
	.long	0x3b
	.uleb128 0x41
	.long	.LASF446
	.byte	0x1
	.value	0x219
	.long	0x544
	.uleb128 0x45
	.long	0x6d49
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x21c
	.long	0x3021
	.byte	0x0
	.uleb128 0x45
	.long	0x6d5b
	.uleb128 0x35
	.long	.LASF362
	.byte	0x1
	.value	0x21f
	.long	0x3027
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x35
	.long	.LASF233
	.byte	0x1
	.value	0x222
	.long	0x57
	.uleb128 0x46
	.string	"p"
	.byte	0x1
	.value	0x223
	.long	0x1575
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.long	0x6db1
	.long	.LASF447
	.byte	0x1
	.value	0x17d
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"s"
	.byte	0x1
	.value	0x17c
	.long	0x1ded
	.uleb128 0x35
	.long	.LASF448
	.byte	0x1
	.value	0x17f
	.long	0x6db1
	.uleb128 0x35
	.long	.LASF222
	.byte	0x1
	.value	0x180
	.long	0x6db7
	.uleb128 0x46
	.string	"lba"
	.byte	0x1
	.value	0x181
	.long	0x57
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x1166
	.uleb128 0x6
	.byte	0x8
	.long	0x10db
	.uleb128 0x36
	.long	0x6e74
	.long	.LASF449
	.byte	0x1
	.value	0xae6
	.byte	0x1
	.quad	.LFB174
	.quad	.LFE174
	.byte	0x1
	.byte	0x57
	.uleb128 0x33
	.string	"bs"
	.byte	0x1
	.value	0xae5
	.long	0xb37
	.byte	0x1
	.byte	0x55
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.value	0xae7
	.long	0x1ded
	.byte	0x1
	.byte	0x53
	.uleb128 0x39
	.long	0x6e14
	.long	0x1f8c
	.quad	.LBB1917
	.quad	.LBE1917
	.uleb128 0x28
	.long	0x1f9a
	.byte	0x0
	.uleb128 0x39
	.long	0x6e35
	.long	0x6e74
	.quad	.LBB1919
	.quad	.LBE1919
	.uleb128 0x29
	.long	0x6e81
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x39
	.long	0x6e56
	.long	0x6e74
	.quad	.LBB1925
	.quad	.LBE1925
	.uleb128 0x29
	.long	0x6e81
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x27
	.long	0x6e74
	.quad	.LBB1931
	.quad	.LBE1931
	.uleb128 0x29
	.long	0x6e81
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.long	0x6e8d
	.long	.LASF450
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1
	.byte	0x57
	.long	0x17b6
	.byte	0x0
	.uleb128 0x4b
	.long	.LASF451
	.byte	0xf
	.byte	0x91
	.long	0x502
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF452
	.byte	0xf
	.byte	0x92
	.long	0x502
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF453
	.byte	0xf
	.byte	0x93
	.long	0x502
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.long	.LASF454
	.byte	0x8
	.byte	0xa
	.long	0x7d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.long	.LASF455
	.byte	0x1
	.value	0xaf1
	.long	0x7d6
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_vvfat
	.uleb128 0x4d
	.long	.LASF456
	.byte	0x6
	.byte	0x94
	.long	0xb37
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	bdrv_first
	.uleb128 0x3b
	.long	.LASF457
	.byte	0x1
	.value	0xac3
	.long	0x7d6
	.byte	0x9
	.byte	0x3
	.quad	vvfat_write_target
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x16
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.long	0x6f05
	.long	0x6ec1
	.string	"bdrv_vvfat"
	.long	0x6ed8
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB78-.Ltext0
	.quad	.LBE78-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB104-.Ltext0
	.quad	.LBE104-.Ltext0
	.quad	.LBB103-.Ltext0
	.quad	.LBE103-.Ltext0
	.quad	.LBB100-.Ltext0
	.quad	.LBE100-.Ltext0
	.quad	.LBB99-.Ltext0
	.quad	.LBE99-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	.LBB85-.Ltext0
	.quad	.LBE85-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB102-.Ltext0
	.quad	.LBE102-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB83-.Ltext0
	.quad	.LBE83-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB88-.Ltext0
	.quad	.LBE88-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB107-.Ltext0
	.quad	.LBE107-.Ltext0
	.quad	.LBB117-.Ltext0
	.quad	.LBE117-.Ltext0
	.quad	.LBB109-.Ltext0
	.quad	.LBE109-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB120-.Ltext0
	.quad	.LBE120-.Ltext0
	.quad	.LBB123-.Ltext0
	.quad	.LBE123-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB127-.Ltext0
	.quad	.LBE127-.Ltext0
	.quad	.LBB214-.Ltext0
	.quad	.LBE214-.Ltext0
	.quad	.LBB160-.Ltext0
	.quad	.LBE160-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB129-.Ltext0
	.quad	.LBE129-.Ltext0
	.quad	.LBB216-.Ltext0
	.quad	.LBE216-.Ltext0
	.quad	.LBB162-.Ltext0
	.quad	.LBE162-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB130-.Ltext0
	.quad	.LBE130-.Ltext0
	.quad	.LBB217-.Ltext0
	.quad	.LBE217-.Ltext0
	.quad	.LBB163-.Ltext0
	.quad	.LBE163-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB135-.Ltext0
	.quad	.LBE135-.Ltext0
	.quad	.LBB427-.Ltext0
	.quad	.LBE427-.Ltext0
	.quad	.LBB424-.Ltext0
	.quad	.LBE424-.Ltext0
	.quad	.LBB363-.Ltext0
	.quad	.LBE363-.Ltext0
	.quad	.LBB336-.Ltext0
	.quad	.LBE336-.Ltext0
	.quad	.LBB255-.Ltext0
	.quad	.LBE255-.Ltext0
	.quad	.LBB228-.Ltext0
	.quad	.LBE228-.Ltext0
	.quad	.LBB218-.Ltext0
	.quad	.LBE218-.Ltext0
	.quad	.LBB186-.Ltext0
	.quad	.LBE186-.Ltext0
	.quad	.LBB183-.Ltext0
	.quad	.LBE183-.Ltext0
	.quad	.LBB171-.Ltext0
	.quad	.LBE171-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	.LBB428-.Ltext0
	.quad	.LBE428-.Ltext0
	.quad	.LBB425-.Ltext0
	.quad	.LBE425-.Ltext0
	.quad	.LBB364-.Ltext0
	.quad	.LBE364-.Ltext0
	.quad	.LBB338-.Ltext0
	.quad	.LBE338-.Ltext0
	.quad	.LBB337-.Ltext0
	.quad	.LBE337-.Ltext0
	.quad	.LBB310-.Ltext0
	.quad	.LBE310-.Ltext0
	.quad	.LBB256-.Ltext0
	.quad	.LBE256-.Ltext0
	.quad	.LBB229-.Ltext0
	.quad	.LBE229-.Ltext0
	.quad	.LBB219-.Ltext0
	.quad	.LBE219-.Ltext0
	.quad	.LBB190-.Ltext0
	.quad	.LBE190-.Ltext0
	.quad	.LBB176-.Ltext0
	.quad	.LBE176-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB138-.Ltext0
	.quad	.LBE138-.Ltext0
	.quad	.LBB430-.Ltext0
	.quad	.LBE430-.Ltext0
	.quad	.LBB403-.Ltext0
	.quad	.LBE403-.Ltext0
	.quad	.LBB388-.Ltext0
	.quad	.LBE388-.Ltext0
	.quad	.LBB385-.Ltext0
	.quad	.LBE385-.Ltext0
	.quad	.LBB366-.Ltext0
	.quad	.LBE366-.Ltext0
	.quad	.LBB340-.Ltext0
	.quad	.LBE340-.Ltext0
	.quad	.LBB312-.Ltext0
	.quad	.LBE312-.Ltext0
	.quad	.LBB260-.Ltext0
	.quad	.LBE260-.Ltext0
	.quad	.LBB233-.Ltext0
	.quad	.LBE233-.Ltext0
	.quad	.LBB221-.Ltext0
	.quad	.LBE221-.Ltext0
	.quad	.LBB153-.Ltext0
	.quad	.LBE153-.Ltext0
	.quad	.LBB145-.Ltext0
	.quad	.LBE145-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB140-.Ltext0
	.quad	.LBE140-.Ltext0
	.quad	.LBB436-.Ltext0
	.quad	.LBE436-.Ltext0
	.quad	.LBB318-.Ltext0
	.quad	.LBE318-.Ltext0
	.quad	.LBB302-.Ltext0
	.quad	.LBE302-.Ltext0
	.quad	.LBB262-.Ltext0
	.quad	.LBE262-.Ltext0
	.quad	.LBB223-.Ltext0
	.quad	.LBE223-.Ltext0
	.quad	.LBB155-.Ltext0
	.quad	.LBE155-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB142-.Ltext0
	.quad	.LBE142-.Ltext0
	.quad	.LBB438-.Ltext0
	.quad	.LBE438-.Ltext0
	.quad	.LBB304-.Ltext0
	.quad	.LBE304-.Ltext0
	.quad	.LBB264-.Ltext0
	.quad	.LBE264-.Ltext0
	.quad	.LBB225-.Ltext0
	.quad	.LBE225-.Ltext0
	.quad	.LBB157-.Ltext0
	.quad	.LBE157-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB143-.Ltext0
	.quad	.LBE143-.Ltext0
	.quad	.LBB439-.Ltext0
	.quad	.LBE439-.Ltext0
	.quad	.LBB305-.Ltext0
	.quad	.LBE305-.Ltext0
	.quad	.LBB265-.Ltext0
	.quad	.LBE265-.Ltext0
	.quad	.LBB226-.Ltext0
	.quad	.LBE226-.Ltext0
	.quad	.LBB158-.Ltext0
	.quad	.LBE158-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB147-.Ltext0
	.quad	.LBE147-.Ltext0
	.quad	.LBB415-.Ltext0
	.quad	.LBE415-.Ltext0
	.quad	.LBB280-.Ltext0
	.quad	.LBE280-.Ltext0
	.quad	.LBB275-.Ltext0
	.quad	.LBE275-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB149-.Ltext0
	.quad	.LBE149-.Ltext0
	.quad	.LBB417-.Ltext0
	.quad	.LBE417-.Ltext0
	.quad	.LBB282-.Ltext0
	.quad	.LBE282-.Ltext0
	.quad	.LBB277-.Ltext0
	.quad	.LBE277-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB168-.Ltext0
	.quad	.LBE168-.Ltext0
	.quad	.LBB426-.Ltext0
	.quad	.LBE426-.Ltext0
	.quad	.LBB227-.Ltext0
	.quad	.LBE227-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB169-.Ltext0
	.quad	.LBE169-.Ltext0
	.quad	.LBB170-.Ltext0
	.quad	.LBE170-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB189-.Ltext0
	.quad	.LBE189-.Ltext0
	.quad	.LBB211-.Ltext0
	.quad	.LBE211-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB194-.Ltext0
	.quad	.LBE194-.Ltext0
	.quad	.LBB258-.Ltext0
	.quad	.LBE258-.Ltext0
	.quad	.LBB231-.Ltext0
	.quad	.LBE231-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB196-.Ltext0
	.quad	.LBE196-.Ltext0
	.quad	.LBB198-.Ltext0
	.quad	.LBE198-.Ltext0
	.quad	.LBB197-.Ltext0
	.quad	.LBE197-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB245-.Ltext0
	.quad	.LBE245-.Ltext0
	.quad	.LBB379-.Ltext0
	.quad	.LBE379-.Ltext0
	.quad	.LBB368-.Ltext0
	.quad	.LBE368-.Ltext0
	.quad	.LBB316-.Ltext0
	.quad	.LBE316-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB247-.Ltext0
	.quad	.LBE247-.Ltext0
	.quad	.LBB381-.Ltext0
	.quad	.LBE381-.Ltext0
	.quad	.LBB370-.Ltext0
	.quad	.LBE370-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB248-.Ltext0
	.quad	.LBE248-.Ltext0
	.quad	.LBB382-.Ltext0
	.quad	.LBE382-.Ltext0
	.quad	.LBB371-.Ltext0
	.quad	.LBE371-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB253-.Ltext0
	.quad	.LBE253-.Ltext0
	.quad	.LBB346-.Ltext0
	.quad	.LBE346-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB271-.Ltext0
	.quad	.LBE271-.Ltext0
	.quad	.LBB272-.Ltext0
	.quad	.LBE272-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB320-.Ltext0
	.quad	.LBE320-.Ltext0
	.quad	.LBB354-.Ltext0
	.quad	.LBE354-.Ltext0
	.quad	.LBB327-.Ltext0
	.quad	.LBE327-.Ltext0
	.quad	.LBB322-.Ltext0
	.quad	.LBE322-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB324-.Ltext0
	.quad	.LBE324-.Ltext0
	.quad	.LBB356-.Ltext0
	.quad	.LBE356-.Ltext0
	.quad	.LBB329-.Ltext0
	.quad	.LBE329-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB343-.Ltext0
	.quad	.LBE343-.Ltext0
	.quad	.LBB433-.Ltext0
	.quad	.LBE433-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB359-.Ltext0
	.quad	.LBE359-.Ltext0
	.quad	.LBB362-.Ltext0
	.quad	.LBE362-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB376-.Ltext0
	.quad	.LBE376-.Ltext0
	.quad	.LBB386-.Ltext0
	.quad	.LBE386-.Ltext0
	.quad	.LBB383-.Ltext0
	.quad	.LBE383-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB390-.Ltext0
	.quad	.LBE390-.Ltext0
	.quad	.LBB405-.Ltext0
	.quad	.LBE405-.Ltext0
	.quad	.LBB393-.Ltext0
	.quad	.LBE393-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB392-.Ltext0
	.quad	.LBE392-.Ltext0
	.quad	.LBB407-.Ltext0
	.quad	.LBE407-.Ltext0
	.quad	.LBB395-.Ltext0
	.quad	.LBE395-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB410-.Ltext0
	.quad	.LBE410-.Ltext0
	.quad	.LBB413-.Ltext0
	.quad	.LBE413-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB420-.Ltext0
	.quad	.LBE420-.Ltext0
	.quad	.LBB423-.Ltext0
	.quad	.LBE423-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB442-.Ltext0
	.quad	.LBE442-.Ltext0
	.quad	.LBB479-.Ltext0
	.quad	.LBE479-.Ltext0
	.quad	.LBB454-.Ltext0
	.quad	.LBE454-.Ltext0
	.quad	.LBB449-.Ltext0
	.quad	.LBE449-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB443-.Ltext0
	.quad	.LBE443-.Ltext0
	.quad	.LBB480-.Ltext0
	.quad	.LBE480-.Ltext0
	.quad	.LBB455-.Ltext0
	.quad	.LBE455-.Ltext0
	.quad	.LBB450-.Ltext0
	.quad	.LBE450-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB470-.Ltext0
	.quad	.LBE470-.Ltext0
	.quad	.LBB472-.Ltext0
	.quad	.LBE472-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB501-.Ltext0
	.quad	.LBE501-.Ltext0
	.quad	.LBB504-.Ltext0
	.quad	.LBE504-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB514-.Ltext0
	.quad	.LBE514-.Ltext0
	.quad	.LBB517-.Ltext0
	.quad	.LBE517-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB523-.Ltext0
	.quad	.LBE523-.Ltext0
	.quad	.LBB531-.Ltext0
	.quad	.LBE531-.Ltext0
	.quad	.LBB527-.Ltext0
	.quad	.LBE527-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB533-.Ltext0
	.quad	.LBE533-.Ltext0
	.quad	.LBB636-.Ltext0
	.quad	.LBE636-.Ltext0
	.quad	.LBB617-.Ltext0
	.quad	.LBE617-.Ltext0
	.quad	.LBB557-.Ltext0
	.quad	.LBE557-.Ltext0
	.quad	.LBB536-.Ltext0
	.quad	.LBE536-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB538-.Ltext0
	.quad	.LBE538-.Ltext0
	.quad	.LBB619-.Ltext0
	.quad	.LBE619-.Ltext0
	.quad	.LBB559-.Ltext0
	.quad	.LBE559-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB539-.Ltext0
	.quad	.LBE539-.Ltext0
	.quad	.LBB620-.Ltext0
	.quad	.LBE620-.Ltext0
	.quad	.LBB560-.Ltext0
	.quad	.LBE560-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB542-.Ltext0
	.quad	.LBE542-.Ltext0
	.quad	.LBB659-.Ltext0
	.quad	.LBE659-.Ltext0
	.quad	.LBB654-.Ltext0
	.quad	.LBE654-.Ltext0
	.quad	.LBB649-.Ltext0
	.quad	.LBE649-.Ltext0
	.quad	.LBB647-.Ltext0
	.quad	.LBE647-.Ltext0
	.quad	.LBB637-.Ltext0
	.quad	.LBE637-.Ltext0
	.quad	.LBB621-.Ltext0
	.quad	.LBE621-.Ltext0
	.quad	.LBB602-.Ltext0
	.quad	.LBE602-.Ltext0
	.quad	.LBB576-.Ltext0
	.quad	.LBE576-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB543-.Ltext0
	.quad	.LBE543-.Ltext0
	.quad	.LBB660-.Ltext0
	.quad	.LBE660-.Ltext0
	.quad	.LBB655-.Ltext0
	.quad	.LBE655-.Ltext0
	.quad	.LBB650-.Ltext0
	.quad	.LBE650-.Ltext0
	.quad	.LBB648-.Ltext0
	.quad	.LBE648-.Ltext0
	.quad	.LBB638-.Ltext0
	.quad	.LBE638-.Ltext0
	.quad	.LBB622-.Ltext0
	.quad	.LBE622-.Ltext0
	.quad	.LBB589-.Ltext0
	.quad	.LBE589-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB545-.Ltext0
	.quad	.LBE545-.Ltext0
	.quad	.LBB643-.Ltext0
	.quad	.LBE643-.Ltext0
	.quad	.LBB624-.Ltext0
	.quad	.LBE624-.Ltext0
	.quad	.LBB591-.Ltext0
	.quad	.LBE591-.Ltext0
	.quad	.LBB551-.Ltext0
	.quad	.LBE551-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB546-.Ltext0
	.quad	.LBE546-.Ltext0
	.quad	.LBB644-.Ltext0
	.quad	.LBE644-.Ltext0
	.quad	.LBB625-.Ltext0
	.quad	.LBE625-.Ltext0
	.quad	.LBB592-.Ltext0
	.quad	.LBE592-.Ltext0
	.quad	.LBB552-.Ltext0
	.quad	.LBE552-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB547-.Ltext0
	.quad	.LBE547-.Ltext0
	.quad	.LBB661-.Ltext0
	.quad	.LBE661-.Ltext0
	.quad	.LBB656-.Ltext0
	.quad	.LBE656-.Ltext0
	.quad	.LBB651-.Ltext0
	.quad	.LBE651-.Ltext0
	.quad	.LBB639-.Ltext0
	.quad	.LBE639-.Ltext0
	.quad	.LBB626-.Ltext0
	.quad	.LBE626-.Ltext0
	.quad	.LBB599-.Ltext0
	.quad	.LBE599-.Ltext0
	.quad	.LBB553-.Ltext0
	.quad	.LBE553-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB605-.Ltext0
	.quad	.LBE605-.Ltext0
	.quad	.LBB613-.Ltext0
	.quad	.LBE613-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB610-.Ltext0
	.quad	.LBE610-.Ltext0
	.quad	.LBB633-.Ltext0
	.quad	.LBE633-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB670-.Ltext0
	.quad	.LBE670-.Ltext0
	.quad	.LBB731-.Ltext0
	.quad	.LBE731-.Ltext0
	.quad	.LBB693-.Ltext0
	.quad	.LBE693-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB672-.Ltext0
	.quad	.LBE672-.Ltext0
	.quad	.LBB733-.Ltext0
	.quad	.LBE733-.Ltext0
	.quad	.LBB695-.Ltext0
	.quad	.LBE695-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB673-.Ltext0
	.quad	.LBE673-.Ltext0
	.quad	.LBB734-.Ltext0
	.quad	.LBE734-.Ltext0
	.quad	.LBB696-.Ltext0
	.quad	.LBE696-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB677-.Ltext0
	.quad	.LBE677-.Ltext0
	.quad	.LBB797-.Ltext0
	.quad	.LBE797-.Ltext0
	.quad	.LBB787-.Ltext0
	.quad	.LBE787-.Ltext0
	.quad	.LBB768-.Ltext0
	.quad	.LBE768-.Ltext0
	.quad	.LBB763-.Ltext0
	.quad	.LBE763-.Ltext0
	.quad	.LBB688-.Ltext0
	.quad	.LBE688-.Ltext0
	.quad	.LBB684-.Ltext0
	.quad	.LBE684-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB679-.Ltext0
	.quad	.LBE679-.Ltext0
	.quad	.LBB799-.Ltext0
	.quad	.LBE799-.Ltext0
	.quad	.LBB789-.Ltext0
	.quad	.LBE789-.Ltext0
	.quad	.LBB765-.Ltext0
	.quad	.LBE765-.Ltext0
	.quad	.LBB690-.Ltext0
	.quad	.LBE690-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB680-.Ltext0
	.quad	.LBE680-.Ltext0
	.quad	.LBB800-.Ltext0
	.quad	.LBE800-.Ltext0
	.quad	.LBB790-.Ltext0
	.quad	.LBE790-.Ltext0
	.quad	.LBB766-.Ltext0
	.quad	.LBE766-.Ltext0
	.quad	.LBB691-.Ltext0
	.quad	.LBE691-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB703-.Ltext0
	.quad	.LBE703-.Ltext0
	.quad	.LBB795-.Ltext0
	.quad	.LBE795-.Ltext0
	.quad	.LBB718-.Ltext0
	.quad	.LBE718-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB723-.Ltext0
	.quad	.LBE723-.Ltext0
	.quad	.LBB728-.Ltext0
	.quad	.LBE728-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB741-.Ltext0
	.quad	.LBE741-.Ltext0
	.quad	.LBB756-.Ltext0
	.quad	.LBE756-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB771-.Ltext0
	.quad	.LBE771-.Ltext0
	.quad	.LBB778-.Ltext0
	.quad	.LBE778-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB805-.Ltext0
	.quad	.LBE805-.Ltext0
	.quad	.LBB898-.Ltext0
	.quad	.LBE898-.Ltext0
	.quad	.LBB892-.Ltext0
	.quad	.LBE892-.Ltext0
	.quad	.LBB880-.Ltext0
	.quad	.LBE880-.Ltext0
	.quad	.LBB839-.Ltext0
	.quad	.LBE839-.Ltext0
	.quad	.LBB833-.Ltext0
	.quad	.LBE833-.Ltext0
	.quad	.LBB828-.Ltext0
	.quad	.LBE828-.Ltext0
	.quad	.LBB820-.Ltext0
	.quad	.LBE820-.Ltext0
	.quad	.LBB815-.Ltext0
	.quad	.LBE815-.Ltext0
	.quad	.LBB810-.Ltext0
	.quad	.LBE810-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB822-.Ltext0
	.quad	.LBE822-.Ltext0
	.quad	.LBB894-.Ltext0
	.quad	.LBE894-.Ltext0
	.quad	.LBB882-.Ltext0
	.quad	.LBE882-.Ltext0
	.quad	.LBB841-.Ltext0
	.quad	.LBE841-.Ltext0
	.quad	.LBB835-.Ltext0
	.quad	.LBE835-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB823-.Ltext0
	.quad	.LBE823-.Ltext0
	.quad	.LBB895-.Ltext0
	.quad	.LBE895-.Ltext0
	.quad	.LBB883-.Ltext0
	.quad	.LBE883-.Ltext0
	.quad	.LBB842-.Ltext0
	.quad	.LBE842-.Ltext0
	.quad	.LBB836-.Ltext0
	.quad	.LBE836-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB826-.Ltext0
	.quad	.LBE826-.Ltext0
	.quad	.LBB902-.Ltext0
	.quad	.LBE902-.Ltext0
	.quad	.LBB901-.Ltext0
	.quad	.LBE901-.Ltext0
	.quad	.LBB900-.Ltext0
	.quad	.LBE900-.Ltext0
	.quad	.LBB899-.Ltext0
	.quad	.LBE899-.Ltext0
	.quad	.LBB896-.Ltext0
	.quad	.LBE896-.Ltext0
	.quad	.LBB884-.Ltext0
	.quad	.LBE884-.Ltext0
	.quad	.LBB867-.Ltext0
	.quad	.LBE867-.Ltext0
	.quad	.LBB858-.Ltext0
	.quad	.LBE858-.Ltext0
	.quad	.LBB837-.Ltext0
	.quad	.LBE837-.Ltext0
	.quad	.LBB831-.Ltext0
	.quad	.LBE831-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB854-.Ltext0
	.quad	.LBE854-.Ltext0
	.quad	.LBB877-.Ltext0
	.quad	.LBE877-.Ltext0
	.quad	.LBB857-.Ltext0
	.quad	.LBE857-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB870-.Ltext0
	.quad	.LBE870-.Ltext0
	.quad	.LBB889-.Ltext0
	.quad	.LBE889-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB906-.Ltext0
	.quad	.LBE906-.Ltext0
	.quad	.LBB1105-.Ltext0
	.quad	.LBE1105-.Ltext0
	.quad	.LBB1043-.Ltext0
	.quad	.LBE1043-.Ltext0
	.quad	.LBB1032-.Ltext0
	.quad	.LBE1032-.Ltext0
	.quad	.LBB972-.Ltext0
	.quad	.LBE972-.Ltext0
	.quad	.LBB951-.Ltext0
	.quad	.LBE951-.Ltext0
	.quad	.LBB946-.Ltext0
	.quad	.LBE946-.Ltext0
	.quad	.LBB910-.Ltext0
	.quad	.LBE910-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB916-.Ltext0
	.quad	.LBE916-.Ltext0
	.quad	.LBB1045-.Ltext0
	.quad	.LBE1045-.Ltext0
	.quad	.LBB1034-.Ltext0
	.quad	.LBE1034-.Ltext0
	.quad	.LBB922-.Ltext0
	.quad	.LBE922-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB917-.Ltext0
	.quad	.LBE917-.Ltext0
	.quad	.LBB1046-.Ltext0
	.quad	.LBE1046-.Ltext0
	.quad	.LBB1035-.Ltext0
	.quad	.LBE1035-.Ltext0
	.quad	.LBB918-.Ltext0
	.quad	.LBE918-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB941-.Ltext0
	.quad	.LBE941-.Ltext0
	.quad	.LBB977-.Ltext0
	.quad	.LBE977-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB953-.Ltext0
	.quad	.LBE953-.Ltext0
	.quad	.LBB1107-.Ltext0
	.quad	.LBE1107-.Ltext0
	.quad	.LBB1048-.Ltext0
	.quad	.LBE1048-.Ltext0
	.quad	.LBB1037-.Ltext0
	.quad	.LBE1037-.Ltext0
	.quad	.LBB1007-.Ltext0
	.quad	.LBE1007-.Ltext0
	.quad	.LBB980-.Ltext0
	.quad	.LBE980-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB957-.Ltext0
	.quad	.LBE957-.Ltext0
	.quad	.LBB1326-.Ltext0
	.quad	.LBE1326-.Ltext0
	.quad	.LBB1319-.Ltext0
	.quad	.LBE1319-.Ltext0
	.quad	.LBB1303-.Ltext0
	.quad	.LBE1303-.Ltext0
	.quad	.LBB1292-.Ltext0
	.quad	.LBE1292-.Ltext0
	.quad	.LBB1277-.Ltext0
	.quad	.LBE1277-.Ltext0
	.quad	.LBB1259-.Ltext0
	.quad	.LBE1259-.Ltext0
	.quad	.LBB1226-.Ltext0
	.quad	.LBE1226-.Ltext0
	.quad	.LBB1207-.Ltext0
	.quad	.LBE1207-.Ltext0
	.quad	.LBB1194-.Ltext0
	.quad	.LBE1194-.Ltext0
	.quad	.LBB1141-.Ltext0
	.quad	.LBE1141-.Ltext0
	.quad	.LBB1011-.Ltext0
	.quad	.LBE1011-.Ltext0
	.quad	.LBB990-.Ltext0
	.quad	.LBE990-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB958-.Ltext0
	.quad	.LBE958-.Ltext0
	.quad	.LBB1327-.Ltext0
	.quad	.LBE1327-.Ltext0
	.quad	.LBB1320-.Ltext0
	.quad	.LBE1320-.Ltext0
	.quad	.LBB1304-.Ltext0
	.quad	.LBE1304-.Ltext0
	.quad	.LBB1293-.Ltext0
	.quad	.LBE1293-.Ltext0
	.quad	.LBB1278-.Ltext0
	.quad	.LBE1278-.Ltext0
	.quad	.LBB1260-.Ltext0
	.quad	.LBE1260-.Ltext0
	.quad	.LBB1227-.Ltext0
	.quad	.LBE1227-.Ltext0
	.quad	.LBB1208-.Ltext0
	.quad	.LBE1208-.Ltext0
	.quad	.LBB1195-.Ltext0
	.quad	.LBE1195-.Ltext0
	.quad	.LBB1142-.Ltext0
	.quad	.LBE1142-.Ltext0
	.quad	.LBB1012-.Ltext0
	.quad	.LBE1012-.Ltext0
	.quad	.LBB991-.Ltext0
	.quad	.LBE991-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB961-.Ltext0
	.quad	.LBE961-.Ltext0
	.quad	.LBB1328-.Ltext0
	.quad	.LBE1328-.Ltext0
	.quad	.LBB1321-.Ltext0
	.quad	.LBE1321-.Ltext0
	.quad	.LBB1305-.Ltext0
	.quad	.LBE1305-.Ltext0
	.quad	.LBB1294-.Ltext0
	.quad	.LBE1294-.Ltext0
	.quad	.LBB1280-.Ltext0
	.quad	.LBE1280-.Ltext0
	.quad	.LBB1262-.Ltext0
	.quad	.LBE1262-.Ltext0
	.quad	.LBB1228-.Ltext0
	.quad	.LBE1228-.Ltext0
	.quad	.LBB1209-.Ltext0
	.quad	.LBE1209-.Ltext0
	.quad	.LBB1196-.Ltext0
	.quad	.LBE1196-.Ltext0
	.quad	.LBB1143-.Ltext0
	.quad	.LBE1143-.Ltext0
	.quad	.LBB992-.Ltext0
	.quad	.LBE992-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB963-.Ltext0
	.quad	.LBE963-.Ltext0
	.quad	.LBB1198-.Ltext0
	.quad	.LBE1198-.Ltext0
	.quad	.LBB1145-.Ltext0
	.quad	.LBE1145-.Ltext0
	.quad	.LBB965-.Ltext0
	.quad	.LBE965-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB967-.Ltext0
	.quad	.LBE967-.Ltext0
	.quad	.LBB1200-.Ltext0
	.quad	.LBE1200-.Ltext0
	.quad	.LBB1147-.Ltext0
	.quad	.LBE1147-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB968-.Ltext0
	.quad	.LBE968-.Ltext0
	.quad	.LBB1201-.Ltext0
	.quad	.LBE1201-.Ltext0
	.quad	.LBB1148-.Ltext0
	.quad	.LBE1148-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB982-.Ltext0
	.quad	.LBE982-.Ltext0
	.quad	.LBB1238-.Ltext0
	.quad	.LBE1238-.Ltext0
	.quad	.LBB1212-.Ltext0
	.quad	.LBE1212-.Ltext0
	.quad	.LBB1090-.Ltext0
	.quad	.LBE1090-.Ltext0
	.quad	.LBB1000-.Ltext0
	.quad	.LBE1000-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB983-.Ltext0
	.quad	.LBE983-.Ltext0
	.quad	.LBB1239-.Ltext0
	.quad	.LBE1239-.Ltext0
	.quad	.LBB1213-.Ltext0
	.quad	.LBE1213-.Ltext0
	.quad	.LBB1098-.Ltext0
	.quad	.LBE1098-.Ltext0
	.quad	.LBB1091-.Ltext0
	.quad	.LBE1091-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB984-.Ltext0
	.quad	.LBE984-.Ltext0
	.quad	.LBB1240-.Ltext0
	.quad	.LBE1240-.Ltext0
	.quad	.LBB1214-.Ltext0
	.quad	.LBE1214-.Ltext0
	.quad	.LBB1099-.Ltext0
	.quad	.LBE1099-.Ltext0
	.quad	.LBB1094-.Ltext0
	.quad	.LBE1094-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB985-.Ltext0
	.quad	.LBE985-.Ltext0
	.quad	.LBB1241-.Ltext0
	.quad	.LBE1241-.Ltext0
	.quad	.LBB1215-.Ltext0
	.quad	.LBE1215-.Ltext0
	.quad	.LBB1100-.Ltext0
	.quad	.LBE1100-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB986-.Ltext0
	.quad	.LBE986-.Ltext0
	.quad	.LBB1101-.Ltext0
	.quad	.LBE1101-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB993-.Ltext0
	.quad	.LBE993-.Ltext0
	.quad	.LBB1329-.Ltext0
	.quad	.LBE1329-.Ltext0
	.quad	.LBB1322-.Ltext0
	.quad	.LBE1322-.Ltext0
	.quad	.LBB1306-.Ltext0
	.quad	.LBE1306-.Ltext0
	.quad	.LBB1295-.Ltext0
	.quad	.LBE1295-.Ltext0
	.quad	.LBB1263-.Ltext0
	.quad	.LBE1263-.Ltext0
	.quad	.LBB1229-.Ltext0
	.quad	.LBE1229-.Ltext0
	.quad	.LBB1153-.Ltext0
	.quad	.LBE1153-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB996-.Ltext0
	.quad	.LBE996-.Ltext0
	.quad	.LBB1332-.Ltext0
	.quad	.LBE1332-.Ltext0
	.quad	.LBB1266-.Ltext0
	.quad	.LBE1266-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1014-.Ltext0
	.quad	.LBE1014-.Ltext0
	.quad	.LBB1340-.Ltext0
	.quad	.LBE1340-.Ltext0
	.quad	.LBB1336-.Ltext0
	.quad	.LBE1336-.Ltext0
	.quad	.LBB1315-.Ltext0
	.quad	.LBE1315-.Ltext0
	.quad	.LBB1311-.Ltext0
	.quad	.LBE1311-.Ltext0
	.quad	.LBB1286-.Ltext0
	.quad	.LBE1286-.Ltext0
	.quad	.LBB1282-.Ltext0
	.quad	.LBE1282-.Ltext0
	.quad	.LBB1271-.Ltext0
	.quad	.LBE1271-.Ltext0
	.quad	.LBB1243-.Ltext0
	.quad	.LBE1243-.Ltext0
	.quad	.LBB1217-.Ltext0
	.quad	.LBE1217-.Ltext0
	.quad	.LBB1203-.Ltext0
	.quad	.LBE1203-.Ltext0
	.quad	.LBB1118-.Ltext0
	.quad	.LBE1118-.Ltext0
	.quad	.LBB1109-.Ltext0
	.quad	.LBE1109-.Ltext0
	.quad	.LBB1068-.Ltext0
	.quad	.LBE1068-.Ltext0
	.quad	.LBB1059-.Ltext0
	.quad	.LBE1059-.Ltext0
	.quad	.LBB1050-.Ltext0
	.quad	.LBE1050-.Ltext0
	.quad	.LBB1039-.Ltext0
	.quad	.LBE1039-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1017-.Ltext0
	.quad	.LBE1017-.Ltext0
	.quad	.LBB1341-.Ltext0
	.quad	.LBE1341-.Ltext0
	.quad	.LBB1316-.Ltext0
	.quad	.LBE1316-.Ltext0
	.quad	.LBB1312-.Ltext0
	.quad	.LBE1312-.Ltext0
	.quad	.LBB1287-.Ltext0
	.quad	.LBE1287-.Ltext0
	.quad	.LBB1283-.Ltext0
	.quad	.LBE1283-.Ltext0
	.quad	.LBB1274-.Ltext0
	.quad	.LBE1274-.Ltext0
	.quad	.LBB1272-.Ltext0
	.quad	.LBE1272-.Ltext0
	.quad	.LBB1244-.Ltext0
	.quad	.LBE1244-.Ltext0
	.quad	.LBB1218-.Ltext0
	.quad	.LBE1218-.Ltext0
	.quad	.LBB1119-.Ltext0
	.quad	.LBE1119-.Ltext0
	.quad	.LBB1110-.Ltext0
	.quad	.LBE1110-.Ltext0
	.quad	.LBB1069-.Ltext0
	.quad	.LBE1069-.Ltext0
	.quad	.LBB1060-.Ltext0
	.quad	.LBE1060-.Ltext0
	.quad	.LBB1051-.Ltext0
	.quad	.LBE1051-.Ltext0
	.quad	.LBB1040-.Ltext0
	.quad	.LBE1040-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1020-.Ltext0
	.quad	.LBE1020-.Ltext0
	.quad	.LBB1342-.Ltext0
	.quad	.LBE1342-.Ltext0
	.quad	.LBB1288-.Ltext0
	.quad	.LBE1288-.Ltext0
	.quad	.LBB1284-.Ltext0
	.quad	.LBE1284-.Ltext0
	.quad	.LBB1275-.Ltext0
	.quad	.LBE1275-.Ltext0
	.quad	.LBB1273-.Ltext0
	.quad	.LBE1273-.Ltext0
	.quad	.LBB1219-.Ltext0
	.quad	.LBE1219-.Ltext0
	.quad	.LBB1111-.Ltext0
	.quad	.LBE1111-.Ltext0
	.quad	.LBB1070-.Ltext0
	.quad	.LBE1070-.Ltext0
	.quad	.LBB1061-.Ltext0
	.quad	.LBE1061-.Ltext0
	.quad	.LBB1052-.Ltext0
	.quad	.LBE1052-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1022-.Ltext0
	.quad	.LBE1022-.Ltext0
	.quad	.LBB1290-.Ltext0
	.quad	.LBE1290-.Ltext0
	.quad	.LBB1221-.Ltext0
	.quad	.LBE1221-.Ltext0
	.quad	.LBB1113-.Ltext0
	.quad	.LBE1113-.Ltext0
	.quad	.LBB1072-.Ltext0
	.quad	.LBE1072-.Ltext0
	.quad	.LBB1063-.Ltext0
	.quad	.LBE1063-.Ltext0
	.quad	.LBB1054-.Ltext0
	.quad	.LBE1054-.Ltext0
	.quad	.LBB1025-.Ltext0
	.quad	.LBE1025-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1027-.Ltext0
	.quad	.LBE1027-.Ltext0
	.quad	.LBB1223-.Ltext0
	.quad	.LBE1223-.Ltext0
	.quad	.LBB1115-.Ltext0
	.quad	.LBE1115-.Ltext0
	.quad	.LBB1074-.Ltext0
	.quad	.LBE1074-.Ltext0
	.quad	.LBB1065-.Ltext0
	.quad	.LBE1065-.Ltext0
	.quad	.LBB1056-.Ltext0
	.quad	.LBE1056-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1028-.Ltext0
	.quad	.LBE1028-.Ltext0
	.quad	.LBB1224-.Ltext0
	.quad	.LBE1224-.Ltext0
	.quad	.LBB1116-.Ltext0
	.quad	.LBE1116-.Ltext0
	.quad	.LBB1075-.Ltext0
	.quad	.LBE1075-.Ltext0
	.quad	.LBB1066-.Ltext0
	.quad	.LBE1066-.Ltext0
	.quad	.LBB1057-.Ltext0
	.quad	.LBE1057-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1041-.Ltext0
	.quad	.LBE1041-.Ltext0
	.quad	.LBB1317-.Ltext0
	.quad	.LBE1317-.Ltext0
	.quad	.LBB1313-.Ltext0
	.quad	.LBE1313-.Ltext0
	.quad	.LBB1245-.Ltext0
	.quad	.LBE1245-.Ltext0
	.quad	.LBB1120-.Ltext0
	.quad	.LBE1120-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1087-.Ltext0
	.quad	.LBE1087-.Ltext0
	.quad	.LBB1346-.Ltext0
	.quad	.LBE1346-.Ltext0
	.quad	.LBB1088-.Ltext0
	.quad	.LBE1088-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1124-.Ltext0
	.quad	.LBE1124-.Ltext0
	.quad	.LBB1254-.Ltext0
	.quad	.LBE1254-.Ltext0
	.quad	.LBB1247-.Ltext0
	.quad	.LBE1247-.Ltext0
	.quad	.LBB1134-.Ltext0
	.quad	.LBE1134-.Ltext0
	.quad	.LBB1129-.Ltext0
	.quad	.LBE1129-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1136-.Ltext0
	.quad	.LBE1136-.Ltext0
	.quad	.LBB1256-.Ltext0
	.quad	.LBE1256-.Ltext0
	.quad	.LBB1249-.Ltext0
	.quad	.LBE1249-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1137-.Ltext0
	.quad	.LBE1137-.Ltext0
	.quad	.LBB1257-.Ltext0
	.quad	.LBE1257-.Ltext0
	.quad	.LBB1250-.Ltext0
	.quad	.LBE1250-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1161-.Ltext0
	.quad	.LBE1161-.Ltext0
	.quad	.LBB1323-.Ltext0
	.quad	.LBE1323-.Ltext0
	.quad	.LBB1230-.Ltext0
	.quad	.LBE1230-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1164-.Ltext0
	.quad	.LBE1164-.Ltext0
	.quad	.LBB1324-.Ltext0
	.quad	.LBE1324-.Ltext0
	.quad	.LBB1231-.Ltext0
	.quad	.LBE1231-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1168-.Ltext0
	.quad	.LBE1168-.Ltext0
	.quad	.LBB1233-.Ltext0
	.quad	.LBE1233-.Ltext0
	.quad	.LBB1176-.Ltext0
	.quad	.LBE1176-.Ltext0
	.quad	.LBB1172-.Ltext0
	.quad	.LBE1172-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1178-.Ltext0
	.quad	.LBE1178-.Ltext0
	.quad	.LBB1235-.Ltext0
	.quad	.LBE1235-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1179-.Ltext0
	.quad	.LBE1179-.Ltext0
	.quad	.LBB1236-.Ltext0
	.quad	.LBE1236-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1188-.Ltext0
	.quad	.LBE1188-.Ltext0
	.quad	.LBB1309-.Ltext0
	.quad	.LBE1309-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1189-.Ltext0
	.quad	.LBE1189-.Ltext0
	.quad	.LBB1301-.Ltext0
	.quad	.LBE1301-.Ltext0
	.quad	.LBB1279-.Ltext0
	.quad	.LBE1279-.Ltext0
	.quad	.LBB1261-.Ltext0
	.quad	.LBE1261-.Ltext0
	.quad	.LBB1210-.Ltext0
	.quad	.LBE1210-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1358-.Ltext0
	.quad	.LBE1358-.Ltext0
	.quad	.LBB1427-.Ltext0
	.quad	.LBE1427-.Ltext0
	.quad	.LBB1401-.Ltext0
	.quad	.LBE1401-.Ltext0
	.quad	.LBB1383-.Ltext0
	.quad	.LBE1383-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1360-.Ltext0
	.quad	.LBE1360-.Ltext0
	.quad	.LBB1430-.Ltext0
	.quad	.LBE1430-.Ltext0
	.quad	.LBB1409-.Ltext0
	.quad	.LBE1409-.Ltext0
	.quad	.LBB1407-.Ltext0
	.quad	.LBE1407-.Ltext0
	.quad	.LBB1403-.Ltext0
	.quad	.LBE1403-.Ltext0
	.quad	.LBB1388-.Ltext0
	.quad	.LBE1388-.Ltext0
	.quad	.LBB1370-.Ltext0
	.quad	.LBE1370-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1362-.Ltext0
	.quad	.LBE1362-.Ltext0
	.quad	.LBB1411-.Ltext0
	.quad	.LBE1411-.Ltext0
	.quad	.LBB1390-.Ltext0
	.quad	.LBE1390-.Ltext0
	.quad	.LBB1372-.Ltext0
	.quad	.LBE1372-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1363-.Ltext0
	.quad	.LBE1363-.Ltext0
	.quad	.LBB1412-.Ltext0
	.quad	.LBE1412-.Ltext0
	.quad	.LBB1391-.Ltext0
	.quad	.LBE1391-.Ltext0
	.quad	.LBB1373-.Ltext0
	.quad	.LBE1373-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1366-.Ltext0
	.quad	.LBE1366-.Ltext0
	.quad	.LBB1434-.Ltext0
	.quad	.LBE1434-.Ltext0
	.quad	.LBB1431-.Ltext0
	.quad	.LBE1431-.Ltext0
	.quad	.LBB1428-.Ltext0
	.quad	.LBE1428-.Ltext0
	.quad	.LBB1413-.Ltext0
	.quad	.LBE1413-.Ltext0
	.quad	.LBB1392-.Ltext0
	.quad	.LBE1392-.Ltext0
	.quad	.LBB1384-.Ltext0
	.quad	.LBE1384-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1442-.Ltext0
	.quad	.LBE1442-.Ltext0
	.quad	.LBB1880-.Ltext0
	.quad	.LBE1880-.Ltext0
	.quad	.LBB1872-.Ltext0
	.quad	.LBE1872-.Ltext0
	.quad	.LBB1808-.Ltext0
	.quad	.LBE1808-.Ltext0
	.quad	.LBB1794-.Ltext0
	.quad	.LBE1794-.Ltext0
	.quad	.LBB1653-.Ltext0
	.quad	.LBE1653-.Ltext0
	.quad	.LBB1637-.Ltext0
	.quad	.LBE1637-.Ltext0
	.quad	.LBB1552-.Ltext0
	.quad	.LBE1552-.Ltext0
	.quad	.LBB1444-.Ltext0
	.quad	.LBE1444-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1445-.Ltext0
	.quad	.LBE1445-.Ltext0
	.quad	.LBB1540-.Ltext0
	.quad	.LBE1540-.Ltext0
	.quad	.LBB1465-.Ltext0
	.quad	.LBE1465-.Ltext0
	.quad	.LBB1454-.Ltext0
	.quad	.LBE1454-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1447-.Ltext0
	.quad	.LBE1447-.Ltext0
	.quad	.LBB1542-.Ltext0
	.quad	.LBE1542-.Ltext0
	.quad	.LBB1467-.Ltext0
	.quad	.LBE1467-.Ltext0
	.quad	.LBB1456-.Ltext0
	.quad	.LBE1456-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1450-.Ltext0
	.quad	.LBE1450-.Ltext0
	.quad	.LBB1550-.Ltext0
	.quad	.LBE1550-.Ltext0
	.quad	.LBB1545-.Ltext0
	.quad	.LBE1545-.Ltext0
	.quad	.LBB1473-.Ltext0
	.quad	.LBE1473-.Ltext0
	.quad	.LBB1470-.Ltext0
	.quad	.LBE1470-.Ltext0
	.quad	.LBB1459-.Ltext0
	.quad	.LBE1459-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1490-.Ltext0
	.quad	.LBE1490-.Ltext0
	.quad	.LBB1657-.Ltext0
	.quad	.LBE1657-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1497-.Ltext0
	.quad	.LBE1497-.Ltext0
	.quad	.LBB1905-.Ltext0
	.quad	.LBE1905-.Ltext0
	.quad	.LBB1892-.Ltext0
	.quad	.LBE1892-.Ltext0
	.quad	.LBB1886-.Ltext0
	.quad	.LBE1886-.Ltext0
	.quad	.LBB1873-.Ltext0
	.quad	.LBE1873-.Ltext0
	.quad	.LBB1865-.Ltext0
	.quad	.LBE1865-.Ltext0
	.quad	.LBB1809-.Ltext0
	.quad	.LBE1809-.Ltext0
	.quad	.LBB1795-.Ltext0
	.quad	.LBE1795-.Ltext0
	.quad	.LBB1777-.Ltext0
	.quad	.LBE1777-.Ltext0
	.quad	.LBB1735-.Ltext0
	.quad	.LBE1735-.Ltext0
	.quad	.LBB1692-.Ltext0
	.quad	.LBE1692-.Ltext0
	.quad	.LBB1675-.Ltext0
	.quad	.LBE1675-.Ltext0
	.quad	.LBB1638-.Ltext0
	.quad	.LBE1638-.Ltext0
	.quad	.LBB1553-.Ltext0
	.quad	.LBE1553-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1503-.Ltext0
	.quad	.LBE1503-.Ltext0
	.quad	.LBB1912-.Ltext0
	.quad	.LBE1912-.Ltext0
	.quad	.LBB1894-.Ltext0
	.quad	.LBE1894-.Ltext0
	.quad	.LBB1867-.Ltext0
	.quad	.LBE1867-.Ltext0
	.quad	.LBB1849-.Ltext0
	.quad	.LBE1849-.Ltext0
	.quad	.LBB1811-.Ltext0
	.quad	.LBE1811-.Ltext0
	.quad	.LBB1765-.Ltext0
	.quad	.LBE1765-.Ltext0
	.quad	.LBB1747-.Ltext0
	.quad	.LBE1747-.Ltext0
	.quad	.LBB1737-.Ltext0
	.quad	.LBE1737-.Ltext0
	.quad	.LBB1704-.Ltext0
	.quad	.LBE1704-.Ltext0
	.quad	.LBB1677-.Ltext0
	.quad	.LBE1677-.Ltext0
	.quad	.LBB1640-.Ltext0
	.quad	.LBE1640-.Ltext0
	.quad	.LBB1555-.Ltext0
	.quad	.LBE1555-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1508-.Ltext0
	.quad	.LBE1508-.Ltext0
	.quad	.LBB1868-.Ltext0
	.quad	.LBE1868-.Ltext0
	.quad	.LBB1850-.Ltext0
	.quad	.LBE1850-.Ltext0
	.quad	.LBB1748-.Ltext0
	.quad	.LBE1748-.Ltext0
	.quad	.LBB1738-.Ltext0
	.quad	.LBE1738-.Ltext0
	.quad	.LBB1705-.Ltext0
	.quad	.LBE1705-.Ltext0
	.quad	.LBB1678-.Ltext0
	.quad	.LBE1678-.Ltext0
	.quad	.LBB1641-.Ltext0
	.quad	.LBE1641-.Ltext0
	.quad	.LBB1556-.Ltext0
	.quad	.LBE1556-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1509-.Ltext0
	.quad	.LBE1509-.Ltext0
	.quad	.LBB1511-.Ltext0
	.quad	.LBE1511-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1510-.Ltext0
	.quad	.LBE1510-.Ltext0
	.quad	.LBB1512-.Ltext0
	.quad	.LBE1512-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1518-.Ltext0
	.quad	.LBE1518-.Ltext0
	.quad	.LBB1852-.Ltext0
	.quad	.LBE1852-.Ltext0
	.quad	.LBB1750-.Ltext0
	.quad	.LBE1750-.Ltext0
	.quad	.LBB1740-.Ltext0
	.quad	.LBE1740-.Ltext0
	.quad	.LBB1707-.Ltext0
	.quad	.LBE1707-.Ltext0
	.quad	.LBB1643-.Ltext0
	.quad	.LBE1643-.Ltext0
	.quad	.LBB1558-.Ltext0
	.quad	.LBE1558-.Ltext0
	.quad	.LBB1520-.Ltext0
	.quad	.LBE1520-.Ltext0
	.quad	.LBB1519-.Ltext0
	.quad	.LBE1519-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1522-.Ltext0
	.quad	.LBE1522-.Ltext0
	.quad	.LBB1645-.Ltext0
	.quad	.LBE1645-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1533-.Ltext0
	.quad	.LBE1533-.Ltext0
	.quad	.LBB1680-.Ltext0
	.quad	.LBE1680-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1560-.Ltext0
	.quad	.LBE1560-.Ltext0
	.quad	.LBB1714-.Ltext0
	.quad	.LBE1714-.Ltext0
	.quad	.LBB1709-.Ltext0
	.quad	.LBE1709-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1564-.Ltext0
	.quad	.LBE1564-.Ltext0
	.quad	.LBB1570-.Ltext0
	.quad	.LBE1570-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1573-.Ltext0
	.quad	.LBE1573-.Ltext0
	.quad	.LBB1576-.Ltext0
	.quad	.LBE1576-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1577-.Ltext0
	.quad	.LBE1577-.Ltext0
	.quad	.LBB1585-.Ltext0
	.quad	.LBE1585-.Ltext0
	.quad	.LBB1584-.Ltext0
	.quad	.LBE1584-.Ltext0
	.quad	.LBB1581-.Ltext0
	.quad	.LBE1581-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1596-.Ltext0
	.quad	.LBE1596-.Ltext0
	.quad	.LBB1780-.Ltext0
	.quad	.LBE1780-.Ltext0
	.quad	.LBB1745-.Ltext0
	.quad	.LBE1745-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1623-.Ltext0
	.quad	.LBE1623-.Ltext0
	.quad	.LBB1902-.Ltext0
	.quad	.LBE1902-.Ltext0
	.quad	.LBB1897-.Ltext0
	.quad	.LBE1897-.Ltext0
	.quad	.LBB1889-.Ltext0
	.quad	.LBE1889-.Ltext0
	.quad	.LBB1883-.Ltext0
	.quad	.LBE1883-.Ltext0
	.quad	.LBB1876-.Ltext0
	.quad	.LBE1876-.Ltext0
	.quad	.LBB1862-.Ltext0
	.quad	.LBE1862-.Ltext0
	.quad	.LBB1732-.Ltext0
	.quad	.LBE1732-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1648-.Ltext0
	.quad	.LBE1648-.Ltext0
	.quad	.LBB1651-.Ltext0
	.quad	.LBE1651-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1660-.Ltext0
	.quad	.LBE1660-.Ltext0
	.quad	.LBB1663-.Ltext0
	.quad	.LBE1663-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1683-.Ltext0
	.quad	.LBE1683-.Ltext0
	.quad	.LBB1686-.Ltext0
	.quad	.LBE1686-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1696-.Ltext0
	.quad	.LBE1696-.Ltext0
	.quad	.LBB1798-.Ltext0
	.quad	.LBE1798-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1718-.Ltext0
	.quad	.LBE1718-.Ltext0
	.quad	.LBB1752-.Ltext0
	.quad	.LBE1752-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1725-.Ltext0
	.quad	.LBE1725-.Ltext0
	.quad	.LBB1741-.Ltext0
	.quad	.LBE1741-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1755-.Ltext0
	.quad	.LBE1755-.Ltext0
	.quad	.LBB1758-.Ltext0
	.quad	.LBE1758-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1799-.Ltext0
	.quad	.LBE1799-.Ltext0
	.quad	.LBB1908-.Ltext0
	.quad	.LBE1908-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1803-.Ltext0
	.quad	.LBE1803-.Ltext0
	.quad	.LBB1870-.Ltext0
	.quad	.LBE1870-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1812-.Ltext0
	.quad	.LBE1812-.Ltext0
	.quad	.LBB1819-.Ltext0
	.quad	.LBE1819-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1814-.Ltext0
	.quad	.LBE1814-.Ltext0
	.quad	.LBB1821-.Ltext0
	.quad	.LBE1821-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1824-.Ltext0
	.quad	.LBE1824-.Ltext0
	.quad	.LBB1827-.Ltext0
	.quad	.LBE1827-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB1828-.Ltext0
	.quad	.LBE1828-.Ltext0
	.quad	.LBB1913-.Ltext0
	.quad	.LBE1913-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF126:
	.string	"translation"
.LASF39:
	.string	"st_ctim"
.LASF47:
	.string	"size_t"
.LASF384:
	.string	"remove_direntries"
.LASF200:
	.string	"root_entries"
.LASF35:
	.string	"st_blksize"
.LASF424:
	.string	"bootsector"
.LASF330:
	.string	"__s2_len"
.LASF296:
	.string	"index_from"
.LASF442:
	.string	"number_of_entries"
.LASF261:
	.string	"current_fd"
.LASF103:
	.string	"total_sectors"
.LASF49:
	.string	"int32_t"
.LASF141:
	.string	"bdrv_set_key"
.LASF172:
	.string	"date_nsec"
.LASF64:
	.string	"_IO_save_end"
.LASF148:
	.string	"bdrv_pread"
.LASF190:
	.string	"backup_boot_sector"
.LASF413:
	.string	"vvfat_write"
.LASF9:
	.string	"__gid_t"
.LASF248:
	.string	"path"
.LASF123:
	.string	"cyls"
.LASF155:
	.string	"bdrv_snapshot_delete"
.LASF38:
	.string	"st_mtim"
.LASF20:
	.string	"time_t"
.LASF57:
	.string	"_IO_write_base"
.LASF298:
	.string	"from"
.LASF365:
	.string	"fat_chksum"
.LASF73:
	.string	"_lock"
.LASF402:
	.string	"clear_commits"
.LASF196:
	.string	"sector_size"
.LASF427:
	.string	"read_directory"
.LASF337:
	.string	"array_get_next"
.LASF218:
	.string	"length_sector_long"
.LASF25:
	.string	"stat"
.LASF62:
	.string	"_IO_save_base"
.LASF133:
	.string	"bdrv_probe"
.LASF387:
	.string	"max_i"
.LASF164:
	.string	"BlockDriverInfo"
.LASF445:
	.string	"fat_set"
.LASF313:
	.string	"return_time"
.LASF426:
	.string	"init_fat"
.LASF438:
	.string	"entry_long"
.LASF70:
	.string	"_cur_column"
.LASF222:
	.string	"partition"
.LASF432:
	.string	"is_dotdot"
.LASF7:
	.string	"__dev_t"
.LASF202:
	.string	"media_type"
.LASF80:
	.string	"_mode"
.LASF381:
	.string	"mapping_index"
.LASF433:
	.string	"__path"
.LASF320:
	.string	"result"
.LASF400:
	.string	"used_clusters_count"
.LASF125:
	.string	"secs"
.LASF105:
	.string	"removable"
.LASF173:
	.string	"vm_clock_nsec"
.LASF251:
	.string	"first_sectors_number"
.LASF6:
	.string	"long int"
.LASF299:
	.string	"array_index"
.LASF210:
	.string	"cylinder"
.LASF99:
	.string	"tm_isdst"
.LASF367:
	.string	"parse_short_name"
.LASF306:
	.string	"is_short_name"
.LASF232:
	.string	"begin"
.LASF83:
	.string	"_IO_marker"
.LASF110:
	.string	"opaque"
.LASF456:
	.string	"bdrv_first"
.LASF259:
	.string	"cluster_count"
.LASF170:
	.string	"vm_state_size"
.LASF262:
	.string	"current_mapping"
.LASF208:
	.string	"head"
.LASF368:
	.string	"__res"
.LASF163:
	.string	"free_aiocb"
.LASF347:
	.string	"path2"
.LASF272:
	.string	"downcase_short_names"
.LASF216:
	.string	"end_CHS"
.LASF361:
	.string	"modified_fat_get"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF249:
	.string	"mode"
.LASF52:
	.string	"_IO_FILE"
.LASF30:
	.string	"st_uid"
.LASF379:
	.string	"adjust"
.LASF358:
	.string	"schedule_writeout"
.LASF119:
	.string	"rd_bytes"
.LASF117:
	.string	"backing_hd"
.LASF440:
	.string	"cpu_to_le32"
.LASF324:
	.string	"index2"
.LASF0:
	.string	"unsigned char"
.LASF325:
	.string	"index3"
.LASF33:
	.string	"st_rdev"
.LASF159:
	.string	"bdrv_media_changed"
.LASF181:
	.string	"current_head"
.LASF414:
	.string	"vvfat_is_allocated"
.LASF183:
	.string	"volume_label"
.LASF377:
	.string	"increment"
.LASF439:
	.string	"entry1"
.LASF215:
	.string	"fs_type"
.LASF102:
	.string	"BlockDriverState"
.LASF428:
	.string	"parent_index"
.LASF150:
	.string	"bdrv_truncate"
.LASF265:
	.string	"current_cluster"
.LASF116:
	.string	"media_changed"
.LASF114:
	.string	"backing_file"
.LASF446:
	.string	"value"
.LASF217:
	.string	"start_sector_long"
.LASF310:
	.string	"cpu_to_le16"
.LASF360:
	.string	"is_dot"
.LASF288:
	.string	"long_file_name"
.LASF19:
	.string	"char"
.LASF138:
	.string	"bdrv_create"
.LASF147:
	.string	"protocol_name"
.LASF176:
	.string	"array_t"
.LASF180:
	.string	"drive_number"
.LASF206:
	.string	"fat_type"
.LASF303:
	.string	"direntry"
.LASF82:
	.string	"_IO_lock_t"
.LASF145:
	.string	"bdrv_aio_cancel"
.LASF203:
	.string	"sectors_per_track"
.LASF308:
	.string	"is_file"
.LASF46:
	.string	"d_name"
.LASF113:
	.string	"filename"
.LASF348:
	.string	"read_cluster_directory"
.LASF270:
	.string	"used_clusters"
.LASF12:
	.string	"__mode_t"
.LASF403:
	.string	"do_commit"
.LASF185:
	.string	"flags"
.LASF154:
	.string	"bdrv_snapshot_goto"
.LASF92:
	.string	"tm_min"
.LASF382:
	.string	"adjust_dirindices"
.LASF54:
	.string	"_IO_read_ptr"
.LASF267:
	.string	"qcow_filename"
.LASF415:
	.string	"write_target_commit"
.LASF350:
	.string	"subret"
.LASF359:
	.string	"cluster2sector"
.LASF137:
	.string	"bdrv_close"
.LASF423:
	.string	"init_directories"
.LASF86:
	.string	"_pos"
.LASF451:
	.string	"stdin"
.LASF459:
	.string	"block-vvfat.c"
.LASF452:
	.string	"stdout"
.LASF93:
	.string	"tm_hour"
.LASF219:
	.string	"mbr_t"
.LASF274:
	.string	"first_cluster"
.LASF235:
	.string	"first_dir_index"
.LASF65:
	.string	"_markers"
.LASF122:
	.string	"wr_ops"
.LASF236:
	.string	"file"
.LASF326:
	.string	"array_get"
.LASF314:
	.string	"vvfat_read"
.LASF335:
	.string	"new_path"
.LASF455:
	.string	"bdrv_vvfat"
.LASF429:
	.string	"parent_mapping"
.LASF395:
	.string	"rest_size"
.LASF411:
	.string	"next_dir_index"
.LASF345:
	.string	"direntries"
.LASF27:
	.string	"st_ino"
.LASF128:
	.string	"device_name"
.LASF416:
	.string	"buffer"
.LASF124:
	.string	"heads"
.LASF340:
	.string	"lfn_init"
.LASF422:
	.string	"floppy"
.LASF398:
	.string	"is_consistent"
.LASF177:
	.string	"pointer"
.LASF91:
	.string	"tm_sec"
.LASF74:
	.string	"_offset"
.LASF139:
	.string	"bdrv_flush"
.LASF278:
	.string	"mkdir"
.LASF224:
	.string	"extension"
.LASF211:
	.string	"mbr_chs_t"
.LASF8:
	.string	"__uid_t"
.LASF201:
	.string	"total_sectors16"
.LASF31:
	.string	"st_gid"
.LASF304:
	.string	"is_volume_label"
.LASF290:
	.string	"index"
.LASF136:
	.string	"bdrv_write"
.LASF253:
	.string	"directory"
.LASF419:
	.string	"array_init"
.LASF461:
	.string	"__dirstream"
.LASF322:
	.string	"find_mapping_for_cluster_aux"
.LASF383:
	.string	"insert_direntries"
.LASF161:
	.string	"bdrv_set_locked"
.LASF275:
	.string	"rename"
.LASF300:
	.string	"sector2CHS"
.LASF175:
	.string	"BlockDriverCompletionFunc"
.LASF3:
	.string	"long unsigned int"
.LASF437:
	.string	"long_index"
.LASF244:
	.string	"mapping_t"
.LASF399:
	.string	"check"
.LASF375:
	.string	"first_mapping"
.LASF351:
	.string	"basename2"
.LASF68:
	.string	"_flags2"
.LASF56:
	.string	"_IO_read_base"
.LASF26:
	.string	"st_dev"
.LASF307:
	.string	"is_directory"
.LASF405:
	.string	"old_path"
.LASF81:
	.string	"_unused2"
.LASF454:
	.string	"bdrv_qcow"
.LASF24:
	.string	"timespec"
.LASF45:
	.string	"d_type"
.LASF112:
	.string	"boot_sector_data"
.LASF352:
	.string	"get_cluster_count_for_direntry"
.LASF237:
	.string	"MODE_UNDEFINED"
.LASF245:
	.string	"dir_index"
.LASF294:
	.string	"array_roll"
.LASF132:
	.string	"instance_size"
.LASF166:
	.string	"vm_state_offset"
.LASF69:
	.string	"_old_offset"
.LASF319:
	.string	"read_cluster"
.LASF18:
	.string	"__blkcnt_t"
.LASF287:
	.string	"sequence_number"
.LASF394:
	.string	"commit_one_file"
.LASF372:
	.string	"schedule_mkdir"
.LASF186:
	.string	"major"
.LASF280:
	.string	"ACTION_WRITEOUT"
.LASF408:
	.string	"handle_deletes"
.LASF10:
	.string	"__ino_t"
.LASF333:
	.string	"__s1"
.LASF292:
	.string	"array_remove_slice"
.LASF107:
	.string	"encrypted"
.LASF48:
	.string	"long long int"
.LASF276:
	.string	"writeout"
.LASF410:
	.string	"deleted"
.LASF95:
	.string	"tm_mon"
.LASF223:
	.string	"direntry_t"
.LASF238:
	.string	"MODE_NORMAL"
.LASF271:
	.string	"commits"
.LASF406:
	.string	"diff"
.LASF388:
	.string	"commit_direntries"
.LASF234:
	.string	"parent_mapping_index"
.LASF111:
	.string	"boot_sector_enabled"
.LASF343:
	.string	"basename"
.LASF315:
	.string	"sector_num"
.LASF59:
	.string	"_IO_write_end"
.LASF221:
	.string	"ignored2"
.LASF104:
	.string	"read_only"
.LASF284:
	.string	"param"
.LASF380:
	.string	"remove_mapping"
.LASF142:
	.string	"bdrv_make_empty"
.LASF293:
	.string	"count"
.LASF373:
	.string	"schedule_new_file"
.LASF435:
	.string	"create_short_and_long_name"
.LASF60:
	.string	"_IO_buf_base"
.LASF84:
	.string	"_next"
.LASF2:
	.string	"unsigned int"
.LASF152:
	.string	"bdrv_write_compressed"
.LASF209:
	.string	"sector"
.LASF115:
	.string	"is_temporary"
.LASF151:
	.string	"bdrv_getlength"
.LASF458:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF229:
	.string	"begin_hi"
.LASF109:
	.string	"change_opaque"
.LASF457:
	.string	"vvfat_write_target"
.LASF430:
	.string	"first_cluster_of_parent"
.LASF121:
	.string	"rd_ops"
.LASF32:
	.string	"__pad0"
.LASF75:
	.string	"__pad1"
.LASF76:
	.string	"__pad2"
.LASF77:
	.string	"__pad3"
.LASF78:
	.string	"__pad4"
.LASF79:
	.string	"__pad5"
.LASF385:
	.string	"commit_mappings"
.LASF85:
	.string	"_sbuf"
.LASF157:
	.string	"bdrv_get_info"
.LASF260:
	.string	"max_fat_value"
.LASF187:
	.string	"minor"
.LASF156:
	.string	"bdrv_snapshot_list"
.LASF404:
	.string	"handle_renames_and_mkdirs"
.LASF231:
	.string	"mdate"
.LASF53:
	.string	"_flags"
.LASF233:
	.string	"offset"
.LASF255:
	.string	"sectors_of_root_directory"
.LASF256:
	.string	"last_cluster_of_root_directory"
.LASF226:
	.string	"ctime"
.LASF250:
	.string	"BDRVVVFATState"
.LASF441:
	.string	"create_long_filename"
.LASF449:
	.string	"vvfat_close"
.LASF431:
	.string	"length"
.LASF28:
	.string	"st_nlink"
.LASF23:
	.string	"off_t"
.LASF448:
	.string	"real_mbr"
.LASF127:
	.string	"type"
.LASF40:
	.string	"__unused"
.LASF191:
	.string	"ignored"
.LASF329:
	.string	"__s1_len"
.LASF277:
	.string	"new_file"
.LASF129:
	.string	"next"
.LASF397:
	.string	"try_commit"
.LASF252:
	.string	"first_sectors"
.LASF11:
	.string	"__ino64_t"
.LASF418:
	.string	"enable_write_target"
.LASF214:
	.string	"start_CHS"
.LASF366:
	.string	"chksum"
.LASF120:
	.string	"wr_bytes"
.LASF286:
	.string	"checksum"
.LASF198:
	.string	"reserved_sectors"
.LASF362:
	.string	"entry"
.LASF281:
	.string	"ACTION_NEW_FILE"
.LASF339:
	.string	"new_size"
.LASF204:
	.string	"number_of_heads"
.LASF94:
	.string	"tm_mday"
.LASF247:
	.string	"info"
.LASF328:
	.string	"open_file"
.LASF266:
	.string	"write_target"
.LASF295:
	.string	"index_to"
.LASF227:
	.string	"cdate"
.LASF447:
	.string	"init_mbr"
.LASF178:
	.string	"size"
.LASF189:
	.string	"info_sector"
.LASF51:
	.string	"long long unsigned int"
.LASF344:
	.string	"check_directory_consistency"
.LASF393:
	.string	"fat_get"
.LASF87:
	.string	"uint8_t"
.LASF188:
	.string	"first_cluster_of_root_directory"
.LASF88:
	.string	"uint16_t"
.LASF14:
	.string	"__off_t"
.LASF66:
	.string	"_chain"
.LASF268:
	.string	"qcow"
.LASF376:
	.string	"array_insert"
.LASF374:
	.string	"insert_mapping"
.LASF354:
	.string	"was_modified"
.LASF134:
	.string	"bdrv_open"
.LASF389:
	.string	"factor"
.LASF291:
	.string	"array_remove"
.LASF412:
	.string	"handle_commits"
.LASF289:
	.string	"array"
.LASF98:
	.string	"tm_yday"
.LASF353:
	.string	"copy_it"
.LASF108:
	.string	"change_cb"
.LASF16:
	.string	"__time_t"
.LASF158:
	.string	"bdrv_is_inserted"
.LASF184:
	.string	"sectors_per_fat"
.LASF63:
	.string	"_IO_backup_base"
.LASF72:
	.string	"_shortbuf"
.LASF444:
	.string	"dest"
.LASF220:
	.string	"nt_id"
.LASF371:
	.string	"cluster_was_modified"
.LASF167:
	.string	"QEMUSnapshotInfo"
.LASF15:
	.string	"__off64_t"
.LASF146:
	.string	"aiocb_size"
.LASF168:
	.string	"id_str"
.LASF460:
	.string	"/home/remco/Projects/Argos/src"
.LASF192:
	.string	"fat16"
.LASF242:
	.string	"MODE_DELETED"
.LASF301:
	.string	"spos"
.LASF425:
	.string	"fix_fat"
.LASF356:
	.string	"__retval"
.LASF357:
	.string	"dummy"
.LASF323:
	.string	"index1"
.LASF207:
	.string	"magic"
.LASF160:
	.string	"bdrv_eject"
.LASF349:
	.string	"fail"
.LASF338:
	.string	"array_ensure_allocated"
.LASF273:
	.string	"modified_offset"
.LASF61:
	.string	"_IO_buf_end"
.LASF417:
	.string	"write_target_close"
.LASF239:
	.string	"MODE_MODIFIED"
.LASF257:
	.string	"faked_sectors"
.LASF169:
	.string	"name"
.LASF143:
	.string	"bdrv_aio_read"
.LASF194:
	.string	"bootsector_t"
.LASF309:
	.string	"set_begin_of_direntry"
.LASF378:
	.string	"adjust_mapping_indices"
.LASF100:
	.string	"tm_gmtoff"
.LASF241:
	.string	"MODE_FAKED"
.LASF355:
	.string	"__len"
.LASF213:
	.string	"attributes"
.LASF453:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF195:
	.string	"jump"
.LASF118:
	.string	"sync_aiocb"
.LASF90:
	.string	"uint64_t"
.LASF341:
	.string	"parse_long_name"
.LASF283:
	.string	"commit_t"
.LASF391:
	.string	"new_cluster_count"
.LASF22:
	.string	"tv_nsec"
.LASF197:
	.string	"sectors_per_cluster"
.LASF334:
	.string	"schedule_rename"
.LASF199:
	.string	"number_of_fats"
.LASF311:
	.string	"fat_datetime"
.LASF193:
	.string	"fat32"
.LASF407:
	.string	"parent_path_len"
.LASF386:
	.string	"next_mapping"
.LASF71:
	.string	"_vtable_offset"
.LASF162:
	.string	"bdrv_ioctl"
.LASF205:
	.string	"hidden_sectors"
.LASF212:
	.string	"partition_t"
.LASF443:
	.string	"short2long_name"
.LASF41:
	.string	"dirent"
.LASF390:
	.string	"old_cluster_count"
.LASF364:
	.string	"fat_entry"
.LASF263:
	.string	"cluster"
.LASF316:
	.string	"nb_sectors"
.LASF44:
	.string	"d_reclen"
.LASF182:
	.string	"signature"
.LASF144:
	.string	"bdrv_aio_write"
.LASF302:
	.string	"is_free"
.LASF370:
	.string	"le32_to_cpu"
.LASF101:
	.string	"tm_zone"
.LASF34:
	.string	"st_size"
.LASF243:
	.string	"MODE_RENAMED"
.LASF420:
	.string	"vvfat_open"
.LASF230:
	.string	"mtime"
.LASF29:
	.string	"st_mode"
.LASF135:
	.string	"bdrv_read"
.LASF392:
	.string	"current_dir_index"
.LASF318:
	.string	"cluster_num"
.LASF55:
	.string	"_IO_read_end"
.LASF130:
	.string	"BlockDriver"
.LASF42:
	.string	"d_ino"
.LASF363:
	.string	"fat_eof"
.LASF97:
	.string	"tm_wday"
.LASF228:
	.string	"adate"
.LASF153:
	.string	"bdrv_snapshot_create"
.LASF36:
	.string	"st_blocks"
.LASF140:
	.string	"bdrv_is_allocated"
.LASF171:
	.string	"date_sec"
.LASF89:
	.string	"uint32_t"
.LASF106:
	.string	"locked"
.LASF421:
	.string	"dirname"
.LASF67:
	.string	"_fileno"
.LASF179:
	.string	"item_size"
.LASF369:
	.string	"begin_of_direntry"
.LASF317:
	.string	"sector_offset_in_cluster"
.LASF285:
	.string	"action"
.LASF450:
	.string	"array_free"
.LASF225:
	.string	"reserved"
.LASF131:
	.string	"format_name"
.LASF96:
	.string	"tm_year"
.LASF1:
	.string	"short unsigned int"
.LASF165:
	.string	"cluster_size"
.LASF264:
	.string	"cluster_buffer"
.LASF342:
	.string	"get_basename"
.LASF58:
	.string	"_IO_write_ptr"
.LASF254:
	.string	"mapping"
.LASF258:
	.string	"sector_count"
.LASF312:
	.string	"time"
.LASF297:
	.string	"__PRETTY_FUNCTION__"
.LASF332:
	.string	"__result"
.LASF43:
	.string	"d_off"
.LASF396:
	.string	"filesize_of_direntry"
.LASF50:
	.string	"int64_t"
.LASF409:
	.string	"deferred"
.LASF279:
	.string	"ACTION_RENAME"
.LASF269:
	.string	"fat2"
.LASF240:
	.string	"MODE_DIRECTORY"
.LASF13:
	.string	"__nlink_t"
.LASF434:
	.string	"__statbuf"
.LASF331:
	.string	"__s2"
.LASF305:
	.string	"is_long_name"
.LASF149:
	.string	"bdrv_pwrite"
.LASF21:
	.string	"tv_sec"
.LASF401:
	.string	"sector2cluster"
.LASF336:
	.string	"commit"
.LASF246:
	.string	"first_mapping_index"
.LASF174:
	.string	"BlockDriverAIOCB"
.LASF346:
	.string	"path_len"
.LASF327:
	.string	"vvfat_close_current_file"
.LASF282:
	.string	"ACTION_MKDIR"
.LASF321:
	.string	"find_mapping_for_cluster"
.LASF436:
	.string	"directory_start"
.LASF37:
	.string	"st_atim"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
