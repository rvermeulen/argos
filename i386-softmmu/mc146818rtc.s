	.file	"mc146818rtc.c"
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
	.type	rtc_mm_write, @object
	.size	rtc_mm_write, 24
rtc_mm_write:
	.quad	cmos_mm_writeb
	.quad	cmos_mm_writew
	.quad	cmos_mm_writel
	.align 16
	.type	rtc_mm_read, @object
	.size	rtc_mm_read, 24
rtc_mm_read:
	.quad	cmos_mm_readb
	.quad	cmos_mm_readw
	.quad	cmos_mm_readl
	.text
	.p2align 4,,15
	.type	rtc_timer_update, @function
rtc_timer_update:
.LFB194:
	.file 1 "/home/remco/Projects/Argos/src/hw/mc146818rtc.c"
	.loc 1 77 0
	movq	%rbp, -8(%rsp)
.LCFI0:
	movq	%rdi, %rbp
	movq	%rbx, -16(%rsp)
.LCFI1:
	subq	$24, %rsp
.LCFI2:
	.loc 1 81 0
	movzbl	10(%rbp), %eax
	.loc 1 77 0
	movq	%rsi, %rdi
	.loc 1 82 0
	movl	%eax, %edx
	andl	$15, %edx
	je	.L2
	testb	$64, 11(%rbp)
	je	.L2
	.loc 1 85 0
	leal	7(%rdx), %eax
	cmpl	$2, %edx
	.loc 1 87 0
	movl	$1, %ebx
	.loc 1 89 0
	movl	$32768, %esi
	.loc 1 85 0
	cmovle	%eax, %edx
	.loc 1 87 0
	leal	-1(%rdx), %ecx
	.loc 1 89 0
	movl	ticks_per_sec(%rip), %edx
	.loc 1 87 0
	sall	%cl, %ebx
	.loc 1 89 0
	call	muldiv64
	.loc 1 90 0
	movl	%ebx, %edi
	.loc 1 91 0
	movl	ticks_per_sec(%rip), %esi
	.loc 1 90 0
	movslq	%ebx,%rbx
	negl	%edi
	.loc 1 91 0
	movl	$32768, %edx
	.loc 1 90 0
	movslq	%edi,%rdi
	andq	%rax, %rdi
	addq	%rbx, %rdi
	.loc 1 91 0
	call	muldiv64
	.loc 1 92 0
	movq	216(%rbp), %rdi
	.loc 1 91 0
	leaq	1(%rax), %rsi
	movq	%rsi, 224(%rbp)
	.loc 1 96 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 92 0
	jmp	qemu_mod_timer
	.p2align 4,,7
.L2:
	.loc 1 94 0
	movq	216(%rbp), %rdi
	.loc 1 96 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 94 0
	jmp	qemu_del_timer
.LFE194:
	.size	rtc_timer_update, .-rtc_timer_update
	.p2align 4,,15
	.type	rtc_periodic_timer, @function
rtc_periodic_timer:
.LFB195:
	.loc 1 99 0
	pushq	%rbx
.LCFI3:
	.loc 1 102 0
	movq	224(%rdi), %rsi
	.loc 1 99 0
	movq	%rdi, %rbx
	.loc 1 102 0
	call	rtc_timer_update
	.loc 1 103 0
	orb	$-64, 12(%rbx)
.LBB2:
	.file 2 "/home/remco/Projects/Argos/src/hw/irq.h"
	.loc 2 13 0
	movq	192(%rbx), %rdi
.LBB3:
	.loc 2 14 0
	movl	$1, %esi
.LBE3:
.LBE2:
	popq	%rbx
.LBB4:
.LBB5:
	jmp	qemu_set_irq
.LBE5:
.LBE4:
.LFE195:
	.size	rtc_periodic_timer, .-rtc_periodic_timer
	.p2align 4,,15
	.type	rtc_set_time, @function
rtc_set_time:
.LFB199:
	.loc 1 188 0
.LBB6:
	.loc 1 179 0
	movzbl	(%rdi), %edx
.LBB7:
	.loc 1 180 0
	testb	$4, 11(%rdi)
.LBE7:
.LBE6:
	.loc 1 189 0
	leaq	136(%rdi), %r8
.LBB8:
.LBB9:
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L10
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %esi
	andl	$15, %edx
	imull	%esi, %eax
	addl	%edx, %eax
.L10:
.LBE9:
.LBE8:
	.loc 1 179 0
	movl	%eax, (%r8)
.LBB10:
	movzbl	2(%rdi), %edx
.LBB11:
	.loc 1 180 0
	testb	$4, 11(%rdi)
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L13
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %ecx
	andl	$15, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
.L13:
.LBE11:
.LBE10:
	.loc 1 179 0
	movl	%eax, 4(%r8)
.LBB12:
	movzbl	4(%rdi), %edx
	movl	%edx, %eax
	andl	$127, %eax
.LBB13:
	.loc 1 180 0
	testb	$4, 11(%rdi)
	.loc 1 181 0
	movl	%eax, %esi
	.loc 1 180 0
	jne	.L16
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %r11d
	andl	$15, %edx
	imull	%r11d, %eax
	leal	(%rax,%rdx), %esi
.L16:
.LBE13:
.LBE12:
	.loc 1 179 0
	movl	%esi, 8(%r8)
	.loc 1 194 0
	movzbl	11(%rdi), %ecx
	testb	$2, %cl
	jne	.L18
	cmpb	$0, 4(%rdi)
	js	.L31
.L18:
.LBB14:
	.loc 1 179 0
	movzbl	6(%rdi), %edx
.LBB15:
	.loc 1 180 0
	andl	$4, %ecx
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L20
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %r10d
	andl	$15, %edx
	imull	%r10d, %eax
	addl	%edx, %eax
.L20:
.LBE15:
.LBE14:
	.loc 1 179 0
	movl	%eax, 24(%r8)
.LBB16:
	movzbl	7(%rdi), %edx
.LBB17:
	.loc 1 180 0
	testb	$4, 11(%rdi)
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L23
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %r9d
	andl	$15, %edx
	imull	%r9d, %eax
	addl	%edx, %eax
.L23:
.LBE17:
.LBE16:
	.loc 1 179 0
	movl	%eax, 12(%r8)
.LBB18:
	movzbl	8(%rdi), %edx
.LBB19:
	.loc 1 180 0
	testb	$4, 11(%rdi)
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L26
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %esi
	andl	$15, %edx
	imull	%esi, %eax
	addl	%edx, %eax
.L26:
.LBE19:
.LBE18:
	.loc 1 179 0
	decl	%eax
	movl	%eax, 16(%r8)
.LBB20:
	movzbl	9(%rdi), %edx
.LBB21:
	.loc 1 180 0
	testb	$4, 11(%rdi)
	.loc 1 181 0
	movl	%edx, %eax
	.loc 1 180 0
	jne	.L29
	.loc 1 183 0
	sarl	$4, %eax
	movl	$10, %ecx
	andl	$15, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
.L29:
.LBE21:
.LBE20:
	.loc 1 179 0
	addl	$100, %eax
	movl	%eax, 20(%r8)
	ret
	.p2align 4,,7
.L31:
	.loc 1 196 0
	leal	12(%rsi), %eax
	movl	%eax, 8(%r8)
	movzbl	11(%rdi), %ecx
	jmp	.L18
.LFE199:
	.size	rtc_set_time, .-rtc_set_time
	.p2align 4,,15
	.type	cmos_ioport_write, @function
cmos_ioport_write:
.LFB196:
	.loc 1 108 0
	movq	%rbx, -16(%rsp)
.LCFI4:
	movq	%rbp, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 1 111 0
	andl	$1, %esi
	.loc 1 108 0
	movq	%rdi, %rbx
	movl	%edx, %ebp
	.loc 1 111 0
	jne	.L33
	.loc 1 112 0
	andl	$127, %edx
	movb	%dl, 128(%rdi)
