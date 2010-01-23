	.file	"max7310.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	max7310_iid
	.comm	max7310_iid,4,4
	.p2align 4,,15
.globl max7310_reset
	.type	max7310_reset, @function
max7310_reset:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/max7310.c"
	.loc 1 28 0
	.loc 1 30 0
	movzbl	49(%rdi), %eax
	.loc 1 32 0
	movb	$-16, 50(%rdi)
	.loc 1 30 0
	andb	%al, 48(%rdi)
	.loc 1 31 0
	movb	$-1, 49(%rdi)
	.loc 1 33 0
	movb	$1, 51(%rdi)
	.loc 1 34 0
	movb	$0, 52(%rdi)
	ret
.LFE108:
	.size	max7310_reset, .-max7310_reset
	.p2align 4,,15
	.type	max7310_rx, @function
max7310_rx:
.LFB109:
	.loc 1 38 0
	.loc 1 41 0
	movzbl	52(%rdi), %eax
	cmpl	$2, %eax
	je	.L6
	jle	.L13
	cmpl	$4, %eax
	je	.L8
	.p2align 4,,9
	jl	.L7
	cmpl	$255, %eax
	.loc 1 61 0
	movl	$255, %edx
	.loc 1 41 0
	.p2align 4,,5
	je	.L2
.L3:
	.loc 1 69 0
	movl	$255, %edx
.L2:
	.loc 1 70 0
	movl	%edx, %eax
	.p2align 4,,3
	ret
	.p2align 4,,7
.L13:
	.loc 1 41 0
	testl	%eax, %eax
	.p2align 4,,2
	je	.L4
	decl	%eax
	.p2align 4,,5
	jne	.L3
	.loc 1 47 0
	movzbl	49(%rdi), %eax
	movzbl	48(%rdi), %edx
	notl	%eax
	andl	%eax, %edx
	.loc 1 70 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L6:
	.loc 1 51 0
	movzbl	50(%rdi), %edx
	.loc 1 70 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L4:
	.loc 1 43 0
	movzbl	50(%rdi), %eax
	xorb	48(%rdi), %al
	movzbl	%al, %edx
	.loc 1 70 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L7:
	.loc 1 54 0
	movzbl	49(%rdi), %edx
	.loc 1 70 0
	movl	%edx, %eax
	ret
	.p2align 4,,7
.L8:
	.loc 1 57 0
	movzbl	51(%rdi), %edx
	.loc 1 70 0
	movl	%edx, %eax
	ret
.LFE109:
	.size	max7310_rx, .-max7310_rx
	.p2align 4,,15
	.type	max7310_tx, @function
max7310_tx:
.LFB110:
	.loc 1 73 0
	movq	%rbx, -48(%rsp)
.LCFI0:
	movq	%r12, -32(%rsp)
.LCFI1:
	movq	%rdi, %rbx
	movq	%rbp, -40(%rsp)
.LCFI2:
	movq	%r13, -24(%rsp)
.LCFI3:
	movl	%esi, %r12d
	movq	%r14, -16(%rsp)
.LCFI4:
	movq	%r15, -8(%rsp)
.LCFI5:
	subq	$56, %rsp
.LCFI6:
	.loc 1 78 0
	movl	44(%rdi), %edx
	leal	1(%rdx), %eax
	decl	%edx
	movl	%eax, 44(%rdi)
	.loc 1 82 0
	movl	$1, %eax
	.loc 1 78 0
	jg	.L14
	.loc 1 85 0
	movl	40(%rdi), %edx
	testl	%edx, %edx
	je	.L16
	.loc 1 86 0
	movb	%sil, 52(%rdi)
	.loc 1 87 0
	movl	$0, 40(%rdi)
	.loc 1 88 0
	xorb	%al, %al
	.p2align 4,,7
