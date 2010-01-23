	.file	"scsi-generic.c"
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"scsi-generic: Orphaned request\n"
	.text
	.p2align 4,,15
	.type	scsi_remove_request, @function
scsi_remove_request:
.LFB98:
	.file 1 "/home/remco/Projects/Argos/src/hw/scsi-generic.c"
	.loc 1 117 0
	pushq	%rbx
.LCFI0:
	.loc 1 119 0
	movq	16(%rdi), %rdx
	.loc 1 117 0
	movq	%rdi, %rbx
	.loc 1 121 0
	movq	(%rdx), %rax
	cmpq	%rdi, %rax
	jne	.L2
	jmp	.L13
	.p2align 4,,7
.L15:
	.loc 1 126 0
	movq	8(%rax), %rax
	cmpq	%rbx, %rax
	je	.L14
.L2:
	testq	%rax, %rax
	.loc 1 124 0
	movq	%rax, %rdx
	.loc 1 126 0
	.p2align 4,,3
	jne	.L15
.L7:
	.loc 1 130 0
	movq	stderr(%rip), %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	.loc 1 133 0
	movq	free_requests(%rip), %rax
	movq	%rax, 8(%rbx)
	.loc 1 134 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
	.p2align 4,,7
.L14:
	.loc 1 127 0
	testq	%rdx, %rdx
	je	.L7
	.loc 1 128 0
	movq	8(%rbx), %rax
	movq	%rax, 8(%rdx)
	.loc 1 133 0
	movq	free_requests(%rip), %rax
	movq	%rax, 8(%rbx)
	.loc 1 134 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
.L13:
	.loc 1 122 0
	movq	8(%rdi), %rax
	movq	%rax, (%rdx)
	.loc 1 133 0
	movq	free_requests(%rip), %rax
	movq	%rax, 8(%rbx)
	.loc 1 134 0
	movq	%rbx, free_requests(%rip)
	popq	%rbx
	ret
.LFE98:
	.size	scsi_remove_request, .-scsi_remove_request
	.p2align 4,,15
	.type	scsi_find_request, @function
scsi_find_request:
.LFB99:
	.loc 1 138 0
	.loc 1 141 0
	movq	(%rdi), %rax
	jmp	.L22
	.p2align 4,,7
.L23:
	.loc 1 143 0
	movq	8(%rax), %rax
.L22:
	testq	%rax, %rax
	je	.L18
	cmpl	%esi, 24(%rax)
	jne	.L23
.L18:
	.loc 1 146 0
	rep ; ret
.LFE99:
	.size	scsi_find_request, .-scsi_find_request
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"scsi-generic: Driver Timeout\n"
	.text
	.p2align 4,,15
	.type	scsi_command_complete, @function
scsi_command_complete:
.LFB100:
	.loc 1 150 0
	movq	%rbp, -24(%rsp)
.LCFI1:
	movq	%r13, -8(%rsp)
.LCFI2:
	movq	%rdi, %rbp
	movq	%rbx, -32(%rsp)
.LCFI3:
	movq	%r12, -16(%rsp)
.LCFI4:
	subq	$40, %rsp
.LCFI5:
	.loc 1 156 0
	movzwl	134(%rdi), %eax
	.loc 1 152 0
	movq	16(%rdi), %r12
	.loc 1 157 0
	testl	%esi, %esi
	.loc 1 158 0
	movl	$4, %r13d
	.loc 1 156 0
	movl	%eax, 40(%r12)
	.loc 1 157 0
	jne	.L32
	.loc 1 160 0
	testb	$6, %al
	jne	.L33
	.loc 1 164 0
	xorl	%r13d, %r13d
	.loc 1 163 0
	testb	$8, %al
	je	.L32
	.loc 1 166 0
	movzbl	46(%r12), %r13d
	andl	$15, %r13d
	.p2align 4,,7
.L32:
	.loc 1 170 0
	movl	24(%rbp), %ebx
	.loc 1 171 0
	movq	%rbp, %rdi
	call	scsi_remove_request
	.loc 1 172 0
	movq	32(%r12), %rdi
	movq	24(%r12), %r11
	movl	%r13d, %ecx
	movl	%ebx, %edx
	movq	16(%rsp), %rbp
	movq	8(%rsp), %rbx
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	xorl	%esi, %esi
	addq	$40, %rsp
	jmp	*%r11
	.p2align 4,,7
.L33:
	.loc 1 162 0
	movq	stderr(%rip), %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	jmp	.L32
.LFE100:
	.size	scsi_command_complete, .-scsi_command_complete
	.p2align 4,,15
	.type	scsi_cancel_io, @function
scsi_cancel_io:
.LFB101:
	.loc 1 177 0
	pushq	%rbx
.LCFI6:
	.loc 1 179 0
	movq	(%rdi), %rdi
	.loc 1 182 0
	call	scsi_find_request
	.loc 1 183 0
	testq	%rax, %rax
	.loc 1 182 0
	movq	%rax, %rbx
	.loc 1 183 0
	je	.L34
	.loc 1 184 0
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L39
	.loc 1 186 0
	movq	$0, (%rbx)
	.loc 1 187 0
	movq	%rbx, %rdi
	.loc 1 189 0
	popq	%rbx
	.loc 1 187 0
	jmp	scsi_remove_request
	.p2align 4,,7
.L34:
	.loc 1 189 0
	popq	%rbx
	ret
	.p2align 4,,7
.L39:
	.loc 1 185 0
	call	bdrv_aio_cancel
	.loc 1 186 0
	movq	$0, (%rbx)
	.loc 1 187 0
	movq	%rbx, %rdi
	.loc 1 189 0
	popq	%rbx
	.loc 1 187 0
	jmp	scsi_remove_request
.LFE101:
	.size	scsi_cancel_io, .-scsi_cancel_io
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"scsi-generic: execute_command: read failed !\n"
	.align 8
.LC2:
	.string	"scsi-generic: execute_command: write failed ! (%d)\n"
	.text
	.p2align 4,,15
	.type	execute_command, @function
execute_command:
.LFB102:
	.loc 1 194 0
	movq	%rbx, -40(%rsp)
.LCFI7:
	movq	%rbp, -32(%rsp)
.LCFI8:
	.loc 1 208 0
	leaq	64(%rsi), %rbp
	.loc 1 194 0
	movq	%r12, -24(%rsp)
.LCFI9:
	movq	%r13, -16(%rsp)
.LCFI10:
	movq	%rsi, %rbx
	movq	%r14, -8(%rsp)
.LCFI11:
	subq	$40, %rsp
.LCFI12:
	.loc 1 198 0
	movq	48(%rsi), %rax
	.loc 1 206 0
	orl	$1, 108(%rsi)
	.loc 1 197 0
	movl	%edx, 68(%rsi)
	.loc 1 194 0
	movq	%rcx, %r14
	.loc 1 196 0
	movl	$83, 64(%rsi)
	.loc 1 202 0
	movb	$32, 73(%rsi)
	.loc 1 208 0
	movl	$88, %ecx
	.loc 1 198 0
	movq	%rax, 80(%rsi)
	.loc 1 199 0
	movl	56(%rsi), %eax
	.loc 1 208 0
	movq	%rbp, %rdx
	.loc 1 204 0
	movl	$-1, 104(%rsi)
	.loc 1 194 0
	movq	%rdi, %r12
	.loc 1 205 0
	movq	%rsi, 120(%rbx)
	.loc 1 199 0
	movl	%eax, 76(%rsi)
	.loc 1 200 0
	leaq	28(%rsi), %rax
	movq	%rax, 88(%rsi)
	.loc 1 201 0
	movl	44(%rsi), %eax
	movb	%al, 72(%rsi)
	.loc 1 203 0
	movq	16(%rsi), %rax
	addq	$44, %rax
	movq	%rax, 96(%rsi)
	.loc 1 208 0
	movq	$-1, %rsi
	call	bdrv_pwrite
	cmpl	$-1, %eax
	movl	%eax, %r13d
	je	.L51
	.loc 1 212 0
	testq	%r14, %r14
	je	.L52
	.loc 1 225 0
	movq	%rbp, %rdx
	xorl	%esi, %esi
	movq	%rbx, %r9
	movq	%r14, %r8
	movl	$-88, %ecx
	movq	%r12, %rdi
	call	bdrv_aio_read
	.loc 1 232 0
	xorl	%edx, %edx
	.loc 1 227 0
	testq	%rax, %rax
	.loc 1 225 0
	movq	%rax, (%rbx)
	.loc 1 227 0
	je	.L53
