	.file	"scsi-disk.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	free_requests
	.comm	free_requests,8,8
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"scsi-disk: Orphaned request\n"
	.text
	.p2align 4,,15
	.type	scsi_remove_request, @function
scsi_remove_request:
.LFB98:
	.file 1 "/home/remco/Projects/Argos/src/hw/scsi-disk.c"
	.loc 1 95 0
	pushq	%rbx
.LCFI0:
	.loc 1 97 0
	movq	(%rdi), %rdx
	.loc 1 95 0
	movq	%rdi, %rbx
	.loc 1 99 0
	movq	8(%rdx), %rax
	cmpq	%rdi, %rax
	jne	.L2
	jmp	.L13
	.p2align 4,,7
.L15:
	.loc 1 104 0
	movq	40(%rax), %rax
	cmpq	%rbx, %rax
	je	.L14
.L2:
	testq	%rax, %rax
	.loc 1 102 0
	movq	%rax, %rdx
	.loc 1 104 0
	.p2align 4,,3
	jne	.L15
.L7:
	.loc 1 108 0
	movq	stderr(%rip), %rcx
	movl	$28, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	.loc 1 111 0
	movq	free_requests(%rip), %rax
	movq	%rax, 40(%rbx)
	.loc 1 112 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
	.p2align 4,,7
.L14:
	.loc 1 105 0
	testq	%rdx, %rdx
	je	.L7
	.loc 1 106 0
	movq	40(%rbx), %rax
	movq	%rax, 40(%rdx)
	.loc 1 111 0
	movq	free_requests(%rip), %rax
	movq	%rax, 40(%rbx)
	.loc 1 112 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
.L13:
	.loc 1 100 0
	movq	40(%rdi), %rax
	movq	%rax, 8(%rdx)
	.loc 1 111 0
	movq	free_requests(%rip), %rax
	movq	%rax, 40(%rbx)
	.loc 1 112 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
.LFE98:
	.size	scsi_remove_request, .-scsi_remove_request
	.p2align 4,,15
	.type	scsi_find_request, @function
scsi_find_request:
.LFB99:
	.loc 1 116 0
	.loc 1 119 0
	movq	8(%rdi), %rax
	jmp	.L22
	.p2align 4,,7
.L23:
	.loc 1 121 0
	movq	40(%rax), %rax
.L22:
	testq	%rax, %rax
	je	.L18
	cmpl	%esi, 8(%rax)
	jne	.L23
.L18:
	.loc 1 124 0
	rep ; ret
.LFE99:
	.size	scsi_find_request, .-scsi_find_request
	.p2align 4,,15
	.type	scsi_command_complete, @function
scsi_command_complete:
.LFB100:
	.loc 1 128 0
	movq	%r12, -16(%rsp)
.LCFI1:
	movq	%rbx, -24(%rsp)
.LCFI2:
	movl	%esi, %r12d
	movq	%r13, -8(%rsp)
.LCFI3:
	subq	$24, %rsp
.LCFI4:
	.loc 1 129 0
	movq	(%rdi), %rbx
	.loc 1 132 0
	movl	%esi, 20(%rbx)
	.loc 1 133 0
	movl	8(%rdi), %r13d
	.loc 1 134 0
	call	scsi_remove_request
	.loc 1 135 0
	movq	40(%rbx), %rdi
	movq	32(%rbx), %r11
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	xorl	%esi, %esi
	addq	$24, %rsp
	jmp	*%r11
.LFE100:
	.size	scsi_command_complete, .-scsi_command_complete
	.p2align 4,,15
	.type	scsi_cancel_io, @function
scsi_cancel_io:
.LFB101:
	.loc 1 140 0
	pushq	%rbx
.LCFI5:
	.loc 1 141 0
	movq	(%rdi), %rdi
	.loc 1 144 0
	call	scsi_find_request
	.loc 1 145 0
	testq	%rax, %rax
	.loc 1 144 0
	movq	%rax, %rbx
	.loc 1 145 0
	je	.L26
	.loc 1 146 0
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L30
	.loc 1 148 0
	movq	$0, 32(%rbx)
	.loc 1 149 0
	movq	%rbx, %rdi
	.loc 1 151 0
	popq	%rbx
	.loc 1 149 0
	jmp	scsi_remove_request
	.p2align 4,,7
.L26:
	.loc 1 151 0
	popq	%rbx
	ret
	.p2align 4,,7
.L30:
	.loc 1 147 0
	call	bdrv_aio_cancel
	.loc 1 148 0
	movq	$0, 32(%rbx)
	.loc 1 149 0
	movq	%rbx, %rdi
	.loc 1 151 0
	popq	%rbx
	.loc 1 149 0
	jmp	scsi_remove_request
.LFE101:
	.size	scsi_cancel_io, .-scsi_cancel_io
	.p2align 4,,15
	.type	scsi_read_complete, @function
scsi_read_complete:
.LFB102:
	.loc 1 154 0
	.loc 1 158 0
	testl	%esi, %esi
	.loc 1 156 0
	movq	(%rdi), %rax
	.loc 1 158 0
	je	.L34
	.loc 1 160 0
	movl	$4, %esi
	jmp	scsi_command_complete
	.p2align 4,,7
.L34:
	.loc 1 165 0
	movl	20(%rdi), %ecx
	movl	8(%rdi), %edx
	movl	$1, %esi
	movq	40(%rax), %rdi
	movq	32(%rax), %r11
	jmp	*%r11
.LFE102:
	.size	scsi_read_complete, .-scsi_read_complete
	.section	.rodata.str1.1
.LC1:
	.string	"scsi-disk: Bad read tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_read_data, @function
scsi_read_data:
.LFB103:
	.loc 1 170 0
	movq	%rbx, -24(%rsp)
.LCFI6:
	movq	%rbp, -16(%rsp)
.LCFI7:
	movl	%esi, %ebp
	movq	%r12, -8(%rsp)
.LCFI8:
	subq	$24, %rsp
