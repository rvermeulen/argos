	.file	"pckbd.c"
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
	.type	kbd_mm_write, @object
	.size	kbd_mm_write, 24
kbd_mm_write:
	.quad	kbd_mm_writeb
	.quad	kbd_mm_writeb
	.quad	kbd_mm_writeb
	.align 16
	.type	kbd_mm_read, @object
	.size	kbd_mm_read, 24
kbd_mm_read:
	.quad	kbd_mm_readb
	.quad	kbd_mm_readb
	.quad	kbd_mm_readb
	.text
	.p2align 4,,15
	.type	kbd_update_irq, @function
kbd_update_irq:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/pckbd.c"
	.loc 1 141 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 146 0
	movzbl	1(%rdi), %edx
	.loc 1 147 0
	movzbl	3(%rdi), %eax
	.loc 1 144 0
	xorl	%esi, %esi
	.loc 1 145 0
	xorl	%ebp, %ebp
	.loc 1 141 0
	movq	%rdi, %rbx
	.loc 1 146 0
	andl	$-34, %edx
	.loc 1 147 0
	testb	%al, %al
	je	.L7
	.loc 1 148 0
	movl	%edx, %ecx
	orl	$1, %ecx
	.loc 1 150 0
	cmpb	$2, %al
	je	.L9
	.loc 1 155 0
	movzbl	2(%rdi), %eax
	movb	%cl, 1(%rdi)
	testb	$1, %al
	je	.L2
	testb	$16, %al
	jne	.L2
	.loc 1 157 0
	movl	$1, %esi
	jmp	.L2
	.p2align 4,,7
.L7:
	movb	%dl, 1(%rdi)
.L2:
	.loc 1 160 0
	movq	24(%rbx), %rdi
	call	qemu_set_irq
	.loc 1 161 0
	movq	32(%rbx), %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	jmp	qemu_set_irq
	.p2align 4,,7
.L9:
	.loc 1 151 0
	orl	$33, %edx
	.loc 1 152 0
	testb	$2, 2(%rdi)
	.loc 1 151 0
	movb	%dl, 1(%rdi)
	.loc 1 152 0
	je	.L2
	.loc 1 153 0
	movb	$1, %bpl
	jmp	.L2
.LFE194:
	.size	kbd_update_irq, .-kbd_update_irq
	.p2align 4,,15
	.type	kbd_update_kbd_irq, @function
kbd_update_kbd_irq:
.LFB195:
	.loc 1 165 0
	.loc 1 168 0
	testl	%esi, %esi
	je	.L11
	.loc 1 169 0
	orb	$1, 3(%rdi)
	.loc 1 172 0
	jmp	kbd_update_irq
	.p2align 4,,7
.L11:
	.loc 1 171 0
	andb	$-2, 3(%rdi)
	.loc 1 172 0
	jmp	kbd_update_irq
.LFE195:
	.size	kbd_update_kbd_irq, .-kbd_update_kbd_irq
	.p2align 4,,15
	.type	kbd_update_aux_irq, @function
kbd_update_aux_irq:
.LFB196:
	.loc 1 176 0
	.loc 1 179 0
	testl	%esi, %esi
	je	.L14
	.loc 1 180 0
	orb	$2, 3(%rdi)
	.loc 1 183 0
	jmp	kbd_update_irq
	.p2align 4,,7
.L14:
	.loc 1 182 0
	andb	$-3, 3(%rdi)
	.loc 1 183 0
	jmp	kbd_update_irq
.LFE196:
	.size	kbd_update_aux_irq, .-kbd_update_aux_irq
	.p2align 4,,15
	.type	kbd_read_status, @function
kbd_read_status:
.LFB197:
	.loc 1 187 0
	.loc 1 190 0
	movzbl	1(%rdi), %eax
	.loc 1 195 0
	ret
.LFE197:
	.size	kbd_read_status, .-kbd_read_status
	.p2align 4,,15
	.type	kbd_queue, @function
kbd_queue:
.LFB198:
	.loc 1 198 0
	.loc 1 199 0
	testl	%edx, %edx
	je	.L18
	.loc 1 200 0
	movq	16(%rdi), %rdi
	.loc 1 202 0
	jmp	ps2_queue
	.p2align 4,,7
.L18:
	movq	8(%rdi), %rdi
	jmp	ps2_queue
.LFE198:
	.size	kbd_queue, .-kbd_queue
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"qemu: unsupported keyboard cmd=0x%02x\n"
	.text
	.p2align 4,,15
	.type	kbd_write_command, @function
kbd_write_command:
.LFB199:
	.loc 1 206 0
	.loc 1 212 0
	cmpl	$174, %edx
	.loc 1 206 0
	pushq	%rbx
