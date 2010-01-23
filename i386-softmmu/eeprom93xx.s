	.file	"eeprom93xx.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	eeprom_instance
	.comm	eeprom_instance,4,4
	.p2align 4,,15
	.type	eeprom_save, @function
eeprom_save:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/eeprom93xx.c"
	.loc 1 94 0
	pushq	%r12
.LCFI0:
	.loc 1 98 0
	movl	$10, %edx
	.loc 1 94 0
	movq	%rdi, %r12
	pushq	%rbp
.LCFI1:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI2:
	.loc 1 100 0
	xorl	%ebx, %ebx
	.loc 1 98 0
	call	qemu_put_buffer
	.loc 1 99 0
	movzwl	10(%rbp), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
	.loc 1 100 0
	cmpb	$0, 8(%rbp)
	jne	.L5
.L7:
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5:
	.loc 1 101 0
	mov	%ebx, %eax
	movq	%r12, %rdi
	.loc 1 100 0
	incl	%ebx
	.loc 1 101 0
	movzwl	12(%rbp,%rax,2), %esi
	call	qemu_put_be16
	.loc 1 100 0
	movzbl	8(%rbp), %eax
	cmpl	%ebx, %eax
	jbe	.L7
	.loc 1 101 0
	mov	%ebx, %eax
	movq	%r12, %rdi
	.loc 1 100 0
	incl	%ebx
	.loc 1 101 0
	movzwl	12(%rbp,%rax,2), %esi
	call	qemu_put_be16
	.loc 1 100 0
	movzbl	8(%rbp), %eax
	cmpl	%ebx, %eax
	ja	.L5
	jmp	.L7
.LFE194:
	.size	eeprom_save, .-eeprom_save
	.p2align 4,,15
	.type	eeprom_load, @function
eeprom_load:
.LFB195:
	.loc 1 106 0
	movq	%rbp, -24(%rsp)
.LCFI3:
	movq	%r12, -16(%rsp)
.LCFI4:
	movq	%rsi, %rbp
	movq	%r13, -8(%rsp)
.LCFI5:
	movq	%rbx, -32(%rsp)
.LCFI6:
	subq	$40, %rsp
.LCFI7:
	.loc 1 111 0
	cmpl	$20061112, %edx
	.loc 1 106 0
	movq	%rdi, %r12
	.loc 1 110 0
	movl	$-22, %r13d
	.loc 1 111 0
	je	.L19
.L11:
	.loc 1 124 0
	movl	%r13d, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L19:
.LBB2:
	.loc 1 113 0
	movzbl	8(%rsi), %ebx
	.loc 1 114 0
	movl	$10, %edx
	call	qemu_get_buffer
	.loc 1 115 0
	cmpb	%bl, 8(%rbp)
	jne	.L11
	.loc 1 116 0
	movq	%r12, %rdi
	.loc 1 117 0
	xorl	%r13d, %r13d
	.loc 1 116 0
	call	qemu_get_be16
	.loc 1 117 0
	cmpb	$0, 8(%rbp)
	.loc 1 116 0
	movw	%ax, 10(%rbp)
	.loc 1 117 0
	jne	.L16
.L18:
	.loc 1 120 0
	xorl	%r13d, %r13d
	jmp	.L11
.L16:
	.loc 1 118 0
	mov	%r13d, %ebx
	movq	%r12, %rdi
	.loc 1 117 0
	incl	%r13d
	.loc 1 118 0
	call	qemu_get_be16
	movw	%ax, 12(%rbp,%rbx,2)
	.loc 1 117 0
	movzbl	8(%rbp), %eax
	cmpl	%r13d, %eax
	ja	.L16
	jmp	.L18
.LBE2:
.LFE195:
	.size	eeprom_load, .-eeprom_load
	.p2align 4,,15
.globl eeprom93xx_write
	.type	eeprom93xx_write, @function
eeprom93xx_write:
.LFB196:
	.loc 1 127 0
	.loc 1 136 0
	movzbl	4(%rdi), %r8d
	.loc 1 127 0
	movq	%rbp, -16(%rsp)
.LCFI8:
	movl	%edx, %ebp
	movq	%rbx, -24(%rsp)
.LCFI9:
	movq	%r12, -8(%rsp)
