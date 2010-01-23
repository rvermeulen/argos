	.file	"usb-wacom.c"
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
	.type	qemu_wacom_config_descriptor, @object
	.size	qemu_wacom_config_descriptor, 34
qemu_wacom_config_descriptor:
	.byte	9
	.byte	2
	.byte	34
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	-128
	.byte	40
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	9
	.byte	33
	.byte	1
	.byte	16
	.byte	0
	.byte	1
	.byte	34
	.byte	110
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	8
	.byte	0
	.byte	10
	.align 16
	.type	qemu_wacom_dev_descriptor, @object
	.size	qemu_wacom_dev_descriptor, 18
qemu_wacom_dev_descriptor:
	.byte	18
	.byte	1
	.byte	16
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	106
	.byte	5
	.byte	0
	.byte	0
	.byte	16
	.byte	66
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.text
	.p2align 4,,15
	.type	usb_mouse_event, @function
usb_mouse_event:
.LFB113:
	.file 1 "/home/remco/Projects/Argos/src/hw/usb-wacom.c"
	.loc 1 121 0
	.loc 1 124 0
	addl	%esi, 1152(%rdi)
	.loc 1 125 0
	addl	%edx, 1156(%rdi)
	.loc 1 127 0
	movl	%r8d, 1164(%rdi)
	.loc 1 126 0
	addl	%ecx, 1160(%rdi)
	.loc 1 127 0
	ret
.LFE113:
	.size	usb_mouse_event, .-usb_mouse_event
	.p2align 4,,15
	.type	usb_wacom_event, @function
usb_wacom_event:
.LFB114:
	.loc 1 132 0
	.loc 1 137 0
	addl	%ecx, 1160(%rdi)
	.loc 1 135 0
	movl	%esi, 1168(%rdi)
	.loc 1 136 0
	movl	%edx, 1172(%rdi)
	.loc 1 138 0
	movl	%r8d, 1164(%rdi)
	ret
.LFE114:
	.size	usb_wacom_event, .-usb_wacom_event
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"QEMU PenPartner tablet"
	.text
	.p2align 4,,15
	.type	usb_mouse_poll, @function
usb_mouse_poll:
.LFB116:
	.loc 1 152 0
	pushq	%r12
.LCFI0:
	movl	%edx, %r12d
	pushq	%rbp
.LCFI1:
	movq	%rsi, %rbp
	pushq	%rbx
.LCFI2:
	.loc 1 155 0
	movl	1176(%rdi), %eax
	.loc 1 152 0
	movq	%rdi, %rbx
	.loc 1 155 0
	testl	%eax, %eax
	je	.L25
.L4:
.LBB2:
	.loc 1 142 0
	movl	1152(%rbx), %ecx
.LBB3:
	.loc 1 143 0
	movl	$-128, %r8d
	cmpl	%r8d, %ecx
	jl	.L6
	.loc 1 145 0
	movl	$127, %r8d
	cmpl	$128, %ecx
	cmovl	%ecx, %r8d
.L6:
.LBE3:
.LBE2:
.LBB4:
	.loc 1 142 0
	movl	1156(%rbx), %edx
.LBB5:
	.loc 1 143 0
	movl	$-128, %esi
	cmpl	%esi, %edx
	jl	.L11
	.loc 1 145 0
	movl	$127, %esi
	cmpl	$128, %edx
	cmovl	%edx, %esi
.L11:
.LBE5:
.LBE4:
.LBB6:
	.loc 1 142 0
	movl	1160(%rbx), %eax
.LBB7:
	.loc 1 143 0
	movl	$-128, %edi
	cmpl	%edi, %eax
	jl	.L16
	.loc 1 145 0
	movl	$127, %edi
	cmpl	$128, %eax
	cmovl	%eax, %edi
