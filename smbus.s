	.file	"smbus.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.p2align 4,,15
	.type	smbus_do_quick_cmd, @function
smbus_do_quick_cmd:
.LFB108:
	.file 1 "/home/remco/Projects/Argos/src/hw/smbus.c"
	.loc 1 39 0
	.loc 1 41 0
	movq	40(%rdi), %rax
	testq	%rax, %rax
	jne	.L5
	rep ; ret
	.p2align 4,,7
.L5:
	.loc 1 42 0
	movzbl	%sil, %esi
	movq	%rax, %r11
	jmp	*%r11
.LFE108:
	.size	smbus_do_quick_cmd, .-smbus_do_quick_cmd
	.p2align 4,,15
	.type	smbus_do_write, @function
smbus_do_write:
.LFB109:
	.loc 1 46 0
	.loc 1 47 0
	movl	84(%rdi), %eax
	testl	%eax, %eax
	je	.L15
	.loc 1 49 0
	cmpl	$1, %eax
	je	.L16
	.loc 1 55 0
	movzbl	88(%rdi), %esi
	.loc 1 57 0
	movq	64(%rdi), %r11
	testq	%r11, %r11
	.loc 1 55 0
	movb	%sil, 122(%rdi)
	.loc 1 57 0
	jne	.L17
.L6:
	rep ; ret
	.p2align 4,,7
.L15:
	.loc 1 48 0
	xorl	%esi, %esi
	jmp	smbus_do_quick_cmd
	.p2align 4,,7
.L17:
	.loc 1 58 0
	leal	-1(%rax), %ecx
	leaq	89(%rdi), %rdx
	movzbl	%sil, %esi
	jmp	*%r11
	.p2align 4,,7
.L16:
	.loc 1 51 0
	movq	48(%rdi), %rax
	testq	%rax, %rax
	je	.L6
	.loc 1 52 0
	movzbl	88(%rdi), %esi
	movq	%rax, %r11
	jmp	*%r11
.LFE109:
	.size	smbus_do_write, .-smbus_do_write
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"smbus: error: Unexpected recv start condition in state %d\n"
	.align 8
.LC4:
	.string	"smbus: error: Unexpected NACK in state %d\n"
	.align 8
.LC0:
	.string	"smbus: error: Unexpected send start condition in state %d\n"
	.align 8
.LC1:
	.string	"smbus: error: Read after write with no data\n"
	.align 8
.LC3:
	.string	"smbus: error: Unexpected stop during receive\n"
	.text
	.p2align 4,,15
	.type	smbus_i2c_event, @function
smbus_i2c_event:
.LFB110:
	.loc 1 65 0
	.loc 1 67 0
	cmpl	$1, %esi
	.loc 1 65 0
	pushq	%rbx
.LCFI0:
	.loc 1 65 0
	movq	%rdi, %rbx
	.loc 1 67 0
	je	.L20
	jb	.L26
	cmpl	$2, %esi
	je	.L40
	cmpl	$3, %esi
	.p2align 4,,7
	je	.L48
.L18:
	.loc 1 144 0
	popq	%rbx
	.p2align 4,,6
	ret
	.p2align 4,,7
.L26:
	.loc 1 82 0
	movl	80(%rdi), %edx
	testl	%edx, %edx
	.p2align 4,,5
	je	.L29
	cmpl	$1, %edx
	.p2align 4,,5
	je	.L30
	.loc 1 105 0
	movl	$.LC2, %esi
.L54:
	.loc 1 139 0
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
.L55:
	.loc 1 140 0
	movl	$-1, 80(%rbx)
	.loc 1 144 0
	popq	%rbx
	ret
	.p2align 4,,7
.L20:
	.loc 1 69 0
	movl	80(%rdi), %edx
	testl	%edx, %edx
	jne	.L24
	.loc 1 72 0
	movl	$1, 80(%rdi)
	.loc 1 144 0
	popq	%rbx
	.p2align 4,,2
	ret
	.p2align 4,,7
.L29:
	.loc 1 85 0
	movl	$2, 80(%rdi)
	.loc 1 144 0
	popq	%rbx
	.p2align 4,,2
	ret
.L48:
	.loc 1 131 0
	movl	80(%rdi), %edx
	cmpl	$3, %edx
	.p2align 4,,3
	je	.L51
	cmpl	$4, %edx
	.p2align 4,,3
	je	.L18
	.loc 1 139 0
	movl	$.LC4, %esi
	jmp	.L54
	.p2align 4,,7