.LCFI10:
	.loc 1 128 0
	movzbl	(%rdi), %r10d
	.loc 1 129 0
	movzbl	6(%rdi), %ebx
	.loc 1 130 0
	movzbw	1(%rdi), %r9w
	.loc 1 131 0
	movzbl	2(%rdi), %r11d
	.loc 1 136 0
	testb	%r8b, %r8b
	sete	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	setne	%al
	testl	%edx, %eax
	je	.L21
	.loc 1 139 0
	xorl	%r10d, %r10d
	.loc 1 140 0
	xorl	%r11d, %r11d
	.loc 1 141 0
	xorl	%r9d, %r9d
.L22:
	.loc 1 245 0
	movb	%bpl, 5(%rdi)
	.loc 1 246 0
	movb	%bl, 6(%rdi)
	.loc 1 248 0
	movq	-16(%rsp), %rbp
	movq	-24(%rsp), %rbx
	movq	-8(%rsp), %r12
	.loc 1 243 0
	movb	%r10b, (%rdi)
	.loc 1 244 0
	movb	%sil, 4(%rdi)
	.loc 1 247 0
	movb	%r9b, 1(%rdi)
	.loc 1 248 0
	movb	%r11b, 2(%rdi)
	ret
	.p2align 4,,7
.L21:
	.loc 1 142 0
	testb	%r8b, %r8b
	setne	%dl
	xorl	%eax, %eax
	testl	%esi, %esi
	sete	%al
	testl	%edx, %eax
	je	.L23
	.loc 1 144 0
	cmpb	$0, 3(%rdi)
	je	.L24
.LBB3:
	.loc 1 145 0
	movzbl	7(%rdi), %r8d
	movzwl	%r9w, %eax
	movl	%eax, %ebx
	leal	-2(%r8), %ecx
	sarl	%cl, %ebx
	.loc 1 146 0
	xorl	%ecx, %ecx
	testb	%r11b, %r11b
	sete	%cl
	cmpb	$2, %bl
	sete	%al
	testl	%eax, %ecx
	je	.L25
	.loc 1 148 0
	movzbw	8(%rdi), %dx
	xorl	%r9d, %r9d
	cmpw	$0, %dx
	jmp	.L72
	.p2align 4,,7
.L73:
	.loc 1 149 0
	movzwl	%r9w, %eax 
	.loc 1 148 0
	incl	%r9d
	.loc 1 149 0
	movw	$-1, 12(%rdi,%rax,2)
	.loc 1 148 0
	cmpw	%r9w, %dx
.L72:
	ja	.L73
.L24:
.LBE3:
	.loc 1 167 0
	movl	$1, %ebx
	jmp	.L22
	.p2align 4,,7
.L23:
	.loc 1 168 0
	testl	%esi, %esi
	je	.L22
	cmpb	$0, 5(%rdi)
	sete	%dl
	xorl	%eax, %eax
	testl	%ebp, %ebp
	setne	%al
	testl	%edx, %eax
	je	.L22
	.loc 1 170 0
	testb	%r10b, %r10b
	je	.L74
	.loc 1 180 0
	cmpb	$1, %r10b
	je	.L75
	.loc 1 188 0
	cmpb	$3, %r10b
	.p2align 4,,5
	ja	.L51
	.loc 1 190 0
	incl	%r10d
	.loc 1 191 0
	addl	%r11d, %r11d
	.loc 1 192 0
	testl	%ecx, %ecx
	je	.L22
	.loc 1 193 0
	incl	%r11d
	jmp	.L22
	.p2align 4,,7
.L25:
.LBB4:
	.loc 1 151 0
	cmpb	$3, %r11b
	je	.L76
	.loc 1 154 0
	leal	20(%r8), %eax
	movzbl	%r10b, %edx
	cmpl	%eax, %edx
	jl	.L24
	.loc 1 155 0
	cmpb	$1, %r11b
	je	.L77
	.loc 1 158 0
	decb	%bl
	sete	%al
	testl	%eax, %ecx
	je	.L24
	.loc 1 160 0
	movzbw	8(%rdi), %cx
	xorl	%r9d, %r9d
	cmpw	$0, %cx
	jbe	.L24
	movzwl	10(%rdi), %edx
.L40:
	.loc 1 161 0
	movzwl	%r9w, %eax 
	.loc 1 160 0
	incl	%r9d
	.loc 1 161 0
	andw	%dx, 12(%rdi,%rax,2)
	.loc 1 160 0
	cmpw	%r9w, %cx
	ja	.L40
.LBE4:
	.loc 1 167 0
	movl	$1, %ebx
	jmp	.L22
