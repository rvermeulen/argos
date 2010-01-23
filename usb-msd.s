	.file	"usb-msd.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 32
	.type	qemu_msd_config_descriptor, @object
	.size	qemu_msd_config_descriptor, 32
qemu_msd_config_descriptor:
	.byte	9
	.byte	2
	.byte	32
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	-64
	.byte	0
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	6
	.byte	80
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	2
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.align 16
	.type	qemu_msd_dev_descriptor, @object
	.size	qemu_msd_dev_descriptor, 18
qemu_msd_dev_descriptor:
	.byte	18
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	1
	.text
	.p2align 4,,15
	.type	usb_msd_copy_data, @function
usb_msd_copy_data:
.LFB100:
	.file 1 "/home/remco/Projects/Argos/src/hw/usb-msd.c"
	.loc 1 135 0
	movq	%rbx, -24(%rsp)
.LCFI0:
	movq	%rbp, -16(%rsp)
.LCFI1:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI2:
	subq	$24, %rsp
.LCFI3:
	.loc 1 137 0
	movl	1160(%rdi), %ebp
	.loc 1 138 0
	movl	1148(%rdi), %eax
	.loc 1 139 0
	cmpl	%ebp, %eax
	cmovb	%eax, %ebp
	.loc 1 140 0
	cmpl	$2, 1144(%rdi)
	je	.L11
	.loc 1 143 0
	movq	1152(%rdi), %rdi
	movq	1168(%rbx), %rsi
	mov	%ebp, %r12d
.L9:
	movq	%r12, %rdx
	call	memcpy
	.loc 1 146 0
	movl	1148(%rbx), %eax
	.loc 1 145 0
	subl	%ebp, 1160(%rbx)
	.loc 1 147 0
	addq	%r12, 1168(%rbx)
	.loc 1 148 0
	addq	%r12, 1152(%rbx)
	.loc 1 146 0
	subl	%ebp, %eax
	.loc 1 149 0
	subl	%ebp, 1176(%rbx)
	.loc 1 150 0
	testl	%eax, %eax
	.loc 1 146 0
	movl	%eax, 1148(%rbx)
	.loc 1 150 0
	jne	.L1
	.loc 1 151 0
	movl	1144(%rbx), %eax
	cmpl	$2, %eax
	je	.L12
	.loc 1 153 0
	decl	%eax
	je	.L13
.L1:
	.loc 1 157 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L11:
	.loc 1 141 0
	movq	1168(%rdi), %rdi
	movq	1152(%rbx), %rsi
	mov	%ebp, %r12d
	jmp	.L9
	.p2align 4,,7
.L12:
	.loc 1 152 0
	movq	1200(%rbx), %rax
	movl	1184(%rbx), %esi
	.loc 1 157 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	.loc 1 152 0
	movq	24(%rax), %r11
	movq	%rax, %rdi
	.loc 1 157 0
	addq	$24, %rsp
	.loc 1 152 0
	jmp	*%r11
.L13:
	.loc 1 154 0
	movq	1200(%rbx), %rax
	movl	1184(%rbx), %esi
	.loc 1 157 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	.loc 1 154 0
	movq	32(%rax), %r11
	movq	%rax, %rdi
	.loc 1 157 0
	addq	$24, %rsp
	.loc 1 154 0
	jmp	*%r11
.LFE100:
	.size	usb_msd_copy_data, .-usb_msd_copy_data
	.p2align 4,,15
	.type	usb_msd_send_status, @function
usb_msd_send_status:
.LFB101:
	.loc 1 160 0
.LBB2:
	.file 2 "./bswap.h"
	.loc 2 124 0
	movl	1184(%rdi), %eax
.LBE2:
	movl	$1396855637, -24(%rsp)
	.loc 1 167 0
	movq	1168(%rdi), %rdx
	.loc 2 124 0
	movl	%eax, -20(%rsp)
	.loc 1 165 0
	movl	1180(%rdi), %eax
	movl	%eax, -16(%rsp)
	.loc 1 166 0
	movl	1208(%rdi), %eax
	movb	%al, -12(%rsp)
	.loc 1 167 0
	movq	-24(%rsp), %rax
	movq	%rax, (%rdx)
	movl	-16(%rsp), %eax
	movl	%eax, 8(%rdx)
	movzbl	-12(%rsp), %eax
	movb	%al, 12(%rdx)
	ret
.LFE101:
	.size	usb_msd_send_status, .-usb_msd_send_status
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"usb-msd: Unexpected SCSI Tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	usb_msd_command_complete, @function
usb_msd_command_complete:
.LFB102:
	.loc 1 172 0
	movq	%rbx, -40(%rsp)
.LCFI4:
	movq	%rbp, -32(%rsp)
.LCFI5:
	movq	%rdi, %rbx
	movq	%r12, -24(%rsp)
.LCFI6:
	movq	%r13, -16(%rsp)
.LCFI7:
	movl	%esi, %r12d
	movq	%r14, -8(%rsp)
.LCFI8:
	subq	$40, %rsp
.LCFI9:
	.loc 1 176 0
	cmpl	%edx, 1184(%rdi)
	.loc 1 172 0
	movl	%edx, %ebp
	movl	%ecx, %r13d
	.loc 1 174 0
	movq	1216(%rdi), %r14
	.loc 1 176 0
	je	.L18
	.loc 1 177 0
	movq	stderr(%rip), %rdi
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	fprintf
.L18:
	.loc 1 179 0
	testl	%r12d, %r12d
	jne	.L19
	.loc 1 182 0
	xorl	%eax, %eax
	testl	%r13d, %r13d
	.loc 1 181 0
	movl	1176(%rbx), %ecx
	.loc 1 182 0
	setne	%al
	.loc 1 183 0
	cmpq	$0, 1216(%rbx)
	.loc 1 182 0
	movl	%eax, 1208(%rbx)
	.loc 1 181 0
	movl	%ecx, 1180(%rbx)
	.loc 1 183 0
	je	.L21
	.loc 1 184 0
	testl	%ecx, %ecx
	je	.L38
	.loc 1 191 0
	movl	1160(%rbx), %eax
	subl	%eax, %ecx
	.loc 1 192 0
	cmpl	$2, 1144(%rbx)
	.loc 1 191 0
	movl	%ecx, 1176(%rbx)
	.loc 1 192 0
	je	.L39
