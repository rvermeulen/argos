	.file	"vmmouse.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	vmmouse_mouse_event, @function
vmmouse_mouse_event:
.LFB197:
	.file 1 "/home/remco/Projects/Argos/src/hw/vmmouse.c"
	.loc 1 70 0
	.loc 1 74 0
	movzwl	4096(%rdi), %r10d
	.loc 1 72 0
	xorl	%r9d, %r9d
	.loc 1 74 0
	cmpw	$1020, %r10w
	ja	.L1
	.loc 1 81 0
	testb	$1, %r8b
	movl	$32, %eax
	cmovne	%eax, %r9d
	.loc 1 83 0
	movl	%r9d, %eax
	orl	$16, %eax
	testb	$2, %r8b
	cmovne	%eax, %r9d
	.loc 1 85 0
	movl	%r9d, %eax
	orl	$8, %eax
	andl	$4, %r8d
	cmovne	%eax, %r9d
	.loc 1 87 0
	cmpb	$0, 4100(%rdi)
	jne	.L9
.L7:
	.loc 1 92 0
	movzwl	%r10w, %eax 
	movl	%r9d, (%rdi,%rax,4)
	leal	1(%r10), %eax
	.loc 1 93 0
	movzwl	%ax, %eax 
	movl	%esi, (%rdi,%rax,4)
	leal	2(%r10), %eax
	.loc 1 94 0
	movzwl	%ax, %eax 
	movl	%edx, (%rdi,%rax,4)
	leal	3(%r10), %eax
	.loc 1 95 0
	movzwl	%ax, %eax 
	movl	%ecx, (%rdi,%rax,4)
	leal	4(%r10), %eax
	movw	%ax, 4096(%rdi)
	.loc 1 99 0
	movq	4112(%rdi), %rdi
	jmp	ps2_mouse_fake_event
	.p2align 4,,7
.L1:
	rep ; ret
	.p2align 4,,7
.L9:
	.loc 1 88 0
	addl	%esi, %esi
	.loc 1 89 0
	addl	%edx, %edx
	jmp	.L7
.LFE197:
	.size	vmmouse_mouse_event, .-vmmouse_mouse_event
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vmmouse"
	.text
	.p2align 4,,15
	.type	vmmouse_update_handler, @function
vmmouse_update_handler:
.LFB198:
	.loc 1 103 0
	pushq	%rbx
