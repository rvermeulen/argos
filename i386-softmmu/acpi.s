	.file	"acpi.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	get_pmsts, @function
get_pmsts:
.LFB195:
	.file 1 "/home/remco/Projects/Argos/src/hw/acpi.c"
	.loc 1 82 0
	movq	%rbx, -16(%rsp)
.LCFI0:
	movq	%rbp, -8(%rsp)
.LCFI1:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI2:
	.loc 1 85 0
	movzwl	552(%rdi), %ebp
	.loc 1 86 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movl	ticks_per_sec(%rip), %edx
	movq	%rax, %rdi
	movl	$3579545, %esi
	call	muldiv64
	.loc 1 87 0
	cmpq	%rax, 568(%rbx)
	jg	.L2
	.loc 1 88 0
	orw	$1, 552(%rbx)
.L2:
	.loc 1 90 0
	movl	%ebp, %eax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE195:
	.size	get_pmsts, .-get_pmsts
	.p2align 4,,15
	.type	pm_update_sci, @function
pm_update_sci:
.LFB196:
	.loc 1 93 0
	pushq	%rbp
.LCFI3:
	pushq	%rbx
.LCFI4:
	movq	%rdi, %rbx
	subq	$8, %rsp
.LCFI5:
	.loc 1 97 0
	call	get_pmsts
	movl	%eax, %ebp
	.loc 1 98 0
	movzwl	554(%rbx), %eax
	xorl	%esi, %esi
	andl	%ebp, %eax
	testl	$1313, %eax
	.loc 1 100 0
	movq	528(%rbx), %rax
	.loc 1 98 0
	setne	%sil
	.loc 1 100 0
	movq	(%rax), %rdi
	call	qemu_set_irq
	.loc 1 102 0
	testb	$1, 554(%rbx)
	je	.L5
	andl	$1, %ebp
	je	.L7
.L5:
	.loc 1 106 0
	movq	560(%rbx), %rdi
	.loc 1 108 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.loc 1 106 0
	jmp	qemu_del_timer
	.p2align 4,,7
.L7:
	.loc 1 103 0
	movq	568(%rbx), %rdi
	movl	ticks_per_sec(%rip), %esi
	movl	$3579545, %edx
	call	muldiv64
	.loc 1 104 0
	movq	560(%rbx), %rdi
	.loc 1 108 0
	addq	$8, %rsp
	.loc 1 103 0
	movq	%rax, %rsi
	.loc 1 108 0
	popq	%rbx
	popq	%rbp
	.loc 1 104 0
	jmp	qemu_mod_timer
.LFE196:
	.size	pm_update_sci, .-pm_update_sci
	.p2align 4,,15
	.type	pm_tmr_timer, @function
pm_tmr_timer:
.LFB197:
	.loc 1 111 0
	.loc 1 113 0
	jmp	pm_update_sci
.LFE197:
	.size	pm_tmr_timer, .-pm_tmr_timer
	.p2align 4,,15
	.type	pm_ioport_writew, @function
pm_ioport_writew:
.LFB198:
	.loc 1 117 0
	.loc 1 119 0
	andl	$63, %esi
	.loc 1 117 0
	movq	%rbx, -16(%rsp)
.LCFI6:
	movq	%rbp, -8(%rsp)
.LCFI7:
	subq	$24, %rsp
.LCFI8:
	.loc 1 120 0
	cmpl	$2, %esi
	.loc 1 117 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 120 0
	je	.L13
	jbe	.L22
	cmpl	$4, %esi
	je	.L14
.L9:
	.loc 1 162 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.p2align 4,,1
	ret
	.p2align 4,,7
.L22:
	.loc 1 120 0
	testl	%esi, %esi
	jne	.L9
.LBB2:
	.loc 1 125 0
	call	get_pmsts
	.loc 1 126 0
	andl	%ebp, %eax
	testb	$1, %al
	.p2align 4,,2
	jne	.L23
.L12:
	.loc 1 131 0
	movl	%ebp, %eax
.LBE2:
	.loc 1 137 0
	movq	%rbx, %rdi
.LBB3:
	.loc 1 131 0
	notl	%eax
	andw	%ax, 552(%rbx)
.LBE3:
	.loc 1 162 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 137 0
	jmp	pm_update_sci
	.p2align 4,,7
.L13:
	.loc 1 136 0
	movw	%dx, 554(%rbx)
	.loc 1 137 0
	movq	%rbx, %rdi
	.loc 1 162 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.loc 1 137 0
	jmp	pm_update_sci
	.p2align 4,,7
.L14:
.LBB4:
	.loc 1 142 0
	movl	%edx, %eax
	andb	$223, %ah
	.loc 1 143 0
	testb	$32, %dh
	.loc 1 142 0
	movw	%ax, 556(%rdi)
	.loc 1 143 0
	je	.L9
	.loc 1 146 0
	andl	$3072, %ebp
	jne	.L9
.LBE4:
	.loc 1 162 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
.LBB5:
	.loc 1 148 0
	jmp	qemu_system_shutdown_request
.L23:
.LBE5:
.LBB6:
	.loc 1 128 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movl	ticks_per_sec(%rip), %edx
	movq	%rax, %rdi
	movl	$3579545, %esi
	call	muldiv64
	.loc 1 129 0
	addq	$8388608, %rax
	andq	$-8388608, %rax
	movq	%rax, 568(%rbx)
	jmp	.L12
.LBE6:
.LFE198:
	.size	pm_ioport_writew, .-pm_ioport_writew
	.p2align 4,,15
	.type	pm_ioport_readw, @function
pm_ioport_readw:
.LFB199:
	.loc 1 165 0
	.loc 1 169 0
	andl	$63, %esi
	.loc 1 165 0
	subq	$8, %rsp
.LCFI9:
	.loc 1 170 0
	cmpl	$2, %esi
	je	.L27
	ja	.L30
	testl	%esi, %esi
	je	.L26
.L29:
	.loc 1 181 0
	xorl	%eax, %eax
	.loc 1 188 0
	addq	$8, %rsp
	.p2align 4,,5
	ret
	.p2align 4,,7
.L30:
	.loc 1 170 0
	cmpl	$4, %esi
	.p2align 4,,4
	jne	.L29
	.loc 1 178 0
	movzwl	556(%rdi), %eax
	.loc 1 188 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L27:
	.loc 1 175 0
	movzwl	554(%rdi), %eax
	.loc 1 188 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L26:
	.loc 1 172 0
	call	get_pmsts
	.loc 1 188 0
	addq	$8, %rsp
	ret
.LFE199:
	.size	pm_ioport_readw, .-pm_ioport_readw
	.p2align 4,,15
	.type	pm_ioport_writel, @function
pm_ioport_writel:
.LFB200:
	.loc 1 191 0
	.loc 1 193 0
	rep ; ret
.LFE200:
	.size	pm_ioport_writel, .-pm_ioport_writel
	.p2align 4,,15
	.type	pm_ioport_readl, @function
pm_ioport_readl:
.LFB201:
	.loc 1 200 0
	.loc 1 204 0
	andl	$63, %esi
	.loc 1 200 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 210 0
	xorl	%eax, %eax
	.loc 1 205 0
	cmpl	$8, %esi
	je	.L37
	.loc 1 217 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L37:
.LBB7:
.LBB8:
	.loc 1 77 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movl	ticks_per_sec(%rip), %edx
	movq	%rax, %rdi
	movl	$3579545, %esi
	call	muldiv64
.LBE8:
.LBE7:
	.loc 1 217 0
	addq	$8, %rsp
	.loc 1 75 0
	andl	$16777215, %eax
	.loc 1 217 0
	ret
.LFE201:
	.size	pm_ioport_readl, .-pm_ioport_readl
	.p2align 4,,15
	.type	pm_smi_writeb, @function
pm_smi_writeb:
.LFB202:
	.loc 1 220 0
	.loc 1 226 0
	andl	$1, %esi
	jne	.L39
	.loc 1 230 0
	cmpl	$241, %edx
	.loc 1 227 0
	movb	%dl, 558(%rdi)
	.loc 1 230 0
	je	.L45
	.loc 1 232 0
	cmpl	$240, %edx
	je	.L46
.L41:
	.loc 1 236 0
	testb	$2, 91(%rdi)
	je	.L38
	.loc 1 237 0
	movq	first_cpu(%rip), %rdi
	movl	$64, %esi
	jmp	cpu_interrupt
	.p2align 4,,7
.L39:
	.loc 1 240 0
	movb	%dl, 559(%rdi)
.L38:
	rep ; ret
	.p2align 4,,7
.L45:
	.loc 1 231 0
	orw	$1, 556(%rdi)
	jmp	.L41
	.p2align 4,,7
.L46:
	.loc 1 233 0
	andw	$-2, 556(%rdi)
	jmp	.L41
.LFE202:
	.size	pm_smi_writeb, .-pm_smi_writeb
	.p2align 4,,15
	.type	pm_smi_readb, @function
pm_smi_readb:
.LFB203:
	.loc 1 245 0
	.loc 1 250 0
	andl	$1, %esi
	jne	.L48
	.loc 1 251 0
	movzbl	558(%rdi), %eax
	ret
	.p2align 4,,7
.L48:
	.loc 1 253 0
	movzbl	559(%rdi), %eax
	.loc 1 259 0
	ret