.LCFI9:
	.loc 1 171 0
	movq	(%rdi), %r12
	.loc 1 175 0
	movq	%r12, %rdi
	call	scsi_find_request
	.loc 1 176 0
	testq	%rax, %rax
	.loc 1 175 0
	movq	%rax, %rbx
	.loc 1 176 0
	je	.L45
	.loc 1 182 0
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	je	.L46
	.loc 1 189 0
	testl	%eax, %eax
	je	.L47
	.loc 1 196 0
	cmpl	$129, %eax
	.loc 1 194 0
	movl	%eax, %ebp
	.loc 1 196 0
	movl	$128, %eax
	cmovae	%eax, %ebp
	.loc 1 199 0
	movslq	12(%rbx),%rsi
	movq	24(%rbx), %rdx
	.loc 1 198 0
	movl	%ebp, %eax
	.loc 1 199 0
	movq	%rbx, %r9
	movl	$scsi_read_complete, %r8d
	.loc 1 198 0
	sall	$9, %eax
	.loc 1 199 0
	movl	%ebp, %ecx
	.loc 1 198 0
	movl	%eax, 20(%rbx)
	.loc 1 199 0
	movq	(%r12), %rdi
	call	bdrv_aio_read
	.loc 1 201 0
	testq	%rax, %rax
	.loc 1 199 0
	movq	%rax, 32(%rbx)
	.loc 1 201 0
	je	.L48
.L43:
	.loc 1 203 0
	addl	%ebp, 12(%rbx)
	.loc 1 204 0
	subl	%ebp, 16(%rbx)
	.loc 1 205 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L47:
	.loc 1 190 0
	movq	%rbx, %rdi
	.loc 1 205 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	.loc 1 190 0
	xorl	%esi, %esi
	.loc 1 205 0
	addq	$24, %rsp
	.loc 1 190 0
	jmp	scsi_command_complete
	.p2align 4,,7
.L46:
	.loc 1 184 0
	movl	$0, 16(%rbx)
	.loc 1 185 0
	movl	20(%rbx), %ecx
	movl	$1, %esi
	movl	8(%rbx), %edx
	movq	40(%r12), %rdi
	movq	32(%r12), %r11
	.loc 1 205 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 185 0
	jmp	*%r11
	.p2align 4,,7
.L45:
	.loc 1 177 0
	movq	stderr(%rip), %rdi
	movl	%ebp, %edx
	movl	$.LC1, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 205 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 179 0
	movl	$4, %esi
	.loc 1 205 0
	movq	16(%rsp), %r12
	.loc 1 179 0
	xorl	%edi, %edi
	.loc 1 205 0
	addq	$24, %rsp
	.loc 1 190 0
	jmp	scsi_command_complete
.L48:
	.loc 1 202 0
	movl	$4, %esi
	movq	%rbx, %rdi
	call	scsi_command_complete
	jmp	.L43
.LFE103:
	.size	scsi_read_data, .-scsi_read_data
	.section	.rodata.str1.1
.LC2:
	.string	"scsi-disc: IO write error\n"
	.text
	.p2align 4,,15
	.type	scsi_write_complete, @function
scsi_write_complete:
.LFB104:
	.loc 1 208 0
	subq	$8, %rsp
.LCFI10:
	.loc 1 213 0
	testl	%esi, %esi
	.loc 1 210 0
	movq	(%rdi), %r8
	.loc 1 213 0
	jne	.L55
	.loc 1 219 0
	movl	16(%rdi), %eax
	.loc 1 218 0
	movq	$0, 32(%rdi)
	.loc 1 219 0
	testl	%eax, %eax
	je	.L56
	.loc 1 222 0
	sall	$9, %eax
	.loc 1 224 0
	movl	$65536, %ecx
	.loc 1 228 0
	movl	8(%rdi), %edx
	.loc 1 224 0
	cmpl	$65537, %eax
	.loc 1 228 0
	movl	$1, %esi
	.loc 1 224 0
	cmovb	%eax, %ecx
	.loc 1 226 0
	movl	%ecx, 20(%rdi)
	.loc 1 228 0
	movq	40(%r8), %rdi
	movq	32(%r8), %r11
	.loc 1 230 0
	addq	$8, %rsp
	.loc 1 228 0
	jmp	*%r11
	.p2align 4,,7
.L56:
	.loc 1 220 0
	xorl	%esi, %esi
	.loc 1 230 0
	addq	$8, %rsp
	.loc 1 220 0
	jmp	scsi_command_complete
.L55:
	.loc 1 214 0
	movq	stderr(%rip), %rcx
	movl	$.LC2, %edi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite
	.loc 1 215 0
	movl	$1, %edi
	call	exit
.LFE104:
	.size	scsi_write_complete, .-scsi_write_complete
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"scsi-disk: Data transfer already in progress\n"
	.align 8
.LC3:
	.string	"scsi-disk: Bad write tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_write_data, @function
scsi_write_data:
.LFB105:
	.loc 1 235 0
	movq	%rbx, -24(%rsp)
.LCFI11:
	movq	%rbp, -16(%rsp)
.LCFI12:
	movl	%esi, %ebp
	movq	%r12, -8(%rsp)
.LCFI13:
	subq	$24, %rsp
.LCFI14:
	.loc 1 236 0
	movq	(%rdi), %r12
	.loc 1 241 0
	movq	%r12, %rdi
	call	scsi_find_request
	.loc 1 242 0
	testq	%rax, %rax
	.loc 1 241 0
	movq	%rax, %rbx
	.loc 1 242 0
	je	.L67
	.loc 1 247 0
	cmpq	$0, 32(%rax)
	jne	.L68
.L61:
	.loc 1 249 0
	movl	20(%rbx), %eax
	leal	511(%rax), %edx
	cmpl	$-1, %eax
	cmovle	%edx, %eax
	.loc 1 250 0
	movl	%eax, %ebp
	sarl	$9, %ebp
	je	.L64
	.loc 1 251 0
	movslq	12(%rbx),%rsi
	movq	24(%rbx), %rdx
	movq	%rbx, %r9
	movq	(%r12), %rdi
	movl	$scsi_write_complete, %r8d
	movl	%ebp, %ecx
	call	bdrv_aio_write
	.loc 1 253 0
	testq	%rax, %rax
	.loc 1 251 0
	movq	%rax, 32(%rbx)
	.loc 1 253 0
	je	.L69
.L65:
	.loc 1 255 0
	addl	%ebp, 12(%rbx)
	.loc 1 256 0
	subl	%ebp, 16(%rbx)
.L66:
	.loc 1 262 0
	xorl	%eax, %eax
.L57:
	.loc 1 263 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L64:
	.loc 1 259 0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	scsi_write_complete
	jmp	.L66
	.p2align 4,,7
.L68:
	.loc 1 248 0
	movq	stderr(%rip), %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	jmp	.L61
	.p2align 4,,7
.L69:
	.loc 1 254 0
	movl	$4, %esi
	movq	%rbx, %rdi
	call	scsi_command_complete
	.p2align 4,,4
	jmp	.L65
.L67:
	.loc 1 243 0
	movq	stderr(%rip), %rdi
	movl	%ebp, %edx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 244 0
	movl	$4, %esi
	xorl	%edi, %edi
	call	scsi_command_complete
	.loc 1 245 0
	movl	$1, %eax
	jmp	.L57