.L40:
	.loc 1 233 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	movq	24(%rsp), %r13
	movq	32(%rsp), %r14
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L52:
.LBB2:
	.loc 1 214 0
	movq	$0, (%rbx)
	.p2align 4,,7
.L44:
	.loc 1 215 0
	movl	$88, %ecx
	movq	%rbp, %rdx
	movq	$-1, %rsi
	movq	%r12, %rdi
	call	bdrv_pread
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L46
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L44
	.loc 1 219 0
	movq	stderr(%rip), %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	.loc 1 220 0
	movl	%ebx, %edx
	jmp	.L40
.L46:
	.loc 1 222 0
	xorl	%edx, %edx
	jmp	.L40
.L53:
.LBE2:
	.loc 1 228 0
	movq	stderr(%rip), %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC3, %edi
	call	fwrite
	.loc 1 229 0
	movl	$-1, %edx
	jmp	.L40
.L51:
	.loc 1 209 0
	call	__errno_location
	movq	stderr(%rip), %rdi
	movl	(%rax), %edx
	movl	$.LC2, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 210 0
	movl	%r13d, %edx
	jmp	.L40
.LFE102:
	.size	execute_command, .-execute_command
	.p2align 4,,15
	.type	scsi_read_complete, @function
scsi_read_complete:
.LFB103:
	.loc 1 236 0
	.loc 1 241 0
	testl	%esi, %esi
	.loc 1 238 0
	movq	16(%rdi), %rax
	.loc 1 241 0
	je	.L55
	.loc 1 243 0
	jmp	scsi_command_complete
	.p2align 4,,7
.L55:
	.loc 1 246 0
	movl	76(%rdi), %ecx
	subl	136(%rdi), %ecx
	.loc 1 250 0
	movl	$1, %esi
	.loc 1 249 0
	movl	$-1, 60(%rdi)
	.loc 1 250 0
	movl	24(%rdi), %edx
	movq	24(%rax), %r11
	movq	32(%rax), %rdi
	jmp	*%r11
.LFE103:
	.size	scsi_read_complete, .-scsi_read_complete
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"scsi-generic: Bad read tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_read_data, @function
scsi_read_data:
.LFB104:
	.loc 1 255 0
	movq	%rbx, -24(%rsp)
.LCFI13:
	movq	%r12, -8(%rsp)
.LCFI14:
	movl	%esi, %r12d
	movq	%rbp, -16(%rsp)
.LCFI15:
	subq	$24, %rsp
.LCFI16:
	.loc 1 256 0
	movq	(%rdi), %rbp
	.loc 1 261 0
	movq	%rbp, %rdi
	call	scsi_find_request
	.loc 1 262 0
	testq	%rax, %rax
	.loc 1 261 0
	movq	%rax, %rbx
	.loc 1 262 0
	je	.L67
	.loc 1 269 0
	cmpl	$-1, 60(%rax)
	je	.L68
	.loc 1 274 0
	cmpb	$3, 28(%rax)
	.p2align 4,,3
	je	.L69
