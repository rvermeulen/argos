	.file	"serial.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.data
	.align 16
	.type	serial_mm_write, @object
	.size	serial_mm_write, 24
serial_mm_write:
	.quad	serial_mm_writeb
	.quad	serial_mm_writew
	.quad	serial_mm_writel
	.align 16
	.type	serial_mm_read, @object
	.size	serial_mm_read, 24
serial_mm_read:
	.quad	serial_mm_readb
	.quad	serial_mm_readw
	.quad	serial_mm_readl
	.text
	.p2align 4,,15
	.type	serial_update_irq, @function
serial_update_irq:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/serial.c"
	.loc 1 97 0
	.loc 1 98 0
	testb	$1, 7(%rdi)
	je	.L2
	testb	$1, 3(%rdi)
	je	.L2
	.loc 1 99 0
	movb	$4, 4(%rdi)
	.loc 1 105 0
	cmpb	$1, 4(%rdi)
	jne	.L12
	.p2align 4,,7
.L6:
.LBB2:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 18 0
	movq	16(%rdi), %rdi
.LBB3:
	.loc 2 19 0
	xorl	%esi, %esi
	jmp	qemu_set_irq
	.p2align 4,,7
.L2:
.LBE3:
.LBE2:
	.loc 1 100 0
	movl	12(%rdi), %eax
	testl	%eax, %eax
	jne	.L13
.L4:
	.loc 1 103 0
	movb	$1, 4(%rdi)
.L3:
	.loc 1 105 0
	cmpb	$1, 4(%rdi)
	je	.L6
.L12:
.LBB4:
	.loc 2 13 0
	movq	16(%rdi), %rdi
.LBB5:
	.loc 2 14 0
	movl	$1, %esi
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	.loc 2 19 0
	jmp	qemu_set_irq
	.p2align 4,,7
.L13:
.LBE7:
.LBE6:
	.loc 1 100 0
	testb	$2, 3(%rdi)
	je	.L4
	.loc 1 101 0
	movb	$2, 4(%rdi)
	jmp	.L3
.LFE194:
	.size	serial_update_irq, .-serial_update_irq
	.p2align 4,,15
	.type	serial_update_parameters, @function
serial_update_parameters:
.LFB195:
	.loc 1 113 0
	pushq	%rbx
.LCFI0:
	.loc 1 123 0
	movl	$78, %esi
	.loc 1 113 0
	subq	$16, %rsp
.LCFI1:
	.loc 1 117 0
	movzbl	5(%rdi), %edx
	movzbl	%dl, %eax
	testb	$8, %al
	je	.L18
	.loc 1 118 0
	andl	$16, %eax
	.loc 1 119 0
	cmpl	$1, %eax
	sbbl	%esi, %esi
	andl	$10, %esi
	addl	$69, %esi
.L18:
	.loc 1 125 0
	movzbl	%dl, %edx
	movl	%edx, %eax
	andl	$4, %eax
	.loc 1 126 0
	cmpl	$1, %eax
	.loc 1 130 0
	movzwl	(%rdi), %eax
	.loc 1 126 0
	sbbl	%ecx, %ecx
	.loc 1 129 0
	andl	$3, %edx
	.loc 1 126 0
	addl	$2, %ecx
	.loc 1 129 0
	leal	5(%rdx), %r8d
	.loc 1 130 0
	testw	%ax, %ax
	jne	.L22
	.loc 1 142 0
	addq	$16, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L22:
	.loc 1 132 0
	movzwl	%ax, %edx
	movl	$115200, %eax
	.loc 1 134 0
	movl	%esi, 4(%rsp)
	.loc 1 132 0
	movl	%edx, %ebx
	cltd
	.loc 1 135 0
	movl	%r8d, 8(%rsp)
	.loc 1 132 0
	idivl	%ebx
	.loc 1 136 0
	movl	%ecx, 12(%rsp)
	.loc 1 137 0
	movq	%rsp, %rdx
	movl	$1, %esi
	.loc 1 133 0
	movl	%eax, (%rsp)
	.loc 1 137 0
	movq	24(%rdi), %rdi
	call	qemu_chr_ioctl
	.loc 1 142 0
	addq	$16, %rsp
	popq	%rbx
	ret
.LFE195:
	.size	serial_update_parameters, .-serial_update_parameters
	.p2align 4,,15
	.type	serial_ioport_write, @function
serial_ioport_write:
.LFB196:
	.loc 1 145 0
	.loc 1 149 0
	andl	$7, %esi
	.loc 1 145 0
	movq	%rbx, -16(%rsp)
.LCFI2:
	movq	%rbp, -8(%rsp)
.LCFI3:
	subq	$24, %rsp