.L14:
	.loc 1 125 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L16:
	.loc 1 91 0
	movzbl	52(%rdi), %edx
	.loc 1 121 0
	movl	$1, %eax
	.loc 1 91 0
	cmpl	$4, %edx
	ja	.L14
	mov	%edx, %eax
	jmp	*.L29(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L29:
	.quad	.L17
	.quad	.L18
	.quad	.L24
	.quad	.L25
	.quad	.L26
	.text
.L26:
	.loc 1 112 0
	movb	%sil, 51(%rbx)
.L17:
	.loc 1 124 0
	xorl	%eax, %eax
	jmp	.L14
.L25:
	.loc 1 107 0
	movzbl	49(%rdi), %eax
	.loc 1 108 0
	movb	%sil, 49(%rbx)
	.loc 1 107 0
	xorl	%r12d, %eax
	notl	%eax
	andb	%al, 48(%rdi)
	.loc 1 124 0
	xorl	%eax, %eax
	jmp	.L14
.L24:
	xorl	%eax, %eax
	.loc 1 103 0
	movb	%sil, 50(%rbx)
	jmp	.L14
.L18:
	.loc 1 93 0
	movzbl	48(%rdi), %esi
	movzbl	49(%rdi), %ecx
	movl	%esi, %edx
	movl	%ecx, %eax
	xorl	%r12d, %edx
	notl	%eax
	andb	%al, %dl
	movl	%edx, %r13d
	je	.L31
	movzbl	%r12b, %r15d
	movl	$1, %r14d
	jmp	.L23
	.p2align 4,,7
.L21:
	movl	%r14d, %eax
	movl	%ebp, %ecx
	sall	%cl, %eax
	notl	%eax
	andb	%al, %r13b
	je	.L32
.L23:
	.loc 1 95 0
	movzbl	%r13b, %eax
	movl	$-1, %edx
	bsfl	%eax, %eax
	cmove	%edx, %eax
	incl	%eax
	leal	-1(%rax), %ebp
	.loc 1 96 0
	movslq	%ebp,%rax
	movq	56(%rbx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L21
	.loc 1 97 0
	movl	%r15d, %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	andl	$1, %esi
	call	qemu_set_irq
	jmp	.L21
.L32:
	movzbl	48(%rbx), %esi
	movzbl	49(%rbx), %ecx
.L31:
	.loc 1 99 0
	movl	%esi, %eax
	andl	%ecx, %eax
	notl	%ecx
	andl	%r12d, %ecx
	orl	%ecx, %eax
	movb	%al, 48(%rbx)
	.loc 1 124 0
	xorl	%eax, %eax
	jmp	.L14
.LFE110:
	.size	max7310_tx, .-max7310_tx
	.p2align 4,,15
	.type	max7310_event, @function
max7310_event:
.LFB111:
	.loc 1 128 0
	.loc 1 132 0
	decl	%esi
	.loc 1 130 0
	movl	$0, 44(%rdi)
	.loc 1 132 0
	je	.L39
	rep ; ret
	.p2align 4,,7
.L39:
	.loc 1 134 0
	movl	$1, 40(%rdi)
	ret
.LFE111:
	.size	max7310_event, .-max7310_event
	.p2align 4,,15
	.type	max7310_save, @function
max7310_save:
.LFB112:
	.loc 1 148 0
	pushq	%r12
.LCFI7:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI8:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI9:
	.loc 1 151 0
	movl	40(%rsi), %esi
	call	qemu_put_be32
	.loc 1 152 0
	movl	44(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 42 0
	movzbl	48(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE3:
.LBE2:
.LBB4:
.LBB5:
	movzbl	49(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	movzbl	50(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	movzbl	51(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	movzbl	52(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE11:
.LBE10:
	.loc 1 160 0
	addq	$8, %rsp
	movq	%rbx, %rsi
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	jmp	i2c_slave_save
.LFE112:
	.size	max7310_save, .-max7310_save
	.p2align 4,,15
	.type	max7310_load, @function
max7310_load:
.LFB113:
	.loc 1 164 0
	pushq	%r12
.LCFI10:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI11:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI12:
	.loc 1 167 0
	call	qemu_get_be32
	.loc 1 168 0
	movq	%r12, %rdi
	.loc 1 167 0
	movl	%eax, 40(%rbx)
	.loc 1 168 0
	call	qemu_get_be32
.LBB12:
.LBB13:
	.loc 2 62 0
	movq	%r12, %rdi
.LBE13:
.LBE12:
	.loc 1 168 0
	movl	%eax, 44(%rbx)
.LBB14:
.LBB15:
	.loc 2 62 0
	call	qemu_get_byte
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	movq	%r12, %rdi
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	movb	%al, 48(%rbx)
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	call	qemu_get_byte
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movq	%r12, %rdi
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	movb	%al, 49(%rbx)
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	call	qemu_get_byte
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	movq	%r12, %rdi
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movb	%al, 50(%rbx)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	call	qemu_get_byte
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	movq	%r12, %rdi
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	movb	%al, 51(%rbx)
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	call	qemu_get_byte
.LBE39:
.LBE38:
	.loc 1 176 0
	movq	%rbx, %rsi
.LBB40:
.LBB41:
	.loc 2 62 0
	movb	%al, 52(%rbx)
.LBE41:
.LBE40:
	.loc 1 176 0
	movq	%r12, %rdi
	call	i2c_slave_load
	.loc 1 178 0
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	ret
.LFE113:
	.size	max7310_load, .-max7310_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"bad GPIO line"
	.text
	.p2align 4,,15
	.type	max7310_gpio_set, @function
max7310_gpio_set:
.LFB114:
	.loc 1 183 0
	subq	$8, %rsp
.LCFI13:
	.loc 1 185 0
	cmpl	$7, %esi
	.loc 1 183 0
	movl	%esi, %ecx
	.loc 1 185 0
	ja	.L56
	.loc 1 188 0
	testl	%edx, %edx
	je	.L54
	.loc 1 189 0
	movl	$1, %eax
	sall	%cl, %eax
	andb	49(%rdi), %al
	orb	%al, 48(%rdi)
	.loc 1 192 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L54:
	.loc 1 191 0
	movl	$1, %eax
	sall	%cl, %eax
	andb	49(%rdi), %al
	notl	%eax
	andb	%al, 48(%rdi)
	.loc 1 192 0
	addq	$8, %rsp
	ret
.L56:
	.loc 1 186 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	hw_error
.LFE114:
	.size	max7310_gpio_set, .-max7310_gpio_set
	.section	.rodata.str1.1
.LC1:
	.string	"max7310"
	.text
	.p2align 4,,15
.globl max7310_init
	.type	max7310_init, @function
max7310_init:
.LFB115:
	.loc 1 197 0
	pushq	%rbx
.LCFI14:
	.loc 1 198 0
	movl	$128, %edx
	xorl	%esi, %esi
	call	i2c_slave_init
	.loc 1 203 0
	movl	$8, %edx
	.loc 1 198 0
	movq	%rax, %rbx
	.loc 1 203 0
	movq	%rax, %rsi
	movl	$max7310_gpio_set, %edi
	.loc 1 200 0
	movq	$max7310_event, (%rax)
	.loc 1 201 0
	movq	$max7310_rx, 8(%rax)
	.loc 1 202 0
	movq	$max7310_tx, 16(%rax)
	.loc 1 203 0
	call	qemu_allocate_irqs
	.loc 1 206 0
	movq	%rbx, %rdi
	.loc 1 203 0
	movq	%rax, 120(%rbx)
	.loc 1 206 0
	call	max7310_reset
	.loc 1 208 0
	movl	max7310_iid(%rip), %esi
	movq	%rbx, %r9
	movl	$max7310_load, %r8d
	movl	$max7310_save, %ecx
	xorl	%edx, %edx
	movl	$.LC1, %edi
	leal	1(%rsi), %eax
	movl	%eax, max7310_iid(%rip)
	call	register_savevm
	.loc 1 212 0
	movq	%rbx, %rax
	popq	%rbx
	ret
.LFE115:
	.size	max7310_init, .-max7310_init
	.p2align 4,,15
.globl max7310_gpio_in_get
	.type	max7310_gpio_in_get, @function
max7310_gpio_in_get:
.LFB116:
	.loc 1 215 0
	.loc 1 217 0
	movq	120(%rdi), %rax
	.loc 1 218 0
	ret
.LFE116:
	.size	max7310_gpio_in_get, .-max7310_gpio_in_get
	.p2align 4,,15
.globl max7310_gpio_out_set
	.type	max7310_gpio_out_set, @function
max7310_gpio_out_set:
.LFB117:
	.loc 1 221 0
	subq	$8, %rsp
.LCFI15:
	.loc 1 223 0
	cmpl	$7, %esi
	ja	.L61
	.loc 1 226 0
	movslq	%esi,%rax
	movq	%rdx, 56(%rdi,%rax,8)
	addq	$8, %rsp
	ret
.L61:
	.loc 1 224 0
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	hw_error
.LFE117:
	.size	max7310_gpio_out_set, .-max7310_gpio_out_set
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI1-.LFB110
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
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
	.byte	0x4
	.long	.LCFI7-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI10-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI13-.LFB114
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI14-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI15-.LFB117
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE18:
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI1-.LFB110
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI1
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x6
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
	.byte	0x4
	.long	.LCFI7-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI10-.LFB113
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI13-.LFB114
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI14-.LFB115
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI15-.LFB117
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE19:
	.file 3 "./qemu-common.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x97b
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF95
	.byte	0x1
	.long	.LASF96
	.long	.LASF97
	.uleb128 0x2
	.long	.LASF9
	.byte	0x9
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
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x8
	.byte	0x8e
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x3
	.long	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x276
	.long	.LASF43
	.byte	0xd8
	.byte	0x6
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x7
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x27d
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x2d0
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xb
	.long	0x2e6
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x31
	.long	0x70
	.uleb128 0x6
	.byte	0x8
	.long	0x2f7
	.uleb128 0xd
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x73
	.long	0x307
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x74
	.long	0x318
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.byte	0x75
	.long	0x329
	.uleb128 0x7
	.long	0x37c
	.long	.LASF51
	.byte	0x28
	.byte	0x3
	.byte	0x75
	.uleb128 0xa
	.long	.LASF52
	.byte	0x4
	.byte	0x1a
	.long	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.byte	0x1b
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF54
	.byte	0x4
	.byte	0x1c
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF55
	.byte	0x4
	.byte	0x1f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF56
	.byte	0x4
	.byte	0x20
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x3
	.byte	0x7b
	.long	0x387
	.uleb128 0x6
	.byte	0x8
	.long	0x38d
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0xf
	.long	0x3be
	.long	.LASF98
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.uleb128 0x10
	.long	.LASF59
	.sleb128 0
	.uleb128 0x10
	.long	.LASF60
	.sleb128 1
	.uleb128 0x10
	.long	.LASF61
	.sleb128 2
	.uleb128 0x10
	.long	.LASF62
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x4
	.byte	0x11
	.long	0x3c9
	.uleb128 0x6
	.byte	0x8
	.long	0x3cf
	.uleb128 0x11
	.long	0x3e4
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x3e4
	.uleb128 0x12
	.long	0x2e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x31e
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x13
	.long	0x3f5
	.uleb128 0x6
	.byte	0x8
	.long	0x3fb
	.uleb128 0x11
	.long	0x40b
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x3e4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x4
	.byte	0x15
	.long	0x416
	.uleb128 0x6
	.byte	0x8
	.long	0x41c
	.uleb128 0x13
	.long	0x42d
	.byte	0x1
	.uleb128 0x12
	.long	0x3e4
	.uleb128 0x12
	.long	0x399
	.byte	0x0
	.uleb128 0x7
	.long	0x4c6
	.long	.LASF66
	.byte	0x80
	.byte	0x1
	.byte	0xd
	.uleb128 0x14
	.string	"i2c"
	.byte	0x1
	.byte	0xe
	.long	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF67
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.long	.LASF68
	.byte	0x1
	.byte	0x12
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF69
	.byte	0x1
	.byte	0x13
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.byte	0x14
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x15
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x16
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x17
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x18
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0xb
	.long	0x4d6
	.long	0x37c
	.uleb128 0xc
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x37c
	.uleb128 0x15
	.long	0x512
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x1b
	.long	0x3e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x1d
	.long	0x512
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x42d
	.uleb128 0x18
	.long	0x553
	.long	.LASF75
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x3f
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x25
	.long	0x3e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x27
	.long	0x512
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x18
	.long	0x5b3
	.long	.LASF76
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	0x3f
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x48
	.long	0x3e4
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0x48
	.long	0x2e6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x4a
	.long	0x512
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.byte	0x4b
	.long	0x2e6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x1c
	.long	0x5f5
	.long	.LASF80
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x7f
	.long	0x3e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x1
	.byte	0x7f
	.long	0x399
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x81
	.long	0x512
	.byte	0x0
	.uleb128 0x1c
	.long	0x6e5
	.long	.LASF81
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.byte	0x93
	.long	0x393
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0x93
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x95
	.long	0x512
	.uleb128 0x1d
	.long	0x658
	.long	0x6e5
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1e
	.long	0x6f2
	.uleb128 0x1e
	.long	0x6fb
	.byte	0x0
	.uleb128 0x1d
	.long	0x67c
	.long	0x6e5
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1e
	.long	0x6f2
	.uleb128 0x1e
	.long	0x6fb
	.byte	0x0
	.uleb128 0x1d
	.long	0x6a0
	.long	0x6e5
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1e
	.long	0x6f2
	.uleb128 0x1e
	.long	0x6fb
	.byte	0x0
	.uleb128 0x1d
	.long	0x6c4
	.long	0x6e5
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1e
	.long	0x6f2
	.uleb128 0x1e
	.long	0x6fb
	.byte	0x0
	.uleb128 0x1f
	.long	0x6e5
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1e
	.long	0x6f2
	.uleb128 0x1e
	.long	0x6fb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x706
	.long	.LASF83
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x393
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0x2f1
	.byte	0x0
	.uleb128 0x18
	.long	0x807
	.long	.LASF84
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x3f
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.byte	0xa3
	.long	0x393
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0xa3
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0xa3
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xa5
	.long	0x512
	.uleb128 0x1d
	.long	0x77a
	.long	0x807
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x1e
	.long	0x814
	.uleb128 0x1e
	.long	0x81d
	.byte	0x0
	.uleb128 0x1d
	.long	0x79e
	.long	0x807
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x1e
	.long	0x814
	.uleb128 0x1e
	.long	0x81d
	.byte	0x0
	.uleb128 0x1d
	.long	0x7c2
	.long	0x807
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x1e
	.long	0x814
	.uleb128 0x1e
	.long	0x81d
	.byte	0x0
	.uleb128 0x1d
	.long	0x7e6
	.long	0x807
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x1e
	.long	0x814
	.uleb128 0x1e
	.long	0x81d
	.byte	0x0
	.uleb128 0x1f
	.long	0x807
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x1e
	.long	0x814
	.uleb128 0x1e
	.long	0x81d
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x828
	.long	.LASF86
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x393
	.uleb128 0x21
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0x828
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x1c
	.long	0x87d
	.long	.LASF87
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0xb6
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.byte	0xb6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.byte	0xb6
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xb8
	.long	0x512
	.byte	0x0
	.uleb128 0x22
	.long	0x8b9
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0x8b9
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"bus"
	.byte	0x1
	.byte	0xc4
	.long	0x8bf
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xc6
	.long	0x512
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x329
	.uleb128 0x6
	.byte	0x8
	.long	0x30d
	.uleb128 0x22
	.long	0x8ff
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	0x4d6
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0xd6
	.long	0x3e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xd8
	.long	0x512
	.byte	0x0
	.uleb128 0x15
	.long	0x94f
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"i2c"
	.byte	0x1
	.byte	0xdc
	.long	0x3e4
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.byte	0xdc
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xdc
	.long	0x37c
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xde
	.long	0x512
	.byte	0x0
	.uleb128 0x23
	.long	.LASF92
	.byte	0x6
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.long	.LASF93
	.byte	0x6
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.byte	0xb4
	.long	0x3f
	.byte	0x9
	.byte	0x3
	.quad	max7310_iid
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x62
	.value	0x2
	.long	.Ldebug_info0
	.long	0x97f
	.long	0x4dc
	.string	"max7310_reset"
	.long	0x87d
	.string	"max7310_init"
	.long	0x8c5
	.string	"max7310_gpio_in_get"
	.long	0x8ff
	.string	"max7310_gpio_out_set"
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
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF24:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF69:
	.string	"direction"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF78:
	.string	"diff"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF82:
	.string	"opaque"
.LASF85:
	.string	"version_id"
.LASF84:
	.string	"max7310_load"
.LASF50:
	.string	"i2c_bus"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF75:
	.string	"max7310_rx"
.LASF62:
	.string	"I2C_NACK"
.LASF6:
	.string	"unsigned char"
.LASF73:
	.string	"handler"
.LASF5:
	.string	"char"
.LASF42:
	.string	"_IO_lock_t"
.LASF49:
	.string	"QEMUFile"
.LASF83:
	.string	"qemu_put_8s"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF92:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF65:
	.string	"i2c_event_cb"
.LASF70:
	.string	"polarity"
.LASF66:
	.string	"max7310_s"
.LASF91:
	.string	"max7310_gpio_out_set"
.LASF98:
	.string	"i2c_event"
.LASF34:
	.string	"_offset"
.LASF0:
	.string	"long unsigned int"
.LASF71:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF79:
	.string	"line"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF54:
	.string	"send"
.LASF3:
	.string	"long long int"
.LASF63:
	.string	"i2c_send_cb"
.LASF58:
	.string	"IRQState"
.LASF19:
	.string	"_IO_write_end"
.LASF52:
	.string	"event"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF95:
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
.LASF61:
	.string	"I2C_FINISH"
.LASF81:
	.string	"max7310_save"
.LASF13:
	.string	"_flags"
.LASF55:
	.string	"address"
.LASF51:
	.string	"i2c_slave"
.LASF53:
	.string	"recv"
.LASF56:
	.string	"next"
.LASF86:
	.string	"qemu_get_8s"
.LASF76:
	.string	"max7310_tx"
.LASF12:
	.string	"long long unsigned int"
.LASF72:
	.string	"command"
.LASF48:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF89:
	.string	"max7310_init"
.LASF11:
	.string	"__off64_t"
.LASF97:
	.string	"/home/remco/Projects/Argos/src"
.LASF96:
	.string	"/home/remco/Projects/Argos/src/hw/max7310.c"
.LASF21:
	.string	"_IO_buf_end"
.LASF90:
	.string	"max7310_gpio_in_get"
.LASF67:
	.string	"i2c_command_byte"
.LASF8:
	.string	"short int"
.LASF60:
	.string	"I2C_START_SEND"
.LASF31:
	.string	"_vtable_offset"
.LASF88:
	.string	"max7310_reset"
.LASF94:
	.string	"max7310_iid"
.LASF15:
	.string	"_IO_read_end"
.LASF74:
	.string	"gpio_in"
.LASF27:
	.string	"_fileno"
.LASF68:
	.string	"level"
.LASF80:
	.string	"max7310_event"
.LASF4:
	.string	"short unsigned int"
.LASF93:
	.string	"stdout"
.LASF87:
	.string	"max7310_gpio_set"
.LASF64:
	.string	"i2c_recv_cb"
.LASF18:
	.string	"_IO_write_ptr"
.LASF59:
	.string	"I2C_START_RECV"
.LASF77:
	.string	"data"
.LASF57:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