.L63:
	.loc 1 283 0
	movq	8(%rbp), %rdi
	movl	$scsi_read_complete, %ecx
	movl	$-3, %edx
	movq	%rbx, %rsi
	call	execute_command
	.loc 1 284 0
	incl	%eax
	je	.L70
	.loc 1 288 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L69:
	.loc 1 274 0
	testb	$8, 40(%rbp)
	je	.L63
	.loc 1 276 0
	movq	48(%rax), %rdx
	movq	44(%rbp), %rax
	.loc 1 279 0
	movl	$16, %ecx
	movl	$1, %esi
	.loc 1 276 0
	movq	%rax, (%rdx)
	movq	52(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 1 277 0
	movw	$0, 134(%rbx)
	.loc 1 278 0
	movl	$-1, 60(%rbx)
	.loc 1 279 0
	movl	24(%rbx), %edx
	movq	32(%rbp), %rdi
	movq	24(%rbp), %r11
	.loc 1 288 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 279 0
	jmp	*%r11
	.p2align 4,,7
.L68:
	.loc 1 270 0
	xorl	%esi, %esi
.L65:
	.loc 1 285 0
	movq	%rbx, %rdi
	.loc 1 288 0
	movq	8(%rsp), %rbp
	movq	(%rsp), %rbx
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.loc 1 285 0
	jmp	scsi_command_complete
	.p2align 4,,7
.L67:
	.loc 1 263 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %edx
	movl	$.LC4, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 288 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	.loc 1 265 0
	movl	$-22, %esi
	.loc 1 288 0
	movq	16(%rsp), %r12
	.loc 1 265 0
	xorl	%edi, %edi
	.loc 1 288 0
	addq	$24, %rsp
	.loc 1 285 0
	jmp	scsi_command_complete
	.p2align 4,,7
.L70:
	movl	$-22, %esi
	jmp	.L65
.LFE104:
	.size	scsi_read_data, .-scsi_read_data
	.p2align 4,,15
	.type	scsi_write_complete, @function
scsi_write_complete:
.LFB105:
	.loc 1 291 0
	.loc 1 295 0
	testl	%esi, %esi
	je	.L76
	.loc 1 301 0
	jmp	scsi_command_complete
	.p2align 4,,7
.L76:
	xorl	%esi, %esi
	jmp	scsi_command_complete
.LFE105:
	.size	scsi_write_complete, .-scsi_write_complete
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"scsi-generic: Bad write tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_write_data, @function
scsi_write_data:
.LFB106:
	.loc 1 307 0
	movq	%rbx, -24(%rsp)
.LCFI17:
	movq	%r12, -8(%rsp)
.LCFI18:
	movl	%esi, %r12d
	movq	%rbp, -16(%rsp)
.LCFI19:
	subq	$24, %rsp
.LCFI20:
	.loc 1 308 0
	movq	(%rdi), %rbp
	.loc 1 313 0
	movq	%rbp, %rdi
	call	scsi_find_request
	.loc 1 314 0
	testq	%rax, %rax
	.loc 1 313 0
	movq	%rax, %rbx
	.loc 1 314 0
	je	.L84
	.loc 1 321 0
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 327 0
	movq	8(%rbp), %rdi
	movl	$-2, %edx
	movl	$scsi_write_complete, %ecx
	movq	%rbx, %rsi
	call	execute_command
	.loc 1 333 0
	xorl	%edx, %edx
	.loc 1 328 0
	incl	%eax
	je	.L86
.L77:
	.loc 1 334 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L85:
	.loc 1 322 0
	movl	56(%rbx), %ecx
	.loc 1 323 0
	movl	24(%rbx), %edx
	movl	$1, %esi
	.loc 1 322 0
	movl	%ecx, 60(%rbx)
	.loc 1 323 0
	movq	32(%rbp), %rdi
	call	*24(%rbp)
	.loc 1 324 0
	xorl	%edx, %edx
.L87:
	.loc 1 334 0
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movl	%edx, %eax
	movq	16(%rsp), %r12
	addq	$24, %rsp
	ret
.L84:
	.loc 1 315 0
	movq	stderr(%rip), %rdi
	movl	%r12d, %edx
	movl	$.LC5, %esi
	xorl	%eax, %eax
	call	fprintf
	.loc 1 317 0
	movl	$-22, %esi
	xorl	%edi, %edi
	call	scsi_command_complete
	.loc 1 324 0
	xorl	%edx, %edx
	jmp	.L87
.L86:
	.loc 1 329 0
	movl	$-22, %esi
	movq	%rbx, %rdi
	call	scsi_command_complete
	.loc 1 330 0
	movl	$1, %edx
	jmp	.L77
.LFE106:
	.size	scsi_write_data, .-scsi_write_data
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"scsi-generic: Bad buffer tag 0x%x\n"
	.text
	.p2align 4,,15
	.type	scsi_get_buf, @function
scsi_get_buf:
.LFB107:
	.loc 1 338 0
	pushq	%rbx
.LCFI21:
	.loc 1 339 0
	movq	(%rdi), %rdi
	.loc 1 338 0
	movl	%esi, %ebx
	.loc 1 341 0
	call	scsi_find_request
	.loc 1 342 0
	testq	%rax, %rax
	je	.L91
	.loc 1 347 0
	popq	%rbx
	.loc 1 346 0
	movq	48(%rax), %rax
	.loc 1 347 0
	ret
.L91:
	.loc 1 343 0
	movq	stderr(%rip), %rdi
	movl	%ebx, %edx
	movl	$.LC6, %esi
	call	fprintf
	.loc 1 347 0
	popq	%rbx
	.loc 1 344 0
	xorl	%eax, %eax
	.loc 1 347 0
	ret
.LFE107:
	.size	scsi_get_buf, .-scsi_get_buf
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"scsi-generic: Unsupported command length, command %x\n"
	.align 8
.LC8:
	.string	"scsi-generic: Tag 0x%x already in use %p\n"
	.text
	.p2align 4,,15
	.type	scsi_send_command, @function
scsi_send_command:
.LFB110:
	.loc 1 479 0
	movq	%rbp, -24(%rsp)
.LCFI22:
	movq	%r12, -16(%rsp)
.LCFI23:
	movq	%rdx, %r12
	movq	%r13, -8(%rsp)
.LCFI24:
	movq	%rbx, -32(%rsp)
.LCFI25:
	subq	$40, %rsp
.LCFI26:
	.loc 1 480 0
	movq	(%rdi), %rbx
	.loc 1 479 0
	movq	%rdi, %rbp
	movl	%esi, %r13d
	.loc 1 489 0
	movl	20(%rbx), %edx
	cmpl	%ecx, %edx
	je	.L197
.L95:
	.loc 1 491 0
	movq	32(%rbx), %rdi
	movl	$5, %ecx
	movl	%r13d, %edx
	xorl	%esi, %esi
	call	*24(%rbx)
.L196:
	.loc 1 521 0
	xorl	%edx, %edx
.L92:
	.loc 1 541 0
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movl	%edx, %eax
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L197:
	.loc 1 489 0
	movzbl	1(%r12), %ecx
	movl	%ecx, %eax
	shrb	$5, %al
	movzbl	%al, %eax
	cmpl	%edx, %eax
	jne	.L95
.LBB3:
.LBB4:
	.loc 1 351 0
	movzbl	(%r12), %edx
.LBE4:
	.loc 1 350 0
	movl	16(%rbx), %r9d
	leaq	4(%rsp), %r8
	movq	%rsp, %rdi
.LBB5:
	.loc 1 351 0
	movl	%edx, %eax
	shrb	$5, %al
	movzbl	%al, %eax
	cmpl	$5, %eax
	ja	.L103
	mov	%eax, %eax
	jmp	*.L105(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L105:
	.quad	.L98
	.quad	.L100
	.quad	.L100
	.quad	.L103
	.quad	.L101
	.quad	.L102
	.text
.L103:
.LBE5:
.LBE3:
	.loc 1 496 0
	movq	stderr(%rip), %rdi
	movzbl	%dl, %edx
	movl	$.LC7, %esi
	xorl	%eax, %eax
	call	fprintf
	jmp	.L196
.L102:
.LBB6:
.LBB7:
	.loc 1 366 0
	movzbl	8(%r12), %eax
	movzbl	9(%r12), %esi
	sall	$8, %eax
	orl	%eax, %esi
	movzbl	7(%r12), %eax
	sall	$16, %eax
	orl	%eax, %esi
	movzbl	6(%r12), %eax
	.loc 1 367 0
	movl	$12, (%r8)
	.loc 1 366 0
	sall	$24, %eax
	orl	%eax, %esi
.L97:
	.loc 1 373 0
	movzbl	%dl, %eax
	cmpl	$187, %eax
	ja	.L192
	mov	%eax, %eax
	jmp	*.L142(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L142:
	.quad	.L124
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L128
	.quad	.L192
	.quad	.L192
	.quad	.L190
	.quad	.L192
	.quad	.L190
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L190
	.quad	.L124
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L190
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.quad	.L192
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L127
	.quad	.L192
	.quad	.L192
	.quad	.L137
	.quad	.L192
	.quad	.L137
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L190
	.quad	.L124
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.quad	.L129
	.quad	.L124
	.quad	.L124
	.quad	.L192
	.quad	.L131
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.quad	.L192
	.quad	.L124
	.quad	.L192
	.quad	.L126
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.quad	.L124
	.quad	.L192
	.quad	.L190
	.quad	.L192
	.quad	.L190
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L190
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L130
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L192
	.quad	.L124
	.text
.L101:
	.loc 1 362 0
	movzbl	12(%r12), %eax
	movzbl	13(%r12), %esi
	sall	$8, %eax
	orl	%eax, %esi
	movzbl	11(%r12), %eax
	sall	$16, %eax
	orl	%eax, %esi
	movzbl	10(%r12), %eax
	.loc 1 363 0
	movl	$16, (%r8)
	.loc 1 362 0
	sall	$24, %eax
	orl	%eax, %esi
	jmp	.L97
.L100:
	.loc 1 358 0
	movzbl	7(%r12), %eax
	movzbl	8(%r12), %esi
	.loc 1 359 0
	movl	$10, (%r8)
	.loc 1 358 0
	sall	$8, %eax
	orl	%eax, %esi
	jmp	.L97
.L98:
	.loc 1 353 0
	movzbl	4(%r12), %esi
	.loc 1 354 0
	movl	$6, (%r8)
	jmp	.L97
.L190:
	movl	%esi, (%rdi)
.L141:
	.loc 1 428 0
	movl	(%rdi), %eax
	imull	%r9d, %eax
.L195:
	movl	%eax, (%rdi)
.L106:
.LBE7:
.LBE6:
	.loc 1 503 0
	movl	%r13d, %esi
	movq	%rbx, %rdi
	call	scsi_find_request
	.loc 1 504 0
	testq	%rax, %rax
	je	.L145
	.loc 1 505 0
	movq	stderr(%rip), %rdi
	movq	%rax, %rcx
	movl	$.LC8, %esi
	movl	%r13d, %edx
	xorl	%eax, %eax
	call	fprintf
	.loc 1 506 0
	movl	%r13d, %esi
	movq	%rbp, %rdi
	call	scsi_cancel_io
.L145:
.LBB8:
.LBB9:
	.loc 1 93 0
	movq	free_requests(%rip), %rax
	testq	%rax, %rax
	je	.L147
	.loc 1 94 0
	movq	%rax, %rbp
	.loc 1 95 0
	movq	8(%rax), %rax
	movq	%rax, free_requests(%rip)
.L148:
	.loc 1 104 0
	leaq	64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	.loc 1 101 0
	movq	%rbx, 16(%rbp)
	.loc 1 102 0
	movl	%r13d, 24(%rbp)
	.loc 1 103 0
	movq	$0, 28(%rbp)
	movq	$0, 36(%rbp)
	.loc 1 104 0
	call	memset
	.loc 1 105 0
	movl	$0, 44(%rbp)
	.loc 1 106 0
	movl	$0, 60(%rbp)
.LBE9:
.LBE8:
	.loc 1 510 0
	leaq	28(%rbp), %rdi
.LBB10:
.LBB11:
	.loc 1 107 0
	movq	$0, (%rbp)
	.loc 1 111 0
	movq	(%rbx), %rax
.LBE11:
.LBE10:
	.loc 1 510 0
	movq	%r12, %rsi
.LBB12:
.LBB13:
	.loc 1 111 0
	movq	%rax, 8(%rbp)
	.loc 1 112 0
	movq	%rbp, (%rbx)
.LBE13:
.LBE12:
	.loc 1 510 0
	movslq	4(%rsp),%rdx
	call	memcpy
	.loc 1 511 0
	movl	4(%rsp), %eax
	movl	%eax, 44(%rbp)
	.loc 1 513 0
	movl	(%rsp), %edx
	testl	%edx, %edx
	jne	.L150
	.loc 1 514 0
	movq	48(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L198
.L151:
	.loc 1 516 0
	movl	$0, 56(%rbp)
	.loc 1 517 0
	movq	$0, 48(%rbp)
	.loc 1 518 0
	movl	$-1, %edx
	movq	8(%rbx), %rdi
	movl	$scsi_command_complete, %ecx
	movq	%rbp, %rsi
	call	execute_command
	.loc 1 523 0
	xorl	%edx, %edx
	.loc 1 519 0
	incl	%eax
	jne	.L92
	.loc 1 520 0
	movl	$-22, %esi
	movq	%rbp, %rdi
	call	scsi_command_complete
	jmp	.L196
.L137:
.LBB14:
.LBB15:
	.loc 1 423 0
	andl	$-9, %ecx
	movl	%esi, (%rdi)
	movb	%cl, 1(%r12)
	jmp	.L141
.L192:
	movl	%esi, (%rdi)
	.p2align 4,,3
	jmp	.L106
.L131:
	.loc 1 412 0
	leal	0(,%rsi,8), %eax
	jmp	.L195
.L129:
	.loc 1 406 0
	movl	$20, (%rdi)
	.p2align 4,,5
	jmp	.L106
.L126:
	.loc 1 397 0
	movl	$1, (%rdi)
	.p2align 4,,5
	jmp	.L106
.L128:
	.loc 1 403 0
	movl	$6, (%rdi)
	.p2align 4,,5
	jmp	.L106
.L124:
	.loc 1 392 0
	movl	$0, (%rdi)
	.p2align 4,,5
	jmp	.L106
.L130:
	.loc 1 409 0
	movl	%esi, %eax
	movl	$40, %edx
	imull	%edx, %eax
	jmp	.L195
.L127:
	.loc 1 400 0
	movl	$8, (%rdi)
	jmp	.L106
	.p2align 4,,7
.L150:
.LBE15:
.LBE14:
	.loc 1 526 0
	movl	56(%rbp), %eax
	cmpl	%edx, %eax
	je	.L153
	.loc 1 527 0
	movq	48(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L199
.L154:
	.loc 1 529 0
	mov	%edx, %edi
	call	qemu_malloc
	movq	%rax, 48(%rbp)
	.loc 1 530 0
	movl	(%rsp), %eax
	movl	%eax, 56(%rbp)
.L153:
	.loc 1 533 0
	movq	48(%rbp), %rdi
	xorl	%esi, %esi
	movslq	%eax,%rdx
	call	memset
	.loc 1 534 0
	movl	(%rsp), %eax
	movl	%eax, 60(%rbp)
.LBB16:
	.loc 1 435 0
	movzbl	(%r12), %eax
.LBB17:
	.loc 1 436 0
	subl	$4, %eax
	cmpl	$230, %eax
	ja	.L156
	mov	%eax, %eax
	jmp	*.L188(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L188:
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L186
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L186
	.quad	.L186
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L186
	.quad	.L186
	.quad	.L186
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L186
	.quad	.L186
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L186
	.quad	.L186
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L156
	.quad	.L186
	.text
.L156:
.LBE17:
.LBE16:
	.loc 1 540 0
	movl	(%rsp), %edx
	jmp	.L92
.L186:
	.loc 1 536 0
	movl	$0, 60(%rbp)
	.loc 1 537 0
	movl	(%rsp), %edx
	negl	%edx
	jmp	.L92
.L147:
.LBB18:
.LBB19:
	.loc 1 97 0
	movl	$152, %edi
	call	qemu_malloc
	movq	%rax, %rbp
	.loc 1 98 0
	movq	$0, 48(%rax)
	.loc 1 99 0
	movl	$0, 56(%rax)
	jmp	.L148
.L198:
.LBE19:
.LBE18:
	.loc 1 515 0
	call	free
	.p2align 4,,2
	jmp	.L151
.L199:
	.loc 1 528 0
	.p2align 4,,8
	call	free
	movl	(%rsp), %edx
	.p2align 4,,6
	jmp	.L154
.LFE110:
	.size	scsi_send_command, .-scsi_send_command
	.p2align 4,,15
	.type	scsi_destroy, @function
scsi_destroy:
.LFB112:
	.loc 1 580 0
	pushq	%rbp
.LCFI27:
	movq	%rdi, %rbp
	pushq	%rbx
.LCFI28:
	subq	$8, %rsp
.LCFI29:
	.loc 1 583 0
	movq	(%rdi), %rax
	movq	(%rax), %rdi
	jmp	.L211
	.p2align 4,,7
.L213:
	.loc 1 585 0
	movq	8(%rdi), %rbx
	.loc 1 586 0
	call	qemu_free
	.loc 1 587 0
	movq	%rbx, %rdi
.L211:
	testq	%rdi, %rdi
	jne	.L213
	.loc 1 590 0
	movq	free_requests(%rip), %rdi
	jmp	.L212
	.p2align 4,,7
.L214:
	.loc 1 592 0
	movq	8(%rdi), %rbx
	.loc 1 593 0
	call	qemu_free
	.loc 1 594 0
	movq	%rbx, %rdi
.L212:
	testq	%rdi, %rdi
	jne	.L214
	.loc 1 597 0
	movq	(%rbp), %rdi
	call	qemu_free
	.loc 1 598 0
	addq	$8, %rsp
	movq	%rbp, %rdi
	popq	%rbx
	popq	%rbp
	jmp	qemu_free
.LFE112:
	.size	scsi_destroy, .-scsi_destroy
	.p2align 4,,15
.globl scsi_generic_init
	.type	scsi_generic_init, @function
scsi_generic_init:
.LFB113:
	.loc 1 603 0
	movq	%rbx, -40(%rsp)
.LCFI30:
	movq	%rbp, -32(%rsp)
.LCFI31:
	movq	%rdx, %rbx
	movq	%r13, -16(%rsp)
.LCFI32:
	movq	%r12, -24(%rsp)
.LCFI33:
	movq	%rdi, %rbp
	movq	%r14, -8(%rsp)
.LCFI34:
	subq	$216, %rsp
.LCFI35:
	.loc 1 603 0
	movq	%rcx, %r13
	.loc 1 611 0
	call	bdrv_is_sg
	.loc 1 612 0
	xorl	%edx, %edx
	.loc 1 611 0
	testl	%eax, %eax
	je	.L215
	.loc 1 616 0
	leaq	28(%rsp), %rdx
	movl	$8834, %esi
	movq	%rbp, %rdi
	call	bdrv_ioctl
	testl	%eax, %eax
	js	.L218
	cmpl	$29999, 28(%rsp)
	jg	.L217
.L218:
	.loc 1 618 0
	xorl	%edx, %edx
.L215:
	.loc 1 652 0
	movq	176(%rsp), %rbx
	movq	184(%rsp), %rbp
	movq	%rdx, %rax
	movq	192(%rsp), %r12
	movq	200(%rsp), %r13
	movq	208(%rsp), %r14
	addq	$216, %rsp
	ret
	.p2align 4,,7
.L217:
	.loc 1 622 0
	leaq	144(%rsp), %rdx
	movl	$8822, %esi
	movq	%rbp, %rdi
	call	bdrv_ioctl
	.loc 1 623 0
	xorl	%edx, %edx
	.loc 1 622 0
	testl	%eax, %eax
	jne	.L215
	.loc 1 627 0
	movl	$80, %edi
.LBB20:
.LBB21:
	.loc 1 559 0
	leaq	16(%rsp), %r14
.LBE21:
.LBE20:
	.loc 1 627 0
	call	qemu_mallocz
	.loc 1 631 0
	movq	%r13, 32(%rax)
	.loc 1 628 0
	movq	%rbp, 8(%rax)
	.loc 1 627 0
	movq	%rax, %r12
	.loc 1 629 0
	movq	$0, (%rax)
	.loc 1 630 0
	movq	%rbx, 24(%rax)
.LBB22:
.LBB23:
	.loc 1 555 0
	leaq	32(%rsp), %r13
.LBE23:
.LBE22:
	.loc 1 632 0
	movl	156(%rsp), %eax
.LBB24:
.LBB25:
	.loc 1 555 0
	xorl	%esi, %esi
	movl	$88, %edx
	movq	%r13, %rdi
.LBE25:
.LBE24:
	.loc 1 632 0
	movl	%eax, 20(%r12)
.LBB26:
.LBB27:
	.loc 1 553 0
	movb	$37, 128(%rsp)
	.loc 1 555 0
	call	memset
	.loc 1 560 0
	leaq	128(%rsp), %rax
	.loc 1 566 0
	movq	%r13, %rdx
	movl	$88, %ecx
	movq	$-1, %rsi
	movq	%rbp, %rdi
	.loc 1 556 0
	movl	$83, 32(%rsp)
	.loc 1 560 0
	movq	%rax, 56(%rsp)
	.loc 1 563 0
	leaq	8(%rsp), %rax
	.loc 1 557 0
	movl	$-3, 36(%rsp)
	.loc 1 558 0
	movl	$8, 44(%rsp)
	.loc 1 559 0
	movq	%r14, 48(%rsp)
	.loc 1 561 0
	movb	$10, 40(%rsp)
	.loc 1 562 0
	movb	$8, 41(%rsp)
	.loc 1 563 0
	movq	%rax, 64(%rsp)
	.loc 1 564 0
	movl	$6000, 72(%rsp)
	.loc 1 566 0
	call	bdrv_pwrite
	.loc 1 567 0
	cmpl	$-1, %eax
	movl	%eax, %edx
	je	.L221
	.p2align 4,,7
.L222:
	.loc 1 570 0
	movl	$88, %ecx
	movq	%r13, %rdx
	movq	$-1, %rsi
	movq	%rbp, %rdi
	call	bdrv_pread
	cmpl	$-1, %eax
	movl	%eax, %ebx
	jne	.L224
	call	__errno_location
	cmpl	$4, (%rax)
	.p2align 4,,2
	je	.L222
	.loc 1 573 0
	movl	%ebx, %edx
.L221:
.LBE27:
.LBE26:
	.loc 1 635 0
	leaq	44(%r12), %rdi
	xorl	%eax, %eax
	movl	$4, %ecx
	cld
	.loc 1 544 0
	movl	%edx, 16(%r12)
	.loc 1 634 0
	movl	$0, 40(%r12)
	.loc 1 635 0
	rep
	stosq
	.loc 1 637 0
	movl	16(%r12), %ecx
	testl	%ecx, %ecx
	jle	.L227
.L225:
	.loc 1 642 0
	movl	$56, %edi
	call	qemu_mallocz
	.loc 1 651 0
	movq	%rax, %rdx
	.loc 1 643 0
	movq	%r12, (%rax)
	.loc 1 644 0
	movq	$scsi_destroy, 8(%rax)
	.loc 1 645 0
	movq	$scsi_send_command, 16(%rax)
	.loc 1 646 0
	movq	$scsi_read_data, 24(%rax)
	.loc 1 647 0
	movq	$scsi_write_data, 32(%rax)
	.loc 1 648 0
	movq	$scsi_cancel_io, 40(%rax)
	.loc 1 649 0
	movq	$scsi_get_buf, 48(%rax)
	jmp	.L215
.L227:
	.loc 1 638 0
	movl	$2048, 16(%r12)
	jmp	.L225
.L224:
.LBB28:
.LBB29:
	.loc 1 573 0
	movzbl	4(%r14), %edx
	movzbl	5(%r14), %eax
	sall	$24, %edx
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	6(%r14), %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	7(%r14), %eax
	orl	%eax, %edx
	jmp	.L221
.LBE29:
.LBE28:
.LFE113:
	.size	scsi_generic_init, .-scsi_generic_init
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
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI6-.LFB101
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
	.byte	0x4
	.long	.LCFI8-.LFB102
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI12-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI14-.LFB104
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI16-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI18-.LFB106
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
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI21-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI23-.LFB110
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI27-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI31-.LFB113
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI35-.LCFI31
	.byte	0xe
	.uleb128 0xe0
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE24:
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
	.byte	0x8d
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI5-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x3
	.byte	0x83
	.uleb128 0x5
	.align 8
.LEFDE5:
.LSFDE7:
	.long	.LEFDE7-.LASFDE7
.LASFDE7:
	.long	.LASFDE7-.Lframe1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI6-.LFB101
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
	.byte	0x4
	.long	.LCFI8-.LFB102
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI12-.LCFI8
	.byte	0xe
	.uleb128 0x30
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.align 8
.LEFDE9:
.LSFDE11:
	.long	.LEFDE11-.LASFDE11
.LASFDE11:
	.long	.LASFDE11-.Lframe1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.align 8
.LEFDE11:
.LSFDE13:
	.long	.LEFDE13-.LASFDE13
.LASFDE13:
	.long	.LASFDE13-.Lframe1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI14-.LFB104
	.byte	0x8c
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI16-.LCFI14
	.byte	0xe
	.uleb128 0x20
	.byte	0x86
	.uleb128 0x3
	.align 8
.LEFDE13:
.LSFDE15:
	.long	.LEFDE15-.LASFDE15
.LASFDE15:
	.long	.LASFDE15-.Lframe1
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.align 8
.LEFDE15:
.LSFDE17:
	.long	.LEFDE17-.LASFDE17
.LASFDE17:
	.long	.LASFDE17-.Lframe1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.byte	0x4
	.long	.LCFI18-.LFB106
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
.LSFDE19:
	.long	.LEFDE19-.LASFDE19
.LASFDE19:
	.long	.LASFDE19-.Lframe1
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.byte	0x4
	.long	.LCFI21-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x2
	.align 8
.LEFDE19:
.LSFDE21:
	.long	.LEFDE21-.LASFDE21
.LASFDE21:
	.long	.LASFDE21-.Lframe1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI23-.LFB110
	.byte	0x8c
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI26-.LCFI23
	.byte	0xe
	.uleb128 0x30
	.byte	0x83
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x2
	.align 8
.LEFDE21:
.LSFDE23:
	.long	.LEFDE23-.LASFDE23
.LASFDE23:
	.long	.LASFDE23-.Lframe1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI27-.LFB112
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x3
	.align 8
.LEFDE23:
.LSFDE25:
	.long	.LEFDE25-.LASFDE25
.LASFDE25:
	.long	.LASFDE25-.Lframe1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI31-.LFB113
	.byte	0x86
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI35-.LCFI31
	.byte	0xe
	.uleb128 0xe0
	.byte	0x8e
	.uleb128 0x2
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE25:
	.file 2 "./block.h"
	.file 3 "/home/remco/Projects/Argos/src/hw/scsi-disk.h"
	.file 4 "./qemu-common.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/scsi/sg.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/3.4.6/include/stddef.h"
	.text
.Letext0:
	.section	.debug_info
	.long	0xec1
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
	.uleb128 0x5
	.byte	0x8
	.long	0x3f
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
	.long	0x53
	.uleb128 0x2
	.long	.LASF11
	.byte	0xa
	.byte	0x8e
	.long	0x53
	.uleb128 0x6
	.long	0xb1
	.long	0x3f
	.uleb128 0x7
	.long	0x61
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x6f
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0xc5
	.long	0x3f
	.uleb128 0x3
	.long	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.long	0x297
	.long	.LASF44
	.byte	0xd8
	.byte	0x8
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x9
	.value	0x110
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x9
	.value	0x115
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x9
	.value	0x116
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x9
	.value	0x117
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x9
	.value	0x118
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x9
	.value	0x119
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x9
	.value	0x11a
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x9
	.value	0x11b
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x9
	.value	0x11c
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.value	0x11e
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.value	0x11f
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.value	0x120
	.long	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.value	0x122
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.value	0x124
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.value	0x126
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.value	0x12a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.value	0x12c
	.long	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x9
	.value	0x130
	.long	0x68
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x9
	.value	0x131
	.long	0x7d
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x9
	.value	0x132
	.long	0x2e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x9
	.value	0x136
	.long	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x9
	.value	0x13f
	.long	0x96
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x9
	.value	0x148
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x9
	.value	0x149
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x9
	.value	0x14a
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x9
	.value	0x14b
	.long	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x9
	.value	0x14c
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.value	0x14e
	.long	0x3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x9
	.value	0x150
	.long	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x9
	.byte	0xb4
	.uleb128 0x9
	.long	0x2d5
	.long	.LASF45
	.byte	0x18
	.byte	0x9
	.byte	0xba
	.uleb128 0xc
	.long	.LASF46
	.byte	0x9
	.byte	0xbb
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x9
	.byte	0xbc
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
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
	.long	0x29e
	.uleb128 0x5
	.byte	0x8
	.long	0xcb
	.uleb128 0x6
	.long	0x2f1
	.long	0x6f
	.uleb128 0x7
	.long	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x297
	.uleb128 0x6
	.long	0x307
	.long	0x6f
	.uleb128 0x7
	.long	0x61
	.byte	0x13
	.byte	0x0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0x31
	.long	0x76
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x34
	.long	0x46
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.byte	0x6e
	.long	0x328
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.byte	0x50
	.long	0x339
	.uleb128 0xd
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x2
	.byte	0x51
	.long	0x34a
	.uleb128 0xe
	.long	0x35b
	.byte	0x1
	.uleb128 0xf
	.long	0xb1
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.byte	0xa
	.long	0x366
	.uleb128 0x9
	.long	0x3e3
	.long	.LASF54
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.uleb128 0xc
	.long	.LASF55
	.byte	0x1
	.byte	0x4c
	.long	0x7ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x1
	.byte	0x4d
	.long	0x7b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"lun"
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.byte	0x50
	.long	0x45d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.byte	0x51
	.long	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF60
	.byte	0x1
	.byte	0x52
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF61
	.byte	0x1
	.byte	0x53
	.long	0x7ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x3
	.byte	0xb
	.long	0x3ee
	.uleb128 0x9
	.long	0x45d
	.long	.LASF62
	.byte	0x38
	.byte	0x3
	.byte	0xb
	.uleb128 0xc
	.long	.LASF63
	.byte	0x3
	.byte	0x11
	.long	0x489
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x3
	.byte	0x12
	.long	0x4a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF65
	.byte	0x3
	.byte	0x14
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF66
	.byte	0x3
	.byte	0x15
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.long	.LASF67
	.byte	0x3
	.byte	0x16
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF68
	.byte	0x3
	.byte	0x17
	.long	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF69
	.byte	0x3
	.byte	0x18
	.long	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x3
	.byte	0xd
	.long	0x468
	.uleb128 0x5
	.byte	0x8
	.long	0x46e
	.uleb128 0xe
	.long	0x489
	.byte	0x1
	.uleb128 0xf
	.long	0xb1
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x312
	.uleb128 0xf
	.long	0x312
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x35b
	.uleb128 0xe
	.long	0x49b
	.byte	0x1
	.uleb128 0xf
	.long	0x49b
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x3e3
	.uleb128 0x5
	.byte	0x8
	.long	0x48f
	.uleb128 0x11
	.long	0x4c6
	.byte	0x1
	.long	0xb9
	.uleb128 0xf
	.long	0x49b
	.uleb128 0xf
	.long	0x312
	.uleb128 0xf
	.long	0x4c6
	.uleb128 0xf
	.long	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x307
	.uleb128 0x5
	.byte	0x8
	.long	0x4a7
	.uleb128 0xe
	.long	0x4e3
	.byte	0x1
	.uleb128 0xf
	.long	0x49b
	.uleb128 0xf
	.long	0x312
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4d2
	.uleb128 0x11
	.long	0x4fe
	.byte	0x1
	.long	0x3f
	.uleb128 0xf
	.long	0x49b
	.uleb128 0xf
	.long	0x312
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x4e9
	.uleb128 0x11
	.long	0x519
	.byte	0x1
	.long	0x4c6
	.uleb128 0xf
	.long	0x49b
	.uleb128 0xf
	.long	0x312
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x504
	.uleb128 0x9
	.long	0x660
	.long	.LASF71
	.byte	0x58
	.byte	0x6
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF72
	.byte	0x6
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF73
	.byte	0x6
	.byte	0x2e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF74
	.byte	0x6
	.byte	0x2f
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.long	.LASF75
	.byte	0x6
	.byte	0x30
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF76
	.byte	0x6
	.byte	0x31
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.long	.LASF77
	.byte	0x6
	.byte	0x32
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF78
	.byte	0x6
	.byte	0x33
	.long	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF79
	.byte	0x6
	.byte	0x35
	.long	0x660
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"sbp"
	.byte	0x6
	.byte	0x36
	.long	0x660
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.long	.LASF80
	.byte	0x6
	.byte	0x37
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.long	.LASF81
	.byte	0x6
	.byte	0x38
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.long	.LASF82
	.byte	0x6
	.byte	0x39
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF83
	.byte	0x6
	.byte	0x3a
	.long	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.long	.LASF84
	.byte	0x6
	.byte	0x3b
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.long	.LASF85
	.byte	0x6
	.byte	0x3c
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xc
	.long	.LASF86
	.byte	0x6
	.byte	0x3d
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xc
	.long	.LASF87
	.byte	0x6
	.byte	0x3e
	.long	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xc
	.long	.LASF88
	.byte	0x6
	.byte	0x3f
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.long	.LASF60
	.byte	0x6
	.byte	0x40
	.long	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.long	.LASF89
	.byte	0x6
	.byte	0x41
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.long	.LASF90
	.byte	0x6
	.byte	0x42
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.long	.LASF91
	.byte	0x6
	.byte	0x43
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x76
	.uleb128 0x2
	.long	.LASF92
	.byte	0x6
	.byte	0x44
	.long	0x51f
	.uleb128 0x9
	.long	0x6ee
	.long	.LASF93
	.byte	0x20
	.byte	0x6
	.byte	0x65
	.uleb128 0xc
	.long	.LASF94
	.byte	0x6
	.byte	0x67
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF95
	.byte	0x6
	.byte	0x68
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF96
	.byte	0x6
	.byte	0x6a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"lun"
	.byte	0x6
	.byte	0x6b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF97
	.byte	0x6
	.byte	0x6d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.long	.LASF98
	.byte	0x6
	.byte	0x6f
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.long	.LASF99
	.byte	0x6
	.byte	0x71
	.long	0x84
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xc
	.long	.LASF100
	.byte	0x6
	.byte	0x73
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x9
	.long	0x787
	.long	.LASF101
	.byte	0x98
	.byte	0x1
	.byte	0x3d
	.uleb128 0xc
	.long	.LASF102
	.byte	0x1
	.byte	0x3e
	.long	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.long	.LASF103
	.byte	0x1
	.byte	0x3f
	.long	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"dev"
	.byte	0x1
	.byte	0x40
	.long	0x489
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x41
	.long	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"cmd"
	.byte	0x1
	.byte	0x42
	.long	0x793
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.long	.LASF104
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x44
	.long	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF105
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.long	.LASF106
	.byte	0x1
	.byte	0x47
	.long	0x666
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x32e
	.uleb128 0x5
	.byte	0x8
	.long	0x6ee
	.uleb128 0x6
	.long	0x7a3
	.long	0x307
	.uleb128 0x7
	.long	0x61
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1
	.byte	0x48
	.long	0x6ee
	.uleb128 0x5
	.byte	0x8
	.long	0x7a3
	.uleb128 0x5
	.byte	0x8
	.long	0x31d
	.uleb128 0x6
	.long	0x7ca
	.long	0x307
	.uleb128 0x7
	.long	0x61
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.long	0x80c
	.long	.LASF108
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.quad	.LFB98
	.quad	.LFE98
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x74
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0x76
	.long	0x7ae
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x77
	.long	0x489
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x16
	.long	0x852
	.long	.LASF109
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x7ae
	.quad	.LFB99
	.quad	.LFE99
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x89
	.long	0x489
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0x89
	.long	0x312
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x8b
	.long	0x7ae
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x12
	.long	0x8b9
	.long	.LASF110
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x95
	.long	0xb1
	.byte	0x1
	.byte	0x56
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x97
	.long	0x7ae
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x98
	.long	0x489
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x99
	.long	0x312
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF111
	.byte	0x1
	.byte	0x9a
	.long	0x3f
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x12
	.long	0x906
	.long	.LASF112
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xb0
	.long	0x49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0xb0
	.long	0x312
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xb3
	.long	0x489
	.byte	0x1
	.byte	0x55
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xb4
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.long	0x97a
	.long	.LASF113
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x3f
	.quad	.LFB102
	.quad	.LFE102
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.byte	0xbf
	.long	0x7b4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xc0
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0xc0
	.long	0x3f
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.byte	0xc1
	.long	0x97a
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xd5
	.long	0x3f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x33f
	.uleb128 0x12
	.long	0x9d8
	.long	.LASF116
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0xeb
	.long	0xb1
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0xeb
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0xed
	.long	0x7ae
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xee
	.long	0x489
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0xef
	.long	0x3f
	.byte	0x0
	.uleb128 0x12
	.long	0xa35
	.long	.LASF117
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104
	.byte	0x1
	.byte	0x57
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0xfe
	.long	0x49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"tag"
	.byte	0x1
	.byte	0xfe
	.long	0x312
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x100
	.long	0x489
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x101
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x102
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.long	0xa7b
	.long	.LASF118
	.byte	0x1
	.value	0x123
	.byte	0x1
	.quad	.LFB105
	.quad	.LFE105
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.value	0x122
	.long	0xb1
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.value	0x122
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"r"
	.byte	0x1
	.value	0x124
	.long	0x7ae
	.byte	0x0
	.uleb128 0x1f
	.long	0xadf
	.long	.LASF119
	.byte	0x1
	.value	0x133
	.byte	0x1
	.long	0x3f
	.quad	.LFB106
	.quad	.LFE106
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x132
	.long	0x49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"tag"
	.byte	0x1
	.value	0x132
	.long	0x312
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x134
	.long	0x489
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x135
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x136
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0xb35
	.long	.LASF120
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x4c6
	.quad	.LFB107
	.quad	.LFE107
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x151
	.long	0x49b
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"tag"
	.byte	0x1
	.value	0x151
	.long	0x312
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x153
	.long	0x489
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x154
	.long	0x7ae
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.long	0xc55
	.long	.LASF121
	.byte	0x1
	.value	0x1df
	.byte	0x1
	.long	0xb9
	.quad	.LFB110
	.quad	.LFE110
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x1dd
	.long	0x49b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"tag"
	.byte	0x1
	.value	0x1dd
	.long	0x312
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.string	"cmd"
	.byte	0x1
	.value	0x1de
	.long	0x4c6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"lun"
	.byte	0x1
	.value	0x1de
	.long	0x3f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x1e0
	.long	0x489
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x1e1
	.long	0x312
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x1e2
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x1e3
	.long	0x7ae
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.value	0x1e4
	.long	0x3f
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	0xc06
	.long	0xc55
	.quad	.LBB3
	.quad	.LBE3
	.uleb128 0x22
	.long	0xc67
	.uleb128 0x23
	.long	0xc73
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.long	0xc7f
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.long	0xc8b
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x21
	.long	0xc37
	.long	0xc9e
	.quad	.LBB8
	.quad	.LBE8
	.uleb128 0x22
	.long	0xcaf
	.uleb128 0x22
	.long	0xcb8
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x0
	.uleb128 0x25
	.long	0xcc3
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0xccd
	.quad	.LBB16
	.quad	.LBE16
	.uleb128 0x23
	.long	0xcdf
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0xc98
	.long	.LASF122
	.byte	0x1
	.value	0x15e
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x28
	.string	"cmd"
	.byte	0x1
	.value	0x15d
	.long	0x4c6
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.value	0x15d
	.long	0x3f
	.uleb128 0x29
	.long	.LASF104
	.byte	0x1
	.value	0x15d
	.long	0x4d
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x15d
	.long	0xc98
	.byte	0x0
	.uleb128 0x5
	.byte	0x8
	.long	0x312
	.uleb128 0x2a
	.long	0xccd
	.long	.LASF123
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	0x7ae
	.byte	0x1
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.byte	0x59
	.long	0x489
	.uleb128 0x2b
	.string	"tag"
	.byte	0x1
	.byte	0x59
	.long	0x312
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x5b
	.long	0x7ae
	.byte	0x0
	.uleb128 0x27
	.long	0xcec
	.long	.LASF124
	.byte	0x1
	.value	0x1b3
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x29
	.long	.LASF125
	.byte	0x1
	.value	0x1b2
	.long	0x3f
	.byte	0x0
	.uleb128 0x1b
	.long	0xd30
	.long	.LASF126
	.byte	0x1
	.value	0x244
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x243
	.long	0x49b
	.byte	0x1
	.byte	0x56
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.value	0x245
	.long	0x7ae
	.byte	0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x245
	.long	0x7ae
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2c
	.long	0xe0d
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.value	0x25b
	.byte	0x1
	.long	0x49b
	.quad	.LFB113
	.quad	.LFE113
	.byte	0x1
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.value	0x259
	.long	0x7b4
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"tcq"
	.byte	0x1
	.value	0x259
	.long	0x3f
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.value	0x25a
	.long	0x45d
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.value	0x25a
	.long	0xb1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x25c
	.long	0x3f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x25d
	.long	0x49b
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.value	0x25e
	.long	0x489
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.value	0x25f
	.long	0x671
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x26
	.long	0xe0d
	.quad	.LBB20
	.quad	.LBE20
	.uleb128 0x22
	.long	0xe1f
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x25
	.long	0xe2b
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x25
	.long	0xe37
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	0xe43
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	0xe4f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	0xe5b
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	0xe68
	.long	.LASF129
	.byte	0x1
	.value	0x220
	.byte	0x1
	.long	0x3f
	.byte	0x1
	.uleb128 0x29
	.long	.LASF56
	.byte	0x1
	.value	0x21f
	.long	0x7b4
	.uleb128 0x1e
	.string	"cmd"
	.byte	0x1
	.value	0x221
	.long	0xe68
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.value	0x222
	.long	0xe78
	.uleb128 0x2d
	.long	.LASF61
	.byte	0x1
	.value	0x223
	.long	0xe78
	.uleb128 0x2d
	.long	.LASF106
	.byte	0x1
	.value	0x224
	.long	0x666
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.value	0x225
	.long	0x3f
	.byte	0x0
	.uleb128 0x6
	.long	0xe78
	.long	0x307
	.uleb128 0x7
	.long	0x61
	.byte	0x9
	.byte	0x0
	.uleb128 0x6
	.long	0xe88
	.long	0x307
	.uleb128 0x7
	.long	0x61
	.byte	0x7
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF130
	.byte	0x8
	.byte	0x91
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF131
	.byte	0x8
	.byte	0x92
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	.LASF132
	.byte	0x8
	.byte	0x93
	.long	0x2db
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	.LASF133
	.byte	0x1
	.byte	0x57
	.long	0x7ae
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.long	0xec5
	.long	0xd30
	.string	"scsi_generic_init"
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0x0
	.quad	0x0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0x0
	.quad	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF12:
	.string	"int32_t"
.LASF69:
	.string	"get_buf"
.LASF25:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_base"
.LASF127:
	.string	"sg_version"
.LASF63:
	.string	"state"
.LASF34:
	.string	"_lock"
.LASF83:
	.string	"usr_ptr"
.LASF111:
	.string	"sense"
.LASF23:
	.string	"_IO_save_base"
.LASF86:
	.string	"msg_status"
.LASF31:
	.string	"_cur_column"
.LASF123:
	.string	"scsi_new_request"
.LASF113:
	.string	"execute_command"
.LASF41:
	.string	"_mode"
.LASF68:
	.string	"cancel_io"
.LASF2:
	.string	"long int"
.LASF109:
	.string	"scsi_find_request"
.LASF94:
	.string	"host_no"
.LASF45:
	.string	"_IO_marker"
.LASF59:
	.string	"opaque"
.LASF73:
	.string	"dxfer_direction"
.LASF44:
	.string	"_IO_FILE"
.LASF90:
	.string	"duration"
.LASF87:
	.string	"sb_len_wr"
.LASF102:
	.string	"aiocb"
.LASF6:
	.string	"unsigned char"
.LASF51:
	.string	"BlockDriverState"
.LASF92:
	.string	"sg_io_hdr_t"
.LASF5:
	.string	"char"
.LASF100:
	.string	"unused"
.LASF118:
	.string	"scsi_write_complete"
.LASF43:
	.string	"_IO_lock_t"
.LASF58:
	.string	"completion"
.LASF81:
	.string	"flags"
.LASF15:
	.string	"_IO_read_ptr"
.LASF48:
	.string	"_pos"
.LASF130:
	.string	"stdin"
.LASF131:
	.string	"stdout"
.LASF70:
	.string	"scsi_completionfn"
.LASF26:
	.string	"_markers"
.LASF98:
	.string	"h_cmd_per_lun"
.LASF120:
	.string	"scsi_get_buf"
.LASF133:
	.string	"free_requests"
.LASF78:
	.string	"dxferp"
.LASF79:
	.string	"cmdp"
.LASF35:
	.string	"_offset"
.LASF74:
	.string	"cmd_len"
.LASF85:
	.string	"masked_status"
.LASF116:
	.string	"scsi_read_complete"
.LASF82:
	.string	"pack_id"
.LASF122:
	.string	"scsi_length"
.LASF104:
	.string	"cmdlen"
.LASF53:
	.string	"BlockDriverCompletionFunc"
.LASF0:
	.string	"long unsigned int"
.LASF135:
	.string	"/home/remco/Projects/Argos/src/hw/scsi-generic.c"
.LASF84:
	.string	"status"
.LASF29:
	.string	"_flags2"
.LASF95:
	.string	"channel"
.LASF17:
	.string	"_IO_read_base"
.LASF42:
	.string	"_unused2"
.LASF88:
	.string	"host_status"
.LASF57:
	.string	"blocksize"
.LASF30:
	.string	"_old_offset"
.LASF3:
	.string	"long long int"
.LASF65:
	.string	"send_command"
.LASF101:
	.string	"SCSIRequest"
.LASF20:
	.string	"_IO_write_end"
.LASF76:
	.string	"iovec_count"
.LASF128:
	.string	"scsiid"
.LASF99:
	.string	"d_queue_depth"
.LASF55:
	.string	"requests"
.LASF115:
	.string	"complete"
.LASF80:
	.string	"timeout"
.LASF119:
	.string	"scsi_write_data"
.LASF21:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_next"
.LASF1:
	.string	"unsigned int"
.LASF134:
	.string	"GNU C 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
.LASF105:
	.string	"buflen"
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
.LASF66:
	.string	"read_data"
.LASF71:
	.string	"sg_io_hdr"
.LASF110:
	.string	"scsi_command_complete"
.LASF103:
	.string	"next"
.LASF106:
	.string	"io_header"
.LASF91:
	.string	"info"
.LASF13:
	.string	"long long unsigned int"
.LASF64:
	.string	"destroy"
.LASF49:
	.string	"uint8_t"
.LASF77:
	.string	"dxfer_len"
.LASF10:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF61:
	.string	"sensebuf"
.LASF124:
	.string	"is_write"
.LASF75:
	.string	"mx_sb_len"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF96:
	.string	"scsi_id"
.LASF11:
	.string	"__off64_t"
.LASF136:
	.string	"/home/remco/Projects/Argos/src"
.LASF22:
	.string	"_IO_buf_end"
.LASF89:
	.string	"resid"
.LASF132:
	.string	"stderr"
.LASF125:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF60:
	.string	"driver_status"
.LASF121:
	.string	"scsi_send_command"
.LASF7:
	.string	"signed char"
.LASF16:
	.string	"_IO_read_end"
.LASF108:
	.string	"scsi_remove_request"
.LASF50:
	.string	"uint32_t"
.LASF28:
	.string	"_fileno"
.LASF114:
	.string	"direction"
.LASF72:
	.string	"interface_id"
.LASF129:
	.string	"get_blocksize"
.LASF62:
	.string	"SCSIDevice"
.LASF4:
	.string	"short unsigned int"
.LASF52:
	.string	"BlockDriverAIOCB"
.LASF93:
	.string	"sg_scsi_id"
.LASF54:
	.string	"SCSIDeviceState"
.LASF19:
	.string	"_IO_write_ptr"
.LASF137:
	.string	"scsi_generic_init"
.LASF67:
	.string	"write_data"
.LASF117:
	.string	"scsi_read_data"
.LASF97:
	.string	"scsi_type"
.LASF56:
	.string	"bdrv"
.LASF126:
	.string	"scsi_destroy"
.LASF107:
	.string	"last"
.LASF112:
	.string	"scsi_cancel_io"
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.4.6 (Ubuntu 3.4.6-8ubuntu2)"