.L16:
.LBE7:
.LBE6:
	.loc 1 165 0
	subl	%r8d, %ecx
	.loc 1 166 0
	subl	%esi, %edx
	.loc 1 167 0
	subl	%edi, %eax
	.loc 1 165 0
	movl	%ecx, 1152(%rbx)
	.loc 1 170 0
	movl	1164(%rbx), %ecx
	.loc 1 166 0
	movl	%edx, 1156(%rbx)
	.loc 1 167 0
	movl	%eax, 1160(%rbx)
	.loc 1 171 0
	movl	$1, %edx
	.loc 1 169 0
	xorl	%eax, %eax
	.loc 1 178 0
	movb	%r8b, 1(%rbp)
	.loc 1 179 0
	movb	%sil, 2(%rbp)
	.loc 1 171 0
	testb	$1, %cl
	cmovne	%edx, %eax
	.loc 1 173 0
	movl	%eax, %edx
	orl	$2, %edx
	testb	$2, %cl
	cmovne	%edx, %eax
	.loc 1 175 0
	movl	%eax, %edx
	orl	$4, %edx
	andl	$4, %ecx
	cmovne	%edx, %eax
	.loc 1 181 0
	cmpl	$3, %r12d
	.loc 1 177 0
	movb	%al, (%rbp)
	.loc 1 180 0
	movl	$3, %eax
	.loc 1 181 0
	jle	.L23
	.loc 1 182 0
	movb	%dil, 3(%rbp)
	.loc 1 183 0
	movb	$4, %al
.L23:
	.loc 1 186 0
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L25:
	.loc 1 156 0
	movq	%rdi, %rsi
	movl	$.LC0, %ecx
	xorl	%edx, %edx
	movl	$usb_mouse_event, %edi
	call	qemu_add_mouse_event_handler
	.loc 1 158 0
	movl	$1, 1176(%rbx)
	.loc 1 156 0
	movq	%rax, 1144(%rbx)
	jmp	.L4
.LFE116:
	.size	usb_mouse_poll, .-usb_mouse_poll
	.p2align 4,,15
	.type	usb_wacom_poll, @function
usb_wacom_poll:
.LFB117:
	.loc 1 189 0
	movq	%rbx, -24(%rsp)
.LCFI3:
	movq	%rbp, -16(%rsp)
.LCFI4:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI5:
	subq	$24, %rsp
.LCFI6:
	.loc 1 189 0
	movl	%edx, %r12d
	.loc 1 192 0
	movl	1176(%rdi), %edx
	.loc 1 189 0
	movq	%rsi, %rbp
	.loc 1 192 0
	testl	%edx, %edx
	je	.L34
.L27:
	.loc 1 199 0
	movl	1164(%rbx), %edx
	.loc 1 198 0
	xorl	%ecx, %ecx
	.loc 1 200 0
	movl	$1, %eax
	testb	$1, %dl
	cmovne	%eax, %ecx
	.loc 1 202 0
	movl	%ecx, %eax
	orl	$2, %eax
	testb	$2, %dl
	cmovne	%eax, %ecx
	.loc 1 204 0
	movl	%ecx, %eax
	orl	$4, %eax
	andl	$4, %edx
	cmovne	%eax, %ecx
	.loc 1 207 0
	xorl	%eax, %eax
	.loc 1 206 0
	cmpl	$6, %r12d
	jg	.L35
.L26:
	.loc 1 226 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L34:
	.loc 1 193 0
	movq	%rdi, %rsi
	movl	$.LC0, %ecx
	movl	$1, %edx
	movl	$usb_wacom_event, %edi
	call	qemu_add_mouse_event_handler
	.loc 1 195 0
	movl	$1, 1176(%rbx)
	.loc 1 193 0
	movq	%rax, 1144(%rbx)
	jmp	.L27
.L35:
	.loc 1 209 0
	movl	1180(%rbx), %eax
	.loc 1 211 0
	testl	%ecx, %ecx
	.loc 1 210 0
	movb	$0, 5(%rbp)
	.loc 1 209 0
	movb	%al, (%rbp)
	.loc 1 211 0
	je	.L32
	.loc 1 212 0
	movl	1168(%rbx), %eax
	movb	%al, 1(%rbp)
	.loc 1 213 0
	movl	1168(%rbx), %eax
	sarl	$8, %eax
	movb	%al, 2(%rbp)
	.loc 1 214 0
	movl	1172(%rbx), %eax
	movb	%al, 3(%rbp)
	.loc 1 215 0
	movl	1172(%rbx), %eax
	.loc 1 216 0
	movb	$0, 6(%rbp)
	.loc 1 215 0
	sarl	$8, %eax
	movb	%al, 4(%rbp)
	.loc 1 225 0
	movl	$7, %eax
	jmp	.L26
.L32:
	movl	$7, %eax
	.loc 1 218 0
	movb	$0, 1(%rbp)
	.loc 1 219 0
	movb	$0, 2(%rbp)
	.loc 1 220 0
	movb	$0, 3(%rbp)
	.loc 1 221 0
	movb	$0, 4(%rbp)
	.loc 1 222 0
	movb	$-127, 6(%rbp)
	jmp	.L26