.LCFI0:
	.loc 1 103 0
	movq	%rdi, %rbx
	.loc 1 104 0
	movq	4104(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L13
.L11:
	.loc 1 108 0
	cmpw	$0, 4098(%rbx)
	je	.L14
	.loc 1 112 0
	popq	%rbx
	ret
	.p2align 4,,7
.L14:
	.loc 1 109 0
	movzbl	4100(%rbx), %edx
	movq	%rbx, %rsi
	movl	$.LC0, %ecx
	movl	$vmmouse_mouse_event, %edi
	call	qemu_add_mouse_event_handler
	movq	%rax, 4104(%rbx)
	.loc 1 112 0
	popq	%rbx
	ret
	.p2align 4,,7
.L13:
	.loc 1 105 0
	call	qemu_remove_mouse_event_handler
	.loc 1 106 0
	movq	$0, 4104(%rbx)
	jmp	.L11
.LFE198:
	.size	vmmouse_update_handler, .-vmmouse_update_handler
	.section	.rodata.str1.1
.LC1:
	.string	"vmmouse: unknown command %x\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"vmmouse: driver requested too much data %d\n"
	.text
	.p2align 4,,15
	.type	vmmouse_ioport_read, @function
vmmouse_ioport_read:
.LFB206:
	.loc 1 194 0
	pushq	%rbx
.LCFI1:
	movq	%rdi, %rbx
	subq	$32, %rsp
.LCFI2:
.LBB2:
.LBB3:
	.loc 1 170 0
	movq	cpu_single_env(%rip), %rcx
.LBE3:
	.loc 1 169 0
	movq	%rsp, %r9
.LBB4:
	.loc 1 172 0
	movl	(%rcx), %r8d
	movl	%r8d, (%rsp)
	movl	12(%rcx), %edi
	movl	%edi, 4(%rsp)
	.loc 1 173 0
	movl	4(%rcx), %edx
	movl	%edx, 8(%rsp)
	movl	8(%rcx), %eax
.LBE4:
.LBE2:
	.loc 1 203 0
	movzwl	%dx, %esi
	cmpl	$40, %esi
.LBB5:
.LBB6:
	.loc 1 173 0
	movl	%eax, 12(%rsp)
	.loc 1 174 0
	movl	24(%rcx), %eax
	movl	%eax, 16(%rsp)
	movl	28(%rcx), %eax
	movl	%eax, 20(%rsp)
.LBE6:
.LBE5:
	.loc 1 203 0
	je	.L19
	jle	.L59
	cmpl	$41, %esi
	je	.L22
.L49:
	.loc 1 230 0
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	printf
.L55:
	movq	cpu_single_env(%rip), %rcx
	movl	(%rsp), %r8d
.L18:
.LBB7:
.LBB8:
	.loc 1 187 0
	movl	%r8d, (%rcx)
	movl	4(%rsp), %eax
	movl	%eax, 12(%rcx)
	.loc 1 188 0
	movl	8(%rsp), %eax
	movl	%eax, 4(%rcx)
	movl	12(%rsp), %eax
	movl	%eax, 8(%rcx)
	.loc 1 189 0
	movl	16(%rsp), %eax
	movl	%eax, 24(%rcx)
	movl	20(%rsp), %eax
	movl	%eax, 28(%rcx)
.LBE8:
.LBE7:
	.loc 1 235 0
	movl	(%rsp), %eax
	.loc 1 236 0
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L59:
	.loc 1 203 0
	cmpl	$39, %esi
	jne	.L49
.LBB9:
.LBB10:
	.loc 1 153 0
	leal	-1(%rdi), %eax
	cmpl	$5, %eax
	ja	.L42
	movzwl	4096(%rbx), %esi
	movzwl	%si, %eax
	cmpl	%edi, %eax
	jae	.L41
.L42:
	.loc 1 154 0
	movl	%edi, %esi
	xorl	%eax, %eax
	movl	$.LC2, %edi
	call	printf
.L58:
	.loc 1 155 0
	movw	$-1, 4098(%rbx)
.L57:
.LBE10:
.LBE9:
.LBB11:
.LBB12:
	.loc 1 123 0
	movq	%rbx, %rdi
	call	vmmouse_update_handler
	jmp	.L55
	.p2align 4,,7
.L19:
.LBE12:
.LBE11:
.LBB13:
.LBB14:
	.loc 1 65 0
	movzwl	4098(%rbx), %r8d
	movzwl	4096(%rbx), %eax
	sall	$16, %r8d
.LBE14:
.LBE13:
	.loc 1 64 0
	orl	%eax, %r8d
	movl	%r8d, (%rsp)
	jmp	.L18
	.p2align 4,,7
.L22:
	.loc 1 208 0
	cmpl	$1161905490, %edi
	je	.L27
	jbe	.L60
	cmpl	$1279611474, %edi
	.p2align 4,,7
	je	.L31
	cmpl	$1396851026, %edi
	.p2align 4,,7
	je	.L34
	.loc 1 222 0
	movl	%edi, %esi
	.p2align 4,,5
	jmp	.L49
.L60:
	.loc 1 208 0
	cmpl	$245, %edi
	.p2align 4,,5
	je	.L58
	.loc 1 222 0
	movl	%edi, %esi
	.p2align 4,,5
	jmp	.L49
.L41:
.LBB15:
.LBB16:
	.loc 1 160 0
	xorl	%ecx, %ecx
	.p2align 4,,5
	jmp	.L56
	.p2align 4,,7
.L61:
	.loc 1 161 0
	movslq	%ecx,%rdx
	.loc 1 160 0
	incl	%ecx
	.loc 1 161 0
	movl	(%rbx,%rdx,4), %eax
	movl	%eax, (%r9,%rdx,4)
.L56:
	.loc 1 160 0
	cmpl	%edi, %ecx
	jb	.L61
	.loc 1 163 0
	movl	%esi, %eax
	subw	%di, %ax
	.loc 1 164 0
	testw	%ax, %ax
	.loc 1 163 0
	movw	%ax, 4096(%rbx)
	.loc 1 164 0
	je	.L55
	.loc 1 165 0
	mov	%edi, %esi
	movzwl	%ax, %edx 
	movq	%rbx, %rdi
	leaq	(%rbx,%rsi,4), %rsi
	salq	$2, %rdx
	call	memmove
	jmp	.L55
.L34:
.LBE16:
.LBE15:
.LBB17:
.LBB18:
	.loc 1 136 0
	movb	$1, 4100(%rbx)
	jmp	.L57
.L27:
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 118 0
	movzwl	4096(%rbx), %edx
	cmpw	$1024, %dx
	je	.L18
	.loc 1 121 0
	leal	1(%rdx), %esi
	movzwl	%dx, %eax 
	.loc 1 122 0
	movw	$0, 4098(%rbx)
	.loc 1 121 0
	movl	$876762442, (%rbx,%rax,4)
	movw	%si, 4096(%rbx)
	jmp	.L57
.L31:
.LBE20:
.LBE19:
.LBB21:
.LBB22:
	.loc 1 129 0
	movb	$0, 4100(%rbx)
	jmp	.L57
.LBE22:
.LBE21:
.LFE206:
	.size	vmmouse_ioport_read, .-vmmouse_ioport_read
	.p2align 4,,15
	.type	vmmouse_save, @function
vmmouse_save:
.LFB207:
	.loc 1 239 0
	pushq	%r13
.LCFI3:
	movq	%rsi, %r13
	.loc 1 243 0
	movl	$1024, %esi
	.loc 1 239 0
	pushq	%r12
.LCFI4:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI5:
	movl	$1023, %ebp
	pushq	%rbx
.LCFI6:
	movq	%r13, %rbx
	subq	$8, %rsp
.LCFI7:
	.loc 1 243 0
	call	qemu_put_be32
	.p2align 4,,7
.L67:
.LBB23:
.LBB24:
	.file 2 "/home/remco/Projects/Argos/src/hw/hw.h"
	.loc 2 32 0
	movl	(%rbx), %esi
	movq	%r12, %rdi
	addq	$4, %rbx
	call	qemu_put_be32
	decl	%ebp
	jns	.L67
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 2 37 0
	movzwl	4096(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	movzwl	4098(%r13), %esi
	movq	%r12, %rdi
	call	qemu_put_be16
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 2 42 0
	movzbl	4100(%r13), %esi
.LBE30:
.LBE29:
	addq	$8, %rsp
.LBB31:
.LBB32:
	movq	%r12, %rdi
.LBE32:
.LBE31:
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
.LBB33:
.LBB34:
	jmp	qemu_put_byte
.LBE34:
.LBE33:
.LFE207:
	.size	vmmouse_save, .-vmmouse_save
	.p2align 4,,15
	.type	vmmouse_load, @function
vmmouse_load:
.LFB208:
	.loc 1 252 0
	pushq	%r13
.LCFI8:
	.loc 1 257 0
	movl	$-22, %ecx
	.loc 1 252 0
	movq	%rsi, %r13
	pushq	%r12
.LCFI9:
	movq	%rdi, %r12
	pushq	%rbp
.LCFI10:
	pushq	%rbx
.LCFI11:
	subq	$8, %rsp
.LCFI12:
	.loc 1 256 0
	testl	%edx, %edx
	jne	.L73
	.loc 1 259 0
	call	qemu_get_be32
	cmpl	$1024, %eax
	.loc 1 260 0
	movl	$-22, %ecx
	.loc 1 259 0
	jne	.L73
	movq	%r13, %rbx
	movl	$1023, %ebp
	.p2align 4,,7
.L80:
.LBB35:
.LBB36:
	.loc 2 52 0
	movq	%r12, %rdi
	call	qemu_get_be32
	movl	%eax, (%rbx)
	addq	$4, %rbx
	decl	%ebp
	jns	.L80
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	.loc 2 57 0
	movq	%r12, %rdi
	call	qemu_get_be16
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	movq	%r12, %rdi
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	movw	%ax, 4096(%r13)
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	call	qemu_get_be16
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	.loc 2 62 0
	movq	%r12, %rdi
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	.loc 2 57 0
	movw	%ax, 4098(%r13)
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	.loc 2 62 0
	call	qemu_get_byte
.LBE50:
.LBE49:
	.loc 1 267 0
	movq	%r13, %rdi
.LBB51:
.LBB52:
	.loc 2 62 0
	movb	%al, 4100(%r13)
.LBE52:
.LBE51:
	.loc 1 267 0
	call	vmmouse_update_handler
	.loc 1 269 0
	xorl	%ecx, %ecx
.L73:
	.loc 1 270 0
	addq	$8, %rsp
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.LFE208:
	.size	vmmouse_load, .-vmmouse_load
	.p2align 4,,15
.globl vmmouse_init
	.type	vmmouse_init, @function
vmmouse_init:
.LFB209:
	.loc 1 273 0
	pushq	%rbp
.LCFI13:
	movq	%rdi, %rbp
	.loc 1 278 0
	movl	$4120, %edi
	.loc 1 273 0
	pushq	%rbx
.LCFI14:
	subq	$8, %rsp
.LCFI15:
	.loc 1 278 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 280 0
	xorl	%eax, %eax
	.loc 1 279 0
	testq	%rbx, %rbx
	je	.L86
	.loc 1 285 0
	movq	%rbx, %rdx
	movl	$vmmouse_ioport_read, %esi
	movl	$40, %edi
	.loc 1 282 0
	movw	$-1, 4098(%rbx)
	.loc 1 283 0
	movq	%rbp, 4112(%rbx)
	.loc 1 285 0
	call	vmport_register
	.loc 1 286 0
	movq	%rbx, %rdx
	movl	$vmmouse_ioport_read, %esi
	movl	$41, %edi
	call	vmport_register
	.loc 1 287 0
	movq	%rbx, %rdx
	movl	$vmmouse_ioport_read, %esi
	movl	$39, %edi
	call	vmport_register
	.loc 1 288 0
	movq	%rbx, %r9
	movl	$vmmouse_load, %r8d
	movl	$vmmouse_save, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	call	register_savevm
	.loc 1 290 0
	movq	%rbx, %rax
.L86:
	.loc 1 291 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LFE209:
	.size	vmmouse_init, .-vmmouse_init
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI0-.LFB198
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI1-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI3-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI8-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI13-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE10:
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
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.byte	0x4
	.long	.LCFI0-.LFB198
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
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.byte	0x4
	.long	.LCFI1-.LFB206
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.byte	0x4
	.long	.LCFI3-.LFB207
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.byte	0x4
	.long	.LCFI8-.LFB208
	.byte	0xe
	.uleb128 0x10
	.byte	0x8d
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.byte	0x4
	.long	.LCFI13-.LFB209
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE11:
	.file 3 "/usr/include/stdint.h"
	.file 4 "../console.h"
	.file 5 "../argos-tag.h"
	.file 6 "../argos.h"
	.file 7 "/home/remco/Projects/Argos/src/target-i386/cpu.h"
	.file 8 "../cpu-defs.h"
	.file 9 "/home/remco/Projects/Argos/src/target-i386/argos-shellcode.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/types.h"
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.file 14 "/usr/include/sys/types.h"
	.file 15 "/home/remco/Projects/Argos/src/fpu/softfloat-native.h"
	.file 16 "/usr/include/setjmp.h"
	.file 17 "/usr/include/bits/setjmp.h"
	.file 18 "/usr/include/bits/sigset.h"
	.file 19 "../qemu-common.h"
	.file 20 "../cpu-all.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0x16ac
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF247
	.byte	0x1
	.long	.LASF248
	.long	.LASF249
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
	.byte	0xc
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xc
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0xe
	.byte	0xc5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF13
	.byte	0xe
	.byte	0xc6
	.long	0x4d
	.uleb128 0x8
	.long	0xdb
	.byte	0x80
	.byte	0x12
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x12
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
	.byte	0x12
	.byte	0x20
	.long	0xc4
	.uleb128 0x3
	.long	.LASF15
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.long	.LASF16
	.byte	0xa
	.byte	0x31
	.long	0x108
	.uleb128 0xc
	.long	0x2d4
	.long	.LASF48
	.byte	0xd8
	.byte	0xa
	.byte	0x2d
	.uleb128 0xd
	.long	.LASF18
	.byte	0xb
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF19
	.byte	0xb
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF20
	.byte	0xb
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF21
	.byte	0xb
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF22
	.byte	0xb
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF23
	.byte	0xb
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF24
	.byte	0xb
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF25
	.byte	0xb
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF26
	.byte	0xb
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF27
	.byte	0xb
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.long	.LASF28
	.byte	0xb
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.long	.LASF29
	.byte	0xb
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.long	.LASF30
	.byte	0xb
	.value	0x122
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF31
	.byte	0xb
	.value	0x124
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF32
	.byte	0xb
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.long	.LASF33
	.byte	0xb
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.long	.LASF34
	.byte	0xb
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF36
	.byte	0xb
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.long	.LASF37
	.byte	0xb
	.value	0x132
	.long	0x31e
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xd
	.long	.LASF38
	.byte	0xb
	.value	0x136
	.long	0x32e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.long	.LASF42
	.byte	0xb
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.long	.LASF43
	.byte	0xb
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.long	.LASF44
	.byte	0xb
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.long	.LASF45
	.byte	0xb
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.long	.LASF46
	.byte	0xb
	.value	0x150
	.long	0x334
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xe
	.long	.LASF47
	.byte	0xb
	.byte	0xb4
	.uleb128 0xc
	.long	0x312
	.long	.LASF49
	.byte	0x18
	.byte	0xb
	.byte	0xba
	.uleb128 0x9
	.long	.LASF50
	.byte	0xb
	.byte	0xbb
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF51
	.byte	0xb
	.byte	0xbc
	.long	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF52
	.byte	0xb
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
	.byte	0x3
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF55
	.byte	0x3
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF57
	.byte	0x11
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
	.byte	0x10
	.byte	0x24
	.uleb128 0x9
	.long	.LASF59
	.byte	0x10
	.byte	0x29
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x10
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF61
	.byte	0x10
	.byte	0x2b
	.long	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x10
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
	.byte	0x8
	.byte	0x31
	.long	0x35a
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x49
	.long	0x365
	.uleb128 0xc
	.long	0x438
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.uleb128 0x9
	.long	.LASF66
	.byte	0x8
	.byte	0x70
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.byte	0x71
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x8
	.byte	0x72
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.byte	0x74
	.long	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
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
	.byte	0xf
	.byte	0x3b
	.long	0x443
	.uleb128 0x2
	.long	.LASF73
	.byte	0xf
	.byte	0x3c
	.long	0x44a
	.uleb128 0x2
	.long	.LASF74
	.byte	0xf
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
	.byte	0xf
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF77
	.byte	0xf
	.byte	0x6e
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF78
	.byte	0xf
	.byte	0x70
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xf
	.byte	0x72
	.long	0x479
	.uleb128 0xf
	.long	.LASF79
	.byte	0x7
	.value	0x198
	.long	0x467
	.uleb128 0x10
	.long	0x503
	.long	.LASF80
	.byte	0x10
	.byte	0x7
	.value	0x19d
	.uleb128 0xd
	.long	.LASF81
	.byte	0x7
	.value	0x19e
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x7
	.value	0x19f
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF83
	.byte	0x7
	.value	0x1a0
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF84
	.byte	0x7
	.value	0x1a1
	.long	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x7
	.value	0x1a2
	.long	0x4b9
	.uleb128 0x11
	.long	0x55b
	.byte	0x10
	.byte	0x7
	.value	0x1ab
	.uleb128 0x12
	.string	"_b"
	.byte	0x7
	.value	0x1a5
	.long	0x55b
	.uleb128 0x12
	.string	"_w"
	.byte	0x7
	.value	0x1a6
	.long	0x56b
	.uleb128 0x12
	.string	"_l"
	.byte	0x7
	.value	0x1a7
	.long	0x57b
	.uleb128 0x12
	.string	"_q"
	.byte	0x7
	.value	0x1a8
	.long	0x58b
	.uleb128 0x12
	.string	"_s"
	.byte	0x7
	.value	0x1a9
	.long	0x59b
	.uleb128 0x12
	.string	"_d"
	.byte	0x7
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
	.byte	0x7
	.value	0x1ab
	.long	0x50f
	.uleb128 0x11
	.long	0x5fc
	.byte	0x8
	.byte	0x7
	.value	0x1b2
	.uleb128 0x12
	.string	"_b"
	.byte	0x7
	.value	0x1ae
	.long	0x5fc
	.uleb128 0x12
	.string	"_w"
	.byte	0x7
	.value	0x1af
	.long	0x60c
	.uleb128 0x12
	.string	"_l"
	.byte	0x7
	.value	0x1b0
	.long	0x61c
	.uleb128 0x12
	.string	"q"
	.byte	0x7
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
	.byte	0x7
	.value	0x1b2
	.long	0x5c7
	.uleb128 0x2
	.long	.LASF87
	.byte	0x6
	.byte	0x2f
	.long	0x35a
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6
	.byte	0x34
	.long	0x35a
	.uleb128 0x2
	.long	.LASF89
	.byte	0x6
	.byte	0x35
	.long	0x643
	.uleb128 0xc
	.long	0x682
	.long	.LASF90
	.byte	0x8
	.byte	0x5
	.byte	0x37
	.uleb128 0x9
	.long	.LASF91
	.byte	0x5
	.byte	0x38
	.long	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x5
	.byte	0x39
	.long	0x643
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x5
	.byte	0x3d
	.long	0x659
	.uleb128 0xc
	.long	0x802
	.long	.LASF94
	.byte	0xd0
	.byte	0x9
	.byte	0x36
	.uleb128 0x9
	.long	.LASF95
	.byte	0x9
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF96
	.byte	0x9
	.byte	0x39
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"cr3"
	.byte	0x9
	.byte	0x3d
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0x9
	.byte	0x3f
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF98
	.byte	0x9
	.byte	0x41
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF99
	.byte	0x9
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.long	.LASF100
	.byte	0x9
	.byte	0x45
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF101
	.byte	0x9
	.byte	0x47
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.long	.LASF102
	.byte	0x9
	.byte	0x4a
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF103
	.byte	0x9
	.byte	0x4b
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.long	.LASF104
	.byte	0x9
	.byte	0x4c
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF105
	.byte	0x9
	.byte	0x4e
	.long	0x808
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.long	.LASF106
	.byte	0x9
	.byte	0x50
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.long	.LASF107
	.byte	0x9
	.byte	0x52
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF108
	.byte	0x9
	.byte	0x54
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.long	.LASF109
	.byte	0x9
	.byte	0x56
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF110
	.byte	0x9
	.byte	0x58
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF111
	.byte	0x9
	.byte	0x5b
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF112
	.byte	0x9
	.byte	0x5c
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x9
	.byte	0x5e
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.long	.LASF114
	.byte	0x9
	.byte	0x60
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x9
	.byte	0x62
	.long	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x9
	.byte	0x65
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF117
	.byte	0x9
	.byte	0x66
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x9
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
	.byte	0x9
	.byte	0x69
	.long	0x68d
	.uleb128 0x11
	.long	0x859
	.byte	0x10
	.byte	0x7
	.value	0x20f
	.uleb128 0x12
	.string	"d"
	.byte	0x7
	.value	0x20a
	.long	0x4ad
	.uleb128 0x12
	.string	"mmx"
	.byte	0x7
	.value	0x20e
	.long	0x62c
	.byte	0x0
	.uleb128 0x11
	.long	0x88f
	.byte	0x8
	.byte	0x7
	.value	0x219
	.uleb128 0x12
	.string	"f"
	.byte	0x7
	.value	0x215
	.long	0x443
	.uleb128 0x12
	.string	"d"
	.byte	0x7
	.value	0x216
	.long	0x44a
	.uleb128 0x12
	.string	"i32"
	.byte	0x7
	.value	0x217
	.long	0x3f
	.uleb128 0x12
	.string	"i64"
	.byte	0x7
	.value	0x218
	.long	0xb9
	.byte	0x0
	.uleb128 0x14
	.long	0x8b7
	.byte	0x10
	.byte	0x7
	.value	0x246
	.uleb128 0xd
	.long	.LASF120
	.byte	0x7
	.value	0x246
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x7
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
	.byte	0x7
	.value	0x1d8
	.uleb128 0xd
	.long	.LASF122
	.byte	0x7
	.value	0x1df
	.long	0xe53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"eip"
	.byte	0x7
	.value	0x1e0
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF123
	.byte	0x7
	.value	0x1e1
	.long	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.long	.LASF124
	.byte	0x7
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF125
	.byte	0x7
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0x7
	.value	0x1e6
	.long	0x682
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0x7
	.value	0x1e7
	.long	0xe63
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0x7
	.value	0x1e9
	.long	0x82e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.long	.LASF129
	.byte	0x7
	.value	0x1ec
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.long	.LASF130
	.byte	0x7
	.value	0x1ed
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.long	.LASF131
	.byte	0x7
	.value	0x1ee
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.string	"df"
	.byte	0x7
	.value	0x1ef
	.long	0xae
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xd
	.long	.LASF132
	.byte	0x7
	.value	0x1f0
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.long	.LASF133
	.byte	0x7
	.value	0x1f3
	.long	0xe73
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.string	"ldt"
	.byte	0x7
	.value	0x1f4
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x16
	.string	"tr"
	.byte	0x7
	.value	0x1f5
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0x16
	.string	"gdt"
	.byte	0x7
	.value	0x1f6
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.string	"idt"
	.byte	0x7
	.value	0x1f7
	.long	0x503
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.string	"cr"
	.byte	0x7
	.value	0x1f9
	.long	0xe83
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.long	.LASF134
	.byte	0x7
	.value	0x1fa
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.long	.LASF135
	.byte	0x7
	.value	0x201
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.long	.LASF136
	.byte	0x7
	.value	0x202
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.long	.LASF137
	.byte	0x7
	.value	0x204
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.long	.LASF138
	.byte	0x7
	.value	0x205
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.long	.LASF139
	.byte	0x7
	.value	0x206
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.long	.LASF140
	.byte	0x7
	.value	0x207
	.long	0x5fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.long	.LASF141
	.byte	0x7
	.value	0x20f
	.long	0xe93
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.long	.LASF142
	.byte	0x7
	.value	0x212
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x16
	.string	"ft0"
	.byte	0x7
	.value	0x213
	.long	0x4ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d0
	.uleb128 0xd
	.long	.LASF143
	.byte	0x7
	.value	0x219
	.long	0x859
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x7
	.value	0x21b
	.long	0x4a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e8
	.uleb128 0xd
	.long	.LASF145
	.byte	0x7
	.value	0x21c
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.uleb128 0xd
	.long	.LASF146
	.byte	0x7
	.value	0x21d
	.long	0xea3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.uleb128 0xd
	.long	.LASF147
	.byte	0x7
	.value	0x21e
	.long	0x5bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x370
	.uleb128 0xd
	.long	.LASF148
	.byte	0x7
	.value	0x21f
	.long	0x62c
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.long	.LASF149
	.byte	0x7
	.value	0x222
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x388
	.uleb128 0xd
	.long	.LASF150
	.byte	0x7
	.value	0x223
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x38c
	.uleb128 0xd
	.long	.LASF151
	.byte	0x7
	.value	0x224
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x390
	.uleb128 0xd
	.long	.LASF152
	.byte	0x7
	.value	0x225
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x398
	.uleb128 0xd
	.long	.LASF153
	.byte	0x7
	.value	0x226
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a0
	.uleb128 0xd
	.long	.LASF154
	.byte	0x7
	.value	0x228
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3a8
	.uleb128 0xd
	.long	.LASF155
	.byte	0x7
	.value	0x229
	.long	0x3e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x7
	.value	0x22a
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3b8
	.uleb128 0xd
	.long	.LASF157
	.byte	0x7
	.value	0x22b
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x7
	.value	0x22c
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c2
	.uleb128 0xd
	.long	.LASF159
	.byte	0x7
	.value	0x22d
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c4
	.uleb128 0xd
	.long	.LASF160
	.byte	0x7
	.value	0x22e
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c6
	.uleb128 0xd
	.long	.LASF161
	.byte	0x7
	.value	0x22f
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c8
	.uleb128 0x16
	.string	"pat"
	.byte	0x7
	.value	0x238
	.long	0x365
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d0
	.uleb128 0xd
	.long	.LASF162
	.byte	0x7
	.value	0x23b
	.long	0x3c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x3d8
	.uleb128 0xd
	.long	.LASF163
	.byte	0x7
	.value	0x23c
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0xd
	.long	.LASF164
	.byte	0x7
	.value	0x23d
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xd
	.long	.LASF165
	.byte	0x7
	.value	0x23e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF166
	.byte	0x7
	.value	0x23f
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4ac
	.uleb128 0x16
	.string	"dr"
	.byte	0x7
	.value	0x240
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF167
	.byte	0x7
	.value	0x241
	.long	0x35a
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x7
	.value	0x242
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d4
	.uleb128 0xd
	.long	.LASF169
	.byte	0x7
	.value	0x243
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4d8
	.uleb128 0xd
	.long	.LASF170
	.byte	0x7
	.value	0x244
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4dc
	.uleb128 0xd
	.long	.LASF171
	.byte	0x7
	.value	0x246
	.long	0xeb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e0
	.uleb128 0xd
	.long	.LASF172
	.byte	0x7
	.value	0x246
	.long	0x38
	.byte	0x3
	.byte	0x23
	.uleb128 0x4e8
	.uleb128 0xd
	.long	.LASF173
	.byte	0x7
	.value	0x246
	.long	0x3dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x7
	.value	0x246
	.long	0xebf
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f8
	.uleb128 0xd
	.long	.LASF175
	.byte	0x7
	.value	0x246
	.long	0xed5
	.byte	0x3
	.byte	0x23
	.uleb128 0x34f8
	.uleb128 0xd
	.long	.LASF176
	.byte	0x7
	.value	0x246
	.long	0xee6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb4f8
	.uleb128 0xd
	.long	.LASF177
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb578
	.uleb128 0xd
	.long	.LASF178
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb57c
	.uleb128 0xd
	.long	.LASF179
	.byte	0x7
	.value	0x246
	.long	0xef6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb580
	.uleb128 0xd
	.long	.LASF180
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb780
	.uleb128 0xd
	.long	.LASF181
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb784
	.uleb128 0xd
	.long	.LASF182
	.byte	0x7
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb788
	.uleb128 0xd
	.long	.LASF183
	.byte	0x7
	.value	0x246
	.long	0x3f
	.byte	0x4
	.byte	0x23
	.uleb128 0xb790
	.uleb128 0xd
	.long	.LASF184
	.byte	0x7
	.value	0x246
	.long	0xa6
	.byte	0x4
	.byte	0x23
	.uleb128 0xb798
	.uleb128 0xd
	.long	.LASF185
	.byte	0x7
	.value	0x246
	.long	0x69
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a0
	.uleb128 0xd
	.long	.LASF186
	.byte	0x7
	.value	0x249
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7a8
	.uleb128 0xd
	.long	.LASF187
	.byte	0x7
	.value	0x24a
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7ac
	.uleb128 0xd
	.long	.LASF188
	.byte	0x7
	.value	0x24b
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b0
	.uleb128 0xd
	.long	.LASF189
	.byte	0x7
	.value	0x24c
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b4
	.uleb128 0xd
	.long	.LASF190
	.byte	0x7
	.value	0x24d
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7b8
	.uleb128 0xd
	.long	.LASF191
	.byte	0x7
	.value	0x24e
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7bc
	.uleb128 0xd
	.long	.LASF192
	.byte	0x7
	.value	0x24f
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c0
	.uleb128 0xd
	.long	.LASF193
	.byte	0x7
	.value	0x250
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c4
	.uleb128 0xd
	.long	.LASF194
	.byte	0x7
	.value	0x251
	.long	0xf06
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7c8
	.uleb128 0xd
	.long	.LASF195
	.byte	0x7
	.value	0x252
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7f8
	.uleb128 0xd
	.long	.LASF196
	.byte	0x7
	.value	0x253
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb7fc
	.uleb128 0xd
	.long	.LASF197
	.byte	0x7
	.value	0x254
	.long	0x35a
	.byte	0x4
	.byte	0x23
	.uleb128 0xb800
	.uleb128 0xd
	.long	.LASF198
	.byte	0x7
	.value	0x25b
	.long	0xf16
	.byte	0x4
	.byte	0x23
	.uleb128 0xb808
	.uleb128 0xd
	.long	.LASF199
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x13
	.byte	0x73
	.long	0xf50
	.uleb128 0x17
	.long	.LASF202
	.byte	0x1
	.uleb128 0x5
	.byte	0x8
	.long	0xf45
	.uleb128 0x2
	.long	.LASF203
	.byte	0x4
	.byte	0xd
	.long	0xf67
	.uleb128 0x19
	.long	0xf87
	.byte	0x1
	.uleb128 0x1a
	.long	0xa6
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x3f
	.uleb128 0x1a
	.long	0x3f
	.byte	0x0
	.uleb128 0xc
	.long	0xfda
	.long	.LASF204
	.byte	0x28
	.byte	0x4
	.byte	0xf
	.uleb128 0x9
	.long	.LASF205
	.byte	0x4
	.byte	0x10
	.long	0xfda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF206
	.byte	0x4
	.byte	0x11
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF207
	.byte	0x4
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF208
	.byte	0x4
	.byte	0x13
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.long	.LASF209
	.byte	0x4
	.byte	0x16
	.long	0xfe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xf5c
	.uleb128 0x5
	.byte	0x8
	.long	0xf87
	.uleb128 0x2
	.long	.LASF204
	.byte	0x4
	.byte	0x17
	.long	0xf87
	.uleb128 0x5
	.byte	0x8
	.long	0x344
	.uleb128 0x1b
	.long	0x105e
	.long	.LASF210
	.value	0x1018
	.byte	0x1
	.byte	0x36
	.uleb128 0x9
	.long	.LASF211
	.byte	0x1
	.byte	0x37
	.long	0x105e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF212
	.byte	0x1
	.byte	0x38
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x9
	.long	.LASF213
	.byte	0x1
	.byte	0x39
	.long	0x34f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1002
	.uleb128 0x9
	.long	.LASF214
	.byte	0x1
	.byte	0x3a
	.long	0x344
	.byte	0x3
	.byte	0x23
	.uleb128 0x1004
	.uleb128 0x9
	.long	.LASF215
	.byte	0x1
	.byte	0x3b
	.long	0x106f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1008
	.uleb128 0x9
	.long	.LASF216
	.byte	0x1
	.byte	0x3c
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1010
	.byte	0x0
	.uleb128 0xa
	.long	0x106f
	.long	0x35a
	.uleb128 0x18
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0xfe6
	.uleb128 0x2
	.long	.LASF217
	.byte	0x1
	.byte	0x3d
	.long	0xff7
	.uleb128 0x1c
	.long	0x10f1
	.long	.LASF220
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.quad	.LFB197
	.quad	.LFE197
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x1
	.byte	0x45
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.string	"dz"
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.long	.LASF218
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x47
	.long	0x10f1
	.uleb128 0x20
	.long	.LASF219
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1075
	.uleb128 0x1c
	.long	0x1121
	.long	.LASF221
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.quad	.LFB198
	.quad	.LFE198
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0x66
	.long	0x10f1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x129f
	.long	.LASF222
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x35a
	.quad	.LFB206
	.quad	.LFE206
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x1
	.byte	0xc0
	.long	0xa6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF223
	.byte	0x1
	.byte	0xc0
	.long	0x35a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"tag"
	.byte	0x1
	.byte	0xc1
	.long	0xf34
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xc3
	.long	0x10f1
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	.LASF224
	.byte	0x1
	.byte	0xc4
	.long	0x129f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF225
	.byte	0x1
	.byte	0xc5
	.long	0x34f
	.uleb128 0x24
	.long	0x11ba
	.long	0x12af
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x25
	.long	0x12bc
	.byte	0x1
	.byte	0x59
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x27
	.long	0x12c7
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x11f0
	.long	0x12df
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x28
	.long	0x12ec
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x27
	.long	0x12f7
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1226
	.long	0x130e
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x28
	.long	0x131b
	.uleb128 0x28
	.long	0x1324
	.uleb128 0x28
	.long	0x132f
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x2a
	.long	0x133a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x1245
	.long	0x1344
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x28
	.long	0x1351
	.byte	0x0
	.uleb128 0x24
	.long	0x1264
	.long	0x135b
	.quad	.LBB13
	.quad	.LBE13
	.uleb128 0x28
	.long	0x136c
	.byte	0x0
	.uleb128 0x24
	.long	0x1283
	.long	0x1376
	.quad	.LBB17
	.quad	.LBE17
	.uleb128 0x28
	.long	0x1383
	.byte	0x0
	.uleb128 0x2b
	.long	0x138d
	.quad	.LBB21
	.quad	.LBE21
	.uleb128 0x28
	.long	0x139a
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x12af
	.long	0x35a
	.uleb128 0xb
	.long	0x5b
	.byte	0x5
	.byte	0x0
	.uleb128 0x2c
	.long	0x12d3
	.long	.LASF226
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF224
	.byte	0x1
	.byte	0xa8
	.long	0x12d3
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.byte	0xaa
	.long	0x12d9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x35a
	.uleb128 0x5
	.byte	0x8
	.long	0xf28
	.uleb128 0x2c
	.long	0x1303
	.long	.LASF227
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF224
	.byte	0x1
	.byte	0xb4
	.long	0x1303
	.uleb128 0x1f
	.string	"env"
	.byte	0x1
	.byte	0xb6
	.long	0x12d9
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x1309
	.uleb128 0x6
	.long	0x35a
	.uleb128 0x2c
	.long	0x1344
	.long	.LASF228
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x93
	.long	0x10f1
	.uleb128 0x2d
	.long	.LASF224
	.byte	0x1
	.byte	0x93
	.long	0x12d3
	.uleb128 0x2d
	.long	.LASF229
	.byte	0x1
	.byte	0x93
	.long	0x35a
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.byte	0x0
	.uleb128 0x2c
	.long	0x135b
	.long	.LASF230
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x72
	.long	0x10f1
	.byte	0x0
	.uleb128 0x2f
	.long	0x1376
	.long	.LASF231
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x35a
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x3f
	.long	0x10f1
	.byte	0x0
	.uleb128 0x2c
	.long	0x138d
	.long	.LASF232
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x85
	.long	0x10f1
	.byte	0x0
	.uleb128 0x2c
	.long	0x13a4
	.long	.LASF233
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0x7e
	.long	0x10f1
	.byte	0x0
	.uleb128 0x1c
	.long	0x147d
	.long	.LASF234
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.quad	.LFB207
	.quad	.LFE207
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0xee
	.long	0xf56
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x1
	.byte	0xee
	.long	0xa6
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.byte	0xf0
	.long	0x10f1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	0x1414
	.long	0x147d
	.quad	.LBB23
	.quad	.LBE23
	.uleb128 0x28
	.long	0x148a
	.uleb128 0x28
	.long	0x1493
	.byte	0x0
	.uleb128 0x24
	.long	0x1438
	.long	0x149e
	.quad	.LBB25
	.quad	.LBE25
	.uleb128 0x28
	.long	0x14ab
	.uleb128 0x28
	.long	0x14b4
	.byte	0x0
	.uleb128 0x24
	.long	0x145c
	.long	0x149e
	.quad	.LBB27
	.quad	.LBE27
	.uleb128 0x28
	.long	0x14ab
	.uleb128 0x28
	.long	0x14b4
	.byte	0x0
	.uleb128 0x2b
	.long	0x14ca
	.quad	.LBB29
	.quad	.LBE29
	.uleb128 0x28
	.long	0x14d7
	.uleb128 0x28
	.long	0x14e0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x149e
	.long	.LASF235
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x1e
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x1e
	.long	0x1303
	.byte	0x0
	.uleb128 0x2c
	.long	0x14bf
	.long	.LASF236
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x23
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x23
	.long	0x14bf
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x14c5
	.uleb128 0x6
	.long	0x34f
	.uleb128 0x2c
	.long	0x14eb
	.long	.LASF237
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x28
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x28
	.long	0xf3a
	.byte	0x0
	.uleb128 0x21
	.long	0x15d3
	.long	.LASF238
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	0x3f
	.quad	.LFB208
	.quad	.LFE208
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0xfb
	.long	0xf56
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x1
	.byte	0xfb
	.long	0xa6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.long	.LASF239
	.byte	0x1
	.byte	0xfb
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0xfd
	.long	0x10f1
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	0x156a
	.long	0x15d3
	.quad	.LBB35
	.quad	.LBE35
	.uleb128 0x28
	.long	0x15e0
	.uleb128 0x28
	.long	0x15e9
	.byte	0x0
	.uleb128 0x24
	.long	0x158e
	.long	0x15f4
	.quad	.LBB37
	.quad	.LBE37
	.uleb128 0x28
	.long	0x1601
	.uleb128 0x28
	.long	0x160a
	.byte	0x0
	.uleb128 0x24
	.long	0x15b2
	.long	0x15f4
	.quad	.LBB39
	.quad	.LBE39
	.uleb128 0x28
	.long	0x1601
	.uleb128 0x28
	.long	0x160a
	.byte	0x0
	.uleb128 0x2b
	.long	0x161b
	.quad	.LBB45
	.quad	.LBE45
	.uleb128 0x28
	.long	0x1628
	.uleb128 0x28
	.long	0x1631
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x15f4
	.long	.LASF240
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x32
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x32
	.long	0x12d3
	.byte	0x0
	.uleb128 0x2c
	.long	0x1615
	.long	.LASF241
	.byte	0x2
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x37
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x37
	.long	0x1615
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x34f
	.uleb128 0x2c
	.long	0x163c
	.long	.LASF242
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.byte	0x3c
	.long	0xf56
	.uleb128 0x2e
	.string	"pv"
	.byte	0x2
	.byte	0x3c
	.long	0xff1
	.byte	0x0
	.uleb128 0x30
	.long	0x1679
	.byte	0x1
	.long	.LASF250
	.byte	0x1
	.value	0x111
	.byte	0x1
	.long	0xa6
	.quad	.LFB209
	.quad	.LFE209
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.string	"m"
	.byte	0x1
	.value	0x110
	.long	0xa6
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x112
	.long	0x10f1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x33
	.long	.LASF243
	.byte	0xa
	.byte	0x91
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF244
	.byte	0xa
	.byte	0x92
	.long	0x318
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF245
	.byte	0x14
	.value	0x32c
	.long	0x12d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF246
	.byte	0x14
	.value	0x376
	.long	0xff1
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
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
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x2
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x16b0
	.long	0x163c
	.string	"vmmouse_init"
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"char"
.LASF152:
	.string	"efer"
.LASF9:
	.string	"size_t"
.LASF214:
	.string	"absolute"
.LASF58:
	.string	"__jmp_buf_tag"
.LASF216:
	.string	"ps2_mouse"
.LASF233:
	.string	"vmmouse_request_relative"
.LASF12:
	.string	"int32_t"
.LASF29:
	.string	"_IO_save_end"
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
.LASF230:
	.string	"vmmouse_read_id"
.LASF232:
	.string	"vmmouse_request_absolute"
.LASF45:
	.string	"_mode"
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
.LASF238:
	.string	"vmmouse_load"
.LASF49:
	.string	"_IO_marker"
.LASF92:
	.string	"netidx"
.LASF184:
	.string	"opaque"
.LASF4:
	.string	"short unsigned int"
.LASF121:
	.string	"CPUX86State"
.LASF150:
	.string	"sysenter_esp"
.LASF171:
	.string	"current_tb"
.LASF155:
	.string	"vm_vmcb"
.LASF222:
	.string	"vmmouse_ioport_read"
.LASF99:
	.string	"instruction_stage"
.LASF151:
	.string	"sysenter_eip"
.LASF187:
	.string	"cpuid_vendor1"
.LASF189:
	.string	"cpuid_vendor3"
.LASF200:
	.string	"TranslationBlock"
.LASF7:
	.string	"signed char"
.LASF248:
	.string	"/home/remco/Projects/Argos/src/hw/vmmouse.c"
.LASF48:
	.string	"_IO_FILE"
.LASF109:
	.string	"load_value"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"argos_rtag_t"
.LASF194:
	.string	"cpuid_model"
.LASF245:
	.string	"cpu_single_env"
.LASF90:
	.string	"argos_rtag"
.LASF234:
	.string	"vmmouse_save"
.LASF114:
	.string	"store_value"
.LASF133:
	.string	"segs"
.LASF219:
	.string	"buttons"
.LASF196:
	.string	"cpuid_ext3_features"
.LASF73:
	.string	"float64"
.LASF193:
	.string	"cpuid_xlevel"
.LASF170:
	.string	"old_exception"
.LASF241:
	.string	"qemu_get_be16s"
.LASF47:
	.string	"_IO_lock_t"
.LASF202:
	.string	"QEMUFile"
.LASF112:
	.string	"load_addr_type"
.LASF236:
	.string	"qemu_put_be16s"
.LASF87:
	.string	"argos_paddr_t"
.LASF84:
	.string	"flags"
.LASF19:
	.string	"_IO_read_ptr"
.LASF71:
	.string	"double"
.LASF240:
	.string	"qemu_get_be32s"
.LASF52:
	.string	"_pos"
.LASF243:
	.string	"stdin"
.LASF115:
	.string	"store_value_netidx"
.LASF144:
	.string	"sse_status"
.LASF30:
	.string	"_markers"
.LASF168:
	.string	"interrupt_request"
.LASF197:
	.string	"cpuid_apic_id"
.LASF166:
	.string	"exception_next_eip"
.LASF108:
	.string	"instruction_netidx"
.LASF207:
	.string	"qemu_put_mouse_event_absolute"
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
.LASF213:
	.string	"status"
.LASF33:
	.string	"_flags2"
.LASF21:
	.string	"_IO_read_base"
.LASF142:
	.string	"fp_status"
.LASF85:
	.string	"XMMReg"
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
.LASF237:
	.string	"qemu_put_8s"
.LASF117:
	.string	"store_addr_type"
.LASF34:
	.string	"_old_offset"
.LASF153:
	.string	"star"
.LASF145:
	.string	"mxcsr"
.LASF239:
	.string	"version_id"
.LASF3:
	.string	"long long int"
.LASF79:
	.string	"CPU86_LDouble"
.LASF235:
	.string	"qemu_put_be32s"
.LASF24:
	.string	"_IO_write_end"
.LASF134:
	.string	"a20_mask"
.LASF66:
	.string	"addr_read"
.LASF125:
	.string	"t1tag"
.LASF111:
	.string	"load_addr"
.LASF77:
	.string	"float_rounding_mode"
.LASF249:
	.string	"/home/remco/Projects/Argos/src/i386-softmmu"
.LASF185:
	.string	"cpu_model_str"
.LASF223:
	.string	"addr"
.LASF176:
	.string	"breakpoints"
.LASF118:
	.string	"store_size"
.LASF25:
	.string	"_IO_buf_base"
.LASF50:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF247:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF221:
	.string	"vmmouse_update_handler"
.LASF242:
	.string	"qemu_get_8s"
.LASF211:
	.string	"queue"
.LASF181:
	.string	"watchpoint_hit"
.LASF227:
	.string	"vmmouse_set_data"
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
.LASF110:
	.string	"load_value_netidx"
.LASF199:
	.string	"apic_state"
.LASF17:
	.string	"__val"
.LASF18:
	.string	"_flags"
.LASF224:
	.string	"data"
.LASF172:
	.string	"mem_write_pc"
.LASF61:
	.string	"__saved_mask"
.LASF59:
	.string	"__jmpbuf"
.LASF183:
	.string	"cpu_index"
.LASF57:
	.string	"__jmp_buf"
.LASF180:
	.string	"nb_watchpoints"
.LASF64:
	.string	"target_phys_addr_t"
.LASF206:
	.string	"qemu_put_mouse_event_opaque"
.LASF209:
	.string	"next"
.LASF75:
	.string	"long double"
.LASF215:
	.string	"entry"
.LASF136:
	.string	"prev_fpip"
.LASF228:
	.string	"vmmouse_data"
.LASF39:
	.string	"_offset"
.LASF60:
	.string	"__mask_was_saved"
.LASF210:
	.string	"_VMMouseState"
.LASF191:
	.string	"cpuid_features"
.LASF157:
	.string	"intercept_cr_read"
.LASF229:
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
.LASF31:
	.string	"_chain"
.LASF0:
	.string	"long unsigned int"
.LASF143:
	.string	"fp_convert"
.LASF105:
	.string	"instruction"
.LASF131:
	.string	"cc_op"
.LASF182:
	.string	"next_cpu"
.LASF250:
	.string	"vmmouse_init"
.LASF72:
	.string	"float32"
.LASF212:
	.string	"nb_queue"
.LASF65:
	.string	"CPUTLBEntry"
.LASF159:
	.string	"intercept_dr_read"
.LASF116:
	.string	"store_addr"
.LASF164:
	.string	"error_code"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF98:
	.string	"instruction_cnt"
.LASF122:
	.string	"regs"
.LASF220:
	.string	"vmmouse_mouse_event"
.LASF11:
	.string	"__off64_t"
.LASF101:
	.string	"is_system_call"
.LASF160:
	.string	"intercept_dr_write"
.LASF203:
	.string	"QEMUPutMouseEvent"
.LASF124:
	.string	"t0tag"
.LASF96:
	.string	"stop_condition"
.LASF226:
	.string	"vmmouse_get_data"
.LASF167:
	.string	"smbase"
.LASF126:
	.string	"t2tag"
.LASF26:
	.string	"_IO_buf_end"
.LASF217:
	.string	"VMMouseState"
.LASF63:
	.string	"target_ulong"
.LASF158:
	.string	"intercept_cr_write"
.LASF225:
	.string	"command"
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
.LASF246:
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
.LASF169:
	.string	"user_mode_only"
.LASF154:
	.string	"vm_hsave"
.LASF177:
	.string	"nb_breakpoints"
.LASF135:
	.string	"fpip"
.LASF204:
	.string	"QEMUPutMouseEntry"
.LASF106:
	.string	"instruction_size"
.LASF231:
	.string	"vmmouse_get_status"
.LASF190:
	.string	"cpuid_version"
.LASF201:
	.string	"APICState"
.LASF127:
	.string	"regtags"
.LASF76:
	.string	"float_status"
.LASF20:
	.string	"_IO_read_end"
.LASF208:
	.string	"qemu_put_mouse_event_name"
.LASF218:
	.string	"buttons_state"
.LASF55:
	.string	"uint32_t"
.LASF32:
	.string	"_fileno"
.LASF163:
	.string	"exception_index"
.LASF179:
	.string	"watchpoint"
.LASF62:
	.string	"jmp_buf"
.LASF70:
	.string	"float"
.LASF244:
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
.LASF205:
	.string	"qemu_put_mouse_event"
.LASF175:
	.string	"tb_jmp_cache"
.LASF91:
	.string	"origin"
.LASF198:
	.string	"envmap"
.LASF14:
	.string	"__sigset_t"
.LASF186:
	.string	"cpuid_level"
.LASF119:
	.string	"argos_shellcode_context_t"
.LASF89:
	.string	"argos_bytemap_t"
.LASF147:
	.string	"xmm_t0"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