.L74:
	.loc 1 174 0
	cmpl	$1, %ecx
	sbbl	%r10d, %r10d
	addl	$2, %r10d
	jmp	.L22
.L76:
.LBB5:
	.loc 1 153 0
	movzwl	%r9w, %eax 
.LBE5:
	.loc 1 167 0
	movl	$1, %ebx
.LBB6:
	.loc 1 153 0
	movw	$-1, 12(%rdi,%rax,2)
	jmp	.L22
.L51:
.LBE6:
	.loc 1 195 0
	movzbl	7(%rdi), %r12d
	movzbl	%r10b, %edx
	leal	4(%r12), %r8d
	cmpl	%r8d, %edx
	jge	.L54
	.loc 1 197 0
	incl	%r10d
	.loc 1 198 0
	addl	%r9d, %r9d
	.loc 1 199 0
	movzbl	%r10b, %eax
	.loc 1 198 0
	orl	%ecx, %r9d
	.loc 1 199 0
	cmpl	%r8d, %eax
	jne	.L22
	.loc 1 205 0
	movzbl	8(%rdi), %edx
	.loc 1 203 0
	cmpb	$2, %r11b
	movl	$0, %eax
	cmove	%eax, %ebx
	.loc 1 205 0
	movzwl	%r9w, %eax
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	.loc 1 206 0
	testb	%r11b, %r11b
	.loc 1 205 0
	movl	%edx, %r9d
	.loc 1 206 0
	jne	.L57
	.loc 1 208 0
	leal	-2(%r12), %ecx
	movzwl	%dx, %eax
	sarl	%cl, %eax
	testl	%eax, %eax
	je	.L59
	cmpl	$3, %eax
	jne	.L22
	.loc 1 221 0
	movb	$1, 3(%rdi)
	jmp	.L22
	.p2align 4,,7
.L75:
	.loc 1 182 0
	testl	%ecx, %ecx
	.p2align 4,,5
	je	.L22
	.loc 1 184 0
	movl	$2, %r10d
	.p2align 4,,5
	jmp	.L22
.L77:
.LBB7:
	.loc 1 157 0
	movzwl	%r9w, %edx 
	movzwl	10(%rdi), %eax
.LBE7:
	.loc 1 167 0
	movl	$1, %ebx
.LBB8:
	.loc 1 157 0
	andw	%ax, 12(%rdi,%rdx,2)
	jmp	.L22
.L54:
.LBE8:
	.loc 1 229 0
	leal	20(%r12), %eax
	cmpl	%eax, %edx
	jge	.L22
	.loc 1 231 0
	incl	%r10d
	.loc 1 232 0
	cmpb	$2, %r11b
	je	.L78
	movzwl	10(%rdi), %edx
.L66:
	.loc 1 237 0
	leal	(%rcx,%rdx,2), %eax
	movw	%ax, 10(%rdi)
	jmp	.L22
.L57:
	.loc 1 226 0
	movzwl	%dx, %eax 
	movzwl	12(%rdi,%rax,2), %edx
	movw	%dx, 10(%rdi)
	jmp	.L22
.L78:
	.loc 1 234 0
	movzwl	10(%rdi), %edx
	movl	%edx, %ebx
	shrw	$15, %bx
	jmp	.L66
.L59:
	.loc 1 211 0
	movb	$0, 3(%rdi)
	jmp	.L22
.LFE196:
	.size	eeprom93xx_write, .-eeprom93xx_write
	.p2align 4,,15
.globl eeprom93xx_read
	.type	eeprom93xx_read, @function
eeprom93xx_read:
.LFB197:
	.loc 1 252 0
	.loc 1 255 0
	movzbl	6(%rdi), %eax
	.loc 1 256 0
	ret
.LFE197:
	.size	eeprom93xx_read, .-eeprom93xx_read
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 15
__PRETTY_FUNCTION__.0:
	.string	"eeprom93xx_new"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"/home/remco/Projects/Argos/src/hw/eeprom93xx.c"
	.align 8
.LC2:
	.string	"!\"Unsupported EEPROM size, fallback to 64 words!\""
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"eeprom"
	.text
	.p2align 4,,15
.globl eeprom93xx_new
	.type	eeprom93xx_new, @function
eeprom93xx_new:
.LFB198:
	.loc 1 269 0
	.loc 1 274 0
	movzwl	%di, %eax
	.loc 1 269 0
	movq	%rbp, -16(%rsp)