.LFE117:
	.size	usb_wacom_poll, .-usb_wacom_poll
	.p2align 4,,15
	.type	usb_wacom_handle_reset, @function
usb_wacom_handle_reset:
.LFB118:
	.loc 1 229 0
	.loc 1 232 0
	movl	$0, 1152(%rdi)
	.loc 1 233 0
	movl	$0, 1156(%rdi)
	.loc 1 234 0
	movl	$0, 1160(%rdi)
	.loc 1 235 0
	movl	$0, 1168(%rdi)
	.loc 1 236 0
	movl	$0, 1172(%rdi)
	.loc 1 237 0
	movl	$0, 1164(%rdi)
	.loc 1 238 0
	movl	$1, 1180(%rdi)
	ret
.LFE118:
	.size	usb_wacom_handle_reset, .-usb_wacom_handle_reset
	.section	.rodata.str1.1
.LC5:
	.string	"Endpoint1 Interrupt Pipe"
.LC4:
	.string	"Wacom Tablet"
.LC3:
	.string	"QEMU 0.9.1"
.LC2:
	.string	"Wacom PenPartner"
.LC1:
	.string	"1"
	.text
	.p2align 4,,15
	.type	usb_wacom_handle_control, @function
usb_wacom_handle_control:
.LFB119:
	.loc 1 243 0
	movq	%rbx, -24(%rsp)
.LCFI7:
	movq	%rbp, -16(%rsp)
.LCFI8:
	.loc 1 245 0
	xorl	%ebp, %ebp
	.loc 1 243 0
	movq	%r12, -8(%rsp)
.LCFI9:
	subq	$24, %rsp
.LCFI10:
	.loc 1 247 0
	cmpl	$8457, %esi
	.loc 1 243 0
	movq	%rdi, %rbx
	movq	%r9, %r12
	.loc 1 247 0
	je	.L68
	jg	.L76
	cmpl	$5, %esi
	je	.L47
	.p2align 4,,9
	jle	.L85
	cmpl	$11, %esi
	.p2align 4,,7
	je	.L38
	.p2align 4,,9
	jg	.L78
	cmpl	$9, %esi
	.p2align 4,,7
	je	.L38
	.p2align 4,,7
.L43:
	.loc 1 358 0
	movl	$-3, %ebp
	.loc 1 362 0
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	movl	%ebp, %eax
	movq	8(%rsp), %rbp
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L76:
	.loc 1 247 0
	cmpl	$32774, %esi
	je	.L48
	jle	.L86
	cmpl	$32778, %esi
	.p2align 4,,7
	je	.L66
	.p2align 4,,9
	jg	.L80
	cmpl	$32776, %esi
	.p2align 4,,7
	jne	.L43
	.loc 1 330 0
	movl	$1, %ebp
	.loc 1 322 0
	movb	$1, (%r9)
	.p2align 4,,5
	jmp	.L38
	.p2align 4,,7
.L85:
	.loc 1 247 0
	cmpl	$1, %esi
	.p2align 4,,3
	je	.L40
	cmpl	$3, %esi
	.p2align 4,,3
	jne	.L43
	.loc 1 263 0
	decl	%edx
	.p2align 4,,6
	jne	.L43
	.loc 1 264 0
	movl	$1, 1128(%rdi)
	.p2align 4,,3
	jmp	.L38
	.p2align 4,,7
.L86:
	.loc 1 247 0
	cmpl	$8458, %esi
	.p2align 4,,3
	je	.L38
	cmpl	$32768, %esi
	.p2align 4,,2
	jne	.L43
	.loc 1 249 0
	movl	1128(%rdi), %eax
	.loc 1 344 0
	movl	$2, %ebp
	.loc 1 251 0
	movb	$0, 1(%r9)
	.loc 1 249 0
	addl	%eax, %eax
	orl	$1, %eax
	movb	%al, (%r9)
	jmp	.L38
	.p2align 4,,7
.L68:
	.loc 1 336 0
	movq	1144(%rdi), %rdi
	call	qemu_remove_mouse_event_handler
	.loc 1 337 0
	movl	$0, 1176(%rbx)
	.loc 1 338 0
	movzbl	(%r12), %eax
	movl	%eax, 1180(%rbx)
	.p2align 4,,7