.L25:
	.loc 1 196 0
	testl	%ecx, %ecx
	.loc 1 194 0
	movl	$0, 1160(%rbx)
	.loc 1 196 0
	je	.L34
	.p2align 4,,7
.L37:
	.loc 1 215 0
	movq	$0, 1216(%rbx)
.LBB3:
.LBB4:
	.file 3 "/home/remco/Projects/Argos/src/hw/usb.h"
	.loc 3 185 0
	movq	%r14, %rdi
	movq	32(%r14), %rsi
	movq	24(%r14), %r11
.LBE4:
.LBE3:
	.loc 1 219 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
.LBB5:
.LBB6:
	.loc 3 185 0
	jmp	*%r11
	.p2align 4,,7
.L21:
.LBE6:
.LBE5:
	.loc 1 201 0
	testl	%ecx, %ecx
	jne	.L17
	.loc 1 202 0
	movl	$3, 1144(%rbx)
	jmp	.L17
	.p2align 4,,7
.L19:
	.loc 1 207 0
	movq	1200(%rbx), %rax
	.loc 1 206 0
	movl	%r13d, 1148(%rbx)
	.loc 1 207 0
	movl	%ebp, %esi
	movq	%rax, %rdi
	call	*48(%rax)
	.loc 1 208 0
	testq	%r14, %r14
	.loc 1 207 0
	movq	%rax, 1152(%rbx)
	.loc 1 208 0
	je	.L17
	.loc 1 209 0
	movq	%rbx, %rdi
	call	usb_msd_copy_data
	.loc 1 210 0
	movl	1160(%rbx), %eax
	testl	%eax, %eax
	je	.L37
	.p2align 4,,7
.L17:
	.loc 1 219 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L38:
	.loc 1 184 0
	cmpl	$1, 1144(%rbx)
	je	.L40
.L34:
	.loc 1 197 0
	movl	$3, 1144(%rbx)
	jmp	.L37
.L39:
	.loc 1 193 0
	movq	1168(%rbx), %rdi
	mov	%eax, %edx
	xorl	%esi, %esi
	call	memset
	movl	1176(%rbx), %ecx
	jmp	.L25
.L40:
	.loc 1 187 0
	movq	%rbx, %rdi
	call	usb_msd_send_status
	.loc 1 188 0
	movl	$0, 1144(%rbx)
	jmp	.L37
.LFE102:
	.size	usb_msd_command_complete, .-usb_msd_command_complete
	.p2align 4,,15
	.type	usb_msd_handle_reset, @function
usb_msd_handle_reset:
.LFB103:
	.loc 1 222 0
	.loc 1 226 0
	movl	$0, 1144(%rdi)
	ret
.LFE103:
	.size	usb_msd_handle_reset, .-usb_msd_handle_reset
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"1"
.LC1:
	.string	"QEMU 0.9.1"
.LC2:
	.string	"QEMU USB HARDDRIVE"
	.text
	.p2align 4,,15
	.type	usb_msd_handle_control, @function
usb_msd_handle_control:
.LFB104:
	.loc 1 231 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 233 0
	xorl	%r8d, %r8d
	.loc 1 235 0
	cmpl	$254, %esi
	.loc 1 231 0
	movq	%rdi, %rax
	movq	%r9, %rdi
	.loc 1 235 0
	je	.L75
	jg	.L77
	cmpl	$5, %esi
	je	.L53
	.p2align 4,,9
	jle	.L84
	cmpl	$9, %esi
	.p2align 4,,7
	je	.L44
	cmpl	$11, %esi
.L81:
	.loc 1 319 0
	.p2align 4,,7
	je	.L44
	.p2align 4,,7
.L49:
	.loc 1 336 0
	movl	$-3, %r8d
	.loc 1 340 0
	addq	$8, %rsp
	movl	%r8d, %eax
	.p2align 4,,1
	ret
	.p2align 4,,7
.L77:
	.loc 1 235 0
	cmpl	$32768, %esi
	.p2align 4,,2
	je	.L45
	.p2align 4,,4
	jg	.L79
	cmpl	$255, %esi
	.p2align 4,,7
	je	.L74
	cmpl	$513, %esi
	.p2align 4,,7
	jne	.L49
	.loc 1 319 0
	testl	%edx, %edx
	sete	%dl
	xorl	%eax, %eax
	cmpl	$129, %ecx
	setne	%al
	testl	%edx, %eax
	jmp	.L81
	.p2align 4,,7
.L79:
	.loc 1 235 0
	cmpl	$32776, %esi
	je	.L68
	jle	.L85
	cmpl	$32778, %esi
	.p2align 4,,7
	jne	.L49
	.p2align 4,,7
.L75:
	.loc 1 331 0
	movb	$0, (%rdi)
.L82:
	.loc 1 332 0
	movl	$1, %r8d
.L44:
	.loc 1 340 0
	movl	%r8d, %eax
	addq	$8, %rsp
	.p2align 4,,1
	ret
	.p2align 4,,7
.L84:
	.loc 1 235 0
	cmpl	$1, %esi
	je	.L46
	cmpl	$3, %esi
	jne	.L49
	.loc 1 251 0
	decl	%edx
	.p2align 4,,6
	jne	.L49
	.loc 1 252 0
	movl	$1, 1128(%rax)
	.p2align 4,,3
	jmp	.L44
	.p2align 4,,7
.L53:
	.loc 1 259 0
	movb	%dl, 56(%rax)
	.loc 1 340 0
	movl	%r8d, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L45:
	.loc 1 237 0
	movl	1128(%rax), %eax
	.loc 1 240 0
	movl	$2, %r8d
	.loc 1 239 0
	movb	$0, 1(%r9)
	.loc 1 237 0
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, (%r9)
	.loc 1 340 0
	movl	%r8d, %eax
	addq	$8, %rsp
	ret