.LCFI11:
	movq	%rbx, -24(%rsp)
.LCFI12:
	movq	%r12, -8(%rsp)
.LCFI13:
	subq	$24, %rsp
.LCFI14:
	.loc 1 274 0
	cmpl	$64, %eax
	.loc 1 269 0
	movl	%edi, %ebp
	.loc 1 274 0
	je	.L83
	jg	.L89
	cmpl	$16, %eax
	je	.L83
.L86:
	.loc 1 284 0
	movl	$__PRETTY_FUNCTION__.0, %ecx
	movl	$284, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
	.p2align 4,,7
.L89:
	.loc 1 274 0
	cmpl	$128, %eax
	je	.L85
	cmpl	$256, %eax
	jne	.L86
.L85:
	.loc 1 281 0
	movl	$8, %r12d
	.p2align 4,,5
	jmp	.L81
	.p2align 4,,7
.L83:
	.loc 1 277 0
	movl	$6, %r12d
.L81:
	.loc 1 289 0
	leal	(%rax,%rax), %edi
	movslq	%edi,%rdi
	addq	$12, %rdi
	call	qemu_mallocz
	.loc 1 290 0
	movb	%bpl, 8(%rax)
	.loc 1 291 0
	movb	%r12b, 7(%rax)
	.loc 1 289 0
	movq	%rax, %rbx
	.loc 1 293 0
	movb	$1, 6(%rax)
	.loc 1 295 0
	movl	eeprom_instance(%rip), %esi
	movq	%rax, %r9
	movl	$eeprom_load, %r8d
	movl	$eeprom_save, %ecx
	movl	$20061112, %edx
	movl	$.LC3, %edi
	call	register_savevm
	.loc 1 298 0
	movq	%rbx, %rax
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE198:
	.size	eeprom93xx_new, .-eeprom93xx_new
	.p2align 4,,15
.globl eeprom93xx_free
	.type	eeprom93xx_free, @function
eeprom93xx_free:
.LFB199:
	.loc 1 301 0
	.loc 1 304 0
	jmp	qemu_free
.LFE199:
	.size	eeprom93xx_free, .-eeprom93xx_free
	.p2align 4,,15
.globl eeprom93xx_data
	.type	eeprom93xx_data, @function
eeprom93xx_data:
.LFB200:
	.loc 1 308 0
	.loc 1 310 0
	leaq	12(%rdi), %rax
	.loc 1 311 0
	ret