.L38:
	.loc 1 362 0
	movl	%ebp, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L48:
	.loc 1 275 0
	movl	%edx, %eax
	sarl	$8, %eax
	cmpl	$2, %eax
	je	.L51
	jle	.L87
	cmpl	$3, %eax
	.p2align 4,,3
	jne	.L43
	.loc 1 287 0
	movzbl	%dl,%eax
	cmpl	$5, %eax
	.p2align 4,,5
	ja	.L43
	mov	%eax, %eax
	.p2align 4,,3
	jmp	*.L61(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L61:
	.quad	.L54
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L59
	.text
	.p2align 4,,7
.L47:
	.loc 1 271 0
	movb	%dl, 56(%rdi)
	.loc 1 362 0
	movl	%ebp, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L80:
	.loc 1 247 0
	cmpl	$41217, %esi
	jne	.L43
	.loc 1 348 0
	movl	1180(%rdi), %edx
	cmpl	$1, %edx
	je	.L88
	.loc 1 350 0
	cmpl	$2, %edx
	jne	.L38
	.loc 1 351 0
	movl	%r8d, %edx
	movq	%r9, %rsi
	call	usb_wacom_poll
	movl	%eax, %ebp
	jmp	.L38
	.p2align 4,,7
.L78:
	.loc 1 247 0
	cmpl	$8449, %esi
	jne	.L43
	.loc 1 342 0
	movb	$0, (%r9)
	.loc 1 343 0
	movl	1180(%rdi), %eax
	.loc 1 344 0
	movl	$2, %ebp
	.loc 1 343 0
	movb	%al, 1(%r9)
	jmp	.L38
.L87:
	.loc 1 275 0
	decl	%eax
	jne	.L43
	.loc 1 277 0
	movq	qemu_wacom_dev_descriptor(%rip), %rax
	.loc 1 279 0
	movl	$18, %ebp
	.loc 1 277 0
	movq	%rax, (%r9)
	movq	qemu_wacom_dev_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movzwl	qemu_wacom_dev_descriptor+16(%rip), %eax
	movw	%ax, 16(%r9)
	jmp	.L38
.L59:
	.loc 1 311 0
	movl	$.LC5, %esi
.L84:
	.loc 1 301 0
	movq	%r12, %rdi
	call	set_usb_string
	.loc 1 351 0
	movl	%eax, %ebp
	jmp	.L38
.L58:
	.loc 1 308 0
	movl	$.LC4, %esi
	jmp	.L84
.L57:
	.loc 1 305 0
	movl	$.LC3, %esi
	jmp	.L84
.L56:
	.loc 1 301 0
	movl	$.LC2, %esi
	jmp	.L84
.L55:
	.loc 1 298 0
	movl	$.LC1, %esi
	jmp	.L84
.L54:
	.loc 1 294 0
	movl	$4, %ebp
	.loc 1 290 0
	movb	$4, (%r9)
	.loc 1 291 0
	movb	$3, 1(%r9)
	.loc 1 292 0
	movb	$9, 2(%r9)
	.loc 1 293 0
	movb	$4, 3(%r9)
	jmp	.L38
	.p2align 4,,7
.L66:
	.loc 1 330 0
	movl	$1, %ebp
	.loc 1 329 0
	movb	$0, (%r9)
	jmp	.L38
.L40:
	.loc 1 255 0
	decl	%edx
	jne	.L43
	.loc 1 256 0
	movl	$0, 1128(%rdi)
	jmp	.L38
.L51:
	.loc 1 282 0
	movq	qemu_wacom_config_descriptor(%rip), %rax
	.loc 1 284 0
	movl	$34, %ebp
	.loc 1 282 0
	movq	%rax, (%r9)
	movq	qemu_wacom_config_descriptor+8(%rip), %rax
	movq	%rax, 8(%r9)
	movq	qemu_wacom_config_descriptor+16(%rip), %rax
	movq	%rax, 16(%r9)
	movq	qemu_wacom_config_descriptor+24(%rip), %rax
	movq	%rax, 24(%r9)
	movzwl	qemu_wacom_config_descriptor+32(%rip), %eax
	movw	%ax, 32(%r9)
	jmp	.L38
.L88:
	.loc 1 349 0
	movl	%r8d, %edx
	movq	%r9, %rsi
	call	usb_mouse_poll
	.loc 1 351 0
	movl	%eax, %ebp
	jmp	.L38
.LFE119:
	.size	usb_wacom_handle_control, .-usb_wacom_handle_control
	.p2align 4,,15
	.type	usb_wacom_handle_data, @function
usb_wacom_handle_data:
.LFB120:
	.loc 1 365 0
	subq	$8, %rsp
.LCFI11:
	.loc 1 367 0
	xorl	%eax, %eax
	.loc 1 369 0
	cmpl	$105, (%rsi)
	je	.L98
.L97:
	.loc 1 381 0
	movl	$-3, %eax
.L90:
	.loc 1 385 0
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L98:
	.loc 1 371 0
	cmpb	$1, 5(%rsi)
	jne	.L97
	.loc 1 372 0
	movl	1180(%rdi), %edx
	cmpl	$1, %edx
	je	.L99
	.loc 1 374 0
	cmpl	$2, %edx
	jne	.L90
	.loc 1 375 0
	movl	16(%rsi), %edx
	movq	8(%rsi), %rsi
	call	usb_wacom_poll
	.loc 1 385 0
	addq	$8, %rsp
	ret
.L99:
	.loc 1 373 0
	movl	16(%rsi), %edx
	movq	8(%rsi), %rsi
	call	usb_mouse_poll
	.loc 1 385 0
	addq	$8, %rsp
	.p2align 4,,1
	ret
.LFE120:
	.size	usb_wacom_handle_data, .-usb_wacom_handle_data
	.p2align 4,,15
	.type	usb_wacom_handle_destroy, @function
usb_wacom_handle_destroy:
.LFB121:
	.loc 1 388 0
	pushq	%rbx
.LCFI12:
	.loc 1 388 0
	movq	%rdi, %rbx
	.loc 1 391 0
	movq	1144(%rdi), %rdi
	call	qemu_remove_mouse_event_handler
	.loc 1 392 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE121:
	.size	usb_wacom_handle_destroy, .-usb_wacom_handle_destroy
	.section	.rodata.str1.1
.LC6:
	.string	"QEMU PenPartner Tablet"
	.text
	.p2align 4,,15
.globl usb_wacom_init
	.type	usb_wacom_init, @function
usb_wacom_init:
.LFB122:
	.loc 1 396 0
	pushq	%rbx
.LCFI13:
	.loc 1 399 0
	movl	$1184, %edi
	call	qemu_mallocz
	movq	%rax, %rbx
	.loc 1 401 0
	xorl	%eax, %eax
	.loc 1 400 0
	testq	%rbx, %rbx
	je	.L101
	.loc 1 410 0
	leaq	57(%rbx), %rdi
	.loc 1 402 0
	movl	$1, 24(%rbx)
	.loc 1 403 0
	movq	$usb_generic_handle_packet, 8(%rbx)
	.loc 1 405 0
	movq	$usb_wacom_handle_reset, 32(%rbx)
	.loc 1 406 0
	movq	$usb_wacom_handle_control, 40(%rbx)
	.loc 1 410 0
	movl	$.LC6, %edx
	.loc 1 407 0
	movq	$usb_wacom_handle_data, 48(%rbx)
	.loc 1 408 0
	movq	$usb_wacom_handle_destroy, 16(%rbx)
	.loc 1 410 0
	movl	$32, %esi
	call	pstrcpy
	.loc 1 413 0
	movq	%rbx, %rax
.L101:
	.loc 1 414 0
	popq	%rbx
	ret
.LFE122:
	.size	usb_wacom_init, .-usb_wacom_init
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI0-.LFB116
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI4-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI8-.LFB119
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI11-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI12-.LFB121
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
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI13-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
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
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI0-.LFB116
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
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI4-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI6-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI8-.LFB119
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI11-.LFB120
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI12-.LFB121
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
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI13-.LFB122
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE17:
	.file 2 "/home/remco/Projects/Argos/src/hw/usb.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "./console.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xae3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF108
	.byte	0x1
	.long	.LASF109
	.long	.LASF110
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
	.long	0xba
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.long	0x286
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x122
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x124
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x132
	.long	0x2d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x136
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.value	0x150
	.long	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0xb4
	.uleb128 0x9
	.long	0x2c4
	.long	.LASF44
	.byte	0x18
	.byte	0x6
	.byte	0xba
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.byte	0xbb
	.long	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0xbc
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x28d
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0x7
	.long	0x2e0
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x286
	.uleb128 0x7
	.long	0x2f6
	.long	0x69
	.uleb128 0x8
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.byte	0x31
	.long	0x70
	.uleb128 0xd
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0xd
	.long	0x311
	.uleb128 0xe
	.long	0x331
	.byte	0x1
	.uleb128 0xf
	.long	0x9b
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x9
	.long	0x384
	.long	.LASF50
	.byte	0x28
	.byte	0x4
	.byte	0xf
	.uleb128 0xc
	.long	.LASF51
	.byte	0x4
	.byte	0x10
	.long	0x384
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x4
	.byte	0x11
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF53
	.byte	0x4
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x13
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF55
	.byte	0x4
	.byte	0x16
	.long	0x38a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0x6
	.byte	0x8
	.long	0x331
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x17
	.long	0x331
	.uleb128 0x6
	.byte	0x8
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF56
	.byte	0x2
	.byte	0x70
	.long	0x3ac
	.uleb128 0x10
	.long	0x49e
	.long	.LASF56
	.value	0x478
	.byte	0x2
	.byte	0x70
	.uleb128 0xc
	.long	.LASF57
	.byte	0x2
	.byte	0x75
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x2
	.byte	0x76
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF59
	.byte	0x2
	.byte	0x77
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF60
	.byte	0x2
	.byte	0x79
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF61
	.byte	0x2
	.byte	0x7e
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF62
	.byte	0x2
	.byte	0x80
	.long	0x596
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.byte	0x81
	.long	0x555
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.byte	0x82
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF65
	.byte	0x2
	.byte	0x83
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xc
	.long	.LASF66
	.byte	0x2
	.byte	0x85
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.long	.LASF67
	.byte	0x2
	.byte	0x86
	.long	0x59c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.long	.LASF68
	.byte	0x2
	.byte	0x87
	.long	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.long	.LASF69
	.byte	0x2
	.byte	0x88
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x468
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x89
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x46c
	.uleb128 0xc
	.long	.LASF71
	.byte	0x2
	.byte	0x8a
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x470
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x8b
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x474
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x2
	.byte	0x71
	.long	0x4a9
	.uleb128 0x9
	.long	0x534
	.long	.LASF73
	.byte	0x38
	.byte	0x2
	.byte	0x71
	.uleb128 0x11
	.string	"pid"
	.byte	0x2
	.byte	0x9e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF74
	.byte	0x2
	.byte	0x9f
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0xa0
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.long	.LASF76
	.byte	0x2
	.byte	0xa1
	.long	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"len"
	.byte	0x2
	.byte	0xa2
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0xa4
	.long	0x5d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF78
	.byte	0x2
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF79
	.byte	0x2
	.byte	0xa6
	.long	0x5d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF80
	.byte	0x2
	.byte	0xa7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x12
	.long	0x549
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x549
	.uleb128 0xf
	.long	0x54f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a1
	.uleb128 0x6
	.byte	0x8
	.long	0x49e
	.uleb128 0x6
	.byte	0x8
	.long	0x534
	.uleb128 0xe
	.long	0x567
	.byte	0x1
	.uleb128 0xf
	.long	0x549
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x55b
	.uleb128 0x12
	.long	0x596
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x549
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x39b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x56d
	.uleb128 0x7
	.long	0x5ac
	.long	0x2f6
	.uleb128 0x8
	.long	0x5b
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.long	0x5bd
	.long	0x2f6
	.uleb128 0x13
	.long	0x5b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x2
	.byte	0x99
	.long	0x5c8
	.uleb128 0xe
	.long	0x5d9
	.byte	0x1
	.uleb128 0xf
	.long	0x54f
	.uleb128 0xf
	.long	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bd
	.uleb128 0x14
	.long	0x5f4
	.byte	0x4
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.long	.LASF82
	.sleb128 1
	.uleb128 0x15
	.long	.LASF83
	.sleb128 2
	.byte	0x0
	.uleb128 0x10
	.long	0x690
	.long	.LASF84
	.value	0x4a0
	.byte	0x1
	.byte	0x2b
	.uleb128 0x11
	.string	"dev"
	.byte	0x1
	.byte	0x2c
	.long	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF85
	.byte	0x1
	.byte	0x2d
	.long	0x690
	.byte	0x3
	.byte	0x23
	.uleb128 0x478
	.uleb128 0x11
	.string	"dx"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.uleb128 0x11
	.string	"dy"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x484
	.uleb128 0x11
	.string	"dz"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x488
	.uleb128 0xc
	.long	.LASF86
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x48c
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0xc
	.long	.LASF87
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x498
	.uleb128 0xc
	.long	.LASF88
	.byte	0x1
	.byte	0x34
	.long	0x5df
	.byte	0x3
	.byte	0x23
	.uleb128 0x49c
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x390
	.uleb128 0x2
	.long	.LASF84
	.byte	0x1
	.byte	0x35
	.long	0x5f4
	.uleb128 0x16
	.long	0x70a
	.long	.LASF89
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0x77
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"dx1"
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"dy1"
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"dz1"
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.long	.LASF86
	.byte	0x1
	.byte	0x78
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.long	0x70a
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x696
	.uleb128 0x16
	.long	0x774
	.long	.LASF90
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0x82
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.string	"dz"
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.long	.LASF86
	.byte	0x1
	.byte	0x83
	.long	0x3f
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x85
	.long	0x70a
	.byte	0x0
	.uleb128 0x1a
	.long	0x867
	.long	.LASF91
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x3f
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x97
	.long	0x70a
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.long	0x39b
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x97
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"dx"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.uleb128 0x19
	.string	"dy"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.uleb128 0x19
	.string	"dz"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"l"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.long	0x818
	.long	0x867
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x1d
	.long	0x878
	.uleb128 0x1d
	.long	0x883
	.uleb128 0x1d
	.long	0x88e
	.byte	0x0
	.uleb128 0x1c
	.long	0x841
	.long	0x867
	.quad	.LBB4
	.quad	.LBE4
	.uleb128 0x1d
	.long	0x878
	.uleb128 0x1d
	.long	0x883
	.uleb128 0x1d
	.long	0x88e
	.byte	0x0
	.uleb128 0x1e
	.long	0x867
	.quad	.LBB6
	.quad	.LBE6
	.uleb128 0x1d
	.long	0x878
	.uleb128 0x1d
	.long	0x883
	.uleb128 0x1d
	.long	0x88e
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x89a
	.long	.LASF92
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.uleb128 0x21
	.long	.LASF93
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.uleb128 0x21
	.long	.LASF94
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.byte	0x0
	.uleb128 0x1a
	.long	0x8ed
	.long	.LASF95
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x3f
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xbc
	.long	0x70a
	.byte	0x1
	.byte	0x53
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0xbc
	.long	0x39b
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0xbc
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x16
	.long	0x922
	.long	.LASF96
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"dev"
	.byte	0x1
	.byte	0xe4
	.long	0x549
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xe6
	.long	0x70a
	.byte	0x0
	.uleb128 0x1a
	.long	0x9b9
	.long	.LASF97
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	0x3f
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x18
	.string	"dev"
	.byte	0x1
	.byte	0xf1
	.long	0x549
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.byte	0xf1
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.byte	0xf1
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.byte	0xf2
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.long	.LASF101
	.byte	0x1
	.byte	0xf2
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.byte	0xf2
	.long	0x39b
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xf4
	.long	0x70a
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xf5
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	.LASF111
	.byte	0x1
	.value	0x165
	.quad	.L43
	.byte	0x0
	.uleb128 0x23
	.long	0xa0f
	.long	.LASF102
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	0x3f
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"dev"
	.byte	0x1
	.value	0x16c
	.long	0x549
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x16c
	.long	0x54f
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x16e
	.long	0x70a
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x16f
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.long	0xa47
	.long	.LASF103
	.byte	0x1
	.value	0x184
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"dev"
	.byte	0x1
	.value	0x183
	.long	0x549
	.byte	0x1
	.byte	0x53
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x185
	.long	0x70a
	.byte	0x0
	.uleb128 0x28
	.long	0xa78
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.value	0x18c
	.byte	0x1
	.long	0x549
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x18d
	.long	0x70a
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	.LASF104
	.byte	0x5
	.byte	0x91
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF105
	.byte	0x5
	.byte	0x92
	.long	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xaa2
	.long	0x301
	.uleb128 0x8
	.long	0x5b
	.byte	0x11
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF106
	.byte	0x1
	.byte	0x37
	.long	0xab7
	.byte	0x9
	.byte	0x3
	.quad	qemu_wacom_dev_descriptor
	.uleb128 0xd
	.long	0xa92
	.uleb128 0x7
	.long	0xacc
	.long	0x301
	.uleb128 0x8
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF107
	.byte	0x1
	.byte	0x4b
	.long	0xae1
	.byte	0x9
	.byte	0x3
	.quad	qemu_wacom_config_descriptor
	.uleb128 0xd
	.long	0xabc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x21
	.value	0x2
	.long	.Ldebug_info0
	.long	0xae7
	.long	0xa47
	.string	"usb_wacom_init"
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
.LASF78:
	.string	"complete_opaque"
.LASF97:
	.string	"usb_wacom_handle_control"
.LASF98:
	.string	"request"
.LASF24:
	.string	"_IO_save_end"
.LASF103:
	.string	"usb_wacom_handle_destroy"
.LASF89:
	.string	"usb_mouse_event"
.LASF17:
	.string	"_IO_write_base"
.LASF66:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF71:
	.string	"setup_len"
.LASF22:
	.string	"_IO_save_base"
.LASF94:
	.string	"vmax"
.LASF30:
	.string	"_cur_column"
.LASF91:
	.string	"usb_mouse_poll"
.LASF40:
	.string	"_mode"
.LASF20:
	.string	"_IO_buf_base"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF57:
	.string	"opaque"
.LASF101:
	.string	"length"
.LASF43:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF85:
	.string	"eh_entry"
.LASF83:
	.string	"WACOM_MODE_WACOM"
.LASF92:
	.string	"int_clamp"
.LASF99:
	.string	"value"
.LASF5:
	.string	"char"
.LASF72:
	.string	"setup_index"
.LASF42:
	.string	"_IO_lock_t"
.LASF75:
	.string	"devep"
.LASF59:
	.string	"handle_destroy"
.LASF14:
	.string	"_IO_read_ptr"
.LASF58:
	.string	"handle_packet"
.LASF109:
	.string	"/home/remco/Projects/Argos/src/hw/usb-wacom.c"
.LASF95:
	.string	"usb_wacom_poll"
.LASF47:
	.string	"_pos"
.LASF104:
	.string	"stdin"
.LASF112:
	.string	"usb_wacom_init"
.LASF25:
	.string	"_markers"
.LASF60:
	.string	"speed"
.LASF53:
	.string	"qemu_put_mouse_event_absolute"
.LASF100:
	.string	"index"
.LASF0:
	.string	"long unsigned int"
.LASF96:
	.string	"usb_wacom_handle_reset"
.LASF28:
	.string	"_flags2"
.LASF106:
	.string	"qemu_wacom_dev_descriptor"
.LASF16:
	.string	"_IO_read_base"
.LASF74:
	.string	"devaddr"
.LASF41:
	.string	"_unused2"
.LASF93:
	.string	"vmin"
.LASF29:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"_IO_write_end"
.LASF87:
	.string	"mouse_grabbed"
.LASF64:
	.string	"addr"
.LASF49:
	.string	"QEMUPutMouseEvent"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF108:
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
.LASF67:
	.string	"setup_buf"
.LASF13:
	.string	"_flags"
.LASF82:
	.string	"WACOM_MODE_HID"
.LASF68:
	.string	"data_buf"
.LASF52:
	.string	"qemu_put_mouse_event_opaque"
.LASF55:
	.string	"next"
.LASF34:
	.string	"_offset"
.LASF50:
	.string	"QEMUPutMouseEntry"
.LASF12:
	.string	"long long unsigned int"
.LASF69:
	.string	"remote_wakeup"
.LASF65:
	.string	"devname"
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
.LASF62:
	.string	"handle_control"
.LASF80:
	.string	"cancel_opaque"
.LASF11:
	.string	"__off64_t"
.LASF110:
	.string	"/home/remco/Projects/Argos/src"
.LASF54:
	.string	"qemu_put_mouse_event_name"
.LASF73:
	.string	"USBPacket"
.LASF21:
	.string	"_IO_buf_end"
.LASF61:
	.string	"handle_reset"
.LASF81:
	.string	"USBCallback"
.LASF8:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF84:
	.string	"USBWacomState"
.LASF107:
	.string	"qemu_wacom_config_descriptor"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"_IO_read_end"
.LASF86:
	.string	"buttons_state"
.LASF27:
	.string	"_fileno"
.LASF56:
	.string	"USBDevice"
.LASF79:
	.string	"cancel_cb"
.LASF4:
	.string	"short unsigned int"
.LASF105:
	.string	"stdout"
.LASF111:
	.string	"fail"
.LASF90:
	.string	"usb_wacom_event"
.LASF18:
	.string	"_IO_write_ptr"
.LASF77:
	.string	"complete_cb"
.LASF51:
	.string	"qemu_put_mouse_event"
.LASF102:
	.string	"usb_wacom_handle_data"
.LASF76:
	.string	"data"
.LASF70:
	.string	"setup_state"
.LASF88:
	.string	"mode"
.LASF63:
	.string	"handle_data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