.L32:
	.loc 1 167 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L33:
	.loc 1 118 0
	movzbl	128(%rdi), %edx
	movzbl	%dl, %eax
	cmpl	$13, %eax
	ja	.L54
	mov	%eax, %eax
	jmp	*.L55(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L55:
	.quad	.L45
	.quad	.L54
	.quad	.L45
	.quad	.L54
	.quad	.L45
	.quad	.L54
	.quad	.L45
	.quad	.L45
	.quad	.L45
	.quad	.L45
	.quad	.L47
	.quad	.L48
	.quad	.L32
	.quad	.L32
	.text
	.p2align 4,,7
.L54:
	.loc 1 163 0
	movzbl	%dl, %eax 
	movb	%bpl, (%rbx,%rax)
	.loc 1 167 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L48:
	.loc 1 145 0
	testb	%bpl, %bpl
	jns	.L49
	.loc 1 147 0
	andb	$127, 10(%rdi)
	.loc 1 148 0
	andl	$-17, %ebp
.L50:
	.loc 1 155 0
	movb	%bpl, 11(%rbx)
	jmp	.L56
.L47:
	.loc 1 140 0
	movzbl	10(%rdi), %edx
	movl	%ebp, %eax
	andl	$127, %eax
	andl	$-128, %edx
	orl	%edx, %eax
	movb	%al, 10(%rdi)
.L56:
	.loc 1 156 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	%rbx, %rdi
	.loc 1 167 0
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	.loc 1 156 0
	movq	%rax, %rsi
	.loc 1 167 0
	addq	$24, %rsp
	.loc 1 156 0
	jmp	rtc_timer_update
.L45:
	.loc 1 132 0
	movzbl	%dl, %eax 
	movb	%bpl, (%rdi,%rax)
	.loc 1 134 0
	cmpb	$0, 11(%rdi)
	js	.L32
	.loc 1 167 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.loc 1 135 0
	jmp	rtc_set_time
.L49:
	.loc 1 151 0
	cmpb	$0, 11(%rdi)
	jns	.L50
	.loc 1 152 0
	call	rtc_set_time
	.loc 1 155 0
	movb	%bpl, 11(%rbx)
	.p2align 4,,4
	jmp	.L56
.LFE196:
	.size	cmos_ioport_write, .-cmos_ioport_write
	.p2align 4,,15
	.type	rtc_copy_date, @function
rtc_copy_date:
.LFB200:
	.loc 1 205 0
.LBB22:
.LBB23:
	.loc 1 171 0
	movzbl	11(%rdi), %r8d
.LBE23:
	.loc 1 170 0
	movl	136(%rdi), %ecx
.LBE22:
	.loc 1 206 0
	leaq	136(%rdi), %r9
.LBB24:
.LBB25:
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	testb	$4, %r8b
	jne	.L59
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r11d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r11d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L59:
.LBE25:
.LBE24:
	.loc 1 170 0
	movb	%dl, (%rdi)
.LBB26:
	movl	4(%r9), %ecx
.LBB27:
	.loc 1 171 0
	testb	$4, %r8b
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L62
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r10d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r10d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L62:
.LBE27:
.LBE26:
	.loc 1 210 0
	movzbl	%r8b, %esi
	.loc 1 170 0
	movb	%dl, 2(%rdi)
	.loc 1 210 0
	testb	$2, %sil
	je	.L64
.LBB28:
	.loc 1 170 0
	movl	8(%r9), %ecx
.LBB29:
	.loc 1 171 0
	andl	$4, %esi
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L66
	.loc 1 174 0
	movslq	%ecx,%rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%esi, %eax
	movl	$10, %esi
	imull	%esi, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L66:
.LBE29:
.LBE28:
	.loc 1 170 0
	movb	%dl, 4(%rdi)
	jmp	.L68
	.p2align 4,,7
.L64:
.LBB30:
	movl	8(%r9), %eax
	movl	$12, %r11d
	movslq	%eax,%rdx
	movl	%eax, %ecx
	imulq	$715827883, %rdx, %rdx
	sarl	$31, %ecx
	shrq	$32, %rdx
	sarl	%edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	imull	%r11d, %edx
	subl	%edx, %ecx
.LBB31:
	.loc 1 171 0
	andl	$4, %esi
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	je	.L85
.L70:
.LBE31:
.LBE30:
	.loc 1 170 0
	movb	%dl, 4(%rdi)
	.loc 1 216 0
	cmpl	$11, 8(%r9)
	jle	.L68
	.loc 1 217 0
	movl	%edx, %eax
	orl	$-128, %eax
	movb	%al, 4(%rdi)
	.p2align 4,,7
.L68:
.LBB32:
	.loc 1 170 0
	movl	24(%r9), %ecx
.LBB33:
	.loc 1 171 0
	testb	$4, %r8b
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L74
	.loc 1 174 0
	movslq	%ecx,%rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%esi, %eax
	movl	$10, %esi
	imull	%esi, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L74:
.LBE33:
.LBE32:
	.loc 1 170 0
	movb	%dl, 6(%rdi)
.LBB34:
	movl	12(%r9), %ecx
.LBB35:
	.loc 1 171 0
	testb	$4, %r8b
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L77
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r11d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r11d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L77:
.LBE35:
.LBE34:
	.loc 1 170 0
	movb	%dl, 7(%rdi)
.LBB36:
	movl	16(%r9), %ecx
	incl	%ecx
.LBB37:
	.loc 1 171 0
	testb	$4, %r8b
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L80
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r10d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r10d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L80:
.LBE37:
.LBE36:
	.loc 1 170 0
	movb	%dl, 8(%rdi)
.LBB38:
	movl	20(%r9), %eax
	movl	$100, %r9d
	movslq	%eax,%rdx
	movl	%eax, %ecx
	imulq	$1374389535, %rdx, %rdx
	sarl	$31, %ecx
	shrq	$32, %rdx
	sarl	$5, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	imull	%r9d, %edx
	subl	%edx, %ecx
.LBB39:
	.loc 1 171 0
	andl	$4, %r8d
	.loc 1 172 0
	movl	%ecx, %edx
	.loc 1 171 0
	jne	.L83
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r8d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r8d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
.L83:
.LBE39:
.LBE38:
	.loc 1 170 0
	movb	%dl, 9(%rdi)
	ret
	.p2align 4,,7
.L85:
.LBB40:
.LBB41:
	.loc 1 174 0
	movslq	%ecx,%rax
	movl	$10, %r10d
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	%esi, %eax
	movl	%esi, %edx
	imull	%r10d, %eax
	sall	$4, %edx
	subl	%eax, %ecx
	orl	%ecx, %edx
	jmp	.L70
.LBE41:
.LBE40:
.LFE200:
	.size	rtc_copy_date, .-rtc_copy_date
	.section	.rodata
	.align 32
	.type	days_tab.0, @object
	.size	days_tab.0, 48
days_tab.0:
	.long	31
	.long	28
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.text
	.p2align 4,,15
	.type	rtc_update_second, @function
rtc_update_second:
.LFB203:
	.loc 1 280 0
	.loc 1 285 0
	movzbl	10(%rdi), %eax
	andl	$112, %eax
	cmpl	$32, %eax
	je	.L87
	.loc 1 286 0
	movq	ticks_per_sec(%rip), %rsi
	addq	232(%rdi), %rsi
	movq	%rsi, 232(%rdi)
	.loc 1 287 0
	movq	240(%rdi), %rdi
	.loc 1 300 0
	jmp	qemu_mod_timer
	.p2align 4,,7
.L87:
.LBB42:
.LBB43:
	.loc 1 247 0
	movl	136(%rdi), %eax
.LBE43:
	.loc 1 244 0
	leaq	136(%rdi), %rcx
.LBB44:
	.loc 1 247 0
	incl	%eax
	.loc 1 248 0
	cmpl	$59, %eax
	ja	.L112
	movl	%eax, 136(%rdi)
.L102:
.LBE44:
.LBE42:
	.loc 1 291 0
	cmpb	$0, 11(%rdi)
	js	.L103
	.loc 1 293 0
	orb	$-128, 10(%rdi)
.L103:
	.loc 1 297 0
	movq	ticks_per_sec(%rip), %rcx
	movabsq	$-6640827866535438581, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	leaq	(%rdx,%rcx), %rsi
	sarq	$6, %rsi
	subq	%rax, %rsi
	.loc 1 299 0
	movl	$1, %eax
	testq	%rsi, %rsi
	cmovle	%rax, %rsi
	.loc 1 300 0
	addq	232(%rdi), %rsi
	movq	248(%rdi), %rdi
	jmp	qemu_mod_timer
	.p2align 4,,7
.L112:
.LBB45:
.LBB46:
	.loc 1 250 0
	movl	4(%rcx), %eax
	.loc 1 249 0
	movl	$0, 136(%rdi)
	.loc 1 250 0
	incl	%eax
	.loc 1 251 0
	cmpl	$59, %eax
	jbe	.L106
	.loc 1 253 0
	movl	8(%rcx), %eax
	.loc 1 252 0
	movl	$0, 4(%rcx)
	.loc 1 253 0
	incl	%eax
	.loc 1 254 0
	cmpl	$23, %eax
	jbe	.L107
	.loc 1 257 0
	movl	24(%rcx), %edx
	.loc 1 259 0
	xorl	%eax, %eax
.LBB47:
	.loc 1 227 0
	movl	20(%rcx), %r9d
.LBE47:
	.loc 1 255 0
	movl	$0, 8(%rcx)
.LBB48:
.LBB49:
	.loc 1 232 0
	movl	$31, %esi
.LBE49:
.LBE48:
	.loc 1 257 0
	incl	%edx
.LBB50:
	.loc 1 227 0
	leal	1900(%r9), %r8d
.LBE50:
	.loc 1 259 0
	cmpl	$7, %edx
	cmovb	%edx, %eax
.LBB51:
	.loc 1 227 0
	movl	16(%rcx), %edx
.LBE51:
	.loc 1 259 0
	movl	%eax, 24(%rcx)
.LBB52:
.LBB53:
	.loc 1 232 0
	cmpl	$11, %edx
	ja	.L94
	.loc 1 234 0
	movslq	%edx,%rax
	.loc 1 235 0
	cmpl	$1, %edx
	.loc 1 234 0
	movl	days_tab.0(,%rax,4), %esi
	.loc 1 235 0
	je	.L113
.L94:
.LBE53:
.LBE52:
	.loc 1 262 0
	movl	12(%rcx), %eax
	incl	%eax
	.loc 1 263 0
	testl	%eax, %eax
	jle	.L114
	.loc 1 265 0
	cmpl	%esi, %eax
	jle	.L109
	.loc 1 267 0
	leal	1(%rdx), %eax
	.loc 1 266 0
	movl	$1, 12(%rcx)
	.loc 1 268 0
	cmpl	$11, %eax
	jle	.L110
	.loc 1 270 0
	leal	1(%r9), %eax
	.loc 1 269 0
	movl	$0, 16(%rcx)
	.loc 1 270 0
	movl	%eax, 20(%rcx)
	jmp	.L102
	.p2align 4,,7
.L106:
	movl	%eax, 4(%rcx)
	jmp	.L102
.L107:
	movl	%eax, 8(%rcx)
	jmp	.L102
.L109:
	movl	%eax, 12(%rcx)
	.p2align 4,,5
	jmp	.L102
.L114:
	.loc 1 264 0
	movl	$1, 12(%rcx)
	.p2align 4,,5
	jmp	.L102
.L110:
	movl	%eax, 16(%rcx)
	.p2align 4,,5
	jmp	.L102
.L113:
.LBB54:
.LBB55:
	.loc 1 236 0
	testb	$3, %r8b
	.p2align 4,,5
	jne	.L94
	movslq	%r8d,%rax
	movl	%r8d, %r11d
	imulq	$1374389535, %rax, %r10
	sarl	$31, %r11d
	shrq	$32, %r10
	movl	%r10d, %eax
	sarl	$5, %eax
	subl	%r11d, %eax
	imull	$100, %eax, %eax
	cmpl	%eax, %r8d
	jne	.L97
	movl	%r10d, %eax
	sarl	$7, %eax
	subl	%r11d, %eax
	imull	$400, %eax, %eax
	cmpl	%eax, %r8d
	jne	.L94
.L97:
	.loc 1 237 0
	incl	%esi
	jmp	.L94
.LBE55:
.LBE54:
.LBE46:
.LBE45:
.LFE203:
	.size	rtc_update_second, .-rtc_update_second
	.p2align 4,,15
	.type	rtc_update_second2, @function
rtc_update_second2:
.LFB204:
	.loc 1 306 0
	pushq	%rbx
.LCFI7:
	.loc 1 309 0
	movzbl	11(%rdi), %edx
	.loc 1 306 0
	movq	%rdi, %rbx
	.loc 1 309 0
	testb	%dl, %dl
	js	.L116
	.loc 1 310 0
	call	rtc_copy_date
	movzbl	11(%rbx), %edx
.L116:
	.loc 1 314 0
	testb	$32, %dl
	je	.L117
	.loc 1 315 0
	movzbl	1(%rbx), %ecx
	movl	%ecx, %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.L119
	cmpl	136(%rbx), %ecx
	je	.L119
	.p2align 4,,7
.L117:
	.loc 1 328 0
	andl	$16, %edx
	jne	.L125
.L123:
	.loc 1 334 0
	andb	$127, 10(%rbx)
	.loc 1 337 0
	movq	240(%rbx), %rdi
	.loc 1 336 0
	movq	ticks_per_sec(%rip), %rsi
	addq	232(%rbx), %rsi
	movq	%rsi, 232(%rbx)
	.loc 1 337 0
	popq	%rbx
	jmp	qemu_mod_timer
	.p2align 4,,7
.L119:
	.loc 1 315 0
	movzbl	3(%rbx), %ecx
	movl	%ecx, %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.L120
	cmpl	152(%rbx), %ecx
	jne	.L117
.L120:
	movzbl	5(%rbx), %ecx
	movl	%ecx, %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.L121
	cmpl	144(%rbx), %ecx
	jne	.L117
.L121:
	.loc 1 322 0
	orb	$-96, 12(%rbx)
.LBB56:
	.loc 2 13 0
	movq	192(%rbx), %rdi
.LBB57:
	.loc 2 14 0
	movl	$1, %esi
	call	qemu_set_irq
	movzbl	11(%rbx), %edx
	jmp	.L117
	.p2align 4,,7
.L125:
.LBE57:
.LBE56:
	.loc 1 329 0
	orb	$-112, 12(%rbx)
.LBB58:
	.loc 2 13 0
	movq	192(%rbx), %rdi
.LBB59:
	.loc 2 14 0
	movl	$1, %esi
	call	qemu_set_irq
	jmp	.L123
.LBE59:
.LBE58:
.LFE204:
	.size	rtc_update_second2, .-rtc_update_second2
	.p2align 4,,15
	.type	cmos_ioport_read, @function
cmos_ioport_read:
.LFB205:
	.loc 1 341 0
	movq	%rbp, -8(%rsp)
.LCFI8:
	movq	%rbx, -16(%rsp)
.LCFI9:
	subq	$24, %rsp
.LCFI10:
	.loc 1 344 0
	andl	$1, %esi
	.loc 1 341 0
	movq	%rdi, %rbp
	.loc 1 345 0
	movl	$255, %eax
	.loc 1 344 0
	je	.L126
	.loc 1 347 0
	movzbl	128(%rdi), %eax
	movzbl	%al, %ecx
	cmpl	$12, %ecx
	ja	.L140
	movl	$1, %edx
	salq	%cl, %rdx
	testl	$981, %edx 
	jne	.L140
	testb	$4, %dh
	jne	.L140
	andb	$16, %dh
	jne	.L141
	.p2align 4,,7
.L140:
	.loc 1 366 0
	movzbl	%al, %eax 
	movzbl	(%rbp,%rax), %ebx
.L129:
	.loc 1 373 0
	movl	%ebx, %eax
.L126:
	.loc 1 375 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.L141:
	.loc 1 361 0
	movzbl	%al, %eax 
.LBB60:
.LBB61:
	.loc 2 19 0
	xorl	%esi, %esi
.LBE61:
.LBE60:
	.loc 1 361 0
	movzbl	(%rdi,%rax), %ebx
.LBB62:
	.loc 2 18 0
	movq	192(%rdi), %rdi
.LBB63:
	.loc 2 19 0
	call	qemu_set_irq
.LBE63:
.LBE62:
	.loc 1 363 0
	movb	$0, 12(%rbp)
	jmp	.L129
.LFE205:
	.size	cmos_ioport_read, .-cmos_ioport_read
	.p2align 4,,15
.globl rtc_set_memory
	.type	rtc_set_memory, @function
rtc_set_memory:
.LFB206:
	.loc 1 378 0
	.loc 1 379 0
	cmpl	$127, %esi
	ja	.L142
	.loc 1 380 0
	movslq	%esi,%rax
	movb	%dl, (%rdi,%rax)
.L142:
	rep ; ret
.LFE206:
	.size	rtc_set_memory, .-rtc_set_memory
	.p2align 4,,15
.globl rtc_set_date
	.type	rtc_set_date, @function
rtc_set_date:
.LFB207:
	.loc 1 384 0
	.loc 1 385 0
	movq	(%rsi), %rax
	movq	%rax, 136(%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 144(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 152(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 160(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 168(%rdi)
	movq	40(%rsi), %rax
	movq	%rax, 176(%rdi)
	movq	48(%rsi), %rax
	movq	%rax, 184(%rdi)
	.loc 1 386 0
	jmp	rtc_copy_date
.LFE207:
	.size	rtc_set_date, .-rtc_set_date
	.p2align 4,,15
	.type	rtc_set_date_from_host, @function
rtc_set_date_from_host:
.LFB208:
	.loc 1 394 0
	pushq	%rbp
.LCFI11:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI12:
	subq	$8, %rsp
.LCFI13:
	.loc 1 400 0
	movl	rtc_start_date(%rip), %eax
	cmpl	$-1, %eax
	je	.L155
	.loc 1 407 0
	cltq
	movq	%rax, (%rsp)
.L154:
	.loc 1 408 0
	movq	%rsp, %rdi
	call	gmtime
.L153:
	movq	%rax, %rbx
	.loc 1 410 0
	movq	%rax, %rsi
	movq	%rbp, %rdi
	call	rtc_set_date
.LBB64:
	.loc 1 170 0
	movl	20(%rbx), %edx
	movslq	%edx,%rax
	sarl	$31, %edx
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	subl	%edx, %eax
.LBB65:
	.loc 1 171 0
	testb	$4, 11(%rbp)
.LBE65:
	.loc 1 170 0
	leal	19(%rax), %ecx
.LBB66:
	.loc 1 172 0
	movl	%ecx, %ebx
	.loc 1 171 0
	jne	.L151
	.loc 1 174 0
	movslq	%ecx,%rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	sarl	$2, %esi
	subl	%edx, %esi
	movl	$10, %edx
	movl	%esi, %eax
	movl	%esi, %ebx
	imull	%edx, %eax
	sall	$4, %ebx
	subl	%eax, %ecx
	orl	%ecx, %ebx
.L151:
.LBE66:
.LBE64:
	.loc 1 413 0
	movl	%ebx, %edx
	movq	%rbp, %rdi
	movl	$50, %esi
	call	rtc_set_memory
	.loc 1 414 0
	movl	%ebx, %edx
	movq	%rbp, %rdi
	movl	$55, %esi
	call	rtc_set_memory
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.p2align 4,,7
.L155:
	.loc 1 401 0
	movq	%rsp, %rdi
	call	time
	.loc 1 402 0
	movl	rtc_utc(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L154
	.loc 1 405 0
	movq	%rsp, %rdi
	call	localtime
	jmp	.L153
.LFE208:
	.size	rtc_set_date_from_host, .-rtc_set_date_from_host
	.p2align 4,,15
	.type	rtc_save, @function
rtc_save:
.LFB209:
	.loc 1 418 0
	pushq	%r12
.LCFI14:
	.loc 1 421 0
	movl	$128, %edx
	.loc 1 418 0
	movq	%rdi, %r12
	pushq	%rbx
.LCFI15:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI16:
	.loc 1 421 0
	call	qemu_put_buffer
.LBB67:
.LBB68:
	.file 3 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 3 42 0
	movzbl	128(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_byte
.LBE68:
.LBE67:
	.loc 1 424 0
	movl	136(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 425 0
	movl	140(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 426 0
	movl	144(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 427 0
	movl	160(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 428 0
	movl	148(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 429 0
	movl	152(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 430 0
	movl	156(%rbx), %esi
	movq	%r12, %rdi
	call	qemu_put_be32
	.loc 1 432 0
	movq	216(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_timer
	.loc 1 433 0
	movq	224(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
	.loc 1 435 0
	movq	232(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_be64
	.loc 1 436 0
	movq	240(%rbx), %rsi
	movq	%r12, %rdi
	call	qemu_put_timer
	.loc 1 437 0
	movq	248(%rbx), %rsi
	addq	$8, %rsp
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	jmp	qemu_put_timer
.LFE209:
	.size	rtc_save, .-rtc_save
	.p2align 4,,15
	.type	rtc_load, @function
rtc_load:
.LFB210:
	.loc 1 441 0
	pushq	%rbp
.LCFI17:
	.loc 1 445 0
	movl	$-22, %eax
	.loc 1 441 0
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI18:
	movq	%rsi, %rbx
	subq	$8, %rsp
.LCFI19:
	.loc 1 444 0
	cmpl	$1, %edx
	jne	.L158
	.loc 1 447 0
	movb	$-128, %dl
	call	qemu_get_buffer
.LBB69:
.LBB70:
	.loc 3 62 0
	movq	%rbp, %rdi
	call	qemu_get_byte
.LBE70:
.LBE69:
	.loc 1 450 0
	movq	%rbp, %rdi
.LBB71:
.LBB72:
	.loc 3 62 0
	movb	%al, 128(%rbx)
.LBE72:
.LBE71:
	.loc 1 450 0
	call	qemu_get_be32
	.loc 1 451 0
	movq	%rbp, %rdi
	.loc 1 450 0
	movl	%eax, 136(%rbx)
	.loc 1 451 0
	call	qemu_get_be32
	.loc 1 452 0
	movq	%rbp, %rdi
	.loc 1 451 0
	movl	%eax, 140(%rbx)
	.loc 1 452 0
	call	qemu_get_be32
	.loc 1 453 0
	movq	%rbp, %rdi
	.loc 1 452 0
	movl	%eax, 144(%rbx)
	.loc 1 453 0
	call	qemu_get_be32
	.loc 1 454 0
	movq	%rbp, %rdi
	.loc 1 453 0
	movl	%eax, 160(%rbx)
	.loc 1 454 0
	call	qemu_get_be32
	.loc 1 455 0
	movq	%rbp, %rdi
	.loc 1 454 0
	movl	%eax, 148(%rbx)
	.loc 1 455 0
	call	qemu_get_be32
	.loc 1 456 0
	movq	%rbp, %rdi
	.loc 1 455 0
	movl	%eax, 152(%rbx)
	.loc 1 456 0
	call	qemu_get_be32
	.loc 1 458 0
	movq	216(%rbx), %rsi
	.loc 1 456 0
	movl	%eax, 156(%rbx)
	.loc 1 458 0
	movq	%rbp, %rdi
	call	qemu_get_timer
	.loc 1 459 0
	movq	%rbp, %rdi
	call	qemu_get_be64
	.loc 1 461 0
	movq	%rbp, %rdi
	.loc 1 459 0
	movq	%rax, 224(%rbx)
	.loc 1 461 0
	call	qemu_get_be64
	.loc 1 462 0
	movq	240(%rbx), %rsi
	.loc 1 461 0
	movq	%rax, 232(%rbx)
	.loc 1 462 0
	movq	%rbp, %rdi
	call	qemu_get_timer
	.loc 1 463 0
	movq	248(%rbx), %rsi
	movq	%rbp, %rdi
	call	qemu_get_timer
	.loc 1 464 0
	xorl	%eax, %eax
.L158:
	.loc 1 465 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE210:
	.size	rtc_load, .-rtc_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mc146818rtc"
	.text
	.p2align 4,,15
.globl rtc_init
	.type	rtc_init, @function
rtc_init:
.LFB211:
	.loc 1 468 0
	pushq	%r12
.LCFI20:
	movl	%edi, %r12d
	.loc 1 471 0
	movl	$256, %edi
	.loc 1 468 0
	pushq	%rbp
.LCFI21:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI22:
	.loc 1 471 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 473 0
	xorl	%eax, %eax
	.loc 1 472 0
	testq	%rbx, %rbx
	je	.L161
	.loc 1 481 0
	movq	%rbx, %rdi
	.loc 1 475 0
	movq	%rbp, 192(%rbx)
	.loc 1 476 0
	movb	$38, 10(%rbx)
	.loc 1 477 0
	movb	$2, 11(%rbx)
	.loc 1 478 0
	movb	$0, 12(%rbx)
	.loc 1 479 0
	movb	$-128, 13(%rbx)
	.loc 1 481 0
	call	rtc_set_date_from_host
	.loc 1 483 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_periodic_timer, %esi
	call	qemu_new_timer
	movq	%rax, 216(%rbx)
	.loc 1 485 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_update_second, %esi
	call	qemu_new_timer
	movq	%rax, 240(%rbx)
	.loc 1 487 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_update_second2, %esi
	call	qemu_new_timer
	movq	%rax, 248(%rbx)
	.loc 1 490 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	ticks_per_sec(%rip), %rcx
	movl	$99, %edi
	movq	%rax, %rsi
	movabsq	$-6640827866535438581, %rdx
	imulq	%rdi, %rcx
	.loc 1 491 0
	movq	248(%rbx), %rdi
	.loc 1 490 0
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	sarq	$63, %rcx
	sarq	$6, %rdx
	subq	%rcx, %rdx
	addq	%rdx, %rsi
	movq	%rsi, 232(%rbx)
	.loc 1 491 0
	call	qemu_mod_timer
	.loc 1 493 0
	movq	%rbx, %r8
	movl	$cmos_ioport_write, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	register_ioport_write
	.loc 1 494 0
	movq	%rbx, %r8
	movl	$cmos_ioport_read, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	%r12d, %edi
	call	register_ioport_read
	.loc 1 496 0
	movq	%rbx, %r9
	movl	$rtc_load, %r8d
	movl	$rtc_save, %ecx
	movl	$1, %edx
	movl	%r12d, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 497 0
	movq	%rbx, %rax
.L161:
	.loc 1 498 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
.LFE211:
	.size	rtc_init, .-rtc_init
	.p2align 4,,15
	.type	cmos_mm_readb, @function
cmos_mm_readb:
.LFB212:
	.loc 1 502 0
	subq	$8, %rsp
.LCFI23:
	.loc 1 505 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	cmos_ioport_read
	.loc 1 506 0
	addq	$8, %rsp
	.loc 1 505 0
	andl	$255, %eax
	.loc 1 506 0
	ret
.LFE212:
	.size	cmos_mm_readb, .-cmos_mm_readb
	.p2align 4,,15
	.type	cmos_mm_writeb, @function
cmos_mm_writeb:
.LFB213:
	.loc 1 510 0
	.loc 1 513 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	andl	$255, %edx
	shrq	%cl, %rsi
	jmp	cmos_ioport_write
.LFE213:
	.size	cmos_mm_writeb, .-cmos_mm_writeb
	.p2align 4,,15
	.type	cmos_mm_readw, @function
cmos_mm_readw:
.LFB214:
	.loc 1 517 0
	subq	$8, %rsp
.LCFI24:
	.loc 1 521 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	call	cmos_ioport_read
	.loc 1 526 0
	addq	$8, %rsp
	.loc 1 521 0
	andl	$65535, %eax
	.loc 1 526 0
	ret
.LFE214:
	.size	cmos_mm_readw, .-cmos_mm_readw
	.p2align 4,,15
	.type	cmos_mm_writew, @function
cmos_mm_writew:
.LFB215:
	.loc 1 530 0
	.loc 1 535 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	andl	$65535, %edx
	shrq	%cl, %rsi
	jmp	cmos_ioport_write
.LFE215:
	.size	cmos_mm_writew, .-cmos_mm_writew
	.p2align 4,,15
	.type	cmos_mm_readl, @function
cmos_mm_readl:
.LFB216:
	.loc 1 539 0
	.loc 1 543 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	xorl	%edx, %edx
	shrq	%cl, %rsi
	jmp	cmos_ioport_read
.LFE216:
	.size	cmos_mm_readl, .-cmos_mm_readl
	.p2align 4,,15
	.type	cmos_mm_writel, @function
cmos_mm_writel:
.LFB217:
	.loc 1 552 0
	.loc 1 557 0
	subq	200(%rdi), %rsi
	movl	208(%rdi), %ecx
	shrq	%cl, %rsi
	jmp	cmos_ioport_write
.LFE217:
	.size	cmos_mm_writel, .-cmos_mm_writel
	.p2align 4,,15
.globl rtc_mm_init
	.type	rtc_mm_init, @function
rtc_mm_init:
.LFB218:
	.loc 1 573 0
	pushq	%r13
.LCFI25:
	movl	%esi, %r13d
	pushq	%r12
.LCFI26:
	movq	%rdi, %r12
	.loc 1 577 0
	movl	$256, %edi
	.loc 1 573 0
	pushq	%rbp
.LCFI27:
	movq	%rdx, %rbp
	pushq	%rbx
.LCFI28:
	subq	$8, %rsp
.LCFI29:
	.loc 1 577 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 579 0
	xorl	%eax, %eax
	.loc 1 578 0
	testq	%rbx, %rbx
	je	.L169
	.loc 1 588 0
	movq	%rbx, %rdi
	.loc 1 581 0
	movq	%rbp, 192(%rbx)
	.loc 1 582 0
	movb	$38, 10(%rbx)
	.loc 1 583 0
	movb	$2, 11(%rbx)
	.loc 1 584 0
	movb	$0, 12(%rbx)
	.loc 1 585 0
	movb	$-128, 13(%rbx)
	.loc 1 586 0
	movq	%r12, 200(%rbx)
	.loc 1 588 0
	call	rtc_set_date_from_host
	.loc 1 590 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_periodic_timer, %esi
	call	qemu_new_timer
	movq	%rax, 216(%rbx)
	.loc 1 592 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_update_second, %esi
	call	qemu_new_timer
	movq	%rax, 240(%rbx)
	.loc 1 594 0
	movq	vm_clock(%rip), %rdi
	movq	%rbx, %rdx
	movl	$rtc_update_second2, %esi
	call	qemu_new_timer
	movq	%rax, 248(%rbx)
	.loc 1 597 0
	movq	vm_clock(%rip), %rdi
	call	qemu_get_clock
	movq	ticks_per_sec(%rip), %rcx
	movl	$99, %r8d
	movq	%rax, %rsi
	movabsq	$-6640827866535438581, %rdx
	.loc 1 598 0
	movq	248(%rbx), %rdi
	.loc 1 597 0
	imulq	%r8, %rcx
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	sarq	$63, %rcx
	sarq	$6, %rdx
	subq	%rcx, %rdx
	addq	%rdx, %rsi
	movq	%rsi, 232(%rbx)
	.loc 1 598 0
	call	qemu_mod_timer
	.loc 1 600 0
	movq	%rbx, %rcx
	movl	$rtc_mm_write, %edx
	movl	$rtc_mm_read, %esi
	xorl	%edi, %edi
	call	cpu_register_io_memory
	.loc 1 601 0
	movl	%r13d, %ecx
	movl	$2, %esi
	movslq	%eax,%rdx
	sall	%cl, %esi
	movq	%r12, %rdi
	movslq	%esi,%rsi
	call	cpu_register_physical_memory
	.loc 1 603 0
	movq	%rbx, %r9
	movl	$rtc_load, %r8d
	movl	$rtc_save, %ecx
	movl	$1, %edx
	movl	%r12d, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 604 0
	movq	%rbx, %rax
.L169:
	.loc 1 605 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE218:
	.size	rtc_mm_init, .-rtc_mm_init
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
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.byte	0x4
	.long	.LCFI0-.LFB194
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI0
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x4
	.long	.LCFI3-.LFB195
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI6-.LFB196
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI7-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI10-.LFB205
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI11-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI14-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI17-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI20-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI23-.LFB212
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI24-.LFB214
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI25-.LFB218
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE40:
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
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI0
	.byte	0xe
	.uleb128 0x20
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
	.byte	0x4
	.long	.LCFI3-.LFB195
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
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.byte	0x4
	.long	.LCFI6-.LFB196
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
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.byte	0x4
	.long	.LCFI7-.LFB204
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.byte	0x4
	.long	.LCFI10-.LFB205
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI11-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI14-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.byte	0x4
	.long	.LCFI17-.LFB210
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.byte	0x4
	.long	.LCFI20-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x86
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x4
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.byte	0x4
	.long	.LCFI23-.LFB212
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE29:
.LSFDE31:
	.long	.LEFDE31-.LASFDE31
.LASFDE31:
	.long	.LASFDE31-.Lframe1
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.align 8
.LEFDE31:
.LSFDE33:
	.long	.LEFDE33-.LASFDE33
.LASFDE33:
	.long	.LASFDE33-.Lframe1
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.byte	0x4
	.long	.LCFI24-.LFB214
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE33:
.LSFDE35:
	.long	.LEFDE35-.LASFDE35
.LASFDE35:
	.long	.LASFDE35-.Lframe1
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.align 8
.LEFDE35:
.LSFDE37:
	.long	.LEFDE37-.LASFDE37
.LASFDE37:
	.long	.LASFDE37-.Lframe1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.align 8
.LEFDE37:
.LSFDE39:
	.long	.LEFDE39-.LASFDE39
.LASFDE39:
	.long	.LASFDE39-.Lframe1
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.align 8
.LEFDE39:
.LSFDE41:
	.long	.LEFDE41-.LASFDE41
.LASFDE41:
	.long	.LASFDE41-.Lframe1
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.byte	0x4
	.long	.LCFI25-.LFB218
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE41:
	.file 4 "/home/remco/Projects/Argos/src/hw/pc.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/time.h"
	.file 7 "../qemu-common.h"
	.file 8 "../cpu-defs.h"
	.file 9 "/usr/include/sys/types.h"
	.file 10 "../argos-tag.h"
	.file 11 "../argos.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/libio.h"
	.file 15 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 16 "../cpu-all.h"
	.file 17 "../qemu-timer.h"
	.file 18 "../sysemu.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x12cd
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF161
	.byte	0x1
	.long	.LASF162
	.long	.LASF163
	.uleb128 0x2
	.long	.LASF9
	.byte	0xf
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
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x5
	.long	0x79
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0xc
	.byte	0x95
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x4c
	.long	0xab
	.uleb128 0x2
	.long	.LASF14
	.byte	0x9
	.byte	0xc6
	.long	0x4d
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0x2a7
	.long	.LASF46
	.byte	0xd8
	.byte	0xd
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF16
	.byte	0xe
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF17
	.byte	0xe
	.value	0x115
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0xe
	.value	0x116
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0xe
	.value	0x117
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF20
	.byte	0xe
	.value	0x118
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF21
	.byte	0xe
	.value	0x119
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF22
	.byte	0xe
	.value	0x11a
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF23
	.byte	0xe
	.value	0x11b
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF24
	.byte	0xe
	.value	0x11c
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF25
	.byte	0xe
	.value	0x11e
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF26
	.byte	0xe
	.value	0x11f
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF27
	.byte	0xe
	.value	0x120
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF28
	.byte	0xe
	.value	0x122
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF29
	.byte	0xe
	.value	0x124
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF30
	.byte	0xe
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF31
	.byte	0xe
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF32
	.byte	0xe
	.value	0x12c
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF33
	.byte	0xe
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF34
	.byte	0xe
	.value	0x131
	.long	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF35
	.byte	0xe
	.value	0x132
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF36
	.byte	0xe
	.value	0x136
	.long	0x301
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF37
	.byte	0xe
	.value	0x13f
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF38
	.byte	0xe
	.value	0x148
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF39
	.byte	0xe
	.value	0x149
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xe
	.value	0x14a
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xe
	.value	0x14b
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF42
	.byte	0xe
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF43
	.byte	0xe
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF44
	.byte	0xe
	.value	0x150
	.long	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xa
	.long	.LASF45
	.byte	0xe
	.byte	0xb4
	.uleb128 0x8
	.long	0x2e5
	.long	.LASF47
	.byte	0x18
	.byte	0xe
	.byte	0xba
	.uleb128 0xb
	.long	.LASF48
	.byte	0xe
	.byte	0xbb
	.long	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF49
	.byte	0xe
	.byte	0xbc
	.long	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF50
	.byte	0xe
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x6
	.byte	0x8
	.long	0xdb
	.uleb128 0xc
	.long	0x301
	.long	0x79
	.uleb128 0xd
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a7
	.uleb128 0xc
	.long	0x317
	.long	0x79
	.uleb128 0xd
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x31
	.long	0x80
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x38
	.long	0x38
	.uleb128 0xe
	.long	0x3de
	.string	"tm"
	.byte	0x38
	.byte	0x6
	.byte	0x86
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0x87
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.byte	0x88
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.byte	0x89
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.byte	0x8a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF58
	.byte	0x6
	.byte	0x8b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF59
	.byte	0x6
	.byte	0x8c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.long	.LASF60
	.byte	0x6
	.byte	0x8d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF61
	.byte	0x6
	.byte	0x8e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.long	.LASF62
	.byte	0x6
	.byte	0x8f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF63
	.byte	0x6
	.byte	0x92
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF64
	.byte	0x6
	.byte	0x93
	.long	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x49
	.long	0x32d
	.uleb128 0x3
	.long	.LASF66
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF67
	.byte	0x8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF68
	.byte	0x10
	.byte	0x4
	.uleb128 0x2
	.long	.LASF69
	.byte	0xb
	.byte	0x2f
	.long	0x322
	.uleb128 0x2
	.long	.LASF70
	.byte	0xb
	.byte	0x34
	.long	0x322
	.uleb128 0x8
	.long	0x43d
	.long	.LASF71
	.byte	0x8
	.byte	0xa
	.byte	0x37
	.uleb128 0xb
	.long	.LASF72
	.byte	0xa
	.byte	0x38
	.long	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF73
	.byte	0xa
	.byte	0x39
	.long	0x409
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x3d
	.long	0x414
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.value	0x388
	.long	0x454
	.uleb128 0x10
	.long	0x46f
	.byte	0x1
	.uleb128 0x11
	.long	0xb6
	.uleb128 0x11
	.long	0x3de
	.uleb128 0x11
	.long	0x322
	.uleb128 0x11
	.long	0x46f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x475
	.uleb128 0x5
	.long	0x43d
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.value	0x389
	.long	0x486
	.uleb128 0x12
	.long	0x4a0
	.byte	0x1
	.long	0x322
	.uleb128 0x11
	.long	0xb6
	.uleb128 0x11
	.long	0x3de
	.uleb128 0x11
	.long	0x4a0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x43d
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0x5
	.long	0x317
	.uleb128 0x2
	.long	.LASF77
	.byte	0x7
	.byte	0x6e
	.long	0x4bc
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.uleb128 0x2
	.long	.LASF78
	.byte	0x7
	.byte	0x73
	.long	0x4cd
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.uleb128 0x2
	.long	.LASF79
	.byte	0x7
	.byte	0x77
	.long	0x4de
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.uleb128 0x2
	.long	.LASF80
	.byte	0x7
	.byte	0x7b
	.long	0x4ef
	.uleb128 0x6
	.byte	0x8
	.long	0x4f5
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x4c2
	.uleb128 0x2
	.long	.LASF82
	.byte	0x11
	.byte	0x6
	.long	0x50c
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.uleb128 0x14
	.long	0x53f
	.byte	0x4
	.byte	0x12
	.byte	0x77
	.uleb128 0x15
	.long	.LASF83
	.sleb128 0
	.uleb128 0x15
	.long	.LASF84
	.sleb128 1
	.uleb128 0x15
	.long	.LASF85
	.sleb128 2
	.uleb128 0x15
	.long	.LASF86
	.sleb128 3
	.uleb128 0x15
	.long	.LASF87
	.sleb128 4
	.uleb128 0x15
	.long	.LASF88
	.sleb128 5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x12
	.byte	0x79
	.long	0x512
	.uleb128 0x8
	.long	0x58f
	.long	.LASF90
	.byte	0x18
	.byte	0x12
	.byte	0x7b
	.uleb128 0xb
	.long	.LASF91
	.byte	0x12
	.byte	0x7c
	.long	0x58f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x12
	.byte	0x7d
	.long	0x53f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"bus"
	.byte	0x12
	.byte	0x7e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.long	.LASF93
	.byte	0x12
	.byte	0x7f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b1
	.uleb128 0x2
	.long	.LASF90
	.byte	0x12
	.byte	0x80
	.long	0x54a
	.uleb128 0x2
	.long	.LASF94
	.byte	0x4
	.byte	0x4c
	.long	0x5ab
	.uleb128 0x17
	.long	0x65d
	.long	.LASF94
	.value	0x100
	.byte	0x4
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.byte	0x3a
	.long	0x65d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF96
	.byte	0x1
	.byte	0x3b
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF97
	.byte	0x1
	.byte	0x3c
	.long	0x338
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.string	"irq"
	.byte	0x1
	.byte	0x3d
	.long	0x4e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x1
	.byte	0x3e
	.long	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.byte	0x3f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.long	.LASF100
	.byte	0x1
	.byte	0x41
	.long	0x66d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.long	.LASF101
	.byte	0x1
	.byte	0x42
	.long	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.long	.LASF102
	.byte	0x1
	.byte	0x44
	.long	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.long	.LASF103
	.byte	0x1
	.byte	0x45
	.long	0x66d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.byte	0x46
	.long	0x66d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0xc
	.long	0x66d
	.long	0x317
	.uleb128 0xd
	.long	0x5b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d3
	.uleb128 0x18
	.long	0x6de
	.long	.LASF110
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.quad	.LFB194
	.quad	.LFE194
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x4c
	.long	0x6de
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.byte	0x4c
	.long	0xc9
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.byte	0x4f
	.long	0xc9
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x1
	.byte	0x4f
	.long	0xc9
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a0
	.uleb128 0x18
	.long	0x736
	.long	.LASF111
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB195
	.quad	.LFE195
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.byte	0x62
	.long	0xb6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x64
	.long	0x6de
	.uleb128 0x1d
	.long	0x736
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1e
	.long	0x743
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x74f
	.long	.LASF113
	.byte	0x2
	.byte	0xd
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.string	"irq"
	.byte	0x2
	.byte	0xc
	.long	0x4e4
	.byte	0x0
	.uleb128 0x18
	.long	0x88b
	.long	.LASF114
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.quad	.LFB199
	.quad	.LFE199
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xbb
	.long	0x6de
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"tm"
	.byte	0x1
	.byte	0xbd
	.long	0x88b
	.byte	0x1
	.byte	0x58
	.uleb128 0x22
	.long	0x7aa
	.long	0x891
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x7d0
	.long	0x891
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x7f6
	.long	0x891
	.quad	.LBB12
	.quad	.LBE12
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.long	0x81c
	.long	0x891
	.quad	.LBB14
	.quad	.LBE14
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x842
	.long	0x891
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.long	0x868
	.long	0x891
	.quad	.LBB18
	.quad	.LBE18
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1d
	.long	0x891
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x23
	.long	0x8a2
	.uleb128 0x1e
	.long	0x8ab
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x338
	.uleb128 0x24
	.long	0x8b5
	.long	.LASF115
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xb2
	.long	0x6de
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0xb2
	.long	0x3f
	.byte	0x0
	.uleb128 0x18
	.long	0x904
	.long	.LASF116
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.quad	.LFB196
	.quad	.LFE196
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.byte	0x6b
	.long	0xb6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.byte	0x6b
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.byte	0x6b
	.long	0x322
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x6d
	.long	0x6de
	.byte	0x0
	.uleb128 0x18
	.long	0xa66
	.long	.LASF119
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.quad	.LFB200
	.quad	.LFE200
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xcc
	.long	0x6de
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"tm"
	.byte	0x1
	.byte	0xce
	.long	0xa66
	.byte	0x1
	.byte	0x59
	.uleb128 0x22
	.long	0x95f
	.long	0xa71
	.quad	.LBB22
	.quad	.LBE22
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x985
	.long	0xa71
	.quad	.LBB26
	.quad	.LBE26
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x9ab
	.long	0xa71
	.quad	.LBB28
	.quad	.LBE28
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x9d1
	.long	0xa71
	.quad	.LBB30
	.quad	.LBE30
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0x9f7
	.long	0xa71
	.quad	.LBB32
	.quad	.LBE32
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0xa1d
	.long	0xa71
	.quad	.LBB34
	.quad	.LBE34
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.long	0xa43
	.long	0xa71
	.quad	.LBB36
	.quad	.LBE36
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.long	0xa71
	.quad	.LBB38
	.quad	.LBE38
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6c
	.uleb128 0x5
	.long	0x338
	.uleb128 0x24
	.long	0xa95
	.long	.LASF120
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xa9
	.long	0x6de
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0xa9
	.long	0x3f
	.byte	0x0
	.uleb128 0x25
	.long	0xb3c
	.long	.LASF121
	.byte	0x1
	.value	0x118
	.byte	0x1
	.quad	.LFB203
	.quad	.LFE203
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x117
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x119
	.long	0x6de
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.long	.LASF122
	.byte	0x1
	.value	0x11a
	.long	0xc9
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.long	0xb08
	.long	0xb3c
	.quad	.LBB42
	.quad	.LBE42
	.uleb128 0x1e
	.long	0xb49
	.byte	0x1
	.byte	0x52
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x2a
	.long	0xb53
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xb2e
	.long	0xb5f
	.quad	.LBB47
	.quad	.LBE47
	.uleb128 0x23
	.long	0xb70
	.uleb128 0x1e
	.long	0xb7b
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x2b
	.long	0xb91
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0xb5f
	.long	.LASF123
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"tm"
	.byte	0x1
	.byte	0xf3
	.long	0x88b
	.uleb128 0x2c
	.long	.LASF124
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.byte	0x0
	.uleb128 0x24
	.long	0xb9b
	.long	.LASF125
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF126
	.byte	0x1
	.byte	0xe2
	.long	0x3f
	.uleb128 0x2d
	.long	.LASF127
	.byte	0x1
	.byte	0xe2
	.long	0x3f
	.uleb128 0x2c
	.long	.LASF128
	.byte	0x1
	.byte	0xe4
	.long	0xbab
	.uleb128 0x1c
	.string	"d"
	.byte	0x1
	.byte	0xe7
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0xbab
	.long	0x69
	.uleb128 0xd
	.long	0x5b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.long	0xb9b
	.uleb128 0x25
	.long	0xc28
	.long	.LASF129
	.byte	0x1
	.value	0x132
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x131
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x133
	.long	0x6de
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.long	0xc0a
	.long	0x736
	.quad	.LBB56
	.quad	.LBE56
	.uleb128 0x1e
	.long	0x743
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x1d
	.long	0x736
	.quad	.LBB58
	.quad	.LBE58
	.uleb128 0x1e
	.long	0x743
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xca9
	.long	.LASF130
	.byte	0x1
	.value	0x155
	.byte	0x1
	.long	0x322
	.quad	.LFB205
	.quad	.LFE205
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x154
	.long	0xb6
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x154
	.long	0x322
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x154
	.long	0x4a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x156
	.long	0x6de
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x157
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	0xca9
	.quad	.LBB60
	.quad	.LBE60
	.uleb128 0x1e
	.long	0xcb6
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0xcc2
	.long	.LASF131
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0x4e4
	.byte	0x0
	.uleb128 0x31
	.long	0xd0b
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.value	0x17a
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x179
	.long	0x6de
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x179
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x179
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x31
	.long	0xd45
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.value	0x180
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x17f
	.long	0x6de
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.string	"tm"
	.byte	0x1
	.value	0x17f
	.long	0xa66
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x25
	.long	0xdba
	.long	.LASF134
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x189
	.long	0x6de
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"ti"
	.byte	0x1
	.value	0x18b
	.long	0xbe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"tm"
	.byte	0x1
	.value	0x18c
	.long	0x88b
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x18d
	.long	0x3f
	.uleb128 0x1d
	.long	0xa71
	.quad	.LBB64
	.quad	.LBE64
	.uleb128 0x23
	.long	0xa82
	.uleb128 0x1e
	.long	0xa8b
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0xe1e
	.long	.LASF135
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x1a1
	.long	0x4fb
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x1a1
	.long	0xb6
	.byte	0x1
	.byte	0x53
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x1a3
	.long	0x6de
	.uleb128 0x1d
	.long	0xe1e
	.quad	.LBB67
	.quad	.LBE67
	.uleb128 0x23
	.long	0xe2b
	.uleb128 0x23
	.long	0xe34
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0xe3f
	.long	.LASF136
	.byte	0x3
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.string	"f"
	.byte	0x3
	.byte	0x28
	.long	0x4fb
	.uleb128 0x20
	.string	"pv"
	.byte	0x3
	.byte	0x28
	.long	0x4a6
	.byte	0x0
	.uleb128 0x2e
	.long	0xeb5
	.long	.LASF137
	.byte	0x1
	.value	0x1b9
	.byte	0x1
	.long	0x3f
	.quad	.LFB210
	.quad	.LFE210
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x1b8
	.long	0x4fb
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x1b8
	.long	0xb6
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF138
	.byte	0x1
	.value	0x1b8
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x1ba
	.long	0x6de
	.uleb128 0x1d
	.long	0xeb5
	.quad	.LBB69
	.quad	.LBE69
	.uleb128 0x23
	.long	0xec2
	.uleb128 0x23
	.long	0xecb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0xed6
	.long	.LASF139
	.byte	0x3
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.string	"f"
	.byte	0x3
	.byte	0x3c
	.long	0x4fb
	.uleb128 0x20
	.string	"pv"
	.byte	0x3
	.byte	0x3c
	.long	0xed6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x32
	.long	0xf29
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.value	0x1d4
	.byte	0x1
	.long	0x6de
	.quad	.LFB211
	.quad	.LFE211
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF98
	.byte	0x1
	.value	0x1d3
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2f
	.string	"irq"
	.byte	0x1
	.value	0x1d3
	.long	0x4e4
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x1d5
	.long	0x6de
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2e
	.long	0xf81
	.long	.LASF141
	.byte	0x1
	.value	0x1f6
	.byte	0x1
	.long	0x322
	.quad	.LFB212
	.quad	.LFE212
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x1f5
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x1f5
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x1f5
	.long	0x4a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x1f7
	.long	0x6de
	.byte	0x0
	.uleb128 0x25
	.long	0xfe3
	.long	.LASF142
	.byte	0x1
	.value	0x1fe
	.byte	0x1
	.quad	.LFB213
	.quad	.LFE213
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x1fc
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x1fd
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF143
	.byte	0x1
	.value	0x1fd
	.long	0x322
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x1fd
	.long	0x46f
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x1ff
	.long	0x6de
	.byte	0x0
	.uleb128 0x2e
	.long	0x1049
	.long	.LASF144
	.byte	0x1
	.value	0x205
	.byte	0x1
	.long	0x322
	.quad	.LFB214
	.quad	.LFE214
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x204
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x204
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x204
	.long	0x4a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x206
	.long	0x6de
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.value	0x207
	.long	0x322
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.long	0x10ab
	.long	.LASF145
	.byte	0x1
	.value	0x212
	.byte	0x1
	.quad	.LFB215
	.quad	.LFE215
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x210
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x211
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF143
	.byte	0x1
	.value	0x211
	.long	0x322
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x211
	.long	0x46f
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x213
	.long	0x6de
	.byte	0x0
	.uleb128 0x2e
	.long	0x110f
	.long	.LASF146
	.byte	0x1
	.value	0x21b
	.byte	0x1
	.long	0x322
	.quad	.LFB216
	.quad	.LFE216
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x21a
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x21a
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x21a
	.long	0x4a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x21c
	.long	0x6de
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x21d
	.long	0x322
	.byte	0x0
	.uleb128 0x25
	.long	0x1171
	.long	.LASF147
	.byte	0x1
	.value	0x228
	.byte	0x1
	.quad	.LFB217
	.quad	.LFE217
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x226
	.long	0xb6
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x227
	.long	0x3de
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.long	.LASF143
	.byte	0x1
	.value	0x227
	.long	0x322
	.byte	0x1
	.byte	0x51
	.uleb128 0x2f
	.string	"tag"
	.byte	0x1
	.value	0x227
	.long	0x46f
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x229
	.long	0x6de
	.byte	0x0
	.uleb128 0x32
	.long	0x11da
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	0x6de
	.quad	.LFB218
	.quad	.LFE218
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.long	.LASF98
	.byte	0x1
	.value	0x23c
	.long	0x3de
	.byte	0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF99
	.byte	0x1
	.value	0x23c
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.string	"irq"
	.byte	0x1
	.value	0x23c
	.long	0x4e4
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x23e
	.long	0x6de
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF149
	.byte	0x1
	.value	0x23f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x33
	.long	.LASF150
	.byte	0xd
	.byte	0x91
	.long	0x2eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF151
	.byte	0xd
	.byte	0x92
	.long	0x2eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF152
	.byte	0x10
	.value	0x376
	.long	0xed6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF153
	.byte	0x11
	.byte	0x12
	.long	0x120f
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x8
	.long	0x501
	.uleb128 0x33
	.long	.LASF154
	.byte	0x11
	.byte	0x1c
	.long	0xc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF155
	.byte	0x12
	.byte	0x4a
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF156
	.byte	0x12
	.byte	0x4b
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF157
	.byte	0x12
	.byte	0x86
	.long	0x3f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	nb_drives
	.uleb128 0xc
	.long	0x1262
	.long	0x595
	.uleb128 0xd
	.long	0x5b
	.byte	0x20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF158
	.byte	0x12
	.byte	0x87
	.long	0x1252
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	drives_table
	.uleb128 0xc
	.long	0x1288
	.long	0x1288
	.uleb128 0xd
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x47a
	.uleb128 0x28
	.long	.LASF159
	.byte	0x1
	.value	0x230
	.long	0x1278
	.byte	0x9
	.byte	0x3
	.quad	rtc_mm_read
	.uleb128 0xc
	.long	0x12b4
	.long	0x12b4
	.uleb128 0xd
	.long	0x5b
	.byte	0x2
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x448
	.uleb128 0x28
	.long	.LASF160
	.byte	0x1
	.value	0x236
	.long	0x12a4
	.byte	0x9
	.byte	0x3
	.quad	rtc_mm_write
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.long	0x6e
	.value	0x2
	.long	.Ldebug_info0
	.long	0x12d1
	.long	0xcc2
	.string	"rtc_set_memory"
	.long	0xd0b
	.string	"rtc_set_date"
	.long	0xedc
	.string	"rtc_init"
	.long	0x1171
	.string	"rtc_mm_init"
	.long	0x123c
	.string	"nb_drives"
	.long	0x1262
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
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF9:
	.string	"size_t"
.LASF56:
	.string	"tm_hour"
.LASF127:
	.string	"year"
.LASF141:
	.string	"cmos_mm_readb"
.LASF136:
	.string	"qemu_put_8s"
.LASF27:
	.string	"_IO_save_end"
.LASF13:
	.string	"time_t"
.LASF20:
	.string	"_IO_write_base"
.LASF36:
	.string	"_lock"
.LASF25:
	.string	"_IO_save_base"
.LASF107:
	.string	"period"
.LASF33:
	.string	"_cur_column"
.LASF43:
	.string	"_mode"
.LASF106:
	.string	"period_code"
.LASF104:
	.string	"second_timer2"
.LASF2:
	.string	"long int"
.LASF113:
	.string	"qemu_irq_raise"
.LASF62:
	.string	"tm_isdst"
.LASF156:
	.string	"rtc_start_date"
.LASF47:
	.string	"_IO_marker"
.LASF146:
	.string	"cmos_mm_readl"
.LASF73:
	.string	"netidx"
.LASF112:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF122:
	.string	"delay"
.LASF77:
	.string	"BlockDriverState"
.LASF162:
	.string	"/home/remco/Projects/Argos/src/hw/mc146818rtc.c"
.LASF138:
	.string	"version_id"
.LASF81:
	.string	"IRQState"
.LASF128:
	.string	"days_tab"
.LASF7:
	.string	"signed char"
.LASF46:
	.string	"_IO_FILE"
.LASF126:
	.string	"month"
.LASF6:
	.string	"unsigned char"
.LASF74:
	.string	"argos_rtag_t"
.LASF76:
	.string	"CPUReadMemoryFunc"
.LASF71:
	.string	"argos_rtag"
.LASF108:
	.string	"cur_clock"
.LASF158:
	.string	"drives_table"
.LASF143:
	.string	"value"
.LASF159:
	.string	"rtc_mm_read"
.LASF135:
	.string	"rtc_save"
.LASF116:
	.string	"cmos_ioport_write"
.LASF45:
	.string	"_IO_lock_t"
.LASF78:
	.string	"QEMUFile"
.LASF125:
	.string	"get_days_in_month"
.LASF69:
	.string	"argos_paddr_t"
.LASF55:
	.string	"tm_min"
.LASF115:
	.string	"from_bcd"
.LASF17:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"double"
.LASF50:
	.string	"_pos"
.LASF150:
	.string	"stdin"
.LASF28:
	.string	"_markers"
.LASF133:
	.string	"rtc_set_date"
.LASF90:
	.string	"DriveInfo"
.LASF54:
	.string	"tm_sec"
.LASF44:
	.string	"_unused2"
.LASF121:
	.string	"rtc_update_second"
.LASF89:
	.string	"BlockInterfaceType"
.LASF31:
	.string	"_flags2"
.LASF19:
	.string	"_IO_read_base"
.LASF140:
	.string	"rtc_init"
.LASF91:
	.string	"bdrv"
.LASF105:
	.string	"current_time"
.LASF119:
	.string	"rtc_copy_date"
.LASF32:
	.string	"_old_offset"
.LASF120:
	.string	"to_bcd"
.LASF96:
	.string	"cmos_index"
.LASF111:
	.string	"rtc_periodic_timer"
.LASF3:
	.string	"long long int"
.LASF58:
	.string	"tm_mon"
.LASF87:
	.string	"IF_MTD"
.LASF22:
	.string	"_IO_write_end"
.LASF160:
	.string	"rtc_mm_write"
.LASF109:
	.string	"next_irq_clock"
.LASF142:
	.string	"cmos_mm_writeb"
.LASF147:
	.string	"cmos_mm_writel"
.LASF145:
	.string	"cmos_mm_writew"
.LASF163:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF102:
	.string	"next_second_time"
.LASF117:
	.string	"addr"
.LASF23:
	.string	"_IO_buf_base"
.LASF157:
	.string	"nb_drives"
.LASF48:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF161:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF134:
	.string	"rtc_set_date_from_host"
.LASF139:
	.string	"qemu_get_8s"
.LASF70:
	.string	"argos_netidx_t"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF75:
	.string	"CPUWriteMemoryFunc"
.LASF49:
	.string	"_sbuf"
.LASF16:
	.string	"_flags"
.LASF118:
	.string	"data"
.LASF92:
	.string	"type"
.LASF65:
	.string	"target_phys_addr_t"
.LASF114:
	.string	"rtc_set_time"
.LASF79:
	.string	"QEMUTimer"
.LASF68:
	.string	"long double"
.LASF101:
	.string	"next_periodic_time"
.LASF57:
	.string	"tm_mday"
.LASF37:
	.string	"_offset"
.LASF15:
	.string	"long long unsigned int"
.LASF51:
	.string	"uint8_t"
.LASF132:
	.string	"rtc_set_memory"
.LASF10:
	.string	"__off_t"
.LASF82:
	.string	"QEMUClock"
.LASF29:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF130:
	.string	"cmos_ioport_read"
.LASF61:
	.string	"tm_yday"
.LASF153:
	.string	"vm_clock"
.LASF12:
	.string	"__time_t"
.LASF94:
	.string	"RTCState"
.LASF26:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_shortbuf"
.LASF85:
	.string	"IF_FLOPPY"
.LASF11:
	.string	"__off64_t"
.LASF88:
	.string	"IF_SD"
.LASF24:
	.string	"_IO_buf_end"
.LASF123:
	.string	"rtc_next_second"
.LASF63:
	.string	"tm_gmtoff"
.LASF148:
	.string	"rtc_mm_init"
.LASF8:
	.string	"short int"
.LASF53:
	.string	"uint64_t"
.LASF152:
	.string	"phys_ram_dirty"
.LASF149:
	.string	"io_memory"
.LASF34:
	.string	"_vtable_offset"
.LASF129:
	.string	"rtc_update_second2"
.LASF83:
	.string	"IF_IDE"
.LASF100:
	.string	"periodic_timer"
.LASF124:
	.string	"days_in_month"
.LASF64:
	.string	"tm_zone"
.LASF155:
	.string	"rtc_utc"
.LASF137:
	.string	"rtc_load"
.LASF93:
	.string	"unit"
.LASF154:
	.string	"ticks_per_sec"
.LASF18:
	.string	"_IO_read_end"
.LASF103:
	.string	"second_timer"
.LASF60:
	.string	"tm_wday"
.LASF131:
	.string	"qemu_irq_lower"
.LASF52:
	.string	"uint32_t"
.LASF86:
	.string	"IF_PFLASH"
.LASF99:
	.string	"it_shift"
.LASF30:
	.string	"_fileno"
.LASF59:
	.string	"tm_year"
.LASF66:
	.string	"float"
.LASF151:
	.string	"stdout"
.LASF98:
	.string	"base"
.LASF21:
	.string	"_IO_write_ptr"
.LASF95:
	.string	"cmos_data"
.LASF14:
	.string	"int64_t"
.LASF97:
	.string	"current_tm"
.LASF72:
	.string	"origin"
.LASF84:
	.string	"IF_SCSI"
.LASF110:
	.string	"rtc_timer_update"
.LASF144:
	.string	"cmos_mm_readw"
.LASF80:
	.string	"qemu_irq"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