.L40:
	.loc 1 112 0
	movl	80(%rdi), %eax
	cmpl	$2, %eax
	je	.L43
	.p2align 4,,2
	jg	.L47
	decl	%eax
	.p2align 4,,6
	jne	.L41
	.loc 1 114 0
	.p2align 4,,10
	call	smbus_do_write
	.p2align 4,,7
	jmp	.L41
	.p2align 4,,7
.L24:
	.loc 1 75 0
	movl	$.LC0, %esi
	.p2align 4,,3
	jmp	.L54
.L30:
	.loc 1 88 0
	movl	84(%rdi), %eax
	testl	%eax, %eax
	.p2align 4,,2
	je	.L56
	.loc 1 92 0
	decl	%eax
	jg	.L57
	.loc 1 95 0
	movzbl	88(%rdi), %eax
	movb	%al, 122(%rdi)
.L37:
	.loc 1 100 0
	movl	$0, 84(%rbx)
	.loc 1 101 0
	movl	$3, 80(%rbx)
	.loc 1 144 0
	popq	%rbx
	ret
.L47:
	.loc 1 112 0
	cmpl	$3, %eax
	je	.L44
.L41:
	.loc 1 126 0
	movl	$0, 80(%rbx)
	.loc 1 127 0
	movl	$0, 84(%rbx)
	.loc 1 144 0
	popq	%rbx
	ret
.L56:
	.loc 1 89 0
	movq	stderr(%rip), %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	jmp	.L55
.L51:
	.loc 1 136 0
	movl	$4, 80(%rdi)
	.loc 1 144 0
	popq	%rbx
	ret
.L43:
	.loc 1 117 0
	movl	$1, %esi
	.p2align 4,,7
	call	smbus_do_quick_cmd
	.p2align 4,,4
	jmp	.L41
.L57:
	.loc 1 93 0
	.p2align 4,,6
	call	smbus_do_write
	.p2align 4,,8
	jmp	.L37
.L44:
	.loc 1 120 0
	movq	stderr(%rip), %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	jmp	.L41
.LFE110:
	.size	smbus_i2c_event, .-smbus_i2c_event
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"smbus: error: Unexpected read in state %d\n"
	.text
	.p2align 4,,15
	.type	smbus_i2c_recv, @function
smbus_i2c_recv:
.LFB111:
	.loc 1 147 0
	pushq	%rbx
.LCFI1:
	.loc 1 151 0
	movl	80(%rdi), %edx
	.loc 1 147 0
	movq	%rdi, %rbx
	.loc 1 151 0
	cmpl	$2, %edx
	je	.L60
	cmpl	$3, %edx
	je	.L64
	.loc 1 171 0
	movq	stderr(%rip), %rdi
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 172 0
	movl	$-1, 80(%rbx)
	.loc 1 173 0
	xorl	%eax, %eax
.L59:
	.loc 1 177 0
	popq	%rbx
	ret
	.p2align 4,,7
.L60:
	.loc 1 153 0
	movq	56(%rdi), %rdx
	.loc 1 156 0
	xorl	%eax, %eax
	.loc 1 153 0
	testq	%rdx, %rdx
	jne	.L70
.L63:
	.loc 1 159 0
	movl	$4, 80(%rbx)
	.loc 1 177 0
	popq	%rbx
	ret
	.p2align 4,,7
.L64:
	.loc 1 162 0
	movq	72(%rdi), %rcx
	.loc 1 166 0
	xorl	%eax, %eax
	.loc 1 162 0
	testq	%rcx, %rcx
	je	.L59
	.loc 1 163 0
	movzbl	122(%rdi), %esi
	movl	84(%rdi), %edx
	call	*%rcx
	.loc 1 164 0
	incl	84(%rbx)
	.loc 1 163 0
	movzbl	%al, %eax
	.loc 1 177 0
	popq	%rbx
	ret
.L70:
	.loc 1 154 0
	.p2align 4,,3
	call	*%rdx
	movzbl	%al, %eax
	.p2align 4,,5
	jmp	.L63
.LFE111:
	.size	smbus_i2c_recv, .-smbus_i2c_recv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"smbus: error: Unexpected write in state %d\n"
	.text
	.p2align 4,,15
	.type	smbus_i2c_send, @function