.L85:
	.loc 1 235 0
	cmpl	$32774, %esi
	jne	.L49
	.loc 1 263 0
	movl	%edx, %eax
	sarl	$8, %eax
	cmpl	$2, %eax
	je	.L57
	.p2align 4,,3
	jg	.L67
	decl	%eax
	.p2align 4,,4
	jne	.L49
	.loc 1 265 0
	movq	qemu_msd_dev_descriptor(%rip), %rax
	.loc 1 267 0
	movl	$18, %r8d
	.loc 1 265 0
	movq	%rax, (%r9)
	movq	qemu_msd_dev_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movzwl	qemu_msd_dev_descriptor+16(%rip), %eax
	movw	%ax, 16(%r9)
	jmp	.L44
	.p2align 4,,7
.L74:
	.loc 1 327 0
	movl	$0, 1144(%rax)
	jmp	.L44
.L68:
	.loc 1 305 0
	movb	$1, (%r9)
	jmp	.L82
.L46:
	.loc 1 243 0
	decl	%edx
	.p2align 4,,3
	jne	.L49
	.loc 1 244 0
	movl	$0, 1128(%rax)
	.p2align 4,,3
	jmp	.L44
.L67:
	.loc 1 263 0
	cmpl	$3, %eax
	.p2align 4,,3
	jne	.L49
	.loc 1 275 0
	movzbl	%dl,%eax
	cmpl	$1, %eax
	je	.L61
	.p2align 4,,5
	jle	.L86
	cmpl	$2, %eax
	.p2align 4,,5
	je	.L62
	cmpl	$3, %eax
	.p2align 4,,7
	jne	.L49
	.loc 1 294 0
	movl	$.LC3, %esi
.L83:
	call	set_usb_string
	movl	%eax, %r8d
	jmp	.L44
.L57:
	.loc 1 270 0
	movq	qemu_msd_config_descriptor(%rip), %rax
	.loc 1 272 0
	movl	$32, %r8d
	.loc 1 270 0
	movq	%rax, (%r9)
	movq	qemu_msd_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_msd_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_msd_config_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	jmp	.L44
.L86:
	.loc 1 275 0
	testl	%eax, %eax
	jne	.L49
	.loc 1 282 0
	movl	$4, %r8d
	.loc 1 278 0
	movb	$4, (%r9)
	.loc 1 279 0
	movb	$3, 1(%r9)
	.loc 1 280 0
	movb	$9, 2(%r9)
	.loc 1 281 0
	movb	$4, 3(%r9)
	jmp	.L44
.L61:
	.loc 1 286 0
	movl	$.LC1, %esi
	jmp	.L83
.L62:
	.loc 1 290 0
	movl	$.LC2, %esi
	jmp	.L83
.LFE104:
	.size	usb_msd_handle_control, .-usb_msd_handle_control
	.p2align 4,,15
	.type	usb_msd_cancel_io, @function
usb_msd_cancel_io:
.LFB105:
	.loc 1 343 0
	pushq	%rbx
.LCFI11:
	.loc 1 345 0
	movq	1200(%rsi), %rax
	.loc 1 343 0
	movq	%rsi, %rbx
	.loc 1 345 0
	movl	1184(%rsi), %esi
	movq	%rax, %rdi
	call	*40(%rax)
	.loc 1 346 0
	movq	$0, 1216(%rbx)
	.loc 1 347 0
	movl	$0, 1148(%rbx)
	popq	%rbx
	ret
.LFE105:
	.size	usb_msd_cancel_io, .-usb_msd_cancel_io
	.section	.rodata.str1.1
.LC5:
	.string	"usb-msd: Bad signature %08x\n"
.LC4:
	.string	"usb-msd: Bad CBW size"
.LC6:
	.string	"usb-msd: Bad LUN %d\n"
	.text
	.p2align 4,,15
	.type	usb_msd_handle_data, @function
usb_msd_handle_data:
.LFB106:
	.loc 1 351 0
	movq	%rbx, -24(%rsp)
.LCFI12:
	movq	%rbp, -16(%rsp)
.LCFI13:
	movq	%rsi, %rbx
	movq	%r12, -8(%rsp)
.LCFI14:
	subq	$56, %rsp
.LCFI15:
	.loc 1 359 0
	movl	(%rsi), %eax
	.loc 1 351 0
	movq	%rdi, %rbp
	.loc 1 355 0
	movzbl	5(%rsi), %edx
	.loc 1 356 0
	movq	8(%rsi), %rcx
	.loc 1 357 0
	movl	16(%rsi), %r12d
	.loc 1 359 0
	cmpl	$105, %eax
	je	.L124
	cmpl	$225, %eax
	je	.L155
.L92:
	.loc 1 500 0
	movl	$-3, %eax
.L89:
	.loc 1 505 0
	movq	32(%rsp), %rbx
	movq	40(%rsp), %rbp
	movq	48(%rsp), %r12
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L155:
	.loc 1 361 0
	cmpb	$2, %dl
	jne	.L92
	.loc 1 364 0
	movl	1144(%rdi), %eax
	testl	%eax, %eax
	je	.L94
	decl	%eax
	jne	.L92
	.loc 1 408 0
	cmpl	1176(%rdi), %r12d
	ja	.L92
	.loc 1 413 0
	movl	1148(%rdi), %r9d
	.loc 1 411 0
	movq	%rcx, 1168(%rdi)
	.loc 1 412 0
	movl	%r12d, 1160(%rdi)
	.loc 1 413 0
	testl	%r9d, %r9d
	jne	.L156