.LFE200:
	.size	eeprom93xx_data, .-eeprom93xx_data
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
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI4-.LFB195
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI8-.LFB196
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI14-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE12:
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
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI4-.LFB195
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI7-.LCFI4
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI8-.LFB196
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI14-.LFB198
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE13:
	.file 2 "../qemu-common.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/eeprom93xx.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 9 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x6d1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF87
	.byte	0x1
	.long	.LASF88
	.long	.LASF89
	.uleb128 0x2
	.long	.LASF9
	.byte	0x8
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
	.uleb128 0x5
	.long	0x73
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
	.byte	0x7
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0x8e
	.long	0x4d
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x73
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x280
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x8
	.long	0x2be
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0xc
	.long	0x2da
	.long	0x73
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x280
	.uleb128 0xc
	.long	0x2f0
	.long	0x73
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x4
	.byte	0x31
	.long	0x7a
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x32
	.long	0x62
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF52
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x2
	.byte	0x73
	.long	0x326
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.long	0x31b
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.byte	0x18
	.long	0x33d
	.uleb128 0x8
	.long	0x3e4
	.long	.LASF55
	.byte	0xc
	.byte	0x3
	.byte	0x18
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0x4c
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0x4d
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0x4e
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1
	.byte	0x4f
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF60
	.byte	0x1
	.byte	0x51
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF61
	.byte	0x1
	.byte	0x52
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.long	.LASF62
	.byte	0x1
	.byte	0x53
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF63
	.byte	0x1
	.byte	0x55
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF64
	.byte	0x1
	.byte	0x56
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF65
	.byte	0x1
	.byte	0x57
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1
	.byte	0x58
	.long	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3f3
	.long	0x2fb
	.uleb128 0xf
	.long	0x5b
	.byte	0x0
	.uleb128 0x10
	.long	0x444
	.long	.LASF69
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x5d
	.long	0x32c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x5d
	.long	0xa5
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x60
	.long	0x46
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x61
	.long	0x444
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x332
	.uleb128 0x14
	.long	0x4d6
	.long	.LASF70
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	0x3f
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x69
	.long	0x32c
	.byte	0x1
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x69
	.long	0xa5
	.byte	0x1
	.byte	0x56
	.uleb128 0x12
	.long	.LASF71
	.byte	0x1
	.byte	0x69
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x6d
	.long	0x444
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x6e
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x70
	.long	0x46
	.byte	0x1
	.byte	0x5d
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x71
	.long	0x2f0
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.long	0x571
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x7e
	.long	0x444
	.byte	0x1
	.byte	0x55
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x80
	.long	0x2f0
	.byte	0x1
	.byte	0x5a
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x81
	.long	0x2f0
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x82
	.long	0x2fb
	.byte	0x1
	.byte	0x59
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x83
	.long	0x2f0
	.byte	0x1
	.byte	0x5b
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x91
	.long	0x2f0
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0x5a2
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0x2fb
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0xfb
	.long	0x444
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1a
	.long	0x605
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.long	0x444
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.value	0x10c
	.long	0x2fb
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.value	0x10f
	.long	0x444
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.value	0x110
	.long	0x2f0
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF79
	.long	0x615
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.0
	.byte	0x0
	.uleb128 0xc
	.long	0x615
	.long	0x6e
	.uleb128 0xd
	.long	0x5b
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.long	0x605
	.uleb128 0x1e
	.long	0x649
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.value	0x12c
	.long	0x444
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1a
	.long	0x67c
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.value	0x134
	.byte	0x1
	.long	0x67c
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.value	0x133
	.long	0x444
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x7
	.byte	0x8
	.long	0x2fb
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x5
	.byte	0x91
	.long	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF83
	.byte	0x5
	.byte	0x92
	.long	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	.LASF84
	.byte	0x9
	.value	0x376
	.long	0x6aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.long	0x2f0
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	eeprom_instance
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.byte	0x35
	.long	0x69
	.long	0x1321bb8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x72
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6d5
	.long	0x4d6
	.string	"eeprom93xx_write"
	.long	0x571
	.string	"eeprom93xx_read"
	.long	0x5a2
	.string	"eeprom93xx_new"
	.long	0x61a
	.string	"eeprom93xx_free"
	.long	0x649
	.string	"eeprom93xx_data"
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF86:
	.string	"eeprom_version"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF62:
	.string	"eedo"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF75:
	.string	"eeprom93xx_write"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF67:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF71:
	.string	"version_id"
.LASF85:
	.string	"eeprom_instance"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF81:
	.string	"eeprom93xx_data"
.LASF72:
	.string	"result"
.LASF61:
	.string	"eesk"
.LASF42:
	.string	"_IO_lock_t"
.LASF53:
	.string	"QEMUFile"
.LASF14:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"double"
.LASF47:
	.string	"_pos"
.LASF82:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF69:
	.string	"eeprom_save"
.LASF41:
	.string	"_unused2"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF56:
	.string	"tick"
.LASF29:
	.string	"_old_offset"
.LASF59:
	.string	"writeable"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF89:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF87:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF80:
	.string	"eeprom93xx_free"
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
.LASF65:
	.string	"data"
.LASF57:
	.string	"address"
.LASF54:
	.string	"eeprom_t"
.LASF55:
	.string	"_eeprom_t"
.LASF52:
	.string	"long double"
.LASF78:
	.string	"nwords"
.LASF34:
	.string	"_offset"
.LASF64:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF66:
	.string	"contents"
.LASF63:
	.string	"addrbits"
.LASF11:
	.string	"__off64_t"
.LASF73:
	.string	"eedi"
.LASF21:
	.string	"_IO_buf_end"
.LASF68:
	.string	"eeprom"
.LASF58:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF84:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF60:
	.string	"eecs"
.LASF15:
	.string	"_IO_read_end"
.LASF76:
	.string	"eeprom93xx_read"
.LASF27:
	.string	"_fileno"
.LASF77:
	.string	"eeprom93xx_new"
.LASF50:
	.string	"float"
.LASF83:
	.string	"stdout"
.LASF74:
	.string	"subcommand"
.LASF18:
	.string	"_IO_write_ptr"
.LASF88:
	.string	"/home/remco/Projects/Argos/src/hw/eeprom93xx.c"
.LASF79:
	.string	"__PRETTY_FUNCTION__"
.LASF70:
	.string	"eeprom_load"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