.LFE105:
	.size	scsi_write_data, .-scsi_write_data
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"scsi-disk: Bad buffer tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_get_buf, @function
scsi_get_buf:
.LFB106:
	.loc 1 267 0
	pushq	%rbx
.LCFI15:
	.loc 1 268 0
	movq	(%rdi), %rdi
	.loc 1 267 0
	movl	%esi, %ebx
	.loc 1 271 0
	call	scsi_find_request
	.loc 1 272 0
	testq	%rax, %rax
	je	.L73
	.loc 1 277 0
	popq	%rbx
	.loc 1 276 0
	movq	24(%rax), %rax
	.loc 1 277 0
	ret
.L73:
	.loc 1 273 0
	movq	stderr(%rip), %rdi
	movl	%ebx, %edx
	movl	$.LC5, %esi
	call	fprintf
	.loc 1 277 0
	popq	%rbx
	.loc 1 274 0
	xorl	%eax, %eax
	.loc 1 277 0
	ret
.LFE106:
	.size	scsi_get_buf, .-scsi_get_buf
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"scsi-disk: Tag 0x%x already in use\n"
	.align 8
.LC7:
	.string	"scsi-disk: Unsupported command length, command %x\n"
	.align 8
.LC8:
	.string	"scsi-disk: Inquiry buffer too small (%d)\n"
	.text
	.p2align 4,,15
	.type	scsi_send_command, @function
scsi_send_command:
.LFB107:
	.loc 1 286 0
	movq	%rbx, -48(%rsp)
.LCFI16:
	movq	%rbp, -40(%rsp)
.LCFI17:
	movl	%esi, %ebx
	movq	%r12, -32(%rsp)
.LCFI18:
	movq	%r13, -24(%rsp)
.LCFI19:
	movq	%rdi, %r12
	movq	%r14, -16(%rsp)
.LCFI20:
	movq	%r15, -8(%rsp)
.LCFI21:
	subq	$72, %rsp
.LCFI22:
	.loc 1 286 0
	movl	%ecx, 12(%rsp)
	.loc 1 287 0
	movq	(%rdi), %r13
	.loc 1 286 0
	movq	%rdx, %rbp
	.loc 1 297 0
	movzbl	(%rdx), %r14d
	.loc 1 298 0
	movq	%r13, %rdi
	call	scsi_find_request
	.loc 1 299 0
	testq	%rax, %rax
	je	.L75
	.loc 1 300 0
	movq	stderr(%rip), %rdi
	movl	$.LC6, %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	call	fprintf
	.loc 1 301 0
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	scsi_cancel_io
.L75:
.LBB2:
.LBB3:
	.loc 1 76 0
	movq	free_requests(%rip), %rdi
	testq	%rdi, %rdi
	je	.L77
	.loc 1 78 0
	movq	40(%rdi), %rax
	.loc 1 77 0
	movq	%rdi, %r12
	.loc 1 78 0
	movq	%rax, free_requests(%rip)
.L78:
	.loc 1 83 0
	movq	%r13, (%r12)
	.loc 1 84 0
	movl	%ebx, 8(%r12)
	.loc 1 85 0
	movl	$0, 16(%r12)
	.loc 1 86 0
	movl	$0, 20(%r12)
	.loc 1 87 0
	movq	$0, 32(%r12)
	.loc 1 89 0
	movq	8(%r13), %rax
	movq	%rax, 40(%r12)
.LBE3:
.LBE2:
	.loc 1 309 0
	movl	%r14d, %eax
.LBB4:
.LBB5:
	.loc 1 90 0
	movq	%r12, 8(%r13)