.LCFI3:
	.loc 1 206 0
	movl	%edx, %ecx
	movq	%rdi, %rbx
	.loc 1 212 0
	je	.L35
	ja	.L45
	cmpl	$168, %edx
	je	.L30
	.p2align 4,,9
	jbe	.L53
	cmpl	$170, %edx
	.p2align 4,,7
	je	.L32
	.p2align 4,,9
	jb	.L36
	cmpl	$171, %edx
	.p2align 4,,7
	je	.L36
	cmpl	$173, %edx
	.p2align 4,,7
	jne	.L44
	.loc 1 240 0
	orb	$16, 2(%rdi)
	.p2align 4,,5
	jmp	.L52
	.p2align 4,,7
.L45:
	.loc 1 212 0
	cmpl	$212, %edx
	.p2align 4,,5
	jbe	.L54
	cmpl	$223, %edx
	.p2align 4,,5
	je	.L40
	.p2align 4,,7
	ja	.L49
	cmpl	$221, %edx
	.p2align 4,,7
	je	.L41
	.p2align 4,,7
.L44:
	.loc 1 281 0
	popq	%rbx
	.loc 1 278 0
	movq	stderr(%rip), %rdi
	movl	%ecx, %edx
	movl	$.LC0, %esi
	xorl	%eax, %eax
	jmp	fprintf
	.p2align 4,,7
.L35:
	.loc 1 244 0
	andb	$-17, 2(%rdi)
.L52:
	.loc 1 245 0
	movq	%rbx, %rdi
	.loc 1 281 0
	popq	%rbx
	.loc 1 245 0
	jmp	kbd_update_irq
	.p2align 4,,7
.L54:
	.loc 1 212 0
	cmpl	$209, %edx
	jae	.L28
	cmpl	$192, %edx
	je	.L36
	cmpl	$208, %edx
	.p2align 4,,5
	jne	.L44
	.loc 1 253 0
	.p2align 4,,7
	call	ioport_get_a20
	.loc 1 257 0
	movzbl	1(%rbx), %edx
	.loc 1 253 0
	addl	%eax, %eax
	movl	%eax, %ecx
	.loc 1 258 0
	orl	$17, %eax
	.loc 1 253 0
	orl	$1, %ecx
	.loc 1 258 0
	testb	$1, %dl
	cmovne	%eax, %ecx
	.loc 1 260 0
	movl	%ecx, %eax
	orl	$32, %eax
	andl	$32, %edx
	cmovne	%eax, %ecx
	.loc 1 261 0
	xorl	%edx, %edx
	movl	%ecx, %esi
	jmp	.L51
	.p2align 4,,7
.L53:
	.loc 1 212 0
	cmpl	$96, %edx
	je	.L28
	ja	.L47
	cmpl	$32, %edx
	.p2align 4,,7
	jne	.L44
	.loc 1 214 0
	movzbl	2(%rdi), %esi
	movl	$1, %edx
	.p2align 4,,7
.L51:
	.loc 1 261 0
	movq	%rbx, %rdi
	.loc 1 281 0
	popq	%rbx
	.loc 1 261 0
	jmp	kbd_queue
	.p2align 4,,7
.L28:
	.loc 1 221 0
	movb	%cl, (%rbx)
.L21:
	.loc 1 281 0
	popq	%rbx
	ret
	.p2align 4,,7
.L30:
	.loc 1 227 0
	andb	$-33, 2(%rdi)
	.loc 1 281 0
	popq	%rbx
	ret
.L49:
	.loc 1 212 0
	cmpl	$254, %edx
	.p2align 4,,5
	je	.L42
	cmpl	$255, %edx
	.p2align 4,,5
	jne	.L44
	.p2align 4,,7
	jmp	.L21
.L47:
	cmpl	$167, %edx
	.p2align 4,,7
	jne	.L44
	.loc 1 224 0
	orb	$32, 2(%rdi)
	.loc 1 281 0
	popq	%rbx
	.p2align 4,,6
	ret
.L36:
	.loc 1 248 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align 4,,3
	jmp	.L51
.L40:
	.loc 1 265 0
	movl	$1, %edi
.L50:
	.loc 1 281 0
	popq	%rbx
	.loc 1 268 0
	jmp	ioport_set_a20
.L32:
	.loc 1 233 0
	orb	$4, 1(%rdi)
	.loc 1 234 0
	xorl	%edx, %edx
	movl	$85, %esi
	jmp	.L51
.L42:
	.loc 1 281 0
	popq	%rbx
	.loc 1 272 0
	jmp	qemu_system_reset_request
.L41:
	.loc 1 268 0
	xorl	%edi, %edi
	jmp	.L50