smbus_i2c_send:
.LFB112:
	.loc 1 180 0
	subq	$8, %rsp
.LCFI2:
	.loc 1 182 0
	movl	80(%rdi), %edx
	cmpl	$1, %edx
	je	.L77
	.loc 1 188 0
	movq	stderr(%rip), %rdi
	movl	$.LC6, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 192 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.p2align 4,,7
.L77:
	.loc 1 185 0
	movl	84(%rdi), %eax
	movslq	%eax,%rdx
	incl	%eax
	movl	%eax, 84(%rdi)
	movb	%sil, 88(%rdx,%rdi)
	.loc 1 192 0
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
.LFE112:
	.size	smbus_i2c_send, .-smbus_i2c_send
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"SMBus struct too small"
	.text
	.p2align 4,,15
.globl smbus_device_init
	.type	smbus_device_init, @function
smbus_device_init:
.LFB113:
	.loc 1 195 0
	subq	$8, %rsp
.LCFI3:
	.loc 1 198 0
	cmpl	$127, %edx
	jbe	.L80
	.loc 1 201 0
	call	i2c_slave_init
	.loc 1 202 0
	movq	$smbus_i2c_event, (%rax)
	.loc 1 203 0
	movq	$smbus_i2c_recv, 8(%rax)
	.loc 1 204 0
	movq	$smbus_i2c_send, 16(%rax)
	.loc 1 207 0
	addq	$8, %rsp
	ret
.L80:
	.loc 1 199 0
	movl	$.LC7, %edi
	xorl	%eax, %eax
	call	hw_error
.LFE113:
	.size	smbus_device_init, .-smbus_device_init
	.p2align 4,,15
.globl smbus_quick_command
	.type	smbus_quick_command, @function
smbus_quick_command:
.LFB114:
	.loc 1 211 0
	pushq	%rbx
.LCFI4:
	.loc 1 211 0
	movq	%rdi, %rbx
	.loc 1 212 0
	call	i2c_start_transfer
	.loc 1 213 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	i2c_end_transfer
.LFE114:
	.size	smbus_quick_command, .-smbus_quick_command
	.p2align 4,,15
.globl smbus_receive_byte
	.type	smbus_receive_byte, @function
smbus_receive_byte:
.LFB115:
	.loc 1 217 0
	.loc 1 220 0
	movl	$1, %edx
	.loc 1 217 0
	movq	%rbx, -16(%rsp)
.LCFI5:
	movq	%rbp, -8(%rsp)
.LCFI6:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI7:
	.loc 1 220 0
	call	i2c_start_transfer
	.loc 1 221 0
	movq	%rbx, %rdi
	call	i2c_recv
	.loc 1 222 0
	movq	%rbx, %rdi
	.loc 1 221 0
	movl	%eax, %ebp
	.loc 1 222 0
	call	i2c_nack
	.loc 1 223 0
	movq	%rbx, %rdi
	call	i2c_end_transfer
	.loc 1 224 0
	movzbl	%bpl, %eax
	.loc 1 225 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
.LFE115:
	.size	smbus_receive_byte, .-smbus_receive_byte
	.p2align 4,,15
.globl smbus_send_byte
	.type	smbus_send_byte, @function
smbus_send_byte:
.LFB116:
	.loc 1 228 0
	movq	%rbx, -16(%rsp)
.LCFI8:
	movq	%rbp, -8(%rsp)
.LCFI9:
	movq	%rdi, %rbx
	subq	$24, %rsp
.LCFI10:
	.loc 1 228 0
	movl	%edx, %ebp
	.loc 1 229 0
	xorl	%edx, %edx
	call	i2c_start_transfer
	.loc 1 230 0
	movq	%rbx, %rdi
	movzbl	%bpl, %esi
	call	i2c_send
	.loc 1 231 0
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	jmp	i2c_end_transfer
.LFE116:
	.size	smbus_send_byte, .-smbus_send_byte
	.p2align 4,,15
.globl smbus_read_byte
	.type	smbus_read_byte, @function
smbus_read_byte:
.LFB117:
	.loc 1 235 0
	movq	%rbx, -24(%rsp)
.LCFI11:
	movq	%rbp, -16(%rsp)
.LCFI12:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI13:
	movl	%edx, %ebp
	subq	$24, %rsp