.L115:
	.loc 1 416 0
	movl	1180(%rbp), %r8d
	testl	%r8d, %r8d
	je	.L149
	movl	1160(%rbp), %edx
	testl	%edx, %edx
	je	.L139
	.loc 1 417 0
	movl	1176(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, 1176(%rbp)
	.loc 1 418 0
	testl	%eax, %eax
.L153:
	.loc 1 477 0
	jne	.L138
	.loc 1 478 0
	movl	$3, 1144(%rbp)
.L138:
	.loc 1 479 0
	movl	$0, 1160(%rbp)
.L139:
	.loc 1 487 0
	movl	%r12d, %eax
	jmp	.L89
	.p2align 4,,7
.L124:
	.loc 1 439 0
	decb	%dl
	jne	.L92
	.loc 1 442 0
	movl	1144(%rdi), %eax
	cmpl	$2, %eax
	je	.L134
	.p2align 4,,2
	ja	.L145
	decl	%eax
	.p2align 4,,3
	jne	.L92
	.loc 1 444 0
	movl	1176(%rdi), %edi
	testl	%edi, %edi
	setne	%dl
	cmpl	$12, %r12d
	setle	%al
	orl	%edx, %eax
	testb	$1, %al
	jne	.L92
.L151:
	.loc 1 485 0
	movl	$-5, %eax
.LBB7:
.LBB8:
	.loc 3 176 0
	movq	$usb_msd_cancel_io, 40(%rbx)
	.loc 3 177 0
	movq	%rbp, 48(%rbx)
.LBE8:
.LBE7:
	.loc 1 484 0
	movq	%rbx, 1216(%rbp)
	jmp	.L89
.L145:
	.loc 1 442 0
	cmpl	$3, %eax
	jne	.L92
	.loc 1 455 0
	cmpl	$12, %r12d
	jle	.L92
	.loc 1 458 0
	movl	%r12d, 1160(%rdi)
	.loc 1 459 0
	movq	%rcx, 1168(%rdi)
	.loc 1 460 0
	call	usb_msd_send_status
	.loc 1 462 0
	movl	$13, %eax
	.loc 1 461 0
	movl	$0, 1144(%rbp)
	jmp	.L89
.L94:
	.loc 1 366 0
	cmpl	$31, %r12d
	jne	.L157
	.loc 1 370 0
	movq	(%rcx), %rax
	.loc 2 124 0
	movl	$.LC5, %esi
	.loc 1 370 0
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
.LBB9:
	.loc 2 124 0
	movl	(%rsp), %edx
.LBE9:
	.loc 1 370 0
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	.loc 2 124 0
	cmpl	$1128420181, %edx
	.loc 1 370 0
	movq	%rax, 16(%rsp)
	movl	24(%rcx), %eax
	movl	%eax, 24(%rsp)
	movzwl	28(%rcx), %eax
	movw	%ax, 28(%rsp)
	movzbl	30(%rcx), %eax
	movb	%al, 30(%rsp)
	.loc 2 124 0
	jne	.L150
	.loc 1 377 0
	movzbl	13(%rsp), %eax
	testb	%al, %al
	jne	.L158
.LBB10:
	.loc 2 124 0
	movl	4(%rsp), %esi
.LBE10:
	movl	%esi, 1184(%rdi)
.LBB11:
	movl	8(%rsp), %eax
.LBE11:
	.loc 1 383 0
	testl	%eax, %eax
	.loc 2 124 0
	movl	%eax, 1176(%rdi)
	.loc 1 383 0
	jne	.L103
	.loc 1 384 0
	movl	$3, 1144(%rdi)
.L107:
	.loc 1 393 0
	movq	1200(%rbp), %rax
	xorl	%ecx, %ecx
	.loc 1 392 0
	movl	$0, 1180(%rbp)
	.loc 1 393 0
	leaq	15(%rsp), %rdx
	movq	%rax, %rdi
	call	*16(%rax)
	.loc 1 396 0
	movl	1180(%rbp), %r10d
	testl	%r10d, %r10d
	jne	.L108
	.loc 1 397 0
	movl	1144(%rbp), %eax
	cmpl	$2, %eax
	je	.L159
	.loc 1 399 0
	decl	%eax
	je	.L160
.L108:
	.loc 1 403 0
	movl	$31, %eax
	jmp	.L89
.L157:
	.loc 1 367 0
	movq	stderr(%rip), %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	jmp	.L92
.L160:
	.loc 1 400 0
	movq	1200(%rbp), %rax
	movl	1184(%rbp), %esi
	movq	%rax, %rdi
	call	*32(%rax)
	.loc 1 403 0
	movl	$31, %eax
	jmp	.L89
	.p2align 4,,7
.L134:
	.loc 1 467 0
	movl	1176(%rdi), %eax
	.loc 1 471 0
	movl	1148(%rdi), %esi
	.loc 1 469 0
	movq	%rcx, 1168(%rdi)
	.loc 1 468 0
	cmpl	%eax, %r12d
	cmova	%eax, %r12d
	.loc 1 471 0
	testl	%esi, %esi
	.loc 1 470 0
	movl	%r12d, 1160(%rdi)
	.loc 1 471 0
	jne	.L161
.L136:
	.loc 1 474 0
	movl	1180(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L149
	movl	1160(%rbp), %edx
	testl	%edx, %edx
	je	.L139
	.loc 1 475 0
	subl	%edx, 1176(%rbp)
	.loc 1 476 0
	movq	1168(%rbp), %rdi
	xorl	%esi, %esi
	mov	%edx, %edx
	call	memset
	.loc 1 477 0
	cmpl	$0, 1176(%rbp)
	jmp	.L153
.L149:
	.loc 1 481 0
	movl	1160(%rbp), %edx
	testl	%edx, %edx
	jne	.L151
	.loc 1 487 0
	movl	%r12d, %eax
	jmp	.L89
.L158:
	.loc 1 378 0
	movzbl	%al, %edx
	movl	$.LC6, %esi
.L150:
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L92
.L161:
	.loc 1 472 0
	call	usb_msd_copy_data
	.p2align 4,,8
	jmp	.L136
.L103:
	.loc 1 386 0
	movsbl	12(%rsp),%eax
	sarl	$31, %eax
	notl	%eax
	addl	$2, %eax
	movl	%eax, 1144(%rdi)
	jmp	.L107
.L156:
	.loc 1 414 0
	call	usb_msd_copy_data
	jmp	.L115
.L159:
	.loc 1 398 0
	movq	1200(%rbp), %rax
	movl	1184(%rbp), %esi
	movq	%rax, %rdi
	call	*24(%rax)
	.loc 1 403 0
	movl	$31, %eax
	jmp	.L89
.LFE106:
	.size	usb_msd_handle_data, .-usb_msd_handle_data
	.p2align 4,,15
	.type	usb_msd_handle_destroy, @function
usb_msd_handle_destroy:
.LFB107:
	.loc 1 508 0
	pushq	%rbx
.LCFI16:
	.loc 1 511 0
	movq	1200(%rdi), %rax
	.loc 1 508 0
	movq	%rdi, %rbx
	.loc 1 511 0
	movq	%rax, %rdi
	call	*8(%rax)
	.loc 1 512 0
	movq	1192(%rbx), %rdi
	call	bdrv_delete
	.loc 1 513 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE107:
	.size	usb_msd_handle_destroy, .-usb_msd_handle_destroy
	.section	.rodata.str1.1
.LC7:
	.string	"usb"
.LC8:
	.string	"QEMU USB MSD(%.16s)"
	.text
	.p2align 4,,15
.globl usb_msd_init
	.type	usb_msd_init, @function
usb_msd_init:
.LFB108:
	.loc 1 517 0
	movq	%rbx, -24(%rsp)
.LCFI17:
	movq	%r12, -8(%rsp)
.LCFI18:
	movq	%rdi, %r12
	movq	%rbp, -16(%rsp)
.LCFI19:
	.loc 1 521 0
	movl	$1224, %edi
	.loc 1 517 0
	subq	$24, %rsp
.LCFI20:
	.loc 1 521 0
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 523 0
	xorl	%eax, %eax
	.loc 1 522 0
	testq	%rbx, %rbx
	je	.L163
	.loc 1 525 0
	movl	$.LC7, %edi
	call	bdrv_new
	.loc 1 526 0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	.loc 1 525 0
	movq	%rax, %rbp
	.loc 1 526 0
	call	bdrv_open
	testl	%eax, %eax
	js	.L166
	.loc 1 528 0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	qemu_key_check
	testl	%eax, %eax
	je	.L168
.L166:
	.loc 1 547 0
	movq	%rbx, %rdi
	call	qemu_free
	.loc 1 548 0
	xorl	%eax, %eax
.L163:
	.loc 1 549 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L168:
	.loc 1 540 0
	leaq	57(%rbx), %rdi
	.loc 1 530 0
	movq	%rbp, 1192(%rbx)
	.loc 1 540 0
	movq	%r12, %rcx
	.loc 1 532 0
	movl	$1, 24(%rbx)
	.loc 1 533 0
	movq	$usb_generic_handle_packet, 8(%rbx)
	.loc 1 540 0
	movl	$.LC8, %edx
	.loc 1 535 0
	movq	$usb_msd_handle_reset, 32(%rbx)
	.loc 1 536 0
	movq	$usb_msd_handle_control, 40(%rbx)
	.loc 1 540 0
	movl	$32, %esi
	.loc 1 537 0
	movq	$usb_msd_handle_data, 48(%rbx)
	.loc 1 538 0
	movq	$usb_msd_handle_destroy, 16(%rbx)
	.loc 1 540 0
	call	snprintf
	.loc 1 543 0
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	movl	$usb_msd_command_complete, %edx
	xorl	%esi, %esi
	call	scsi_disk_init
	.loc 1 544 0
	movq	%rbx, %rdi
	.loc 1 543 0
	movq	%rax, 1200(%rbx)
	.loc 1 544 0
	call	usb_msd_handle_reset
	.loc 1 545 0
	movq	%rbx, %rax
	.loc 1 549 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE108:
	.size	usb_msd_init, .-usb_msd_init
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI1-.LFB100
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI5-.LFB102
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI11-.LFB105
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
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI13-.LFB106
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI16-.LFB107
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI18-.LFB108
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE16:
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
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI1-.LFB100
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI5-.LFB102
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI11-.LFB105
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
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI13-.LFB106
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0xe
	.uleb128 0x40
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI16-.LFB107
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
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI18-.LFB108
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI20-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE17:
	.file 4 "/usr/include/stdint.h"
	.file 5 "./qemu-common.h"
	.file 6 "/home/remco/Projects/Argos/src/hw/scsi-disk.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xd2e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF132
	.byte	0x1
	.long	.LASF133
	.long	.LASF134
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
	.byte	0xa
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
	.byte	0x8e
	.long	0x4d
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0xc5
	.long	0x3f
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.long	0xd0
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.long	0x29c
	.long	.LASF44
	.byte	0xd8
	.byte	0x8
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF14
	.byte	0x9
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x9
	.value	0x115
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x9
	.value	0x116
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0x9
	.value	0x117
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.long	.LASF18
	.byte	0x9
	.value	0x118
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.long	.LASF19
	.byte	0x9
	.value	0x119
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.long	.LASF20
	.byte	0x9
	.value	0x11a
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.long	.LASF21
	.byte	0x9
	.value	0x11b
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF22
	.byte	0x9
	.value	0x11c
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF23
	.byte	0x9
	.value	0x11e
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF24
	.byte	0x9
	.value	0x11f
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.long	.LASF25
	.byte	0x9
	.value	0x120
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.long	.LASF26
	.byte	0x9
	.value	0x122
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.long	.LASF27
	.byte	0x9
	.value	0x124
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.long	.LASF28
	.byte	0x9
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.long	.LASF29
	.byte	0x9
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.long	.LASF30
	.byte	0x9
	.value	0x12c
	.long	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.long	.LASF31
	.byte	0x9
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.long	.LASF32
	.byte	0x9
	.value	0x131
	.long	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xb
	.long	.LASF33
	.byte	0x9
	.value	0x132
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xb
	.long	.LASF34
	.byte	0x9
	.value	0x136
	.long	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.long	.LASF35
	.byte	0x9
	.value	0x13f
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.long	.LASF36
	.byte	0x9
	.value	0x148
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.long	.LASF37
	.byte	0x9
	.value	0x149
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x9
	.value	0x14a
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.long	.LASF39
	.byte	0x9
	.value	0x14b
	.long	0xa6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x9
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x9
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x9
	.value	0x150
	.long	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x9
	.byte	0xb4
	.uleb128 0xa
	.long	0x2da
	.long	.LASF45
	.byte	0x18
	.byte	0x9
	.byte	0xba
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0xbb
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0xbc
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x2a3
	.uleb128 0x5
	.byte	0x8
	.long	0xd0
	.uleb128 0x8
	.long	0x2f6
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x29c
	.uleb128 0x8
	.long	0x30c
	.long	0x74
	.uleb128 0x9
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x31
	.long	0x7b
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x6
	.long	0x30c
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x6e
	.long	0x332
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x70
	.long	0x343
	.uleb128 0xf
	.long	0x435
	.long	.LASF52
	.value	0x478
	.byte	0x3
	.byte	0x70
	.uleb128 0xd
	.long	.LASF53
	.byte	0x3
	.byte	0x75
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x3
	.byte	0x76
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x3
	.byte	0x77
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF56
	.byte	0x3
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF57
	.byte	0x3
	.byte	0x7e
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF58
	.byte	0x3
	.byte	0x80
	.long	0x533
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF59
	.byte	0x3
	.byte	0x81
	.long	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.long	.LASF60
	.byte	0x3
	.byte	0x82
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.long	.LASF61
	.byte	0x3
	.byte	0x83
	.long	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xd
	.long	.LASF62
	.byte	0x3
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.long	.LASF63
	.byte	0x3
	.byte	0x86
	.long	0x539
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.long	.LASF64
	.byte	0x3
	.byte	0x87
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.long	.LASF65
	.byte	0x3
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xd
	.long	.LASF66
	.byte	0x3
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xd
	.long	.LASF67
	.byte	0x3
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xd
	.long	.LASF68
	.byte	0x3
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x3
	.byte	0x71
	.long	0x440
	.uleb128 0xa
	.long	0x4cb
	.long	.LASF69
	.byte	0x38
	.byte	0x3
	.byte	0x71
	.uleb128 0x10
	.string	"pid"
	.byte	0x3
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x3
	.byte	0x9f
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF71
	.byte	0x3
	.byte	0xa0
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF72
	.byte	0x3
	.byte	0xa1
	.long	0x52d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"len"
	.byte	0x3
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF73
	.byte	0x3
	.byte	0xa4
	.long	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF74
	.byte	0x3
	.byte	0xa5
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF75
	.byte	0x3
	.byte	0xa6
	.long	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF76
	.byte	0x3
	.byte	0xa7
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x11
	.long	0x4e0
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x4e0
	.uleb128 0x12
	.long	0x4e6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x338
	.uleb128 0x5
	.byte	0x8
	.long	0x435
	.uleb128 0x5
	.byte	0x8
	.long	0x4cb
	.uleb128 0x13
	.long	0x4fe
	.byte	0x1
	.uleb128 0x12
	.long	0x4e0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4f2
	.uleb128 0x11
	.long	0x52d
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x4e0
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x52d
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x30c
	.uleb128 0x5
	.byte	0x8
	.long	0x504
	.uleb128 0x8
	.long	0x549
	.long	0x30c
	.uleb128 0x9
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.long	0x55a
	.long	0x30c
	.uleb128 0x14
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x3
	.byte	0x99
	.long	0x565
	.uleb128 0x13
	.long	0x576
	.byte	0x1
	.uleb128 0x12
	.long	0x4e6
	.uleb128 0x12
	.long	0xa6
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x55a
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.byte	0xa
	.long	0x587
	.uleb128 0xe
	.long	.LASF78
	.byte	0x1
	.uleb128 0x2
	.long	.LASF79
	.byte	0x6
	.byte	0xb
	.long	0x598
	.uleb128 0xa
	.long	0x607
	.long	.LASF79
	.byte	0x38
	.byte	0x6
	.byte	0xb
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.byte	0x11
	.long	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF80
	.byte	0x6
	.byte	0x12
	.long	0x61f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF81
	.byte	0x6
	.byte	0x14
	.long	0x644
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.long	.LASF82
	.byte	0x6
	.byte	0x15
	.long	0x65b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.long	.LASF83
	.byte	0x6
	.byte	0x16
	.long	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.long	.LASF84
	.byte	0x6
	.byte	0x17
	.long	0x65b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.long	.LASF85
	.byte	0x6
	.byte	0x18
	.long	0x691
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x57c
	.uleb128 0x13
	.long	0x619
	.byte	0x1
	.uleb128 0x12
	.long	0x619
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x58d
	.uleb128 0x5
	.byte	0x8
	.long	0x60d
	.uleb128 0x11
	.long	0x644
	.byte	0x1
	.long	0xae
	.uleb128 0x12
	.long	0x619
	.uleb128 0x12
	.long	0x317
	.uleb128 0x12
	.long	0x52d
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x625
	.uleb128 0x13
	.long	0x65b
	.byte	0x1
	.uleb128 0x12
	.long	0x619
	.uleb128 0x12
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x64a
	.uleb128 0x11
	.long	0x676
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x619
	.uleb128 0x12
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x661
	.uleb128 0x11
	.long	0x691
	.byte	0x1
	.long	0x52d
	.uleb128 0x12
	.long	0x619
	.uleb128 0x12
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x67c
	.uleb128 0x15
	.long	0x6bc
	.long	.LASF135
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.uleb128 0x16
	.long	.LASF86
	.sleb128 0
	.uleb128 0x16
	.long	.LASF87
	.sleb128 1
	.uleb128 0x16
	.long	.LASF88
	.sleb128 2
	.uleb128 0x16
	.long	.LASF89
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x787
	.value	0x4c8
	.byte	0x1
	.byte	0x32
	.uleb128 0x10
	.string	"dev"
	.byte	0x1
	.byte	0x24
	.long	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF90
	.byte	0x1
	.byte	0x25
	.long	0x697
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0x26
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x47c
	.uleb128 0xd
	.long	.LASF92
	.byte	0x1
	.byte	0x27
	.long	0x52d
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.uleb128 0xd
	.long	.LASF93
	.byte	0x1
	.byte	0x28
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x488
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0x29
	.long	0x52d
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x2a
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x498
	.uleb128 0xd
	.long	.LASF96
	.byte	0x1
	.byte	0x2b
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x49c
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x2c
	.long	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a0
	.uleb128 0x10
	.string	"bs"
	.byte	0x1
	.byte	0x2d
	.long	0x787
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a8
	.uleb128 0xd
	.long	.LASF97
	.byte	0x1
	.byte	0x2e
	.long	0x619
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b0
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x4b8
	.uleb128 0xd
	.long	.LASF99
	.byte	0x1
	.byte	0x31
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x4c0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x327
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1
	.byte	0x32
	.long	0x6bc
	.uleb128 0xa
	.long	0x807
	.long	.LASF101
	.byte	0x20
	.byte	0x1
	.byte	0x34
	.uleb128 0x10
	.string	"sig"
	.byte	0x1
	.byte	0x35
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x36
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x37
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF102
	.byte	0x1
	.byte	0x38
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"lun"
	.byte	0x1
	.byte	0x39
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.long	.LASF103
	.byte	0x1
	.byte	0x3a
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.string	"cmd"
	.byte	0x1
	.byte	0x3b
	.long	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x817
	.long	0x30c
	.uleb128 0x9
	.long	0x5b
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x85c
	.long	.LASF104
	.byte	0x10
	.byte	0x1
	.byte	0x3e
	.uleb128 0x10
	.string	"sig"
	.byte	0x1
	.byte	0x3f
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x40
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF96
	.byte	0x1
	.byte	0x41
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.long	.LASF105
	.byte	0x1
	.byte	0x42
	.long	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x18
	.long	0x893
	.long	.LASF106
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x86
	.long	0x893
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x88
	.long	0x317
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x78d
	.uleb128 0x18
	.long	0x8ee
	.long	.LASF107
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x9f
	.long	0x893
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"csw"
	.byte	0x1
	.byte	0xa1
	.long	0x817
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	0x8ee
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1c
	.long	0x8ff
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x909
	.long	.LASF108
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x317
	.byte	0x3
	.uleb128 0x1e
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x317
	.byte	0x0
	.uleb128 0x18
	.long	0x98b
	.long	.LASF109
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	.LASF53
	.byte	0x1
	.byte	0xaa
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.byte	0xaa
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"tag"
	.byte	0x1
	.byte	0xaa
	.long	0x317
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.byte	0xab
	.long	0x317
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xad
	.long	0x893
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0xae
	.long	0x4e6
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.long	0x98b
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x21
	.long	0x998
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x9a2
	.long	.LASF111
	.byte	0x3
	.byte	0xb8
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.string	"p"
	.byte	0x3
	.byte	0xb7
	.long	0x4e6
	.byte	0x0
	.uleb128 0x18
	.long	0x9d7
	.long	.LASF112
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0xdd
	.long	0x4e0
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xdf
	.long	0x893
	.byte	0x0
	.uleb128 0x23
	.long	0xa6e
	.long	.LASF113
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.long	0x3f
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0xe5
	.long	0x4e0
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.byte	0xe5
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x1
	.byte	0xe5
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.long	.LASF116
	.byte	0x1
	.byte	0xe6
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x1
	.byte	0xe6
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.byte	0xe6
	.long	0x52d
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xe8
	.long	0x893
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0xe9
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.long	.LASF120
	.byte	0x1
	.value	0x14f
	.quad	.L49
	.byte	0x0
	.uleb128 0x25
	.long	0xab2
	.long	.LASF118
	.byte	0x1
	.value	0x157
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x156
	.long	0x4e6
	.byte	0x1
	.byte	0x55
	.uleb128 0x27
	.long	.LASF53
	.byte	0x1
	.value	0x156
	.long	0xa6
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x158
	.long	0x893
	.byte	0x0
	.uleb128 0x29
	.long	0xbd9
	.long	.LASF119
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0x3f
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"dev"
	.byte	0x1
	.value	0x15e
	.long	0x4e0
	.byte	0x1
	.byte	0x56
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x15e
	.long	0x4e6
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x160
	.long	0x893
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.value	0x161
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.string	"cbw"
	.byte	0x1
	.value	0x162
	.long	0x798
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF71
	.byte	0x1
	.value	0x163
	.long	0x30c
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF72
	.byte	0x1
	.value	0x164
	.long	0x52d
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x165
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF120
	.byte	0x1
	.value	0x1f3
	.quad	.L92
	.uleb128 0x2c
	.long	0xb79
	.long	0xbd9
	.quad	.LBB7
	.quad	.LBE7
	.uleb128 0x21
	.long	0xbe6
	.uleb128 0x21
	.long	0xbef
	.uleb128 0x21
	.long	0xbfa
	.byte	0x0
	.uleb128 0x2c
	.long	0xb9a
	.long	0xc06
	.quad	.LBB9
	.quad	.LBE9
	.uleb128 0x1c
	.long	0xc17
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2c
	.long	0xbbb
	.long	0xc06
	.quad	.LBB10
	.quad	.LBE10
	.uleb128 0x1c
	.long	0xc17
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1b
	.long	0xc06
	.quad	.LBB11
	.quad	.LBE11
	.uleb128 0x1c
	.long	0xc17
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xc06
	.long	.LASF121
	.byte	0x3
	.byte	0xaf
	.byte	0x1
	.byte	0x3
	.uleb128 0x1e
	.string	"p"
	.byte	0x3
	.byte	0xad
	.long	0x4e6
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0xad
	.long	0x576
	.uleb128 0x2d
	.long	.LASF53
	.byte	0x3
	.byte	0xae
	.long	0xa6
	.byte	0x0
	.uleb128 0x1d
	.long	0xc21
	.long	.LASF123
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x317
	.byte	0x3
	.uleb128 0x1e
	.string	"v"
	.byte	0x2
	.byte	0x7c
	.long	0x317
	.byte	0x0
	.uleb128 0x25
	.long	0xc59
	.long	.LASF124
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"dev"
	.byte	0x1
	.value	0x1fb
	.long	0x4e0
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x1fd
	.long	0x893
	.byte	0x0
	.uleb128 0x2e
	.long	0xcb6
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.value	0x205
	.byte	0x1
	.long	0x4e0
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.value	0x204
	.long	0x69
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x206
	.long	0x893
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF126
	.byte	0x1
	.value	0x207
	.long	0x787
	.byte	0x1
	.byte	0x56
	.uleb128 0x24
	.long	.LASF120
	.byte	0x1
	.value	0x222
	.quad	.L166
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF127
	.byte	0x8
	.byte	0x91
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF128
	.byte	0x8
	.byte	0x92
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF129
	.byte	0x8
	.byte	0x93
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0xced
	.long	0x322
	.uleb128 0x9
	.long	0x5b
	.byte	0x11
	.byte	0x0
	.uleb128 0x30
	.long	.LASF130
	.byte	0x1
	.byte	0x45
	.long	0xd02
	.byte	0x9
	.byte	0x3
	.quad	qemu_msd_dev_descriptor
	.uleb128 0x6
	.long	0xcdd
	.uleb128 0x8
	.long	0xd17
	.long	0x322
	.uleb128 0x9
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x30
	.long	.LASF131
	.byte	0x1
	.byte	0x5a
	.long	0xd2c
	.byte	0x9
	.byte	0x3
	.quad	qemu_msd_config_descriptor
	.uleb128 0x6
	.long	0xd07
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1f
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd32
	.long	0xc59
	.string	"usb_msd_init"
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
.LASF135:
	.string	"USBMSDMode"
.LASF12:
	.string	"int32_t"
.LASF114:
	.string	"request"
.LASF85:
	.string	"get_buf"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF62:
	.string	"state"
.LASF34:
	.string	"_lock"
.LASF67:
	.string	"setup_len"
.LASF77:
	.string	"USBCallback"
.LASF23:
	.string	"_IO_save_base"
.LASF101:
	.string	"usb_msd_cbw"
.LASF131:
	.string	"qemu_msd_config_descriptor"
.LASF95:
	.string	"data_len"
.LASF31:
	.string	"_cur_column"
.LASF41:
	.string	"_mode"
.LASF98:
	.string	"result"
.LASF84:
	.string	"cancel_io"
.LASF2:
	.string	"long int"
.LASF45:
	.string	"_IO_marker"
.LASF92:
	.string	"scsi_buf"
.LASF53:
	.string	"opaque"
.LASF133:
	.string	"/home/remco/Projects/Argos/src/hw/usb-msd.c"
.LASF52:
	.string	"USBDevice"
.LASF117:
	.string	"length"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF108:
	.string	"cpu_to_le32"
.LASF6:
	.string	"unsigned char"
.LASF93:
	.string	"usb_len"
.LASF91:
	.string	"scsi_len"
.LASF124:
	.string	"usb_msd_handle_destroy"
.LASF51:
	.string	"BlockDriverState"
.LASF71:
	.string	"devep"
.LASF115:
	.string	"value"
.LASF5:
	.string	"char"
.LASF68:
	.string	"setup_index"
.LASF43:
	.string	"_IO_lock_t"
.LASF125:
	.string	"filename"
.LASF102:
	.string	"flags"
.LASF15:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"handle_packet"
.LASF122:
	.string	"cancel"
.LASF89:
	.string	"USB_MSDM_CSW"
.LASF48:
	.string	"_pos"
.LASF127:
	.string	"stdin"
.LASF128:
	.string	"stdout"
.LASF26:
	.string	"_markers"
.LASF69:
	.string	"USBPacket"
.LASF56:
	.string	"speed"
.LASF88:
	.string	"USB_MSDM_DATAIN"
.LASF35:
	.string	"_offset"
.LASF103:
	.string	"cmd_len"
.LASF116:
	.string	"index"
.LASF121:
	.string	"usb_defer_packet"
.LASF109:
	.string	"usb_msd_command_complete"
.LASF0:
	.string	"long unsigned int"
.LASF105:
	.string	"status"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF112:
	.string	"usb_msd_handle_reset"
.LASF70:
	.string	"devaddr"
.LASF42:
	.string	"_unused2"
.LASF30:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF81:
	.string	"send_command"
.LASF74:
	.string	"complete_opaque"
.LASF20:
	.string	"_IO_write_end"
.LASF111:
	.string	"usb_packet_complete"
.LASF96:
	.string	"residue"
.LASF60:
	.string	"addr"
.LASF136:
	.string	"usb_msd_init"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF132:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
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
.LASF47:
	.string	"_sbuf"
.LASF63:
	.string	"setup_buf"
.LASF106:
	.string	"usb_msd_copy_data"
.LASF14:
	.string	"_flags"
.LASF82:
	.string	"read_data"
.LASF100:
	.string	"MSDState"
.LASF64:
	.string	"data_buf"
.LASF65:
	.string	"remote_wakeup"
.LASF87:
	.string	"USB_MSDM_DATAOUT"
.LASF104:
	.string	"usb_msd_csw"
.LASF130:
	.string	"qemu_msd_dev_descriptor"
.LASF13:
	.string	"long long unsigned int"
.LASF80:
	.string	"destroy"
.LASF61:
	.string	"devname"
.LASF49:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF119:
	.string	"usb_msd_handle_data"
.LASF110:
	.string	"reason"
.LASF107:
	.string	"usb_msd_send_status"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF58:
	.string	"handle_control"
.LASF86:
	.string	"USB_MSDM_CBW"
.LASF76:
	.string	"cancel_opaque"
.LASF11:
	.string	"__off64_t"
.LASF94:
	.string	"usb_buf"
.LASF134:
	.string	"/home/remco/Projects/Argos/src"
.LASF120:
	.string	"fail"
.LASF22:
	.string	"_IO_buf_end"
.LASF57:
	.string	"handle_reset"
.LASF118:
	.string	"usb_msd_cancel_io"
.LASF129:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF90:
	.string	"mode"
.LASF32:
	.string	"_vtable_offset"
.LASF99:
	.string	"packet"
.LASF16:
	.string	"_IO_read_end"
.LASF113:
	.string	"usb_msd_handle_control"
.LASF50:
	.string	"uint32_t"
.LASF55:
	.string	"handle_destroy"
.LASF28:
	.string	"_fileno"
.LASF79:
	.string	"SCSIDevice"
.LASF75:
	.string	"cancel_cb"
.LASF4:
	.string	"short unsigned int"
.LASF78:
	.string	"SCSIDeviceState"
.LASF19:
	.string	"_IO_write_ptr"
.LASF73:
	.string	"complete_cb"
.LASF83:
	.string	"write_data"
.LASF123:
	.string	"le32_to_cpu"
.LASF72:
	.string	"data"
.LASF66:
	.string	"setup_state"
.LASF126:
	.string	"bdrv"
.LASF97:
	.string	"scsi_dev"
.LASF59:
	.string	"handle_data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