.LFE203:
	.size	pm_smi_readb, .-pm_smi_readb
	.p2align 4,,15
	.type	acpi_dbg_writel, @function
acpi_dbg_writel:
.LFB204:
	.loc 1 262 0
	.loc 1 262 0
	rep ; ret
.LFE204:
	.size	acpi_dbg_writel, .-acpi_dbg_writel
	.p2align 4,,15
	.type	smb_ioport_writeb, @function
smb_ioport_writeb:
.LFB206:
	.loc 1 324 0
	.loc 1 326 0
	andl	$63, %esi
	.loc 1 324 0
	pushq	%rbx
.LCFI11:
	.loc 1 324 0
	movl	%edx, %ecx
	.loc 1 330 0
	cmpl	$7, %esi
	.loc 1 324 0
	movq	%rdi, %rbx
	.loc 1 330 0
	ja	.L51
	mov	%esi, %eax
	jmp	*.L81(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L81:
	.quad	.L53
	.quad	.L51
	.quad	.L54
	.quad	.L74
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.text
.L84:
.LBB9:
.LBB10:
	.loc 1 309 0
	leaq	590(%rbx), %rcx
	movzbl	%r8b, %edx
	movzbl	%sil, %esi
	call	smbus_read_block
.L83:
	movb	%al, 588(%rbx)
	.p2align 4,,7
.L51:
.LBE10:
.LBE9:
	.loc 1 360 0
	popq	%rbx
	ret
.L78:
	.loc 1 353 0
	movzbl	622(%rdi), %eax
	movzbl	%al, %edx 
	incl	%eax
	movb	%cl, 590(%rdx,%rdi)
	.loc 1 355 0
	xorl	%edx, %edx
	cmpb	$32, %al
	cmovb	%eax, %edx
	movb	%dl, 622(%rdi)
	.loc 1 360 0
	popq	%rbx
	ret
.L53:
	.loc 1 332 0
	movb	$0, 584(%rdi)
	.loc 1 333 0
	movb	$0, 622(%rdi)
	.loc 1 360 0
	popq	%rbx
	ret
.L54:
	.loc 1 337 0
	testb	$64, %dl
	.loc 1 336 0
	movb	%dl, 585(%rbx)
	.loc 1 337 0
	je	.L51
.LBB11:
.LBB12:
	.loc 1 271 0
	movzbl	587(%rdi), %eax
	.loc 1 270 0
	shrb	$2, %dl
	.loc 1 272 0
	movzbl	586(%rdi), %r8d
	.loc 1 274 0
	movq	576(%rdi), %rdi
	.loc 1 271 0
	movl	%eax, %ecx
	.loc 1 273 0
	shrb	%al
	movl	%eax, %esi
	.loc 1 279 0
	movl	%edx, %eax
	.loc 1 271 0
	andl	$1, %ecx
	.loc 1 279 0
	andl	$7, %eax
	cmpl	$5, %eax
	ja	.L71
	mov	%eax, %eax
	jmp	*.L72(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L72:
	.quad	.L57
	.quad	.L58
	.quad	.L61
	.quad	.L64
	.quad	.L71
	.quad	.L67
	.text
.L74:
.LBE12:
.LBE11:
	.loc 1 341 0
	movb	%dl, 586(%rbx)
	.loc 1 360 0
	popq	%rbx
	ret
.L75:
	.loc 1 344 0
	movb	%dl, 587(%rbx)
	.loc 1 360 0
	popq	%rbx
	ret
.L76:
	.loc 1 347 0
	movb	%dl, 588(%rbx)
	.loc 1 360 0
	popq	%rbx
	ret
.L77:
	.loc 1 350 0
	movb	%dl, 589(%rbx)
	.loc 1 360 0
	popq	%rbx
	ret
.L71:
.LBB13:
.LBB14:
	.loc 1 320 0
	orb	$4, 584(%rbx)
.LBE14:
.LBE13:
	.loc 1 360 0
	popq	%rbx
	ret
.L67:
.LBB15:
.LBB16:
	.loc 1 308 0
	testb	%cl, %cl
	jne	.L84
	.loc 1 311 0
	leaq	590(%rbx), %rcx
	movzbl	%r8b, %edx
	movzbl	588(%rbx), %r8d
.LBE16:
.LBE15:
	.loc 1 360 0
	popq	%rbx
.LBB17:
.LBB18:
	.loc 1 311 0
	movzbl	%sil, %esi
	jmp	smbus_write_block
.L64:
	.loc 1 298 0
	testb	%cl, %cl
	jne	.L85
	.loc 1 304 0
	movzbl	589(%rbx), %eax
	movzbl	588(%rbx), %ecx
	movzbl	%r8b, %edx
.LBE18:
.LBE17:
	.loc 1 360 0
	popq	%rbx
.LBB19:
.LBB20:
	.loc 1 304 0
	movzbl	%sil, %esi
	sall	$8, %eax
	orl	%eax, %ecx
	jmp	smbus_write_word
.L58:
	.loc 1 284 0
	testb	%cl, %cl
	jne	.L86
.LBE20:
.LBE19:
	.loc 1 360 0
	popq	%rbx
.LBB21:
.LBB22:
	.loc 1 287 0
	movzbl	%r8b, %edx
	movzbl	%sil, %esi
	jmp	smbus_send_byte
.L61:
	.loc 1 291 0
	testb	%cl, %cl
	jne	.L87
	.loc 1 294 0
	movzbl	588(%rbx), %ecx
	movzbl	%r8b, %edx
	movzbl	%sil, %esi
.LBE22:
.LBE21:
	.loc 1 360 0
	popq	%rbx
.LBB23:
.LBB24:
	.loc 1 294 0
	jmp	smbus_write_byte
.L57:
.LBE24:
.LBE23:
	.loc 1 360 0
	popq	%rbx
.LBB25:
.LBB26:
	.loc 1 281 0
	movzbl	%cl, %edx
	movzbl	%sil, %esi
	jmp	smbus_quick_command
.L86:
	.loc 1 285 0
	movzbl	%sil, %esi
	call	smbus_receive_byte
	jmp	.L83
.L85:
.LBB27:
	.loc 1 300 0
	movzbl	%r8b, %edx
	movzbl	%sil, %esi
	call	smbus_read_word
	.loc 1 301 0
	movb	%al, 588(%rbx)
	.loc 1 302 0
	shrw	$8, %ax
	movb	%al, 589(%rbx)
.LBE27:
.LBE26:
.LBE25:
	.loc 1 360 0
	popq	%rbx
	ret
.L87:
.LBB28:
.LBB29:
	.loc 1 292 0
	movzbl	%r8b, %edx
	movzbl	%sil, %esi
	call	smbus_read_byte
	jmp	.L83
.LBE29:
.LBE28:
.LFE206:
	.size	smb_ioport_writeb, .-smb_ioport_writeb
	.p2align 4,,15
	.type	smb_ioport_readb, @function
smb_ioport_readb:
.LFB207:
	.loc 1 363 0
	.loc 1 367 0
	andl	$63, %esi
	.loc 1 368 0
	cmpl	$7, %esi
	ja	.L98
	mov	%esi, %eax
	jmp	*.L99(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L99:
	.quad	.L90
	.quad	.L98
	.quad	.L91
	.quad	.L92
	.quad	.L93
	.quad	.L94
	.quad	.L95
	.quad	.L96
	.text
	.p2align 4,,7
.L98:
	.loc 1 394 0
	xorl	%eax, %eax
	ret
.L96:
	.loc 1 389 0
	movzbl	622(%rdi), %edx
	movzbl	%dl, %eax 
	incl	%edx
	.loc 1 390 0
	cmpb	$31, %dl
	.loc 1 389 0
	movzbl	590(%rax,%rdi), %eax
	.loc 1 390 0
	jbe	.L100
	.loc 1 391 0
	movb	$0, 622(%rdi)
	.loc 1 392 0
	ret
.L90:
	.loc 1 370 0
	movzbl	584(%rdi), %eax
	.loc 1 371 0
	ret
.L91:
	.loc 1 374 0
	movzbl	585(%rdi), %eax
	.loc 1 373 0
	movb	$0, 622(%rdi)
	.loc 1 374 0
	andl	$31, %eax
	.loc 1 375 0
	ret
.L92:
	.loc 1 377 0
	movzbl	586(%rdi), %eax
	.loc 1 378 0
	ret
.L93:
	.loc 1 380 0
	movzbl	587(%rdi), %eax
	.loc 1 381 0
	ret
.L94:
	.loc 1 383 0
	movzbl	588(%rdi), %eax
	.loc 1 384 0
	ret
.L95:
	.loc 1 386 0
	movzbl	589(%rdi), %eax
	.loc 1 387 0
	ret
.L100:
	movb	%dl, 622(%rdi)
	.loc 1 401 0
	ret
.LFE207:
	.size	smb_ioport_readb, .-smb_ioport_readb
	.p2align 4,,15
	.type	pm_io_space_update, @function
pm_io_space_update:
.LFB208:
	.loc 1 404 0
	movq	%rbp, -8(%rsp)
.LCFI12:
	movq	%rbx, -16(%rsp)
.LCFI13:
	subq	$24, %rsp
.LCFI14:
	.loc 1 407 0
	testb	$1, 128(%rdi)
	.loc 1 404 0
	movq	%rdi, %rbp
	.loc 1 407 0
	jne	.L104
	.loc 1 420 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L104:
	.loc 1 409 0
	movl	64(%rdi), %ebx
	.loc 1 415 0
	movq	%rdi, %r8
	movl	$pm_ioport_writew, %ecx
	movl	$2, %edx
	movl	$64, %esi
	.loc 1 409 0
	andl	$65472, %ebx
	.loc 1 415 0
	movl	%ebx, %edi
	call	register_ioport_write
	.loc 1 416 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$pm_ioport_readw, %ecx
	movl	$2, %edx
	movl	$64, %esi
	call	register_ioport_read
	.loc 1 417 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	movl	$pm_ioport_writel, %ecx
	movl	$4, %edx
	movl	$64, %esi
	call	register_ioport_write
	.loc 1 418 0
	movq	%rbp, %r8
	movl	%ebx, %edi
	.loc 1 420 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	.loc 1 418 0
	movl	$pm_ioport_readl, %ecx
	movl	$4, %edx
	movl	$64, %esi
	.loc 1 420 0
	addq	$24, %rsp
	.loc 1 418 0
	jmp	register_ioport_read
.LFE208:
	.size	pm_io_space_update, .-pm_io_space_update
	.p2align 4,,15
	.type	pm_write_config, @function
pm_write_config:
.LFB209:
	.loc 1 424 0
	movq	%rbx, -16(%rsp)
.LCFI15:
	movq	%rbp, -8(%rsp)
.LCFI16:
	movl	%esi, %ebx
	subq	$24, %rsp
.LCFI17:
	.loc 1 424 0
	movq	%rdi, %rbp
	.loc 1 425 0
	call	pci_default_write_config
	.loc 1 426 0
	addl	$-128, %ebx
	je	.L107
	.loc 1 428 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L107:
	.loc 1 427 0
	movq	%rbp, %rdi
	.loc 1 428 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 427 0
	jmp	pm_io_space_update
.LFE209:
	.size	pm_write_config, .-pm_write_config
	.p2align 4,,15
	.type	pm_save, @function
pm_save:
.LFB210:
	.loc 1 431 0
	pushq	%r12
.LCFI18:
	movq	%rdi, %r12
	pushq	%rbx
.LCFI19:
	movq	%rsi, %rbx
	.loc 1 434 0
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	.loc 1 431 0
	subq	$8, %rsp
.LCFI20:
	.loc 1 434 0
	call	pci_device_save
.LBB30:
.LBB31:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 37 0
	movzwl	552(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	movzwl	554(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	movzwl	556(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	.loc 2 42 0
	movzbl	558(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	movzbl	559(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE39:
.LBE38:
	.loc 1 441 0
	movq	560(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_timer
	.loc 1 442 0
	movq	568(%rbx), %rsi
	addq	$8, %rsp
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	jmp	qemu_put_be64
.LFE210:
	.size	pm_save, .-pm_save
	.p2align 4,,15
	.type	pm_load, @function
pm_load:
.LFB211:
	.loc 1 446 0
	pushq	%rbp
.LCFI21:
	.loc 1 451 0
	movl	$-22, %eax
	.loc 1 446 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI22:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI23:
	.loc 1 450 0
	decl	%edx
	jg	.L114
	.loc 1 453 0
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	call	pci_device_load
	.loc 1 454 0
	testl	%eax, %eax
	js	.L114
.LBB40:
.LBB41:
	.loc 2 57 0
	movq	%rbp, %rdi
	call	qemu_get_be16
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	movq	%rbp, %rdi
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	movw	%ax, 552(%rbx)
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	call	qemu_get_be16
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	movq	%rbp, %rdi
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	movw	%ax, 554(%rbx)
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	call	qemu_get_be16
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 2 62 0
	movq	%rbp, %rdi
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 2 57 0
	movw	%ax, 556(%rbx)
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 2 62 0
	call	qemu_get_byte
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	movq	%rbp, %rdi
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	movb	%al, 558(%rbx)
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	call	qemu_get_byte
.LBE65:
.LBE64:
	.loc 1 462 0
	movq	560(%rbx), %rsi
.LBB66:
.LBB67:
	.loc 2 62 0
	movb	%al, 559(%rbx)
.LBE67:
.LBE66:
	.loc 1 462 0
	movq	%rbp, %rdi
	call	qemu_get_timer
	.loc 1 463 0
	movq	%rbp, %rdi
	call	qemu_get_be64
	.loc 1 465 0
	movq	%rbx, %rdi
	.loc 1 463 0
	movq	%rax, 568(%rbx)
	.loc 1 465 0
	call	pm_io_space_update
	.loc 1 467 0
	xorl	%eax, %eax
.L114:
	.loc 1 468 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE211:
	.size	pm_load, .-pm_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"PM"
.LC1:
	.string	"piix4_pm"
	.text
	.p2align 4,,15
.globl piix4_pm_init
	.type	piix4_pm_init, @function
piix4_pm_init:
.LFB212:
	.loc 1 471 0
	pushq	%r12
.LCFI24:
	.loc 1 475 0
	movl	$pm_write_config, %r9d
	.loc 1 471 0
	movl	%edx, %r12d
	.loc 1 475 0
	xorl	%r8d, %r8d
	movl	%esi, %ecx
	movl	$624, %edx
	.loc 1 471 0
	pushq	%rbx
.LCFI25:
	.loc 1 475 0
	movl	$.LC0, %esi
	.loc 1 471 0
	subq	$8, %rsp
.LCFI26:
	.loc 1 475 0
	call	pci_register_device
	.loc 1 494 0
	movl	$pm_smi_writeb, %ecx
	.loc 1 475 0
	movq	%rax, %rbx
	.loc 1 494 0
	movq	%rax, %r8
	movl	$1, %edx
	movl	$2, %esi
	movl	$178, %edi
	.loc 1 479 0
	movb	$-122, (%rax)
	.loc 1 480 0
	movb	$-128, 1(%rax)
	.loc 1 481 0
	movb	$19, 2(%rax)
	.loc 1 482 0
	movb	$113, 3(%rax)
	.loc 1 483 0
	movb	$-128, 6(%rax)
	.loc 1 484 0
	movb	$2, 7(%rax)
	.loc 1 485 0
	movb	$0, 8(%rax)
	.loc 1 486 0
	movb	$0, 9(%rax)
	.loc 1 487 0
	movb	$-128, 10(%rax)
	.loc 1 488 0
	movb	$6, 11(%rax)
	.loc 1 489 0
	movb	$0, 14(%rax)
	.loc 1 490 0
	movb	$1, 61(%rax)
	.loc 1 492 0
	movb	$1, 64(%rax)
	.loc 1 494 0
	call	register_ioport_write
	.loc 1 495 0
	movq	%rbx, %r8
	movl	$pm_smi_readb, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$178, %edi
	call	register_ioport_read
	.loc 1 497 0
	movq	%rbx, %r8
	movl	$acpi_dbg_writel, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$45124, %edi
	call	register_ioport_write
	.loc 1 501 0
	cmpq	$1, parallel_hds(%rip)
	.loc 1 502 0
	movb	$96, 99(%rbx)
	.loc 1 509 0
	movq	%rbx, %r8
	movl	%r12d, %edi
	movl	$smb_ioport_writeb, %ecx
	movl	$64, %esi
	.loc 1 501 0
	sbbl	%eax, %eax
	andl	$-128, %eax
	subl	$112, %eax
	movb	%al, 95(%rbx)
	.loc 1 503 0
	cmpq	$1, serial_hds(%rip)
	sbbl	%eax, %eax
	notl	%eax
	andl	$8, %eax
	movl	%eax, %edx
	orb	$-112, %dl
	cmpq	$0, serial_hds+8(%rip)
	.loc 1 508 0
	movb	$9, 210(%rbx)
	.loc 1 503 0
	cmovne	%edx, %eax
	.loc 1 509 0
	movl	$1, %edx
	.loc 1 503 0
	movb	%al, 103(%rbx)
	.loc 1 506 0
	movl	%r12d, %eax
	orl	$1, %eax
	movb	%al, 144(%rbx)
	.loc 1 507 0
	movl	%r12d, %eax
	shrl	$8, %eax
	movb	%al, 145(%rbx)
	.loc 1 509 0
	call	register_ioport_write
	.loc 1 510 0
	movq	%rbx, %r8
	movl	$smb_ioport_readb, %ecx
	movl	%r12d, %edi
	movl	$1, %edx
	movl	$64, %esi
	call	register_ioport_read
	.loc 1 512 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$pm_tmr_timer, %esi
	call	qemu_new_timer
	.loc 1 514 0
	movq	%rbx, %r9
	.loc 1 512 0
	movq	%rax, 560(%rbx)
	.loc 1 514 0
	movl	$pm_load, %r8d
	movl	$pm_save, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$.LC1, %edi
	call	register_savevm
	.loc 1 516 0
	call	i2c_init_bus
	movq	%rax, 576(%rbx)
	.loc 1 518 0
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	ret
.LFE212:
	.size	piix4_pm_init, .-piix4_pm_init
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI1-.LFB195
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI3-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI8-.LFB198
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI9-.LFB199
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI10-.LFB201
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI11-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI14-.LFB208
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI16-.LFB209
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI18-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI21-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI24-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
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
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.byte	0x4
	.long	.LCFI1-.LFB195
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI3-.LFB196
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI8-.LFB198
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.byte	0x4
	.long	.LCFI9-.LFB199
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.byte	0x4
	.long	.LCFI10-.LFB201
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI11-.LFB206
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
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI14-.LFB208
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI16-.LFB209
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI18-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI21-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI24-.LFB212
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE33:
	.file 3 "../qemu-common.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/pci.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "../argos-tag.h"
	.file 8 "../argos.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/libio.h"
	.file 11 "/usr/include/bits/types.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 13 "../cpu-all.h"
	.file 14 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 15 "../cpu-defs.h"
	.file 16 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 17 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 18 "/usr/include/setjmp.h"
	.file 19 "/usr/include/bits/setjmp.h"
	.file 20 "/usr/include/bits/sigset.h"
	.file 21 "../qemu-timer.h"
	.file 22 "../sysemu.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x1d13
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF297
	.byte	0x1
	.long	.LASF298
	.long	.LASF299
	.uleb128 0x2
	.long	.LASF9
	.byte	0xc
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
	.byte	0x8
	.long	0x6f
	.uleb128 0x6
	.long	0x74
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
	.byte	0xb
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xb
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x14
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x14
	.byte	0x1f
	.long	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0xeb
	.long	0x38
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x14
	.byte	0x20
	.long	0xc4
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0x9
	.byte	0x31
	.long	0x108
	.uleb128 0xc
	.long	0x2d4
	.long	.LASF48
	.byte	0xd8
	.byte	0x9
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xa
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xa
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xa
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xa
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xa
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xa
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xa
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xa
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xa
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xa
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xa
	.value	0x122
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xa
	.value	0x124
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xa
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xa
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xa
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.value	0x132
	.long	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xa
	.value	0x136
	.long	0x32e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xa
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xa
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xa
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xa
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xa
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xa
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xa
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xa
	.value	0x150
	.long	0x334
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0xa
	.byte	0xb4
	.uleb128 0xc
	.long	0x312
	.long	.LASF49
	.byte	0x18
	.byte	0xa
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0xa
	.byte	0xbb
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0xa
	.byte	0xbc
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0xa
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2db
	.uleb128 0x5
	.byte	0x8
	.long	0x108
	.uleb128 0xa
	.long	0x32e
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2d4
	.uleb128 0xa
	.long	0x344
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF57
	.byte	0x13
	.byte	0x20
	.long	0x37b
	.uleb128 0xa
	.long	0x38b
	.long	0x4d
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	0x3c2
	.long	.LASF58
	.byte	0xc8
	.byte	0x12
	.byte	0x24
	.uleb128 0x9
	.long	.LASF59
	.byte	0x12
	.byte	0x29
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x12
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF61
	.byte	0x12
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x12
	.byte	0x31
	.long	0x3cd
	.uleb128 0xa
	.long	0x3dd
	.long	0x38b
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF63
	.byte	0xf
	.byte	0x31
	.long	0x35a
	.uleb128 0x2
	.long	.LASF64
	.byte	0xf
	.byte	0x49
	.long	0x365
	.uleb128 0xc
	.long	0x438
	.long	.LASF65
	.byte	0x18
	.byte	0xf
	.byte	0x69
	.uleb128 0x9
	.long	.LASF66
	.byte	0xf
	.byte	0x70
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0xf
	.byte	0x71
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF68
	.byte	0xf
	.byte	0x72
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF69
	.byte	0xf
	.byte	0x74
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0xf
	.byte	0x75
	.long	0x3f3
	.uleb128 0x3
	.long	.LASF70
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF71
	.byte	0x8
	.byte	0x4
	.uleb128 0x2
	.long	.LASF72
	.byte	0x11
	.byte	0x3b
	.long	0x443
	.uleb128 0x2
	.long	.LASF73
	.byte	0x11
	.byte	0x3c
	.long	0x44a
	.uleb128 0x2
	.long	.LASF74
	.byte	0x11
	.byte	0x3e
	.long	0x472
	.uleb128 0x3
	.long	.LASF75
	.byte	0x10
	.byte	0x4
	.uleb128 0xc
	.long	0x4a2
	.long	.LASF76
	.byte	0x2
	.byte	0x11
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF77
	.byte	0x11
	.byte	0x6e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF78
	.byte	0x11
	.byte	0x70
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x11
	.byte	0x72
	.long	0x479
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.value	0x198
	.long	0x467
	.uleb128 0x10
	.long	0x503
	.long	.LASF80
	.byte	0x10
	.byte	0xe
	.value	0x19d
	.uleb128 0xd
	.long	.LASF81
	.byte	0xe
	.value	0x19e
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0xe
	.value	0x19f
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0xe
	.value	0x1a0
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0xe
	.value	0x1a1
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.value	0x1a2
	.long	0x4b9
	.uleb128 0x11
	.long	0x55b
	.byte	0x10
	.byte	0xe
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0xe
	.value	0x1a5
	.long	0x55b
	.uleb128 0x12
	.string	"_w"
	.byte	0xe
	.value	0x1a6
	.long	0x56b
	.uleb128 0x12
	.string	"_l"
	.byte	0xe
	.value	0x1a7
	.long	0x57b
	.uleb128 0x12
	.string	"_q"
	.byte	0xe
	.value	0x1a8
	.long	0x58b
	.uleb128 0x12
	.string	"_s"
	.byte	0xe
	.value	0x1a9
	.long	0x59b
	.uleb128 0x12
	.string	"_d"
	.byte	0xe
	.value	0x1aa
	.long	0x5ab
	.byte	0x0
	.uleb128 0xa
	.long	0x56b
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x57b
	.long	0x34f
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x58b
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x59b
	.long	0x365
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x5ab
	.long	0x451
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.long	0x5bb
	.long	0x45c
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xe
	.value	0x1ab
	.long	0x50f
	.uleb128 0x11
	.long	0x5fc
	.byte	0x8
	.byte	0xe
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0xe
	.value	0x1ae
	.long	0x5fc
	.uleb128 0x12
	.string	"_w"
	.byte	0xe
	.value	0x1af
	.long	0x60c
	.uleb128 0x12
	.string	"_l"
	.byte	0xe
	.value	0x1b0
	.long	0x61c
	.uleb128 0x12
	.string	"q"
	.byte	0xe
	.value	0x1b1
	.long	0x365
	.byte	0x0
	.uleb128 0xa
	.long	0x60c
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0x61c
	.long	0x34f
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.byte	0x0
	.uleb128 0xa
	.long	0x62c
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	.LASF86
	.byte	0xe
	.value	0x1b2
	.long	0x5c7
	.uleb128 0x2
	.long	.LASF87
	.byte	0x8
	.byte	0x2f
	.long	0x35a
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.byte	0x34
	.long	0x35a
	.uleb128 0x2
	.long	.LASF89
	.byte	0x8
	.byte	0x35
	.long	0x643
	.uleb128 0xc
	.long	0x682
	.long	.LASF90
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.uleb128 0x9
	.long	.LASF91
	.byte	0x7
	.byte	0x38
	.long	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x7
	.byte	0x39
	.long	0x643
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x7
	.byte	0x3d
	.long	0x659
	.uleb128 0xc
	.long	0x802
	.long	.LASF94
	.byte	0xd0
	.byte	0x10
	.byte	0x36
	.uleb128 0x9
	.long	.LASF95
	.byte	0x10
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF96
	.byte	0x10
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0x10
	.byte	0x3d
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0x10
	.byte	0x3f
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF98
	.byte	0x10
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF99
	.byte	0x10
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF100
	.byte	0x10
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF101
	.byte	0x10
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF102
	.byte	0x10
	.byte	0x4a
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF103
	.byte	0x10
	.byte	0x4b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF104
	.byte	0x10
	.byte	0x4c
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF105
	.byte	0x10
	.byte	0x4e
	.long	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF106
	.byte	0x10
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF107
	.byte	0x10
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF108
	.byte	0x10
	.byte	0x54
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF109
	.byte	0x10
	.byte	0x56
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF110
	.byte	0x10
	.byte	0x58
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF111
	.byte	0x10
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF112
	.byte	0x10
	.byte	0x5c
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x10
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF114
	.byte	0x10
	.byte	0x60
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x10
	.byte	0x62
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x10
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF117
	.byte	0x10
	.byte	0x66
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x10
	.byte	0x68
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0xa
	.long	0x818
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x828
	.long	0x643
	.uleb128 0xb
	.long	0x5b
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x643
	.uleb128 0x2
	.long	.LASF119
	.byte	0x10
	.byte	0x69
	.long	0x68d
	.uleb128 0x11
	.long	0x859
	.byte	0x10
	.byte	0xe
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0xe
	.value	0x20a
	.long	0x4ad
	.uleb128 0x12
	.string	"mmx"
	.byte	0xe
	.value	0x20e
	.long	0x62c
	.byte	0x0
	.uleb128 0x11
	.long	0x88f
	.byte	0x8
	.byte	0xe
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0xe
	.value	0x215
	.long	0x443
	.uleb128 0x12
	.string	"d"
	.byte	0xe
	.value	0x216
	.long	0x44a
	.uleb128 0x12
	.string	"i32"
	.byte	0xe
	.value	0x217
	.long	0x3f
	.uleb128 0x12
	.string	"i64"
	.byte	0xe
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x14
	.long	0x8b7
	.byte	0x10
	.byte	0xe
	.value	0x246
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.value	0x246
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF69
	.byte	0xe
	.value	0x246
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	0xe53
	.long	.LASF121
	.value	0xb820
	.byte	0xe
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.value	0x1df
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0xe
	.value	0x1e0
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.value	0x1e1
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.value	0x1e7
	.long	0xe63
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.value	0x1e9
	.long	0x82e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.value	0x1ec
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.value	0x1ed
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.value	0x1ee
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0xe
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF132
	.byte	0xe
	.value	0x1f0
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF133
	.byte	0xe
	.value	0x1f3
	.long	0xe73
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0xe
	.value	0x1f4
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0xe
	.value	0x1f5
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0xe
	.value	0x1f6
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0xe
	.value	0x1f7
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0xe
	.value	0x1f9
	.long	0xe83
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF134
	.byte	0xe
	.value	0x1fa
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF135
	.byte	0xe
	.value	0x201
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF136
	.byte	0xe
	.value	0x202
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF137
	.byte	0xe
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF138
	.byte	0xe
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF139
	.byte	0xe
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF140
	.byte	0xe
	.value	0x207
	.long	0x5fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF141
	.byte	0xe
	.value	0x20f
	.long	0xe93
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF142
	.byte	0xe
	.value	0x212
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0xe
	.value	0x213
	.long	0x4ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF143
	.byte	0xe
	.value	0x219
	.long	0x859
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF144
	.byte	0xe
	.value	0x21b
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF145
	.byte	0xe
	.value	0x21c
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF146
	.byte	0xe
	.value	0x21d
	.long	0xea3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF147
	.byte	0xe
	.value	0x21e
	.long	0x5bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF148
	.byte	0xe
	.value	0x21f
	.long	0x62c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF149
	.byte	0xe
	.value	0x222
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF150
	.byte	0xe
	.value	0x223
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF151
	.byte	0xe
	.value	0x224
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF152
	.byte	0xe
	.value	0x225
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF153
	.byte	0xe
	.value	0x226
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF154
	.byte	0xe
	.value	0x228
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF155
	.byte	0xe
	.value	0x229
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF156
	.byte	0xe
	.value	0x22a
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF157
	.byte	0xe
	.value	0x22b
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF158
	.byte	0xe
	.value	0x22c
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF159
	.byte	0xe
	.value	0x22d
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF160
	.byte	0xe
	.value	0x22e
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF161
	.byte	0xe
	.value	0x22f
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0xe
	.value	0x238
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF162
	.byte	0xe
	.value	0x23b
	.long	0x3c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF163
	.byte	0xe
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF164
	.byte	0xe
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF165
	.byte	0xe
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF166
	.byte	0xe
	.value	0x23f
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0xe
	.value	0x240
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF167
	.byte	0xe
	.value	0x241
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF168
	.byte	0xe
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF169
	.byte	0xe
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0xe
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF171
	.byte	0xe
	.value	0x246
	.long	0xeb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF172
	.byte	0xe
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF173
	.byte	0xe
	.value	0x246
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF174
	.byte	0xe
	.value	0x246
	.long	0xebf
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF175
	.byte	0xe
	.value	0x246
	.long	0xed5
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0xe
	.value	0x246
	.long	0xee6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0xe
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF178
	.byte	0xe
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF179
	.byte	0xe
	.value	0x246
	.long	0xef6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF180
	.byte	0xe
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF181
	.byte	0xe
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF182
	.byte	0xe
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF183
	.byte	0xe
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF184
	.byte	0xe
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF185
	.byte	0xe
	.value	0x246
	.long	0x69
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF186
	.byte	0xe
	.value	0x249
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF187
	.byte	0xe
	.value	0x24a
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF188
	.byte	0xe
	.value	0x24b
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF189
	.byte	0xe
	.value	0x24c
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF190
	.byte	0xe
	.value	0x24d
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF191
	.byte	0xe
	.value	0x24e
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF192
	.byte	0xe
	.value	0x24f
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF193
	.byte	0xe
	.value	0x250
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF194
	.byte	0xe
	.value	0x251
	.long	0xf06
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF195
	.byte	0xe
	.value	0x252
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF196
	.byte	0xe
	.value	0x253
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF197
	.byte	0xe
	.value	0x254
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF198
	.byte	0xe
	.value	0x25b
	.long	0xf16
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF199
	.byte	0xe
	.value	0x25f
	.long	0xf22
	.byte	0x4
	.byte	0x23
	.uleb128 0xb810
	.byte	0x0
	.uleb128 0xa
	.long	0xe63
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe73
	.long	0x682
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xe83
	.long	0x503
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xe93
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x4
	.byte	0x0
	.uleb128 0xa
	.long	0xea3
	.long	0x839
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.long	0xeb3
	.long	0x5bb
	.uleb128 0xb
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.long	.LASF200
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xeb3
	.uleb128 0xa
	.long	0xed5
	.long	0x438
	.uleb128 0xb
	.long	0x5b
	.byte	0x1
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0xa
	.long	0xee6
	.long	0xeb9
	.uleb128 0x18
	.long	0x5b
	.value	0xfff
	.byte	0x0
	.uleb128 0xa
	.long	0xef6
	.long	0x3dd
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf06
	.long	0x88f
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0xf16
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x64e
	.uleb128 0x17
	.long	.LASF201
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf1c
	.uleb128 0xf
	.long	.LASF121
	.byte	0xe
	.value	0x260
	.long	0x8b7
	.uleb128 0x5
	.byte	0x8
	.long	0x682
	.uleb128 0x5
	.byte	0x8
	.long	0xf40
	.uleb128 0x6
	.long	0x344
	.uleb128 0x2
	.long	.LASF202
	.byte	0x3
	.byte	0x6e
	.long	0xf50
	.uleb128 0x17
	.long	.LASF202
	.byte	0x1
	.uleb128 0x2
	.long	.LASF203
	.byte	0x3
	.byte	0x71
	.long	0xf61
	.uleb128 0x17
	.long	.LASF203
	.byte	0x1
	.uleb128 0x2
	.long	.LASF204
	.byte	0x3
	.byte	0x73
	.long	0xf72
	.uleb128 0x17
	.long	.LASF204
	.byte	0x1
	.uleb128 0x2
	.long	.LASF205
	.byte	0x3
	.byte	0x74
	.long	0xf83
	.uleb128 0x17
	.long	.LASF205
	.byte	0x1
	.uleb128 0x2
	.long	.LASF206
	.byte	0x3
	.byte	0x77
	.long	0xf94
	.uleb128 0x17
	.long	.LASF206
	.byte	0x1
	.uleb128 0x2
	.long	.LASF207
	.byte	0x3
	.byte	0x78
	.long	0xfa5
	.uleb128 0x17
	.long	.LASF207
	.byte	0x1
	.uleb128 0x2
	.long	.LASF208
	.byte	0x3
	.byte	0x79
	.long	0xfb6
	.uleb128 0x19
	.long	0x1059
	.long	.LASF208
	.value	0x228
	.byte	0x3
	.byte	0x79
	.uleb128 0x9
	.long	.LASF209
	.byte	0x4
	.byte	0x2f
	.long	0x1148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.string	"bus"
	.byte	0x4
	.byte	0x32
	.long	0x1158
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.long	.LASF210
	.byte	0x4
	.byte	0x33
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.long	.LASF211
	.byte	0x4
	.byte	0x34
	.long	0x115e
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.long	.LASF212
	.byte	0x4
	.byte	0x35
	.long	0x116e
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x9
	.long	.LASF213
	.byte	0x4
	.byte	0x38
	.long	0x117e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.long	.LASF214
	.byte	0x4
	.byte	0x39
	.long	0x1184
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.long	.LASF215
	.byte	0x4
	.byte	0x3b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x13
	.string	"irq"
	.byte	0x4
	.byte	0x3e
	.long	0x118a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.long	.LASF216
	.byte	0x4
	.byte	0x41
	.long	0x1190
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.byte	0x0
	.uleb128 0x2
	.long	.LASF217
	.byte	0x3
	.byte	0x7b
	.long	0x1064
	.uleb128 0x5
	.byte	0x8
	.long	0x106a
	.uleb128 0x17
	.long	.LASF218
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf67
	.uleb128 0x2
	.long	.LASF219
	.byte	0x4
	.byte	0xc
	.long	0x1081
	.uleb128 0x1a
	.long	0x109c
	.byte	0x1
	.uleb128 0x1b
	.long	0x109c
	.uleb128 0x1b
	.long	0x35a
	.uleb128 0x1b
	.long	0x35a
	.uleb128 0x1b
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfab
	.uleb128 0x2
	.long	.LASF220
	.byte	0x4
	.byte	0xe
	.long	0x10ad
	.uleb128 0x1c
	.long	0x10c7
	.byte	0x1
	.long	0x35a
	.uleb128 0x1b
	.long	0x109c
	.uleb128 0x1b
	.long	0x35a
	.uleb128 0x1b
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF221
	.byte	0x4
	.byte	0x10
	.long	0x10d2
	.uleb128 0x1a
	.long	0x10f2
	.byte	0x1
	.uleb128 0x1b
	.long	0x109c
	.uleb128 0x1b
	.long	0x3f
	.uleb128 0x1b
	.long	0x35a
	.uleb128 0x1b
	.long	0x35a
	.uleb128 0x1b
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0x1137
	.long	.LASF222
	.byte	0x18
	.byte	0x4
	.byte	0x16
	.uleb128 0x9
	.long	.LASF223
	.byte	0x4
	.byte	0x17
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF224
	.byte	0x4
	.byte	0x18
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF225
	.byte	0x4
	.byte	0x19
	.long	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF226
	.byte	0x4
	.byte	0x1a
	.long	0x1137
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10c7
	.uleb128 0x2
	.long	.LASF222
	.byte	0x4
	.byte	0x1b
	.long	0x10f2
	.uleb128 0xa
	.long	0x1158
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0xff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf9a
	.uleb128 0xa
	.long	0x116e
	.long	0x74
	.uleb128 0xb
	.long	0x5b
	.byte	0x3f
	.byte	0x0
	.uleb128 0xa
	.long	0x117e
	.long	0x113d
	.uleb128 0xb
	.long	0x5b
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x10a2
	.uleb128 0x5
	.byte	0x8
	.long	0x1076
	.uleb128 0x5
	.byte	0x8
	.long	0x1059
	.uleb128 0xa
	.long	0x11a0
	.long	0x3f
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF227
	.byte	0x15
	.byte	0x6
	.long	0x11ab
	.uleb128 0x17
	.long	.LASF227
	.byte	0x1
	.uleb128 0x1d
	.long	0x11de
	.byte	0x4
	.byte	0x16
	.byte	0x77
	.uleb128 0x1e
	.long	.LASF228
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF229
	.sleb128 1
	.uleb128 0x1e
	.long	.LASF230
	.sleb128 2
	.uleb128 0x1e
	.long	.LASF231
	.sleb128 3
	.uleb128 0x1e
	.long	.LASF232
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF233
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF234
	.byte	0x16
	.byte	0x79
	.long	0x11b1
	.uleb128 0xc
	.long	0x122e
	.long	.LASF235
	.byte	0x18
	.byte	0x16
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF236
	.byte	0x16
	.byte	0x7c
	.long	0x122e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF225
	.byte	0x16
	.byte	0x7d
	.long	0x11de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"bus"
	.byte	0x16
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.long	.LASF237
	.byte	0x16
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf45
	.uleb128 0x2
	.long	.LASF235
	.byte	0x16
	.byte	0x80
	.long	0x11e9
	.uleb128 0x5
	.byte	0x8
	.long	0x344
	.uleb128 0x19
	.long	0x1351
	.long	.LASF238
	.value	0x270
	.byte	0x1
	.byte	0x22
	.uleb128 0x13
	.string	"dev"
	.byte	0x1
	.byte	0x23
	.long	0xfab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF239
	.byte	0x1
	.byte	0x24
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.long	.LASF240
	.byte	0x1
	.byte	0x25
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x22a
	.uleb128 0x9
	.long	.LASF241
	.byte	0x1
	.byte	0x26
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.long	.LASF242
	.byte	0x1
	.byte	0x27
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x22e
	.uleb128 0x9
	.long	.LASF243
	.byte	0x1
	.byte	0x28
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x22f
	.uleb128 0x9
	.long	.LASF244
	.byte	0x1
	.byte	0x29
	.long	0x1351
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.long	.LASF245
	.byte	0x1
	.byte	0x2a
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.long	.LASF246
	.byte	0x1
	.byte	0x2b
	.long	0x1357
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.long	.LASF247
	.byte	0x1
	.byte	0x2c
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.long	.LASF248
	.byte	0x1
	.byte	0x2d
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x249
	.uleb128 0x9
	.long	.LASF249
	.byte	0x1
	.byte	0x2e
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x24a
	.uleb128 0x9
	.long	.LASF250
	.byte	0x1
	.byte	0x2f
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x24b
	.uleb128 0x9
	.long	.LASF251
	.byte	0x1
	.byte	0x30
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.long	.LASF252
	.byte	0x1
	.byte	0x31
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x24d
	.uleb128 0x9
	.long	.LASF253
	.byte	0x1
	.byte	0x32
	.long	0x135d
	.byte	0x3
	.byte	0x23
	.uleb128 0x24e
	.uleb128 0x9
	.long	.LASF254
	.byte	0x1
	.byte	0x33
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf89
	.uleb128 0x5
	.byte	0x8
	.long	0xf78
	.uleb128 0xa
	.long	0x136d
	.long	0x344
	.uleb128 0xb
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x1
	.byte	0x34
	.long	0x1245
	.uleb128 0x1f
	.long	0x13be
	.long	.LASF255
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.long	0x3f
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x51
	.long	0x13be
	.byte	0x1
	.byte	0x53
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.byte	0x53
	.long	0xb9
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF239
	.byte	0x1
	.byte	0x54
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x136d
	.uleb128 0x23
	.long	0x1415
	.long	.LASF256
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.long	0x13be
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	.LASF257
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF239
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	.LASF258
	.byte	0x1
	.byte	0x5f
	.long	0xb9
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.long	0x144a
	.long	.LASF259
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0x6e
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x70
	.long	0x13be
	.byte	0x0
	.uleb128 0x23
	.long	0x14cc
	.long	.LASF260
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0x74
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0x74
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0x74
	.long	0x35a
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x76
	.long	0x13be
	.uleb128 0x26
	.long	0x14ba
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.byte	0x7b
	.long	0xb9
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF239
	.byte	0x1
	.byte	0x7c
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x152a
	.long	.LASF262
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x35a
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0xa4
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0xa4
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xa4
	.long	0xf34
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xa6
	.long	0x13be
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0xa7
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.long	0x1570
	.long	.LASF263
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0xbe
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0xbe
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0xbe
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1f
	.long	0x1600
	.long	.LASF264
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x35a
	.quad	.LFB201
	.quad	.LFE201
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0xc7
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0xc7
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xc7
	.long	0xf34
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xc9
	.long	0x13be
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0xca
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	0x1600
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x2a
	.long	0x1611
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x2c
	.long	0x161a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x1624
	.long	.LASF265
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.long	0x35a
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x4a
	.long	0x13be
	.uleb128 0x25
	.string	"d"
	.byte	0x1
	.byte	0x4c
	.long	0x35a
	.byte	0x0
	.uleb128 0x23
	.long	0x1673
	.long	.LASF266
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.quad	.LFB202
	.quad	.LFE202
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0xdb
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0xdb
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0xdb
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xdd
	.long	0x13be
	.byte	0x0
	.uleb128 0x1f
	.long	0x16d1
	.long	.LASF267
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	0x35a
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.byte	0xf4
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.byte	0xf4
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xf4
	.long	0xf34
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xf6
	.long	0x13be
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0xf7
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x171b
	.long	.LASF268
	.byte	0x1
	.value	0x106
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF184
	.byte	0x1
	.value	0x105
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF223
	.byte	0x1
	.value	0x105
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x105
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2f
	.long	0x17db
	.long	.LASF269
	.byte	0x1
	.value	0x144
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF184
	.byte	0x1
	.value	0x143
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF223
	.byte	0x1
	.value	0x143
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x143
	.long	0x35a
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x145
	.long	0x13be
	.uleb128 0x33
	.long	0x17c1
	.long	0x17db
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x2a
	.long	0x17e9
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x2c
	.long	0x17f3
	.uleb128 0x34
	.long	0x17ff
	.byte	0x1
	.byte	0x52
	.uleb128 0x34
	.long	0x180b
	.byte	0x1
	.byte	0x58
	.uleb128 0x34
	.long	0x1817
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.long	0x1823
	.byte	0x1
	.byte	0x55
	.uleb128 0x35
	.long	0x182f
	.quad	.L71
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x34
	.long	0x1838
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x1846
	.long	.LASF270
	.byte	0x1
	.value	0x10d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.value	0x10c
	.long	0x13be
	.uleb128 0x38
	.long	.LASF271
	.byte	0x1
	.value	0x10e
	.long	0x344
	.uleb128 0x38
	.long	.LASF272
	.byte	0x1
	.value	0x10f
	.long	0x344
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.value	0x110
	.long	0x344
	.uleb128 0x38
	.long	.LASF223
	.byte	0x1
	.value	0x111
	.long	0x344
	.uleb128 0x32
	.string	"bus"
	.byte	0x1
	.value	0x112
	.long	0x1357
	.uleb128 0x39
	.long	.LASF300
	.byte	0x1
	.value	0x13f
	.uleb128 0x3a
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x12b
	.long	0x34f
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x18aa
	.long	.LASF273
	.byte	0x1
	.value	0x16b
	.byte	0x1
	.long	0x35a
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.long	.LASF184
	.byte	0x1
	.value	0x16a
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF223
	.byte	0x1
	.value	0x16a
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x16a
	.long	0xf34
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x16c
	.long	0x13be
	.uleb128 0x3c
	.string	"val"
	.byte	0x1
	.value	0x16d
	.long	0x35a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2f
	.long	0x18e4
	.long	.LASF274
	.byte	0x1
	.value	0x194
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x193
	.long	0x13be
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.long	.LASF275
	.byte	0x1
	.value	0x195
	.long	0x35a
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2f
	.long	0x193a
	.long	.LASF276
	.byte	0x1
	.value	0x1a8
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x1a6
	.long	0x109c
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.long	.LASF277
	.byte	0x1
	.value	0x1a7
	.long	0x35a
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x1a7
	.long	0x35a
	.byte	0x1
	.byte	0x51
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x1a7
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2f
	.long	0x1a2e
	.long	.LASF278
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1ae
	.long	0x1070
	.byte	0x1
	.byte	0x5c
	.uleb128 0x30
	.long	.LASF184
	.byte	0x1
	.value	0x1ae
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1b0
	.long	0x13be
	.uleb128 0x33
	.long	0x19a1
	.long	0x1a2e
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x2a
	.long	0x1a3b
	.uleb128 0x2a
	.long	0x1a44
	.byte	0x0
	.uleb128 0x33
	.long	0x19c5
	.long	0x1a2e
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x2a
	.long	0x1a3b
	.uleb128 0x2a
	.long	0x1a44
	.byte	0x0
	.uleb128 0x33
	.long	0x19e9
	.long	0x1a2e
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x2a
	.long	0x1a3b
	.uleb128 0x2a
	.long	0x1a44
	.byte	0x0
	.uleb128 0x33
	.long	0x1a0d
	.long	0x1a5a
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x2a
	.long	0x1a67
	.uleb128 0x2a
	.long	0x1a70
	.byte	0x0
	.uleb128 0x29
	.long	0x1a5a
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x2a
	.long	0x1a67
	.uleb128 0x2a
	.long	0x1a70
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x1a4f
	.long	.LASF279
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x23
	.long	0x1070
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x23
	.long	0x1a4f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1a55
	.uleb128 0x6
	.long	0x34f
	.uleb128 0x3e
	.long	0x1a7b
	.long	.LASF280
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0x1070
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0xf3a
	.byte	0x0
	.uleb128 0x3b
	.long	0x1b8f
	.long	.LASF281
	.byte	0x1
	.value	0x1be
	.byte	0x1
	.long	0x3f
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1bd
	.long	0x1070
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.long	.LASF184
	.byte	0x1
	.value	0x1bd
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF282
	.byte	0x1
	.value	0x1bd
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x1bf
	.long	0x13be
	.uleb128 0x3c
	.string	"ret"
	.byte	0x1
	.value	0x1c0
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x33
	.long	0x1b02
	.long	0x1b8f
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x2a
	.long	0x1b9c
	.uleb128 0x2a
	.long	0x1ba5
	.byte	0x0
	.uleb128 0x33
	.long	0x1b26
	.long	0x1b8f
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x2a
	.long	0x1b9c
	.uleb128 0x2a
	.long	0x1ba5
	.byte	0x0
	.uleb128 0x33
	.long	0x1b4a
	.long	0x1b8f
	.quad	.LBB48
	.quad	.LBE48
	.uleb128 0x2a
	.long	0x1b9c
	.uleb128 0x2a
	.long	0x1ba5
	.byte	0x0
	.uleb128 0x33
	.long	0x1b6e
	.long	0x1bb6
	.quad	.LBB54
	.quad	.LBE54
	.uleb128 0x2a
	.long	0x1bc3
	.uleb128 0x2a
	.long	0x1bcc
	.byte	0x0
	.uleb128 0x29
	.long	0x1bb6
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x2a
	.long	0x1bc3
	.uleb128 0x2a
	.long	0x1bcc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x1bb0
	.long	.LASF283
	.byte	0x2
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x37
	.long	0x1070
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x37
	.long	0x1bb0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x34f
	.uleb128 0x3e
	.long	0x1bd7
	.long	.LASF284
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0x1070
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0x123f
	.byte	0x0
	.uleb128 0x3f
	.long	0x1c3e
	.byte	0x1
	.long	.LASF301
	.byte	0x1
	.value	0x1d7
	.byte	0x1
	.long	0x1357
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"bus"
	.byte	0x1
	.value	0x1d6
	.long	0x1158
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.long	.LASF210
	.byte	0x1
	.value	0x1d6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.long	.LASF285
	.byte	0x1
	.value	0x1d6
	.long	0x35a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x3c
	.string	"s"
	.byte	0x1
	.value	0x1d8
	.long	0x13be
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.long	.LASF286
	.byte	0x1
	.value	0x1d9
	.long	0x123f
	.byte	0x0
	.uleb128 0x40
	.long	.LASF287
	.byte	0x9
	.byte	0x91
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF288
	.byte	0x9
	.byte	0x92
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF289
	.byte	0xd
	.value	0x32b
	.long	0x1c66
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf28
	.uleb128 0x41
	.long	.LASF290
	.byte	0xd
	.value	0x376
	.long	0x123f
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF291
	.byte	0x15
	.byte	0x12
	.long	0x1c87
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0x11a0
	.uleb128 0x40
	.long	.LASF292
	.byte	0x15
	.byte	0x1c
	.long	0xb9
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.long	.LASF293
	.byte	0x16
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xa
	.long	0x1cc0
	.long	0x1234
	.uleb128 0xb
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x42
	.long	.LASF294
	.byte	0x16
	.byte	0x87
	.long	0x1cb0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0xa
	.long	0x1ce6
	.long	0x1ce6
	.uleb128 0xb
	.long	0x5b
	.byte	0x3
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf56
	.uleb128 0x40
	.long	.LASF295
	.byte	0x16
	.byte	0x90
	.long	0x1cd6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x1d09
	.long	0x1ce6
	.uleb128 0xb
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x40
	.long	.LASF296
	.byte	0x16
	.byte	0x96
	.long	0x1cf9
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.long	0x3f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x1d17
	.long	0x1bd7
	.string	"piix4_pm_init"
	.long	0x1c9a
	.string	"nb_drives"
	.long	0x1cc0
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF152:
	.string	"efer"
.LASF9:
	.string	"size_t"
.LASF298:
	.string	"/home/remco/Projects/Argos/src/hw/acpi.c"
.LASF281:
	.string	"pm_load"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF238:
	.string	"PIIX4PMState"
.LASF12:
	.string	"int32_t"
.LASF263:
	.string	"pm_ioport_writel"
.LASF280:
	.string	"qemu_put_8s"
.LASF29:
	.string	"_IO_save_end"
.LASF260:
	.string	"pm_ioport_writew"
.LASF139:
	.string	"fpuc"
.LASF140:
	.string	"fptags"
.LASF74:
	.string	"floatx80"
.LASF138:
	.string	"fpus"
.LASF22:
	.string	"_IO_write_base"
.LASF68:
	.string	"addr_code"
.LASF95:
	.string	"running"
.LASF38:
	.string	"_lock"
.LASF128:
	.string	"shellcode_context"
.LASF162:
	.string	"jmp_env"
.LASF27:
	.string	"_IO_save_base"
.LASF120:
	.string	"vaddr"
.LASF129:
	.string	"cc_src"
.LASF130:
	.string	"cc_dst"
.LASF156:
	.string	"intercept"
.LASF132:
	.string	"hflags"
.LASF35:
	.string	"_cur_column"
.LASF107:
	.string	"logged"
.LASF265:
	.string	"get_pmtmr"
.LASF45:
	.string	"_mode"
.LASF286:
	.string	"pci_conf"
.LASF220:
	.string	"PCIConfigReadFunc"
.LASF69:
	.string	"addend"
.LASF16:
	.string	"FILE"
.LASF2:
	.string	"long int"
.LASF192:
	.string	"cpuid_ext_features"
.LASF83:
	.string	"limit"
.LASF49:
	.string	"_IO_marker"
.LASF92:
	.string	"netidx"
.LASF184:
	.string	"opaque"
.LASF267:
	.string	"pm_smi_readb"
.LASF4:
	.string	"short unsigned int"
.LASF256:
	.string	"pm_update_sci"
.LASF121:
	.string	"CPUX86State"
.LASF202:
	.string	"BlockDriverState"
.LASF150:
	.string	"sysenter_esp"
.LASF171:
	.string	"current_tb"
.LASF216:
	.string	"irq_state"
.LASF282:
	.string	"version_id"
.LASF155:
	.string	"vm_vmcb"
.LASF99:
	.string	"instruction_stage"
.LASF151:
	.string	"sysenter_eip"
.LASF270:
	.string	"smb_transaction"
.LASF274:
	.string	"pm_io_space_update"
.LASF254:
	.string	"smb_index"
.LASF187:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor3"
.LASF200:
	.string	"TranslationBlock"
.LASF218:
	.string	"IRQState"
.LASF289:
	.string	"first_cpu"
.LASF205:
	.string	"i2c_bus"
.LASF7:
	.string	"signed char"
.LASF248:
	.string	"smb_ctl"
.LASF278:
	.string	"pm_save"
.LASF48:
	.string	"_IO_FILE"
.LASF300:
	.string	"error"
.LASF251:
	.string	"smb_data0"
.LASF109:
	.string	"load_value"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"argos_rtag_t"
.LASF194:
	.string	"cpuid_model"
.LASF90:
	.string	"argos_rtag"
.LASF114:
	.string	"store_value"
.LASF264:
	.string	"pm_ioport_readl"
.LASF242:
	.string	"apmc"
.LASF294:
	.string	"drives_table"
.LASF133:
	.string	"segs"
.LASF243:
	.string	"apms"
.LASF196:
	.string	"cpuid_ext3_features"
.LASF73:
	.string	"float64"
.LASF193:
	.string	"cpuid_xlevel"
.LASF170:
	.string	"old_exception"
.LASF210:
	.string	"devfn"
.LASF283:
	.string	"qemu_get_be16s"
.LASF47:
	.string	"_IO_lock_t"
.LASF204:
	.string	"QEMUFile"
.LASF112:
	.string	"load_addr_type"
.LASF209:
	.string	"config"
.LASF279:
	.string	"qemu_put_be16s"
.LASF87:
	.string	"argos_paddr_t"
.LASF84:
	.string	"flags"
.LASF253:
	.string	"smb_data"
.LASF19:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF239:
	.string	"pmsts"
.LASF52:
	.string	"_pos"
.LASF287:
	.string	"stdin"
.LASF115:
	.string	"store_value_netidx"
.LASF203:
	.string	"CharDriverState"
.LASF226:
	.string	"map_func"
.LASF144:
	.string	"sse_status"
.LASF208:
	.string	"PCIDevice"
.LASF219:
	.string	"PCIConfigWriteFunc"
.LASF30:
	.string	"_markers"
.LASF168:
	.string	"interrupt_request"
.LASF197:
	.string	"cpuid_apic_id"
.LASF246:
	.string	"smbus"
.LASF285:
	.string	"smb_io_base"
.LASF166:
	.string	"exception_next_eip"
.LASF235:
	.string	"DriveInfo"
.LASF108:
	.string	"instruction_netidx"
.LASF137:
	.string	"fpstt"
.LASF148:
	.string	"mmx_t0"
.LASF46:
	.string	"_unused2"
.LASF178:
	.string	"singlestep_enabled"
.LASF173:
	.string	"mem_write_vaddr"
.LASF113:
	.string	"load_size"
.LASF97:
	.string	"logfile"
.LASF102:
	.string	"loadedby_eip"
.LASF234:
	.string	"BlockInterfaceType"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF142:
	.string	"fp_status"
.LASF85:
	.string	"XMMReg"
.LASF236:
	.string	"bdrv"
.LASF149:
	.string	"sysenter_cs"
.LASF195:
	.string	"cpuid_ext2_features"
.LASF94:
	.string	"argos_shellcode_context_s"
.LASF161:
	.string	"intercept_exceptions"
.LASF78:
	.string	"floatx80_rounding_precision"
.LASF249:
	.string	"smb_cmd"
.LASF117:
	.string	"store_addr_type"
.LASF34:
	.string	"_old_offset"
.LASF153:
	.string	"star"
.LASF145:
	.string	"mxcsr"
.LASF3:
	.string	"long long int"
.LASF257:
	.string	"sci_level"
.LASF232:
	.string	"IF_MTD"
.LASF79:
	.string	"CPU86_LDouble"
.LASF255:
	.string	"get_pmsts"
.LASF24:
	.string	"_IO_write_end"
.LASF134:
	.string	"a20_mask"
.LASF273:
	.string	"smb_ioport_readb"
.LASF66:
	.string	"addr_read"
.LASF125:
	.string	"t1tag"
.LASF111:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF299:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF268:
	.string	"acpi_dbg_writel"
.LASF185:
	.string	"cpu_model_str"
.LASF223:
	.string	"addr"
.LASF176:
	.string	"breakpoints"
.LASF118:
	.string	"store_size"
.LASF272:
	.string	"read"
.LASF25:
	.string	"_IO_buf_base"
.LASF293:
	.string	"nb_drives"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF296:
	.string	"parallel_hds"
.LASF297:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF222:
	.string	"PCIIORegion"
.LASF284:
	.string	"qemu_get_8s"
.LASF181:
	.string	"watchpoint_hit"
.LASF88:
	.string	"argos_netidx_t"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF51:
	.string	"_sbuf"
.LASF103:
	.string	"storedby_eip"
.LASF276:
	.string	"pm_write_config"
.LASF110:
	.string	"load_value_netidx"
.LASF215:
	.string	"irq_index"
.LASF199:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF172:
	.string	"mem_write_pc"
.LASF277:
	.string	"address"
.LASF61:
	.string	"__saved_mask"
.LASF59:
	.string	"__jmpbuf"
.LASF183:
	.string	"cpu_index"
.LASF57:
	.string	"__jmp_buf"
.LASF271:
	.string	"prot"
.LASF214:
	.string	"config_write"
.LASF213:
	.string	"config_read"
.LASF225:
	.string	"type"
.LASF180:
	.string	"nb_watchpoints"
.LASF241:
	.string	"pmcntrl"
.LASF64:
	.string	"target_phys_addr_t"
.LASF206:
	.string	"QEMUTimer"
.LASF75:
	.string	"long double"
.LASF136:
	.string	"prev_fpip"
.LASF39:
	.string	"_offset"
.LASF301:
	.string	"piix4_pm_init"
.LASF60:
	.string	"__mask_was_saved"
.LASF191:
	.string	"cpuid_features"
.LASF157:
	.string	"intercept_cr_read"
.LASF224:
	.string	"size"
.LASF100:
	.string	"trace_stage"
.LASF15:
	.string	"long long unsigned int"
.LASF53:
	.string	"uint8_t"
.LASF54:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF227:
	.string	"QEMUClock"
.LASF31:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF143:
	.string	"fp_convert"
.LASF105:
	.string	"instruction"
.LASF250:
	.string	"smb_addr"
.LASF131:
	.string	"cc_op"
.LASF182:
	.string	"next_cpu"
.LASF72:
	.string	"float32"
.LASF65:
	.string	"CPUTLBEntry"
.LASF159:
	.string	"intercept_dr_read"
.LASF207:
	.string	"PCIBus"
.LASF116:
	.string	"store_addr"
.LASF291:
	.string	"vm_clock"
.LASF164:
	.string	"error_code"
.LASF266:
	.string	"pm_smi_writeb"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF98:
	.string	"instruction_cnt"
.LASF230:
	.string	"IF_FLOPPY"
.LASF122:
	.string	"regs"
.LASF11:
	.string	"__off64_t"
.LASF244:
	.string	"tmr_timer"
.LASF245:
	.string	"tmr_overflow_time"
.LASF101:
	.string	"is_system_call"
.LASF160:
	.string	"intercept_dr_write"
.LASF124:
	.string	"t0tag"
.LASF96:
	.string	"stop_condition"
.LASF167:
	.string	"smbase"
.LASF126:
	.string	"t2tag"
.LASF233:
	.string	"IF_SD"
.LASF26:
	.string	"_IO_buf_end"
.LASF262:
	.string	"pm_ioport_readw"
.LASF211:
	.string	"name"
.LASF63:
	.string	"target_ulong"
.LASF158:
	.string	"intercept_cr_write"
.LASF8:
	.string	"short int"
.LASF67:
	.string	"addr_write"
.LASF56:
	.string	"uint64_t"
.LASF188:
	.string	"cpuid_vendor2"
.LASF80:
	.string	"SegmentCache"
.LASF290:
	.string	"phys_ram_dirty"
.LASF86:
	.string	"MMXReg"
.LASF36:
	.string	"_vtable_offset"
.LASF165:
	.string	"exception_is_int"
.LASF141:
	.string	"fpregs"
.LASF146:
	.string	"xmm_regs"
.LASF228:
	.string	"IF_IDE"
.LASF169:
	.string	"user_mode_only"
.LASF154:
	.string	"vm_hsave"
.LASF177:
	.string	"nb_breakpoints"
.LASF135:
	.string	"fpip"
.LASF106:
	.string	"instruction_size"
.LASF295:
	.string	"serial_hds"
.LASF190:
	.string	"cpuid_version"
.LASF201:
	.string	"APICState"
.LASF127:
	.string	"regtags"
.LASF237:
	.string	"unit"
.LASF292:
	.string	"ticks_per_sec"
.LASF76:
	.string	"float_status"
.LASF20:
	.string	"_IO_read_end"
.LASF212:
	.string	"io_regions"
.LASF55:
	.string	"uint32_t"
.LASF231:
	.string	"IF_PFLASH"
.LASF247:
	.string	"smb_stat"
.LASF32:
	.string	"_fileno"
.LASF163:
	.string	"exception_index"
.LASF179:
	.string	"watchpoint"
.LASF62:
	.string	"jmp_buf"
.LASF221:
	.string	"PCIMapIORegionFunc"
.LASF70:
	.string	"float"
.LASF288:
	.string	"stdout"
.LASF104:
	.string	"executed_eip"
.LASF82:
	.string	"base"
.LASF23:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"eflags"
.LASF174:
	.string	"tlb_table"
.LASF13:
	.string	"int64_t"
.LASF81:
	.string	"selector"
.LASF258:
	.string	"expire_time"
.LASF175:
	.string	"tb_jmp_cache"
.LASF275:
	.string	"pm_io_base"
.LASF91:
	.string	"origin"
.LASF240:
	.string	"pmen"
.LASF259:
	.string	"pm_tmr_timer"
.LASF198:
	.string	"envmap"
.LASF14:
	.string	"__sigset_t"
.LASF186:
	.string	"cpuid_level"
.LASF252:
	.string	"smb_data1"
.LASF229:
	.string	"IF_SCSI"
.LASF261:
	.string	"sus_typ"
.LASF119:
	.string	"argos_shellcode_context_t"
.LASF269:
	.string	"smb_ioport_writeb"
.LASF89:
	.string	"argos_bytemap_t"
.LASF147:
	.string	"xmm_t0"
.LASF217:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