.LCFI14:
	.loc 1 237 0
	xorl	%edx, %edx
	.loc 1 235 0
	movl	%esi, %r12d
	.loc 1 237 0
	call	i2c_start_transfer
	.loc 1 238 0
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	call	i2c_send
	.loc 1 239 0
	movl	%r12d, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	i2c_start_transfer
	.loc 1 240 0
	movq	%rbx, %rdi
	call	i2c_recv
	.loc 1 241 0
	movq	%rbx, %rdi
	.loc 1 240 0
	movl	%eax, %ebp
	.loc 1 241 0
	call	i2c_nack
	.loc 1 242 0
	movq	%rbx, %rdi
	call	i2c_end_transfer
	.loc 1 243 0
	movzbl	%bpl, %eax
	.loc 1 244 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE117:
	.size	smbus_read_byte, .-smbus_read_byte
	.p2align 4,,15
.globl smbus_write_byte
	.type	smbus_write_byte, @function
smbus_write_byte:
.LFB118:
	.loc 1 247 0
	movq	%rbx, -24(%rsp)
.LCFI15:
	movq	%rbp, -16(%rsp)
.LCFI16:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI17:
	movl	%edx, %ebp
	subq	$24, %rsp
.LCFI18:
	.loc 1 248 0
	xorl	%edx, %edx
	.loc 1 247 0
	movl	%ecx, %r12d
	.loc 1 248 0
	call	i2c_start_transfer
	.loc 1 249 0
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	call	i2c_send
	.loc 1 250 0
	movq	%rbx, %rdi
	movzbl	%r12b, %esi
	call	i2c_send
	.loc 1 251 0
	movq	%rbx, %rdi
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	i2c_end_transfer
.LFE118:
	.size	smbus_write_byte, .-smbus_write_byte
	.p2align 4,,15
.globl smbus_read_word
	.type	smbus_read_word, @function
smbus_read_word:
.LFB119:
	.loc 1 255 0
	movq	%rbx, -24(%rsp)
.LCFI19:
	movq	%rbp, -16(%rsp)
.LCFI20:
	movq	%rdi, %rbx
	movq	%r12, -8(%rsp)
.LCFI21:
	movl	%edx, %ebp
	subq	$24, %rsp
.LCFI22:
	.loc 1 257 0
	xorl	%edx, %edx
	.loc 1 255 0
	movl	%esi, %r12d
	.loc 1 257 0
	call	i2c_start_transfer
	.loc 1 258 0
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	call	i2c_send
	.loc 1 259 0
	movl	%r12d, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	call	i2c_start_transfer
	.loc 1 260 0
	movq	%rbx, %rdi
	call	i2c_recv
	.loc 1 261 0
	movq	%rbx, %rdi
	.loc 1 260 0
	movl	%eax, %r12d
	.loc 1 261 0
	call	i2c_recv
	.loc 1 262 0
	movq	%rbx, %rdi
	.loc 1 261 0
	sall	$8, %eax
	orl	%eax, %r12d
	.loc 1 262 0
	call	i2c_nack
	.loc 1 263 0
	movq	%rbx, %rdi
	call	i2c_end_transfer
	.loc 1 264 0
	movzwl	%r12w, %eax
	.loc 1 265 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.LFE119:
	.size	smbus_read_word, .-smbus_read_word
	.p2align 4,,15
.globl smbus_write_word
	.type	smbus_write_word, @function
smbus_write_word:
.LFB120:
	.loc 1 268 0
	movq	%rbx, -24(%rsp)
.LCFI23:
	movq	%rbp, -16(%rsp)
.LCFI24:
	movl	%edx, %ebp
	movq	%r12, -8(%rsp)
.LCFI25:
	.loc 1 269 0
	xorl	%edx, %edx
	.loc 1 268 0
	subq	$24, %rsp
.LCFI26:
	.loc 1 268 0
	movq	%rdi, %r12
	movl	%ecx, %ebx
	.loc 1 269 0
	call	i2c_start_transfer
	.loc 1 270 0
	movzbl	%bpl, %esi
	movq	%r12, %rdi
	call	i2c_send
	.loc 1 271 0
	movzbl	%bl, %esi
	movq	%r12, %rdi
	call	i2c_send
	.loc 1 272 0
	movq	%r12, %rdi
	movzbl	%bh, %esi
	call	i2c_send
	.loc 1 273 0
	movq	%r12, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	jmp	i2c_end_transfer