.LCFI4:
	.loc 1 153 0
	cmpl	$7, %esi
	.loc 1 145 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 153 0
	ja	.L26
	mov	%esi, %eax
	jmp	*.L40(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L40:
	.quad	.L26
	.quad	.L29
	.quad	.L23
	.quad	.L34
	.quad	.L36
	.quad	.L23
	.quad	.L23
	.quad	.L39
	.text
	.p2align 4,,7
.L26:
	.loc 1 156 0
	cmpb	$0, 5(%rbx)
	js	.L42
	.loc 1 161 0
	andb	$-33, 7(%rbx)
	.loc 1 162 0
	movq	%rbx, %rdi
	.loc 1 160 0
	movl	$0, 12(%rbx)
	.loc 1 162 0
	call	serial_update_irq
	.loc 1 163 0
	movb	%bpl, 7(%rsp)
	.loc 1 164 0
	movq	24(%rbx), %rdi
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	call	qemu_chr_write
	.loc 1 167 0
	orb	$96, 7(%rbx)
	.loc 1 165 0
	movl	$1, 12(%rbx)
.L32:
	.loc 1 180 0
	movq	%rbx, %rdi
	call	serial_update_irq
.L23:
	.loc 1 209 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L42:
	.loc 1 157 0
	movzwl	(%rbx), %eax
	xorb	%al, %al
	orl	%ebp, %eax
	movw	%ax, (%rbx)
.L41:
	.loc 1 174 0
	movq	%rbx, %rdi
	call	serial_update_parameters
	.loc 1 209 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L29:
	.loc 1 172 0
	cmpb	$0, 5(%rdi)
	js	.L43
	.loc 1 176 0
	movl	%edx, %eax
	andl	$15, %eax
	.loc 1 177 0
	testb	$32, 7(%rdi)
	.loc 1 176 0
	movb	%al, 3(%rdi)
	.loc 1 177 0
	je	.L32
	.loc 1 178 0
	movl	$1, 12(%rdi)
	jmp	.L32
.L34:
.LBB8:
	.loc 1 188 0
	movb	%dl, 5(%rbx)
	.loc 1 189 0
	call	serial_update_parameters
	.loc 1 190 0
	movl	%ebp, %eax
	shrl	$6, %eax
	andl	$1, %eax
	movl	%eax, (%rsp)
	.loc 1 191 0
	cmpl	%eax, 32(%rbx)
	je	.L23
	.loc 1 193 0
	movq	24(%rbx), %rdi
	.loc 1 192 0
	movl	%eax, 32(%rbx)
	.loc 1 193 0
	movq	%rsp, %rdx
	movl	$2, %esi
	call	qemu_chr_ioctl
	jmp	.L23
.L39:
.LBE8:
	.loc 1 206 0
	movb	%dl, 9(%rbx)
	jmp	.L23
.L36:
	.loc 1 199 0
	movl	%edx, %eax
	andl	$31, %eax
	movb	%al, 6(%rdi)
	.p2align 4,,3
	jmp	.L23
.L43:
	.loc 1 173 0
	movb	%dl, 1(%rbx)
	jmp	.L41
.LFE196:
	.size	serial_ioport_write, .-serial_ioport_write
	.p2align 4,,15
	.type	serial_ioport_read, @function
serial_ioport_read:
.LFB197:
	.loc 1 212 0
	.loc 1 216 0
	andl	$7, %esi
	.loc 1 212 0
	movq	%rbx, -16(%rsp)
.LCFI5:
	movq	%rbp, -8(%rsp)
.LCFI6:
	subq	$24, %rsp
.LCFI7:
	.loc 1 217 0
	cmpl	$7, %esi
	.loc 1 212 0
	movq	%rdi, %rbx
	.loc 1 217 0
	ja	.L47
	mov	%esi, %eax
	jmp	*.L62(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L62:
	.quad	.L47
	.quad	.L50
	.quad	.L53
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L61
	.text
	.p2align 4,,7
.L47:
	.loc 1 220 0
	cmpb	$0, 5(%rbx)
	js	.L63
	.loc 1 224 0
	andb	$-18, 7(%rbx)
	.loc 1 225 0
	movq	%rbx, %rdi
	.loc 1 223 0
	movzbl	2(%rbx), %ebp
	.loc 1 225 0
	call	serial_update_irq
	.loc 1 226 0
	movq	24(%rbx), %rdi
	call	qemu_chr_accept_input
.L45:
	.loc 1 271 0
	movl	%ebp, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L63:
	.loc 1 221 0
	movzbl	(%rbx), %ebp
	.loc 1 271 0
	movq	8(%rsp), %rbx
	movl	%ebp, %eax
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L61:
	.loc 1 264 0
	movzbl	9(%rdi), %ebp
	jmp	.L45
.L50:
	.loc 1 230 0
	cmpb	$0, 5(%rdi)
	js	.L64
	.loc 1 233 0
	movzbl	3(%rdi), %ebp
	.p2align 4,,5
	jmp	.L45
.L53:
	.loc 1 237 0
	movzbl	4(%rdi), %ebp
	.loc 1 239 0
	movl	%ebp, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	je	.L65
.L54:
	.loc 1 241 0
	movq	%rbx, %rdi
	call	serial_update_irq
	jmp	.L45
.L55:
	.loc 1 244 0
	movzbl	5(%rdi), %ebp
	.p2align 4,,4
	jmp	.L45
.L56:
	.loc 1 247 0
	movzbl	6(%rdi), %ebp
	.p2align 4,,7
	jmp	.L45
.L57:
	.loc 1 250 0
	movzbl	7(%rdi), %ebp
	.p2align 4,,5
	jmp	.L45
.L58:
	.loc 1 253 0
	movzbl	6(%rdi), %edx
	testb	$16, %dl
	.p2align 4,,3
	je	.L59
	.loc 1 256 0
	movl	%edx, %ebp
	.loc 1 257 0
	movl	%edx, %eax
	.loc 1 258 0
	andl	$1, %edx
	.loc 1 256 0
	andl	$12, %ebp
	.loc 1 257 0
	andl	$2, %eax
	.loc 1 258 0
	sall	$5, %edx
	.loc 1 256 0
	sall	$4, %ebp
	.loc 1 257 0
	sall	$3, %eax
	orl	%eax, %ebp
	.loc 1 258 0
	orl	%edx, %ebp
	jmp	.L45
.L59:
	.loc 1 260 0
	movzbl	8(%rdi), %ebp
	jmp	.L45
.L65:
	.loc 1 240 0
	movl	$0, 12(%rdi)
	jmp	.L54
.L64:
	.loc 1 231 0
	movzbl	1(%rdi), %ebp
	.p2align 4,,5
	jmp	.L45
.LFE197:
	.size	serial_ioport_read, .-serial_ioport_read
	.p2align 4,,15
	.type	serial_can_receive1, @function
serial_can_receive1:
.LFB201:
	.loc 1 293 0
.LBB9:
.LBB10:
	.loc 1 275 0
	movzbl	7(%rdi), %eax
	xorl	$1, %eax
	andl	$1, %eax
.LBE10:
.LBE9:
	.loc 1 296 0
	ret
.LFE201:
	.size	serial_can_receive1, .-serial_can_receive1
	.p2align 4,,15
	.type	serial_receive1, @function
serial_receive1:
.LFB202:
	.loc 1 299 0
.LBB11:
	.loc 1 279 0
	movzbl	(%rsi), %eax
.LBB12:
	.loc 1 281 0
	orb	$1, 7(%rdi)
	.loc 1 280 0
	movb	%al, 2(%rdi)
	.loc 1 282 0
	jmp	serial_update_irq
.LBE12:
.LBE11:
.LFE202:
	.size	serial_receive1, .-serial_receive1
	.p2align 4,,15
	.type	serial_event, @function
serial_event:
.LFB203:
	.loc 1 305 0
	.loc 1 307 0
	testl	%esi, %esi
	je	.L73
	rep ; ret
	.p2align 4,,7
.L73:
.LBB13:
.LBB14:
	.loc 1 288 0
	orb	$17, 7(%rdi)
	.loc 1 287 0
	movb	$0, 2(%rdi)
	.loc 1 289 0
	jmp	serial_update_irq
.LBE14:
.LBE13:
.LFE203:
	.size	serial_event, .-serial_event
	.p2align 4,,15
	.type	serial_save, @function
serial_save:
.LFB204:
	.loc 1 312 0
	pushq	%r12
.LCFI8:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI9:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI10:
.LBB15:
.LBB16:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 37 0
	movzwl	(%rsi), %esi
	call	qemu_put_be16
.LBE16:
.LBE15:
.LBB17:
.LBB18:
	.loc 3 42 0
	movzbl	2(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	movzbl	3(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE20:
.LBE19:
.LBB21:
.LBB22:
	movzbl	4(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	movzbl	5(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	movzbl	6(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	movzbl	7(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	movzbl	8(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	movzbl	9(%rbx), %esi
.LBE32:
.LBE31:
	addq	$8, %rsp
.LBB33:
.LBB34:
	movq	%r12, %rdi
.LBE34:
.LBE33:
	popq	%rbx
	popq	%r12
.LBB35:
.LBB36:
	jmp	qemu_put_byte
.LBE36:
.LBE35:
.LFE204:
	.size	serial_save, .-serial_save
	.p2align 4,,15
	.type	serial_load, @function
serial_load:
.LFB205:
	.loc 1 327 0
	pushq	%rbp
.LCFI11:
	.loc 1 331 0
	movl	$-22, %eax
	.loc 1 327 0
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI12:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI13:
	.loc 1 330 0
	cmpl	$2, %edx
	jg	.L84
	.loc 1 333 0
	decl	%edx
	jg	.L98
	.loc 1 336 0
	call	qemu_get_byte
.L97:
.LBB37:
.LBB38:
	.loc 3 62 0
	movq	%rbx, %rdi
.LBE38:
.LBE37:
	.loc 1 336 0
	movw	%ax, (%rbp)
.LBB39:
.LBB40:
	.loc 3 62 0
	call	qemu_get_byte
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	movq	%rbx, %rdi
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	movb	%al, 2(%rbp)
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	call	qemu_get_byte
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	movq	%rbx, %rdi
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	movb	%al, 3(%rbp)
.LBE50:
.LBE49:
.LBB51:
.LBB52:
	call	qemu_get_byte
.LBE52:
.LBE51:
.LBB53:
.LBB54:
	movq	%rbx, %rdi
.LBE54:
.LBE53:
.LBB55:
.LBB56:
	movb	%al, 4(%rbp)
.LBE56:
.LBE55:
.LBB57:
.LBB58:
	call	qemu_get_byte
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	movq	%rbx, %rdi
.LBE60:
.LBE59:
.LBB61:
.LBB62:
	movb	%al, 5(%rbp)
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	call	qemu_get_byte
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	movq	%rbx, %rdi
.LBE66:
.LBE65:
.LBB67:
.LBB68:
	movb	%al, 6(%rbp)
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	call	qemu_get_byte
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	movq	%rbx, %rdi
.LBE72:
.LBE71:
.LBB73:
.LBB74:
	movb	%al, 7(%rbp)
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	call	qemu_get_byte
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	movq	%rbx, %rdi
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	movb	%al, 8(%rbp)
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	call	qemu_get_byte
	movb	%al, 9(%rbp)
.LBE82:
.LBE81:
	.loc 1 346 0
	xorl	%eax, %eax
.L84:
	.loc 1 347 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L98:
.LBB83:
.LBB84:
	.loc 3 57 0
	call	qemu_get_be16
	jmp	.L97
.LBE84:
.LBE83:
.LFE205:
	.size	serial_load, .-serial_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"serial"
	.text
	.p2align 4,,15
.globl serial_init
	.type	serial_init, @function
serial_init:
.LFB206:
	.loc 1 351 0
	movq	%rbx, -32(%rsp)
.LCFI14:
	movq	%rbp, -24(%rsp)
.LCFI15:
	movl	%edi, %ebp
	movq	%r12, -16(%rsp)
.LCFI16:
	movq	%r13, -8(%rsp)
.LCFI17:
	.loc 1 354 0
	movl	$56, %edi
	.loc 1 351 0
	subq	$40, %rsp
.LCFI18:
	.loc 1 351 0
	movq	%rsi, %r12
	movq	%rdx, %r13
	.loc 1 354 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 356 0
	xorl	%eax, %eax
	.loc 1 355 0
	testq	%rbx, %rbx
	je	.L99
	.loc 1 362 0
	movq	%rbx, %r9
	movl	$serial_load, %r8d
	movl	$serial_save, %ecx
	movl	$2, %edx
	movl	%ebp, %esi
	movl	$.LC0, %edi
	.loc 1 357 0
	movq	%r12, 16(%rbx)
	.loc 1 358 0
	movb	$96, 7(%rbx)
	.loc 1 359 0
	movb	$1, 4(%rbx)
	.loc 1 360 0
	movb	$-80, 8(%rbx)
	.loc 1 362 0
	call	register_savevm
	.loc 1 364 0
	movq	%rbx, %r8
	movl	$serial_ioport_write, %ecx
	movl	$1, %edx
	movl	$8, %esi
	movl	%ebp, %edi
	call	register_ioport_write
	.loc 1 365 0
	movq	%rbx, %r8
	movl	$serial_ioport_read, %ecx
	movl	$1, %edx
	movl	$8, %esi
	movl	%ebp, %edi
	call	register_ioport_read
	.loc 1 366 0
	movq	%r13, 24(%rbx)
	.loc 1 367 0
	movq	%rbx, %r8
	movl	$serial_event, %ecx
	movl	$serial_receive1, %edx
	movl	$serial_can_receive1, %esi
	movq	%r13, %rdi
	call	qemu_chr_add_handlers
	.loc 1 369 0
	movq	%rbx, %rax
.L99:
	.loc 1 370 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
.LFE206:
	.size	serial_init, .-serial_init
	.p2align 4,,15
.globl serial_mm_readb
	.type	serial_mm_readb, @function
serial_mm_readb:
.LFB207:
	.loc 1 374 0
	subq	$8, %rsp
.LCFI19:
	.loc 1 377 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	serial_ioport_read
	.loc 1 378 0
	addq	$8, %rsp
	.loc 1 377 0
	andl	$255, %eax
	.loc 1 378 0
	ret
.LFE207:
	.size	serial_mm_readb, .-serial_mm_readb
	.p2align 4,,15
.globl serial_mm_writeb
	.type	serial_mm_writeb, @function
serial_mm_writeb:
.LFB208:
	.loc 1 382 0
	.loc 1 385 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	andl	$255, %edx
	shrq	%cl, %rsi
	jmp	serial_ioport_write
.LFE208:
	.size	serial_mm_writeb, .-serial_mm_writeb
	.p2align 4,,15
.globl serial_mm_readw
	.type	serial_mm_readw, @function
serial_mm_readw:
.LFB209:
	.loc 1 389 0
	subq	$8, %rsp
.LCFI20:
	.loc 1 393 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	serial_ioport_read
	.loc 1 398 0
	addq	$8, %rsp
	.loc 1 393 0
	andl	$65535, %eax
	.loc 1 398 0
	ret
.LFE209:
	.size	serial_mm_readw, .-serial_mm_readw
	.p2align 4,,15
.globl serial_mm_writew
	.type	serial_mm_writew, @function
serial_mm_writew:
.LFB210:
	.loc 1 402 0
	.loc 1 407 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	andl	$65535, %edx
	shrq	%cl, %rsi
	jmp	serial_ioport_write
.LFE210:
	.size	serial_mm_writew, .-serial_mm_writew
	.p2align 4,,15
.globl serial_mm_readl
	.type	serial_mm_readl, @function
serial_mm_readl:
.LFB211:
	.loc 1 411 0
	.loc 1 415 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	jmp	serial_ioport_read
.LFE211:
	.size	serial_mm_readl, .-serial_mm_readl
	.p2align 4,,15
.globl serial_mm_writel
	.type	serial_mm_writel, @function
serial_mm_writel:
.LFB212:
	.loc 1 424 0
	.loc 1 429 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	shrq	%cl, %rsi
	jmp	serial_ioport_write
.LFE212:
	.size	serial_mm_writel, .-serial_mm_writel
	.p2align 4,,15
.globl serial_mm_init
	.type	serial_mm_init, @function
serial_mm_init:
.LFB213:
	.loc 1 447 0
	movq	%rbx, -48(%rsp)
.LCFI21:
	movq	%rbp, -40(%rsp)
.LCFI22:
	movq	%rdx, %rbp
	movq	%r12, -32(%rsp)
.LCFI23:
	movq	%r13, -24(%rsp)
.LCFI24:
	movq	%rdi, %r12
	movq	%r14, -16(%rsp)
.LCFI25:
	movq	%r15, -8(%rsp)
.LCFI26:
	.loc 1 451 0
	movl	$56, %edi
	.loc 1 447 0
	subq	$56, %rsp
.LCFI27:
	.loc 1 447 0
	movl	%esi, %r15d
	movq	%rcx, %r14
	movl	%r8d, %r13d
	.loc 1 451 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 453 0
	xorl	%eax, %eax
	.loc 1 452 0
	testq	%rbx, %rbx
	je	.L107
	.loc 1 454 0
	movq	%rbp, 16(%rbx)
	.loc 1 455 0
	movb	$96, 7(%rbx)
	.loc 1 461 0
	movq	%rbx, %r9
	.loc 1 456 0
	movb	$1, 4(%rbx)
	.loc 1 457 0
	movb	$-80, 8(%rbx)
	.loc 1 461 0
	movl	$serial_load, %r8d
	.loc 1 458 0
	movq	%r12, 40(%rbx)
	.loc 1 459 0
	movl	%r15d, 48(%rbx)
	.loc 1 461 0
	movl	$serial_save, %ecx
	movl	$2, %edx
	movl	%r12d, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 463 0
	testl	%r13d, %r13d
	jne	.L110
.L109:
	.loc 1 468 0
	movq	%r14, 24(%rbx)
	.loc 1 469 0
	movq	%rbx, %r8
	movl	$serial_event, %ecx
	movl	$serial_receive1, %edx
	movl	$serial_can_receive1, %esi
	movq	%r14, %rdi
	call	qemu_chr_add_handlers
	.loc 1 471 0
	movq	%rbx, %rax
.L107:
	.loc 1 472 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L110:
	.loc 1 464 0
	movq	%rbx, %rcx
	xorl	%edi, %edi
	movl	$serial_mm_write, %edx
	movl	$serial_mm_read, %esi
	call	cpu_register_io_memory
	.loc 1 466 0
	movl	%r15d, %ecx
	movl	$8, %esi
	movslq	%eax,%rdx
	sall	%cl, %esi
	movq	%r12, %rdi
	movslq	%esi,%rsi
	call	cpu_register_physical_memory
	jmp	.L109
.LFE213:
	.size	serial_mm_init, .-serial_mm_init
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
	.byte	0x4
	.long	.LCFI0-.LFB195
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
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
	.long	.LCFI4-.LFB196
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI7-.LFB197
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI8-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI11-.LFB205
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI15-.LFB206
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI15
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI19-.LFB207
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI20-.LFB209
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
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
	.byte	0x4
	.long	.LCFI22-.LFB213
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI24-.LCFI22
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE32:
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
	.byte	0x4
	.long	.LCFI0-.LFB195
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
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
	.long	.LCFI4-.LFB196
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.byte	0x4
	.long	.LCFI7-.LFB197
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI8-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI11-.LFB205
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI15-.LFB206
	.byte	0x86
	.uleb128 0x4
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI15
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI19-.LFB207
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI20-.LFB209
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
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
	.byte	0x4
	.long	.LCFI22-.LFB213
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI24-.LCFI22
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
	.byte	0xe
	.uleb128 0x40
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE33:
	.file 4 "../qemu-common.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "../qemu-char.h"
	.file 7 "../cpu-defs.h"
	.file 8 "../argos-tag.h"
	.file 9 "../argos.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x11d8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF134
	.byte	0x1
	.long	.LASF135
	.long	.LASF136
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
	.byte	0xc
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
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
	.byte	0xa
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0xb
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0xb
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0xb
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0xb
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0xb
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0xb
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0xb
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0xb
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0xb
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0xb
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0xb
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0xb
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0xb
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0xb
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0xb
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0xb
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0xb
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0xb
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0xb
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0xb
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0xb
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0xb
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0xb
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0xb
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xb
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0xb
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0xb
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0xb
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
	.uleb128 0xd
	.long	0x2f6
	.byte	0x1
	.long	0x3f
	.uleb128 0xe
	.long	0x9b
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x49
	.long	0x317
	.uleb128 0x3
	.long	.LASF53
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF55
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x2f
	.long	0x30c
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x34
	.long	0x30c
	.uleb128 0x7
	.long	0x381
	.long	.LASF58
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.uleb128 0xa
	.long	.LASF59
	.byte	0x8
	.byte	0x38
	.long	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF60
	.byte	0x8
	.byte	0x39
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.byte	0x3d
	.long	0x358
	.uleb128 0xf
	.long	.LASF62
	.byte	0xe
	.value	0x388
	.long	0x398
	.uleb128 0x10
	.long	0x3b3
	.byte	0x1
	.uleb128 0xe
	.long	0x9b
	.uleb128 0xe
	.long	0x322
	.uleb128 0xe
	.long	0x30c
	.uleb128 0xe
	.long	0x3b3
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b9
	.uleb128 0x11
	.long	0x381
	.uleb128 0xf
	.long	.LASF63
	.byte	0xe
	.value	0x389
	.long	0x3ca
	.uleb128 0xd
	.long	0x3e4
	.byte	0x1
	.long	0x30c
	.uleb128 0xe
	.long	0x9b
	.uleb128 0xe
	.long	0x322
	.uleb128 0xe
	.long	0x3e4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x381
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x45
	.long	0x3f5
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.uleb128 0x2
	.long	.LASF65
	.byte	0x4
	.byte	0x5f
	.long	0x406
	.uleb128 0x10
	.long	0x41c
	.byte	0x1
	.uleb128 0xe
	.long	0x9b
	.uleb128 0xe
	.long	0x41c
	.uleb128 0xe
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x422
	.uleb128 0x11
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF66
	.byte	0x4
	.byte	0x60
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF67
	.byte	0x4
	.byte	0x71
	.long	0x43d
	.uleb128 0x7
	.long	0x4ff
	.long	.LASF67
	.byte	0x68
	.byte	0x4
	.byte	0x71
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.byte	0x22
	.long	0x69f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.byte	0x23
	.long	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.byte	0x24
	.long	0x6d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF71
	.byte	0x6
	.byte	0x25
	.long	0x6d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF72
	.byte	0x6
	.byte	0x26
	.long	0x6dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF73
	.byte	0x6
	.byte	0x27
	.long	0x6e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF74
	.byte	0x6
	.byte	0x28
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF75
	.byte	0x6
	.byte	0x29
	.long	0x6fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF76
	.byte	0x6
	.byte	0x2a
	.long	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF77
	.byte	0x6
	.byte	0x2b
	.long	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF78
	.byte	0x6
	.byte	0x2c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF79
	.byte	0x6
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.string	"bh"
	.byte	0x6
	.byte	0x2e
	.long	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x4
	.byte	0x73
	.long	0x50a
	.uleb128 0x12
	.long	.LASF80
	.byte	0x1
	.uleb128 0x2
	.long	.LASF81
	.byte	0x4
	.byte	0x7a
	.long	0x51b
	.uleb128 0x7
	.long	0x5fa
	.long	.LASF81
	.byte	0x38
	.byte	0x4
	.byte	0x7a
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.byte	0x4d
	.long	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"rbr"
	.byte	0x1
	.byte	0x4e
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"ier"
	.byte	0x1
	.byte	0x4f
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x13
	.string	"iir"
	.byte	0x1
	.byte	0x50
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"lcr"
	.byte	0x1
	.byte	0x51
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x13
	.string	"mcr"
	.byte	0x1
	.byte	0x52
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x13
	.string	"lsr"
	.byte	0x1
	.byte	0x53
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x13
	.string	"msr"
	.byte	0x1
	.byte	0x54
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"scr"
	.byte	0x1
	.byte	0x55
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF83
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"irq"
	.byte	0x1
	.byte	0x59
	.long	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.string	"chr"
	.byte	0x1
	.byte	0x5a
	.long	0x706
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF85
	.byte	0x1
	.byte	0x5c
	.long	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF87
	.byte	0x4
	.byte	0x7b
	.long	0x605
	.uleb128 0x6
	.byte	0x8
	.long	0x60b
	.uleb128 0x12
	.long	.LASF88
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x4ff
	.uleb128 0x14
	.long	0x658
	.byte	0x10
	.byte	0x6
	.byte	0x11
	.uleb128 0xa
	.long	.LASF89
	.byte	0x6
	.byte	0xd
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x6
	.byte	0xe
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF91
	.byte	0x6
	.byte	0xf
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0x6
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.byte	0x11
	.long	0x617
	.uleb128 0x2
	.long	.LASF94
	.byte	0x6
	.byte	0x1f
	.long	0x66e
	.uleb128 0x10
	.long	0x67f
	.byte	0x1
	.uleb128 0xe
	.long	0x9b
	.uleb128 0xe
	.long	0x3f
	.byte	0x0
	.uleb128 0xd
	.long	0x699
	.byte	0x1
	.long	0x3f
	.uleb128 0xe
	.long	0x699
	.uleb128 0xe
	.long	0x41c
	.uleb128 0xe
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x43d
	.uleb128 0x6
	.byte	0x8
	.long	0x67f
	.uleb128 0x10
	.long	0x6b1
	.byte	0x1
	.uleb128 0xe
	.long	0x699
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a5
	.uleb128 0xd
	.long	0x6d1
	.byte	0x1
	.long	0x3f
	.uleb128 0xe
	.long	0x699
	.uleb128 0xe
	.long	0x3f
	.uleb128 0xe
	.long	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6b7
	.uleb128 0x6
	.byte	0x8
	.long	0x663
	.uleb128 0x6
	.byte	0x8
	.long	0x427
	.uleb128 0x6
	.byte	0x8
	.long	0x3fb
	.uleb128 0x10
	.long	0x6fa
	.byte	0x1
	.uleb128 0xe
	.long	0x699
	.uleb128 0xe
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e9
	.uleb128 0x6
	.byte	0x8
	.long	0x3ea
	.uleb128 0x6
	.byte	0x8
	.long	0x432
	.uleb128 0x15
	.long	0x774
	.long	.LASF95
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x60
	.long	0x774
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	0x756
	.long	0x77a
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x18
	.long	0x787
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x19
	.long	0x793
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x18
	.long	0x7a0
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x510
	.uleb128 0x1a
	.long	0x793
	.long	.LASF96
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x5fa
	.byte	0x0
	.uleb128 0x1a
	.long	0x7ac
	.long	.LASF97
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x5fa
	.byte	0x0
	.uleb128 0x15
	.long	0x816
	.long	.LASF98
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x70
	.long	0x774
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF91
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.long	.LASF92
	.byte	0x1
	.byte	0x72
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1e
	.string	"ssp"
	.byte	0x1
	.byte	0x73
	.long	0x658
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.long	0x892
	.long	.LASF99
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x1
	.byte	0x90
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF100
	.byte	0x1
	.byte	0x90
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x90
	.long	0x30c
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x92
	.long	0x774
	.uleb128 0x1e
	.string	"ch"
	.byte	0x1
	.byte	0x93
	.long	0x70
	.byte	0x2
	.byte	0x91
	.sleb128 7
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x1
	.byte	0xbb
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x8f0
	.long	.LASF102
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	0x30c
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x1
	.byte	0xd3
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF100
	.byte	0x1
	.byte	0xd3
	.long	0x30c
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.byte	0xd3
	.long	0x3e4
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xd5
	.long	0x774
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xd6
	.long	0x30c
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x23
	.long	0x947
	.long	.LASF103
	.byte	0x1
	.value	0x125
	.byte	0x1
	.long	0x3f
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x124
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x126
	.long	0x774
	.uleb128 0x19
	.long	0x947
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x26
	.long	0x959
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0x964
	.long	.LASF104
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x111
	.long	0x774
	.byte	0x0
	.uleb128 0x29
	.long	0x9da
	.long	.LASF105
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x12a
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x12a
	.long	0x41c
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF106
	.byte	0x1
	.value	0x12a
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x12c
	.long	0x774
	.uleb128 0x19
	.long	0x9da
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x26
	.long	0x9e8
	.uleb128 0x18
	.long	0x9f2
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x9fe
	.long	.LASF107
	.byte	0x1
	.value	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x116
	.long	0x774
	.uleb128 0x28
	.string	"ch"
	.byte	0x1
	.value	0x116
	.long	0x3f
	.byte	0x0
	.uleb128 0x29
	.long	0xa5f
	.long	.LASF108
	.byte	0x1
	.value	0x131
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x130
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF109
	.byte	0x1
	.value	0x130
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x132
	.long	0x774
	.uleb128 0x19
	.long	0xa5f
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x26
	.long	0xa6d
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0xa78
	.long	.LASF110
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x11d
	.long	0x774
	.byte	0x0
	.uleb128 0x29
	.long	0xbfc
	.long	.LASF111
	.byte	0x1
	.value	0x138
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x137
	.long	0x611
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x137
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0x774
	.uleb128 0x17
	.long	0xadf
	.long	0xbfc
	.quad	.LBB15
	.quad	.LBE15
	.uleb128 0x26
	.long	0xc09
	.uleb128 0x26
	.long	0xc12
	.byte	0x0
	.uleb128 0x17
	.long	0xb03
	.long	0xc28
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xb27
	.long	0xc28
	.quad	.LBB19
	.quad	.LBE19
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xb4b
	.long	0xc28
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xb6f
	.long	0xc28
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xb93
	.long	0xc28
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xbb7
	.long	0xc28
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x17
	.long	0xbdb
	.long	0xc28
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.uleb128 0x19
	.long	0xc28
	.quad	.LBB31
	.quad	.LBE31
	.uleb128 0x26
	.long	0xc35
	.uleb128 0x26
	.long	0xc3e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xc1d
	.long	.LASF112
	.byte	0x3
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"f"
	.byte	0x3
	.byte	0x23
	.long	0x611
	.uleb128 0x1b
	.string	"pv"
	.byte	0x3
	.byte	0x23
	.long	0xc1d
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xc23
	.uleb128 0x11
	.long	0x301
	.uleb128 0x1a
	.long	0xc49
	.long	.LASF113
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x611
	.uleb128 0x1b
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x41c
	.byte	0x0
	.uleb128 0x23
	.long	0xddf
	.long	.LASF114
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x3f
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x146
	.long	0x611
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x146
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF115
	.byte	0x1
	.value	0x146
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x148
	.long	0x774
	.uleb128 0x17
	.long	0xcc2
	.long	0xddf
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xce6
	.long	0xddf
	.quad	.LBB41
	.quad	.LBE41
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xd0a
	.long	0xddf
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xd2e
	.long	0xddf
	.quad	.LBB53
	.quad	.LBE53
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xd52
	.long	0xddf
	.quad	.LBB59
	.quad	.LBE59
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xd76
	.long	0xddf
	.quad	.LBB65
	.quad	.LBE65
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xd9a
	.long	0xddf
	.quad	.LBB71
	.quad	.LBE71
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x17
	.long	0xdbe
	.long	0xddf
	.quad	.LBB77
	.quad	.LBE77
	.uleb128 0x26
	.long	0xdec
	.uleb128 0x26
	.long	0xdf5
	.byte	0x0
	.uleb128 0x19
	.long	0xe06
	.quad	.LBB83
	.quad	.LBE83
	.uleb128 0x26
	.long	0xe13
	.uleb128 0x26
	.long	0xe1c
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xe00
	.long	.LASF116
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x611
	.uleb128 0x1b
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0xe00
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x1a
	.long	0xe27
	.long	.LASF117
	.byte	0x3
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"f"
	.byte	0x3
	.byte	0x37
	.long	0x611
	.uleb128 0x1b
	.string	"pv"
	.byte	0x3
	.byte	0x37
	.long	0xe27
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x301
	.uleb128 0x2c
	.long	0xe88
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0x774
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF85
	.byte	0x1
	.value	0x15e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"irq"
	.byte	0x1
	.value	0x15e
	.long	0x5fa
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x15e
	.long	0x706
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x160
	.long	0x774
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2c
	.long	0xee1
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	0x30c
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x175
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x175
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x175
	.long	0x3e4
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x177
	.long	0x774
	.byte	0x0
	.uleb128 0x2e
	.long	0xf44
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.value	0x17e
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x17c
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x17d
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x17d
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x17d
	.long	0x3b3
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x17f
	.long	0x774
	.byte	0x0
	.uleb128 0x2c
	.long	0xfab
	.byte	0x1
	.long	.LASF122
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	0x30c
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x184
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x184
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x184
	.long	0x3e4
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x186
	.long	0x774
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0x187
	.long	0x30c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.long	0x100e
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.value	0x192
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x190
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x191
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x191
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x191
	.long	0x3b3
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x193
	.long	0x774
	.byte	0x0
	.uleb128 0x2c
	.long	0x1073
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.value	0x19b
	.byte	0x1
	.long	0x30c
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x19a
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x19a
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x19a
	.long	0x3e4
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x19c
	.long	0x774
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0x19d
	.long	0x30c
	.byte	0x0
	.uleb128 0x2e
	.long	0x10d6
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.value	0x1a8
	.byte	0x1
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.value	0x1a6
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.value	0x1a7
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x1a7
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.string	"tag"
	.byte	0x1
	.value	0x1a7
	.long	0x3b3
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x1a9
	.long	0x774
	.byte	0x0
	.uleb128 0x2c
	.long	0x115b
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.long	0x774
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF85
	.byte	0x1
	.value	0x1bc
	.long	0x322
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF86
	.byte	0x1
	.value	0x1bc
	.long	0x3f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.string	"irq"
	.byte	0x1
	.value	0x1bd
	.long	0x5fa
	.byte	0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"chr"
	.byte	0x1
	.value	0x1bd
	.long	0x706
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.long	.LASF127
	.byte	0x1
	.value	0x1be
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x1c0
	.long	0x774
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF128
	.byte	0x1
	.value	0x1c1
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.long	.LASF129
	.byte	0xa
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF130
	.byte	0xa
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF131
	.byte	0xe
	.value	0x376
	.long	0xe00
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x1193
	.long	0x1193
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3be
	.uleb128 0x2f
	.long	.LASF132
	.byte	0x1
	.value	0x1b0
	.long	0x1183
	.byte	0x9
	.byte	0x3
	.quad	serial_mm_read
	.uleb128 0xb
	.long	0x11bf
	.long	0x11bf
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x38c
	.uleb128 0x2f
	.long	.LASF133
	.byte	0x1
	.value	0x1b6
	.long	0x11af
	.byte	0x9
	.byte	0x3
	.quad	serial_mm_write
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xac
	.value	0x2
	.long	.Ldebug_info0
	.long	0x11dc
	.long	0xe2d
	.string	"serial_init"
	.long	0xe88
	.string	"serial_mm_readb"
	.long	0xee1
	.string	"serial_mm_writeb"
	.long	0xf44
	.string	"serial_mm_readw"
	.long	0xfab
	.string	"serial_mm_writew"
	.long	0x100e
	.string	"serial_mm_readl"
	.long	0x1073
	.string	"serial_mm_writel"
	.long	0x10d6
	.string	"serial_mm_init"
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
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF84:
	.string	"last_break_enable"
.LASF24:
	.string	"_IO_save_end"
.LASF127:
	.string	"ioregister"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF118:
	.string	"serial_init"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF95:
	.string	"serial_update_irq"
.LASF2:
	.string	"long int"
.LASF97:
	.string	"qemu_irq_raise"
.LASF122:
	.string	"serial_mm_readw"
.LASF44:
	.string	"_IO_marker"
.LASF60:
	.string	"netidx"
.LASF78:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF123:
	.string	"serial_mm_writew"
.LASF88:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF79:
	.string	"focus"
.LASF83:
	.string	"thr_ipending"
.LASF61:
	.string	"argos_rtag_t"
.LASF63:
	.string	"CPUReadMemoryFunc"
.LASF69:
	.string	"chr_update_read_handler"
.LASF58:
	.string	"argos_rtag"
.LASF121:
	.string	"value"
.LASF117:
	.string	"qemu_get_be16s"
.LASF65:
	.string	"IOReadHandler"
.LASF42:
	.string	"_IO_lock_t"
.LASF80:
	.string	"QEMUFile"
.LASF98:
	.string	"serial_update_parameters"
.LASF112:
	.string	"qemu_put_be16s"
.LASF107:
	.string	"serial_receive_byte"
.LASF56:
	.string	"argos_paddr_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"double"
.LASF108:
	.string	"serial_event"
.LASF76:
	.string	"chr_close"
.LASF47:
	.string	"_pos"
.LASF129:
	.string	"stdin"
.LASF70:
	.string	"chr_ioctl"
.LASF67:
	.string	"CharDriverState"
.LASF25:
	.string	"_markers"
.LASF92:
	.string	"stop_bits"
.LASF94:
	.string	"IOEventHandler"
.LASF71:
	.string	"chr_event"
.LASF74:
	.string	"handler_opaque"
.LASF41:
	.string	"_unused2"
.LASF64:
	.string	"QEMUBH"
.LASF81:
	.string	"SerialState"
.LASF28:
	.string	"_flags2"
.LASF101:
	.string	"break_enable"
.LASF16:
	.string	"_IO_read_base"
.LASF109:
	.string	"event"
.LASF113:
	.string	"qemu_put_8s"
.LASF29:
	.string	"_old_offset"
.LASF72:
	.string	"chr_can_read"
.LASF99:
	.string	"serial_ioport_write"
.LASF115:
	.string	"version_id"
.LASF104:
	.string	"serial_can_receive"
.LASF3:
	.string	"long long int"
.LASF120:
	.string	"serial_mm_writeb"
.LASF125:
	.string	"serial_mm_writel"
.LASF19:
	.string	"_IO_write_end"
.LASF105:
	.string	"serial_receive1"
.LASF77:
	.string	"chr_accept_input"
.LASF136:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF100:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF134:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF91:
	.string	"data_bits"
.LASF116:
	.string	"qemu_get_8s"
.LASF57:
	.string	"argos_netidx_t"
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
.LASF62:
	.string	"CPUWriteMemoryFunc"
.LASF46:
	.string	"_sbuf"
.LASF13:
	.string	"_flags"
.LASF133:
	.string	"serial_mm_write"
.LASF52:
	.string	"target_phys_addr_t"
.LASF55:
	.string	"long double"
.LASF126:
	.string	"serial_mm_init"
.LASF103:
	.string	"serial_can_receive1"
.LASF34:
	.string	"_offset"
.LASF119:
	.string	"serial_mm_readb"
.LASF124:
	.string	"serial_mm_readl"
.LASF106:
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
.LASF82:
	.string	"divider"
.LASF102:
	.string	"serial_ioport_read"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF111:
	.string	"serial_save"
.LASF135:
	.string	"/home/remco/Projects/Argos/src/hw/serial.c"
.LASF21:
	.string	"_IO_buf_end"
.LASF8:
	.string	"short int"
.LASF114:
	.string	"serial_load"
.LASF51:
	.string	"uint64_t"
.LASF131:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF110:
	.string	"serial_receive_break"
.LASF66:
	.string	"IOCanRWHandler"
.LASF15:
	.string	"_IO_read_end"
.LASF96:
	.string	"qemu_irq_lower"
.LASF93:
	.string	"QEMUSerialSetParams"
.LASF50:
	.string	"uint32_t"
.LASF86:
	.string	"it_shift"
.LASF27:
	.string	"_fileno"
.LASF75:
	.string	"chr_send_event"
.LASF53:
	.string	"float"
.LASF130:
	.string	"stdout"
.LASF68:
	.string	"chr_write"
.LASF85:
	.string	"base"
.LASF18:
	.string	"_IO_write_ptr"
.LASF132:
	.string	"serial_mm_read"
.LASF128:
	.string	"s_io_memory"
.LASF73:
	.string	"chr_read"
.LASF89:
	.string	"speed"
.LASF59:
	.string	"origin"
.LASF90:
	.string	"parity"
.LASF87:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