.LBE5:
.LBE4:
	.loc 1 309 0
	shrb	$5, %al
	.loc 1 306 0
	movq	24(%r12), %r15
	.loc 1 307 0
	movl	$0, 8(%rsp)
	.loc 1 309 0
	movzbl	%al, %eax
	cmpl	$5, %eax
	ja	.L87
	mov	%eax, %eax
	jmp	*.L90(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L90:
	.quad	.L82
	.quad	.L84
	.quad	.L84
	.quad	.L87
	.quad	.L85
	.quad	.L86
	.text
	.p2align 4,,7
.L87:
	.loc 1 332 0
	movq	stderr(%rip), %rdi
	movzbl	%r14b, %edx
	movl	$.LC7, %esi
	xorl	%eax, %eax
	call	fprintf
.L89:
	.loc 1 570 0
	movl	$5, %esi
.L176:
	movq	%r12, %rdi
	call	scsi_command_complete
	.loc 1 571 0
	xorl	%eax, %eax
.L74:
	.loc 1 584 0
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L77:
.LBB6:
.LBB7:
	.loc 1 80 0
	movl	$48, %edi
	call	qemu_malloc
	.loc 1 81 0
	movl	$65536, %esi
	.loc 1 80 0
	movq	%rax, %r12
	.loc 1 81 0
	movl	$512, %edi
	call	qemu_memalign
	movq	%rax, 24(%r12)
	jmp	.L78
	.p2align 4,,7
.L86:
.LBE7:
.LBE6:
	.loc 1 327 0
	movzbl	4(%rbp), %esi
	movzbl	5(%rbp), %ecx
	movzbl	2(%rbp), %edi
	.loc 1 328 0
	movzbl	9(%rbp), %ebx
	.loc 1 327 0
	movzbl	%sil, %eax
	sall	$8, %eax
	orl	%eax, %ecx
	movzbl	3(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movl	%edi, %eax
	sall	$24, %eax
	orl	%eax, %ecx
	.loc 1 328 0
	movzbl	8(%rbp), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movzbl	7(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	6(%rbp), %eax
	sall	$24, %eax
.L171:
	orl	%eax, %ebx
.L81:
	.loc 1 344 0
	movl	12(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L89
	movzbl	1(%rbp), %edx
	movl	%edx, %eax
	shrb	$5, %al
	testb	%al, %al
	jne	.L89
	.loc 1 349 0
	movzbl	%r14b, %eax
	cmpl	$160, %eax
	ja	.L89
	mov	%eax, %eax
	jmp	*.L164(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L164:
	.quad	.L94
	.quad	.L89
	.quad	.L89
	.quad	.L98
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L133
	.quad	.L89
	.quad	.L136
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L101
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L112
	.quad	.L112
	.quad	.L89
	.quad	.L89
	.quad	.L115
	.quad	.L94
	.quad	.L89
	.quad	.L89
	.quad	.L126
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L128
	.quad	.L89
	.quad	.L89
	.quad	.L133
	.quad	.L89
	.quad	.L136
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L138
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L139
	.quad	.L89
	.quad	.L89
	.quad	.L152
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L157
	.quad	.L157
	.quad	.L89
	.quad	.L89
	.quad	.L115
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L160
	.text
	.p2align 4,,7
.L82:
	.loc 1 311 0
	movzbl	2(%rbp), %edi
	movzbl	3(%rbp), %ecx
	.loc 1 312 0
	movzbl	4(%rbp), %esi
	.loc 1 311 0
	movzbl	%dil, %eax
	sall	$8, %eax
	.loc 1 312 0
	movzbl	%sil, %ebx
	.loc 1 311 0
	orl	%eax, %ecx
	movzbl	1(%rbp), %eax
	andl	$31, %eax
	sall	$16, %eax
	orl	%eax, %ecx
	jmp	.L81
	.p2align 4,,7
.L84:
	.loc 1 317 0
	movzbl	4(%rbp), %esi
	movzbl	5(%rbp), %ecx
	movzbl	2(%rbp), %edi
	.loc 1 318 0
	movzbl	8(%rbp), %ebx
	.loc 1 317 0
	movzbl	%sil, %eax
	sall	$8, %eax
	orl	%eax, %ecx
	movzbl	3(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movl	%edi, %eax
	sall	$24, %eax
	orl	%eax, %ecx
	.loc 1 318 0
	movzbl	7(%rbp), %eax
	sall	$8, %eax
	jmp	.L171
	.p2align 4,,7
.L85:
	.loc 1 322 0
	movzbl	4(%rbp), %esi
	movzbl	5(%rbp), %ecx
	movzbl	2(%rbp), %edi
	.loc 1 323 0
	movzbl	13(%rbp), %ebx
	.loc 1 322 0
	movzbl	%sil, %eax
	sall	$8, %eax
	orl	%eax, %ecx
	movzbl	3(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movl	%edi, %eax
	sall	$24, %eax
	orl	%eax, %ecx
	.loc 1 323 0
	movzbl	12(%rbp), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movzbl	11(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	10(%rbp), %eax
	.loc 1 328 0
	sall	$24, %eax
	jmp	.L171
.L157:
	.loc 1 556 0
	testb	$3, %dl
.L173:
	jne	.L89
.L94:
	.loc 1 573 0
	cmpq	$0, 16(%r12)
	je	.L177
.L165:
	.loc 1 576 0
	movl	16(%r12), %eax
	.loc 1 577 0
	movl	8(%rsp), %edx
	.loc 1 576 0
	movl	%eax, %ebx
	sall	$9, %ebx
	addl	20(%r12), %ebx
	.loc 1 577 0
	testl	%edx, %edx
	je	.L166
	.loc 1 578 0
	movl	%ebx, %eax
	negl	%eax
	jmp	.L74
.L112:
	.loc 1 395 0
	andl	$1, %edx
	jmp	.L173
.L146:
.L152:
	.loc 1 543 0
	movq	$0, (%r15)
	.loc 1 546 0
	movb	$8, 7(%r15)
.L174:
	.loc 1 547 0
	movl	$8, 20(%r12)
	jmp	.L94
.L139:
.LBB8:
	.loc 1 508 0
	movl	%edx, %eax
	.loc 1 509 0
	movl	$15, %r14d
	.loc 1 511 0
	leaq	16(%rsp), %rsi
	.loc 1 508 0
	andl	$2, %eax
	.loc 1 509 0
	andl	%edi, %r14d
	.loc 1 508 0
	movl	%eax, 4(%rsp)
	.loc 1 511 0
	movq	(%r13), %rdi
	.loc 1 510 0
	movzbl	6(%rbp), %ebp
	.loc 1 511 0
	call	bdrv_get_geometry
	.loc 1 513 0
	cmpl	$1, %r14d
	je	.L143
	jle	.L178
	cmpl	$2, %r14d
	.p2align 4,,7
	jne	.L89
	.loc 1 526 0
	movl	4(%rsp), %edx
	movl	16(%rsp), %edi
	movl	%ebp, %ecx
	movq	%r15, %rsi
	call	cdrom_read_toc_raw
.L172:
	.loc 1 531 0
	testl	%eax, %eax
	.loc 1 526 0
	movl	%eax, %edx
	.loc 1 531 0
	jle	.L89
	.loc 1 533 0
	cmpl	%ebx, %edx
	cmovb	%edx, %ebx
.L175:
	.loc 1 534 0
	movl	%ebx, 20(%r12)
	jmp	.L94
.L138:
.LBE8:
	.loc 1 502 0
	movq	(%r13), %rdi
	call	bdrv_flush
	jmp	.L94
.L136:
	.loc 1 496 0
	movl	16(%r13), %eax
	imull	%ecx, %eax
	movl	%eax, 12(%r12)
	.loc 1 497 0
	movl	16(%r13), %eax
	imull	%ebx, %eax
	movl	%eax, 16(%r12)
	.loc 1 498 0
	movl	$1, 8(%rsp)
	jmp	.L94
.L133:
	.loc 1 490 0
	movl	16(%r13), %eax
	imull	%ecx, %eax
	movl	%eax, 12(%r12)
	.loc 1 491 0
	movl	16(%r13), %eax
	imull	%ebx, %eax
	movl	%eax, 16(%r12)
	jmp	.L94
.L128:
	.loc 1 468 0
	movq	$0, (%r15)
	.loc 1 469 0
	movq	(%r13), %rdi
	leaq	16(%rsp), %rsi
	call	bdrv_get_geometry
	.loc 1 471 0
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.L129
	.loc 1 472 0
	decq	%rax
	movq	%rax, 16(%rsp)
	.loc 1 473 0
	shrq	$24, %rax
	movb	%al, (%r15)
	.loc 1 474 0
	movq	16(%rsp), %rax
	shrq	$16, %rax
	movb	%al, 1(%r15)
	.loc 1 475 0
	movq	16(%rsp), %rax
	shrq	$8, %rax
	movb	%al, 2(%r15)
	.loc 1 476 0
	movq	16(%rsp), %rax
	.loc 1 477 0
	movb	$0, 4(%r15)
	.loc 1 478 0
	movb	$0, 5(%r15)
	.loc 1 476 0
	movb	%al, 3(%r15)
	.loc 1 479 0
	movl	16(%r13), %eax
	.loc 1 480 0
	movb	$0, 7(%r15)
	.loc 1 479 0
	addl	%eax, %eax
	movb	%al, 6(%r15)
	jmp	.L174
.L126:
	.loc 1 463 0
	movq	(%r13), %rdi
	andl	$1, %esi
	call	bdrv_set_locked
	jmp	.L94
.L101:
	.loc 1 365 0
	cmpl	$35, %ebx
	.p2align 4,,2
	jbe	.L179
.L102:
	.loc 1 368 0
	cld
	xorl	%eax, %eax
	movl	$4, %ecx
	movq	%r15, %rdi
	rep
	stosq
	movl	$0, (%rdi)
	.loc 1 369 0
	movq	(%r13), %rdi
	call	bdrv_get_type_hint
	decl	%eax
	je	.L180
	.loc 1 375 0
	movabsq	$5927097888303564113, %rdi
	movabsq	$9042707146687556, %rsi
	.loc 1 374 0
	movb	$0, (%r15)
	.loc 1 375 0
	movq	%rdi, 16(%r15)
	movq	%rsi, 24(%r15)
.L105:
	.loc 1 377 0
	movabsq	$9042522496910673, %rcx
	.loc 1 378 0
	movl	$775499312, 32(%r15)
	.loc 1 381 0
	movb	$3, 2(%r15)
	.loc 1 377 0
	movq	%rcx, 8(%r15)
	.loc 1 382 0
	movb	$2, 3(%r15)
	.loc 1 383 0
	movb	$31, 4(%r15)
	.loc 1 385 0
	movl	24(%r13), %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-2, %eax
	addl	$18, %eax
	movb	%al, 7(%r15)
	.loc 1 386 0
	movl	$36, 20(%r12)
	jmp	.L94
.L98:
	.loc 1 355 0
	cmpl	$3, %ebx
	jbe	.L89
	.loc 1 357 0
	movl	$0, (%r15)
	.loc 1 358 0
	movb	$-16, (%r15)
	.loc 1 359 0
	movb	$0, 1(%r15)
	.loc 1 360 0
	movl	20(%r13), %eax
	movb	%al, 2(%r15)
	.loc 1 361 0
	movl	$4, 20(%r12)
	jmp	.L94
.L160:
	.loc 1 561 0
	cmpl	$15, %ebx
	jbe	.L89
	.loc 1 563 0
	movq	$0, (%r15)
	movq	$0, 8(%r15)
	.loc 1 564 0
	movb	$8, 3(%r15)
	.loc 1 565 0
	movl	$16, 20(%r12)
	jmp	.L94
.L115:
.LBB9:
	.loc 1 404 0
	movl	$63, %r14d
	.loc 1 407 0
	movl	$0, (%r15)
	.loc 1 408 0
	movb	$0, 1(%r15)
	.loc 1 404 0
	andl	%edi, %r14d
	.loc 1 409 0
	movb	$0, 3(%r15)
	.loc 1 410 0
	movq	(%r13), %rdi
	call	bdrv_get_type_hint
	decl	%eax
	je	.L181
.L117:
	.loc 1 414 0
	xorl	%edx, %edx
	cmpl	$8, %r14d
	.loc 1 413 0
	leaq	4(%r15), %rbp
	.loc 1 414 0
	sete	%dl
	xorl	%esi, %esi
	cmpl	$63, %r14d
	sete	%sil
	orl	%esi, %edx
	je	.L118
	.loc 1 416 0
	cld
	movq	%rbp, %rdi
	movl	$2, %ecx
	xorl	%eax, %eax
	rep
	stosq
	movl	$0, (%rdi)
	.loc 1 417 0
	movb	$8, 4(%r15)
	.loc 1 418 0
	movb	$18, 1(%rbp)
	.loc 1 419 0
	movb	$4, 2(%rbp)
	.loc 1 420 0
	leaq	24(%r15), %rbp
.L118:
	.loc 1 422 0
	xorl	%eax, %eax
	cmpl	$42, %r14d
	sete	%al
	orl	%eax, %esi
	jne	.L182
.L119:
	.loc 1 452 0
	movl	%ebp, %eax
	subl	%r15d, %eax
	movl	%eax, 20(%r12)
	.loc 1 453 0
	subl	$4, %eax
	movb	%al, (%r15)
	.loc 1 454 0
	cmpl	%ebx, 20(%r12)
	jbe	.L94
.LBE9:
.LBB10:
	.loc 1 534 0
	movl	%ebx, 20(%r12)
	jmp	.L94
	.p2align 4,,7
.L166:
.LBE10:
	.loc 1 580 0
	testl	%eax, %eax
	jne	.L168
	.loc 1 581 0
	movl	$-1, 16(%r12)
.L168:
	.loc 1 582 0
	movl	%ebx, %eax
	.p2align 4,,3
	jmp	.L74
.L177:
	.loc 1 574 0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	scsi_command_complete
	jmp	.L165
.L129:
	.loc 1 483 0
	movl	$2, %esi
	.p2align 4,,2
	jmp	.L176
.L182:
.LBB11:
	.loc 1 422 0
	movq	(%r13), %rdi
	.p2align 4,,7
	call	bdrv_get_type_hint
	decl	%eax
	.p2align 4,,3
	jne	.L119
	.loc 1 425 0
	movb	$42, (%rbp)
	.loc 1 426 0
	movb	$20, 1(%rbp)
	.loc 1 427 0
	movb	$3, 2(%rbp)
	.loc 1 428 0
	movb	$0, 3(%rbp)
	.loc 1 429 0
	movb	$127, 4(%rbp)
	.loc 1 431 0
	movb	$-1, 5(%rbp)
	.loc 1 434 0
	movq	(%r13), %rdi
	call	bdrv_is_locked
	cmpl	$1, %eax
	.loc 1 436 0
	movb	$0, 7(%rbp)
	.loc 1 438 0
	movb	$34, 8(%rbp)
	.loc 1 434 0
	sbbl	%eax, %eax
	.loc 1 439 0
	movb	$96, 9(%rbp)
	.loc 1 440 0
	movb	$0, 10(%rbp)
	.loc 1 434 0
	andl	$-2, %eax
	.loc 1 441 0
	movb	$0, 11(%rbp)
	.loc 1 442 0
	movb	$8, 12(%rbp)
	.loc 1 434 0
	addl	$47, %eax
	.loc 1 443 0
	movb	$0, 13(%rbp)
	.loc 1 444 0
	movb	$11, 14(%rbp)
	.loc 1 434 0
	movb	%al, 6(%rbp)
	.loc 1 445 0
	movb	$0, 15(%rbp)
	.loc 1 446 0
	movb	$11, 18(%rbp)
	.loc 1 447 0
	movb	$0, 19(%rbp)
	.loc 1 448 0
	movb	$11, 20(%rbp)
	.loc 1 449 0
	movb	$0, 21(%rbp)
	.loc 1 450 0
	addq	$22, %rbp
	jmp	.L119
.L179:
.LBE11:
	.loc 1 366 0
	movq	stderr(%rip), %rdi
	movl	%ebx, %edx
	movl	$.LC8, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L102
.L181:
.LBB12:
	.loc 1 411 0
	movb	$-128, 2(%r15)
	jmp	.L117
.L180:
.LBE12:
	.loc 1 372 0
	movabsq	$3261805836272223569, %r9
	movabsq	$9042521607720786, %r8
	.loc 1 370 0
	movb	$5, (%r15)
	.loc 1 371 0
	movb	$-128, 1(%r15)
	.loc 1 372 0
	movq	%r9, 16(%r15)
	movq	%r8, 24(%r15)
	jmp	.L105
.L143:
.LBB13:
	.loc 1 520 0
	cld
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	%r15, %rdi
	rep
	stosq
	.loc 1 519 0
	movl	$12, %edx
	.loc 1 533 0
	cmpl	%ebx, %edx
	cmovb	%edx, %ebx
	.loc 1 520 0
	movl	$0, (%rdi)
	.loc 1 521 0
	movb	$10, 1(%r15)
	.loc 1 522 0
	movb	$1, 2(%r15)
	.loc 1 523 0
	movb	$1, 3(%r15)
	jmp	.L175
.L178:
	.loc 1 513 0
	testl	%r14d, %r14d
	jne	.L89
	.loc 1 515 0
	movl	4(%rsp), %edx
	movl	16(%rsp), %edi
	movl	%ebp, %ecx
	movq	%r15, %rsi
	call	cdrom_read_toc
	jmp	.L172
.LBE13:
.LFE107:
	.size	scsi_send_command, .-scsi_send_command
	.p2align 4,,15
	.type	scsi_destroy, @function
scsi_destroy:
.LFB108:
	.loc 1 587 0
	pushq	%rbx
.LCFI23:
	.loc 1 587 0
	movq	%rdi, %rbx
	.loc 1 588 0
	movq	(%rdi), %rdi
	call	qemu_free
	.loc 1 589 0
	movq	%rbx, %rdi
	popq	%rbx
	jmp	qemu_free
.LFE108:
	.size	scsi_destroy, .-scsi_destroy
	.p2align 4,,15
.globl scsi_disk_init
	.type	scsi_disk_init, @function
scsi_disk_init:
.LFB109:
	.loc 1 594 0
	movq	%rbx, -40(%rsp)
.LCFI24:
	movq	%r12, -32(%rsp)
.LCFI25:
	movl	%esi, %r12d
	movq	%r13, -24(%rsp)
.LCFI26:
	movq	%r14, -16(%rsp)
.LCFI27:
	movq	%rdx, %r13
	movq	%rcx, %r14
	movq	%r15, -8(%rsp)
.LCFI28:
	subq	$40, %rsp
.LCFI29:
	.loc 1 594 0
	movq	%rdi, %r15
	.loc 1 598 0
	movl	$48, %edi
	call	qemu_mallocz
	.loc 1 603 0
	movq	%r15, %rdi
	.loc 1 599 0
	movq	%r15, (%rax)
	.loc 1 600 0
	movl	%r12d, 24(%rax)
	.loc 1 601 0
	movq	%r13, 32(%rax)
	.loc 1 602 0
	movq	%r14, 40(%rax)
	.loc 1 598 0
	movq	%rax, %rbx
	.loc 1 603 0
	call	bdrv_get_type_hint
	.loc 1 604 0
	decl	%eax
	.loc 1 609 0
	movl	$56, %edi
	.loc 1 604 0
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,2), %eax
	movl	%eax, 16(%rbx)
	.loc 1 609 0
	call	qemu_mallocz
	.loc 1 610 0
	movq	%rbx, (%rax)
	.loc 1 611 0
	movq	$scsi_destroy, 8(%rax)
	.loc 1 612 0
	movq	$scsi_send_command, 16(%rax)
	.loc 1 613 0
	movq	$scsi_read_data, 24(%rax)
	.loc 1 614 0
	movq	$scsi_write_data, 32(%rax)
	.loc 1 615 0
	movq	$scsi_cancel_io, 40(%rax)
	.loc 1 616 0
	movq	$scsi_get_buf, 48(%rax)
	.loc 1 619 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %r12
	movq	16(%rsp), %r13
	movq	24(%rsp), %r14
	movq	32(%rsp), %r15
	addq	$40, %rsp
	ret
.LFE109:
	.size	scsi_disk_init, .-scsi_disk_init
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI2-.LFB100
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI4-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI5-.LFB101
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
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI7-.LFB103
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI12-.LFB105
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI15-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI17-.LFB107
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI23-.LFB108
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI25-.LFB109
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI27-.LCFI25
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI29-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE22:
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
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI0-.LFB98
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI2-.LFB100
	.byte	0x83
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI4-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI5-.LFB101
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
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.byte	0x4
	.long	.LCFI7-.LFB103
	.byte	0x86
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI9-.LCFI7
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
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI10-.LFB104
	.byte	0xe
	.uleb128 0x10
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.byte	0x4
	.long	.LCFI12-.LFB105
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
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI15-.LFB106
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE17:
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI17-.LFB107
	.byte	0x86
	.uleb128 0x6
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI19-.LCFI17
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI19
	.byte	0xe
	.uleb128 0x50
	.byte	0x8f
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x3
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.byte	0x4
	.long	.LCFI23-.LFB108
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
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.byte	0x4
	.long	.LCFI25-.LFB109
	.byte	0x8c
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI27-.LCFI25
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI29-.LCFI27
	.byte	0xe
	.uleb128 0x30
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE23:
	.file 2 "/home/remco/Projects/Argos/src/hw/scsi-disk.h"
	.file 3 "./qemu-common.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "./block.h"
	.file 6 "/usr/include/sys/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/bits/types.h"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xaf1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.Ldebug_line0
	.quad	.Letext0
	.quad	.Ltext0
	.long	.LASF105
	.byte	0x1
	.long	.LASF106
	.long	.LASF107
	.uleb128 0x2
	.long	.LASF9
	.byte	0xa
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
	.byte	0x9
	.byte	0x8d
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x9
	.byte	0x8e
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xc5
	.long	0x3f
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.long	0x281
	.long	.LASF44
	.byte	0xd8
	.byte	0x7
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF14
	.byte	0x8
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x8
	.value	0x115
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x8
	.value	0x116
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x8
	.value	0x117
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x8
	.value	0x118
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x8
	.value	0x119
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x8
	.value	0x11a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x8
	.value	0x11b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x8
	.value	0x11c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x8
	.value	0x11e
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x8
	.value	0x11f
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x8
	.value	0x120
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.value	0x122
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x8
	.value	0x124
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x8
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x8
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x8
	.value	0x12c
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x8
	.value	0x130
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x8
	.value	0x131
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x8
	.value	0x132
	.long	0x2cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x8
	.value	0x136
	.long	0x2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x8
	.value	0x13f
	.long	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x8
	.value	0x148
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x8
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x8
	.value	0x14a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x8
	.value	0x14b
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x8
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x8
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x8
	.value	0x150
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0xb4
	.uleb128 0x7
	.long	0x2bf
	.long	.LASF45
	.byte	0x18
	.byte	0x8
	.byte	0xba
	.uleb128 0xa
	.long	.LASF46
	.byte	0x8
	.byte	0xbb
	.long	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x8
	.byte	0xbc
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.byte	0xc0
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x288
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x2db
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x281
	.uleb128 0xb
	.long	0x2f1
	.long	0x69
	.uleb128 0xc
	.long	0x5b
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.byte	0x31
	.long	0x70
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x38
	.long	0x38
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.byte	0x6e
	.long	0x31d
	.uleb128 0xd
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x50
	.long	0x32e
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x2
	.byte	0xa
	.long	0x33f
	.uleb128 0x7
	.long	0x3ae
	.long	.LASF54
	.byte	0x30
	.byte	0x2
	.byte	0xa
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.byte	0x38
	.long	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.byte	0x39
	.long	0x584
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF57
	.byte	0x1
	.byte	0x3c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0x3d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"tcq"
	.byte	0x1
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF59
	.byte	0x1
	.byte	0x41
	.long	0x428
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.byte	0x42
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x2
	.byte	0xb
	.long	0x3b9
	.uleb128 0x7
	.long	0x428
	.long	.LASF61
	.byte	0x38
	.byte	0x2
	.byte	0xb
	.uleb128 0xa
	.long	.LASF62
	.byte	0x2
	.byte	0x11
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF63
	.byte	0x2
	.byte	0x12
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0x2
	.byte	0x14
	.long	0x497
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0x2
	.byte	0x15
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF66
	.byte	0x2
	.byte	0x16
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF67
	.byte	0x2
	.byte	0x17
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF68
	.byte	0x2
	.byte	0x18
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x2
	.byte	0xd
	.long	0x433
	.uleb128 0x6
	.byte	0x8
	.long	0x439
	.uleb128 0xf
	.long	0x454
	.byte	0x1
	.uleb128 0x10
	.long	0x9b
	.uleb128 0x10
	.long	0x3f
	.uleb128 0x10
	.long	0x2fc
	.uleb128 0x10
	.long	0x2fc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x334
	.uleb128 0xf
	.long	0x466
	.byte	0x1
	.uleb128 0x10
	.long	0x466
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ae
	.uleb128 0x6
	.byte	0x8
	.long	0x45a
	.uleb128 0x11
	.long	0x491
	.byte	0x1
	.long	0xa3
	.uleb128 0x10
	.long	0x466
	.uleb128 0x10
	.long	0x2fc
	.uleb128 0x10
	.long	0x491
	.uleb128 0x10
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f1
	.uleb128 0x6
	.byte	0x8
	.long	0x472
	.uleb128 0xf
	.long	0x4ae
	.byte	0x1
	.uleb128 0x10
	.long	0x466
	.uleb128 0x10
	.long	0x2fc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x49d
	.uleb128 0x11
	.long	0x4c9
	.byte	0x1
	.long	0x3f
	.uleb128 0x10
	.long	0x466
	.uleb128 0x10
	.long	0x2fc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b4
	.uleb128 0x11
	.long	0x4e4
	.byte	0x1
	.long	0x491
	.uleb128 0x10
	.long	0x466
	.uleb128 0x10
	.long	0x2fc
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cf
	.uleb128 0x7
	.long	0x567
	.long	.LASF70
	.byte	0x30
	.byte	0x1
	.byte	0x27
	.uleb128 0xe
	.string	"dev"
	.byte	0x1
	.byte	0x28
	.long	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tag"
	.byte	0x1
	.byte	0x29
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x31
	.long	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x32
	.long	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x33
	.long	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x8
	.long	0x323
	.uleb128 0x6
	.byte	0x8
	.long	0x4ea
	.uleb128 0x2
	.long	.LASF70
	.byte	0x1
	.byte	0x34
	.long	0x4ea
	.uleb128 0x6
	.byte	0x8
	.long	0x312
	.uleb128 0x6
	.byte	0x8
	.long	0x573
	.uleb128 0x12
	.long	0x5cc
	.long	.LASF78
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x5e
	.long	0x584
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x60
	.long	0x584
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x61
	.long	0x454
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x16
	.long	0x612
	.long	.LASF79
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	0x584
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x73
	.long	0x454
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0x73
	.long	0x2fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x75
	.long	0x584
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x12
	.long	0x661
	.long	.LASF80
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x7f
	.long	0x584
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0x7f
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x81
	.long	0x454
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x82
	.long	0x2fc
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x12
	.long	0x6ae
	.long	.LASF81
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0x8b
	.long	0x466
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0x8b
	.long	0x2fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x8d
	.long	0x454
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x8e
	.long	0x584
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x12
	.long	0x6fb
	.long	.LASF82
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0x99
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x99
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x9b
	.long	0x584
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x9c
	.long	0x454
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x12
	.long	0x753
	.long	.LASF83
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xa9
	.long	0x466
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0xa9
	.long	0x2fc
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xab
	.long	0x454
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xac
	.long	0x584
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xad
	.long	0x2fc
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x12
	.long	0x7ad
	.long	.LASF84
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0xcf
	.long	0x9b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xd1
	.long	0x584
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xd2
	.long	0x454
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xd3
	.long	0x2fc
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x16
	.long	0x809
	.long	.LASF85
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x3f
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xea
	.long	0x466
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0xea
	.long	0x2fc
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xec
	.long	0x454
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xed
	.long	0x584
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xee
	.long	0x2fc
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x19
	.long	0x85f
	.long	.LASF86
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	0x491
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x10a
	.long	0x466
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x10a
	.long	0x2fc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x10c
	.long	0x454
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.value	0x10d
	.long	0x584
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.long	0x9e8
	.long	.LASF87
	.byte	0x1
	.value	0x11e
	.byte	0x1
	.long	0xa3
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x11c
	.long	0x466
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x11c
	.long	0x2fc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x11d
	.long	0x491
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"lun"
	.byte	0x1
	.value	0x11d
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x11f
	.long	0x454
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.value	0x120
	.long	0x307
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1b
	.string	"lba"
	.byte	0x1
	.value	0x121
	.long	0x2fc
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x122
	.long	0x2fc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x1
	.value	0x123
	.long	0x3f
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x1
	.value	0x124
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.value	0x125
	.long	0x2f1
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x1
	.value	0x126
	.long	0x491
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.value	0x127
	.long	0x584
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x1
	.value	0x239
	.quad	.L89
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.value	0x219
	.quad	.L146
	.uleb128 0x1f
	.long	0x984
	.long	0x9e8
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x20
	.long	0x9f9
	.uleb128 0x20
	.long	0xa02
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x22
	.long	0xa0d
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x9c7
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x1fa
	.long	0x3f
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x1fa
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.string	"msf"
	.byte	0x1
	.value	0x1fa
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF97
	.byte	0x1
	.value	0x1fa
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x191
	.long	0x491
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.value	0x192
	.long	0x3f
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	0xa17
	.long	.LASF99
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	0x584
	.byte	0x1
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x48
	.long	0x454
	.uleb128 0x25
	.string	"tag"
	.byte	0x1
	.byte	0x48
	.long	0x2fc
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x4a
	.long	0x584
	.byte	0x0
	.uleb128 0x26
	.long	0xa43
	.long	.LASF100
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.quad	.LFB108
	.quad	.LFE108
	.byte	0x1
	.byte	0x57
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x24a
	.long	0x466
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x27
	.long	0xab8
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.value	0x252
	.byte	0x1
	.long	0x466
	.quad	.LFB109
	.quad	.LFE109
	.byte	0x1
	.byte	0x57
	.uleb128 0x28
	.long	.LASF55
	.byte	0x1
	.value	0x250
	.long	0x57e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.string	"tcq"
	.byte	0x1
	.value	0x250
	.long	0x3f
	.byte	0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF59
	.byte	0x1
	.value	0x251
	.long	0x428
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF60
	.byte	0x1
	.value	0x251
	.long	0x9b
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x253
	.long	0x466
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x254
	.long	0x454
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x29
	.long	.LASF101
	.byte	0x7
	.byte	0x91
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF102
	.byte	0x7
	.byte	0x92
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF103
	.byte	0x7
	.byte	0x93
	.long	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF104
	.byte	0x1
	.byte	0x46
	.long	0x584
	.byte	0x9
	.byte	0x3
	.quad	free_requests
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x21
	.value	0x2
	.long	.Ldebug_info0
	.long	0xaf5
	.long	0xa43
	.string	"scsi_disk_init"
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF12:
	.string	"int32_t"
.LASF68:
	.string	"get_buf"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF62:
	.string	"state"
.LASF34:
	.string	"_lock"
.LASF58:
	.string	"sense"
.LASF23:
	.string	"_IO_save_base"
.LASF31:
	.string	"_cur_column"
.LASF99:
	.string	"scsi_new_request"
.LASF41:
	.string	"_mode"
.LASF67:
	.string	"cancel_io"
.LASF2:
	.string	"long int"
.LASF79:
	.string	"scsi_find_request"
.LASF45:
	.string	"_IO_marker"
.LASF60:
	.string	"opaque"
.LASF7:
	.string	"signed char"
.LASF44:
	.string	"_IO_FILE"
.LASF6:
	.string	"unsigned char"
.LASF52:
	.string	"BlockDriverState"
.LASF75:
	.string	"aiocb"
.LASF5:
	.string	"char"
.LASF94:
	.string	"error_cmd"
.LASF84:
	.string	"scsi_write_complete"
.LASF43:
	.string	"_IO_lock_t"
.LASF97:
	.string	"toclen"
.LASF59:
	.string	"completion"
.LASF83:
	.string	"scsi_read_data"
.LASF15:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"start_track"
.LASF48:
	.string	"_pos"
.LASF101:
	.string	"stdin"
.LASF102:
	.string	"stdout"
.LASF69:
	.string	"scsi_completionfn"
.LASF26:
	.string	"_markers"
.LASF86:
	.string	"scsi_get_buf"
.LASF104:
	.string	"free_requests"
.LASF35:
	.string	"_offset"
.LASF106:
	.string	"/home/remco/Projects/Argos/src/hw/scsi-disk.c"
.LASF82:
	.string	"scsi_read_complete"
.LASF89:
	.string	"cmdlen"
.LASF0:
	.string	"long unsigned int"
.LASF96:
	.string	"format"
.LASF29:
	.string	"_flags2"
.LASF17:
	.string	"_IO_read_base"
.LASF70:
	.string	"SCSIRequest"
.LASF42:
	.string	"_unused2"
.LASF92:
	.string	"outbuf"
.LASF30:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF64:
	.string	"send_command"
.LASF20:
	.string	"_IO_write_end"
.LASF56:
	.string	"requests"
.LASF85:
	.string	"scsi_write_data"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF71:
	.string	"sector"
.LASF105:
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
.LASF14:
	.string	"_flags"
.LASF108:
	.string	"scsi_disk_init"
.LASF65:
	.string	"read_data"
.LASF98:
	.string	"page"
.LASF80:
	.string	"scsi_command_complete"
.LASF76:
	.string	"next"
.LASF13:
	.string	"long long unsigned int"
.LASF63:
	.string	"destroy"
.LASF91:
	.string	"command"
.LASF49:
	.string	"uint8_t"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF90:
	.string	"is_write"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF11:
	.string	"__off64_t"
.LASF107:
	.string	"/home/remco/Projects/Argos/src"
.LASF93:
	.string	"fail"
.LASF22:
	.string	"_IO_buf_end"
.LASF103:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF51:
	.string	"uint64_t"
.LASF32:
	.string	"_vtable_offset"
.LASF74:
	.string	"dma_buf"
.LASF87:
	.string	"scsi_send_command"
.LASF16:
	.string	"_IO_read_end"
.LASF78:
	.string	"scsi_remove_request"
.LASF50:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF73:
	.string	"buf_len"
.LASF61:
	.string	"SCSIDevice"
.LASF4:
	.string	"short unsigned int"
.LASF57:
	.string	"cluster_size"
.LASF53:
	.string	"BlockDriverAIOCB"
.LASF54:
	.string	"SCSIDeviceState"
.LASF19:
	.string	"_IO_write_ptr"
.LASF88:
	.string	"nb_sectors"
.LASF72:
	.string	"sector_count"
.LASF66:
	.string	"write_data"
.LASF55:
	.string	"bdrv"
.LASF100:
	.string	"scsi_destroy"
.LASF77:
	.string	"last"
.LASF81:
	.string	"scsi_cancel_io"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