.LFE120:
	.size	smbus_write_word, .-smbus_write_word
	.p2align 4,,15
.globl smbus_read_block
	.type	smbus_read_block, @function
smbus_read_block:
.LFB121:
	.loc 1 277 0
	movq	%rbx, -40(%rsp)
.LCFI27:
	movq	%rbp, -32(%rsp)
.LCFI28:
	movl	%edx, %ebp
	movq	%r12, -24(%rsp)
.LCFI29:
	.loc 1 281 0
	xorl	%edx, %edx
	.loc 1 277 0
	movq	%r13, -16(%rsp)
.LCFI30:
	movq	%r14, -8(%rsp)
.LCFI31:
	movq	%rdi, %r13
	subq	$40, %rsp
.LCFI32:
	.loc 1 277 0
	movq	%rcx, %r14
	movl	%esi, %ebx
	.loc 1 281 0
	call	i2c_start_transfer
	.loc 1 282 0
	movzbl	%bpl, %esi
	movq	%r13, %rdi
	call	i2c_send
	.loc 1 283 0
	movl	$1, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	i2c_start_transfer
	.loc 1 284 0
	movq	%r13, %rdi
	call	i2c_recv
	.loc 1 286 0
	cmpl	$33, %eax
	.loc 1 284 0
	movl	%eax, %r12d
	.loc 1 286 0
	movl	$0, %eax
	cmovge	%eax, %r12d
	.loc 1 287 0
	xorl	%ebp, %ebp
	cmpl	%r12d, %ebp
	jge	.L95
	movq	%r14, %rbx
	.p2align 4,,7
.L93:
	.loc 1 288 0
	movq	%r13, %rdi
	.loc 1 287 0
	incl	%ebp
	.loc 1 288 0
	call	i2c_recv
	movb	%al, (%rbx)
	incq	%rbx
	.loc 1 287 0
	cmpl	%r12d, %ebp
	jl	.L93
.L95:
	.loc 1 289 0
	movq	%r13, %rdi
	call	i2c_nack
	.loc 1 290 0
	movq	%r13, %rdi
	call	i2c_end_transfer
	.loc 1 292 0
	movl	%r12d, %eax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
.LFE121:
	.size	smbus_read_block, .-smbus_read_block
	.p2align 4,,15
.globl smbus_write_block
	.type	smbus_write_block, @function
smbus_write_block:
.LFB122:
	.loc 1 296 0
	movq	%rbx, -40(%rsp)
.LCFI33:
	movq	%rbp, -32(%rsp)
.LCFI34:
	.loc 1 300 0
	movl	$32, %eax
	.loc 1 296 0
	movq	%r12, -24(%rsp)
.LCFI35:
	movq	%r13, -16(%rsp)
.LCFI36:
	movl	%r8d, %r12d
	movq	%r14, -8(%rsp)
.LCFI37:
	subq	$40, %rsp
.LCFI38:
	.loc 1 300 0
	cmpl	$33, %r8d
	cmovge	%eax, %r12d
	.loc 1 296 0
	movq	%rdi, %r13
	movl	%edx, %ebx
	.loc 1 302 0
	xorl	%edx, %edx
	.loc 1 296 0
	movq	%rcx, %r14
	.loc 1 305 0
	xorl	%ebp, %ebp
	.loc 1 302 0
	call	i2c_start_transfer
	.loc 1 303 0
	movzbl	%bl, %esi
	movq	%r13, %rdi
	call	i2c_send
	.loc 1 304 0
	movzbl	%r12b, %esi
	movq	%r13, %rdi
	call	i2c_send
	.loc 1 305 0
	cmpl	%r12d, %ebp
	jge	.L103
	movq	%r14, %rbx
	.p2align 4,,7
.L101:
	.loc 1 306 0
	movzbl	(%rbx), %esi
	movq	%r13, %rdi
	.loc 1 305 0
	incl	%ebp
	incq	%rbx
	.loc 1 306 0
	call	i2c_send
	.loc 1 305 0
	cmpl	%r12d, %ebp
	jl	.L101
.L103:
	.loc 1 307 0
	movq	%r13, %rdi
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	jmp	i2c_end_transfer
.LFE122:
	.size	smbus_write_block, .-smbus_write_block
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
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI2-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI4-.LFB114
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
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI6-.LFB115
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI9-.LFB116
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI12-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI16-.LFB118
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI20-.LFB119
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI24-.LFB120
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI28-.LFB121
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI31-.LCFI28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI36-.LFB122
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI38-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
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
	.long	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI1-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE7:
.LSFDE9:
	.long	.LEFDE9-.LASFDE9
.LASFDE9:
	.long	.LASFDE9-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI2-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI3-.LFB113
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.byte	0x4
	.long	.LCFI4-.LFB114
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
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.byte	0x4
	.long	.LCFI6-.LFB115
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI9-.LFB116
	.byte	0x86
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI12-.LFB117
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI16-.LFB118
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI20-.LFB119
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.byte	0x4
	.long	.LCFI24-.LFB120
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI24
	.byte	0xe
	.uleb128 0x20
	.byte	0x8c
	.uleb128 0x2
	.align 8
.LEFDE25:
.LSFDE27:
	.long	.LEFDE27-.LASFDE27
.LASFDE27:
	.long	.LASFDE27-.Lframe1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI28-.LFB121
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI31-.LCFI28
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x30
	.align 8
.LEFDE27:
.LSFDE29:
	.long	.LEFDE29-.LASFDE29
.LASFDE29:
	.long	.LASFDE29-.Lframe1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI36-.LFB122
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI38-.LCFI36
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.align 8
.LEFDE29:
	.file 2 "./qemu-common.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/smbus.h"
	.file 4 "/home/remco/Projects/Argos/src/hw/i2c.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xa05
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF96
	.byte	0x1
	.long	.LASF97
	.long	.LASF98
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
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.byte	0x74
	.long	0x307
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.uleb128 0x2
	.long	.LASF51
	.byte	0x2
	.byte	0x75
	.long	0x318
	.uleb128 0x7
	.long	0x36b
	.long	.LASF51
	.byte	0x28
	.byte	0x2
	.byte	0x75
	.uleb128 0xa
	.long	.LASF52
	.byte	0x4
	.byte	0x1a
	.long	0x481
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.byte	0x1b
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF54
	.byte	0x4
	.byte	0x1c
	.long	0x434
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
	.byte	0x2
	.byte	0x76
	.long	0x376
	.uleb128 0x7
	.long	0x40f
	.long	.LASF57
	.byte	0x80
	.byte	0x2
	.byte	0x76
	.uleb128 0xe
	.string	"i2c"
	.byte	0x3
	.byte	0x1d
	.long	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x3
	.byte	0x20
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF59
	.byte	0x3
	.byte	0x21
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF60
	.byte	0x3
	.byte	0x22
	.long	0x4d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF61
	.byte	0x3
	.byte	0x27
	.long	0x4f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF62
	.byte	0x3
	.byte	0x2c
	.long	0x517
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF63
	.byte	0x3
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF64
	.byte	0x3
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.long	.LASF65
	.byte	0x3
	.byte	0x31
	.long	0x51d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF66
	.byte	0x3
	.byte	0x32
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7a
	.byte	0x0
	.uleb128 0xf
	.long	0x434
	.long	.LASF99
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.uleb128 0x10
	.long	.LASF67
	.sleb128 0
	.uleb128 0x10
	.long	.LASF68
	.sleb128 1
	.uleb128 0x10
	.long	.LASF69
	.sleb128 2
	.uleb128 0x10
	.long	.LASF70
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x4
	.byte	0x11
	.long	0x43f
	.uleb128 0x6
	.byte	0x8
	.long	0x445
	.uleb128 0x11
	.long	0x45a
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x45a
	.uleb128 0x12
	.long	0x2e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x30d
	.uleb128 0x2
	.long	.LASF72
	.byte	0x4
	.byte	0x13
	.long	0x46b
	.uleb128 0x6
	.byte	0x8
	.long	0x471
	.uleb128 0x11
	.long	0x481
	.byte	0x1
	.long	0x3f
	.uleb128 0x12
	.long	0x45a
	.byte	0x0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x4
	.byte	0x15
	.long	0x48c
	.uleb128 0x6
	.byte	0x8
	.long	0x492
	.uleb128 0x13
	.long	0x4a3
	.byte	0x1
	.uleb128 0x12
	.long	0x45a
	.uleb128 0x12
	.long	0x40f
	.byte	0x0
	.uleb128 0x13
	.long	0x4b4
	.byte	0x1
	.uleb128 0x12
	.long	0x4b4
	.uleb128 0x12
	.long	0x2e6
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x36b
	.uleb128 0x6
	.byte	0x8
	.long	0x4a3
	.uleb128 0x11
	.long	0x4d0
	.byte	0x1
	.long	0x2e6
	.uleb128 0x12
	.long	0x4b4
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c0
	.uleb128 0x13
	.long	0x4f1
	.byte	0x1
	.uleb128 0x12
	.long	0x4b4
	.uleb128 0x12
	.long	0x2e6
	.uleb128 0x12
	.long	0x4f1
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e6
	.uleb128 0x6
	.byte	0x8
	.long	0x4d6
	.uleb128 0x11
	.long	0x517
	.byte	0x1
	.long	0x2e6
	.uleb128 0x12
	.long	0x4b4
	.uleb128 0x12
	.long	0x2e6
	.uleb128 0x12
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4fd
	.uleb128 0xb
	.long	0x52d
	.long	0x2e6
	.uleb128 0xc
	.long	0x5b
	.byte	0x21
	.byte	0x0
	.uleb128 0x14
	.long	0x566
	.long	.LASF74
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x26
	.long	0x4b4
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF53
	.byte	0x1
	.byte	0x26
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x14
	.long	0x592
	.long	.LASF75
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"dev"
	.byte	0x1
	.byte	0x2d
	.long	0x4b4
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x14
	.long	0x5d4
	.long	.LASF76
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x40
	.long	0x45a
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x40
	.long	0x40f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0x42
	.long	0x4b4
	.byte	0x0
	.uleb128 0x18
	.long	0x61c
	.long	.LASF77
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x3f
	.quad	.LFB111
	.quad	.LFE111
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x92
	.long	0x45a
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0x94
	.long	0x4b4
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.long	0x662
	.long	.LASF78
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0x3f
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xb3
	.long	0x45a
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0xb3
	.long	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0xb5
	.long	0x4b4
	.byte	0x0
	.uleb128 0x1a
	.long	0x6ba
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	0x4b4
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xc2
	.long	0x6ba
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0xc2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0xc2
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.string	"dev"
	.byte	0x1
	.byte	0xc4
	.long	0x4b4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2fc
	.uleb128 0x1b
	.long	0x707
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xd2
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xd2
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0xd2
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x1a
	.long	0x752
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.long	0x2e6
	.quad	.LFB115
	.quad	.LFE115
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xd8
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xd8
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.byte	0xda
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x1b
	.long	0x799
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xe3
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xe3
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0xe3
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x1a
	.long	0x7f1
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x2e6
	.quad	.LFB117
	.quad	.LFE117
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xea
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xea
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xea
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.byte	0xec
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x1b
	.long	0x845
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xf6
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xf6
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xf6
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0xf6
	.long	0x2e6
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1a
	.long	0x89e
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x2f1
	.quad	.LFB119
	.quad	.LFE119
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.string	"bus"
	.byte	0x1
	.byte	0xfe
	.long	0x6ba
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xfe
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0xfe
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x1
	.value	0x100
	.long	0x2f1
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1e
	.long	0x8f7
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.value	0x10c
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"bus"
	.byte	0x1
	.value	0x10b
	.long	0x6ba
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.long	.LASF83
	.byte	0x1
	.value	0x10b
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.value	0x10b
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.long	.LASF79
	.byte	0x1
	.value	0x10b
	.long	0x2f1
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x21
	.long	0x96e
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.value	0x115
	.byte	0x1
	.long	0x3f
	.quad	.LFB121
	.quad	.LFE121
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"bus"
	.byte	0x1
	.value	0x114
	.long	0x6ba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.long	.LASF83
	.byte	0x1
	.value	0x114
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.value	0x114
	.long	0x2e6
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.long	.LASF79
	.byte	0x1
	.value	0x114
	.long	0x4f1
	.byte	0x1
	.byte	0x5e
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x116
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x1e
	.long	0x9e1
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.value	0x128
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.string	"bus"
	.byte	0x1
	.value	0x126
	.long	0x6ba
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.long	.LASF83
	.byte	0x1
	.value	0x126
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.value	0x126
	.long	0x2e6
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.long	.LASF79
	.byte	0x1
	.value	0x126
	.long	0x4f1
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.value	0x127
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x129
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x23
	.long	.LASF93
	.byte	0x6
	.byte	0x91
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.long	.LASF94
	.byte	0x6
	.byte	0x92
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.long	.LASF95
	.byte	0x6
	.byte	0x93
	.long	0x2ba
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xe4
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa09
	.long	0x662
	.string	"smbus_device_init"
	.long	0x6c0
	.string	"smbus_quick_command"
	.long	0x707
	.string	"smbus_receive_byte"
	.long	0x752
	.string	"smbus_send_byte"
	.long	0x799
	.string	"smbus_read_byte"
	.long	0x7f1
	.string	"smbus_write_byte"
	.long	0x845
	.string	"smbus_read_word"
	.long	0x89e
	.string	"smbus_write_word"
	.long	0x8f7
	.string	"smbus_read_block"
	.long	0x96e
	.string	"smbus_write_block"
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
.LASF91:
	.string	"smbus_read_block"