.LFE199:
	.size	kbd_write_command, .-kbd_write_command
	.p2align 4,,15
	.type	kbd_read_data, @function
kbd_read_data:
.LFB200:
	.loc 1 284 0
	.loc 1 287 0
	cmpb	$2, 3(%rdi)
	je	.L58
	.loc 1 290 0
	movq	8(%rdi), %rdi
	jmp	ps2_read_data
	.p2align 4,,7
.L58:
	.loc 1 288 0
	movq	16(%rdi), %rdi
	.loc 1 290 0
	jmp	ps2_read_data
.LFE200:
	.size	kbd_read_data, .-kbd_read_data
	.p2align 4,,15
	.type	kbd_write_data, @function
kbd_write_data:
.LFB201:
	.loc 1 294 0
	movq	%rbx, -16(%rsp)
.LCFI4:
	movq	%rbp, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 1 301 0
	movzbl	(%rdi), %eax
	.loc 1 294 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 301 0
	cmpl	$209, %eax
	je	.L65
	jle	.L71
	cmpl	$211, %eax
	je	.L64
	.p2align 4,,9
	jl	.L63
	cmpl	$212, %eax
	.p2align 4,,7
	je	.L67
	.p2align 4,,7
.L60:
	.loc 1 331 0
	movb	$0, (%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L71:
	.loc 1 301 0
	testl	%eax, %eax
	je	.L61
	cmpl	$96, %eax
	jne	.L60
	.loc 1 307 0
	shrl	$6, %ebp
	movq	8(%rdi), %rdi
	.loc 1 306 0
	movb	%dl, 2(%rbx)
	.loc 1 307 0
	andl	$1, %ebp
	movl	%ebp, %esi
	call	ps2_keyboard_set_translation
	.loc 1 309 0
	movq	%rbx, %rdi
	call	kbd_update_irq
	jmp	.L60
	.p2align 4,,7
.L65:
	.loc 1 319 0
	movl	%edx, %edi
	shrl	%edi
	andl	$1, %edi
	call	ioport_set_a20
	.loc 1 321 0
	andl	$1, %ebp
	jne	.L60
	.loc 1 322 0
	call	qemu_system_reset_request
	.p2align 4,,6
	jmp	.L60
	.p2align 4,,7
.L61:
	.loc 1 303 0
	movq	8(%rdi), %rdi
	movl	%edx, %esi
	call	ps2_write_keyboard
	.loc 1 331 0
	movb	$0, (%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L63:
	.loc 1 312 0
	xorl	%edx, %edx
.L70:
	.loc 1 315 0
	movl	%ebp, %esi
	movq	%rbx, %rdi
	call	kbd_queue
	.loc 1 331 0
	movb	$0, (%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L64:
	.loc 1 315 0
	movl	$1, %edx
	jmp	.L70
.L67:
	.loc 1 326 0
	movq	16(%rdi), %rdi
	movl	%edx, %esi
	call	ps2_write_mouse
	.p2align 4,,2
	jmp	.L60
.LFE201:
	.size	kbd_write_data, .-kbd_write_data
	.p2align 4,,15
	.type	kbd_reset, @function
kbd_reset:
.LFB202:
	.loc 1 335 0
	.loc 1 338 0
	movb	$3, 2(%rdi)
	.loc 1 339 0
	movb	$24, 1(%rdi)
	ret
.LFE202:
	.size	kbd_reset, .-kbd_reset
	.p2align 4,,15
	.type	kbd_save, @function
kbd_save:
.LFB203:
	.loc 1 343 0
	movq	%rbx, -16(%rsp)
.LCFI7:
	movq	%r12, -8(%rsp)
.LCFI8:
	movq	%rsi, %rbx
	subq	$24, %rsp
.LCFI9:
.LBB2:
.LBB3:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 42 0
	movzbl	(%rsi), %esi
.LBE3:
.LBE2:
	.loc 1 343 0
	movq	%rdi, %r12
.LBB4:
.LBB5:
	.loc 2 42 0
	call	qemu_put_byte
.LBE5:
.LBE4:
.LBB6:
.LBB7:
	movzbl	1(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	movzbl	2(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE9:
.LBE8:
.LBB10:
.LBB11:
	movzbl	3(%rbx), %esi
	movq	%r12, %rdi
.LBE11:
.LBE10:
	movq	8(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
.LBB12:
.LBB13:
	jmp	qemu_put_byte
.LBE13:
.LBE12:
.LFE203:
	.size	kbd_save, .-kbd_save
	.p2align 4,,15
	.type	kbd_load, @function
kbd_load:
.LFB204:
	.loc 1 353 0
	pushq	%rbp
.LCFI10:
	.loc 1 357 0
	movl	$-22, %eax
	.loc 1 353 0
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI11:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI12:
	.loc 1 356 0
	cmpl	$3, %edx
	jne	.L78
.LBB14:
.LBB15:
	.loc 2 62 0
	call	qemu_get_byte
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	movq	%rbx, %rdi
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	movb	%al, (%rbp)
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	call	qemu_get_byte
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	movq	%rbx, %rdi
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	movb	%al, 1(%rbp)
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	call	qemu_get_byte
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	movq	%rbx, %rdi
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movb	%al, 2(%rbp)
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	call	qemu_get_byte
	movb	%al, 3(%rbp)
.LBE33:
.LBE32:
	.loc 1 362 0
	xorl	%eax, %eax
.L78:
	.loc 1 363 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE204:
	.size	kbd_load, .-kbd_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"pckbd"
	.text
	.p2align 4,,15
.globl i8042_init
	.type	i8042_init, @function
i8042_init:
.LFB205:
	.loc 1 366 0
	pushq	%rbx
.LCFI13:
	.loc 1 369 0
	movq	%rdi, kbd_state+24(%rip)
	.loc 1 372 0
	movl	$kbd_state, %edi
	.loc 1 366 0
	movl	%edx, %ebx
	.loc 1 370 0
	movq	%rsi, kbd_state+32(%rip)
	.loc 1 372 0
	call	kbd_reset
	.loc 1 373 0
	movl	$kbd_state, %r9d
	movl	$kbd_load, %r8d
	movl	$kbd_save, %ecx
	movl	$3, %edx
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 1 374 0
	movl	%ebx, %edi
	movl	$kbd_state, %r8d
	movl	$kbd_read_data, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_read
	.loc 1 375 0
	movl	%ebx, %edi
	movl	$kbd_state, %r8d
	.loc 1 376 0
	addl	$4, %ebx
	.loc 1 375 0
	movl	$kbd_write_data, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 376 0
	movl	%ebx, %edi
	movl	$kbd_state, %r8d
	movl	$kbd_read_status, %ecx
	movl	$1, %edx
	movl	$1, %esi
	call	register_ioport_read
	.loc 1 377 0
	movl	$kbd_state, %r8d
	movl	$kbd_write_command, %ecx
	movl	$1, %edx
	movl	%ebx, %edi
	movl	$1, %esi
	call	register_ioport_write
	.loc 1 379 0
	movl	$kbd_state, %esi
	movl	$kbd_update_kbd_irq, %edi
	call	ps2_kbd_init
	.loc 1 380 0
	movl	$kbd_state, %esi
	movl	$kbd_update_aux_irq, %edi
	.loc 1 379 0
	movq	%rax, kbd_state+8(%rip)
	.loc 1 380 0
	call	ps2_mouse_init
	movq	%rax, %rdi
	movq	%rax, kbd_state+16(%rip)
	.loc 1 382 0
	call	vmmouse_init
	.loc 1 384 0
	popq	%rbx
	movl	$kbd_state, %esi
	movl	$kbd_reset, %edi
	jmp	qemu_register_reset
.LFE205:
	.size	i8042_init, .-i8042_init
	.p2align 4,,15
	.type	kbd_mm_readb, @function
kbd_mm_readb:
.LFB206:
	.loc 1 389 0
	subq	$8, %rsp
.LCFI14:
	.loc 1 392 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	shrq	%cl, %rsi
	testq	%rsi, %rsi
	je	.L87
	decq	%rsi
	jne	.L91
	.loc 1 396 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	kbd_read_status
.L90:
	andl	$255, %eax
	.loc 1 400 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L87:
	.loc 1 394 0
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	kbd_read_data
	jmp	.L90
.L91:
	.loc 1 398 0
	movl	$255, %eax
	.loc 1 400 0
	addq	$8, %rsp
	ret
.LFE206:
	.size	kbd_mm_readb, .-kbd_mm_readb
	.p2align 4,,15
	.type	kbd_mm_writeb, @function
kbd_mm_writeb:
.LFB207:
	.loc 1 403 0
	.loc 1 406 0
	subq	40(%rdi), %rsi
	movl	48(%rdi), %ecx
	shrq	%cl, %rsi
	testq	%rsi, %rsi
	je	.L94
	decq	%rsi
	je	.L95
	rep ; ret
	.p2align 4,,7
.L94:
	.loc 1 408 0
	andl	$255, %edx
	xorl	%esi, %esi
	jmp	kbd_write_data
	.p2align 4,,7
.L95:
	.loc 1 411 0
	andl	$255, %edx
	xorl	%esi, %esi
	jmp	kbd_write_command
.LFE207:
	.size	kbd_mm_writeb, .-kbd_mm_writeb
	.p2align 4,,15
.globl i8042_mm_init
	.type	i8042_mm_init, @function
i8042_mm_init:
.LFB208:
	.loc 1 430 0
	pushq	%r12
.LCFI15:
	movq	%rdx, %r12
	pushq	%rbx
.LCFI16:
	movl	%ecx, %ebx
	subq	$8, %rsp
.LCFI17:
	.loc 1 434 0
	movq	%rdi, kbd_state+24(%rip)
	.loc 1 439 0
	movl	$kbd_state, %edi
	.loc 1 435 0
	movq	%rsi, kbd_state+32(%rip)
	.loc 1 436 0
	movq	%rdx, kbd_state+40(%rip)
	.loc 1 437 0
	movl	%ecx, kbd_state+48(%rip)
	.loc 1 439 0
	call	kbd_reset
	.loc 1 440 0
	movl	$kbd_state, %r9d
	movl	$kbd_load, %r8d
	movl	$kbd_save, %ecx
	movl	$3, %edx
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 1 441 0
	movl	$kbd_state, %ecx
	movl	$kbd_mm_write, %edx
	movl	$kbd_mm_read, %esi
	xorl	%edi, %edi
	call	cpu_register_io_memory
	.loc 1 442 0
	movl	%ebx, %ecx
	movl	$8, %esi
	movslq	%eax,%rdx
	sall	%cl, %esi
	movq	%r12, %rdi
	movslq	%esi,%rsi
	call	cpu_register_physical_memory
	.loc 1 444 0
	movl	$kbd_state, %esi
	movl	$kbd_update_kbd_irq, %edi
	call	ps2_kbd_init
	.loc 1 445 0
	movl	$kbd_state, %esi
	movl	$kbd_update_aux_irq, %edi
	.loc 1 444 0
	movq	%rax, kbd_state+8(%rip)
	.loc 1 445 0
	call	ps2_mouse_init
	movq	%rax, %rdi
	movq	%rax, kbd_state+16(%rip)
	.loc 1 447 0
	call	vmmouse_init
	.loc 1 449 0
	addq	$8, %rsp
	movl	$kbd_state, %esi
	movl	$kbd_reset, %edi
	popq	%rbx
	popq	%r12
	jmp	qemu_register_reset
.LFE208:
	.size	i8042_mm_init, .-i8042_mm_init
	.comm	nb_drives,4,4
	.comm	drives_table,792,32
	.comm	kbd_state,56,32
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
	.long	.LCFI2-.LFB194
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
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
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI3-.LFB199
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI6-.LFB201
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI8-.LFB203
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI10-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI13-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI14-.LFB206
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI15-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE28:
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
	.long	.LCFI2-.LFB194
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
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
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI3-.LFB199
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI6-.LFB201
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.byte	0x4
	.long	.LCFI8-.LFB203
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI10-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
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
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI13-.LFB205
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI14-.LFB206
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI15-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE29:
	.file 3 "/usr/include/stdint.h"
	.file 4 "../qemu-common.h"
	.file 5 "../cpu-defs.h"
	.file 6 "../argos-tag.h"
	.file 7 "../argos.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 12 "../cpu-all.h"
	.file 13 "../sysemu.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xc42
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF125
	.byte	0x1
	.long	.LASF126
	.long	.LASF127
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
	.byte	0xa
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
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
	.byte	0x8
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF13
	.byte	0x9
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x9
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x9
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x9
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x9
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x9
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x9
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x9
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x9
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x9
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x9
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x9
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x9
	.value	0x122
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x9
	.value	0x124
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x9
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x9
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x9
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x9
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x9
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x9
	.value	0x132
	.long	0x2c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x9
	.value	0x136
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x9
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x9
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x9
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x9
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x9
	.value	0x150
	.long	0x2d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x9
	.byte	0xb4
	.uleb128 0x7
	.long	0x2b4
	.long	.LASF44
	.byte	0x18
	.byte	0x9
	.byte	0xba
	.uleb128 0xa
	.long	.LASF45
	.byte	0x9
	.byte	0xbb
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x9
	.byte	0xbc
	.long	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x9
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
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x49
	.long	0x2fc
	.uleb128 0x3
	.long	.LASF52
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF54
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x2f
	.long	0x2f1
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x34
	.long	0x2f1
	.uleb128 0x7
	.long	0x366
	.long	.LASF57
	.byte	0x8
	.byte	0x6
	.byte	0x37
	.uleb128 0xa
	.long	.LASF58
	.byte	0x6
	.byte	0x38
	.long	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x6
	.byte	0x39
	.long	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x3d
	.long	0x33d
	.uleb128 0xd
	.long	.LASF61
	.byte	0xc
	.value	0x388
	.long	0x37d
	.uleb128 0xe
	.long	0x398
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x307
	.uleb128 0xf
	.long	0x2f1
	.uleb128 0xf
	.long	0x398
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x39e
	.uleb128 0x10
	.long	0x366
	.uleb128 0xd
	.long	.LASF62
	.byte	0xc
	.value	0x389
	.long	0x3af
	.uleb128 0x11
	.long	0x3c9
	.byte	0x1
	.long	0x2f1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x307
	.uleb128 0xf
	.long	0x3c9
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x6
	.byte	0x8
	.long	0x3d5
	.uleb128 0x10
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF63
	.byte	0x4
	.byte	0x6e
	.long	0x3e5
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.byte	0x73
	.long	0x3f6
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.uleb128 0x2
	.long	.LASF65
	.byte	0x4
	.byte	0x7b
	.long	0x407
	.uleb128 0x6
	.byte	0x8
	.long	0x40d
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x3eb
	.uleb128 0x13
	.long	0x446
	.byte	0x4
	.byte	0xd
	.byte	0x77
	.uleb128 0x14
	.long	.LASF67
	.sleb128 0
	.uleb128 0x14
	.long	.LASF68
	.sleb128 1
	.uleb128 0x14
	.long	.LASF69
	.sleb128 2
	.uleb128 0x14
	.long	.LASF70
	.sleb128 3
	.uleb128 0x14
	.long	.LASF71
	.sleb128 4
	.uleb128 0x14
	.long	.LASF72
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xd
	.byte	0x79
	.long	0x419
	.uleb128 0x7
	.long	0x496
	.long	.LASF74
	.byte	0x18
	.byte	0xd
	.byte	0x7b
	.uleb128 0xa
	.long	.LASF75
	.byte	0xd
	.byte	0x7c
	.long	0x496
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x7d
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"bus"
	.byte	0xd
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3da
	.uleb128 0x2
	.long	.LASF74
	.byte	0xd
	.byte	0x80
	.long	0x451
	.uleb128 0x7
	.long	0x540
	.long	.LASF78
	.byte	0x38
	.byte	0x1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.byte	0x79
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.byte	0x7a
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.byte	0x7b
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.byte	0x7d
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x15
	.string	"kbd"
	.byte	0x1
	.byte	0x7e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF83
	.byte	0x1
	.byte	0x7f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF84
	.byte	0x1
	.byte	0x81
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF85
	.byte	0x1
	.byte	0x82
	.long	0x3fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1
	.byte	0x83
	.long	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF87
	.byte	0x1
	.byte	0x84
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x1
	.byte	0x85
	.long	0x4a7
	.uleb128 0x16
	.long	0x58f
	.long	.LASF90
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x8c
	.long	0x58f
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0x8e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.byte	0x8e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x540
	.uleb128 0x16
	.long	0x5d7
	.long	.LASF91
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xa4
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0xa4
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0xa6
	.long	0x58f
	.byte	0x0
	.uleb128 0x16
	.long	0x619
	.long	.LASF94
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xaf
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0xaf
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0xb1
	.long	0x58f
	.byte	0x0
	.uleb128 0x1b
	.long	0x677
	.long	.LASF95
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x2f1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xba
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.byte	0xba
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0xba
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0xbc
	.long	0x58f
	.uleb128 0x1c
	.string	"val"
	.byte	0x1
	.byte	0xbd
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.long	0x6b9
	.long	.LASF97
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xc5
	.long	0x58f
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0xc5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"aux"
	.byte	0x1
	.byte	0xc5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x16
	.long	0x708
	.long	.LASF98
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xcd
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.byte	0xcd
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0xcd
	.long	0x2f1
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0xcf
	.long	0x58f
	.byte	0x0
	.uleb128 0x1d
	.long	0x760
	.long	.LASF99
	.byte	0x1
	.value	0x11c
	.byte	0x1
	.long	0x2f1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x11b
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x11b
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.value	0x11b
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x11d
	.long	0x58f
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0x7b4
	.long	.LASF100
	.byte	0x1
	.value	0x126
	.byte	0x1
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x125
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x125
	.long	0x2f1
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.value	0x125
	.long	0x2f1
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x127
	.long	0x58f
	.byte	0x0
	.uleb128 0x21
	.long	0x7ec
	.long	.LASF101
	.byte	0x1
	.value	0x14f
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x14e
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x150
	.long	0x58f
	.byte	0x0
	.uleb128 0x21
	.long	0x8bc
	.long	.LASF102
	.byte	0x1
	.value	0x157
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x156
	.long	0x413
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x156
	.long	0x9b
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x158
	.long	0x58f
	.uleb128 0x23
	.long	0x853
	.long	0x8bc
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x24
	.long	0x8c9
	.uleb128 0x24
	.long	0x8d2
	.byte	0x0
	.uleb128 0x23
	.long	0x877
	.long	0x8bc
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x24
	.long	0x8c9
	.uleb128 0x24
	.long	0x8d2
	.byte	0x0
	.uleb128 0x23
	.long	0x89b
	.long	0x8bc
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x24
	.long	0x8c9
	.uleb128 0x24
	.long	0x8d2
	.byte	0x0
	.uleb128 0x25
	.long	0x8bc
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x24
	.long	0x8c9
	.uleb128 0x24
	.long	0x8d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x8dd
	.long	.LASF103
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x27
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x413
	.uleb128 0x27
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0x3cf
	.byte	0x0
	.uleb128 0x1d
	.long	0x9bf
	.long	.LASF104
	.byte	0x1
	.value	0x161
	.byte	0x1
	.long	0x3f
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"f"
	.byte	0x1
	.value	0x160
	.long	0x413
	.byte	0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x160
	.long	0x9b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x160
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x162
	.long	0x58f
	.uleb128 0x23
	.long	0x956
	.long	0x9bf
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x24
	.long	0x9cc
	.uleb128 0x24
	.long	0x9d5
	.byte	0x0
	.uleb128 0x23
	.long	0x97a
	.long	0x9bf
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x24
	.long	0x9cc
	.uleb128 0x24
	.long	0x9d5
	.byte	0x0
	.uleb128 0x23
	.long	0x99e
	.long	0x9bf
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x24
	.long	0x9cc
	.uleb128 0x24
	.long	0x9d5
	.byte	0x0
	.uleb128 0x25
	.long	0x9bf
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x24
	.long	0x9cc
	.uleb128 0x24
	.long	0x9d5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x9e0
	.long	.LASF106
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x27
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x413
	.uleb128 0x27
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0x9e0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x28
	.long	0xa3b
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.value	0x16e
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.value	0x16d
	.long	0x3fc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.value	0x16d
	.long	0x3fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x16d
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x16f
	.long	0x58f
	.byte	0x0
	.uleb128 0x1d
	.long	0xa93
	.long	.LASF110
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	0x2f1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x184
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x184
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"tag"
	.byte	0x1
	.value	0x184
	.long	0x3c9
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x186
	.long	0x58f
	.byte	0x0
	.uleb128 0x21
	.long	0xaf5
	.long	.LASF111
	.byte	0x1
	.value	0x193
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.value	0x192
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x192
	.long	0x307
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.value	0x192
	.long	0x2f1
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"tag"
	.byte	0x1
	.value	0x192
	.long	0x398
	.byte	0x1
	.byte	0x52
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x194
	.long	0x58f
	.byte	0x0
	.uleb128 0x28
	.long	0xb66
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.value	0x1ae
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.value	0x1ac
	.long	0x3fc
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.value	0x1ac
	.long	0x3fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x1
	.value	0x1ad
	.long	0x307
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x1ad
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x1af
	.long	0x58f
	.uleb128 0x29
	.long	.LASF115
	.byte	0x1
	.value	0x1b0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF116
	.byte	0x8
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF117
	.byte	0x8
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.long	.LASF118
	.byte	0x8
	.byte	0x93
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF119
	.byte	0xc
	.value	0x376
	.long	0x9e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF120
	.byte	0xd
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xb
	.long	0xbc1
	.long	0x49c
	.uleb128 0xc
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF121
	.byte	0xd
	.byte	0x87
	.long	0xbb1
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x1
	.byte	0x87
	.long	0x540
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	kbd_state
	.uleb128 0xb
	.long	0xbfd
	.long	0xbfd
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a3
	.uleb128 0x29
	.long	.LASF123
	.byte	0x1
	.value	0x1a0
	.long	0xbed
	.byte	0x9
	.byte	0x3
	.quad	kbd_mm_read
	.uleb128 0xb
	.long	0xc29
	.long	0xc29
	.uleb128 0xc
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x29
	.long	.LASF124
	.byte	0x1
	.value	0x1a6
	.long	0xc19
	.byte	0x9
	.byte	0x3
	.quad	kbd_mm_write
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc46
	.long	0x9e6
	.string	"i8042_init"
	.long	0xaf5
	.string	"i8042_mm_init"
	.long	0xb9b
	.string	"nb_drives"
	.long	0xbc1
	.string	"drives_table"
	.long	0xbd7
	.string	"kbd_state"
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
.LASF24:
	.string	"_IO_save_end"
.LASF84:
	.string	"irq_kbd"
.LASF17:
	.string	"_IO_write_base"
.LASF33:
	.string	"_lock"
.LASF22:
	.string	"_IO_save_base"
.LASF30:
	.string	"_cur_column"
.LASF40:
	.string	"_mode"
.LASF114:
	.string	"i8042_mm_init"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF59:
	.string	"netidx"
.LASF92:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF63:
	.string	"BlockDriverState"
.LASF105:
	.string	"version_id"
.LASF66:
	.string	"IRQState"
.LASF7:
	.string	"signed char"
.LASF81:
	.string	"mode"
.LASF43:
	.string	"_IO_FILE"
.LASF97:
	.string	"kbd_queue"
.LASF79:
	.string	"write_cmd"
.LASF102:
	.string	"kbd_save"
.LASF6:
	.string	"unsigned char"
.LASF60:
	.string	"argos_rtag_t"
.LASF62:
	.string	"CPUReadMemoryFunc"
.LASF57:
	.string	"argos_rtag"
.LASF121:
	.string	"drives_table"
.LASF112:
	.string	"value"
.LASF101:
	.string	"kbd_reset"
.LASF42:
	.string	"_IO_lock_t"
.LASF64:
	.string	"QEMUFile"
.LASF55:
	.string	"argos_paddr_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"double"
.LASF124:
	.string	"kbd_mm_write"
.LASF85:
	.string	"irq_mouse"
.LASF47:
	.string	"_pos"
.LASF116:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF94:
	.string	"kbd_update_aux_irq"
.LASF88:
	.string	"irq_kbd_level"
.LASF83:
	.string	"mouse"
.LASF95:
	.string	"kbd_read_status"
.LASF74:
	.string	"DriveInfo"
.LASF41:
	.string	"_unused2"
.LASF108:
	.string	"mouse_irq"
.LASF73:
	.string	"BlockInterfaceType"
.LASF80:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF75:
	.string	"bdrv"
.LASF103:
	.string	"qemu_put_8s"
.LASF29:
	.string	"_old_offset"
.LASF89:
	.string	"irq_mouse_level"
.LASF109:
	.string	"io_base"
.LASF99:
	.string	"kbd_read_data"
.LASF113:
	.string	"i8042_init"
.LASF3:
	.string	"long long int"
.LASF71:
	.string	"IF_MTD"
.LASF19:
	.string	"_IO_write_end"
.LASF127:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF96:
	.string	"addr"
.LASF20:
	.string	"_IO_buf_base"
.LASF120:
	.string	"nb_drives"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF125:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF106:
	.string	"qemu_get_8s"
.LASF56:
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
.LASF61:
	.string	"CPUWriteMemoryFunc"
.LASF46:
	.string	"_sbuf"
.LASF111:
	.string	"kbd_mm_writeb"
.LASF13:
	.string	"_flags"
.LASF76:
	.string	"type"
.LASF91:
	.string	"kbd_update_kbd_irq"
.LASF51:
	.string	"target_phys_addr_t"
.LASF90:
	.string	"kbd_update_irq"
.LASF54:
	.string	"long double"
.LASF34:
	.string	"_offset"
.LASF126:
	.string	"/home/remco/Projects/Argos/src/hw/pckbd.c"
.LASF78:
	.string	"KBDState"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"uint8_t"
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
.LASF104:
	.string	"kbd_load"
.LASF69:
	.string	"IF_FLOPPY"
.LASF11:
	.string	"__off64_t"
.LASF72:
	.string	"IF_SD"
.LASF21:
	.string	"_IO_buf_end"
.LASF98:
	.string	"kbd_write_command"
.LASF118:
	.string	"stderr"
.LASF100:
	.string	"kbd_write_data"
.LASF8:
	.string	"short int"
.LASF50:
	.string	"uint64_t"
.LASF119:
	.string	"phys_ram_dirty"
.LASF31:
	.string	"_vtable_offset"
.LASF82:
	.string	"pending"
.LASF67:
	.string	"IF_IDE"
.LASF107:
	.string	"kbd_irq"
.LASF77:
	.string	"unit"
.LASF15:
	.string	"_IO_read_end"
.LASF49:
	.string	"uint32_t"
.LASF70:
	.string	"IF_PFLASH"
.LASF87:
	.string	"it_shift"
.LASF27:
	.string	"_fileno"
.LASF93:
	.string	"level"
.LASF110:
	.string	"kbd_mm_readb"
.LASF52:
	.string	"float"
.LASF117:
	.string	"stdout"
.LASF86:
	.string	"base"
.LASF18:
	.string	"_IO_write_ptr"
.LASF115:
	.string	"s_io_memory"
.LASF58:
	.string	"origin"
.LASF123:
	.string	"kbd_mm_read"
.LASF68:
	.string	"IF_SCSI"
.LASF122:
	.string	"kbd_state"
.LASF65:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