.LASF92:
	.string	"smbus_write_block"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"smbus_do_quick_cmd"
.LASF17:
	.string	"_IO_write_base"
.LASF90:
	.string	"smbus_write_word"
.LASF33:
	.string	"_lock"
.LASF58:
	.string	"quick_cmd"
.LASF22:
	.string	"_IO_save_base"
.LASF64:
	.string	"data_len"
.LASF30:
	.string	"_cur_column"
.LASF78:
	.string	"smbus_i2c_send"
.LASF40:
	.string	"_mode"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"_IO_marker"
.LASF50:
	.string	"i2c_bus"
.LASF7:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF70:
	.string	"I2C_NACK"
.LASF6:
	.string	"unsigned char"
.LASF85:
	.string	"smbus_receive_byte"
.LASF5:
	.string	"char"
.LASF77:
	.string	"smbus_i2c_recv"
.LASF42:
	.string	"_IO_lock_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF47:
	.string	"_pos"
.LASF93:
	.string	"stdin"
.LASF25:
	.string	"_markers"
.LASF73:
	.string	"i2c_event_cb"
.LASF99:
	.string	"i2c_event"
.LASF34:
	.string	"_offset"
.LASF87:
	.string	"smbus_read_byte"
.LASF97:
	.string	"/home/remco/Projects/Argos/src/hw/smbus.c"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF41:
	.string	"_unused2"
.LASF29:
	.string	"_old_offset"
.LASF54:
	.string	"send"
.LASF3:
	.string	"long long int"
.LASF71:
	.string	"i2c_send_cb"
.LASF19:
	.string	"_IO_write_end"
.LASF52:
	.string	"event"
.LASF83:
	.string	"addr"
.LASF88:
	.string	"smbus_write_byte"
.LASF84:
	.string	"read"
.LASF20:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF96:
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
.LASF69:
	.string	"I2C_FINISH"
.LASF13:
	.string	"_flags"
.LASF55:
	.string	"address"
.LASF62:
	.string	"read_data"
.LASF51:
	.string	"i2c_slave"
.LASF86:
	.string	"smbus_send_byte"
.LASF65:
	.string	"data_buf"
.LASF53:
	.string	"recv"
.LASF59:
	.string	"send_byte"
.LASF56:
	.string	"next"
.LASF60:
	.string	"receive_byte"
.LASF89:
	.string	"smbus_read_word"
.LASF82:
	.string	"smbus_quick_command"
.LASF80:
	.string	"size"
.LASF12:
	.string	"long long unsigned int"
.LASF66:
	.string	"command"
.LASF48:
	.string	"uint8_t"
.LASF49:
	.string	"uint16_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF76:
	.string	"smbus_i2c_event"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF98:
	.string	"/home/remco/Projects/Argos/src"
.LASF57:
	.string	"SMBusDevice"
.LASF21:
	.string	"_IO_buf_end"
.LASF95:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF63:
	.string	"mode"
.LASF68:
	.string	"I2C_START_SEND"
.LASF31:
	.string	"_vtable_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF81:
	.string	"smbus_device_init"
.LASF27:
	.string	"_fileno"
.LASF4:
	.string	"short unsigned int"
.LASF94:
	.string	"stdout"
.LASF72:
	.string	"i2c_recv_cb"
.LASF18:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"smbus_do_write"
.LASF61:
	.string	"write_data"
.LASF67:
	.string	"I2C_START_RECV"
.LASF79:
	.string	"data"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
